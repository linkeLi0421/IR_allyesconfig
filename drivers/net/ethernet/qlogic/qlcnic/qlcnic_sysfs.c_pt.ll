; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.atomic_t = type { i32 }
%struct.qlcnic_hardware_context = type { ptr, ptr, i32, %struct.rwlock_t, %struct.mutex, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, i32, i32, i32, [3 x i32], i32, i32, i32, i32, ptr, %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_fw_dump, %struct.qlcnic_fdt, %struct.qlc_83xx_reset, %struct.qlc_83xx_idc, ptr, ptr, ptr, ptr, ptr, [5 x i32], [4 x i32], ptr, i8, [6 x i8], i8, ptr, i32, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.qlcnic_nic_intr_coalesce = type { i8, i8, i16, i16, i16, i16, i16, i32 }
%struct.qlcnic_fw_dump = type { i8, i8, i32, i32, ptr, ptr, i32, ptr, i8, i32, i32, i32, i32 }
%struct.qlcnic_fdt = type { i32, i16, i16, i16, i16, [16 x i8], i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i16, i8, [65 x i8] }
%struct.qlc_83xx_reset = type { ptr, i32, i32, i32, [16 x i32], ptr, ptr, ptr, ptr, i8, i8 }
%struct.qlc_83xx_idc = type { ptr, i64, i64, i32, i32, i32, i8, i8, i8, i8, i8, i8, ptr }
%struct.qlcnic_adapter = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i32, i32, i8, i8, i8, [6 x i8], i64, i8, i8, i8, [128 x i32], i8, ptr, ptr, ptr, %struct.qlcnic_adapter_stats, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, ptr, %struct.qlcnic_filter_hash, %struct.qlcnic_filter_hash, %struct.list_head, %struct.spinlock, %struct.spinlock, i32, i32, i32, ptr }
%struct.qlcnic_adapter_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.qlcnic_filter_hash = type { ptr, i8, i16, i16 }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.qlcnic_npar_info = type { i8, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [6 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.144, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.144 = type { ptr }
%struct.qlcnic_esw_statistics = type { %struct.__qlcnic_esw_statistics, %struct.__qlcnic_esw_statistics }
%struct.__qlcnic_esw_statistics = type { i16, i16, i16, i16, i64, i64, i64, i64, i64, i64, i64, [3 x i64] }
%struct.qlcnic_hardware_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qlcnic_pci_info = type { i16, i16, i16, i16, i16, i16, [6 x i8], i16 }
%struct.qlcnic_pci_func_cfg = type { i16, i16, i16, i16, i8, i8, [6 x i8] }
%struct.qlcnic_nic_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qlcnic_esw_func_cfg = type { i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, [5 x i8] }
%struct.qlcnic_info = type { i16, i16, i16, i16, i32, i8, i16, i16, i16, i16, i16, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16 }
%struct.qlcnic_npar_func_cfg = type { i32, i16, i16, i16, i16, i16, i8, i8 }
%struct.qlcnic_pm_func_cfg = type { i8, i8, i8, [5 x i8] }

@qlcnic_is_valid_nic_func._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 366, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Invalid nic function\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qlcnic_is_valid_nic_func\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qlcnic_is_valid_nic_func._entry_ptr = internal global ptr @qlcnic_is_valid_nic_func._entry, section ".printk_index", align 4
@qlcnic_driver_name = external dso_local global [0 x i8], align 1
@qlcnic_hwmon_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @qlcnic_hwmon_group, ptr null], [24 x i8] zeroinitializer }, align 32
@qlcnic_register_hwmon_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 1305, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Cannot register with hwmon, err=%ld\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qlcnic_register_hwmon_dev\00", [38 x i8] zeroinitializer }, align 32
@qlcnic_register_hwmon_dev._entry_ptr = internal global ptr @qlcnic_register_hwmon_dev._entry, section ".printk_index", align 4
@dev_attr_bridged_mode = internal constant { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qlcnic_show_bridged_mode, ptr @qlcnic_store_bridged_mode }, [36 x i8] zeroinitializer }, align 32
@qlcnic_create_sysfs_entries._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 1328, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to create bridged_mode sysfs entry\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qlcnic_create_sysfs_entries\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@qlcnic_create_sysfs_entries._entry_ptr = internal global ptr @qlcnic_create_sysfs_entries._entry, section ".printk_index", align 4
@bin_attr_flash = internal constant { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.65, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @qlcnic_83xx_sysfs_flash_read_handler, ptr @qlcnic_83xx_sysfs_flash_write_handler, ptr null }, [52 x i8] zeroinitializer }, align 32
@qlcnic_83xx_add_sysfs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 1422, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to create flash sysfs entry\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qlcnic_83xx_add_sysfs\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@qlcnic_83xx_add_sysfs._entry_ptr = internal global ptr @qlcnic_83xx_add_sysfs._entry, section ".printk_index", align 4
@qlcnic_hwmon_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @qlcnic_hwmon_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@qlcnic_hwmon_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @sensor_dev_attr_temp1_input, ptr null], [24 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qlcnic_hwmon_show_temp, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bridged_mode\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@bin_attr_port_stats = internal constant { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.46, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @qlcnic_sysfs_get_port_stats, ptr @qlcnic_sysfs_clear_port_stats, ptr null }, [52 x i8] zeroinitializer }, align 32
@qlcnic_create_diag_entries._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 1344, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to create port stats sysfs entry\00", [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qlcnic_create_diag_entries\00", [37 x i8] zeroinitializer }, align 32
@qlcnic_create_diag_entries._entry_ptr = internal global ptr @qlcnic_create_diag_entries._entry, section ".printk_index", align 4
@dev_attr_diag_mode = internal constant { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qlcnic_show_diag_mode, ptr @qlcnic_store_diag_mode }, [36 x i8] zeroinitializer }, align 32
@qlcnic_create_diag_entries._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 1349, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to create diag_mode sysfs entry\0A\00", [56 x i8] zeroinitializer }, align 32
@qlcnic_create_diag_entries._entry_ptr.21 = internal global ptr @qlcnic_create_diag_entries._entry.19, section ".printk_index", align 4
@bin_attr_crb = internal constant { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.48, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @qlcnic_sysfs_read_crb, ptr @qlcnic_sysfs_write_crb, ptr null }, [52 x i8] zeroinitializer }, align 32
@qlcnic_create_diag_entries._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.2, i32 1351, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to create crb sysfs entry\0A\00", [62 x i8] zeroinitializer }, align 32
@qlcnic_create_diag_entries._entry_ptr.24 = internal global ptr @qlcnic_create_diag_entries._entry.22, section ".printk_index", align 4
@bin_attr_mem = internal constant { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.49, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @qlcnic_sysfs_read_mem, ptr @qlcnic_sysfs_write_mem, ptr null }, [52 x i8] zeroinitializer }, align 32
@qlcnic_create_diag_entries._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str.2, i32 1353, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to create mem sysfs entry\0A\00", [62 x i8] zeroinitializer }, align 32
@qlcnic_create_diag_entries._entry_ptr.27 = internal global ptr @qlcnic_create_diag_entries._entry.25, section ".printk_index", align 4
@bin_attr_pci_config = internal constant { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.50, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @qlcnic_sysfs_read_pci_config, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@qlcnic_create_diag_entries._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.18, ptr @.str.2, i32 1359, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to create pci config sysfs entry\00", [56 x i8] zeroinitializer }, align 32
@qlcnic_create_diag_entries._entry_ptr.30 = internal global ptr @qlcnic_create_diag_entries._entry.28, section ".printk_index", align 4
@dev_attr_beacon = internal constant { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qlcnic_show_beacon, ptr @qlcnic_store_beacon }, [36 x i8] zeroinitializer }, align 32
@qlcnic_create_diag_entries._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.18, ptr @.str.2, i32 1362, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to create beacon sysfs entry\00", [60 x i8] zeroinitializer }, align 32
@qlcnic_create_diag_entries._entry_ptr.33 = internal global ptr @qlcnic_create_diag_entries._entry.31, section ".printk_index", align 4
@bin_attr_esw_config = internal constant { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.56, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @qlcnic_sysfs_read_esw_config, ptr @qlcnic_sysfs_write_esw_config, ptr null }, [52 x i8] zeroinitializer }, align 32
@qlcnic_create_diag_entries._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.18, ptr @.str.2, i32 1367, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to create esw config sysfs entry\00", [56 x i8] zeroinitializer }, align 32
@qlcnic_create_diag_entries._entry_ptr.36 = internal global ptr @qlcnic_create_diag_entries._entry.34, section ".printk_index", align 4
@bin_attr_npar_config = internal constant { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.60, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @qlcnic_sysfs_read_npar_config, ptr @qlcnic_sysfs_write_npar_config, ptr null }, [52 x i8] zeroinitializer }, align 32
@qlcnic_create_diag_entries._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.18, ptr @.str.2, i32 1371, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to create npar config sysfs entry\00", [55 x i8] zeroinitializer }, align 32
@qlcnic_create_diag_entries._entry_ptr.39 = internal global ptr @qlcnic_create_diag_entries._entry.37, section ".printk_index", align 4
@bin_attr_pm_config = internal constant { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.62, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @qlcnic_sysfs_read_pm_config, ptr @qlcnic_sysfs_write_pm_config, ptr null }, [52 x i8] zeroinitializer }, align 32
@qlcnic_create_diag_entries._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.18, ptr @.str.2, i32 1373, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to create pm config sysfs entry\00", [57 x i8] zeroinitializer }, align 32
@qlcnic_create_diag_entries._entry_ptr.42 = internal global ptr @qlcnic_create_diag_entries._entry.40, section ".printk_index", align 4
@bin_attr_esw_stats = internal constant { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.64, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @qlcnic_sysfs_get_esw_stats, ptr @qlcnic_sysfs_clear_esw_stats, ptr null }, [52 x i8] zeroinitializer }, align 32
@qlcnic_create_diag_entries._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.18, ptr @.str.2, i32 1375, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to create eswitch stats sysfs entry\00", [53 x i8] zeroinitializer }, align 32
@qlcnic_create_diag_entries._entry_ptr.45 = internal global ptr @qlcnic_create_diag_entries._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"port_stats\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"diag_mode\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"crb\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mem\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pci_config\00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"beacon\00", [25 x i8] zeroinitializer }, align 32
@qlcnic_store_beacon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 223, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"LED test not supported in non privileged mode\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qlcnic_store_beacon\00", [44 x i8] zeroinitializer }, align 32
@qlcnic_store_beacon._entry_ptr = internal global ptr @qlcnic_store_beacon._entry, section ".printk_index", align 4
@qlcnic_validate_beacon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s: %s: rate %x state %x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qlcnic_validate_beacon\00", [41 x i8] zeroinitializer }, align 32
@qlcnic_validate_beacon._entry_ptr = internal global ptr @qlcnic_validate_beacon._entry, section ".printk_index", align 4
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"esw_config\00", [21 x i8] zeroinitializer }, align 32
@qlcnic_sysfs_read_esw_config.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.57, ptr @.str.58, ptr @.str.2, ptr @.str.59, i8 0, i8 -95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qlcnic\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qlcnic_sysfs_read_esw_config\00", [35 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s: Total nic functions[%d], App sent function count[%d]\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"npar_config\00", [20 x i8] zeroinitializer }, align 32
@qlcnic_sysfs_read_npar_config.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.57, ptr @.str.61, ptr @.str.2, ptr @.str.59, i8 0, i8 -70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qlcnic_sysfs_read_npar_config\00", [34 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pm_config\00", [22 x i8] zeroinitializer }, align 32
@qlcnic_sysfs_read_pm_config.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.57, ptr @.str.63, ptr @.str.2, ptr @.str.59, i8 0, i8 117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qlcnic_sysfs_read_pm_config\00", [36 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"esw_stats\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flash\00", [26 x i8] zeroinitializer }, align 32
@qlcnic_83xx_sysfs_flash_write_handler.flash_mode = internal global { i32, [28 x i8] } zeroinitializer, align 32
@qlcnic_83xx_sysfs_flash_write_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 1139, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s failed at %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"qlcnic_83xx_sysfs_flash_write_handler\00", [58 x i8] zeroinitializer }, align 32
@qlcnic_83xx_sysfs_flash_write_handler._entry_ptr = internal global ptr @qlcnic_83xx_sysfs_flash_write_handler._entry, section ".printk_index", align 4
@qlcnic_83xx_sysfs_flash_write_handler._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 1158, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@qlcnic_83xx_sysfs_flash_write_handler._entry_ptr.69 = internal global ptr @qlcnic_83xx_sysfs_flash_write_handler._entry.68, section ".printk_index", align 4
@qlcnic_83xx_sysfs_flash_write_handler._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 1169, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@qlcnic_83xx_sysfs_flash_write_handler._entry_ptr.71 = internal global ptr @qlcnic_83xx_sysfs_flash_write_handler._entry.70, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 33840, i64 33856, i64 35888]
@__sancov_gen_cov_switch_values.72 = internal global [9 x i64] [i64 7, i64 16, i64 32800, i64 32816, i64 32832, i64 33840, i64 33856, i64 34864, i64 35888]
@__sancov_gen_cov_switch_values.73 = internal global [8 x i64] [i64 6, i64 16, i64 32816, i64 32832, i64 33840, i64 33856, i64 34864, i64 35888]
@__sancov_gen_cov_switch_values.74 = internal global [8 x i64] [i64 6, i64 16, i64 32816, i64 32832, i64 33840, i64 33856, i64 34864, i64 35888]
@__sancov_gen_cov_switch_values.75 = internal global [9 x i64] [i64 7, i64 16, i64 32800, i64 32816, i64 32832, i64 33840, i64 33856, i64 34864, i64 35888]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.78 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.79 = internal global [8 x i64] [i64 6, i64 16, i64 32816, i64 32832, i64 33840, i64 33856, i64 34864, i64 35888]
@__sancov_gen_cov_switch_values.80 = internal global [8 x i64] [i64 6, i64 16, i64 32816, i64 32832, i64 33840, i64 33856, i64 34864, i64 35888]
@__sancov_gen_cov_switch_values.81 = internal global [5 x i64] [i64 3, i64 32, i64 3403460042, i64 3670912218, i64 3735928559]
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 366, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [20 x i8] c"qlcnic_hwmon_groups\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1304, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [22 x i8] c"dev_attr_bridged_mode\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1178, i32 38 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1327, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant [15 x i8] c"bin_attr_flash\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1252, i32 35 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1422, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [19 x i8] c"qlcnic_hwmon_group\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1288, i32 1 }
@___asan_gen_.145 = private unnamed_addr constant [19 x i8] c"qlcnic_hwmon_attrs\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1283, i32 26 }
@___asan_gen_.148 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1280, i32 8 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1276, i32 22 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1179, i32 20 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 69, i32 22 }
@___asan_gen_.163 = private unnamed_addr constant [20 x i8] c"bin_attr_port_stats\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1224, i32 35 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1344, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant [19 x i8] c"dev_attr_diag_mode\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1184, i32 38 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1349, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant [13 x i8] c"bin_attr_crb\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1196, i32 35 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1351, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant [13 x i8] c"bin_attr_mem\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1203, i32 35 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1353, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant [20 x i8] c"bin_attr_pci_config\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1217, i32 35 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1359, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant [16 x i8] c"dev_attr_beacon\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1190, i32 38 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1362, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant [20 x i8] c"bin_attr_esw_config\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1238, i32 35 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1367, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant [21 x i8] c"bin_attr_npar_config\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1210, i32 35 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1371, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant [19 x i8] c"bin_attr_pm_config\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1245, i32 35 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1373, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant [19 x i8] c"bin_attr_esw_stats\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1231, i32 35 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1375, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1225, i32 20 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1185, i32 20 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1197, i32 20 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1204, i32 20 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1218, i32 20 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1191, i32 20 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 222, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 101, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1239, i32 20 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 644, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1211, i32 20 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 745, i32 4 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1246, i32 20 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 467, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1232, i32 20 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1253, i32 20 }
@___asan_gen_.322 = private unnamed_addr constant [11 x i8] c"flash_mode\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1124, i32 13 }
@___asan_gen_.331 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1138, i32 4 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1156, i32 5 }
@___asan_gen_.337 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.338 = private constant [53 x i8] c"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1167, i32 5 }
@llvm.compiler.used = appending global [105 x ptr] [ptr @qlcnic_83xx_add_sysfs._entry, ptr @qlcnic_83xx_add_sysfs._entry_ptr, ptr @qlcnic_83xx_sysfs_flash_write_handler._entry, ptr @qlcnic_83xx_sysfs_flash_write_handler._entry.68, ptr @qlcnic_83xx_sysfs_flash_write_handler._entry.70, ptr @qlcnic_83xx_sysfs_flash_write_handler._entry_ptr, ptr @qlcnic_83xx_sysfs_flash_write_handler._entry_ptr.69, ptr @qlcnic_83xx_sysfs_flash_write_handler._entry_ptr.71, ptr @qlcnic_create_diag_entries._entry, ptr @qlcnic_create_diag_entries._entry.19, ptr @qlcnic_create_diag_entries._entry.22, ptr @qlcnic_create_diag_entries._entry.25, ptr @qlcnic_create_diag_entries._entry.28, ptr @qlcnic_create_diag_entries._entry.31, ptr @qlcnic_create_diag_entries._entry.34, ptr @qlcnic_create_diag_entries._entry.37, ptr @qlcnic_create_diag_entries._entry.40, ptr @qlcnic_create_diag_entries._entry.43, ptr @qlcnic_create_diag_entries._entry_ptr, ptr @qlcnic_create_diag_entries._entry_ptr.21, ptr @qlcnic_create_diag_entries._entry_ptr.24, ptr @qlcnic_create_diag_entries._entry_ptr.27, ptr @qlcnic_create_diag_entries._entry_ptr.30, ptr @qlcnic_create_diag_entries._entry_ptr.33, ptr @qlcnic_create_diag_entries._entry_ptr.36, ptr @qlcnic_create_diag_entries._entry_ptr.39, ptr @qlcnic_create_diag_entries._entry_ptr.42, ptr @qlcnic_create_diag_entries._entry_ptr.45, ptr @qlcnic_create_sysfs_entries._entry, ptr @qlcnic_create_sysfs_entries._entry_ptr, ptr @qlcnic_is_valid_nic_func._entry, ptr @qlcnic_is_valid_nic_func._entry_ptr, ptr @qlcnic_register_hwmon_dev._entry, ptr @qlcnic_register_hwmon_dev._entry_ptr, ptr @qlcnic_store_beacon._entry, ptr @qlcnic_store_beacon._entry_ptr, ptr @qlcnic_validate_beacon._entry, ptr @qlcnic_validate_beacon._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @qlcnic_hwmon_groups, ptr @.str.5, ptr @.str.6, ptr @dev_attr_bridged_mode, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @bin_attr_flash, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @qlcnic_hwmon_group, ptr @qlcnic_hwmon_attrs, ptr @sensor_dev_attr_temp1_input, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @bin_attr_port_stats, ptr @.str.17, ptr @.str.18, ptr @dev_attr_diag_mode, ptr @.str.20, ptr @bin_attr_crb, ptr @.str.23, ptr @bin_attr_mem, ptr @.str.26, ptr @bin_attr_pci_config, ptr @.str.29, ptr @dev_attr_beacon, ptr @.str.32, ptr @bin_attr_esw_config, ptr @.str.35, ptr @bin_attr_npar_config, ptr @.str.38, ptr @bin_attr_pm_config, ptr @.str.41, ptr @bin_attr_esw_stats, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @qlcnic_83xx_sysfs_flash_write_handler.flash_mode, ptr @.str.66, ptr @.str.67], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_is_valid_nic_func._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_hwmon_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_register_hwmon_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_bridged_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_create_sysfs_entries._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_flash to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_add_sysfs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_hwmon_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_hwmon_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_port_stats to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_create_diag_entries._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_diag_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_create_diag_entries._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_crb to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_create_diag_entries._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_mem to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_create_diag_entries._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_pci_config to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_create_diag_entries._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_beacon to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_create_diag_entries._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_esw_config to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_create_diag_entries._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_npar_config to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_create_diag_entries._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_pm_config to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_create_diag_entries._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_esw_stats to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_create_diag_entries._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_store_beacon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_validate_beacon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_sysfs_flash_write_handler.flash_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_sysfs_flash_write_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_sysfs_flash_write_handler._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_sysfs_flash_write_handler._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @qlcnicvf_config_bridged_mode(ptr nocapture noundef readnone %adapter, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @qlcnicvf_config_led(ptr nocapture noundef readnone %adapter, i32 noundef %state, i32 noundef %rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_is_valid_nic_func(ptr nocapture noundef readonly %adapter, i8 noundef zeroext %pci_func) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %total_nic_func = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %total_nic_func to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %total_nic_func, align 8
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp13.not = icmp eq i16 %3, 0
  br i1 %cmp13.not, label %entry.do.end_crit_edge, label %for.body.lr.ph

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.body.lr.ph:                                   ; preds = %entry
  %npars = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 41
  %4 = ptrtoint ptr %npars to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %npars, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.014 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %pci_func2 = getelementptr %struct.qlcnic_npar_info, ptr %5, i32 %i.014, i32 14
  %6 = ptrtoint ptr %pci_func2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pci_func2, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %pci_func)
  %cmp5 = icmp eq i8 %7, %pci_func
  br i1 %cmp5, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %entry.do.end_crit_edge
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %i.014, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_register_hwmon_dev(ptr noundef %adapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device1.i, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %if.end [
    i16 -31696, label %entry.cleanup_crit_edge
    i16 -31680, label %entry.cleanup_crit_edge18
    i16 -29648, label %entry.cleanup_crit_edge19
  ]

entry.cleanup_crit_edge19:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge18:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @hwmon_device_register_with_groups(ptr noundef %dev1, ptr noundef nonnull @qlcnic_driver_name, ptr noundef %adapter, ptr noundef nonnull @qlcnic_hwmon_groups) #9
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %call3 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5, i32 noundef %5) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge18, %entry.cleanup_crit_edge19
  %hwmon_dev.0.sink = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge18 ], [ null, %entry.cleanup_crit_edge19 ], [ null, %do.end ], [ %call3, %if.end.cleanup_crit_edge ]
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 8
  %hwmon_dev9 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %7, i32 0, i32 63
  %8 = ptrtoint ptr %hwmon_dev9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %hwmon_dev.0.sink, ptr %hwmon_dev9, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_unregister_hwmon_dev(ptr nocapture noundef readonly %adapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %hwmon_dev1 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 63
  %2 = ptrtoint ptr %hwmon_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmon_dev1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @hwmon_device_unregister(ptr noundef nonnull %3) #9
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 8
  %hwmon_dev3 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %5, i32 0, i32 63
  %6 = ptrtoint ptr %hwmon_dev3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %hwmon_dev3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwmon_device_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_create_sysfs_entries(ptr nocapture noundef readonly %adapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %capabilities = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %3, i32 0, i32 40
  %4 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %capabilities, align 4
  %and = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then:                                          ; preds = %entry
  %call = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @dev_attr_bridged_mode) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %do.end

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.7) #12
  br label %if.end4

if.end4:                                          ; preds = %do.end, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_remove_sysfs_entries(ptr nocapture noundef readonly %adapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %capabilities = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %capabilities, align 4
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef nonnull @dev_attr_bridged_mode) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_82xx_add_sysfs(ptr noundef %adapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @qlcnic_create_diag_entries(ptr noundef %adapter)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qlcnic_create_diag_entries(ptr noundef %adapter) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call = tail call i32 @device_create_bin_file(ptr noundef %dev1, ptr noundef nonnull @bin_attr_port_stats) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.17) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %op_mode = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %3, i32 0, i32 30
  %4 = ptrtoint ptr %op_mode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %op_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %5)
  %cmp = icmp eq i16 %5, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @dev_attr_diag_mode) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.if.end11_crit_edge, label %do.end10

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.20) #12
  br label %if.end11

if.end11:                                         ; preds = %do.end10, %if.end4.if.end11_crit_edge
  %call12 = tail call i32 @device_create_bin_file(ptr noundef %dev1, ptr noundef nonnull @bin_attr_crb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end11.if.end18_crit_edge, label %do.end17

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.23) #12
  br label %if.end18

if.end18:                                         ; preds = %do.end17, %if.end11.if.end18_crit_edge
  %call19 = tail call i32 @device_create_bin_file(ptr noundef %dev1, ptr noundef nonnull @bin_attr_mem) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end18.if.end25_crit_edge, label %do.end24

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.26) #12
  br label %if.end25

if.end25:                                         ; preds = %do.end24, %if.end18.if.end25_crit_edge
  %state = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 5
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state, align 4
  %8 = and i32 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool27.not = icmp eq i32 %8, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %call30 = tail call i32 @device_create_bin_file(ptr noundef %dev1, ptr noundef nonnull @bin_attr_pci_config) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end29.if.end36_crit_edge, label %do.end35

if.end29.if.end36_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

do.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.29) #12
  br label %if.end36

if.end36:                                         ; preds = %do.end35, %if.end29.if.end36_crit_edge
  %call37 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @dev_attr_beacon) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end36.if.end43_crit_edge, label %do.end42

if.end36.if.end43_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

do.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.32) #12
  br label %if.end43

if.end43:                                         ; preds = %do.end42, %if.end36.if.end43_crit_edge
  %flags = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 6
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 8
  %and = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool44.not = icmp eq i32 %and, 0
  br i1 %tobool44.not, label %if.end43.cleanup_crit_edge, label %if.end46

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end46:                                         ; preds = %if.end43
  %call47 = tail call i32 @device_create_bin_file(ptr noundef %dev1, ptr noundef nonnull @bin_attr_esw_config) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end46.if.end53_crit_edge, label %do.end52

if.end46.if.end53_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

do.end52:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.35) #12
  br label %if.end53

if.end53:                                         ; preds = %do.end52, %if.end46.if.end53_crit_edge
  %11 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter, align 8
  %op_mode55 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %12, i32 0, i32 30
  %13 = ptrtoint ptr %op_mode55 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %op_mode55, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp57.not = icmp eq i16 %14, 0
  br i1 %cmp57.not, label %if.end60, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end60:                                         ; preds = %if.end53
  %call61 = tail call i32 @device_create_bin_file(ptr noundef %dev1, ptr noundef nonnull @bin_attr_npar_config) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end60.if.end67_crit_edge, label %do.end66

if.end60.if.end67_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

do.end66:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.38) #12
  br label %if.end67

if.end67:                                         ; preds = %do.end66, %if.end60.if.end67_crit_edge
  %call68 = tail call i32 @device_create_bin_file(ptr noundef %dev1, ptr noundef nonnull @bin_attr_pm_config) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end67.if.end74_crit_edge, label %do.end73

if.end67.if.end74_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

do.end73:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.41) #12
  br label %if.end74

if.end74:                                         ; preds = %do.end73, %if.end67.if.end74_crit_edge
  %call75 = tail call i32 @device_create_bin_file(ptr noundef %dev1, ptr noundef nonnull @bin_attr_esw_stats) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end74.cleanup_crit_edge, label %do.end80

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end80:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.44) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end80, %if.end74.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_82xx_remove_sysfs(ptr noundef %adapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @qlcnic_remove_diag_entries(ptr noundef %adapter)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qlcnic_remove_diag_entries(ptr noundef %adapter) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void @device_remove_bin_file(ptr noundef %dev1, ptr noundef nonnull @bin_attr_port_stats) #9
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %op_mode = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %3, i32 0, i32 30
  %4 = ptrtoint ptr %op_mode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %op_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %5)
  %cmp = icmp eq i16 %5, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef nonnull @dev_attr_diag_mode) #9
  tail call void @device_remove_bin_file(ptr noundef %dev1, ptr noundef nonnull @bin_attr_crb) #9
  tail call void @device_remove_bin_file(ptr noundef %dev1, ptr noundef nonnull @bin_attr_mem) #9
  %state = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 5
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state, align 4
  %8 = and i32 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @device_remove_bin_file(ptr noundef %dev1, ptr noundef nonnull @bin_attr_pci_config) #9
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef nonnull @dev_attr_beacon) #9
  %flags = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 6
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 8
  %and = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  tail call void @device_remove_bin_file(ptr noundef %dev1, ptr noundef nonnull @bin_attr_esw_config) #9
  %11 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter, align 8
  %op_mode9 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %12, i32 0, i32 30
  %13 = ptrtoint ptr %op_mode9 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %op_mode9, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp11.not = icmp eq i16 %14, 0
  br i1 %cmp11.not, label %if.end14, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @device_remove_bin_file(ptr noundef %dev1, ptr noundef nonnull @bin_attr_npar_config) #9
  tail call void @device_remove_bin_file(ptr noundef %dev1, ptr noundef nonnull @bin_attr_pm_config) #9
  tail call void @device_remove_bin_file(ptr noundef %dev1, ptr noundef nonnull @bin_attr_esw_stats) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_83xx_add_sysfs(ptr noundef %adapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call fastcc void @qlcnic_create_diag_entries(ptr noundef %adapter)
  %call = tail call i32 @sysfs_create_bin_file(ptr noundef %dev1, ptr noundef nonnull @bin_attr_flash) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.10) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_83xx_remove_sysfs(ptr noundef %adapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call fastcc void @qlcnic_remove_diag_entries(ptr noundef %adapter)
  tail call void @sysfs_remove_bin_file(ptr noundef %dev1, ptr noundef nonnull @bin_attr_flash) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_hwmon_show_temp(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %dev_attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 8
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device1.i, align 2
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.72)
  switch i16 %5, label %entry.if.end17_crit_edge [
    i16 -32720, label %entry.if.then_crit_edge
    i16 -30672, label %entry.if.then_crit_edge27
    i16 -32704, label %entry.if.then_crit_edge28
    i16 -31680, label %entry.if.then_crit_edge29
    i16 -31696, label %entry.if.then_crit_edge30
    i16 -29648, label %entry.if.then_crit_edge31
    i16 -32736, label %if.then6
  ]

entry.if.then_crit_edge31:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge30:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge29:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge28:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge27:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge27, %entry.if.then_crit_edge28, %entry.if.then_crit_edge29, %entry.if.then_crit_edge30, %entry.if.then_crit_edge31
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %ext_reg_tbl = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %8, i32 0, i32 56
  %11 = ptrtoint ptr %ext_reg_tbl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ext_reg_tbl, align 8
  %arrayidx = getelementptr i32, ptr %12, i32 42
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 %14
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !169
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  br label %if.end17

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %reg_tbl = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %18, i32 0, i32 55
  %21 = ptrtoint ptr %reg_tbl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_tbl, align 4
  %arrayidx12 = getelementptr i32, ptr %22, i32 18
  %23 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx12, align 4
  %add.ptr13 = getelementptr i8, ptr %20, i32 %24
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #9, !srcloc !169
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !171
  br label %if.end17

if.end17:                                         ; preds = %if.then6, %if.then, %entry.if.end17_crit_edge
  %value.0 = phi i32 [ %16, %if.then ], [ %26, %if.then6 ], [ 0, %entry.if.end17_crit_edge ]
  %shr = lshr i32 %value.0, 16
  %mul = mul nuw nsw i32 %shr, 1000
  %call18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %mul)
  ret i32 %call18
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_show_bridged_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %capabilities = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %3, i32 0, i32 40
  %4 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %capabilities, align 4
  %and = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %and1 = lshr i32 %7, 4
  %and1.lobit = and i32 %and1, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bridged_mode.0 = phi i32 [ %and1.lobit, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %bridged_mode.0)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_store_bridged_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #1 align 64 {
entry:
  %new = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new) #9
  %2 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %new, align 4, !annotation !172
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %capabilities = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %4, i32 0, i32 40
  %5 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %capabilities, align 4
  %and = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.err_out_crit_edge, label %if.end

entry.err_out_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state, align 4
  %9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %if.end.err_out_crit_edge, label %if.end4

if.end.err_out_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out

if.end4:                                          ; preds = %if.end
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 2, ptr noundef nonnull %new) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.err_out_crit_edge

if.end4.err_out_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %new, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool9 = icmp ne i32 %11, 0
  %lnot.ext = zext i1 %tobool9 to i32
  %call11 = call i32 @qlcnic_config_bridged_mode(ptr noundef %1, i32 noundef %lnot.ext) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  %spec.select = select i1 %tobool12.not, i32 %len, i32 -22
  br label %err_out

err_out:                                          ; preds = %if.end8, %if.end4.err_out_crit_edge, %if.end.err_out_crit_edge, %entry.err_out_crit_edge
  %ret.0 = phi i32 [ -22, %if.end4.err_out_crit_edge ], [ -22, %if.end.err_out_crit_edge ], [ -22, %entry.err_out_crit_edge ], [ %spec.select, %if.end8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_config_bridged_mode(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_sysfs_get_port_stats(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf, i64 noundef %offset, i32 noundef %size) #1 align 64 {
entry:
  %port_stats = alloca %struct.qlcnic_esw_statistics, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %port_stats) #9
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 8
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device1.i, align 2
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.73)
  switch i16 %5, label %if.end [
    i16 -32720, label %entry.cleanup_crit_edge
    i16 -30672, label %entry.cleanup_crit_edge32
    i16 -32704, label %entry.cleanup_crit_edge33
    i16 -31680, label %entry.cleanup_crit_edge34
    i16 -31696, label %entry.cleanup_crit_edge35
    i16 -29648, label %entry.cleanup_crit_edge36
  ]

entry.cleanup_crit_edge36:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge35:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge34:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge33:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge32:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 176, i32 %size)
  %cmp.not = icmp eq i32 %size, 176
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %max_vnic_func = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %8, i32 0, i32 38
  %9 = ptrtoint ptr %max_vnic_func to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_vnic_func, align 4
  %conv = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %offset)
  %cmp5.not = icmp sgt i64 %conv, %offset
  br i1 %cmp5.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %11 = call ptr @memset(ptr %port_stats, i32 0, i32 176)
  %conv9 = trunc i64 %offset to i8
  %call10 = call i32 @qlcnic_get_port_stats(ptr noundef %1, i8 noundef zeroext %conv9, i8 noundef zeroext 0, ptr noundef nonnull %port_stats) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %tx = getelementptr inbounds %struct.qlcnic_esw_statistics, ptr %port_stats, i32 0, i32 1
  %call14 = call i32 @qlcnic_get_port_stats(ptr noundef %1, i8 noundef zeroext %conv9, i8 noundef zeroext 1, ptr noundef %tx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %12 = call ptr @memcpy(ptr %buf, ptr %port_stats, i32 176)
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge32, %entry.cleanup_crit_edge33, %entry.cleanup_crit_edge34, %entry.cleanup_crit_edge35, %entry.cleanup_crit_edge36
  %retval.0 = phi i32 [ 176, %if.end17 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ %call10, %if.end8.cleanup_crit_edge ], [ %call14, %if.end12.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge32 ], [ -95, %entry.cleanup_crit_edge33 ], [ -95, %entry.cleanup_crit_edge34 ], [ -95, %entry.cleanup_crit_edge35 ], [ -95, %entry.cleanup_crit_edge36 ]
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %port_stats) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_sysfs_clear_port_stats(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i64 noundef %offset, i32 noundef %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 8
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device1.i, align 2
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.74)
  switch i16 %5, label %if.end [
    i16 -32720, label %entry.cleanup_crit_edge
    i16 -30672, label %entry.cleanup_crit_edge25
    i16 -32704, label %entry.cleanup_crit_edge26
    i16 -31680, label %entry.cleanup_crit_edge27
    i16 -31696, label %entry.cleanup_crit_edge28
    i16 -29648, label %entry.cleanup_crit_edge29
  ]

entry.cleanup_crit_edge29:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge28:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge27:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge26:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge25:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %max_vnic_func = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %8, i32 0, i32 38
  %9 = ptrtoint ptr %max_vnic_func to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_vnic_func, align 4
  %conv = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %offset)
  %cmp.not = icmp sgt i64 %conv, %offset
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %conv6 = trunc i64 %offset to i8
  %call7 = tail call i32 @qlcnic_clear_esw_stats(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %conv6, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = tail call i32 @qlcnic_clear_esw_stats(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %conv6, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  %size.call11 = select i1 %tobool12.not, i32 %size, i32 %call11
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge25, %entry.cleanup_crit_edge26, %entry.cleanup_crit_edge27, %entry.cleanup_crit_edge28, %entry.cleanup_crit_edge29
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ %call7, %if.end5.cleanup_crit_edge ], [ %size.call11, %if.end9 ], [ -95, %entry.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge25 ], [ -95, %entry.cleanup_crit_edge26 ], [ -95, %entry.cleanup_crit_edge27 ], [ -95, %entry.cleanup_crit_edge28 ], [ -95, %entry.cleanup_crit_edge29 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_get_port_stats(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_clear_esw_stats(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_show_diag_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %flags = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = lshr i32 %3, 5
  %and.lobit = and i32 %and, 1
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %and.lobit)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_store_diag_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #1 align 64 {
entry:
  %new = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new) #9
  %2 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %new, align 4, !annotation !172
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 2, ptr noundef nonnull %new) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %new, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2 = icmp eq i32 %4, 0
  %flags = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 8
  %7 = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %8 = icmp ne i32 %7, 0
  %cmp.not = xor i1 %tobool2, %8
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %xor = xor i32 %6, 32
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %xor, ptr %flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %len, %if.then9 ], [ %len, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_sysfs_read_crb(ptr nocapture noundef readnone %filp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %offset, i32 noundef %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %flags.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 100663296, i64 %offset)
  %cmp.i = icmp slt i64 %offset, 100663296
  br i1 %cmp.i, label %if.then1.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then1.i:                                       ; preds = %if.end.i
  %4 = and i64 %offset, -2048
  call void @__sanitizer_cov_trace_const_cmp8(i64 75497472, i64 %4)
  %5 = icmp eq i64 %4, 75497472
  br i1 %5, label %if.then1.i.if.end6.i_crit_edge, label %if.then1.i.cleanup_crit_edge

if.then1.i.cleanup_crit_edge:                     ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then1.i.if.end6.i_crit_edge:                   ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then1.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %crb_size.0.i = phi i32 [ 4, %if.end.i.if.end6.i_crit_edge ], [ 8, %if.then1.i.if.end6.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %crb_size.0.i, i32 %size)
  %cmp7.not.i = icmp eq i32 %crb_size.0.i, %size
  br i1 %cmp7.not.i, label %lor.lhs.false.i, label %if.end6.i.cleanup_crit_edge

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end6.i
  %sub.i = add nsw i32 %size, -1
  %conv.i = zext i32 %sub.i to i64
  %and8.i = and i64 %conv.i, %offset
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8.i)
  %tobool9.not.i = icmp eq i64 %and8.i, 0
  br i1 %tobool9.not.i, label %if.end, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.i
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %7, i32 0, i32 46
  %8 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_ops.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  tail call void %11(ptr noundef %1, ptr noundef %buf, i64 noundef %offset, i32 noundef %size) #9
  %div12 = lshr i32 %size, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp4.i.not = icmp ult i32 %size, 4
  br i1 %cmp4.i.not, label %if.end.cleanup_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %tmp.05.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %buf, %if.end.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %tmp.05.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tmp.05.i, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #9
  %15 = ptrtoint ptr %tmp.05.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %tmp.05.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %tmp.05.i, i32 1
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div12
  br i1 %exitcond.not.i, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %if.then1.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %if.end6.i.cleanup_crit_edge ], [ -22, %if.then1.i.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ], [ %size, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_sysfs_write_crb(ptr nocapture noundef readnone %filp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %offset, i32 noundef %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %flags.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 100663296, i64 %offset)
  %cmp.i = icmp slt i64 %offset, 100663296
  br i1 %cmp.i, label %if.then1.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then1.i:                                       ; preds = %if.end.i
  %4 = and i64 %offset, -2048
  call void @__sanitizer_cov_trace_const_cmp8(i64 75497472, i64 %4)
  %5 = icmp eq i64 %4, 75497472
  br i1 %5, label %if.then1.i.if.end6.i_crit_edge, label %if.then1.i.cleanup_crit_edge

if.then1.i.cleanup_crit_edge:                     ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then1.i.if.end6.i_crit_edge:                   ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then1.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %crb_size.0.i = phi i32 [ 4, %if.end.i.if.end6.i_crit_edge ], [ 8, %if.then1.i.if.end6.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %crb_size.0.i, i32 %size)
  %cmp7.not.i = icmp eq i32 %crb_size.0.i, %size
  br i1 %cmp7.not.i, label %lor.lhs.false.i, label %if.end6.i.cleanup_crit_edge

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end6.i
  %sub.i = add nsw i32 %size, -1
  %conv.i = zext i32 %sub.i to i64
  %and8.i = and i64 %conv.i, %offset
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8.i)
  %tobool9.not.i = icmp eq i64 %and8.i, 0
  br i1 %tobool9.not.i, label %if.end, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.i
  %div12 = lshr i32 %size, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp4.i.not = icmp ult i32 %size, 4
  br i1 %cmp4.i.not, label %if.end.qlcnic_swap32_buffer.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.qlcnic_swap32_buffer.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %qlcnic_swap32_buffer.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %tmp.05.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %buf, %if.end.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %tmp.05.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tmp.05.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  %9 = ptrtoint ptr %tmp.05.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tmp.05.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %tmp.05.i, i32 1
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div12
  br i1 %exitcond.not.i, label %for.body.i.qlcnic_swap32_buffer.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.qlcnic_swap32_buffer.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qlcnic_swap32_buffer.exit

qlcnic_swap32_buffer.exit:                        ; preds = %for.body.i.qlcnic_swap32_buffer.exit_crit_edge, %if.end.qlcnic_swap32_buffer.exit_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %11, i32 0, i32 46
  %12 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_ops.i, align 4
  %write_crb.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %write_crb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_crb.i, align 4
  tail call void %15(ptr noundef %1, ptr noundef %buf, i64 noundef %offset, i32 noundef %size) #9
  br label %cleanup

cleanup:                                          ; preds = %qlcnic_swap32_buffer.exit, %lor.lhs.false.i.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %if.then1.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %qlcnic_swap32_buffer.exit ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %if.end6.i.cleanup_crit_edge ], [ -22, %if.then1.i.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_sysfs_read_mem(ptr nocapture noundef readnone %filp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef %buf, i64 noundef %offset, i32 noundef %size) #1 align 64 {
entry:
  %data = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #9
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %data, align 8, !annotation !172
  %flags.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size)
  %cmp.not.i = icmp eq i32 %size, 8
  %and1.i = and i64 %offset, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i)
  %tobool2.not.i = icmp eq i64 %and1.i, 0
  %or.cond.i = and i1 %cmp.not.i, %tobool2.not.i
  br i1 %or.cond.i, label %if.end, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %call3 = call i32 @qlcnic_pci_mem_read_2M(ptr noundef %1, i64 noundef %offset, ptr noundef nonnull %data) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %data, align 8
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %6, ptr %buf, align 1
  %8 = load i32, ptr %buf, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %8) #9
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %buf, align 4
  %incdec.ptr.i = getelementptr i32, ptr %buf, i32 1
  %11 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %incdec.ptr.i, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %12) #9
  %14 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %incdec.ptr.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.end.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ], [ -5, %if.end.i.cleanup_crit_edge ], [ 8, %if.end5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_sysfs_write_mem(ptr nocapture noundef readnone %filp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef %buf, i64 noundef %offset, i32 noundef %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %flags.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size)
  %cmp.not.i = icmp eq i32 %size, 8
  %and1.i = and i64 %offset, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i)
  %tobool2.not.i = icmp eq i64 %and1.i, 0
  %or.cond.i = and i1 %cmp.not.i, %tobool2.not.i
  br i1 %or.cond.i, label %for.body.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buf, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #9
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %buf, align 4
  %incdec.ptr.i = getelementptr i32, ptr %buf, i32 1
  %8 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %incdec.ptr.i, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #9
  %11 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %incdec.ptr.i, align 4
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %buf, align 1
  %call3 = tail call i32 @qlcnic_pci_mem_write_2M(ptr noundef %1, i64 noundef %offset, i64 noundef %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  %size. = select i1 %tobool.not, i32 8, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %for.body.i, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size., %for.body.i ], [ -5, %entry.cleanup_crit_edge ], [ -5, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_pci_mem_read_2M(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_pci_mem_write_2M(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_sysfs_read_pci_config(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf, i64 noundef %offset, i32 noundef %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %size, i32 20) #9
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %entry.cleanup_crit_edge, label %if.end7.i.i, !prof !173

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %4 = extractvalue { i32, i1 } %2, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %6, i32 0, i32 46
  %7 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_ops.i, align 4
  %get_pci_info.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %8, i32 0, i32 21
  %9 = ptrtoint ptr %get_pci_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %get_pci_info.i, align 4
  %call.i = tail call i32 %10(ptr noundef %1, ptr noundef nonnull %call8.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  %div60 = lshr i32 %size, 4
  %div761 = lshr i32 %size, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp4.i.not = icmp ult i32 %size, 4
  br i1 %cmp4.i.not, label %if.end6.cleanup.sink.split_crit_edge, label %if.end6.for.body.i_crit_edge

if.end6.for.body.i_crit_edge:                     ; preds = %if.end6
  br label %for.body.i

if.end6.cleanup.sink.split_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end6.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end6.for.body.i_crit_edge ]
  %tmp.05.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %call8.i.i, %if.end6.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %tmp.05.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tmp.05.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #9
  %14 = ptrtoint ptr %tmp.05.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tmp.05.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %tmp.05.i, i32 1
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div761
  br i1 %exitcond.not.i, label %qlcnic_swap32_buffer.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

qlcnic_swap32_buffer.exit:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %size)
  %cmp68.not = icmp ult i32 %size, 16
  br i1 %cmp68.not, label %qlcnic_swap32_buffer.exit.cleanup.sink.split_crit_edge, label %for.body.preheader

qlcnic_swap32_buffer.exit.cleanup.sink.split_crit_edge: ; preds = %qlcnic_swap32_buffer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

for.body.preheader:                               ; preds = %qlcnic_swap32_buffer.exit
  %umax = call i32 @llvm.umax.i32(i32 %div60, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.069 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.qlcnic_pci_info, ptr %call8.i.i, i32 %i.069
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx, align 4
  %conv = trunc i16 %16 to i8
  %arrayidx8 = getelementptr %struct.qlcnic_pci_func_cfg, ptr %buf, i32 %i.069
  %pci_func = getelementptr %struct.qlcnic_pci_func_cfg, ptr %buf, i32 %i.069, i32 4
  %17 = ptrtoint ptr %pci_func to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %pci_func, align 2
  %type = getelementptr %struct.qlcnic_pci_info, ptr %call8.i.i, i32 %i.069, i32 2
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %type, align 4
  %20 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %arrayidx8, align 2
  %func_state = getelementptr %struct.qlcnic_pci_func_cfg, ptr %buf, i32 %i.069, i32 5
  %21 = ptrtoint ptr %func_state to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %func_state, align 1
  %default_port = getelementptr %struct.qlcnic_pci_info, ptr %call8.i.i, i32 %i.069, i32 3
  %22 = ptrtoint ptr %default_port to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %default_port, align 2
  %port_num = getelementptr %struct.qlcnic_pci_func_cfg, ptr %buf, i32 %i.069, i32 3
  %24 = ptrtoint ptr %port_num to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %port_num, align 2
  %tx_min_bw = getelementptr %struct.qlcnic_pci_info, ptr %call8.i.i, i32 %i.069, i32 4
  %25 = ptrtoint ptr %tx_min_bw to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %tx_min_bw, align 4
  %min_bw = getelementptr %struct.qlcnic_pci_func_cfg, ptr %buf, i32 %i.069, i32 1
  %27 = ptrtoint ptr %min_bw to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %min_bw, align 2
  %tx_max_bw = getelementptr %struct.qlcnic_pci_info, ptr %call8.i.i, i32 %i.069, i32 5
  %28 = ptrtoint ptr %tx_max_bw to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %tx_max_bw, align 2
  %max_bw = getelementptr %struct.qlcnic_pci_func_cfg, ptr %buf, i32 %i.069, i32 2
  %30 = ptrtoint ptr %max_bw to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %max_bw, align 2
  %def_mac_addr = getelementptr %struct.qlcnic_pci_func_cfg, ptr %buf, i32 %i.069, i32 6
  %mac = getelementptr %struct.qlcnic_pci_info, ptr %call8.i.i, i32 %i.069, i32 6
  %31 = call ptr @memcpy(ptr %def_mac_addr, ptr %mac, i32 6)
  %inc = add nuw nsw i32 %i.069, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.cleanup.sink.split_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.body.cleanup.sink.split_crit_edge, %qlcnic_swap32_buffer.exit.cleanup.sink.split_crit_edge, %if.end6.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call.i, %if.end.cleanup.sink.split_crit_edge ], [ %size, %if.end6.cleanup.sink.split_crit_edge ], [ %size, %qlcnic_swap32_buffer.exit.cleanup.sink.split_crit_edge ], [ %size, %for.body.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end7.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_show_beacon(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %beacon_state = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %beacon_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %beacon_state, align 8
  %conv = zext i8 %5 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_store_beacon(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #1 align 64 {
entry:
  %h_beacon.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %op_mode = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %3, i32 0, i32 30
  %4 = ptrtoint ptr %op_mode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %op_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %5)
  %cmp = icmp eq i16 %5, 2
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.52) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 8
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %device1.i, align 2
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.75)
  switch i16 %9, label %if.end.cleanup_crit_edge [
    i16 -32736, label %if.then3
    i16 -32720, label %if.end.if.then6_crit_edge
    i16 -30672, label %if.end.if.then6_crit_edge35
    i16 -32704, label %if.end.if.then6_crit_edge36
    i16 -31680, label %if.end.if.then6_crit_edge37
    i16 -31696, label %if.end.if.then6_crit_edge38
    i16 -29648, label %if.end.if.then6_crit_edge39
  ]

if.end.if.then6_crit_edge39:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.end.if.then6_crit_edge38:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.end.if.then6_crit_edge37:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.end.if.then6_crit_edge36:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.end.if.then6_crit_edge35:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %drv_sds_rings2.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 16
  %11 = ptrtoint ptr %drv_sds_rings2.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %drv_sds_rings2.i, align 2
  %conv.i = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len)
  %cmp.not.i = icmp eq i32 %len, 2
  br i1 %cmp.not.i, label %if.end.i, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then3
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %beacon.0.copyload.i = load i16, ptr %buf, align 1
  %conv.i.i = trunc i16 %beacon.0.copyload.i to i8
  %14 = lshr i16 %beacon.0.copyload.i, 8
  %conv2.i.i = trunc i16 %14 to i8
  %msg_enable.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %3, i32 0, i32 35
  %15 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg_enable.i.i, align 4
  %and.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.do.end7.i.i_crit_edge, label %do.end.i.i

if.end.i.do.end7.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i.i

do.end.i.i:                                       ; preds = %if.end.i
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44, i32 3
  %17 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.i.dev_name.exit.i.i_crit_edge

do.end.i.i.dev_name.exit.i.i_crit_edge:           ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %19 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %do.end.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %20, %if.end.i.i.i ], [ %18, %do.end.i.i.dev_name.exit.i.i_crit_edge ]
  %conv.i.mask.i = and i16 %beacon.0.copyload.i, 255
  %conv4.i.i = zext i16 %conv.i.mask.i to i32
  %conv5.i.i = zext i16 %14 to i32
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %retval.0.i.i.i, ptr noundef nonnull @.str.55, i32 noundef %conv4.i.i, i32 noundef %conv5.i.i) #12
  br label %do.end7.i.i

do.end7.i.i:                                      ; preds = %dev_name.exit.i.i, %if.end.i.do.end7.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv2.i.i)
  %tobool8.not.i.i = icmp eq i8 %conv2.i.i, 0
  br i1 %tobool8.not.i.i, label %do.end7.i.i.if.end5.i_crit_edge, label %if.else.i.i

do.end7.i.i.if.end5.i_crit_edge:                  ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.else.i.i:                                      ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %conv2.i.i)
  %cmp.i.i = icmp ugt i8 %conv2.i.i, 2
  %21 = add i8 %conv.i.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -15, i8 %21)
  %22 = icmp ult i8 %21, -15
  %or.cond.i = select i1 %cmp.i.i, i1 true, i1 %22
  br i1 %or.cond.i, label %if.else.i.i.cleanup_crit_edge, label %if.else.i.i.if.end5.i_crit_edge

if.else.i.i.if.end5.i_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5.i:                                        ; preds = %if.else.i.i.if.end5.i_crit_edge, %do.end7.i.i.if.end5.i_crit_edge
  %b_rate.0.ph.i = phi i8 [ 15, %do.end7.i.i.if.end5.i_crit_edge ], [ %conv.i.i, %if.else.i.i.if.end5.i_crit_edge ]
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  %hw_ops.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %24, i32 0, i32 46
  %25 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw_ops.i.i, align 4
  %get_beacon_state.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %26, i32 0, i32 40
  %27 = ptrtoint ptr %get_beacon_state.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %get_beacon_state.i.i, align 4
  tail call void %28(ptr noundef %1) #9
  %beacon_state.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %3, i32 0, i32 9
  %29 = ptrtoint ptr %beacon_state.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %beacon_state.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %conv2.i.i)
  %cmp8.i = icmp eq i8 %30, %conv2.i.i
  br i1 %cmp8.i, label %if.end5.i.cleanup_crit_edge, label %if.end11.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11.i:                                       ; preds = %if.end5.i
  tail call void @rtnl_lock() #9
  %31 = ptrtoint ptr %beacon_state.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %beacon_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool13.not.i = icmp eq i8 %32, 0
  br i1 %tobool13.not.i, label %if.then14.i, label %if.end11.i.if.end19.i_crit_edge

if.end11.i.if.end19.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

if.then14.i:                                      ; preds = %if.end11.i
  %state.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 5
  %call15.i = tail call i32 @_test_and_set_bit(i32 noundef 7, ptr noundef %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.then14.i.if.end19.i_crit_edge, label %if.then14.i.cleanup.sink.split.i_crit_edge

if.then14.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

if.then14.i.if.end19.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then14.i.if.end19.i_crit_edge, %if.end11.i.if.end19.i_crit_edge
  %state20.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 5
  %33 = ptrtoint ptr %state20.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %state20.i, align 4
  %35 = and i32 %34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool22.not.i = icmp eq i32 %35, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %if.end19.i.out.i_crit_edge

if.end19.i.out.i_crit_edge:                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end24.i:                                       ; preds = %if.end19.i
  %36 = ptrtoint ptr %state20.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %state20.i, align 4
  %38 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool27.not.i = icmp eq i32 %38, 0
  br i1 %tobool27.not.i, label %if.then28.i, label %if.end24.i.if.end34.i_crit_edge

if.end24.i.if.end34.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

if.then28.i:                                      ; preds = %if.end24.i
  %netdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 3
  %39 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %netdev.i, align 4
  %call29.i = tail call i32 @qlcnic_diag_alloc_res(ptr noundef %40, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end32.i, label %if.then28.i.out.i_crit_edge

if.then28.i.out.i_crit_edge:                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end32.i:                                       ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 6, ptr noundef %state20.i) #9
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.end32.i, %if.end24.i.if.end34.i_crit_edge
  %conv35.i = zext i16 %14 to i32
  %conv36.i = zext i8 %b_rate.0.ph.i to i32
  %nic_ops.i.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 43
  %41 = ptrtoint ptr %nic_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %nic_ops.i.i, align 8
  %config_led.i.i = getelementptr inbounds %struct.qlcnic_nic_template, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %config_led.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %config_led.i.i, align 4
  %call.i.i = tail call i32 %44(ptr noundef %1, i32 noundef %conv35.i, i32 noundef %conv36.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool38.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool38.not.i, label %if.then39.i, label %if.end34.i.if.end41.i_crit_edge

if.end34.i.if.end41.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41.i

if.then39.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %beacon_state.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv2.i.i, ptr %beacon_state.i, align 8
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then39.i, %if.end34.i.if.end41.i_crit_edge
  %err.0.i = phi i32 [ %call.i.i, %if.end34.i.if.end41.i_crit_edge ], [ 2, %if.then39.i ]
  %call43.i = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %state20.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %if.end41.i.out.i_crit_edge, label %if.then45.i

if.end41.i.out.i_crit_edge:                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.then45.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  %netdev46.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 3
  %46 = ptrtoint ptr %netdev46.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %netdev46.i, align 4
  tail call void @qlcnic_diag_free_res(ptr noundef %47, i32 noundef %conv.i) #9
  br label %out.i

out.i:                                            ; preds = %if.then45.i, %if.end41.i.out.i_crit_edge, %if.then28.i.out.i_crit_edge, %if.end19.i.out.i_crit_edge
  %err.1.i = phi i32 [ %err.0.i, %if.then45.i ], [ %err.0.i, %if.end41.i.out.i_crit_edge ], [ %call29.i, %if.then28.i.out.i_crit_edge ], [ -5, %if.end19.i.out.i_crit_edge ]
  %48 = ptrtoint ptr %beacon_state.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %beacon_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool49.not.i = icmp eq i8 %49, 0
  br i1 %tobool49.not.i, label %if.then50.i, label %out.i.cleanup.sink.split.i_crit_edge

out.i.cleanup.sink.split.i_crit_edge:             ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

if.then50.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %state20.i) #9
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then50.i, %out.i.cleanup.sink.split.i_crit_edge, %if.then14.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ -16, %if.then14.i.cleanup.sink.split.i_crit_edge ], [ %err.1.i, %if.then50.i ], [ %err.1.i, %out.i.cleanup.sink.split.i_crit_edge ]
  tail call void @rtnl_unlock() #9
  br label %cleanup

if.then6:                                         ; preds = %if.end.if.then6_crit_edge, %if.end.if.then6_crit_edge35, %if.end.if.then6_crit_edge36, %if.end.if.then6_crit_edge37, %if.end.if.then6_crit_edge38, %if.end.if.then6_crit_edge39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %h_beacon.i) #9
  %50 = ptrtoint ptr %h_beacon.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %h_beacon.i, align 4, !annotation !172
  %state.i21 = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 5
  %51 = ptrtoint ptr %state.i21 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %state.i21, align 4
  %53 = and i32 %52, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i = icmp eq i32 %53, 0
  br i1 %tobool.not.i, label %if.end.i23, label %if.then6.qlcnic_83xx_store_beacon.exit_crit_edge

if.then6.qlcnic_83xx_store_beacon.exit_crit_edge: ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %qlcnic_83xx_store_beacon.exit

if.end.i23:                                       ; preds = %if.then6
  %call.i.i22 = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 2, ptr noundef nonnull %h_beacon.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i22)
  %tobool3.not.i = icmp eq i32 %call.i.i22, 0
  br i1 %tobool3.not.i, label %if.end5.i29, label %if.end.i23.qlcnic_83xx_store_beacon.exit_crit_edge

if.end.i23.qlcnic_83xx_store_beacon.exit_crit_edge: ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #11
  br label %qlcnic_83xx_store_beacon.exit

if.end5.i29:                                      ; preds = %if.end.i23
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 8
  %hw_ops.i.i24 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %55, i32 0, i32 46
  %56 = ptrtoint ptr %hw_ops.i.i24 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hw_ops.i.i24, align 4
  %get_beacon_state.i.i25 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %57, i32 0, i32 40
  %58 = ptrtoint ptr %get_beacon_state.i.i25 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %get_beacon_state.i.i25, align 4
  call void %59(ptr noundef %1) #9
  %beacon_state.i26 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %3, i32 0, i32 9
  %60 = ptrtoint ptr %beacon_state.i26 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %beacon_state.i26, align 8
  %conv.i27 = zext i8 %61 to i32
  %62 = ptrtoint ptr %h_beacon.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %h_beacon.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %conv.i27)
  %cmp.i28 = icmp eq i32 %63, %conv.i27
  br i1 %cmp.i28, label %if.end5.i29.qlcnic_83xx_store_beacon.exit_crit_edge, label %if.end8.i

if.end5.i29.qlcnic_83xx_store_beacon.exit_crit_edge: ; preds = %if.end5.i29
  call void @__sanitizer_cov_trace_pc() #11
  br label %qlcnic_83xx_store_beacon.exit

if.end8.i:                                        ; preds = %if.end5.i29
  call void @rtnl_lock() #9
  %64 = ptrtoint ptr %beacon_state.i26 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %beacon_state.i26, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool10.not.i = icmp eq i8 %65, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end8.i.if.end17.i_crit_edge

if.end8.i.if.end17.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

if.then11.i:                                      ; preds = %if.end8.i
  %call13.i = call i32 @_test_and_set_bit(i32 noundef 7, ptr noundef %state.i21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.then11.i.if.end17.i_crit_edge, label %if.then11.i.cleanup.sink.split.i33_crit_edge

if.then11.i.cleanup.sink.split.i33_crit_edge:     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i33

if.then11.i.if.end17.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then11.i.if.end17.i_crit_edge, %if.end8.i.if.end17.i_crit_edge
  %66 = ptrtoint ptr %h_beacon.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %h_beacon.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool18.not.i = icmp eq i32 %67, 0
  br i1 %tobool18.not.i, label %if.else.i, label %if.then19.i

if.then19.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  %call20.i = call i32 @qlcnic_83xx_config_led(ptr noundef %1, i32 noundef 1, i32 noundef %67) #9
  br label %if.end23.i

if.else.i:                                        ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  %call22.i = call i32 @qlcnic_83xx_config_led(ptr noundef %1, i32 noundef 0, i32 noundef 1) #9
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else.i, %if.then19.i
  %err.0.i30 = phi i32 [ %call20.i, %if.then19.i ], [ %call22.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i30)
  %tobool24.not.i = icmp eq i32 %err.0.i30, 0
  br i1 %tobool24.not.i, label %if.then25.i, label %if.end28thread-pre-split.i

if.then25.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %h_beacon.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %h_beacon.i, align 4
  %conv26.i = trunc i32 %69 to i8
  %70 = ptrtoint ptr %beacon_state.i26 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv26.i, ptr %beacon_state.i26, align 8
  br label %if.end28.i

if.end28thread-pre-split.i:                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %beacon_state.i26 to i32
  call void @__asan_load1_noabort(i32 %71)
  %.pr.i = load i8, ptr %beacon_state.i26, align 8
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.end28thread-pre-split.i, %if.then25.i
  %72 = phi i8 [ %.pr.i, %if.end28thread-pre-split.i ], [ %conv26.i, %if.then25.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool30.not.i31 = icmp eq i8 %72, 0
  br i1 %tobool30.not.i31, label %if.then31.i, label %if.end28.i.cleanup.sink.split.i33_crit_edge

if.end28.i.cleanup.sink.split.i33_crit_edge:      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i33

if.then31.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_clear_bit(i32 noundef 7, ptr noundef %state.i21) #9
  br label %cleanup.sink.split.i33

cleanup.sink.split.i33:                           ; preds = %if.then31.i, %if.end28.i.cleanup.sink.split.i33_crit_edge, %if.then11.i.cleanup.sink.split.i33_crit_edge
  %retval.0.ph.i32 = phi i32 [ -16, %if.then11.i.cleanup.sink.split.i33_crit_edge ], [ %len, %if.then31.i ], [ %len, %if.end28.i.cleanup.sink.split.i33_crit_edge ]
  call void @rtnl_unlock() #9
  br label %qlcnic_83xx_store_beacon.exit

qlcnic_83xx_store_beacon.exit:                    ; preds = %cleanup.sink.split.i33, %if.end5.i29.qlcnic_83xx_store_beacon.exit_crit_edge, %if.end.i23.qlcnic_83xx_store_beacon.exit_crit_edge, %if.then6.qlcnic_83xx_store_beacon.exit_crit_edge
  %retval.0.i34 = phi i32 [ -5, %if.then6.qlcnic_83xx_store_beacon.exit_crit_edge ], [ -22, %if.end.i23.qlcnic_83xx_store_beacon.exit_crit_edge ], [ %len, %if.end5.i29.qlcnic_83xx_store_beacon.exit_crit_edge ], [ %retval.0.ph.i32, %cleanup.sink.split.i33 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %h_beacon.i) #9
  br label %cleanup

cleanup:                                          ; preds = %qlcnic_83xx_store_beacon.exit, %cleanup.sink.split.i, %if.end5.i.cleanup_crit_edge, %if.else.i.i.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -95, %do.end ], [ %retval.0.i34, %qlcnic_83xx_store_beacon.exit ], [ -22, %if.then3.cleanup_crit_edge ], [ 2, %if.end5.i.cleanup_crit_edge ], [ -22, %if.else.i.i.cleanup_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_diag_alloc_res(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_diag_free_res(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_config_led(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_sysfs_read_esw_config(ptr nocapture noundef readnone %file, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %offset, i32 noundef %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = call ptr @memset(ptr %buf, i32 0, i32 %size)
  %div52 = lshr i32 %size, 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %total_nic_func56 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %4, i32 0, i32 36
  %5 = ptrtoint ptr %total_nic_func56 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %total_nic_func56, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp58.not = icmp eq i16 %6, 0
  br i1 %cmp58.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %npars = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 41
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.059 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %7 = ptrtoint ptr %npars to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %npars, align 8
  %pci_func3 = getelementptr %struct.qlcnic_npar_info, ptr %8, i32 %i.059, i32 14
  %9 = ptrtoint ptr %pci_func3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pci_func3, align 2
  %conv4 = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div52, i32 %conv4)
  %cmp5.not = icmp ugt i32 %div52, %conv4
  br i1 %cmp5.not, label %if.end14, label %do.body

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qlcnic_sysfs_read_esw_config.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qlcnic_sysfs_read_esw_config, %if.then10)) #9
          to label %for.inc [label %if.then10], !srcloc !174

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %total_nic_func12 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %12, i32 0, i32 36
  %13 = ptrtoint ptr %total_nic_func12 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %total_nic_func12, align 8
  %conv13 = zext i16 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qlcnic_sysfs_read_esw_config.__UNIQUE_ID_ddebug501, ptr noundef %kobj, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.58, i32 noundef %conv13, i32 noundef %div52) #9
  br label %for.inc

if.end14:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.qlcnic_npar_info, ptr %8, i32 %i.059
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 2, !range !175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool17.not = icmp eq i8 %16, 0
  br i1 %tobool17.not, label %if.end14.for.inc_crit_edge, label %if.end19

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end19:                                         ; preds = %if.end14
  %arrayidx20 = getelementptr %struct.qlcnic_esw_func_cfg, ptr %buf, i32 %conv4
  %pci_func21 = getelementptr %struct.qlcnic_esw_func_cfg, ptr %buf, i32 %conv4, i32 3
  %17 = ptrtoint ptr %pci_func21 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %10, ptr %pci_func21, align 2
  %call24 = tail call i32 @qlcnic_get_eswitch_port_config(ptr noundef %1, ptr noundef %arrayidx20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end19.for.inc_crit_edge, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19.for.inc_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %if.end19.for.inc_crit_edge, %if.end14.for.inc_crit_edge, %if.then10, %do.body
  %inc = add nuw nsw i32 %i.059, 1
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %total_nic_func = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %19, i32 0, i32 36
  %20 = ptrtoint ptr %total_nic_func to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %total_nic_func, align 8
  %conv = zext i16 %21 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %div2853 = lshr i32 %size, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp4.i.not = icmp ult i32 %size, 4
  br i1 %cmp4.i.not, label %for.end.cleanup_crit_edge, label %for.end.for.body.i_crit_edge

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.end.for.body.i_crit_edge ]
  %tmp.05.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %buf, %for.end.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %tmp.05.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tmp.05.i, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #9
  %25 = ptrtoint ptr %tmp.05.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %tmp.05.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %tmp.05.i, i32 1
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div2853
  br i1 %exitcond.not.i, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end19.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %for.end.cleanup_crit_edge ], [ %size, %for.body.i.cleanup_crit_edge ], [ -22, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_sysfs_write_esw_config(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %offset, i32 noundef %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %div168 = lshr i32 %size, 4
  %rem2 = and i32 %size, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem2)
  %tobool.not = icmp eq i32 %rem2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %div3169 = lshr i32 %size, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp4.i.not = icmp ult i32 %size, 4
  br i1 %cmp4.i.not, label %if.end.qlcnic_swap32_buffer.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.qlcnic_swap32_buffer.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %qlcnic_swap32_buffer.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %tmp.05.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %buf, %if.end.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %tmp.05.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tmp.05.i, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #9
  %5 = ptrtoint ptr %tmp.05.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tmp.05.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %tmp.05.i, i32 1
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div3169
  br i1 %exitcond.not.i, label %for.body.i.qlcnic_swap32_buffer.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.qlcnic_swap32_buffer.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qlcnic_swap32_buffer.exit

qlcnic_swap32_buffer.exit:                        ; preds = %for.body.i.qlcnic_swap32_buffer.exit_crit_edge, %if.end.qlcnic_swap32_buffer.exit_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %pdev.i.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev.i.i, align 8
  %device1.i.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %device1.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %device1.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %11)
  %cmp.i.i = icmp eq i16 %11, -32736
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 8
  br i1 %cmp.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %qlcnic_swap32_buffer.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %13, i32 20
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !169
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !176
  br label %if.end.i

if.else.i:                                        ; preds = %qlcnic_swap32_buffer.exit
  call void @__sanitizer_cov_trace_pc() #11
  %ext_reg_tbl.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %7, i32 0, i32 56
  %16 = ptrtoint ptr %ext_reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ext_reg_tbl.i, align 8
  %arrayidx.i = getelementptr i32, ptr %17, i32 37
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %13, i32 %19
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #9, !srcloc !169
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !177
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %op_mode.0.i = phi i32 [ %15, %if.then.i ], [ %21, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %size)
  %cmp127.i.not = icmp ult i32 %size, 16
  br i1 %cmp127.i.not, label %if.end.i.cleanup_crit_edge, label %for.body.lr.ph.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %max_vnic_func.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %7, i32 0, i32 38
  %npars.i.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 41
  br label %for.body.i170

for.body.i170:                                    ; preds = %for.inc.i.for.body.i170_crit_edge, %for.body.lr.ph.i
  %i.0128.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i171, %for.inc.i.for.body.i170_crit_edge ]
  %arrayidx11.i = getelementptr %struct.qlcnic_esw_func_cfg, ptr %buf, i32 %i.0128.i
  %pci_func12.i = getelementptr %struct.qlcnic_esw_func_cfg, ptr %buf, i32 %i.0128.i, i32 3
  %22 = ptrtoint ptr %pci_func12.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pci_func12.i, align 2
  %conv.i = zext i8 %23 to i32
  %24 = ptrtoint ptr %max_vnic_func.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_vnic_func.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv.i)
  %cmp13.not.i = icmp ugt i32 %25, %conv.i
  br i1 %cmp13.not.i, label %if.end16.i, label %for.body.i170.cleanup_crit_edge

for.body.i170.cleanup_crit_edge:                  ; preds = %for.body.i170
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16.i:                                       ; preds = %for.body.i170
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %op_mode18.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %27, i32 0, i32 30
  %28 = ptrtoint ptr %op_mode18.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %op_mode18.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp20.i = icmp eq i16 %29, 0
  br i1 %cmp20.i, label %if.then22.i, label %if.end16.i.if.end28.i_crit_edge

if.end16.i.if.end28.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

if.then22.i:                                      ; preds = %if.end16.i
  %total_nic_func.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %27, i32 0, i32 36
  %30 = ptrtoint ptr %total_nic_func.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %total_nic_func.i.i, align 8
  %conv.i.i = zext i16 %31 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp13.not.i.i = icmp eq i16 %31, 0
  br i1 %cmp13.not.i.i, label %if.then22.i.cleanup.sink.split_crit_edge, label %for.body.lr.ph.i.i

if.then22.i.cleanup.sink.split_crit_edge:         ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

for.body.lr.ph.i.i:                               ; preds = %if.then22.i
  %32 = ptrtoint ptr %npars.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %npars.i.i, align 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.014.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %pci_func2.i.i = getelementptr %struct.qlcnic_npar_info, ptr %33, i32 %i.014.i.i, i32 14
  %34 = ptrtoint ptr %pci_func2.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %pci_func2.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %23)
  %cmp5.i.i = icmp eq i8 %35, %23
  br i1 %cmp5.i.i, label %for.body.i.i.if.end28.i_crit_edge, label %for.inc.i.i

for.body.i.i.if.end28.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.014.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.cleanup.sink.split_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.cleanup.sink.split_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end28.i:                                       ; preds = %for.body.i.i.if.end28.i_crit_edge, %if.end16.i.if.end28.i_crit_edge
  %op_mode30.i = getelementptr %struct.qlcnic_esw_func_cfg, ptr %buf, i32 %i.0128.i, i32 1
  %36 = ptrtoint ptr %op_mode30.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %op_mode30.i, align 2
  %38 = zext i8 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.76)
  switch i8 %37, label %if.end28.i.cleanup_crit_edge [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb64.i
    i8 2, label %sw.bb79.i
  ]

if.end28.i.cleanup_crit_edge:                     ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end28.i
  %39 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev.i.i, align 8
  %device1.i122.i = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %device1.i122.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %device1.i122.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %42)
  %cmp.i123.i = icmp eq i16 %42, -32736
  br i1 %cmp.i123.i, label %if.then33.i, label %if.else35.i

if.then33.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %shr.i = lshr i32 %op_mode.0.i, %mul.i
  %and.i = and i32 %shr.i, 15
  br label %if.end41.i

if.else35.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul37.i = shl nuw nsw i32 %conv.i, 1
  %shr38.i = lshr i32 %op_mode.0.i, %mul37.i
  %and39.i = and i32 %shr38.i, 3
  %offload_flags.i = getelementptr %struct.qlcnic_esw_func_cfg, ptr %buf, i32 %i.0128.i, i32 9
  %43 = ptrtoint ptr %offload_flags.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %offload_flags.i, align 2
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.else35.i, %if.then33.i
  %ret.0.i = phi i32 [ %and.i, %if.then33.i ], [ %and39.i, %if.else35.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ret.0.i)
  %cmp42.not.i = icmp eq i32 %ret.0.i, 2
  br i1 %cmp42.not.i, label %if.end41.i.for.inc.i_crit_edge, label %if.then44.i

if.end41.i.for.inc.i_crit_edge:                   ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then44.i:                                      ; preds = %if.end41.i
  %mac_anti_spoof.i = getelementptr %struct.qlcnic_esw_func_cfg, ptr %buf, i32 %i.0128.i, i32 8
  %44 = ptrtoint ptr %mac_anti_spoof.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %mac_anti_spoof.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp47.not.i = icmp eq i8 %45, 0
  br i1 %cmp47.not.i, label %if.end50.i, label %if.then44.i.cleanup_crit_edge

if.then44.i.cleanup_crit_edge:                    ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end50.i:                                       ; preds = %if.then44.i
  %mac_override.i = getelementptr %struct.qlcnic_esw_func_cfg, ptr %buf, i32 %i.0128.i, i32 7
  %46 = ptrtoint ptr %mac_override.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %mac_override.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %47)
  %cmp53.not.i = icmp eq i8 %47, 1
  br i1 %cmp53.not.i, label %if.end56.i, label %if.end50.i.cleanup_crit_edge

if.end50.i.cleanup_crit_edge:                     ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end56.i:                                       ; preds = %if.end50.i
  %promisc_mode.i = getelementptr %struct.qlcnic_esw_func_cfg, ptr %buf, i32 %i.0128.i, i32 5
  %48 = ptrtoint ptr %promisc_mode.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %promisc_mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %49)
  %cmp59.not.i = icmp eq i8 %49, 1
  br i1 %cmp59.not.i, label %if.end56.i.for.inc.i_crit_edge, label %if.end56.i.cleanup_crit_edge

if.end56.i.cleanup_crit_edge:                     ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end56.i.for.inc.i_crit_edge:                   ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

sw.bb64.i:                                        ; preds = %if.end28.i
  %50 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx11.i, align 2
  %52 = add i16 %51, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4093, i16 %52)
  %53 = icmp ult i16 %52, 4093
  br i1 %53, label %if.end75.i, label %sw.bb64.i.cleanup_crit_edge

sw.bb64.i.cleanup_crit_edge:                      ; preds = %sw.bb64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end75.i:                                       ; preds = %sw.bb64.i
  %op_type.i = getelementptr %struct.qlcnic_esw_func_cfg, ptr %buf, i32 %i.0128.i, i32 2
  %54 = ptrtoint ptr %op_type.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %op_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i = icmp eq i8 %55, 0
  br i1 %tobool.not.i, label %if.end75.i.cleanup_crit_edge, label %if.end75.i.for.inc.i_crit_edge

if.end75.i.for.inc.i_crit_edge:                   ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end75.i.cleanup_crit_edge:                     ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb79.i:                                        ; preds = %if.end28.i
  %op_type81.i = getelementptr %struct.qlcnic_esw_func_cfg, ptr %buf, i32 %i.0128.i, i32 2
  %56 = ptrtoint ptr %op_type81.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %op_type81.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool82.not.i = icmp eq i8 %57, 0
  br i1 %tobool82.not.i, label %sw.bb79.i.cleanup_crit_edge, label %sw.bb79.i.for.inc.i_crit_edge

sw.bb79.i.for.inc.i_crit_edge:                    ; preds = %sw.bb79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

sw.bb79.i.cleanup_crit_edge:                      ; preds = %sw.bb79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.i:                                        ; preds = %sw.bb79.i.for.inc.i_crit_edge, %if.end75.i.for.inc.i_crit_edge, %if.end56.i.for.inc.i_crit_edge, %if.end41.i.for.inc.i_crit_edge
  %inc.i171 = add nuw nsw i32 %i.0128.i, 1
  %exitcond.not.i172 = icmp eq i32 %inc.i171, %div168
  br i1 %exitcond.not.i172, label %validate_esw_config.exit, label %for.inc.i.for.body.i170_crit_edge

for.inc.i.for.body.i170_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i170

validate_esw_config.exit:                         ; preds = %for.inc.i
  br i1 %cmp127.i.not, label %validate_esw_config.exit.cleanup_crit_edge, label %for.body.preheader

validate_esw_config.exit.cleanup_crit_edge:       ; preds = %validate_esw_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.preheader:                               ; preds = %validate_esw_config.exit
  %umax = call i32 @llvm.umax.i32(i32 %div168, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0191 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 8
  %op_mode8 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %59, i32 0, i32 30
  %60 = ptrtoint ptr %op_mode8 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %op_mode8, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %cmp9 = icmp eq i16 %61, 0
  br i1 %cmp9, label %if.then11, label %for.body.if.end16_crit_edge

for.body.if.end16_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then11:                                        ; preds = %for.body
  %arrayidx = getelementptr %struct.qlcnic_esw_func_cfg, ptr %buf, i32 %i.0191
  %call12 = tail call i32 @qlcnic_config_switch_port(ptr noundef %1, ptr noundef %arrayidx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then11.if.end16_crit_edge, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then11.if.end16_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.end16:                                         ; preds = %if.then11.if.end16_crit_edge, %for.body.if.end16_crit_edge
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 8
  %pci_func18 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %63, i32 0, i32 6
  %64 = ptrtoint ptr %pci_func18 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %pci_func18, align 1
  %arrayidx20 = getelementptr %struct.qlcnic_esw_func_cfg, ptr %buf, i32 %i.0191
  %pci_func21 = getelementptr %struct.qlcnic_esw_func_cfg, ptr %buf, i32 %i.0191, i32 3
  %66 = ptrtoint ptr %pci_func21 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %pci_func21, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %65, i8 %67)
  %cmp23.not = icmp eq i8 %65, %67
  br i1 %cmp23.not, label %if.end26, label %if.end16.for.inc_crit_edge

if.end16.for.inc_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end26:                                         ; preds = %if.end16
  %op_mode28 = getelementptr %struct.qlcnic_esw_func_cfg, ptr %buf, i32 %i.0191, i32 1
  %68 = ptrtoint ptr %op_mode28 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %op_mode28, align 2
  %call30 = tail call i32 @qlcnic_get_eswitch_port_config(ptr noundef %1, ptr noundef %arrayidx20) #9
  %70 = ptrtoint ptr %op_mode28 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %op_mode28, align 2
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 8
  %pci_func34 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %72, i32 0, i32 6
  %73 = ptrtoint ptr %pci_func34 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %pci_func34, align 1
  %75 = ptrtoint ptr %pci_func21 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %pci_func21, align 2
  %76 = zext i8 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.77)
  switch i8 %69, label %if.end26.for.inc_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb42
    i8 2, label %sw.bb44
  ]

if.end26.for.inc_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb:                                            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @qlcnic_set_eswitch_port_features(ptr noundef %1, ptr noundef %arrayidx20) #9
  tail call void @rtnl_lock() #9
  tail call void @qlcnic_set_netdev_features(ptr noundef %1, ptr noundef %arrayidx20) #9
  tail call void @rtnl_unlock() #9
  br label %for.inc

sw.bb42:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @qlcnic_set_vlan_config(ptr noundef %1, ptr noundef %arrayidx20) #9
  br label %for.inc

sw.bb44:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 0, ptr %arrayidx20, align 2
  tail call void @qlcnic_set_vlan_config(ptr noundef %1, ptr noundef %arrayidx20) #9
  br label %for.inc

for.inc:                                          ; preds = %sw.bb44, %sw.bb42, %sw.bb, %if.end26.for.inc_crit_edge, %if.end16.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0191, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 8
  %op_mode48 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %79, i32 0, i32 30
  %80 = ptrtoint ptr %op_mode48 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %op_mode48, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %cmp50.not = icmp eq i16 %81, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %size)
  %cmp55193 = icmp ugt i32 %size, 15
  %or.cond = and i1 %cmp50.not, %cmp55193
  br i1 %or.cond, label %for.body57.lr.ph, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body57.lr.ph:                                 ; preds = %for.end
  %npars.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 41
  %smax = call i32 @llvm.smax.i32(i32 %div168, i32 1)
  br label %for.body57

for.body57:                                       ; preds = %for.inc86.for.body57_crit_edge, %for.body57.lr.ph
  %i.1194 = phi i32 [ 0, %for.body57.lr.ph ], [ %inc87, %for.inc86.for.body57_crit_edge ]
  %arrayidx58 = getelementptr %struct.qlcnic_esw_func_cfg, ptr %buf, i32 %i.1194
  %pci_func59 = getelementptr %struct.qlcnic_esw_func_cfg, ptr %buf, i32 %i.1194, i32 3
  %82 = ptrtoint ptr %pci_func59 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %pci_func59, align 2
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %1, align 8
  %total_nic_func.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %85, i32 0, i32 36
  %86 = ptrtoint ptr %total_nic_func.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %total_nic_func.i, align 8
  %conv.i173 = zext i16 %87 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %cmp13.not.i174 = icmp eq i16 %87, 0
  br i1 %cmp13.not.i174, label %for.body57.cleanup.sink.split_crit_edge, label %for.body.lr.ph.i175

for.body57.cleanup.sink.split_crit_edge:          ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

for.body.lr.ph.i175:                              ; preds = %for.body57
  %88 = ptrtoint ptr %npars.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %npars.i, align 8
  br label %for.body.i176

for.body.i176:                                    ; preds = %for.inc.i179.for.body.i176_crit_edge, %for.body.lr.ph.i175
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i175 ], [ %inc.i177, %for.inc.i179.for.body.i176_crit_edge ]
  %pci_func2.i = getelementptr %struct.qlcnic_npar_info, ptr %89, i32 %i.014.i, i32 14
  %90 = ptrtoint ptr %pci_func2.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %pci_func2.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %91, i8 %83)
  %cmp5.i = icmp eq i8 %91, %83
  br i1 %cmp5.i, label %if.end64, label %for.inc.i179

for.inc.i179:                                     ; preds = %for.body.i176
  %inc.i177 = add nuw nsw i32 %i.014.i, 1
  %exitcond.not.i178 = icmp eq i32 %inc.i177, %conv.i173
  br i1 %exitcond.not.i178, label %for.inc.i179.cleanup.sink.split_crit_edge, label %for.inc.i179.for.body.i176_crit_edge

for.inc.i179.for.body.i176_crit_edge:             ; preds = %for.inc.i179
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i176

for.inc.i179.cleanup.sink.split_crit_edge:        ; preds = %for.inc.i179
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end64:                                         ; preds = %for.body.i176
  %92 = ptrtoint ptr %npars.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %npars.i, align 8
  %op_mode67 = getelementptr %struct.qlcnic_esw_func_cfg, ptr %buf, i32 %i.1194, i32 1
  %94 = ptrtoint ptr %op_mode67 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %op_mode67, align 2
  %96 = zext i8 %95 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.78)
  switch i8 %95, label %if.end64.for.inc86_crit_edge [
    i8 0, label %sw.bb69
    i8 1, label %sw.bb80
    i8 2, label %sw.bb83
  ]

if.end64.for.inc86_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc86

sw.bb69:                                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  %promisc_mode = getelementptr %struct.qlcnic_esw_func_cfg, ptr %buf, i32 %i.1194, i32 5
  %97 = ptrtoint ptr %promisc_mode to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %promisc_mode, align 2
  %promisc_mode71 = getelementptr %struct.qlcnic_npar_info, ptr %93, i32 %i.014.i, i32 12
  %99 = ptrtoint ptr %promisc_mode71 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %promisc_mode71, align 2
  %mac_override = getelementptr %struct.qlcnic_esw_func_cfg, ptr %buf, i32 %i.1194, i32 7
  %100 = ptrtoint ptr %mac_override to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %mac_override, align 2
  %mac_override73 = getelementptr %struct.qlcnic_npar_info, ptr %93, i32 %i.014.i, i32 10
  %102 = ptrtoint ptr %mac_override73 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %mac_override73, align 2
  %offload_flags = getelementptr %struct.qlcnic_esw_func_cfg, ptr %buf, i32 %i.1194, i32 9
  %103 = ptrtoint ptr %offload_flags to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %offload_flags, align 2
  %offload_flags75 = getelementptr %struct.qlcnic_npar_info, ptr %93, i32 %i.014.i, i32 13
  %105 = ptrtoint ptr %offload_flags75 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %104, ptr %offload_flags75, align 1
  %mac_anti_spoof = getelementptr %struct.qlcnic_esw_func_cfg, ptr %buf, i32 %i.1194, i32 8
  %106 = ptrtoint ptr %mac_anti_spoof to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %mac_anti_spoof, align 1
  %mac_anti_spoof77 = getelementptr %struct.qlcnic_npar_info, ptr %93, i32 %i.014.i, i32 11
  %108 = ptrtoint ptr %mac_anti_spoof77 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %107, ptr %mac_anti_spoof77, align 1
  %discard_tagged = getelementptr %struct.qlcnic_esw_func_cfg, ptr %buf, i32 %i.1194, i32 6
  %109 = ptrtoint ptr %discard_tagged to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %discard_tagged, align 1
  %discard_tagged79 = getelementptr %struct.qlcnic_npar_info, ptr %93, i32 %i.014.i, i32 9
  %111 = ptrtoint ptr %discard_tagged79 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %110, ptr %discard_tagged79, align 1
  br label %for.inc86

sw.bb80:                                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  %112 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %arrayidx58, align 2
  %pvid = getelementptr %struct.qlcnic_npar_info, ptr %93, i32 %i.014.i, i32 1
  %114 = ptrtoint ptr %pvid to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %113, ptr %pvid, align 2
  br label %for.inc86

sw.bb83:                                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  %pvid84 = getelementptr %struct.qlcnic_npar_info, ptr %93, i32 %i.014.i, i32 1
  %115 = ptrtoint ptr %pvid84 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 0, ptr %pvid84, align 2
  br label %for.inc86

for.inc86:                                        ; preds = %sw.bb83, %sw.bb80, %sw.bb69, %if.end64.for.inc86_crit_edge
  %inc87 = add nuw nsw i32 %i.1194, 1
  %exitcond201.not = icmp eq i32 %inc87, %smax
  br i1 %exitcond201.not, label %for.inc86.cleanup_crit_edge, label %for.inc86.for.body57_crit_edge

for.inc86.for.body57_crit_edge:                   ; preds = %for.inc86
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body57

for.inc86.cleanup_crit_edge:                      ; preds = %for.inc86
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %for.inc.i179.cleanup.sink.split_crit_edge, %for.body57.cleanup.sink.split_crit_edge, %for.inc.i.i.cleanup.sink.split_crit_edge, %if.then22.i.cleanup.sink.split_crit_edge
  %116 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pdev.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %117, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc86.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %validate_esw_config.exit.cleanup_crit_edge, %sw.bb79.i.cleanup_crit_edge, %if.end75.i.cleanup_crit_edge, %sw.bb64.i.cleanup_crit_edge, %if.end56.i.cleanup_crit_edge, %if.end50.i.cleanup_crit_edge, %if.then44.i.cleanup_crit_edge, %if.end28.i.cleanup_crit_edge, %for.body.i170.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %size, %for.end.cleanup_crit_edge ], [ %size, %validate_esw_config.exit.cleanup_crit_edge ], [ %size, %if.end.i.cleanup_crit_edge ], [ -22, %cleanup.sink.split ], [ %size, %for.inc86.cleanup_crit_edge ], [ -22, %if.then11.cleanup_crit_edge ], [ -22, %for.body.i170.cleanup_crit_edge ], [ -22, %if.then44.i.cleanup_crit_edge ], [ -22, %if.end50.i.cleanup_crit_edge ], [ -22, %if.end56.i.cleanup_crit_edge ], [ -22, %sw.bb64.i.cleanup_crit_edge ], [ -22, %if.end75.i.cleanup_crit_edge ], [ -22, %sw.bb79.i.cleanup_crit_edge ], [ -22, %if.end28.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_get_eswitch_port_config(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_config_switch_port(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_set_eswitch_port_features(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_set_netdev_features(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_set_vlan_config(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_sysfs_read_npar_config(ptr nocapture noundef readnone %file, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef %buf, i64 noundef %offset, i32 noundef %size) #1 align 64 {
entry:
  %nic_info = alloca %struct.qlcnic_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %nic_info) #9
  %2 = call ptr @memset(ptr %nic_info, i32 0, i32 72)
  %3 = call ptr @memset(ptr %buf, i32 0, i32 %size)
  %div93 = lshr i32 %size, 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %total_nic_func103 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %5, i32 0, i32 36
  %6 = ptrtoint ptr %total_nic_func103 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %total_nic_func103, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp105.not = icmp eq i16 %7, 0
  br i1 %cmp105.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %conv104 = zext i16 %7 to i32
  %npars = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 41
  %op_mode = getelementptr inbounds %struct.qlcnic_info, ptr %nic_info, i32 0, i32 1
  %phys_port = getelementptr inbounds %struct.qlcnic_info, ptr %nic_info, i32 0, i32 2
  %capabilities = getelementptr inbounds %struct.qlcnic_info, ptr %nic_info, i32 0, i32 4
  %min_tx_bw = getelementptr inbounds %struct.qlcnic_info, ptr %nic_info, i32 0, i32 9
  %max_tx_bw = getelementptr inbounds %struct.qlcnic_info, ptr %nic_info, i32 0, i32 10
  %max_tx_ques = getelementptr inbounds %struct.qlcnic_info, ptr %nic_info, i32 0, i32 7
  %max_rx_ques = getelementptr inbounds %struct.qlcnic_info, ptr %nic_info, i32 0, i32 8
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %conv108 = phi i32 [ %conv104, %for.body.lr.ph ], [ %conv, %for.inc.for.body_crit_edge ]
  %8 = phi i16 [ 1, %for.body.lr.ph ], [ %54, %for.inc.for.body_crit_edge ]
  %i.0106 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %9 = ptrtoint ptr %npars to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %npars, align 8
  %pci_func3 = getelementptr %struct.qlcnic_npar_info, ptr %10, i32 %i.0106, i32 14
  %11 = ptrtoint ptr %pci_func3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pci_func3, align 2
  %conv4 = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div93, i32 %conv4)
  %cmp5.not = icmp ugt i32 %div93, %conv4
  br i1 %cmp5.not, label %if.end14, label %do.body

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qlcnic_sysfs_read_npar_config.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qlcnic_sysfs_read_npar_config, %if.then10)) #9
          to label %for.inc [label %if.then10], !srcloc !174

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %total_nic_func12 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %14, i32 0, i32 36
  %15 = ptrtoint ptr %total_nic_func12 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %total_nic_func12, align 8
  %conv13 = zext i16 %16 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qlcnic_sysfs_read_npar_config.__UNIQUE_ID_ddebug502, ptr noundef %kobj, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.61, i32 noundef %conv13, i32 noundef %div93) #9
  br label %for.inc

if.end14:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.qlcnic_npar_info, ptr %10, i32 %i.0106
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 2, !range !175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool17.not = icmp eq i8 %18, 0
  br i1 %tobool17.not, label %if.end14.for.inc_crit_edge, label %if.end19

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp13.not.i = icmp eq i16 %8, 0
  br i1 %cmp13.not.i, label %if.end19.qlcnic_is_valid_nic_func.exit.thread_crit_edge, label %if.end19.for.body.i_crit_edge

if.end19.for.body.i_crit_edge:                    ; preds = %if.end19
  br label %for.body.i

if.end19.qlcnic_is_valid_nic_func.exit.thread_crit_edge: ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %qlcnic_is_valid_nic_func.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end19.for.body.i_crit_edge
  %i.014.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end19.for.body.i_crit_edge ]
  %pci_func2.i = getelementptr %struct.qlcnic_npar_info, ptr %10, i32 %i.014.i, i32 14
  %19 = ptrtoint ptr %pci_func2.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pci_func2.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %12)
  %cmp5.i = icmp eq i8 %20, %12
  br i1 %cmp5.i, label %if.end27, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv108
  br i1 %exitcond.not.i, label %for.inc.i.qlcnic_is_valid_nic_func.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.qlcnic_is_valid_nic_func.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qlcnic_is_valid_nic_func.exit.thread

qlcnic_is_valid_nic_func.exit.thread:             ; preds = %for.inc.i.qlcnic_is_valid_nic_func.exit.thread_crit_edge, %if.end19.qlcnic_is_valid_nic_func.exit.thread_crit_edge
  %21 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #12
  br label %for.inc

if.end27:                                         ; preds = %for.body.i
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %24, i32 0, i32 46
  %25 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw_ops.i, align 4
  %get_nic_info.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %26, i32 0, i32 20
  %27 = ptrtoint ptr %get_nic_info.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %get_nic_info.i, align 4
  %call.i = call i32 %28(ptr noundef %1, ptr noundef nonnull %nic_info, i8 noundef zeroext %12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool29.not = icmp eq i32 %call.i, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end31:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx32 = getelementptr %struct.qlcnic_npar_func_cfg, ptr %buf, i32 %conv4
  %pci_func33 = getelementptr %struct.qlcnic_npar_func_cfg, ptr %buf, i32 %conv4, i32 6
  %29 = ptrtoint ptr %pci_func33 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %12, ptr %pci_func33, align 2
  %30 = ptrtoint ptr %op_mode to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %op_mode, align 2
  %conv34 = trunc i16 %31 to i8
  %op_mode37 = getelementptr %struct.qlcnic_npar_func_cfg, ptr %buf, i32 %conv4, i32 7
  %32 = ptrtoint ptr %op_mode37 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv34, ptr %op_mode37, align 1
  %33 = ptrtoint ptr %phys_port to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %phys_port, align 4
  %port_num = getelementptr %struct.qlcnic_npar_func_cfg, ptr %buf, i32 %conv4, i32 1
  %35 = ptrtoint ptr %port_num to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %port_num, align 4
  %36 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %capabilities, align 4
  %38 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx32, align 4
  %39 = ptrtoint ptr %min_tx_bw to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %min_tx_bw, align 4
  %min_bw = getelementptr %struct.qlcnic_npar_func_cfg, ptr %buf, i32 %conv4, i32 2
  %41 = ptrtoint ptr %min_bw to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %min_bw, align 2
  %42 = ptrtoint ptr %max_tx_bw to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %max_tx_bw, align 2
  %max_bw = getelementptr %struct.qlcnic_npar_func_cfg, ptr %buf, i32 %conv4, i32 3
  %44 = ptrtoint ptr %max_bw to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %max_bw, align 4
  %45 = ptrtoint ptr %max_tx_ques to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %max_tx_ques, align 4
  %max_tx_queues = getelementptr %struct.qlcnic_npar_func_cfg, ptr %buf, i32 %conv4, i32 4
  %47 = ptrtoint ptr %max_tx_queues to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %max_tx_queues, align 2
  %48 = ptrtoint ptr %max_rx_ques to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %max_rx_ques, align 2
  %max_rx_queues = getelementptr %struct.qlcnic_npar_func_cfg, ptr %buf, i32 %conv4, i32 5
  %50 = ptrtoint ptr %max_rx_queues to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %max_rx_queues, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end31, %qlcnic_is_valid_nic_func.exit.thread, %if.end14.for.inc_crit_edge, %if.then10, %do.body
  %inc = add nuw nsw i32 %i.0106, 1
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 8
  %total_nic_func = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %52, i32 0, i32 36
  %53 = ptrtoint ptr %total_nic_func to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %total_nic_func, align 8
  %conv = zext i16 %54 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %div5094 = lshr i32 %size, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp4.i.not = icmp ult i32 %size, 4
  br i1 %cmp4.i.not, label %for.end.cleanup_crit_edge, label %for.end.for.body.i98_crit_edge

for.end.for.body.i98_crit_edge:                   ; preds = %for.end
  br label %for.body.i98

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i98:                                     ; preds = %for.body.i98.for.body.i98_crit_edge, %for.end.for.body.i98_crit_edge
  %i.06.i = phi i32 [ %inc.i96, %for.body.i98.for.body.i98_crit_edge ], [ 0, %for.end.for.body.i98_crit_edge ]
  %tmp.05.i = phi ptr [ %incdec.ptr.i, %for.body.i98.for.body.i98_crit_edge ], [ %buf, %for.end.for.body.i98_crit_edge ]
  %55 = ptrtoint ptr %tmp.05.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tmp.05.i, align 4
  %57 = call i32 @llvm.bswap.i32(i32 %56) #9
  %58 = ptrtoint ptr %tmp.05.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %tmp.05.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %tmp.05.i, i32 1
  %inc.i96 = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i97 = icmp eq i32 %inc.i96, %div5094
  br i1 %exitcond.not.i97, label %for.body.i98.cleanup_crit_edge, label %for.body.i98.for.body.i98_crit_edge

for.body.i98.for.body.i98_crit_edge:              ; preds = %for.body.i98
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i98

for.body.i98.cleanup_crit_edge:                   ; preds = %for.body.i98
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body.i98.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end27.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %for.end.cleanup_crit_edge ], [ %size, %for.body.i98.cleanup_crit_edge ], [ %call.i, %if.end27.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %nic_info) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_sysfs_write_npar_config(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef %buf, i64 noundef %offset, i32 noundef %size) #1 align 64 {
entry:
  %nic_info = alloca %struct.qlcnic_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %nic_info) #9
  %div67 = lshr i32 %size, 4
  %rem2 = and i32 %size, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem2)
  %tobool.not = icmp eq i32 %rem2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %div368 = lshr i32 %size, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp4.i.not = icmp ult i32 %size, 4
  br i1 %cmp4.i.not, label %if.end.cleanup_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %tmp.05.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %buf, %if.end.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %tmp.05.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tmp.05.i, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #9
  %5 = ptrtoint ptr %tmp.05.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tmp.05.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %tmp.05.i, i32 1
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div368
  br i1 %exitcond.not.i, label %qlcnic_swap32_buffer.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

qlcnic_swap32_buffer.exit:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %size)
  %cmp27.i.not = icmp ult i32 %size, 16
  br i1 %cmp27.i.not, label %qlcnic_swap32_buffer.exit.cleanup_crit_edge, label %for.body.lr.ph.i

qlcnic_swap32_buffer.exit.cleanup_crit_edge:      ; preds = %qlcnic_swap32_buffer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %qlcnic_swap32_buffer.exit
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %total_nic_func.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %7, i32 0, i32 36
  %8 = ptrtoint ptr %total_nic_func.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %total_nic_func.i.i, align 8
  %conv.i.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp13.not.i.i = icmp eq i16 %9, 0
  br i1 %cmp13.not.i.i, label %for.body.lr.ph.i.qlcnic_is_valid_nic_func.exit.thread.i_crit_edge, label %for.body.lr.ph.split.i

for.body.lr.ph.i.qlcnic_is_valid_nic_func.exit.thread.i_crit_edge: ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qlcnic_is_valid_nic_func.exit.thread.i

for.body.lr.ph.split.i:                           ; preds = %for.body.lr.ph.i
  %npars.i.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 41
  %10 = ptrtoint ptr %npars.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %npars.i.i, align 8
  br label %for.body.i70

for.cond.i:                                       ; preds = %lor.lhs.false.i
  %inc.i69 = add i8 %i.028.i, 1
  %conv.i = zext i8 %inc.i69 to i32
  %cmp.i = icmp ugt i32 %div67, %conv.i
  br i1 %cmp.i, label %for.cond.i.for.body.i70_crit_edge, label %validate_npar_config.exit

for.cond.i.for.body.i70_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i70

for.body.i70:                                     ; preds = %for.cond.i.for.body.i70_crit_edge, %for.body.lr.ph.split.i
  %conv29.i = phi i32 [ 0, %for.body.lr.ph.split.i ], [ %conv.i, %for.cond.i.for.body.i70_crit_edge ]
  %i.028.i = phi i8 [ 0, %for.body.lr.ph.split.i ], [ %inc.i69, %for.cond.i.for.body.i70_crit_edge ]
  %pci_func2.i = getelementptr %struct.qlcnic_npar_func_cfg, ptr %buf, i32 %conv29.i, i32 6
  %12 = ptrtoint ptr %pci_func2.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pci_func2.i, align 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.i70
  %i.014.i.i = phi i32 [ 0, %for.body.i70 ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %pci_func2.i.i = getelementptr %struct.qlcnic_npar_info, ptr %11, i32 %i.014.i.i, i32 14
  %14 = ptrtoint ptr %pci_func2.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pci_func2.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %13)
  %cmp5.i.i = icmp eq i8 %15, %13
  br i1 %cmp5.i.i, label %if.end.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.014.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.qlcnic_is_valid_nic_func.exit.thread.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.qlcnic_is_valid_nic_func.exit.thread.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qlcnic_is_valid_nic_func.exit.thread.i

qlcnic_is_valid_nic_func.exit.thread.i:           ; preds = %for.inc.i.i.qlcnic_is_valid_nic_func.exit.thread.i_crit_edge, %for.body.lr.ph.i.qlcnic_is_valid_nic_func.exit.thread.i_crit_edge
  %pdev.i.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end.i:                                         ; preds = %for.body.i.i
  %min_bw.i = getelementptr %struct.qlcnic_npar_func_cfg, ptr %buf, i32 %conv29.i, i32 2
  %18 = ptrtoint ptr %min_bw.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %min_bw.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 101, i16 %19)
  %cmp8.i = icmp ult i16 %19, 101
  br i1 %cmp8.i, label %lor.lhs.false.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end.i
  %max_bw.i = getelementptr %struct.qlcnic_npar_func_cfg, ptr %buf, i32 %conv29.i, i32 3
  %20 = ptrtoint ptr %max_bw.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %max_bw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 101, i16 %21)
  %cmp13.i = icmp ult i16 %21, 101
  br i1 %cmp13.i, label %for.cond.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

validate_npar_config.exit:                        ; preds = %for.cond.i
  br i1 %cmp27.i.not, label %validate_npar_config.exit.cleanup_crit_edge, label %for.body.lr.ph

validate_npar_config.exit.cleanup_crit_edge:      ; preds = %validate_npar_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %validate_npar_config.exit
  %min_tx_bw = getelementptr inbounds %struct.qlcnic_info, ptr %nic_info, i32 0, i32 9
  %max_tx_bw = getelementptr inbounds %struct.qlcnic_info, ptr %nic_info, i32 0, i32 10
  %npars.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 41
  %smax = call i32 @llvm.smax.i32(i32 %div67, i32 1)
  br label %for.body

for.body:                                         ; preds = %if.end24.for.body_crit_edge, %for.body.lr.ph
  %i.088 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end24.for.body_crit_edge ]
  %pci_func8 = getelementptr %struct.qlcnic_npar_func_cfg, ptr %buf, i32 %i.088, i32 6
  %22 = ptrtoint ptr %pci_func8 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pci_func8, align 2
  %24 = call ptr @memset(ptr %nic_info, i32 0, i32 72)
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %26, i32 0, i32 46
  %27 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw_ops.i, align 4
  %get_nic_info.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %28, i32 0, i32 20
  %29 = ptrtoint ptr %get_nic_info.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %get_nic_info.i, align 4
  %call.i = call i32 %30(ptr noundef %1, ptr noundef nonnull %nic_info, i8 noundef zeroext %23) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %if.end12, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %for.body
  %conv = zext i8 %23 to i16
  %31 = ptrtoint ptr %nic_info to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv, ptr %nic_info, align 4
  %min_bw = getelementptr %struct.qlcnic_npar_func_cfg, ptr %buf, i32 %i.088, i32 2
  %32 = ptrtoint ptr %min_bw to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %min_bw, align 2
  %34 = ptrtoint ptr %min_tx_bw to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %min_tx_bw, align 4
  %max_bw = getelementptr %struct.qlcnic_npar_func_cfg, ptr %buf, i32 %i.088, i32 3
  %35 = ptrtoint ptr %max_bw to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %max_bw, align 4
  %37 = ptrtoint ptr %max_tx_bw to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %max_tx_bw, align 2
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 8
  %hw_ops.i71 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %39, i32 0, i32 46
  %40 = ptrtoint ptr %hw_ops.i71 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw_ops.i71, align 4
  %set_nic_info.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %41, i32 0, i32 22
  %42 = ptrtoint ptr %set_nic_info.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %set_nic_info.i, align 4
  %call.i72 = call i32 %43(ptr noundef %1, ptr noundef nonnull %nic_info) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %tobool17.not = icmp eq i32 %call.i72, 0
  br i1 %tobool17.not, label %if.end19, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 8
  %total_nic_func.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %45, i32 0, i32 36
  %46 = ptrtoint ptr %total_nic_func.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %total_nic_func.i, align 8
  %conv.i73 = zext i16 %47 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %cmp13.not.i = icmp eq i16 %47, 0
  br i1 %cmp13.not.i, label %if.end19.qlcnic_is_valid_nic_func.exit.thread_crit_edge, label %for.body.lr.ph.i74

if.end19.qlcnic_is_valid_nic_func.exit.thread_crit_edge: ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %qlcnic_is_valid_nic_func.exit.thread

for.body.lr.ph.i74:                               ; preds = %if.end19
  %48 = ptrtoint ptr %npars.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %npars.i, align 8
  br label %for.body.i76

for.body.i76:                                     ; preds = %for.inc.i.for.body.i76_crit_edge, %for.body.lr.ph.i74
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i74 ], [ %inc.i77, %for.inc.i.for.body.i76_crit_edge ]
  %pci_func2.i75 = getelementptr %struct.qlcnic_npar_info, ptr %49, i32 %i.014.i, i32 14
  %50 = ptrtoint ptr %pci_func2.i75 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %pci_func2.i75, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %51, i8 %23)
  %cmp5.i = icmp eq i8 %51, %23
  br i1 %cmp5.i, label %if.end24, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i76
  %inc.i77 = add nuw nsw i32 %i.014.i, 1
  %exitcond.not.i78 = icmp eq i32 %inc.i77, %conv.i73
  br i1 %exitcond.not.i78, label %for.inc.i.qlcnic_is_valid_nic_func.exit.thread_crit_edge, label %for.inc.i.for.body.i76_crit_edge

for.inc.i.for.body.i76_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i76

for.inc.i.qlcnic_is_valid_nic_func.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qlcnic_is_valid_nic_func.exit.thread

qlcnic_is_valid_nic_func.exit.thread:             ; preds = %for.inc.i.qlcnic_is_valid_nic_func.exit.thread_crit_edge, %if.end19.qlcnic_is_valid_nic_func.exit.thread_crit_edge
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 4
  %52 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end24:                                         ; preds = %for.body.i76
  %54 = ptrtoint ptr %min_tx_bw to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %min_tx_bw, align 4
  %56 = ptrtoint ptr %npars.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %npars.i, align 8
  %min_bw27 = getelementptr %struct.qlcnic_npar_info, ptr %57, i32 %i.014.i, i32 2
  %58 = ptrtoint ptr %min_bw27 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %55, ptr %min_bw27, align 2
  %59 = ptrtoint ptr %max_tx_bw to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %max_tx_bw, align 2
  %61 = load ptr, ptr %npars.i, align 8
  %max_bw31 = getelementptr %struct.qlcnic_npar_info, ptr %61, i32 %i.014.i, i32 3
  %62 = ptrtoint ptr %max_bw31 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %60, ptr %max_bw31, align 2
  %inc = add nuw nsw i32 %i.088, 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %if.end24.cleanup_crit_edge, label %if.end24.for.body_crit_edge

if.end24.for.body_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end24.cleanup_crit_edge, %qlcnic_is_valid_nic_func.exit.thread, %if.end12.cleanup_crit_edge, %for.body.cleanup_crit_edge, %validate_npar_config.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %qlcnic_is_valid_nic_func.exit.thread.i, %qlcnic_swap32_buffer.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %qlcnic_is_valid_nic_func.exit.thread ], [ -22, %qlcnic_is_valid_nic_func.exit.thread.i ], [ %size, %validate_npar_config.exit.cleanup_crit_edge ], [ %size, %if.end.cleanup_crit_edge ], [ %size, %qlcnic_swap32_buffer.exit.cleanup_crit_edge ], [ %call.i, %for.body.cleanup_crit_edge ], [ %call.i72, %if.end12.cleanup_crit_edge ], [ %size, %if.end24.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %nic_info) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_sysfs_read_pm_config(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef %buf, i64 noundef %offset, i32 noundef returned %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = call ptr @memset(ptr %buf, i32 0, i32 %size)
  %div51 = lshr i32 %size, 3
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %total_nic_func54 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %4, i32 0, i32 36
  %5 = ptrtoint ptr %total_nic_func54 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %total_nic_func54, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp56.not = icmp eq i16 %6, 0
  br i1 %cmp56.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %npars = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 41
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.057 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %7 = ptrtoint ptr %npars to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %npars, align 8
  %pci_func3 = getelementptr %struct.qlcnic_npar_info, ptr %8, i32 %i.057, i32 14
  %9 = ptrtoint ptr %pci_func3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pci_func3, align 2
  %conv4 = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div51, i32 %conv4)
  %cmp5.not = icmp ugt i32 %div51, %conv4
  br i1 %cmp5.not, label %if.end14, label %do.body

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qlcnic_sysfs_read_pm_config.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qlcnic_sysfs_read_pm_config, %if.then10)) #9
          to label %for.inc [label %if.then10], !srcloc !174

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %total_nic_func12 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %12, i32 0, i32 36
  %13 = ptrtoint ptr %total_nic_func12 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %total_nic_func12, align 8
  %conv13 = zext i16 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qlcnic_sysfs_read_pm_config.__UNIQUE_ID_ddebug500, ptr noundef %kobj, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.63, i32 noundef %conv13, i32 noundef %div51) #9
  br label %for.inc

if.end14:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.qlcnic_npar_info, ptr %8, i32 %i.057
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 2, !range !175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool17.not = icmp eq i8 %16, 0
  br i1 %tobool17.not, label %if.end14.for.inc_crit_edge, label %if.end19

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %enable_pm = getelementptr %struct.qlcnic_npar_info, ptr %8, i32 %i.057, i32 7
  %17 = ptrtoint ptr %enable_pm to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %enable_pm, align 1
  %arrayidx22 = getelementptr %struct.qlcnic_pm_func_cfg, ptr %buf, i32 %conv4
  %action = getelementptr %struct.qlcnic_pm_func_cfg, ptr %buf, i32 %conv4, i32 1
  %19 = ptrtoint ptr %action to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %action, align 1
  %dest_npar = getelementptr %struct.qlcnic_pm_func_cfg, ptr %buf, i32 %conv4, i32 2
  %20 = ptrtoint ptr %dest_npar to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %dest_npar, align 1
  %conv25 = trunc i32 %i.057 to i8
  %21 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv25, ptr %arrayidx22, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end19, %if.end14.for.inc_crit_edge, %if.then10, %do.body
  %inc = add nuw nsw i32 %i.057, 1
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %total_nic_func = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %23, i32 0, i32 36
  %24 = ptrtoint ptr %total_nic_func to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %total_nic_func, align 8
  %conv = zext i16 %25 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %div2952 = lshr i32 %size, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp4.i.not = icmp ult i32 %size, 4
  br i1 %cmp4.i.not, label %for.end.qlcnic_swap32_buffer.exit_crit_edge, label %for.end.for.body.i_crit_edge

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.end.qlcnic_swap32_buffer.exit_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %qlcnic_swap32_buffer.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.end.for.body.i_crit_edge ]
  %tmp.05.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %buf, %for.end.for.body.i_crit_edge ]
  %26 = ptrtoint ptr %tmp.05.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tmp.05.i, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #9
  %29 = ptrtoint ptr %tmp.05.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %tmp.05.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %tmp.05.i, i32 1
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div2952
  br i1 %exitcond.not.i, label %for.body.i.qlcnic_swap32_buffer.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.qlcnic_swap32_buffer.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qlcnic_swap32_buffer.exit

qlcnic_swap32_buffer.exit:                        ; preds = %for.body.i.qlcnic_swap32_buffer.exit_crit_edge, %for.end.qlcnic_swap32_buffer.exit_crit_edge
  ret i32 %size
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_sysfs_write_pm_config(ptr nocapture noundef readnone %filp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef %buf, i64 noundef %offset, i32 noundef %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %div106 = lshr i32 %size, 3
  %rem2 = and i32 %size, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem2)
  %tobool.not = icmp eq i32 %rem2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %div3107 = lshr i32 %size, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp4.i.not = icmp ult i32 %size, 4
  br i1 %cmp4.i.not, label %if.end.cleanup_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %tmp.05.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %buf, %if.end.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %tmp.05.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tmp.05.i, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #9
  %5 = ptrtoint ptr %tmp.05.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tmp.05.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %tmp.05.i, i32 1
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div3107
  br i1 %exitcond.not.i, label %qlcnic_swap32_buffer.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

qlcnic_swap32_buffer.exit:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size)
  %cmp56.i.not = icmp ult i32 %size, 8
  br i1 %cmp56.i.not, label %qlcnic_swap32_buffer.exit.cleanup_crit_edge, label %for.body.lr.ph.i

qlcnic_swap32_buffer.exit.cleanup_crit_edge:      ; preds = %qlcnic_swap32_buffer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %qlcnic_swap32_buffer.exit
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %total_nic_func.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %7, i32 0, i32 36
  %8 = ptrtoint ptr %total_nic_func.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %total_nic_func.i.i, align 8
  %conv.i.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp13.not.i.i = icmp eq i16 %9, 0
  br i1 %cmp13.not.i.i, label %for.body.lr.ph.i.cleanup.sink.split_crit_edge, label %for.body.lr.ph.split.i

for.body.lr.ph.i.cleanup.sink.split_crit_edge:    ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

for.body.lr.ph.split.i:                           ; preds = %for.body.lr.ph.i
  %npars.i34.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 41
  %10 = ptrtoint ptr %npars.i34.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %npars.i34.i, align 8
  br label %for.body.i110

for.cond.i:                                       ; preds = %if.end6.i
  %inc.i108 = add nuw nsw i32 %i.057.i, 1
  %exitcond.not.i109 = icmp eq i32 %inc.i108, %div106
  br i1 %exitcond.not.i109, label %validate_pm_config.exit, label %for.cond.i.for.body.i110_crit_edge

for.cond.i.for.body.i110_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i110

for.body.i110:                                    ; preds = %for.cond.i.for.body.i110_crit_edge, %for.body.lr.ph.split.i
  %i.057.i = phi i32 [ 0, %for.body.lr.ph.split.i ], [ %inc.i108, %for.cond.i.for.body.i110_crit_edge ]
  %arrayidx.i = getelementptr %struct.qlcnic_pm_func_cfg, ptr %buf, i32 %i.057.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %dest_npar.i = getelementptr %struct.qlcnic_pm_func_cfg, ptr %buf, i32 %i.057.i, i32 2
  %14 = ptrtoint ptr %dest_npar.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dest_npar.i, align 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.i110
  %i.014.i.i = phi i32 [ 0, %for.body.i110 ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %pci_func2.i.i = getelementptr %struct.qlcnic_npar_info, ptr %11, i32 %i.014.i.i, i32 14
  %16 = ptrtoint ptr %pci_func2.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pci_func2.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %13)
  %cmp5.i.i = icmp eq i8 %17, %13
  br i1 %cmp5.i.i, label %for.body.i.i.for.body.i39.i_crit_edge, label %for.inc.i.i

for.body.i.i.for.body.i39.i_crit_edge:            ; preds = %for.body.i.i
  br label %for.body.i39.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.014.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.cleanup.sink.split_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.cleanup.sink.split_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

for.body.i39.i:                                   ; preds = %for.inc.i42.i.for.body.i39.i_crit_edge, %for.body.i.i.for.body.i39.i_crit_edge
  %i.014.i36.i = phi i32 [ %inc.i40.i, %for.inc.i42.i.for.body.i39.i_crit_edge ], [ 0, %for.body.i.i.for.body.i39.i_crit_edge ]
  %pci_func2.i37.i = getelementptr %struct.qlcnic_npar_info, ptr %11, i32 %i.014.i36.i, i32 14
  %18 = ptrtoint ptr %pci_func2.i37.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pci_func2.i37.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %15)
  %cmp5.i38.i = icmp eq i8 %19, %15
  br i1 %cmp5.i38.i, label %if.end6.i, label %for.inc.i42.i

for.inc.i42.i:                                    ; preds = %for.body.i39.i
  %inc.i40.i = add nuw nsw i32 %i.014.i36.i, 1
  %exitcond.not.i41.i = icmp eq i32 %inc.i40.i, %conv.i.i
  br i1 %exitcond.not.i41.i, label %for.inc.i42.i.cleanup.sink.split_crit_edge, label %for.inc.i42.i.for.body.i39.i_crit_edge

for.inc.i42.i.for.body.i39.i_crit_edge:           ; preds = %for.inc.i42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i39.i

for.inc.i42.i.cleanup.sink.split_crit_edge:       ; preds = %for.inc.i42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end6.i:                                        ; preds = %for.body.i39.i
  %phy_port.i = getelementptr %struct.qlcnic_npar_info, ptr %11, i32 %i.014.i.i, i32 4
  %20 = ptrtoint ptr %phy_port.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %phy_port.i, align 2
  %phy_port10.i = getelementptr %struct.qlcnic_npar_info, ptr %11, i32 %i.014.i36.i, i32 4
  %22 = ptrtoint ptr %phy_port10.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %phy_port10.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %23)
  %cmp12.not.i = icmp eq i8 %21, %23
  br i1 %cmp12.not.i, label %for.cond.i, label %if.end6.i.cleanup_crit_edge

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

validate_pm_config.exit:                          ; preds = %for.cond.i
  br i1 %cmp56.i.not, label %validate_pm_config.exit.cleanup_crit_edge, label %for.body.lr.ph

validate_pm_config.exit.cleanup_crit_edge:        ; preds = %validate_pm_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %validate_pm_config.exit
  %npars.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 41
  %smax = call i32 @llvm.smax.i32(i32 %div106, i32 1)
  br label %for.body

for.cond:                                         ; preds = %if.end18
  %inc = add nuw nsw i32 %i.0149, 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %for.body31.lr.ph, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body31.lr.ph:                                 ; preds = %for.cond
  %npars.i119 = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 41
  %smax162 = call i32 @llvm.smax.i32(i32 %div106, i32 1)
  br label %for.body31

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0149 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.qlcnic_pm_func_cfg, ptr %buf, i32 %i.0149
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx, align 1
  %action10 = getelementptr %struct.qlcnic_pm_func_cfg, ptr %buf, i32 %i.0149, i32 1
  %26 = ptrtoint ptr %action10 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %action10, align 1
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  %total_nic_func.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %29, i32 0, i32 36
  %30 = ptrtoint ptr %total_nic_func.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %total_nic_func.i, align 8
  %conv.i = zext i16 %31 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp13.not.i = icmp eq i16 %31, 0
  br i1 %cmp13.not.i, label %for.body.cleanup.sink.split_crit_edge, label %for.body.lr.ph.i111

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

for.body.lr.ph.i111:                              ; preds = %for.body
  %32 = ptrtoint ptr %npars.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %npars.i, align 8
  br label %for.body.i112

for.body.i112:                                    ; preds = %for.inc.i.for.body.i112_crit_edge, %for.body.lr.ph.i111
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i111 ], [ %inc.i113, %for.inc.i.for.body.i112_crit_edge ]
  %pci_func2.i = getelementptr %struct.qlcnic_npar_info, ptr %33, i32 %i.014.i, i32 14
  %34 = ptrtoint ptr %pci_func2.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %pci_func2.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %25)
  %cmp5.i = icmp eq i8 %35, %25
  br i1 %cmp5.i, label %if.end18, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i112
  %inc.i113 = add nuw nsw i32 %i.014.i, 1
  %exitcond.not.i114 = icmp eq i32 %inc.i113, %conv.i
  br i1 %exitcond.not.i114, label %for.inc.i.cleanup.sink.split_crit_edge, label %for.inc.i.for.body.i112_crit_edge

for.inc.i.for.body.i112_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i112

for.inc.i.cleanup.sink.split_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end18:                                         ; preds = %for.body.i112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool11 = icmp ne i8 %27, 0
  %36 = ptrtoint ptr %npars.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %npars.i, align 8
  %phy_port = getelementptr %struct.qlcnic_npar_info, ptr %37, i32 %i.014.i, i32 4
  %38 = ptrtoint ptr %phy_port to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %phy_port, align 2
  %conv22 = zext i1 %tobool11 to i8
  %call24 = tail call i32 @qlcnic_config_port_mirroring(ptr noundef %1, i8 noundef zeroext %39, i8 noundef zeroext %conv22, i8 noundef zeroext %25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %for.cond, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body31:                                       ; preds = %if.end40.for.body31_crit_edge, %for.body31.lr.ph
  %i.1151 = phi i32 [ 0, %for.body31.lr.ph ], [ %inc59, %if.end40.for.body31_crit_edge ]
  %arrayidx32 = getelementptr %struct.qlcnic_pm_func_cfg, ptr %buf, i32 %i.1151
  %40 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx32, align 1
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 8
  %total_nic_func.i116 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %43, i32 0, i32 36
  %44 = ptrtoint ptr %total_nic_func.i116 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %total_nic_func.i116, align 8
  %conv.i117 = zext i16 %45 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %cmp13.not.i118 = icmp eq i16 %45, 0
  br i1 %cmp13.not.i118, label %for.body31.cleanup.sink.split_crit_edge, label %for.body.lr.ph.i120

for.body31.cleanup.sink.split_crit_edge:          ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

for.body.lr.ph.i120:                              ; preds = %for.body31
  %46 = ptrtoint ptr %npars.i119 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %npars.i119, align 8
  br label %for.body.i124

for.body.i124:                                    ; preds = %for.inc.i127.for.body.i124_crit_edge, %for.body.lr.ph.i120
  %i.014.i121 = phi i32 [ 0, %for.body.lr.ph.i120 ], [ %inc.i125, %for.inc.i127.for.body.i124_crit_edge ]
  %pci_func2.i122 = getelementptr %struct.qlcnic_npar_info, ptr %47, i32 %i.014.i121, i32 14
  %48 = ptrtoint ptr %pci_func2.i122 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %pci_func2.i122, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %41)
  %cmp5.i123 = icmp eq i8 %49, %41
  br i1 %cmp5.i123, label %if.end40, label %for.inc.i127

for.inc.i127:                                     ; preds = %for.body.i124
  %inc.i125 = add nuw nsw i32 %i.014.i121, 1
  %exitcond.not.i126 = icmp eq i32 %inc.i125, %conv.i117
  br i1 %exitcond.not.i126, label %for.inc.i127.cleanup.sink.split_crit_edge, label %for.inc.i127.for.body.i124_crit_edge

for.inc.i127.for.body.i124_crit_edge:             ; preds = %for.inc.i127
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i124

for.inc.i127.cleanup.sink.split_crit_edge:        ; preds = %for.inc.i127
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end40:                                         ; preds = %for.body.i124
  %50 = ptrtoint ptr %npars.i119 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %npars.i119, align 8
  %phy_port43 = getelementptr %struct.qlcnic_npar_info, ptr %51, i32 %i.014.i121, i32 4
  %52 = ptrtoint ptr %phy_port43 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %phy_port43, align 2
  %action46 = getelementptr %struct.qlcnic_pm_func_cfg, ptr %buf, i32 %i.1151, i32 1
  %54 = ptrtoint ptr %action46 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %action46, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool47 = icmp ne i8 %55, 0
  %conv52 = zext i1 %tobool47 to i8
  %enable_pm = getelementptr %struct.qlcnic_npar_info, ptr %51, i32 %i.014.i121, i32 7
  %56 = ptrtoint ptr %enable_pm to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv52, ptr %enable_pm, align 1
  %57 = ptrtoint ptr %npars.i119 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %npars.i119, align 8
  %dest_npar = getelementptr %struct.qlcnic_npar_info, ptr %58, i32 %i.014.i121, i32 8
  %59 = ptrtoint ptr %dest_npar to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %53, ptr %dest_npar, align 2
  %inc59 = add nuw nsw i32 %i.1151, 1
  %exitcond163.not = icmp eq i32 %inc59, %smax162
  br i1 %exitcond163.not, label %if.end40.cleanup_crit_edge, label %if.end40.for.body31_crit_edge

if.end40.for.body31_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body31

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %for.inc.i127.cleanup.sink.split_crit_edge, %for.body31.cleanup.sink.split_crit_edge, %for.inc.i.cleanup.sink.split_crit_edge, %for.body.cleanup.sink.split_crit_edge, %for.inc.i42.i.cleanup.sink.split_crit_edge, %for.inc.i.i.cleanup.sink.split_crit_edge, %for.body.lr.ph.i.cleanup.sink.split_crit_edge
  %pdev.i43.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 4
  %60 = ptrtoint ptr %pdev.i43.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pdev.i43.i, align 8
  %dev.i44.i = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i44.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end40.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %validate_pm_config.exit.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %qlcnic_swap32_buffer.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %size, %validate_pm_config.exit.cleanup_crit_edge ], [ %size, %if.end.cleanup_crit_edge ], [ %size, %qlcnic_swap32_buffer.exit.cleanup_crit_edge ], [ -22, %cleanup.sink.split ], [ %size, %if.end40.cleanup_crit_edge ], [ %call24, %if.end18.cleanup_crit_edge ], [ -22, %if.end6.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_config_port_mirroring(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_sysfs_get_esw_stats(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf, i64 noundef %offset, i32 noundef %size) #1 align 64 {
entry:
  %esw_stats = alloca %struct.qlcnic_esw_statistics, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %esw_stats) #9
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 8
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device1.i, align 2
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.79)
  switch i16 %5, label %if.end [
    i16 -32720, label %entry.cleanup_crit_edge
    i16 -30672, label %entry.cleanup_crit_edge29
    i16 -32704, label %entry.cleanup_crit_edge30
    i16 -31680, label %entry.cleanup_crit_edge31
    i16 -31696, label %entry.cleanup_crit_edge32
    i16 -29648, label %entry.cleanup_crit_edge33
  ]

entry.cleanup_crit_edge33:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge32:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge31:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge30:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge29:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 176, i32 %size)
  %cmp.not = icmp ne i32 %size, 176
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %offset)
  %cmp5 = icmp sgt i64 %offset, 1
  %or.cond = or i1 %cmp5, %cmp.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %7 = call ptr @memset(ptr %esw_stats, i32 0, i32 176)
  %conv = trunc i64 %offset to i8
  %call8 = call i32 @qlcnic_get_eswitch_stats(ptr noundef %1, i8 noundef zeroext %conv, i8 noundef zeroext 0, ptr noundef nonnull %esw_stats) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %tx = getelementptr inbounds %struct.qlcnic_esw_statistics, ptr %esw_stats, i32 0, i32 1
  %call12 = call i32 @qlcnic_get_eswitch_stats(ptr noundef %1, i8 noundef zeroext %conv, i8 noundef zeroext 1, ptr noundef %tx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %8 = call ptr @memcpy(ptr %buf, ptr %esw_stats, i32 176)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge29, %entry.cleanup_crit_edge30, %entry.cleanup_crit_edge31, %entry.cleanup_crit_edge32, %entry.cleanup_crit_edge33
  %retval.0 = phi i32 [ 176, %if.end15 ], [ -22, %if.end.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ], [ %call12, %if.end10.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge29 ], [ -95, %entry.cleanup_crit_edge30 ], [ -95, %entry.cleanup_crit_edge31 ], [ -95, %entry.cleanup_crit_edge32 ], [ -95, %entry.cleanup_crit_edge33 ]
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %esw_stats) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_sysfs_clear_esw_stats(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i64 noundef %offset, i32 noundef %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 8
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device1.i, align 2
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.80)
  switch i16 %5, label %if.end [
    i16 -32720, label %entry.cleanup_crit_edge
    i16 -30672, label %entry.cleanup_crit_edge22
    i16 -32704, label %entry.cleanup_crit_edge23
    i16 -31680, label %entry.cleanup_crit_edge24
    i16 -31696, label %entry.cleanup_crit_edge25
    i16 -29648, label %entry.cleanup_crit_edge26
  ]

entry.cleanup_crit_edge26:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge25:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge24:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge23:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge22:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %offset)
  %cmp = icmp sgt i64 %offset, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %conv = trunc i64 %offset to i8
  %call5 = tail call i32 @qlcnic_clear_esw_stats(ptr noundef %1, i8 noundef zeroext 2, i8 noundef zeroext %conv, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 @qlcnic_clear_esw_stats(ptr noundef %1, i8 noundef zeroext 2, i8 noundef zeroext %conv, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  %size.call9 = select i1 %tobool10.not, i32 %size, i32 %call9
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge22, %entry.cleanup_crit_edge23, %entry.cleanup_crit_edge24, %entry.cleanup_crit_edge25, %entry.cleanup_crit_edge26
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %size.call9, %if.end7 ], [ -95, %entry.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge22 ], [ -95, %entry.cleanup_crit_edge23 ], [ -95, %entry.cleanup_crit_edge24 ], [ -95, %entry.cleanup_crit_edge25 ], [ -95, %entry.cleanup_crit_edge26 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_get_eswitch_stats(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_83xx_sysfs_flash_read_handler(ptr nocapture noundef readnone %filp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf, i64 noundef %offset, i32 noundef %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not = icmp eq i32 %size, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %div37 = lshr i32 %size, 2
  %rem = and i32 %size, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool2.not = icmp ne i32 %rem, 0
  %inc = zext i1 %tobool2.not to i32
  %spec.select = add nuw nsw i32 %div37, %inc
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size, i32 noundef 3520) #13
  %tobool6.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @qlcnic_83xx_lock_flash(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp.not = icmp eq i32 %call9, 0
  br i1 %cmp.not, label %if.end11, label %if.end8.cleanup.sink.split_crit_edge

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end11:                                         ; preds = %if.end8
  %conv = trunc i64 %offset to i32
  %call12 = tail call i32 @qlcnic_83xx_lockless_flash_read32(ptr noundef %1, i32 noundef %conv, ptr noundef nonnull %call8.i.i, i32 noundef %spec.select) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  tail call void @qlcnic_83xx_unlock_flash(ptr noundef %1) #9
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup.sink.split_crit_edge

if.end11.cleanup.sink.split_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp4.i.not = icmp eq i32 %spec.select, 0
  br i1 %cmp4.i.not, label %if.end15.qlcnic_swap32_buffer.exit_crit_edge, label %if.end15.for.body.i_crit_edge

if.end15.for.body.i_crit_edge:                    ; preds = %if.end15
  br label %for.body.i

if.end15.qlcnic_swap32_buffer.exit_crit_edge:     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %qlcnic_swap32_buffer.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end15.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end15.for.body.i_crit_edge ]
  %tmp.05.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %call8.i.i, %if.end15.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %tmp.05.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tmp.05.i, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #9
  %5 = ptrtoint ptr %tmp.05.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tmp.05.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %tmp.05.i, i32 1
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %spec.select
  br i1 %exitcond.not.i, label %for.body.i.qlcnic_swap32_buffer.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.qlcnic_swap32_buffer.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qlcnic_swap32_buffer.exit

qlcnic_swap32_buffer.exit:                        ; preds = %for.body.i.qlcnic_swap32_buffer.exit_crit_edge, %if.end15.qlcnic_swap32_buffer.exit_crit_edge
  %6 = call ptr @memcpy(ptr %buf, ptr %call8.i.i, i32 %size)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %qlcnic_swap32_buffer.exit, %if.end11.cleanup.sink.split_crit_edge, %if.end8.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %size, %qlcnic_swap32_buffer.exit ], [ -5, %if.end8.cleanup.sink.split_crit_edge ], [ %call12, %if.end11.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_83xx_sysfs_flash_write_handler(ptr nocapture noundef readnone %filp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %offset, i32 noundef %size) #1 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #9
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !172
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %data) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %4, label %sw.default [
    i32 -559038737, label %sw.bb
    i32 -891507254, label %sw.bb8
    i32 -624055078, label %sw.bb9
  ]

sw.bb:                                            ; preds = %if.end
  store i32 1, ptr @qlcnic_83xx_sysfs_flash_write_handler.flash_mode, align 4
  %conv = trunc i64 %offset to i32
  %call3 = call i32 @qlcnic_83xx_erase_flash_sector(ptr noundef %2, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %sw.bb.cleanup_crit_edge, label %do.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %2, i32 0, i32 4
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67, i32 noundef 1139) #12
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  store i32 3, ptr @qlcnic_83xx_sysfs_flash_write_handler.flash_mode, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  store i32 2, ptr @qlcnic_83xx_sysfs_flash_write_handler.flash_mode, align 4
  br label %cleanup

sw.default:                                       ; preds = %if.end
  %8 = load i32, ptr @qlcnic_83xx_sysfs_flash_write_handler.flash_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp = icmp eq i32 %8, 3
  br i1 %cmp, label %if.end7.i.i.i, label %sw.default.if.end21_crit_edge

sw.default.if.end21_crit_edge:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.end7.i.i.i:                                    ; preds = %sw.default
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %size, i32 noundef 3520) #13
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.i.do.end17_crit_edge, label %if.end.i

if.end7.i.i.i.do.end17_crit_edge:                 ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17

if.end.i:                                         ; preds = %if.end7.i.i.i
  %div86.i = lshr i32 %size, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp4.i.not.i = icmp ult i32 %size, 4
  br i1 %cmp4.i.not.i, label %if.end.i.qlcnic_swap32_buffer.exit.i_crit_edge, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

if.end.i.qlcnic_swap32_buffer.exit.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qlcnic_swap32_buffer.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %i.06.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.for.body.i.i_crit_edge ]
  %tmp.05.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %buf, %if.end.i.for.body.i.i_crit_edge ]
  %9 = ptrtoint ptr %tmp.05.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tmp.05.i.i, align 4
  %11 = call i32 @llvm.bswap.i32(i32 %10) #9
  %12 = ptrtoint ptr %tmp.05.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %tmp.05.i.i, align 4
  %incdec.ptr.i.i = getelementptr i32, ptr %tmp.05.i.i, i32 1
  %inc.i.i = add nuw nsw i32 %i.06.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %div86.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.qlcnic_swap32_buffer.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i.qlcnic_swap32_buffer.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qlcnic_swap32_buffer.exit.i

qlcnic_swap32_buffer.exit.i:                      ; preds = %for.body.i.i.qlcnic_swap32_buffer.exit.i_crit_edge, %if.end.i.qlcnic_swap32_buffer.exit.i_crit_edge
  %13 = call ptr @memcpy(ptr %call8.i.i.i, ptr %buf, i32 %size)
  %call1.i = call i32 @qlcnic_83xx_lock_flash(ptr noundef %2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.not.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.not.i, label %if.end3.i, label %if.then2.i

if.then2.i:                                       ; preds = %qlcnic_swap32_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #9
  br label %do.end17

if.end3.i:                                        ; preds = %qlcnic_swap32_buffer.exit.i
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %2, align 8
  %mfg_id.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %15, i32 0, i32 49, i32 6
  %16 = ptrtoint ptr %mfg_id.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mfg_id.i, align 4
  %flash_mfg_id.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %2, i32 0, i32 40
  %18 = ptrtoint ptr %flash_mfg_id.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %flash_mfg_id.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %19)
  %cmp5.i = icmp eq i8 %17, %19
  br i1 %cmp5.i, label %if.then7.i, label %if.end3.i.if.end12.i_crit_edge

if.end3.i.if.end12.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.then7.i:                                       ; preds = %if.end3.i
  %call8.i = call i32 @qlcnic_83xx_enable_flash_write(ptr noundef %2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.then7.i.if.end12.i_crit_edge, label %if.then10.i

if.then7.i.if.end12.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.then10.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #9
  call void @qlcnic_83xx_unlock_flash(ptr noundef %2) #9
  br label %do.end17

if.end12.i:                                       ; preds = %if.then7.i.if.end12.i_crit_edge, %if.end3.i.if.end12.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %size)
  %cmp1494.not.i = icmp ult i32 %size, 256
  br i1 %cmp1494.not.i, label %if.end12.i.for.end.i_crit_edge, label %for.body.preheader.i

if.end12.i.for.end.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.end12.i
  %div1387.i = lshr i32 %size, 8
  br label %for.body.i

for.body.i:                                       ; preds = %if.end34.i.for.body.i_crit_edge, %for.body.preheader.i
  %p_src.097.i = phi ptr [ %add.ptr.i, %if.end34.i.for.body.i_crit_edge ], [ %call8.i.i.i, %for.body.preheader.i ]
  %i.096.i = phi i32 [ %inc.i, %if.end34.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %offset.addr.095.i = phi i64 [ %add.i, %if.end34.i.for.body.i_crit_edge ], [ %offset, %for.body.preheader.i ]
  %conv16.i = trunc i64 %offset.addr.095.i to i32
  %call17.i = call i32 @qlcnic_83xx_flash_bulk_write(ptr noundef %2, i32 noundef %conv16.i, ptr noundef %p_src.097.i, i32 noundef 64) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end34.i, label %if.then19.i

if.then19.i:                                      ; preds = %for.body.i
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %2, align 8
  %mfg_id22.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %21, i32 0, i32 49, i32 6
  %22 = ptrtoint ptr %mfg_id22.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %mfg_id22.i, align 4
  %24 = ptrtoint ptr %flash_mfg_id.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %flash_mfg_id.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %25)
  %cmp26.i = icmp eq i8 %23, %25
  br i1 %cmp26.i, label %if.then28.i, label %if.then19.i.if.end33.i_crit_edge

if.then19.i.if.end33.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

if.then28.i:                                      ; preds = %if.then19.i
  %call29.i = call i32 @qlcnic_83xx_disable_flash_write(ptr noundef %2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.then28.i.if.end33.i_crit_edge, label %if.then31.i

if.then28.i.if.end33.i_crit_edge:                 ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

if.then31.i:                                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #9
  call void @qlcnic_83xx_unlock_flash(ptr noundef %2) #9
  br label %do.end17

if.end33.i:                                       ; preds = %if.then28.i.if.end33.i_crit_edge, %if.then19.i.if.end33.i_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #9
  call void @qlcnic_83xx_unlock_flash(ptr noundef %2) #9
  br label %do.end17

if.end34.i:                                       ; preds = %for.body.i
  %add.ptr.i = getelementptr i8, ptr %p_src.097.i, i32 256
  %add.i = add i64 %offset.addr.095.i, 256
  %inc.i = add nuw nsw i32 %i.096.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div1387.i
  br i1 %exitcond.not.i, label %if.end34.i.for.end.i_crit_edge, label %if.end34.i.for.body.i_crit_edge

if.end34.i.for.body.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end34.i.for.end.i_crit_edge:                   ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %if.end34.i.for.end.i_crit_edge, %if.end12.i.for.end.i_crit_edge
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %2, align 8
  %mfg_id37.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %27, i32 0, i32 49, i32 6
  %28 = ptrtoint ptr %mfg_id37.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %mfg_id37.i, align 4
  %30 = ptrtoint ptr %flash_mfg_id.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %flash_mfg_id.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %31)
  %cmp41.i = icmp eq i8 %29, %31
  br i1 %cmp41.i, label %if.then43.i, label %for.end.i.qlcnic_83xx_sysfs_flash_bulk_write.exit_crit_edge

for.end.i.qlcnic_83xx_sysfs_flash_bulk_write.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qlcnic_83xx_sysfs_flash_bulk_write.exit

if.then43.i:                                      ; preds = %for.end.i
  %call44.i = call i32 @qlcnic_83xx_disable_flash_write(ptr noundef %2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %if.then43.i.qlcnic_83xx_sysfs_flash_bulk_write.exit_crit_edge, label %if.then46.i

if.then43.i.qlcnic_83xx_sysfs_flash_bulk_write.exit_crit_edge: ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qlcnic_83xx_sysfs_flash_bulk_write.exit

if.then46.i:                                      ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #9
  call void @qlcnic_83xx_unlock_flash(ptr noundef %2) #9
  br label %do.end17

qlcnic_83xx_sysfs_flash_bulk_write.exit:          ; preds = %if.then43.i.qlcnic_83xx_sysfs_flash_bulk_write.exit_crit_edge, %for.end.i.qlcnic_83xx_sysfs_flash_bulk_write.exit_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #9
  call void @qlcnic_83xx_unlock_flash(ptr noundef %2) #9
  %.pr = load i32, ptr @qlcnic_83xx_sysfs_flash_write_handler.flash_mode, align 4
  br label %if.end21

do.end17:                                         ; preds = %if.then46.i, %if.end33.i, %if.then31.i, %if.then10.i, %if.then2.i, %if.end7.i.i.i.do.end17_crit_edge
  %pdev18 = getelementptr inbounds %struct.qlcnic_adapter, ptr %2, i32 0, i32 4
  %32 = ptrtoint ptr %pdev18 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev18, align 8
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67, i32 noundef 1158) #12
  br label %cleanup

if.end21:                                         ; preds = %qlcnic_83xx_sysfs_flash_bulk_write.exit, %sw.default.if.end21_crit_edge
  %34 = phi i32 [ %.pr, %qlcnic_83xx_sysfs_flash_bulk_write.exit ], [ %8, %sw.default.if.end21_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp22 = icmp eq i32 %34, 2
  br i1 %cmp22, label %if.end7.i.i.i79, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.i.i.i79:                                  ; preds = %if.end21
  %call8.i.i.i78 = call noalias align 128 ptr @__kmalloc(i32 noundef %size, i32 noundef 3520) #13
  %tobool.not.i81 = icmp eq ptr %call8.i.i.i78, null
  br i1 %tobool.not.i81, label %if.end7.i.i.i79.do.end30_crit_edge, label %if.end.i85

if.end7.i.i.i79.do.end30_crit_edge:               ; preds = %if.end7.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30

if.end.i85:                                       ; preds = %if.end7.i.i.i79
  %div86.i83 = lshr i32 %size, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp4.i.not.i84 = icmp ult i32 %size, 4
  br i1 %cmp4.i.not.i84, label %if.end.i85.qlcnic_swap32_buffer.exit.i93_crit_edge, label %if.end.i85.for.body.i.i91_crit_edge

if.end.i85.for.body.i.i91_crit_edge:              ; preds = %if.end.i85
  br label %for.body.i.i91

if.end.i85.qlcnic_swap32_buffer.exit.i93_crit_edge: ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %qlcnic_swap32_buffer.exit.i93

for.body.i.i91:                                   ; preds = %for.body.i.i91.for.body.i.i91_crit_edge, %if.end.i85.for.body.i.i91_crit_edge
  %i.06.i.i86 = phi i32 [ %inc.i.i89, %for.body.i.i91.for.body.i.i91_crit_edge ], [ 0, %if.end.i85.for.body.i.i91_crit_edge ]
  %tmp.05.i.i87 = phi ptr [ %incdec.ptr.i.i88, %for.body.i.i91.for.body.i.i91_crit_edge ], [ %buf, %if.end.i85.for.body.i.i91_crit_edge ]
  %35 = ptrtoint ptr %tmp.05.i.i87 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tmp.05.i.i87, align 4
  %37 = call i32 @llvm.bswap.i32(i32 %36) #9
  %38 = ptrtoint ptr %tmp.05.i.i87 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %tmp.05.i.i87, align 4
  %incdec.ptr.i.i88 = getelementptr i32, ptr %tmp.05.i.i87, i32 1
  %inc.i.i89 = add nuw nsw i32 %i.06.i.i86, 1
  %exitcond.not.i.i90 = icmp eq i32 %inc.i.i89, %div86.i83
  br i1 %exitcond.not.i.i90, label %for.body.i.i91.qlcnic_swap32_buffer.exit.i93_crit_edge, label %for.body.i.i91.for.body.i.i91_crit_edge

for.body.i.i91.for.body.i.i91_crit_edge:          ; preds = %for.body.i.i91
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i91

for.body.i.i91.qlcnic_swap32_buffer.exit.i93_crit_edge: ; preds = %for.body.i.i91
  call void @__sanitizer_cov_trace_pc() #11
  br label %qlcnic_swap32_buffer.exit.i93

qlcnic_swap32_buffer.exit.i93:                    ; preds = %for.body.i.i91.qlcnic_swap32_buffer.exit.i93_crit_edge, %if.end.i85.qlcnic_swap32_buffer.exit.i93_crit_edge
  %39 = call ptr @memcpy(ptr %call8.i.i.i78, ptr %buf, i32 %size)
  %call2.i = call i32 @qlcnic_83xx_lock_flash(ptr noundef %2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.not.i92 = icmp eq i32 %call2.i, 0
  br i1 %cmp.not.i92, label %if.end4.i, label %if.then3.i

if.then3.i:                                       ; preds = %qlcnic_swap32_buffer.exit.i93
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef nonnull %call8.i.i.i78) #9
  br label %do.end30

if.end4.i:                                        ; preds = %qlcnic_swap32_buffer.exit.i93
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %2, align 8
  %mfg_id.i94 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %41, i32 0, i32 49, i32 6
  %42 = ptrtoint ptr %mfg_id.i94 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %mfg_id.i94, align 4
  %flash_mfg_id.i95 = getelementptr inbounds %struct.qlcnic_adapter, ptr %2, i32 0, i32 40
  %44 = ptrtoint ptr %flash_mfg_id.i95 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %flash_mfg_id.i95, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %45)
  %cmp6.i = icmp eq i8 %43, %45
  br i1 %cmp6.i, label %if.then8.i, label %if.end4.i.if.end13.i_crit_edge

if.end4.i.if.end13.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.then8.i:                                       ; preds = %if.end4.i
  %call9.i = call i32 @qlcnic_83xx_enable_flash_write(ptr noundef %2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.then8.i.if.end13.i_crit_edge, label %if.then11.i

if.then8.i.if.end13.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.then11.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef nonnull %call8.i.i.i78) #9
  call void @qlcnic_83xx_unlock_flash(ptr noundef %2) #9
  br label %do.end30

if.end13.i:                                       ; preds = %if.then8.i.if.end13.i_crit_edge, %if.end4.i.if.end13.i_crit_edge
  br i1 %cmp4.i.not.i84, label %if.end13.i.for.end.i116_crit_edge, label %for.body.preheader.i96

if.end13.i.for.end.i116_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i116

for.body.preheader.i96:                           ; preds = %if.end13.i
  %umax.i = call i32 @llvm.umax.i32(i32 %div86.i83, i32 1) #9
  br label %for.body.i100

for.body.i100:                                    ; preds = %if.end34.i113.for.body.i100_crit_edge, %for.body.preheader.i96
  %p_src.096.i = phi ptr [ %add.ptr.i109, %if.end34.i113.for.body.i100_crit_edge ], [ %call8.i.i.i78, %for.body.preheader.i96 ]
  %i.095.i = phi i32 [ %inc.i111, %if.end34.i113.for.body.i100_crit_edge ], [ 0, %for.body.preheader.i96 ]
  %offset.addr.094.i = phi i64 [ %add.i110, %if.end34.i113.for.body.i100_crit_edge ], [ %offset, %for.body.preheader.i96 ]
  %conv16.i97 = trunc i64 %offset.addr.094.i to i32
  %call17.i98 = call i32 @qlcnic_83xx_flash_write32(ptr noundef %2, i32 noundef %conv16.i97, ptr noundef %p_src.096.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i98)
  %tobool18.not.i99 = icmp eq i32 %call17.i98, 0
  br i1 %tobool18.not.i99, label %if.end34.i113, label %if.then19.i103

if.then19.i103:                                   ; preds = %for.body.i100
  %46 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %2, align 8
  %mfg_id22.i101 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %47, i32 0, i32 49, i32 6
  %48 = ptrtoint ptr %mfg_id22.i101 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %mfg_id22.i101, align 4
  %50 = ptrtoint ptr %flash_mfg_id.i95 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %flash_mfg_id.i95, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %51)
  %cmp26.i102 = icmp eq i8 %49, %51
  br i1 %cmp26.i102, label %if.then28.i106, label %if.then19.i103.if.end33.i108_crit_edge

if.then19.i103.if.end33.i108_crit_edge:           ; preds = %if.then19.i103
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i108

if.then28.i106:                                   ; preds = %if.then19.i103
  %call29.i104 = call i32 @qlcnic_83xx_disable_flash_write(ptr noundef %2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i104)
  %tobool30.not.i105 = icmp eq i32 %call29.i104, 0
  br i1 %tobool30.not.i105, label %if.then28.i106.if.end33.i108_crit_edge, label %if.then31.i107

if.then28.i106.if.end33.i108_crit_edge:           ; preds = %if.then28.i106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i108

if.then31.i107:                                   ; preds = %if.then28.i106
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef nonnull %call8.i.i.i78) #9
  call void @qlcnic_83xx_unlock_flash(ptr noundef %2) #9
  br label %do.end30

if.end33.i108:                                    ; preds = %if.then28.i106.if.end33.i108_crit_edge, %if.then19.i103.if.end33.i108_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i.i78) #9
  call void @qlcnic_83xx_unlock_flash(ptr noundef %2) #9
  br label %do.end30

if.end34.i113:                                    ; preds = %for.body.i100
  %add.ptr.i109 = getelementptr i8, ptr %p_src.096.i, i32 4
  %add.i110 = add i64 %offset.addr.094.i, 4
  %inc.i111 = add nuw nsw i32 %i.095.i, 1
  %exitcond.not.i112 = icmp eq i32 %inc.i111, %umax.i
  br i1 %exitcond.not.i112, label %if.end34.i113.for.end.i116_crit_edge, label %if.end34.i113.for.body.i100_crit_edge

if.end34.i113.for.body.i100_crit_edge:            ; preds = %if.end34.i113
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i100

if.end34.i113.for.end.i116_crit_edge:             ; preds = %if.end34.i113
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i116

for.end.i116:                                     ; preds = %if.end34.i113.for.end.i116_crit_edge, %if.end13.i.for.end.i116_crit_edge
  %52 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %2, align 8
  %mfg_id37.i114 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %53, i32 0, i32 49, i32 6
  %54 = ptrtoint ptr %mfg_id37.i114 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %mfg_id37.i114, align 4
  %56 = ptrtoint ptr %flash_mfg_id.i95 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %flash_mfg_id.i95, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %55, i8 %57)
  %cmp41.i115 = icmp eq i8 %55, %57
  br i1 %cmp41.i115, label %if.then43.i119, label %for.end.i116.qlcnic_83xx_sysfs_flash_write.exit_crit_edge

for.end.i116.qlcnic_83xx_sysfs_flash_write.exit_crit_edge: ; preds = %for.end.i116
  call void @__sanitizer_cov_trace_pc() #11
  br label %qlcnic_83xx_sysfs_flash_write.exit

if.then43.i119:                                   ; preds = %for.end.i116
  %call44.i117 = call i32 @qlcnic_83xx_disable_flash_write(ptr noundef %2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i117)
  %tobool45.not.i118 = icmp eq i32 %call44.i117, 0
  br i1 %tobool45.not.i118, label %if.then43.i119.qlcnic_83xx_sysfs_flash_write.exit_crit_edge, label %if.then46.i120

if.then43.i119.qlcnic_83xx_sysfs_flash_write.exit_crit_edge: ; preds = %if.then43.i119
  call void @__sanitizer_cov_trace_pc() #11
  br label %qlcnic_83xx_sysfs_flash_write.exit

if.then46.i120:                                   ; preds = %if.then43.i119
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef nonnull %call8.i.i.i78) #9
  call void @qlcnic_83xx_unlock_flash(ptr noundef %2) #9
  br label %do.end30

qlcnic_83xx_sysfs_flash_write.exit:               ; preds = %if.then43.i119.qlcnic_83xx_sysfs_flash_write.exit_crit_edge, %for.end.i116.qlcnic_83xx_sysfs_flash_write.exit_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i.i78) #9
  call void @qlcnic_83xx_unlock_flash(ptr noundef %2) #9
  br label %cleanup

do.end30:                                         ; preds = %if.then46.i120, %if.end33.i108, %if.then31.i107, %if.then11.i, %if.then3.i, %if.end7.i.i.i79.do.end30_crit_edge
  %pdev31 = getelementptr inbounds %struct.qlcnic_adapter, ptr %2, i32 0, i32 4
  %58 = ptrtoint ptr %pdev31 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pdev31, align 8
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67, i32 noundef 1169) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %qlcnic_83xx_sysfs_flash_write.exit, %if.end21.cleanup_crit_edge, %do.end17, %sw.bb9, %sw.bb8, %do.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end17 ], [ -5, %do.end30 ], [ -5, %do.end ], [ %call.i, %entry.cleanup_crit_edge ], [ %size, %if.end21.cleanup_crit_edge ], [ %size, %qlcnic_83xx_sysfs_flash_write.exit ], [ %size, %sw.bb.cleanup_crit_edge ], [ %size, %sw.bb9 ], [ %size, %sw.bb8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_lock_flash(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_lockless_flash_read32(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_83xx_unlock_flash(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_erase_flash_sector(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_enable_flash_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_flash_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_disable_flash_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_flash_write32(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !19, !21, !22, !23, !24, !25, !27, !28, !30, !32, !33, !35, !37, !39, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !109, !110, !111, !113, !114, !115, !116, !118, !120, !122, !123, !124, !125, !127, !129, !131, !132, !134, !136, !138, !139, !141, !143, !145, !147, !149, !151, !152, !153, !154, !156, !157, !159}
!llvm.module.flags = !{!160, !161, !162, !163, !164, !165, !166, !167}
!llvm.ident = !{!168}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 366, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @qlcnic_is_valid_nic_func._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @qlcnic_is_valid_nic_func._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1304, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @qlcnic_register_hwmon_dev._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @qlcnic_register_hwmon_dev._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1327, i32 4}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @qlcnic_create_sysfs_entries._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @qlcnic_create_sysfs_entries._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1422, i32 3}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @qlcnic_83xx_add_sysfs._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @qlcnic_83xx_add_sysfs._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @qlcnic_hwmon_groups, !26, !"qlcnic_hwmon_groups", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1288, i32 1}
!27 = !{ptr @qlcnic_hwmon_group, !26, !"qlcnic_hwmon_group", i1 false, i1 false}
!28 = !{ptr @qlcnic_hwmon_attrs, !29, !"qlcnic_hwmon_attrs", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1283, i32 26}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1280, i32 8}
!32 = !{ptr @sensor_dev_attr_temp1_input, !31, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1276, i32 22}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1179, i32 20}
!37 = !{ptr @dev_attr_bridged_mode, !38, !"dev_attr_bridged_mode", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1178, i32 38}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 69, i32 22}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1344, i32 3}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @qlcnic_create_diag_entries._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @qlcnic_create_diag_entries._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1349, i32 3}
!48 = !{ptr @qlcnic_create_diag_entries._entry.19, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @qlcnic_create_diag_entries._entry_ptr.21, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1351, i32 3}
!52 = !{ptr @qlcnic_create_diag_entries._entry.22, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @qlcnic_create_diag_entries._entry_ptr.24, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1353, i32 3}
!56 = !{ptr @qlcnic_create_diag_entries._entry.25, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @qlcnic_create_diag_entries._entry_ptr.27, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1359, i32 3}
!60 = !{ptr @qlcnic_create_diag_entries._entry.28, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @qlcnic_create_diag_entries._entry_ptr.30, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1362, i32 3}
!64 = !{ptr @qlcnic_create_diag_entries._entry.31, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @qlcnic_create_diag_entries._entry_ptr.33, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1367, i32 3}
!68 = !{ptr @qlcnic_create_diag_entries._entry.34, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @qlcnic_create_diag_entries._entry_ptr.36, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1371, i32 3}
!72 = !{ptr @qlcnic_create_diag_entries._entry.37, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @qlcnic_create_diag_entries._entry_ptr.39, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.41, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1373, i32 3}
!76 = !{ptr @qlcnic_create_diag_entries._entry.40, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @qlcnic_create_diag_entries._entry_ptr.42, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.44, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1375, i32 3}
!80 = !{ptr @qlcnic_create_diag_entries._entry.43, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @qlcnic_create_diag_entries._entry_ptr.45, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.46, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1225, i32 20}
!84 = !{ptr @bin_attr_port_stats, !85, !"bin_attr_port_stats", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1224, i32 35}
!86 = !{ptr @.str.47, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1185, i32 20}
!88 = !{ptr @dev_attr_diag_mode, !89, !"dev_attr_diag_mode", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1184, i32 38}
!90 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1197, i32 20}
!92 = !{ptr @bin_attr_crb, !93, !"bin_attr_crb", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1196, i32 35}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1204, i32 20}
!96 = !{ptr @bin_attr_mem, !97, !"bin_attr_mem", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1203, i32 35}
!98 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1218, i32 20}
!100 = !{ptr @bin_attr_pci_config, !101, !"bin_attr_pci_config", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1217, i32 35}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1191, i32 20}
!104 = !{ptr @dev_attr_beacon, !105, !"dev_attr_beacon", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1190, i32 38}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 222, i32 3}
!108 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @qlcnic_store_beacon._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @qlcnic_store_beacon._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 101, i32 2}
!113 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @qlcnic_validate_beacon._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @qlcnic_validate_beacon._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1239, i32 20}
!118 = !{ptr @bin_attr_esw_config, !119, !"bin_attr_esw_config", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1238, i32 35}
!120 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 644, i32 4}
!122 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @qlcnic_sysfs_read_esw_config.__UNIQUE_ID_ddebug501, !121, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!125 = !{ptr @.str.60, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1211, i32 20}
!127 = !{ptr @bin_attr_npar_config, !128, !"bin_attr_npar_config", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1210, i32 35}
!129 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 745, i32 4}
!131 = !{ptr @qlcnic_sysfs_read_npar_config.__UNIQUE_ID_ddebug502, !130, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!132 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1246, i32 20}
!134 = !{ptr @bin_attr_pm_config, !135, !"bin_attr_pm_config", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1245, i32 35}
!136 = !{ptr @.str.63, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 467, i32 4}
!138 = !{ptr @qlcnic_sysfs_read_pm_config.__UNIQUE_ID_ddebug500, !137, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!139 = !{ptr @.str.64, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1232, i32 20}
!141 = !{ptr @bin_attr_esw_stats, !142, !"bin_attr_esw_stats", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1231, i32 35}
!143 = !{ptr @.str.65, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1253, i32 20}
!145 = !{ptr @bin_attr_flash, !146, !"bin_attr_flash", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1252, i32 35}
!147 = !{ptr @qlcnic_83xx_sysfs_flash_write_handler.flash_mode, !148, !"flash_mode", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1124, i32 13}
!149 = !{ptr @.str.66, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1138, i32 4}
!151 = !{ptr @.str.67, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @qlcnic_83xx_sysfs_flash_write_handler._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @qlcnic_83xx_sysfs_flash_write_handler._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @qlcnic_83xx_sysfs_flash_write_handler._entry.68, !155, !"_entry", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1156, i32 5}
!156 = !{ptr @qlcnic_83xx_sysfs_flash_write_handler._entry_ptr.69, !155, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @qlcnic_83xx_sysfs_flash_write_handler._entry.70, !158, !"_entry", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_sysfs.c", i32 1167, i32 5}
!159 = !{ptr @qlcnic_83xx_sysfs_flash_write_handler._entry_ptr.71, !158, !"_entry_ptr", i1 false, i1 false}
!160 = !{i32 1, !"wchar_size", i32 2}
!161 = !{i32 1, !"min_enum_size", i32 4}
!162 = !{i32 8, !"branch-target-enforcement", i32 0}
!163 = !{i32 8, !"sign-return-address", i32 0}
!164 = !{i32 8, !"sign-return-address-all", i32 0}
!165 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!166 = !{i32 7, !"uwtable", i32 1}
!167 = !{i32 7, !"frame-pointer", i32 2}
!168 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!169 = !{i64 4681765}
!170 = !{i64 2158124552}
!171 = !{i64 2158125376}
!172 = !{!"auto-init"}
!173 = !{!"branch_weights", i32 1, i32 2000}
!174 = !{i64 2148235814, i64 2148235819, i64 2148235832, i64 2148235876, i64 2148235910, i64 2148235931}
!175 = !{i8 0, i8 2}
!176 = !{i64 2158111380}
!177 = !{i64 2158112158}

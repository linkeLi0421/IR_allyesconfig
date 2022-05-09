; ModuleID = '/llk/IR_all_yes/drivers/misc/habanalabs/common/sysfs.c_pt.bc'
source_filename = "../drivers/misc/habanalabs/common/sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.cpucp_packet = type { %union.anon.101, i32, i32, %union.anon.102, i32 }
%union.anon.101 = type { i64 }
%union.anon.102 = type { i32 }
%struct.hl_device = type { ptr, [6 x i64], [6 x ptr], ptr, %struct.cdev, %struct.cdev, ptr, ptr, %struct.delayed_work, %struct.hl_device_reset_work, [32 x i8], [5 x [32 x i8]], i32, ptr, ptr, %struct.hl_user_interrupt, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.hl_cb_mgr, %struct.hl_eq, ptr, ptr, i32, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.asic_fixed_properties, ptr, ptr, %struct.hl_vm, ptr, ptr, %struct.hl_dbg_device_entry, %struct.list_head, %struct.spinlock, ptr, i32, ptr, i64, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.hl_cs_counters_atomic, %struct.hl_mmu_priv, [2 x %struct.hl_mmu_funcs], %struct.fw_load_mgr, [4 x %struct.pci_mem_region], %struct.hl_state_dump_specs, [2 x %struct.multi_cs_completion], %struct.hl_clk_throttle, %struct.last_error_session_info, %struct.hl_reset_info, ptr, %struct.atomic64_t, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hl_device_reset_work = type { ptr, %struct.delayed_work, ptr, i32 }
%struct.hl_user_interrupt = type { ptr, %struct.list_head, %struct.spinlock, i32 }
%struct.hl_cb_mgr = type { %struct.spinlock, %struct.idr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.hl_eq = type { ptr, ptr, i32, i32, i32, i8 }
%struct.asic_fixed_properties = type { ptr, %struct.cpucp_info, [128 x i8], [128 x i8], %struct.hl_mmu_properties, %struct.hl_mmu_properties, %struct.hl_mmu_properties, %struct.hl_hints_range, %struct.hl_hints_range, %struct.hl_hints_range, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x i16], [4 x i16], i16, [4 x i16], i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cpucp_info = type { [128 x %struct.cpucp_sensor], [128 x i8], i32, i32, i32, i32, i32, [128 x i8], [128 x i8], [128 x i8], i32, i64, [16 x i8], i64, i64, i8, i8, i8, i8, i8, [3 x i8], %struct.cpucp_security_info, i32, [16 x i8], i64 }
%struct.cpucp_sensor = type { i32, i32 }
%struct.cpucp_security_info = type { i8, i8, i8, i8 }
%struct.hl_mmu_properties = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i8 }
%struct.hl_hints_range = type { i64, i64 }
%struct.hl_vm = type { ptr, %struct.kref, %struct.spinlock, %struct.idr, i8 }
%struct.hl_dbg_device_entry = type { ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.debugfs_blob_wrapper, [5 x ptr], %struct.rw_semaphore, i64, i64, i64, i32, i32, i8, i8, i8, i8 }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hl_cs_counters_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.hl_mmu_priv = type { %struct.hl_mmu_dr_priv, %struct.hl_mmu_hr_priv }
%struct.hl_mmu_dr_priv = type { ptr, ptr }
%struct.hl_mmu_hr_priv = type { ptr, ptr }
%struct.hl_mmu_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fw_load_mgr = type { %union.anon.77, %struct.fw_image_props, %struct.fw_image_props, i32, i32, i8, i8, i8, i8 }
%union.anon.77 = type { %struct.dynamic_fw_load_mgr }
%struct.dynamic_fw_load_mgr = type { %struct.fw_response, %struct.lkd_fw_comms_desc, ptr, i32, i32, i8 }
%struct.fw_response = type { i32, i8, i8 }
%struct.lkd_fw_comms_desc = type { %struct.comms_desc_header, %struct.cpu_dyn_regs, [128 x i8], [128 x i8], [128 x i8], i64 }
%struct.comms_desc_header = type { i32, i32, i16, i8, [5 x i8] }
%struct.cpu_dyn_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [22 x i32] }
%struct.fw_image_props = type { ptr, i32, i32 }
%struct.pci_mem_region = type { i64, i64, i64, i64, i8, i8 }
%struct.hl_state_dump_specs = type { [128 x %struct.hlist_head], [128 x %struct.hlist_head], %struct.hl_state_dump_specs_funcs, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.hl_state_dump_specs_funcs = type { ptr, ptr, ptr, ptr }
%struct.multi_cs_completion = type { %struct.completion, %struct.spinlock, i64, i32, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hl_clk_throttle = type { [2 x %struct.hl_clk_throttle_timestamp], %struct.mutex, i32, i32 }
%struct.hl_clk_throttle_timestamp = type { i64, i64 }
%struct.last_error_session_info = type { i64, i64, i64, %struct.atomic_t, %struct.atomic_t, i64, i64, i16, i16, i8, i8 }
%struct.hl_reset_info = type { %struct.spinlock, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.atomic64_t = type { i64 }
%struct.hl_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.75, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.75 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@hl_get_frequency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 39, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to get frequency of PLL %d, error %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hl_get_frequency\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/misc/habanalabs/common/sysfs.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hl_get_frequency._entry_ptr = internal global ptr @hl_get_frequency._entry, section ".printk_index", align 4
@hl_set_frequency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 69, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to set frequency to PLL %d, error %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hl_set_frequency\00", [47 x i8] zeroinitializer }, align 32
@hl_set_frequency._entry_ptr = internal global ptr @hl_set_frequency._entry, section ".printk_index", align 4
@hl_get_max_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 87, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to get max power, error %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hl_get_max_power\00", [47 x i8] zeroinitializer }, align 32
@hl_get_max_power._entry_ptr = internal global ptr @hl_get_max_power._entry, section ".printk_index", align 4
@hl_set_max_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 109, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to set max power, error %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hl_set_max_power\00", [47 x i8] zeroinitializer }, align 32
@hl_set_max_power._entry_ptr = internal global ptr @hl_set_max_power._entry, section ".printk_index", align 4
@hl_dev_clks_attr_group = internal global { %struct.attribute_group, [44 x i8] } zeroinitializer, align 32
@hl_dev_attr_groups = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @hl_dev_attr_group, ptr @hl_dev_clks_attr_group, ptr null], [20 x i8] zeroinitializer }, align 32
@hl_sysfs_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 477, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to add groups to device, error %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hl_sysfs_init\00", [18 x i8] zeroinitializer }, align 32
@hl_sysfs_init._entry_ptr = internal global ptr @hl_sysfs_init._entry, section ".printk_index", align 4
@hl_dev_inference_attr_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @hl_dev_inference_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@hl_sysfs_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 487, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@hl_sysfs_init._entry_ptr.14 = internal global ptr @hl_sysfs_init._entry.13, section ".printk_index", align 4
@hl_dev_attr_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @hl_dev_attrs, ptr @hl_dev_bin_attrs }, [44 x i8] zeroinitializer }, align 32
@hl_dev_attrs = internal global { [17 x ptr], [60 x i8] } { [17 x ptr] [ptr @dev_attr_armcp_kernel_ver, ptr @dev_attr_armcp_ver, ptr @dev_attr_cpld_ver, ptr @dev_attr_cpucp_kernel_ver, ptr @dev_attr_cpucp_ver, ptr @dev_attr_device_type, ptr @dev_attr_fuse_ver, ptr @dev_attr_hard_reset, ptr @dev_attr_hard_reset_cnt, ptr @dev_attr_infineon_ver, ptr @dev_attr_max_power, ptr @dev_attr_pci_addr, ptr @dev_attr_preboot_btl_ver, ptr @dev_attr_status, ptr @dev_attr_thermal_ver, ptr @dev_attr_uboot_ver, ptr null], [60 x i8] zeroinitializer }, align 32
@hl_dev_bin_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @bin_attr_eeprom, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_armcp_kernel_ver = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @armcp_kernel_ver_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_armcp_ver = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @armcp_ver_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_cpld_ver = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cpld_ver_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_cpucp_kernel_ver = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cpucp_kernel_ver_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_cpucp_ver = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cpucp_ver_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_device_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @device_type_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fuse_ver = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fuse_ver_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hard_reset = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @hard_reset_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hard_reset_cnt = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hard_reset_cnt_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_infineon_ver = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @infineon_ver_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_max_power = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_power_show, ptr @max_power_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pci_addr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pci_addr_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_preboot_btl_ver = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @preboot_btl_ver_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_status = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @status_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_thermal_ver = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @thermal_ver_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_uboot_ver = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @uboot_ver_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"armcp_kernel_ver\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"armcp_ver\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cpld_ver\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%08x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cpucp_kernel_ver\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cpucp_ver\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"device_type\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"GOYA\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GAUDI\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"GAUDI SEC\00", [22 x i8] zeroinitializer }, align 32
@device_type_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 268, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unrecognized ASIC type %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"device_type_show\00", [47 x i8] zeroinitializer }, align 32
@device_type_show._entry_ptr = internal global ptr @device_type_show._entry, section ".printk_index", align 4
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fuse_ver\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hard_reset\00", [21 x i8] zeroinitializer }, align 32
@hard_reset_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 242, ptr @.str.33, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Hard-Reset requested through sysfs\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hard_reset_store\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hard_reset_store._entry_ptr = internal global ptr @hard_reset_store._entry, section ".printk_index", align 4
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hard_reset_cnt\00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"infineon_ver\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%#04x %#04x\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%#04x\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"max_power\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pci_addr\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%04x:%02x:%02x.%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"preboot_btl_ver\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"thermal_ver\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uboot_ver\00", [22 x i8] zeroinitializer }, align 32
@bin_attr_eeprom = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 4096, ptr null, ptr null, ptr @eeprom_read_handler, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"eeprom\00", [25 x i8] zeroinitializer }, align 32
@hl_dev_inference_attr_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @hl_dev_inference_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@hl_dev_inference_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_soft_reset, ptr @dev_attr_soft_reset_cnt, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_soft_reset = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @soft_reset_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_soft_reset_cnt = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @soft_reset_cnt_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"soft_reset\00", [21 x i8] zeroinitializer }, align 32
@soft_reset_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 215, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Device does not support inference soft-reset\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"soft_reset_store\00", [47 x i8] zeroinitializer }, align 32
@soft_reset_store._entry_ptr = internal global ptr @soft_reset_store._entry, section ".printk_index", align 4
@soft_reset_store._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.2, i32 219, ptr @.str.33, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Inference Soft-Reset requested through sysfs\0A\00", [50 x i8] zeroinitializer }, align 32
@soft_reset_store._entry_ptr.53 = internal global ptr @soft_reset_store._entry.51, section ".printk_index", align 4
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"soft_reset_cnt\00", [17 x i8] zeroinitializer }, align 32
@switch.table.device_type_show = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 37, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 67, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 87, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 109, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [23 x i8] c"hl_dev_clks_attr_group\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 443, i32 31 }
@___asan_gen_.103 = private unnamed_addr constant [19 x i8] c"hl_dev_attr_groups\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 445, i32 38 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 476, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [29 x i8] c"hl_dev_inference_attr_groups\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 461, i32 38 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 486, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [18 x i8] c"hl_dev_attr_group\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 438, i32 31 }
@___asan_gen_.124 = private unnamed_addr constant [13 x i8] c"hl_dev_attrs\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 413, i32 26 }
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"hl_dev_bin_attrs\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 433, i32 30 }
@___asan_gen_.130 = private unnamed_addr constant [26 x i8] c"dev_attr_armcp_kernel_ver\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [19 x i8] c"dev_attr_armcp_ver\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [18 x i8] c"dev_attr_cpld_ver\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [26 x i8] c"dev_attr_cpucp_kernel_ver\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [19 x i8] c"dev_attr_cpucp_ver\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [21 x i8] c"dev_attr_device_type\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [18 x i8] c"dev_attr_fuse_ver\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [20 x i8] c"dev_attr_hard_reset\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [24 x i8] c"dev_attr_hard_reset_cnt\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [22 x i8] c"dev_attr_infineon_ver\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [19 x i8] c"dev_attr_max_power\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [18 x i8] c"dev_attr_pci_addr\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [25 x i8] c"dev_attr_preboot_btl_ver\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [16 x i8] c"dev_attr_status\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [21 x i8] c"dev_attr_thermal_ver\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [19 x i8] c"dev_attr_uboot_ver\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 388, i32 8 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 389, i32 8 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 133, i32 22 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 390, i32 8 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 141, i32 22 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 391, i32 8 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 392, i32 8 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 393, i32 8 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 258, i32 9 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 261, i32 9 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 264, i32 9 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 267, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 394, i32 8 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 395, i32 8 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 242, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 396, i32 8 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 314, i32 22 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 397, i32 8 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 167, i32 23 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 171, i32 23 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 398, i32 8 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 328, i32 22 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 399, i32 8 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 280, i32 22 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 400, i32 8 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 403, i32 8 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 404, i32 8 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 405, i32 8 }
@___asan_gen_.277 = private unnamed_addr constant [16 x i8] c"bin_attr_eeprom\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 407, i32 29 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 408, i32 19 }
@___asan_gen_.283 = private unnamed_addr constant [28 x i8] c"hl_dev_inference_attr_group\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 457, i32 31 }
@___asan_gen_.286 = private unnamed_addr constant [23 x i8] c"hl_dev_inference_attrs\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 451, i32 26 }
@___asan_gen_.289 = private unnamed_addr constant [20 x i8] c"dev_attr_soft_reset\00", align 1
@___asan_gen_.292 = private unnamed_addr constant [24 x i8] c"dev_attr_soft_reset_cnt\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 401, i32 8 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 215, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 219, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.314 = private constant [42 x i8] c"../drivers/misc/habanalabs/common/sysfs.c\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 402, i32 8 }
@___asan_gen_.316 = private unnamed_addr constant [30 x i8] c"switch.table.device_type_show\00", align 1
@llvm.compiler.used = appending global [98 x ptr] [ptr @device_type_show._entry, ptr @device_type_show._entry_ptr, ptr @hard_reset_store._entry, ptr @hard_reset_store._entry_ptr, ptr @hl_get_frequency._entry, ptr @hl_get_frequency._entry_ptr, ptr @hl_get_max_power._entry, ptr @hl_get_max_power._entry_ptr, ptr @hl_set_frequency._entry, ptr @hl_set_frequency._entry_ptr, ptr @hl_set_max_power._entry, ptr @hl_set_max_power._entry_ptr, ptr @hl_sysfs_init._entry, ptr @hl_sysfs_init._entry.13, ptr @hl_sysfs_init._entry_ptr, ptr @hl_sysfs_init._entry_ptr.14, ptr @soft_reset_store._entry, ptr @soft_reset_store._entry.51, ptr @soft_reset_store._entry_ptr, ptr @soft_reset_store._entry_ptr.53, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @hl_dev_clks_attr_group, ptr @hl_dev_attr_groups, ptr @.str.11, ptr @.str.12, ptr @hl_dev_inference_attr_groups, ptr @hl_dev_attr_group, ptr @hl_dev_attrs, ptr @hl_dev_bin_attrs, ptr @dev_attr_armcp_kernel_ver, ptr @dev_attr_armcp_ver, ptr @dev_attr_cpld_ver, ptr @dev_attr_cpucp_kernel_ver, ptr @dev_attr_cpucp_ver, ptr @dev_attr_device_type, ptr @dev_attr_fuse_ver, ptr @dev_attr_hard_reset, ptr @dev_attr_hard_reset_cnt, ptr @dev_attr_infineon_ver, ptr @dev_attr_max_power, ptr @dev_attr_pci_addr, ptr @dev_attr_preboot_btl_ver, ptr @dev_attr_status, ptr @dev_attr_thermal_ver, ptr @dev_attr_uboot_ver, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @bin_attr_eeprom, ptr @.str.47, ptr @hl_dev_inference_attr_group, ptr @hl_dev_inference_attrs, ptr @dev_attr_soft_reset, ptr @dev_attr_soft_reset_cnt, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @switch.table.device_type_show], section "llvm.metadata"
@0 = internal global [88 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_get_frequency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_set_frequency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_get_max_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_set_max_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_dev_clks_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_dev_attr_groups to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_sysfs_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_dev_inference_attr_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_sysfs_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_dev_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_dev_attrs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_dev_bin_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_armcp_kernel_ver to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_armcp_ver to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cpld_ver to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cpucp_kernel_ver to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cpucp_ver to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_device_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fuse_ver to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hard_reset to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hard_reset_cnt to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_infineon_ver to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_max_power to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pci_addr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_preboot_btl_ver to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_status to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_thermal_ver to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_uboot_ver to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_type_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hard_reset_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_eeprom to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_dev_inference_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_dev_inference_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_soft_reset to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_soft_reset_cnt to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soft_reset_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soft_reset_store._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.device_type_show to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_get_frequency(ptr noundef %hdev, i32 noundef %pll_index, i1 noundef zeroext %curr) local_unnamed_addr #0 align 64 {
entry:
  %pkt = alloca %struct.cpucp_packet, align 8
  %used_pll_idx = alloca i32, align 4
  %result = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %used_pll_idx) #10
  %0 = ptrtoint ptr %used_pll_idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %used_pll_idx, align 4, !annotation !156
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %result) #10
  %1 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %result, align 8, !annotation !156
  %call = call i32 @get_used_pll_index(ptr noundef %hdev, i32 noundef %pll_index, ptr noundef nonnull %used_pll_idx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt, i32 0, i32 3
  %3 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt, i32 0, i32 1
  %4 = call ptr @memset(ptr %pkt, i32 0, i32 24)
  %. = select i1 %curr, i32 4864, i32 2560
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %., ptr %3, align 8
  %6 = ptrtoint ptr %used_pll_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %used_pll_idx, align 4
  %8 = call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %2, align 8
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %10 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %asic_funcs, align 8
  %send_cpu_message = getelementptr inbounds %struct.hl_asic_funcs, ptr %11, i32 0, i32 54
  %12 = ptrtoint ptr %send_cpu_message to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %send_cpu_message, align 4
  %call5 = call i32 %13(ptr noundef %hdev, ptr noundef nonnull %pkt, i16 noundef zeroext 24, i32 noundef 0, ptr noundef nonnull %result) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %16 = ptrtoint ptr %used_pll_idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %used_pll_idx, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str, i32 noundef %17, i32 noundef %call5) #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %result to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %result, align 8
  %conv = trunc i64 %19 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %do.end ], [ %conv, %if.end8 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %used_pll_idx) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_used_pll_index(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_set_frequency(ptr noundef %hdev, i32 noundef %pll_index, i64 noundef %freq) local_unnamed_addr #0 align 64 {
entry:
  %pkt = alloca %struct.cpucp_packet, align 8
  %used_pll_idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %used_pll_idx) #10
  %0 = ptrtoint ptr %used_pll_idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %used_pll_idx, align 4, !annotation !156
  %call = call i32 @get_used_pll_index(ptr noundef %hdev, i32 noundef %pll_index, ptr noundef nonnull %used_pll_idx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt, i32 0, i32 3
  %2 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt, i32 0, i32 1
  %3 = getelementptr inbounds i8, ptr %pkt, i32 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 16)
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2304, ptr %2, align 8
  %6 = ptrtoint ptr %used_pll_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %used_pll_idx, align 4
  %8 = call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %1, align 8
  %10 = call i64 @llvm.bswap.i64(i64 %freq)
  %11 = ptrtoint ptr %pkt to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %pkt, align 8
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %12 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %asic_funcs, align 8
  %send_cpu_message = getelementptr inbounds %struct.hl_asic_funcs, ptr %13, i32 0, i32 54
  %14 = ptrtoint ptr %send_cpu_message to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %send_cpu_message, align 4
  %call1 = call i32 %15(ptr noundef %hdev, ptr noundef nonnull %pkt, i16 noundef zeroext 24, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %18 = ptrtoint ptr %used_pll_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %used_pll_idx, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.5, i32 noundef %19, i32 noundef %call1) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %used_pll_idx) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @hl_get_max_power(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  %pkt = alloca %struct.cpucp_packet, align 8
  %result = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt) #10
  %0 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %result) #10
  %1 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %result, align 8, !annotation !156
  %2 = call ptr @memset(ptr %pkt, i32 0, i32 24)
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 5120, ptr %0, align 8
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %4 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asic_funcs, align 8
  %send_cpu_message = getelementptr inbounds %struct.hl_asic_funcs, ptr %5, i32 0, i32 54
  %6 = ptrtoint ptr %send_cpu_message to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %send_cpu_message, align 4
  %call = call i32 %7(ptr noundef %hdev, ptr noundef nonnull %pkt, i16 noundef zeroext 24, i32 noundef 0, ptr noundef nonnull %result) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.7, i32 noundef %call) #13
  %conv = sext i32 %call to i64
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %result to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %result, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i64 [ %conv, %do.end ], [ %11, %if.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt) #10
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_set_max_power(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  %pkt = alloca %struct.cpucp_packet, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt) #10
  %0 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt, i32 0, i32 1
  %1 = getelementptr inbounds i8, ptr %pkt, i32 8
  %2 = call ptr @memset(ptr %1, i32 0, i32 16)
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 5376, ptr %0, align 8
  %max_power = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 63
  %4 = ptrtoint ptr %max_power to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %max_power, align 8
  %6 = tail call i64 @llvm.bswap.i64(i64 %5)
  %7 = ptrtoint ptr %pkt to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %pkt, align 8
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %8 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %asic_funcs, align 8
  %send_cpu_message = getelementptr inbounds %struct.hl_asic_funcs, ptr %9, i32 0, i32 54
  %10 = ptrtoint ptr %send_cpu_message to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %send_cpu_message, align 4
  %call = call i32 %11(ptr noundef %hdev, ptr noundef nonnull %pkt, i16 noundef zeroext 24, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.9, i32 noundef %call) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_sysfs_init(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %max_power_default = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 18
  %0 = ptrtoint ptr %max_power_default to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %max_power_default, align 8
  %max_power = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 63
  %2 = ptrtoint ptr %max_power to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %max_power, align 8
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %3 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %asic_funcs, align 8
  %add_device_attr = getelementptr inbounds %struct.hl_asic_funcs, ptr %4, i32 0, i32 36
  %5 = ptrtoint ptr %add_device_attr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add_device_attr, align 4
  tail call void %6(ptr noundef %hdev, ptr noundef nonnull @hl_dev_clks_attr_group) #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %call = tail call i32 @device_add_groups(ptr noundef %8, ptr noundef nonnull @hl_dev_attr_groups) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %allow_inference_soft_reset = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 80
  %9 = ptrtoint ptr %allow_inference_soft_reset to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %allow_inference_soft_reset, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool3.not = icmp eq i8 %10, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %call7 = tail call i32 @device_add_groups(ptr noundef %12, ptr noundef nonnull @hl_dev_inference_attr_groups) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.end5.cleanup.sink.split_crit_edge

if.end5.cleanup.sink.split_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end5.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %call7.sink = phi i32 [ %call, %entry.cleanup.sink.split_crit_edge ], [ %call7, %if.end5.cleanup.sink.split_crit_edge ]
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.11, i32 noundef %call7.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ %call7.sink, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_groups(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_sysfs_fini(ptr nocapture noundef readonly %hdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void @device_remove_groups(ptr noundef %1, ptr noundef nonnull @hl_dev_attr_groups) #10
  %allow_inference_soft_reset = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 80
  %2 = ptrtoint ptr %allow_inference_soft_reset to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %allow_inference_soft_reset, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void @device_remove_groups(ptr noundef %5, ptr noundef nonnull @hl_dev_inference_attr_groups) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_groups(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @armcp_kernel_ver_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %kernel_version = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 1, i32 1
  %stpcpy = tail call ptr @stpcpy(ptr %buf, ptr %kernel_version) #14
  %2 = ptrtoint ptr %stpcpy to i32
  %3 = ptrtoint ptr %buf to i32
  %4 = sub i32 %2, %3
  ret i32 %4
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armcp_ver_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cpucp_version = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 1, i32 9
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.18, ptr noundef %cpucp_version)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpld_ver_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cpld_version = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 1, i32 5
  %2 = ptrtoint ptr %cpld_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpld_version, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.20, i32 noundef %4)
  ret i32 %call1
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cpucp_kernel_ver_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %kernel_version = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 1, i32 1
  %stpcpy = tail call ptr @stpcpy(ptr %buf, ptr %kernel_version) #14
  %2 = ptrtoint ptr %stpcpy to i32
  %3 = ptrtoint ptr %buf to i32
  %4 = sub i32 %2, %3
  ret i32 %4
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpucp_ver_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cpucp_version = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 1, i32 9
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.18, ptr noundef %cpucp_version)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_type_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %asic_type = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %asic_type, align 8
  %switch.tableidx = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 3
  br i1 %4, label %switch.lookup, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev3 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.27, i32 noundef %3) #13
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.device_type_show, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.18, ptr noundef nonnull %switch.load)
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call5, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_ver_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %fuse_version = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 1, i32 7
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.18, ptr noundef %fuse_version)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hard_reset_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !156
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %do.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev2 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.31) #13
  %call3 = call i32 @hl_device_reset(ptr noundef %1, i32 noundef 1) #10
  br label %out

out:                                              ; preds = %do.end, %entry.out_crit_edge
  %count.addr.0 = phi i32 [ %count, %do.end ], [ -22, %entry.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  ret i32 %count.addr.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_device_reset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hard_reset_cnt_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hard_reset_cnt = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 59, i32 2
  %2 = ptrtoint ptr %hard_reset_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hard_reset_cnt, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.35, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @infineon_ver_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %infineon_second_stage_version = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 1, i32 10
  %2 = ptrtoint ptr %infineon_second_stage_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %infineon_second_stage_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %infineon_version9 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 1, i32 6
  %4 = ptrtoint ptr %infineon_version9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %infineon_version9, align 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = tail call i32 @llvm.bswap.i32(i32 %3)
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.37, i32 noundef %6, i32 noundef %7)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %6)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call6, %if.then ], [ %call10, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_power_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %pkt.i = alloca %struct.cpucp_packet, align 8
  %result.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call zeroext i1 @hl_device_operational(ptr noundef %1, ptr noundef null) #10
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt.i) #10
  %2 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %result.i) #10
  %3 = ptrtoint ptr %result.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %result.i, align 8, !annotation !156
  %4 = call ptr @memset(ptr %pkt.i, i32 0, i32 24)
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 5120, ptr %2, align 8
  %asic_funcs.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 34
  %6 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asic_funcs.i, align 8
  %send_cpu_message.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %7, i32 0, i32 54
  %8 = ptrtoint ptr %send_cpu_message.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %send_cpu_message.i, align 4
  %call.i = call i32 %9(ptr noundef %1, ptr noundef nonnull %pkt.i, i16 noundef zeroext 24, i32 noundef 0, ptr noundef nonnull %result.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.7, i32 noundef %call.i) #13
  br label %hl_get_max_power.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %result.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %result.i, align 8
  %extract.t6 = trunc i64 %13 to i32
  br label %hl_get_max_power.exit

hl_get_max_power.exit:                            ; preds = %if.end.i, %do.end.i
  %retval.0.i.off0 = phi i32 [ %call.i, %do.end.i ], [ %extract.t6, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt.i) #10
  %call3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.40, i32 noundef %retval.0.i.off0)
  br label %cleanup

cleanup:                                          ; preds = %hl_get_max_power.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %hl_get_max_power.exit ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_power_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %pkt.i = alloca %struct.cpucp_packet, align 8
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !156
  %call1 = tail call zeroext i1 @hl_device_operational(ptr noundef %1, ptr noundef null) #10
  br i1 %call1, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  %conv = zext i32 %4 to i64
  %max_power = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 63
  %5 = ptrtoint ptr %max_power to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv, ptr %max_power, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt.i) #10
  %6 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i, i32 0, i32 1
  %7 = call ptr @memset(ptr %6, i32 0, i32 16)
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 5376, ptr %6, align 8
  %9 = call i64 @llvm.bswap.i64(i64 %conv) #10
  %10 = ptrtoint ptr %pkt.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %pkt.i, align 8
  %asic_funcs.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 34
  %11 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %asic_funcs.i, align 8
  %send_cpu_message.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %12, i32 0, i32 54
  %13 = ptrtoint ptr %send_cpu_message.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %send_cpu_message.i, align 4
  %call.i7 = call i32 %14(ptr noundef %1, ptr noundef nonnull %pkt.i, i16 noundef zeroext 24, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7)
  %tobool.not.i = icmp eq i32 %call.i7, 0
  br i1 %tobool.not.i, label %if.end4.hl_set_max_power.exit_crit_edge, label %do.end.i

if.end4.hl_set_max_power.exit_crit_edge:          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %hl_set_max_power.exit

do.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.9, i32 noundef %call.i7) #13
  br label %hl_set_max_power.exit

hl_set_max_power.exit:                            ; preds = %do.end.i, %if.end4.hl_set_max_power.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt.i) #10
  br label %out

out:                                              ; preds = %hl_set_max_power.exit, %if.end.out_crit_edge, %entry.out_crit_edge
  %count.addr.0 = phi i32 [ %count, %hl_set_max_power.exit ], [ -19, %entry.out_crit_edge ], [ -22, %if.end.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  ret i32 %count.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hl_device_operational(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_addr_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %bus = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 8
  %domain_nr.i = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %domain_nr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %domain_nr.i, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 12
  %8 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %number, align 4
  %conv = zext i8 %9 to i32
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %devfn, align 4
  %shr = lshr i32 %11, 3
  %and = and i32 %shr, 31
  %and7 = and i32 %11, 7
  %call8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.42, i32 noundef %7, i32 noundef %conv, i32 noundef %and, i32 noundef %and7)
  ret i32 %call8
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @preboot_btl_ver_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %preboot_ver = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 3
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.18, ptr noundef %preboot_ver)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @status_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %str = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %str) #10
  %2 = call ptr @memset(ptr %str, i32 255, i32 32)
  %call1 = tail call i32 @hl_device_status(ptr noundef %1) #10
  %arrayidx = getelementptr %struct.hl_device, ptr %1, i32 0, i32 11, i32 %call1
  %call3 = call i32 @strscpy(ptr noundef nonnull %str, ptr noundef %arrayidx, i32 noundef 32) #10
  %3 = ptrtoint ptr %str to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %str, align 1
  %add = add i8 %4, -32
  store i8 %add, ptr %str, align 1
  %call8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.18, ptr noundef nonnull %str)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %str) #10
  ret i32 %call8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_device_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @thermal_ver_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %thermal_version = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 1, i32 8
  %stpcpy = tail call ptr @stpcpy(ptr %buf, ptr %thermal_version) #14
  %2 = ptrtoint ptr %stpcpy to i32
  %3 = ptrtoint ptr %buf to i32
  %4 = sub i32 %2, %3
  ret i32 %4
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uboot_ver_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %uboot_ver = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 2
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.18, ptr noundef %uboot_ver)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eeprom_read_handler(ptr nocapture noundef readnone %filp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf, i64 noundef %offset, i32 noundef %max_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call2 = tail call zeroext i1 @hl_device_operational(ptr noundef %1, ptr noundef null) #10
  br i1 %call2, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_size)
  %tobool.not = icmp eq i32 %max_size, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end8.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %max_size, i32 noundef 3520) #15
  %tobool6.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool6.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end8

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end8.i.i
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asic_funcs, align 8
  %get_eeprom_data = getelementptr inbounds %struct.hl_asic_funcs, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %get_eeprom_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_eeprom_data, align 4
  %call9 = tail call i32 %5(ptr noundef %1, ptr noundef nonnull %call9.i.i, i32 noundef %max_size) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %6 = call ptr @memcpy(ptr %buf, ptr %call9.i.i, i32 %max_size)
  br label %out

out:                                              ; preds = %if.end12, %if.end8.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end8.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %max_size, %out ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soft_reset_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !156
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %allow_inference_soft_reset = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 80
  %3 = ptrtoint ptr %allow_inference_soft_reset to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %allow_inference_soft_reset, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  %dev4 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev4, align 4
  br i1 %tobool2.not, label %do.end, label %do.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.49) #13
  br label %out

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.52) #13
  %call10 = call i32 @hl_device_reset(ptr noundef %1, i32 noundef 0) #10
  br label %out

out:                                              ; preds = %do.end8, %do.end, %entry.out_crit_edge
  %count.addr.0 = phi i32 [ %count, %do.end8 ], [ %count, %do.end ], [ -22, %entry.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  ret i32 %count.addr.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soft_reset_cnt_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %soft_reset_cnt = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 59, i32 1
  %2 = ptrtoint ptr %soft_reset_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %soft_reset_cnt, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.35, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare ptr @stpcpy(ptr noalias writeonly, ptr noalias nocapture readonly) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !33, !35, !37, !39, !41, !42, !44, !46, !47, !49, !51, !52, !54, !56, !57, !59, !60, !62, !63, !65, !67, !69, !71, !72, !73, !74, !76, !77, !79, !80, !82, !83, !84, !85, !86, !88, !89, !91, !93, !94, !96, !98, !100, !101, !103, !105, !106, !108, !110, !111, !113, !114, !116, !117, !119, !120, !122, !124, !126, !128, !130, !132, !134, !135, !137, !138, !139, !140, !142, !143, !144, !146}
!llvm.module.flags = !{!147, !148, !149, !150, !151, !152, !153, !154}
!llvm.ident = !{!155}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 37, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @hl_get_frequency._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @hl_get_frequency._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 67, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @hl_set_frequency._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @hl_set_frequency._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 87, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @hl_get_max_power._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @hl_get_max_power._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 109, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @hl_set_max_power._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @hl_set_max_power._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 476, i32 3}
!25 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @hl_sysfs_init._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @hl_sysfs_init._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @hl_sysfs_init._entry.13, !29, !"_entry", i1 false, i1 false}
!29 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 486, i32 3}
!30 = !{ptr @hl_sysfs_init._entry_ptr.14, !29, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @hl_dev_clks_attr_group, !32, !"hl_dev_clks_attr_group", i1 false, i1 false}
!32 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 443, i32 31}
!33 = !{ptr @hl_dev_attr_groups, !34, !"hl_dev_attr_groups", i1 false, i1 false}
!34 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 445, i32 38}
!35 = !{ptr @hl_dev_attr_group, !36, !"hl_dev_attr_group", i1 false, i1 false}
!36 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 438, i32 31}
!37 = !{ptr @hl_dev_attrs, !38, !"hl_dev_attrs", i1 false, i1 false}
!38 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 413, i32 26}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 388, i32 8}
!41 = !{ptr @dev_attr_armcp_kernel_ver, !40, !"dev_attr_armcp_kernel_ver", i1 false, i1 false}
!42 = distinct !{null, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 125, i32 22}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 389, i32 8}
!46 = !{ptr @dev_attr_armcp_ver, !45, !"dev_attr_armcp_ver", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 133, i32 22}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 390, i32 8}
!51 = !{ptr @dev_attr_cpld_ver, !50, !"dev_attr_cpld_ver", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 141, i32 22}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 391, i32 8}
!56 = !{ptr @dev_attr_cpucp_kernel_ver, !55, !"dev_attr_cpucp_kernel_ver", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 392, i32 8}
!59 = !{ptr @dev_attr_cpucp_ver, !58, !"dev_attr_cpucp_ver", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 393, i32 8}
!62 = !{ptr @dev_attr_device_type, !61, !"dev_attr_device_type", i1 false, i1 false}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 258, i32 9}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 261, i32 9}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 264, i32 9}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 267, i32 3}
!71 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @device_type_show._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @device_type_show._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 394, i32 8}
!76 = !{ptr @dev_attr_fuse_ver, !75, !"dev_attr_fuse_ver", i1 false, i1 false}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 395, i32 8}
!79 = !{ptr @dev_attr_hard_reset, !78, !"dev_attr_hard_reset", i1 false, i1 false}
!80 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 242, i32 2}
!82 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @hard_reset_store._entry, !81, !"_entry", i1 false, i1 false}
!85 = !{ptr @hard_reset_store._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 396, i32 8}
!88 = !{ptr @dev_attr_hard_reset_cnt, !87, !"dev_attr_hard_reset_cnt", i1 false, i1 false}
!89 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 314, i32 22}
!91 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 397, i32 8}
!93 = !{ptr @dev_attr_infineon_ver, !92, !"dev_attr_infineon_ver", i1 false, i1 false}
!94 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 167, i32 23}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 171, i32 23}
!98 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 398, i32 8}
!100 = !{ptr @dev_attr_max_power, !99, !"dev_attr_max_power", i1 false, i1 false}
!101 = !{ptr @.str.40, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 328, i32 22}
!103 = !{ptr @.str.41, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 399, i32 8}
!105 = !{ptr @dev_attr_pci_addr, !104, !"dev_attr_pci_addr", i1 false, i1 false}
!106 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 280, i32 22}
!108 = !{ptr @.str.43, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 400, i32 8}
!110 = !{ptr @dev_attr_preboot_btl_ver, !109, !"dev_attr_preboot_btl_ver", i1 false, i1 false}
!111 = !{ptr @.str.44, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 403, i32 8}
!113 = !{ptr @dev_attr_status, !112, !"dev_attr_status", i1 false, i1 false}
!114 = !{ptr @.str.45, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 404, i32 8}
!116 = !{ptr @dev_attr_thermal_ver, !115, !"dev_attr_thermal_ver", i1 false, i1 false}
!117 = !{ptr @.str.46, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 405, i32 8}
!119 = !{ptr @dev_attr_uboot_ver, !118, !"dev_attr_uboot_ver", i1 false, i1 false}
!120 = !{ptr @hl_dev_bin_attrs, !121, !"hl_dev_bin_attrs", i1 false, i1 false}
!121 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 433, i32 30}
!122 = !{ptr @.str.47, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 408, i32 19}
!124 = !{ptr @bin_attr_eeprom, !125, !"bin_attr_eeprom", i1 false, i1 false}
!125 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 407, i32 29}
!126 = !{ptr @hl_dev_inference_attr_groups, !127, !"hl_dev_inference_attr_groups", i1 false, i1 false}
!127 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 461, i32 38}
!128 = !{ptr @hl_dev_inference_attr_group, !129, !"hl_dev_inference_attr_group", i1 false, i1 false}
!129 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 457, i32 31}
!130 = !{ptr @hl_dev_inference_attrs, !131, !"hl_dev_inference_attrs", i1 false, i1 false}
!131 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 451, i32 26}
!132 = !{ptr @.str.48, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 401, i32 8}
!134 = !{ptr @dev_attr_soft_reset, !133, !"dev_attr_soft_reset", i1 false, i1 false}
!135 = !{ptr @.str.49, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 215, i32 3}
!137 = !{ptr @.str.50, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @soft_reset_store._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @soft_reset_store._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.52, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 219, i32 2}
!142 = !{ptr @soft_reset_store._entry.51, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @soft_reset_store._entry_ptr.53, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.54, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/misc/habanalabs/common/sysfs.c", i32 402, i32 8}
!146 = !{ptr @dev_attr_soft_reset_cnt, !145, !"dev_attr_soft_reset_cnt", i1 false, i1 false}
!147 = !{i32 1, !"wchar_size", i32 2}
!148 = !{i32 1, !"min_enum_size", i32 4}
!149 = !{i32 8, !"branch-target-enforcement", i32 0}
!150 = !{i32 8, !"sign-return-address", i32 0}
!151 = !{i32 8, !"sign-return-address-all", i32 0}
!152 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!153 = !{i32 7, !"uwtable", i32 1}
!154 = !{i32 7, !"frame-pointer", i32 2}
!155 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!156 = !{!"auto-init"}

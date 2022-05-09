; ModuleID = '/llk/IR_all_yes/drivers/misc/habanalabs/common/hwmon.c_pt.bc'
source_filename = "../drivers/misc/habanalabs/common/hwmon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.cpucp_sensor = type { i32, i32 }
%struct.hl_device = type { ptr, [6 x i64], [6 x ptr], ptr, %struct.cdev, %struct.cdev, ptr, ptr, %struct.delayed_work, %struct.hl_device_reset_work, [32 x i8], [5 x [32 x i8]], i32, ptr, ptr, %struct.hl_user_interrupt, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.hl_cb_mgr, %struct.hl_eq, ptr, ptr, i32, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.asic_fixed_properties, ptr, ptr, %struct.hl_vm, ptr, ptr, %struct.hl_dbg_device_entry, %struct.list_head, %struct.spinlock, ptr, i32, ptr, i64, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.hl_cs_counters_atomic, %struct.hl_mmu_priv, [2 x %struct.hl_mmu_funcs], %struct.fw_load_mgr, [4 x %struct.pci_mem_region], %struct.hl_state_dump_specs, [2 x %struct.multi_cs_completion], %struct.hl_clk_throttle, %struct.last_error_session_info, %struct.hl_reset_info, ptr, %struct.atomic64_t, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.hl_device_reset_work = type { ptr, %struct.delayed_work, ptr, i32 }
%struct.hl_user_interrupt = type { ptr, %struct.list_head, %struct.spinlock, i32 }
%struct.hl_cb_mgr = type { %struct.spinlock, %struct.idr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.hl_eq = type { ptr, ptr, i32, i32, i32, i8 }
%struct.asic_fixed_properties = type { ptr, %struct.cpucp_info, [128 x i8], [128 x i8], %struct.hl_mmu_properties, %struct.hl_mmu_properties, %struct.hl_mmu_properties, %struct.hl_hints_range, %struct.hl_hints_range, %struct.hl_hints_range, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x i16], [4 x i16], i16, [4 x i16], i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cpucp_info = type { [128 x %struct.cpucp_sensor], [128 x i8], i32, i32, i32, i32, i32, [128 x i8], [128 x i8], [128 x i8], i32, i64, [16 x i8], i64, i64, i8, i8, i8, i8, i8, [3 x i8], %struct.cpucp_security_info, i32, [16 x i8], i64 }
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
%struct.hwmon_channel_info = type { i32, ptr }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.cpucp_packet = type { %union.anon.102, i32, i32, %union.anon.103, i32 }
%union.anon.102 = type { i64 }
%union.anon.103 = type { i32 }
%struct.anon.104 = type { i16, i16 }
%struct.hl_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.75, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.75 = type { ptr }

@hl_build_hwmon_channel_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 165, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Got wrong sensor type %d from device\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hl_build_hwmon_channel_info\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/misc/habanalabs/common/hwmon.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hl_build_hwmon_channel_info._entry_ptr = internal global ptr @hl_build_hwmon_channel_info._entry, section ".printk_index", align 4
@hl_build_hwmon_channel_info.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"habanalabs\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"num_sensors_for_type %d = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@hl_get_temperature.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 -111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hl_get_temperature\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"get temp, ctl 0x%x, sensor %d, type %d\0A\00", [56 x i8] zeroinitializer }, align 32
@hl_get_temperature._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 592, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Failed to get temperature from sensor %d, error %d\0A\00", [44 x i8] zeroinitializer }, align 32
@hl_get_temperature._entry_ptr = internal global ptr @hl_get_temperature._entry, section ".printk_index", align 4
@hl_set_temperature._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 619, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to set temperature of sensor %d, error %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hl_set_temperature\00", [45 x i8] zeroinitializer }, align 32
@hl_set_temperature._entry_ptr = internal global ptr @hl_set_temperature._entry, section ".printk_index", align 4
@hl_get_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 646, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to get voltage from sensor %d, error %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hl_get_voltage\00", [17 x i8] zeroinitializer }, align 32
@hl_get_voltage._entry_ptr = internal global ptr @hl_get_voltage._entry, section ".printk_index", align 4
@hl_get_current._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 675, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to get current from sensor %d, error %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hl_get_current\00", [17 x i8] zeroinitializer }, align 32
@hl_get_current._entry_ptr = internal global ptr @hl_get_current._entry, section ".printk_index", align 4
@hl_get_fan_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 704, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to get fan speed from sensor %d, error %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hl_get_fan_speed\00", [47 x i8] zeroinitializer }, align 32
@hl_get_fan_speed._entry_ptr = internal global ptr @hl_get_fan_speed._entry, section ".printk_index", align 4
@hl_get_pwm_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 733, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to get pwm info from sensor %d, error %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hl_get_pwm_info\00", [16 x i8] zeroinitializer }, align 32
@hl_get_pwm_info._entry_ptr = internal global ptr @hl_get_pwm_info._entry, section ".printk_index", align 4
@hl_set_pwm_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 760, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to set pwm info to sensor %d, error %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hl_set_pwm_info\00", [16 x i8] zeroinitializer }, align 32
@hl_set_pwm_info._entry_ptr = internal global ptr @hl_set_pwm_info._entry, section ".printk_index", align 4
@hl_set_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 783, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to set voltage of sensor %d, error %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hl_set_voltage\00", [17 x i8] zeroinitializer }, align 32
@hl_set_voltage._entry_ptr = internal global ptr @hl_set_voltage._entry, section ".printk_index", align 4
@hl_set_current._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 808, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to set current of sensor %d, error %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hl_set_current\00", [17 x i8] zeroinitializer }, align 32
@hl_set_current._entry_ptr = internal global ptr @hl_set_current._entry, section ".printk_index", align 4
@hl_set_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 839, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to set power of sensor %d, error %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hl_set_power\00", [19 x i8] zeroinitializer }, align 32
@hl_set_power._entry_ptr = internal global ptr @hl_set_power._entry, section ".printk_index", align 4
@hl_get_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 866, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to get power of sensor %d, error %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hl_get_power\00", [19 x i8] zeroinitializer }, align 32
@hl_get_power._entry_ptr = internal global ptr @hl_get_power._entry, section ".printk_index", align 4
@hl_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @hl_is_visible, ptr @hl_read, ptr null, ptr @hl_write }, [16 x i8] zeroinitializer }, align 32
@hl_hwmon_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 891, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to register hwmon device: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hl_hwmon_init\00", [18 x i8] zeroinitializer }, align 32
@hl_hwmon_init._entry_ptr = internal global ptr @hl_hwmon_init._entry, section ".printk_index", align 4
@hl_hwmon_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 896, ptr @.str.34, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: add sensors information\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@hl_hwmon_init._entry_ptr.35 = internal global ptr @hl_hwmon_init._entry.32, section ".printk_index", align 4
@hl_hwmon_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.31, ptr @.str.2, i32 900, ptr @.str.34, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no available sensors\0A\00", [42 x i8] zeroinitializer }, align 32
@hl_hwmon_init._entry_ptr.38 = internal global ptr @hl_hwmon_init._entry.36, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@adjust_hwmon_flags._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 137, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unsupported h/w sensor type %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adjust_hwmon_flags\00", [45 x i8] zeroinitializer }, align 32
@adjust_hwmon_flags._entry_ptr = internal global ptr @adjust_hwmon_flags._entry, section ".printk_index", align 4
@switch.table.hl_is_visible = internal constant { [9 x i16], [46 x i8] } { [9 x i16] [i16 292, i16 292, i16 292, i16 0, i16 0, i16 0, i16 0, i16 292, i16 128], [46 x i8] zeroinitializer }, align 32
@switch.table.hl_is_visible.41 = internal constant { [9 x i16], [46 x i8] } { [9 x i16] [i16 292, i16 292, i16 292, i16 0, i16 0, i16 0, i16 0, i16 292, i16 128], [46 x i8] zeroinitializer }, align 32
@switch.table.hl_is_visible.42 = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 292, i16 0, i16 292, i16 292], [24 x i8] zeroinitializer }, align 32
@switch.table.hl_is_visible.43 = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 292, i16 292, i16 0, i16 128], [24 x i8] zeroinitializer }, align 32
@switch.table.hl_read = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 0, i16 256, i16 512, i16 0, i16 0, i16 0, i16 0, i16 1792], [16 x i8] zeroinitializer }, align 32
@switch.table.hl_read.44 = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 0, i16 256, i16 512, i16 0, i16 0, i16 0, i16 0, i16 1792], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 7, i64 8]
@__sancov_gen_cov_switch_values.45 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 7, i64 8]
@__sancov_gen_cov_switch_values.46 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 7, i64 8, i64 9, i64 10, i64 20, i64 23, i64 24]
@__sancov_gen_cov_switch_values.47 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 7, i64 8]
@__sancov_gen_cov_switch_values.48 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 7, i64 8, i64 9, i64 10, i64 20, i64 23]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.51 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 8]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 20, i64 24]
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 165, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 178, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 581, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 590, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 617, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 644, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 673, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 702, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 731, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 758, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 781, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 806, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 837, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 864, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant [13 x i8] c"hl_hwmon_ops\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 561, i32 31 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 890, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 895, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 900, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.213 = private constant [42 x i8] c"../drivers/misc/habanalabs/common/hwmon.c\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 137, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant [27 x i8] c"switch.table.hl_is_visible\00", align 1
@___asan_gen_.216 = private unnamed_addr constant [30 x i8] c"switch.table.hl_is_visible.41\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [30 x i8] c"switch.table.hl_is_visible.42\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [30 x i8] c"switch.table.hl_is_visible.43\00", align 1
@___asan_gen_.219 = private unnamed_addr constant [21 x i8] c"switch.table.hl_read\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [24 x i8] c"switch.table.hl_read.44\00", align 1
@llvm.compiler.used = appending global [76 x ptr] [ptr @adjust_hwmon_flags._entry, ptr @adjust_hwmon_flags._entry_ptr, ptr @hl_build_hwmon_channel_info._entry, ptr @hl_build_hwmon_channel_info._entry_ptr, ptr @hl_get_current._entry, ptr @hl_get_current._entry_ptr, ptr @hl_get_fan_speed._entry, ptr @hl_get_fan_speed._entry_ptr, ptr @hl_get_power._entry, ptr @hl_get_power._entry_ptr, ptr @hl_get_pwm_info._entry, ptr @hl_get_pwm_info._entry_ptr, ptr @hl_get_temperature._entry, ptr @hl_get_temperature._entry_ptr, ptr @hl_get_voltage._entry, ptr @hl_get_voltage._entry_ptr, ptr @hl_hwmon_init._entry, ptr @hl_hwmon_init._entry.32, ptr @hl_hwmon_init._entry.36, ptr @hl_hwmon_init._entry_ptr, ptr @hl_hwmon_init._entry_ptr.35, ptr @hl_hwmon_init._entry_ptr.38, ptr @hl_set_current._entry, ptr @hl_set_current._entry_ptr, ptr @hl_set_power._entry, ptr @hl_set_power._entry_ptr, ptr @hl_set_pwm_info._entry, ptr @hl_set_pwm_info._entry_ptr, ptr @hl_set_temperature._entry, ptr @hl_set_temperature._entry_ptr, ptr @hl_set_voltage._entry, ptr @hl_set_voltage._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @hl_hwmon_ops, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @switch.table.hl_is_visible, ptr @switch.table.hl_is_visible.41, ptr @switch.table.hl_is_visible.42, ptr @switch.table.hl_is_visible.43, ptr @switch.table.hl_read, ptr @switch.table.hl_read.44], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_build_hwmon_channel_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_get_temperature._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_set_temperature._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_get_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_get_current._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_get_fan_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_get_pwm_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_set_pwm_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_set_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_set_current._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_set_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_get_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_hwmon_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_hwmon_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_hwmon_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adjust_hwmon_flags._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hl_is_visible to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hl_is_visible.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hl_is_visible.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hl_is_visible.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hl_read to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hl_read.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_build_hwmon_channel_info(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readonly %sensors_arr) local_unnamed_addr #0 align 64 {
entry:
  %sensors_by_type_next_index = alloca [10 x i32], align 4
  %sensors_by_type = alloca [10 x ptr], align 4
  %counts = alloca [10 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sensors_by_type_next_index) #8
  %0 = call ptr @memset(ptr %sensors_by_type_next_index, i32 0, i32 40)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sensors_by_type) #8
  %1 = call ptr @memset(ptr %sensors_by_type, i32 0, i32 40)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %counts) #8
  %2 = call ptr @memset(ptr %counts, i32 0, i32 40)
  br label %for.body

for.body:                                         ; preds = %if.end8.for.body_crit_edge, %entry
  %i.0224 = phi i32 [ 0, %entry ], [ %inc11, %if.end8.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cpucp_sensor, ptr %sensors_arr, i32 %i.0224
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp2 = icmp eq i32 %4, 0
  br i1 %cmp2, label %land.lhs.true, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %flags4 = getelementptr %struct.cpucp_sensor, ptr %sensors_arr, i32 %i.0224, i32 1
  %6 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp5 = icmp eq i32 %7, 0
  br i1 %cmp5, label %land.lhs.true.for.end_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %5)
  %cmp6 = icmp ugt i32 %5, 9
  br i1 %cmp6, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str, i32 noundef %5) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %arrayidx9 = getelementptr [10 x i32], ptr %counts, i32 0, i32 %5
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx9, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %arrayidx9, align 4
  %inc11 = add nuw nsw i32 %i.0224, 1
  %exitcond.not = icmp eq i32 %inc11, 128
  br i1 %exitcond.not, label %if.end8.for.end_crit_edge, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end8.for.end_crit_edge, %land.lhs.true.for.end_crit_edge
  %arr_size.0.lcssa = phi i32 [ %i.0224, %land.lhs.true.for.end_crit_edge ], [ 128, %if.end8.for.end_crit_edge ]
  %dev24 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  br label %for.body14

for.cond37.preheader:                             ; preds = %for.inc34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arr_size.0.lcssa)
  %cmp38228.not = icmp eq i32 %arr_size.0.lcssa, 0
  br i1 %cmp38228.not, label %for.cond37.preheader.for.end51_crit_edge, label %for.body39.lr.ph

for.cond37.preheader.for.end51_crit_edge:         ; preds = %for.cond37.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end51

for.body39.lr.ph:                                 ; preds = %for.cond37.preheader
  %fw_app_cpu_boot_dev_sts0.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 54
  br label %for.body39

for.body14:                                       ; preds = %for.inc34.for.body14_crit_edge, %for.end
  %i.1227 = phi i32 [ 0, %for.end ], [ %inc35, %for.inc34.for.body14_crit_edge ]
  %num_active_sensor_types.0226 = phi i32 [ 0, %for.end ], [ %num_active_sensor_types.1, %for.inc34.for.body14_crit_edge ]
  %arrayidx15 = getelementptr [10 x i32], ptr %counts, i32 0, i32 %i.1227
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp16 = icmp eq i32 %13, 0
  br i1 %cmp16, label %for.body14.for.inc34_crit_edge, label %if.end18

for.body14.for.inc34_crit_edge:                   ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc34

if.end18:                                         ; preds = %for.body14
  %add = add i32 %13, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_build_hwmon_channel_info.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_build_hwmon_channel_info, %if.then23)) #8
          to label %do.end27 [label %if.then23], !srcloc !100

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev24, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hl_build_hwmon_channel_info.__UNIQUE_ID_ddebug299, ptr noundef %15, ptr noundef nonnull @.str.6, i32 noundef %i.1227, i32 noundef %add) #8
  br label %do.end27

do.end27:                                         ; preds = %if.then23, %if.end18
  %16 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 4) #8
  %17 = extractvalue { i32, i1 } %16, 1
  br i1 %17, label %do.end27.sensors_type_err_crit_edge, label %if.end7.i.i, !prof !101

do.end27.sensors_type_err_crit_edge:              ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %sensors_type_err

if.end7.i.i:                                      ; preds = %do.end27
  %18 = extractvalue { i32, i1 } %16, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %18, i32 noundef 3520) #12
  %tobool29.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool29.not, label %if.end7.i.i.sensors_type_err_crit_edge, label %if.end31

if.end7.i.i.sensors_type_err_crit_edge:           ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sensors_type_err

if.end31:                                         ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc32 = add i32 %num_active_sensor_types.0226, 1
  %arrayidx33 = getelementptr [10 x ptr], ptr %sensors_by_type, i32 0, i32 %i.1227
  %19 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call8.i.i, ptr %arrayidx33, align 4
  br label %for.inc34

for.inc34:                                        ; preds = %if.end31, %for.body14.for.inc34_crit_edge
  %num_active_sensor_types.1 = phi i32 [ %num_active_sensor_types.0226, %for.body14.for.inc34_crit_edge ], [ %inc32, %if.end31 ]
  %inc35 = add nuw nsw i32 %i.1227, 1
  %exitcond239.not = icmp eq i32 %inc35, 10
  br i1 %exitcond239.not, label %for.cond37.preheader, label %for.inc34.for.body14_crit_edge

for.inc34.for.body14_crit_edge:                   ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body14

for.body39:                                       ; preds = %adjust_hwmon_flags.exit.for.body39_crit_edge, %for.body39.lr.ph
  %i.2229 = phi i32 [ 0, %for.body39.lr.ph ], [ %inc50, %adjust_hwmon_flags.exit.for.body39_crit_edge ]
  %arrayidx40 = getelementptr %struct.cpucp_sensor, ptr %sensors_arr, i32 %i.2229
  %20 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx40, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %arrayidx42 = getelementptr [10 x ptr], ptr %sensors_by_type, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx42, align 4
  %flags44 = getelementptr %struct.cpucp_sensor, ptr %sensors_arr, i32 %i.2229, i32 1
  %25 = ptrtoint ptr %flags44 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags44, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = ptrtoint ptr %fw_app_cpu_boot_dev_sts0.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fw_app_cpu_boot_dev_sts0.i, align 8
  %and.i = and i32 %29, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body39.adjust_hwmon_flags.exit_crit_edge, label %if.then.i

for.body39.adjust_hwmon_flags.exit_crit_edge:     ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #10
  br label %adjust_hwmon_flags.exit

if.then.i:                                        ; preds = %for.body39
  %30 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %do.end.i [
    i32 1, label %if.else.i
    i32 2, label %if.else7.i
    i32 3, label %if.else14.i
    i32 7, label %if.else21.i
    i32 8, label %if.then.i.adjust_hwmon_flags.exit_crit_edge
    i32 4, label %if.else29.i
  ]

if.then.i.adjust_hwmon_flags.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adjust_hwmon_flags.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i = shl i32 %27, 1
  %or.i = or i32 %shl.i, 1
  br label %adjust_hwmon_flags.exit

if.else7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl8.i = shl i32 %27, 1
  %or9.i = or i32 %shl8.i, 1
  br label %adjust_hwmon_flags.exit

if.else14.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl15.i = shl i32 %27, 1
  %or16.i = or i32 %shl15.i, 1
  br label %adjust_hwmon_flags.exit

if.else21.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl22.i = shl i32 %27, 1
  %or23.i = or i32 %shl22.i, 1
  br label %adjust_hwmon_flags.exit

if.else29.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl30.i = shl i32 %27, 1
  %or31.i = or i32 %shl30.i, 1
  br label %adjust_hwmon_flags.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.39, i32 noundef %22) #11
  br label %adjust_hwmon_flags.exit

adjust_hwmon_flags.exit:                          ; preds = %do.end.i, %if.else29.i, %if.else21.i, %if.else14.i, %if.else7.i, %if.else.i, %if.then.i.adjust_hwmon_flags.exit_crit_edge, %for.body39.adjust_hwmon_flags.exit_crit_edge
  %flags.0.i = phi i32 [ %27, %do.end.i ], [ %or31.i, %if.else29.i ], [ %or23.i, %if.else21.i ], [ %or16.i, %if.else14.i ], [ %or9.i, %if.else7.i ], [ %or.i, %if.else.i ], [ %27, %if.then.i.adjust_hwmon_flags.exit_crit_edge ], [ %27, %for.body39.adjust_hwmon_flags.exit_crit_edge ]
  %arrayidx46 = getelementptr [10 x i32], ptr %sensors_by_type_next_index, i32 0, i32 %22
  %33 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx46, align 4
  %inc47 = add i32 %34, 1
  store i32 %inc47, ptr %arrayidx46, align 4
  %arrayidx48 = getelementptr i32, ptr %24, i32 %34
  %35 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %flags.0.i, ptr %arrayidx48, align 4
  %inc50 = add nuw nsw i32 %i.2229, 1
  %exitcond240.not = icmp eq i32 %inc50, %arr_size.0.lcssa
  br i1 %exitcond240.not, label %adjust_hwmon_flags.exit.for.end51_crit_edge, label %adjust_hwmon_flags.exit.for.body39_crit_edge

adjust_hwmon_flags.exit.for.body39_crit_edge:     ; preds = %adjust_hwmon_flags.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body39

adjust_hwmon_flags.exit.for.end51_crit_edge:      ; preds = %adjust_hwmon_flags.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end51

for.end51:                                        ; preds = %adjust_hwmon_flags.exit.for.end51_crit_edge, %for.cond37.preheader.for.end51_crit_edge
  %add52 = add i32 %num_active_sensor_types.1, 1
  %36 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add52, i32 4) #8
  %37 = extractvalue { i32, i1 } %36, 1
  br i1 %37, label %for.end51.sensors_type_err_crit_edge, label %if.end7.i.i208, !prof !101

for.end51.sensors_type_err_crit_edge:             ; preds = %for.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %sensors_type_err

if.end7.i.i208:                                   ; preds = %for.end51
  %38 = extractvalue { i32, i1 } %36, 0
  %call8.i.i207 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %38, i32 noundef 3520) #12
  %tobool54.not = icmp eq ptr %call8.i.i207, null
  br i1 %tobool54.not, label %if.end7.i.i208.sensors_type_err_crit_edge, label %for.cond57.preheader

if.end7.i.i208.sensors_type_err_crit_edge:        ; preds = %if.end7.i.i208
  call void @__sanitizer_cov_trace_pc() #10
  br label %sensors_type_err

for.cond57.preheader:                             ; preds = %if.end7.i.i208
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_active_sensor_types.1)
  %cmp58230.not = icmp eq i32 %num_active_sensor_types.1, 0
  br i1 %cmp58230.not, label %for.cond57.preheader.for.cond69.preheader_crit_edge, label %for.cond57.preheader.for.body59_crit_edge

for.cond57.preheader.for.body59_crit_edge:        ; preds = %for.cond57.preheader
  br label %for.body59

for.cond57.preheader.for.cond69.preheader_crit_edge: ; preds = %for.cond57.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond69.preheader

for.cond57:                                       ; preds = %for.body59
  %inc67 = add nuw i32 %i.3231, 1
  %exitcond241.not = icmp eq i32 %inc67, %num_active_sensor_types.1
  br i1 %exitcond241.not, label %for.cond57.for.cond69.preheader_crit_edge, label %for.cond57.for.body59_crit_edge

for.cond57.for.body59_crit_edge:                  ; preds = %for.cond57
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body59

for.cond57.for.cond69.preheader_crit_edge:        ; preds = %for.cond57
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond69.preheader

for.cond69.preheader:                             ; preds = %for.cond57.for.cond69.preheader_crit_edge, %for.cond57.preheader.for.cond69.preheader_crit_edge
  %39 = ptrtoint ptr %sensors_by_type to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sensors_by_type, align 4
  %tobool73.not = icmp eq ptr %40, null
  br i1 %tobool73.not, label %for.cond69.preheader.for.inc81_crit_edge, label %if.end75

for.cond69.preheader.for.inc81_crit_edge:         ; preds = %for.cond69.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc81

for.body59:                                       ; preds = %for.cond57.for.body59_crit_edge, %for.cond57.preheader.for.body59_crit_edge
  %i.3231 = phi i32 [ %inc67, %for.cond57.for.body59_crit_edge ], [ 0, %for.cond57.preheader.for.body59_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %41 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3520, i32 noundef 8) #13
  %arrayidx61 = getelementptr ptr, ptr %call8.i.i207, i32 %i.3231
  %42 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call7.i.i, ptr %arrayidx61, align 4
  %tobool63.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool63.not, label %for.body59.for.body86_crit_edge, label %for.cond57

for.body59.for.body86_crit_edge:                  ; preds = %for.body59
  br label %for.body86

if.end75:                                         ; preds = %for.cond69.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %call8.i.i207 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call8.i.i207, align 128
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %44, align 4
  %46 = load ptr, ptr %call8.i.i207, align 128
  %config = getelementptr inbounds %struct.hwmon_channel_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %40, ptr %config, align 4
  br label %for.inc81

for.inc81:                                        ; preds = %if.end75, %for.cond69.preheader.for.inc81_crit_edge
  %j.1 = phi i32 [ 1, %if.end75 ], [ 0, %for.cond69.preheader.for.inc81_crit_edge ]
  %arrayidx72.1 = getelementptr inbounds [10 x ptr], ptr %sensors_by_type, i32 0, i32 1
  %48 = ptrtoint ptr %arrayidx72.1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx72.1, align 4
  %tobool73.not.1 = icmp eq ptr %49, null
  br i1 %tobool73.not.1, label %for.inc81.for.inc81.1_crit_edge, label %if.end75.1

for.inc81.for.inc81.1_crit_edge:                  ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc81.1

if.end75.1:                                       ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx76.1 = getelementptr ptr, ptr %call8.i.i207, i32 %j.1
  %50 = ptrtoint ptr %arrayidx76.1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx76.1, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %51, align 4
  %53 = load ptr, ptr %arrayidx76.1, align 4
  %config.1 = getelementptr inbounds %struct.hwmon_channel_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %config.1 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %49, ptr %config.1, align 4
  %inc80.1 = add nuw nsw i32 %j.1, 1
  br label %for.inc81.1

for.inc81.1:                                      ; preds = %if.end75.1, %for.inc81.for.inc81.1_crit_edge
  %j.1.1 = phi i32 [ %inc80.1, %if.end75.1 ], [ %j.1, %for.inc81.for.inc81.1_crit_edge ]
  %arrayidx72.2 = getelementptr inbounds [10 x ptr], ptr %sensors_by_type, i32 0, i32 2
  %55 = ptrtoint ptr %arrayidx72.2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx72.2, align 4
  %tobool73.not.2 = icmp eq ptr %56, null
  br i1 %tobool73.not.2, label %for.inc81.1.for.inc81.2_crit_edge, label %if.end75.2

for.inc81.1.for.inc81.2_crit_edge:                ; preds = %for.inc81.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc81.2

if.end75.2:                                       ; preds = %for.inc81.1
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx76.2 = getelementptr ptr, ptr %call8.i.i207, i32 %j.1.1
  %57 = ptrtoint ptr %arrayidx76.2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx76.2, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 2, ptr %58, align 4
  %60 = load ptr, ptr %arrayidx76.2, align 4
  %config.2 = getelementptr inbounds %struct.hwmon_channel_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %config.2 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %56, ptr %config.2, align 4
  %inc80.2 = add nuw nsw i32 %j.1.1, 1
  br label %for.inc81.2

for.inc81.2:                                      ; preds = %if.end75.2, %for.inc81.1.for.inc81.2_crit_edge
  %j.1.2 = phi i32 [ %inc80.2, %if.end75.2 ], [ %j.1.1, %for.inc81.1.for.inc81.2_crit_edge ]
  %arrayidx72.3 = getelementptr inbounds [10 x ptr], ptr %sensors_by_type, i32 0, i32 3
  %62 = ptrtoint ptr %arrayidx72.3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx72.3, align 4
  %tobool73.not.3 = icmp eq ptr %63, null
  br i1 %tobool73.not.3, label %for.inc81.2.for.inc81.3_crit_edge, label %if.end75.3

for.inc81.2.for.inc81.3_crit_edge:                ; preds = %for.inc81.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc81.3

if.end75.3:                                       ; preds = %for.inc81.2
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx76.3 = getelementptr ptr, ptr %call8.i.i207, i32 %j.1.2
  %64 = ptrtoint ptr %arrayidx76.3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx76.3, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 3, ptr %65, align 4
  %67 = load ptr, ptr %arrayidx76.3, align 4
  %config.3 = getelementptr inbounds %struct.hwmon_channel_info, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %config.3 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %63, ptr %config.3, align 4
  %inc80.3 = add nuw nsw i32 %j.1.2, 1
  br label %for.inc81.3

for.inc81.3:                                      ; preds = %if.end75.3, %for.inc81.2.for.inc81.3_crit_edge
  %j.1.3 = phi i32 [ %inc80.3, %if.end75.3 ], [ %j.1.2, %for.inc81.2.for.inc81.3_crit_edge ]
  %arrayidx72.4 = getelementptr inbounds [10 x ptr], ptr %sensors_by_type, i32 0, i32 4
  %69 = ptrtoint ptr %arrayidx72.4 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx72.4, align 4
  %tobool73.not.4 = icmp eq ptr %70, null
  br i1 %tobool73.not.4, label %for.inc81.3.for.inc81.4_crit_edge, label %if.end75.4

for.inc81.3.for.inc81.4_crit_edge:                ; preds = %for.inc81.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc81.4

if.end75.4:                                       ; preds = %for.inc81.3
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx76.4 = getelementptr ptr, ptr %call8.i.i207, i32 %j.1.3
  %71 = ptrtoint ptr %arrayidx76.4 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx76.4, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 4, ptr %72, align 4
  %74 = load ptr, ptr %arrayidx76.4, align 4
  %config.4 = getelementptr inbounds %struct.hwmon_channel_info, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %config.4 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %70, ptr %config.4, align 4
  %inc80.4 = add nuw nsw i32 %j.1.3, 1
  br label %for.inc81.4

for.inc81.4:                                      ; preds = %if.end75.4, %for.inc81.3.for.inc81.4_crit_edge
  %j.1.4 = phi i32 [ %inc80.4, %if.end75.4 ], [ %j.1.3, %for.inc81.3.for.inc81.4_crit_edge ]
  %arrayidx72.5 = getelementptr inbounds [10 x ptr], ptr %sensors_by_type, i32 0, i32 5
  %76 = ptrtoint ptr %arrayidx72.5 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx72.5, align 4
  %tobool73.not.5 = icmp eq ptr %77, null
  br i1 %tobool73.not.5, label %for.inc81.4.for.inc81.5_crit_edge, label %if.end75.5

for.inc81.4.for.inc81.5_crit_edge:                ; preds = %for.inc81.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc81.5

if.end75.5:                                       ; preds = %for.inc81.4
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx76.5 = getelementptr ptr, ptr %call8.i.i207, i32 %j.1.4
  %78 = ptrtoint ptr %arrayidx76.5 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx76.5, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 5, ptr %79, align 4
  %81 = load ptr, ptr %arrayidx76.5, align 4
  %config.5 = getelementptr inbounds %struct.hwmon_channel_info, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %config.5 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %77, ptr %config.5, align 4
  %inc80.5 = add nuw nsw i32 %j.1.4, 1
  br label %for.inc81.5

for.inc81.5:                                      ; preds = %if.end75.5, %for.inc81.4.for.inc81.5_crit_edge
  %j.1.5 = phi i32 [ %inc80.5, %if.end75.5 ], [ %j.1.4, %for.inc81.4.for.inc81.5_crit_edge ]
  %arrayidx72.6 = getelementptr inbounds [10 x ptr], ptr %sensors_by_type, i32 0, i32 6
  %83 = ptrtoint ptr %arrayidx72.6 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx72.6, align 4
  %tobool73.not.6 = icmp eq ptr %84, null
  br i1 %tobool73.not.6, label %for.inc81.5.for.inc81.6_crit_edge, label %if.end75.6

for.inc81.5.for.inc81.6_crit_edge:                ; preds = %for.inc81.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc81.6

if.end75.6:                                       ; preds = %for.inc81.5
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx76.6 = getelementptr ptr, ptr %call8.i.i207, i32 %j.1.5
  %85 = ptrtoint ptr %arrayidx76.6 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx76.6, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 6, ptr %86, align 4
  %88 = load ptr, ptr %arrayidx76.6, align 4
  %config.6 = getelementptr inbounds %struct.hwmon_channel_info, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %config.6 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %84, ptr %config.6, align 4
  %inc80.6 = add nuw nsw i32 %j.1.5, 1
  br label %for.inc81.6

for.inc81.6:                                      ; preds = %if.end75.6, %for.inc81.5.for.inc81.6_crit_edge
  %j.1.6 = phi i32 [ %inc80.6, %if.end75.6 ], [ %j.1.5, %for.inc81.5.for.inc81.6_crit_edge ]
  %arrayidx72.7 = getelementptr inbounds [10 x ptr], ptr %sensors_by_type, i32 0, i32 7
  %90 = ptrtoint ptr %arrayidx72.7 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx72.7, align 4
  %tobool73.not.7 = icmp eq ptr %91, null
  br i1 %tobool73.not.7, label %for.inc81.6.for.inc81.7_crit_edge, label %if.end75.7

for.inc81.6.for.inc81.7_crit_edge:                ; preds = %for.inc81.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc81.7

if.end75.7:                                       ; preds = %for.inc81.6
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx76.7 = getelementptr ptr, ptr %call8.i.i207, i32 %j.1.6
  %92 = ptrtoint ptr %arrayidx76.7 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx76.7, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 7, ptr %93, align 4
  %95 = load ptr, ptr %arrayidx76.7, align 4
  %config.7 = getelementptr inbounds %struct.hwmon_channel_info, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %config.7 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %91, ptr %config.7, align 4
  %inc80.7 = add nuw nsw i32 %j.1.6, 1
  br label %for.inc81.7

for.inc81.7:                                      ; preds = %if.end75.7, %for.inc81.6.for.inc81.7_crit_edge
  %j.1.7 = phi i32 [ %inc80.7, %if.end75.7 ], [ %j.1.6, %for.inc81.6.for.inc81.7_crit_edge ]
  %arrayidx72.8 = getelementptr inbounds [10 x ptr], ptr %sensors_by_type, i32 0, i32 8
  %97 = ptrtoint ptr %arrayidx72.8 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx72.8, align 4
  %tobool73.not.8 = icmp eq ptr %98, null
  br i1 %tobool73.not.8, label %for.inc81.7.for.inc81.8_crit_edge, label %if.end75.8

for.inc81.7.for.inc81.8_crit_edge:                ; preds = %for.inc81.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc81.8

if.end75.8:                                       ; preds = %for.inc81.7
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx76.8 = getelementptr ptr, ptr %call8.i.i207, i32 %j.1.7
  %99 = ptrtoint ptr %arrayidx76.8 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx76.8, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 8, ptr %100, align 4
  %102 = load ptr, ptr %arrayidx76.8, align 4
  %config.8 = getelementptr inbounds %struct.hwmon_channel_info, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %config.8 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %98, ptr %config.8, align 4
  %inc80.8 = add nuw nsw i32 %j.1.7, 1
  br label %for.inc81.8

for.inc81.8:                                      ; preds = %if.end75.8, %for.inc81.7.for.inc81.8_crit_edge
  %j.1.8 = phi i32 [ %inc80.8, %if.end75.8 ], [ %j.1.7, %for.inc81.7.for.inc81.8_crit_edge ]
  %arrayidx72.9 = getelementptr inbounds [10 x ptr], ptr %sensors_by_type, i32 0, i32 9
  %104 = ptrtoint ptr %arrayidx72.9 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx72.9, align 4
  %tobool73.not.9 = icmp eq ptr %105, null
  br i1 %tobool73.not.9, label %for.inc81.8.for.inc81.9_crit_edge, label %if.end75.9

for.inc81.8.for.inc81.9_crit_edge:                ; preds = %for.inc81.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc81.9

if.end75.9:                                       ; preds = %for.inc81.8
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx76.9 = getelementptr ptr, ptr %call8.i.i207, i32 %j.1.8
  %106 = ptrtoint ptr %arrayidx76.9 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx76.9, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 9, ptr %107, align 4
  %109 = load ptr, ptr %arrayidx76.9, align 4
  %config.9 = getelementptr inbounds %struct.hwmon_channel_info, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %config.9 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %105, ptr %config.9, align 4
  br label %for.inc81.9

for.inc81.9:                                      ; preds = %if.end75.9, %for.inc81.8.for.inc81.9_crit_edge
  %hl_chip_info = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 38
  %111 = ptrtoint ptr %hl_chip_info to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %hl_chip_info, align 8
  %info = getelementptr inbounds %struct.hwmon_chip_info, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call8.i.i207, ptr %info, align 4
  br label %cleanup

for.body86:                                       ; preds = %for.inc94.for.body86_crit_edge, %for.body59.for.body86_crit_edge
  %i.5236 = phi i32 [ %inc95, %for.inc94.for.body86_crit_edge ], [ 0, %for.body59.for.body86_crit_edge ]
  %arrayidx87 = getelementptr ptr, ptr %call8.i.i207, i32 %i.5236
  %114 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx87, align 4
  %tobool88.not = icmp eq ptr %115, null
  br i1 %tobool88.not, label %for.body86.for.inc94_crit_edge, label %if.then89

for.body86.for.inc94_crit_edge:                   ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc94

if.then89:                                        ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #10
  %config91 = getelementptr inbounds %struct.hwmon_channel_info, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %config91 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %config91, align 4
  tail call void @kfree(ptr noundef %117) #8
  %118 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx87, align 4
  tail call void @kfree(ptr noundef %119) #8
  br label %for.inc94

for.inc94:                                        ; preds = %if.then89, %for.body86.for.inc94_crit_edge
  %inc95 = add nuw i32 %i.5236, 1
  %exitcond242.not = icmp eq i32 %inc95, %num_active_sensor_types.1
  br i1 %exitcond242.not, label %for.end96, label %for.inc94.for.body86_crit_edge

for.inc94.for.body86_crit_edge:                   ; preds = %for.inc94
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body86

for.end96:                                        ; preds = %for.inc94
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call8.i.i207) #8
  br label %sensors_type_err

sensors_type_err:                                 ; preds = %for.end96, %if.end7.i.i208.sensors_type_err_crit_edge, %for.end51.sensors_type_err_crit_edge, %if.end7.i.i.sensors_type_err_crit_edge, %do.end27.sensors_type_err_crit_edge
  %120 = ptrtoint ptr %sensors_by_type to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %sensors_by_type, align 4
  tail call void @kfree(ptr noundef %121) #8
  %arrayidx100.1 = getelementptr inbounds [10 x ptr], ptr %sensors_by_type, i32 0, i32 1
  %122 = ptrtoint ptr %arrayidx100.1 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx100.1, align 4
  tail call void @kfree(ptr noundef %123) #8
  %arrayidx100.2 = getelementptr inbounds [10 x ptr], ptr %sensors_by_type, i32 0, i32 2
  %124 = ptrtoint ptr %arrayidx100.2 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx100.2, align 4
  tail call void @kfree(ptr noundef %125) #8
  %arrayidx100.3 = getelementptr inbounds [10 x ptr], ptr %sensors_by_type, i32 0, i32 3
  %126 = ptrtoint ptr %arrayidx100.3 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx100.3, align 4
  tail call void @kfree(ptr noundef %127) #8
  %arrayidx100.4 = getelementptr inbounds [10 x ptr], ptr %sensors_by_type, i32 0, i32 4
  %128 = ptrtoint ptr %arrayidx100.4 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %arrayidx100.4, align 4
  tail call void @kfree(ptr noundef %129) #8
  %arrayidx100.5 = getelementptr inbounds [10 x ptr], ptr %sensors_by_type, i32 0, i32 5
  %130 = ptrtoint ptr %arrayidx100.5 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx100.5, align 4
  tail call void @kfree(ptr noundef %131) #8
  %arrayidx100.6 = getelementptr inbounds [10 x ptr], ptr %sensors_by_type, i32 0, i32 6
  %132 = ptrtoint ptr %arrayidx100.6 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %arrayidx100.6, align 4
  tail call void @kfree(ptr noundef %133) #8
  %arrayidx100.7 = getelementptr inbounds [10 x ptr], ptr %sensors_by_type, i32 0, i32 7
  %134 = ptrtoint ptr %arrayidx100.7 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx100.7, align 4
  tail call void @kfree(ptr noundef %135) #8
  %arrayidx100.8 = getelementptr inbounds [10 x ptr], ptr %sensors_by_type, i32 0, i32 8
  %136 = ptrtoint ptr %arrayidx100.8 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx100.8, align 4
  tail call void @kfree(ptr noundef %137) #8
  %arrayidx100.9 = getelementptr inbounds [10 x ptr], ptr %sensors_by_type, i32 0, i32 9
  %138 = ptrtoint ptr %arrayidx100.9 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx100.9, align 4
  tail call void @kfree(ptr noundef %139) #8
  br label %cleanup

cleanup:                                          ; preds = %sensors_type_err, %for.inc81.9, %do.end
  %retval.0 = phi i32 [ 0, %for.inc81.9 ], [ -22, %do.end ], [ -12, %sensors_type_err ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %counts) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sensors_by_type) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sensors_by_type_next_index) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_get_temperature(ptr noundef %hdev, i32 noundef %sensor_index, i32 noundef %attr, ptr nocapture noundef writeonly %value) local_unnamed_addr #0 align 64 {
entry:
  %pkt = alloca %struct.cpucp_packet, align 8
  %result = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt) #8
  %0 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %result) #8
  %2 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %result, align 8, !annotation !102
  %3 = call ptr @memset(ptr %pkt, i32 0, i32 24)
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 768, ptr %0, align 8
  %conv = trunc i32 %sensor_index to i16
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %1, align 8
  %conv2 = trunc i32 %attr to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv2)
  %type = getelementptr inbounds %struct.anon.104, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %type, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_get_temperature.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_get_temperature, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !100

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %0, align 8
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %1, align 8
  %conv7 = zext i16 %14 to i32
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %type, align 2
  %conv9 = zext i16 %16 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hl_get_temperature.__UNIQUE_ID_ddebug300, ptr noundef %10, ptr noundef nonnull @.str.8, i32 noundef %12, i32 noundef %conv7, i32 noundef %conv9) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %17 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %asic_funcs, align 8
  %send_cpu_message = getelementptr inbounds %struct.hl_asic_funcs, ptr %18, i32 0, i32 54
  %19 = ptrtoint ptr %send_cpu_message to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %send_cpu_message, align 4
  %call10 = call i32 %20(ptr noundef %hdev, ptr noundef nonnull %pkt, i16 noundef zeroext 24, i32 noundef 0, ptr noundef nonnull %result) #8
  %21 = ptrtoint ptr %result to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %result, align 8
  %conv11 = trunc i64 %22 to i32
  %23 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv11, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool12.not = icmp eq i32 %call10, 0
  br i1 %tobool12.not, label %do.end.if.end18_crit_edge, label %do.end16

do.end.if.end18_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

do.end16:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev17 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %24 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev17, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.9, i32 noundef %sensor_index, i32 noundef %call10) #11
  %26 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %value, align 4
  br label %if.end18

if.end18:                                         ; preds = %do.end16, %do.end.if.end18_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt) #8
  ret i32 %call10
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_set_temperature(ptr noundef %hdev, i32 noundef %sensor_index, i32 noundef %attr, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  %pkt = alloca %struct.cpucp_packet, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt) #8
  %0 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt, i32 0, i32 3
  %2 = getelementptr inbounds i8, ptr %pkt, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 16)
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 6144, ptr %0, align 8
  %conv = trunc i32 %sensor_index to i16
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %1, align 8
  %conv2 = trunc i32 %attr to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv2)
  %type = getelementptr inbounds %struct.anon.104, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %type, align 2
  %conv3 = sext i32 %value to i64
  %9 = tail call i64 @llvm.bswap.i64(i64 %conv3)
  %10 = ptrtoint ptr %pkt to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %pkt, align 8
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %11 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %asic_funcs, align 8
  %send_cpu_message = getelementptr inbounds %struct.hl_asic_funcs, ptr %12, i32 0, i32 54
  %13 = ptrtoint ptr %send_cpu_message to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %send_cpu_message, align 4
  %call = call i32 %14(ptr noundef %hdev, ptr noundef nonnull %pkt, i16 noundef zeroext 24, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.10, i32 noundef %sensor_index, i32 noundef %call) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt) #8
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_get_voltage(ptr noundef %hdev, i32 noundef %sensor_index, i32 noundef %attr, ptr nocapture noundef writeonly %value) local_unnamed_addr #0 align 64 {
entry:
  %pkt = alloca %struct.cpucp_packet, align 8
  %result = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt) #8
  %0 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %result) #8
  %2 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %result, align 8, !annotation !102
  %3 = call ptr @memset(ptr %pkt, i32 0, i32 24)
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1024, ptr %0, align 8
  %conv = trunc i32 %sensor_index to i16
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %1, align 8
  %conv2 = trunc i32 %attr to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv2)
  %type = getelementptr inbounds %struct.anon.104, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %type, align 2
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %9 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %asic_funcs, align 8
  %send_cpu_message = getelementptr inbounds %struct.hl_asic_funcs, ptr %10, i32 0, i32 54
  %11 = ptrtoint ptr %send_cpu_message to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %send_cpu_message, align 4
  %call = call i32 %12(ptr noundef %hdev, ptr noundef nonnull %pkt, i16 noundef zeroext 24, i32 noundef 0, ptr noundef nonnull %result) #8
  %13 = ptrtoint ptr %result to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %result, align 8
  %conv3 = trunc i64 %14 to i32
  %15 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv3, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.12, i32 noundef %sensor_index, i32 noundef %call) #11
  %18 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %value, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_get_current(ptr noundef %hdev, i32 noundef %sensor_index, i32 noundef %attr, ptr nocapture noundef writeonly %value) local_unnamed_addr #0 align 64 {
entry:
  %pkt = alloca %struct.cpucp_packet, align 8
  %result = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt) #8
  %0 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %result) #8
  %2 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %result, align 8, !annotation !102
  %3 = call ptr @memset(ptr %pkt, i32 0, i32 24)
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1280, ptr %0, align 8
  %conv = trunc i32 %sensor_index to i16
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %1, align 8
  %conv2 = trunc i32 %attr to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv2)
  %type = getelementptr inbounds %struct.anon.104, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %type, align 2
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %9 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %asic_funcs, align 8
  %send_cpu_message = getelementptr inbounds %struct.hl_asic_funcs, ptr %10, i32 0, i32 54
  %11 = ptrtoint ptr %send_cpu_message to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %send_cpu_message, align 4
  %call = call i32 %12(ptr noundef %hdev, ptr noundef nonnull %pkt, i16 noundef zeroext 24, i32 noundef 0, ptr noundef nonnull %result) #8
  %13 = ptrtoint ptr %result to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %result, align 8
  %conv3 = trunc i64 %14 to i32
  %15 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv3, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.14, i32 noundef %sensor_index, i32 noundef %call) #11
  %18 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %value, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_get_fan_speed(ptr noundef %hdev, i32 noundef %sensor_index, i32 noundef %attr, ptr nocapture noundef writeonly %value) local_unnamed_addr #0 align 64 {
entry:
  %pkt = alloca %struct.cpucp_packet, align 8
  %result = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt) #8
  %0 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %result) #8
  %2 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %result, align 8, !annotation !102
  %3 = call ptr @memset(ptr %pkt, i32 0, i32 24)
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1536, ptr %0, align 8
  %conv = trunc i32 %sensor_index to i16
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %1, align 8
  %conv2 = trunc i32 %attr to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv2)
  %type = getelementptr inbounds %struct.anon.104, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %type, align 2
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %9 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %asic_funcs, align 8
  %send_cpu_message = getelementptr inbounds %struct.hl_asic_funcs, ptr %10, i32 0, i32 54
  %11 = ptrtoint ptr %send_cpu_message to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %send_cpu_message, align 4
  %call = call i32 %12(ptr noundef %hdev, ptr noundef nonnull %pkt, i16 noundef zeroext 24, i32 noundef 0, ptr noundef nonnull %result) #8
  %13 = ptrtoint ptr %result to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %result, align 8
  %conv3 = trunc i64 %14 to i32
  %15 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv3, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.16, i32 noundef %sensor_index, i32 noundef %call) #11
  %18 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %value, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_get_pwm_info(ptr noundef %hdev, i32 noundef %sensor_index, i32 noundef %attr, ptr nocapture noundef writeonly %value) local_unnamed_addr #0 align 64 {
entry:
  %pkt = alloca %struct.cpucp_packet, align 8
  %result = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt) #8
  %0 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %result) #8
  %2 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %result, align 8, !annotation !102
  %3 = call ptr @memset(ptr %pkt, i32 0, i32 24)
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1792, ptr %0, align 8
  %conv = trunc i32 %sensor_index to i16
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %1, align 8
  %conv2 = trunc i32 %attr to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv2)
  %type = getelementptr inbounds %struct.anon.104, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %type, align 2
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %9 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %asic_funcs, align 8
  %send_cpu_message = getelementptr inbounds %struct.hl_asic_funcs, ptr %10, i32 0, i32 54
  %11 = ptrtoint ptr %send_cpu_message to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %send_cpu_message, align 4
  %call = call i32 %12(ptr noundef %hdev, ptr noundef nonnull %pkt, i16 noundef zeroext 24, i32 noundef 0, ptr noundef nonnull %result) #8
  %13 = ptrtoint ptr %result to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %result, align 8
  %conv3 = trunc i64 %14 to i32
  %15 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv3, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.18, i32 noundef %sensor_index, i32 noundef %call) #11
  %18 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %value, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_set_pwm_info(ptr noundef %hdev, i32 noundef %sensor_index, i32 noundef %attr, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  %pkt = alloca %struct.cpucp_packet, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt) #8
  %0 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt, i32 0, i32 3
  %2 = getelementptr inbounds i8, ptr %pkt, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 16)
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2048, ptr %0, align 8
  %conv = trunc i32 %sensor_index to i16
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %1, align 8
  %conv2 = trunc i32 %attr to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv2)
  %type = getelementptr inbounds %struct.anon.104, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %type, align 2
  %conv3 = sext i32 %value to i64
  %9 = tail call i64 @llvm.bswap.i64(i64 %conv3)
  %10 = ptrtoint ptr %pkt to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %pkt, align 8
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %11 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %asic_funcs, align 8
  %send_cpu_message = getelementptr inbounds %struct.hl_asic_funcs, ptr %12, i32 0, i32 54
  %13 = ptrtoint ptr %send_cpu_message to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %send_cpu_message, align 4
  %call = call i32 %14(ptr noundef %hdev, ptr noundef nonnull %pkt, i16 noundef zeroext 24, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.20, i32 noundef %sensor_index, i32 noundef %call) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_set_voltage(ptr noundef %hdev, i32 noundef %sensor_index, i32 noundef %attr, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  %pkt = alloca %struct.cpucp_packet, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt) #8
  %0 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt, i32 0, i32 3
  %2 = getelementptr inbounds i8, ptr %pkt, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 16)
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 6400, ptr %0, align 8
  %conv = trunc i32 %sensor_index to i16
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %1, align 8
  %conv2 = trunc i32 %attr to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv2)
  %type = getelementptr inbounds %struct.anon.104, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %type, align 2
  %conv3 = sext i32 %value to i64
  %9 = tail call i64 @llvm.bswap.i64(i64 %conv3)
  %10 = ptrtoint ptr %pkt to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %pkt, align 8
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %11 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %asic_funcs, align 8
  %send_cpu_message = getelementptr inbounds %struct.hl_asic_funcs, ptr %12, i32 0, i32 54
  %13 = ptrtoint ptr %send_cpu_message to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %send_cpu_message, align 4
  %call = call i32 %14(ptr noundef %hdev, ptr noundef nonnull %pkt, i16 noundef zeroext 24, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.22, i32 noundef %sensor_index, i32 noundef %call) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_set_current(ptr noundef %hdev, i32 noundef %sensor_index, i32 noundef %attr, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  %pkt = alloca %struct.cpucp_packet, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt) #8
  %0 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt, i32 0, i32 3
  %2 = getelementptr inbounds i8, ptr %pkt, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 16)
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 6656, ptr %0, align 8
  %conv = trunc i32 %sensor_index to i16
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %1, align 8
  %conv2 = trunc i32 %attr to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv2)
  %type = getelementptr inbounds %struct.anon.104, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %type, align 2
  %conv3 = sext i32 %value to i64
  %9 = tail call i64 @llvm.bswap.i64(i64 %conv3)
  %10 = ptrtoint ptr %pkt to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %pkt, align 8
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %11 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %asic_funcs, align 8
  %send_cpu_message = getelementptr inbounds %struct.hl_asic_funcs, ptr %12, i32 0, i32 54
  %13 = ptrtoint ptr %send_cpu_message to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %send_cpu_message, align 4
  %call = call i32 %14(ptr noundef %hdev, ptr noundef nonnull %pkt, i16 noundef zeroext 24, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.24, i32 noundef %sensor_index, i32 noundef %call) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_set_power(ptr noundef %hdev, i32 noundef %sensor_index, i32 noundef %attr, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  %pkt = alloca %struct.cpucp_packet, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt) #8
  %0 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt, i32 0, i32 3
  %2 = getelementptr inbounds i8, ptr %pkt, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 16)
  %use_get_power_for_reset_history = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 78
  %4 = ptrtoint ptr %use_get_power_for_reset_history to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %use_get_power_for_reset_history, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %. = select i1 %tobool.not, i32 11520, i32 8192
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %., ptr %0, align 8
  %conv = trunc i32 %sensor_index to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %1, align 8
  %conv3 = trunc i32 %attr to i16
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv3)
  %type = getelementptr inbounds %struct.anon.104, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %type, align 2
  %conv4 = sext i32 %value to i64
  %11 = tail call i64 @llvm.bswap.i64(i64 %conv4)
  %12 = ptrtoint ptr %pkt to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %pkt, align 8
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %13 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %asic_funcs, align 8
  %send_cpu_message = getelementptr inbounds %struct.hl_asic_funcs, ptr %14, i32 0, i32 54
  %15 = ptrtoint ptr %send_cpu_message to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %send_cpu_message, align 4
  %call = call i32 %16(ptr noundef %hdev, ptr noundef nonnull %pkt, i16 noundef zeroext 24, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %entry.if.end7_crit_edge, label %do.end

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.26, i32 noundef %sensor_index, i32 noundef %call) #11
  br label %if.end7

if.end7:                                          ; preds = %do.end, %entry.if.end7_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_get_power(ptr noundef %hdev, i32 noundef %sensor_index, i32 noundef %attr, ptr nocapture noundef writeonly %value) local_unnamed_addr #0 align 64 {
entry:
  %pkt = alloca %struct.cpucp_packet, align 8
  %result = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt) #8
  %0 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %result) #8
  %2 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %result, align 8, !annotation !102
  %3 = call ptr @memset(ptr %pkt, i32 0, i32 24)
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8192, ptr %0, align 8
  %conv = trunc i32 %sensor_index to i16
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %1, align 8
  %conv2 = trunc i32 %attr to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv2)
  %type = getelementptr inbounds %struct.anon.104, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %type, align 2
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %9 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %asic_funcs, align 8
  %send_cpu_message = getelementptr inbounds %struct.hl_asic_funcs, ptr %10, i32 0, i32 54
  %11 = ptrtoint ptr %send_cpu_message to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %send_cpu_message, align 4
  %call = call i32 %12(ptr noundef %hdev, ptr noundef nonnull %pkt, i16 noundef zeroext 24, i32 noundef 0, ptr noundef nonnull %result) #8
  %13 = ptrtoint ptr %result to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %result, align 8
  %conv3 = trunc i64 %14 to i32
  %15 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv3, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.28, i32 noundef %sensor_index, i32 noundef %call) #11
  %18 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %value, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_hwmon_init(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev3 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev3, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %dev2, %cond.true ], [ %3, %cond.false ]
  %hwmon_initialized = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 80
  %4 = ptrtoint ptr %hwmon_initialized to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hwmon_initialized, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %cond.end
  %cpu_queues_enable = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 110
  %6 = ptrtoint ptr %cpu_queues_enable to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cpu_queues_enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool5.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hl_chip_info = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 38
  %8 = ptrtoint ptr %hl_chip_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hl_chip_info, align 8
  %info = getelementptr inbounds %struct.hwmon_chip_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %do.end26, label %if.then7

if.then7:                                         ; preds = %if.end
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @hl_hwmon_ops, ptr %9, align 4
  %card_name = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 1, i32 12
  %13 = ptrtoint ptr %hl_chip_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hl_chip_info, align 8
  %call = tail call ptr @hwmon_device_register_with_info(ptr noundef %cond, ptr noundef %card_name, ptr noundef %hdev, ptr noundef %14, ptr noundef null) #8
  %hwmon_dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 37
  %15 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call, ptr %hwmon_dev, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %do.end19

if.then12:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %call to i32
  %dev15 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %17 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.30, i32 noundef %16) #11
  br label %cleanup

do.end19:                                         ; preds = %if.then7
  %dev20 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %19 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev20, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 3
  %21 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end19.dev_name.exit_crit_edge

do.end19.dev_name.exit_crit_edge:                 ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end19.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %24, %if.end.i ], [ %22, %do.end19.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.33, ptr noundef %retval.0.i) #11
  %25 = ptrtoint ptr %hwmon_initialized to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %hwmon_initialized, align 4
  br label %cleanup

do.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev27 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %26 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev27, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.37) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %dev_name.exit, %if.then12, %lor.lhs.false.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %if.then12 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %cond.end.cleanup_crit_edge ], [ 0, %do.end26 ], [ 0, %dev_name.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_hwmon_fini(ptr nocapture noundef readonly %hdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hwmon_initialized = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 80
  %0 = ptrtoint ptr %hwmon_initialized to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hwmon_initialized, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %hwmon_dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 37
  %2 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmon_dev, align 4
  tail call void @hwmon_device_unregister(ptr noundef %3) #8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwmon_device_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @hl_is_visible(ptr nocapture noundef readnone %data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %type, label %entry.sw.epilog22_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
    i32 3, label %sw.bb8
    i32 7, label %sw.bb12
    i32 8, label %sw.bb15
    i32 4, label %sw.bb18
  ]

entry.sw.epilog22_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog22

sw.bb:                                            ; preds = %entry
  %1 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %attr, label %sw.bb.sw.epilog22_crit_edge [
    i32 1, label %sw.bb.return_crit_edge
    i32 7, label %sw.bb.return_crit_edge40
    i32 8, label %sw.bb.return_crit_edge41
    i32 9, label %sw.bb.return_crit_edge42
    i32 10, label %sw.bb.return_crit_edge43
    i32 23, label %sw.bb.return_crit_edge44
    i32 20, label %sw.bb2
    i32 24, label %sw.bb3
  ]

sw.bb.return_crit_edge44:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb.return_crit_edge43:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb.return_crit_edge42:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb.return_crit_edge41:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb.return_crit_edge40:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb.sw.epilog22_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog22

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb3:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb4:                                           ; preds = %entry
  %switch.tableidx = add i32 %attr, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 9
  br i1 %2, label %switch.lookup, label %sw.bb4.sw.epilog22_crit_edge

sw.bb4.sw.epilog22_crit_edge:                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog22

sw.bb8:                                           ; preds = %entry
  %switch.tableidx29 = add i32 %attr, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx29)
  %3 = icmp ult i32 %switch.tableidx29, 9
  br i1 %3, label %switch.lookup28, label %sw.bb8.sw.epilog22_crit_edge

sw.bb8.sw.epilog22_crit_edge:                     ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog22

sw.bb12:                                          ; preds = %entry
  %switch.tableidx33 = add i32 %attr, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx33)
  %4 = icmp ult i32 %switch.tableidx33, 4
  br i1 %4, label %switch.lookup32, label %sw.bb12.sw.epilog22_crit_edge

sw.bb12.sw.epilog22_crit_edge:                    ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog22

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %attr)
  %switch = icmp ult i32 %attr, 2
  br i1 %switch, label %sw.bb15.return_crit_edge, label %sw.bb15.sw.epilog22_crit_edge

sw.bb15.sw.epilog22_crit_edge:                    ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog22

sw.bb15.return_crit_edge:                         ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb18:                                          ; preds = %entry
  %switch.tableidx37 = add i32 %attr, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx37)
  %5 = icmp ult i32 %switch.tableidx37, 4
  br i1 %5, label %switch.lookup36, label %sw.bb18.sw.epilog22_crit_edge

sw.bb18.sw.epilog22_crit_edge:                    ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog22

sw.epilog22:                                      ; preds = %sw.bb18.sw.epilog22_crit_edge, %sw.bb15.sw.epilog22_crit_edge, %sw.bb12.sw.epilog22_crit_edge, %sw.bb8.sw.epilog22_crit_edge, %sw.bb4.sw.epilog22_crit_edge, %sw.bb.sw.epilog22_crit_edge, %entry.sw.epilog22_crit_edge
  br label %return

switch.lookup:                                    ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [9 x i16], ptr @switch.table.hl_is_visible, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %6)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %return

switch.lookup28:                                  ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep30 = getelementptr inbounds [9 x i16], ptr @switch.table.hl_is_visible.41, i32 0, i32 %switch.tableidx29
  %7 = ptrtoint ptr %switch.gep30 to i32
  call void @__asan_load2_noabort(i32 %7)
  %switch.load31 = load i16, ptr %switch.gep30, align 2
  br label %return

switch.lookup32:                                  ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep34 = getelementptr inbounds [4 x i16], ptr @switch.table.hl_is_visible.42, i32 0, i32 %switch.tableidx33
  %8 = ptrtoint ptr %switch.gep34 to i32
  call void @__asan_load2_noabort(i32 %8)
  %switch.load35 = load i16, ptr %switch.gep34, align 2
  br label %return

switch.lookup36:                                  ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep38 = getelementptr inbounds [4 x i16], ptr @switch.table.hl_is_visible.43, i32 0, i32 %switch.tableidx37
  %9 = ptrtoint ptr %switch.gep38 to i32
  call void @__asan_load2_noabort(i32 %9)
  %switch.load39 = load i16, ptr %switch.gep38, align 2
  br label %return

return:                                           ; preds = %switch.lookup36, %switch.lookup32, %switch.lookup28, %switch.lookup, %sw.epilog22, %sw.bb15.return_crit_edge, %sw.bb3, %sw.bb2, %sw.bb.return_crit_edge, %sw.bb.return_crit_edge40, %sw.bb.return_crit_edge41, %sw.bb.return_crit_edge42, %sw.bb.return_crit_edge43, %sw.bb.return_crit_edge44
  %retval.0 = phi i16 [ 0, %sw.epilog22 ], [ 128, %sw.bb3 ], [ 420, %sw.bb2 ], [ 292, %sw.bb.return_crit_edge ], [ 292, %sw.bb.return_crit_edge40 ], [ 292, %sw.bb.return_crit_edge41 ], [ 292, %sw.bb.return_crit_edge42 ], [ 292, %sw.bb.return_crit_edge43 ], [ 292, %sw.bb.return_crit_edge44 ], [ 420, %sw.bb15.return_crit_edge ], [ %switch.load, %switch.lookup ], [ %switch.load31, %switch.lookup28 ], [ %switch.load35, %switch.lookup32 ], [ %switch.load39, %switch.lookup36 ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr noundef writeonly %val) #0 align 64 {
entry:
  %pkt.i243 = alloca %struct.cpucp_packet, align 8
  %result.i244 = alloca i64, align 8
  %pkt.i231 = alloca %struct.cpucp_packet, align 8
  %result.i232 = alloca i64, align 8
  %pkt.i218 = alloca %struct.cpucp_packet, align 8
  %result.i219 = alloca i64, align 8
  %pkt.i206 = alloca %struct.cpucp_packet, align 8
  %result.i207 = alloca i64, align 8
  %pkt.i193 = alloca %struct.cpucp_packet, align 8
  %result.i194 = alloca i64, align 8
  %pkt.i181 = alloca %struct.cpucp_packet, align 8
  %result.i182 = alloca i64, align 8
  %pkt.i168 = alloca %struct.cpucp_packet, align 8
  %result.i169 = alloca i64, align 8
  %pkt.i159 = alloca %struct.cpucp_packet, align 8
  %result.i160 = alloca i64, align 8
  %pkt.i141 = alloca %struct.cpucp_packet, align 8
  %result.i142 = alloca i64, align 8
  %pkt.i = alloca %struct.cpucp_packet, align 8
  %result.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call zeroext i1 @hl_device_operational(ptr noundef %1, ptr noundef null) #8
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %fw_app_cpu_boot_dev_sts0 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 54
  %2 = ptrtoint ptr %fw_app_cpu_boot_dev_sts0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_app_cpu_boot_dev_sts0, align 8
  %and = and i32 %3, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %4 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %type, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb16
    i32 3, label %sw.bb30
    i32 7, label %sw.bb44
    i32 8, label %sw.bb57
    i32 4, label %sw.bb68
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %5 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %attr, label %sw.bb.cleanup_crit_edge [
    i32 1, label %sw.bb.sw.epilog_crit_edge
    i32 7, label %sw.bb4
    i32 9, label %sw.bb5
    i32 8, label %sw.bb6
    i32 10, label %sw.bb7
    i32 20, label %sw.bb8
    i32 23, label %sw.bb9
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb5:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb6:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb7:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb8:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb9:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb.sw.epilog_crit_edge
  %cpucp_attr.0 = phi i16 [ 5632, %sw.bb9 ], [ 4864, %sw.bb8 ], [ 2304, %sw.bb7 ], [ 1792, %sw.bb6 ], [ 2048, %sw.bb5 ], [ 1536, %sw.bb4 ], [ 0, %sw.bb.sw.epilog_crit_edge ]
  br i1 %tobool.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt.i) #8
  %6 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i, i32 0, i32 1
  %7 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %result.i) #8
  %8 = ptrtoint ptr %result.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %result.i, align 8, !annotation !102
  %9 = call ptr @memset(ptr %pkt.i, i32 0, i32 24)
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 768, ptr %6, align 8
  %conv.i = trunc i32 %channel to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #8
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %7, align 8
  %type.i = getelementptr inbounds %struct.anon.104, ptr %7, i32 0, i32 1
  %13 = ptrtoint ptr %type.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %cpucp_attr.0, ptr %type.i, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_get_temperature.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_read, %if.then.i)) #8
          to label %do.end.i [label %if.then.i], !srcloc !100

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %6, align 8
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %7, align 8
  %conv7.i = zext i16 %19 to i32
  %20 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %type.i, align 2
  %conv9.i = zext i16 %21 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hl_get_temperature.__UNIQUE_ID_ddebug300, ptr noundef %15, ptr noundef nonnull @.str.8, i32 noundef %17, i32 noundef %conv7.i, i32 noundef %conv9.i) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then11
  %asic_funcs.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 34
  %22 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %asic_funcs.i, align 8
  %send_cpu_message.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %23, i32 0, i32 54
  %24 = ptrtoint ptr %send_cpu_message.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %send_cpu_message.i, align 4
  %call10.i = call i32 %25(ptr noundef %1, ptr noundef nonnull %pkt.i, i16 noundef zeroext 24, i32 noundef 0, ptr noundef nonnull %result.i) #8
  %26 = ptrtoint ptr %result.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %result.i, align 8
  %conv11.i = trunc i64 %27 to i32
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv11.i, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool12.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool12.not.i, label %do.end.i.hl_get_temperature.exit_crit_edge, label %do.end16.i

do.end.i.hl_get_temperature.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hl_get_temperature.exit

do.end16.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev17.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %29 = ptrtoint ptr %dev17.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev17.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.9, i32 noundef %channel, i32 noundef %call10.i) #11
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %val, align 4
  br label %hl_get_temperature.exit

hl_get_temperature.exit:                          ; preds = %do.end16.i, %do.end.i.hl_get_temperature.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt.i) #8
  br label %cleanup

if.else:                                          ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt.i141) #8
  %32 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i141, i32 0, i32 1
  %33 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i141, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %result.i142) #8
  %34 = ptrtoint ptr %result.i142 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 -1, ptr %result.i142, align 8, !annotation !102
  %35 = call ptr @memset(ptr %pkt.i141, i32 0, i32 24)
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 768, ptr %32, align 8
  %conv.i143 = trunc i32 %channel to i16
  %37 = tail call i16 @llvm.bswap.i16(i16 %conv.i143) #8
  %38 = ptrtoint ptr %33 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %33, align 8
  %conv2.i144 = trunc i32 %attr to i16
  %39 = tail call i16 @llvm.bswap.i16(i16 %conv2.i144) #8
  %type.i145 = getelementptr inbounds %struct.anon.104, ptr %33, i32 0, i32 1
  %40 = ptrtoint ptr %type.i145 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %type.i145, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_get_temperature.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_read, %if.then.i149)) #8
          to label %do.end.i155 [label %if.then.i149], !srcloc !100

if.then.i149:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i146 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %41 = ptrtoint ptr %dev.i146 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i146, align 4
  %43 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %32, align 8
  %45 = ptrtoint ptr %33 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %33, align 8
  %conv7.i147 = zext i16 %46 to i32
  %47 = ptrtoint ptr %type.i145 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %type.i145, align 2
  %conv9.i148 = zext i16 %48 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hl_get_temperature.__UNIQUE_ID_ddebug300, ptr noundef %42, ptr noundef nonnull @.str.8, i32 noundef %44, i32 noundef %conv7.i147, i32 noundef %conv9.i148) #8
  br label %do.end.i155

do.end.i155:                                      ; preds = %if.then.i149, %if.else
  %asic_funcs.i150 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 34
  %49 = ptrtoint ptr %asic_funcs.i150 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %asic_funcs.i150, align 8
  %send_cpu_message.i151 = getelementptr inbounds %struct.hl_asic_funcs, ptr %50, i32 0, i32 54
  %51 = ptrtoint ptr %send_cpu_message.i151 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %send_cpu_message.i151, align 4
  %call10.i152 = call i32 %52(ptr noundef %1, ptr noundef nonnull %pkt.i141, i16 noundef zeroext 24, i32 noundef 0, ptr noundef nonnull %result.i142) #8
  %53 = ptrtoint ptr %result.i142 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %result.i142, align 8
  %conv11.i153 = trunc i64 %54 to i32
  %55 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv11.i153, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i152)
  %tobool12.not.i154 = icmp eq i32 %call10.i152, 0
  br i1 %tobool12.not.i154, label %do.end.i155.hl_get_temperature.exit158_crit_edge, label %do.end16.i157

do.end.i155.hl_get_temperature.exit158_crit_edge: ; preds = %do.end.i155
  call void @__sanitizer_cov_trace_pc() #10
  br label %hl_get_temperature.exit158

do.end16.i157:                                    ; preds = %do.end.i155
  call void @__sanitizer_cov_trace_pc() #10
  %dev17.i156 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %56 = ptrtoint ptr %dev17.i156 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev17.i156, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.9, i32 noundef %channel, i32 noundef %call10.i152) #11
  %58 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %val, align 4
  br label %hl_get_temperature.exit158

hl_get_temperature.exit158:                       ; preds = %do.end16.i157, %do.end.i155.hl_get_temperature.exit158_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result.i142) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt.i141) #8
  br label %cleanup

sw.bb16:                                          ; preds = %if.end
  %switch.tableidx = add i32 %attr, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %59 = icmp ult i32 %switch.tableidx, 8
  br i1 %59, label %switch.hole_check, label %sw.bb16.cleanup_crit_edge

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.hole_check:                                ; preds = %sw.bb16
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -121, %switch.maskindex
  %60 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %switch.lobit.not = icmp eq i8 %60, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  br i1 %tobool.not, label %if.else26, label %if.then24

if.then24:                                        ; preds = %switch.lookup
  %switch.gep = getelementptr inbounds [8 x i16], ptr @switch.table.hl_read, i32 0, i32 %switch.tableidx
  %61 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %61)
  %switch.load = load i16, ptr %switch.gep, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt.i159) #8
  %62 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i159, i32 0, i32 1
  %63 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i159, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %result.i160) #8
  %64 = ptrtoint ptr %result.i160 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 -1, ptr %result.i160, align 8, !annotation !102
  %65 = call ptr @memset(ptr %pkt.i159, i32 0, i32 24)
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1024, ptr %62, align 8
  %conv.i161 = trunc i32 %channel to i16
  %67 = tail call i16 @llvm.bswap.i16(i16 %conv.i161) #8
  %68 = ptrtoint ptr %63 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %63, align 8
  %type.i163 = getelementptr inbounds %struct.anon.104, ptr %63, i32 0, i32 1
  %69 = ptrtoint ptr %type.i163 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %switch.load, ptr %type.i163, align 2
  %asic_funcs.i164 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 34
  %70 = ptrtoint ptr %asic_funcs.i164 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %asic_funcs.i164, align 8
  %send_cpu_message.i165 = getelementptr inbounds %struct.hl_asic_funcs, ptr %71, i32 0, i32 54
  %72 = ptrtoint ptr %send_cpu_message.i165 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %send_cpu_message.i165, align 4
  %call.i = call i32 %73(ptr noundef %1, ptr noundef nonnull %pkt.i159, i16 noundef zeroext 24, i32 noundef 0, ptr noundef nonnull %result.i160) #8
  %74 = ptrtoint ptr %result.i160 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %result.i160, align 8
  %conv3.i = trunc i64 %75 to i32
  %76 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %conv3.i, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then24.hl_get_voltage.exit_crit_edge, label %do.end.i167

if.then24.hl_get_voltage.exit_crit_edge:          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %hl_get_voltage.exit

do.end.i167:                                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i166 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %77 = ptrtoint ptr %dev.i166 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev.i166, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.12, i32 noundef %channel, i32 noundef %call.i) #11
  %79 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %val, align 4
  br label %hl_get_voltage.exit

hl_get_voltage.exit:                              ; preds = %do.end.i167, %if.then24.hl_get_voltage.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result.i160) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt.i159) #8
  br label %cleanup

if.else26:                                        ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt.i168) #8
  %80 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i168, i32 0, i32 1
  %81 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i168, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %result.i169) #8
  %82 = ptrtoint ptr %result.i169 to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 -1, ptr %result.i169, align 8, !annotation !102
  %83 = call ptr @memset(ptr %pkt.i168, i32 0, i32 24)
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1024, ptr %80, align 8
  %conv.i170 = trunc i32 %channel to i16
  %85 = tail call i16 @llvm.bswap.i16(i16 %conv.i170) #8
  %86 = ptrtoint ptr %81 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %81, align 8
  %conv2.i171 = trunc i32 %attr to i16
  %87 = tail call i16 @llvm.bswap.i16(i16 %conv2.i171) #8
  %type.i172 = getelementptr inbounds %struct.anon.104, ptr %81, i32 0, i32 1
  %88 = ptrtoint ptr %type.i172 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %87, ptr %type.i172, align 2
  %asic_funcs.i173 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 34
  %89 = ptrtoint ptr %asic_funcs.i173 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %asic_funcs.i173, align 8
  %send_cpu_message.i174 = getelementptr inbounds %struct.hl_asic_funcs, ptr %90, i32 0, i32 54
  %91 = ptrtoint ptr %send_cpu_message.i174 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %send_cpu_message.i174, align 4
  %call.i175 = call i32 %92(ptr noundef %1, ptr noundef nonnull %pkt.i168, i16 noundef zeroext 24, i32 noundef 0, ptr noundef nonnull %result.i169) #8
  %93 = ptrtoint ptr %result.i169 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %result.i169, align 8
  %conv3.i176 = trunc i64 %94 to i32
  %95 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %conv3.i176, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i175)
  %tobool.not.i177 = icmp eq i32 %call.i175, 0
  br i1 %tobool.not.i177, label %if.else26.hl_get_voltage.exit180_crit_edge, label %do.end.i179

if.else26.hl_get_voltage.exit180_crit_edge:       ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #10
  br label %hl_get_voltage.exit180

do.end.i179:                                      ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i178 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %96 = ptrtoint ptr %dev.i178 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev.i178, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.12, i32 noundef %channel, i32 noundef %call.i175) #11
  %98 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %val, align 4
  br label %hl_get_voltage.exit180

hl_get_voltage.exit180:                           ; preds = %do.end.i179, %if.else26.hl_get_voltage.exit180_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result.i169) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt.i168) #8
  br label %cleanup

sw.bb30:                                          ; preds = %if.end
  %switch.tableidx257 = add i32 %attr, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx257)
  %99 = icmp ult i32 %switch.tableidx257, 8
  br i1 %99, label %switch.hole_check258, label %sw.bb30.cleanup_crit_edge

sw.bb30.cleanup_crit_edge:                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.hole_check258:                             ; preds = %sw.bb30
  %switch.maskindex260 = trunc i32 %switch.tableidx257 to i8
  %switch.shifted261 = lshr i8 -121, %switch.maskindex260
  %100 = and i8 %switch.shifted261, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %switch.lobit262.not = icmp eq i8 %100, 0
  br i1 %switch.lobit262.not, label %switch.hole_check258.cleanup_crit_edge, label %switch.lookup259

switch.hole_check258.cleanup_crit_edge:           ; preds = %switch.hole_check258
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup259:                                 ; preds = %switch.hole_check258
  br i1 %tobool.not, label %if.else40, label %if.then38

if.then38:                                        ; preds = %switch.lookup259
  %switch.gep263 = getelementptr inbounds [8 x i16], ptr @switch.table.hl_read.44, i32 0, i32 %switch.tableidx257
  %101 = ptrtoint ptr %switch.gep263 to i32
  call void @__asan_load2_noabort(i32 %101)
  %switch.load264 = load i16, ptr %switch.gep263, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt.i181) #8
  %102 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i181, i32 0, i32 1
  %103 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i181, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %result.i182) #8
  %104 = ptrtoint ptr %result.i182 to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 -1, ptr %result.i182, align 8, !annotation !102
  %105 = call ptr @memset(ptr %pkt.i181, i32 0, i32 24)
  %106 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 1280, ptr %102, align 8
  %conv.i183 = trunc i32 %channel to i16
  %107 = tail call i16 @llvm.bswap.i16(i16 %conv.i183) #8
  %108 = ptrtoint ptr %103 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %107, ptr %103, align 8
  %type.i185 = getelementptr inbounds %struct.anon.104, ptr %103, i32 0, i32 1
  %109 = ptrtoint ptr %type.i185 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %switch.load264, ptr %type.i185, align 2
  %asic_funcs.i186 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 34
  %110 = ptrtoint ptr %asic_funcs.i186 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %asic_funcs.i186, align 8
  %send_cpu_message.i187 = getelementptr inbounds %struct.hl_asic_funcs, ptr %111, i32 0, i32 54
  %112 = ptrtoint ptr %send_cpu_message.i187 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %send_cpu_message.i187, align 4
  %call.i188 = call i32 %113(ptr noundef %1, ptr noundef nonnull %pkt.i181, i16 noundef zeroext 24, i32 noundef 0, ptr noundef nonnull %result.i182) #8
  %114 = ptrtoint ptr %result.i182 to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %result.i182, align 8
  %conv3.i189 = trunc i64 %115 to i32
  %116 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %conv3.i189, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i188)
  %tobool.not.i190 = icmp eq i32 %call.i188, 0
  br i1 %tobool.not.i190, label %if.then38.hl_get_current.exit_crit_edge, label %do.end.i192

if.then38.hl_get_current.exit_crit_edge:          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %hl_get_current.exit

do.end.i192:                                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i191 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %117 = ptrtoint ptr %dev.i191 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev.i191, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.14, i32 noundef %channel, i32 noundef %call.i188) #11
  %119 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %val, align 4
  br label %hl_get_current.exit

hl_get_current.exit:                              ; preds = %do.end.i192, %if.then38.hl_get_current.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result.i182) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt.i181) #8
  br label %cleanup

if.else40:                                        ; preds = %switch.lookup259
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt.i193) #8
  %120 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i193, i32 0, i32 1
  %121 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i193, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %result.i194) #8
  %122 = ptrtoint ptr %result.i194 to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 -1, ptr %result.i194, align 8, !annotation !102
  %123 = call ptr @memset(ptr %pkt.i193, i32 0, i32 24)
  %124 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 1280, ptr %120, align 8
  %conv.i195 = trunc i32 %channel to i16
  %125 = tail call i16 @llvm.bswap.i16(i16 %conv.i195) #8
  %126 = ptrtoint ptr %121 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %125, ptr %121, align 8
  %conv2.i196 = trunc i32 %attr to i16
  %127 = tail call i16 @llvm.bswap.i16(i16 %conv2.i196) #8
  %type.i197 = getelementptr inbounds %struct.anon.104, ptr %121, i32 0, i32 1
  %128 = ptrtoint ptr %type.i197 to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %127, ptr %type.i197, align 2
  %asic_funcs.i198 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 34
  %129 = ptrtoint ptr %asic_funcs.i198 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %asic_funcs.i198, align 8
  %send_cpu_message.i199 = getelementptr inbounds %struct.hl_asic_funcs, ptr %130, i32 0, i32 54
  %131 = ptrtoint ptr %send_cpu_message.i199 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %send_cpu_message.i199, align 4
  %call.i200 = call i32 %132(ptr noundef %1, ptr noundef nonnull %pkt.i193, i16 noundef zeroext 24, i32 noundef 0, ptr noundef nonnull %result.i194) #8
  %133 = ptrtoint ptr %result.i194 to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %result.i194, align 8
  %conv3.i201 = trunc i64 %134 to i32
  %135 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %conv3.i201, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i200)
  %tobool.not.i202 = icmp eq i32 %call.i200, 0
  br i1 %tobool.not.i202, label %if.else40.hl_get_current.exit205_crit_edge, label %do.end.i204

if.else40.hl_get_current.exit205_crit_edge:       ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #10
  br label %hl_get_current.exit205

do.end.i204:                                      ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i203 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %136 = ptrtoint ptr %dev.i203 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev.i203, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %137, ptr noundef nonnull @.str.14, i32 noundef %channel, i32 noundef %call.i200) #11
  %138 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 0, ptr %val, align 4
  br label %hl_get_current.exit205

hl_get_current.exit205:                           ; preds = %do.end.i204, %if.else40.hl_get_current.exit205_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result.i194) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt.i193) #8
  br label %cleanup

sw.bb44:                                          ; preds = %if.end
  %139 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %139, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %attr, label %sw.bb44.cleanup_crit_edge [
    i32 1, label %sw.bb44.sw.epilog49_crit_edge
    i32 3, label %sw.bb46
    i32 4, label %sw.bb47
  ]

sw.bb44.sw.epilog49_crit_edge:                    ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog49

sw.bb44.cleanup_crit_edge:                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb46:                                          ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog49

sw.bb47:                                          ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog49

sw.epilog49:                                      ; preds = %sw.bb47, %sw.bb46, %sw.bb44.sw.epilog49_crit_edge
  %cpucp_attr.3 = phi i16 [ 768, %sw.bb47 ], [ 512, %sw.bb46 ], [ 0, %sw.bb44.sw.epilog49_crit_edge ]
  br i1 %tobool.not, label %if.else53, label %if.then51

if.then51:                                        ; preds = %sw.epilog49
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt.i206) #8
  %140 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i206, i32 0, i32 1
  %141 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i206, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %result.i207) #8
  %142 = ptrtoint ptr %result.i207 to i32
  call void @__asan_store8_noabort(i32 %142)
  store i64 -1, ptr %result.i207, align 8, !annotation !102
  %143 = call ptr @memset(ptr %pkt.i206, i32 0, i32 24)
  %144 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 1536, ptr %140, align 8
  %conv.i208 = trunc i32 %channel to i16
  %145 = tail call i16 @llvm.bswap.i16(i16 %conv.i208) #8
  %146 = ptrtoint ptr %141 to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %145, ptr %141, align 8
  %type.i210 = getelementptr inbounds %struct.anon.104, ptr %141, i32 0, i32 1
  %147 = ptrtoint ptr %type.i210 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %cpucp_attr.3, ptr %type.i210, align 2
  %asic_funcs.i211 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 34
  %148 = ptrtoint ptr %asic_funcs.i211 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %asic_funcs.i211, align 8
  %send_cpu_message.i212 = getelementptr inbounds %struct.hl_asic_funcs, ptr %149, i32 0, i32 54
  %150 = ptrtoint ptr %send_cpu_message.i212 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %send_cpu_message.i212, align 4
  %call.i213 = call i32 %151(ptr noundef %1, ptr noundef nonnull %pkt.i206, i16 noundef zeroext 24, i32 noundef 0, ptr noundef nonnull %result.i207) #8
  %152 = ptrtoint ptr %result.i207 to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %result.i207, align 8
  %conv3.i214 = trunc i64 %153 to i32
  %154 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %conv3.i214, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i213)
  %tobool.not.i215 = icmp eq i32 %call.i213, 0
  br i1 %tobool.not.i215, label %if.then51.hl_get_fan_speed.exit_crit_edge, label %do.end.i217

if.then51.hl_get_fan_speed.exit_crit_edge:        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  br label %hl_get_fan_speed.exit

do.end.i217:                                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i216 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %155 = ptrtoint ptr %dev.i216 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dev.i216, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %156, ptr noundef nonnull @.str.16, i32 noundef %channel, i32 noundef %call.i213) #11
  %157 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 0, ptr %val, align 4
  br label %hl_get_fan_speed.exit

hl_get_fan_speed.exit:                            ; preds = %do.end.i217, %if.then51.hl_get_fan_speed.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result.i207) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt.i206) #8
  br label %cleanup

if.else53:                                        ; preds = %sw.epilog49
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt.i218) #8
  %158 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i218, i32 0, i32 1
  %159 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i218, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %result.i219) #8
  %160 = ptrtoint ptr %result.i219 to i32
  call void @__asan_store8_noabort(i32 %160)
  store i64 -1, ptr %result.i219, align 8, !annotation !102
  %161 = call ptr @memset(ptr %pkt.i218, i32 0, i32 24)
  %162 = ptrtoint ptr %158 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 1536, ptr %158, align 8
  %conv.i220 = trunc i32 %channel to i16
  %163 = tail call i16 @llvm.bswap.i16(i16 %conv.i220) #8
  %164 = ptrtoint ptr %159 to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %163, ptr %159, align 8
  %conv2.i221 = trunc i32 %attr to i16
  %165 = tail call i16 @llvm.bswap.i16(i16 %conv2.i221) #8
  %type.i222 = getelementptr inbounds %struct.anon.104, ptr %159, i32 0, i32 1
  %166 = ptrtoint ptr %type.i222 to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %165, ptr %type.i222, align 2
  %asic_funcs.i223 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 34
  %167 = ptrtoint ptr %asic_funcs.i223 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %asic_funcs.i223, align 8
  %send_cpu_message.i224 = getelementptr inbounds %struct.hl_asic_funcs, ptr %168, i32 0, i32 54
  %169 = ptrtoint ptr %send_cpu_message.i224 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %send_cpu_message.i224, align 4
  %call.i225 = call i32 %170(ptr noundef %1, ptr noundef nonnull %pkt.i218, i16 noundef zeroext 24, i32 noundef 0, ptr noundef nonnull %result.i219) #8
  %171 = ptrtoint ptr %result.i219 to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %result.i219, align 8
  %conv3.i226 = trunc i64 %172 to i32
  %173 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %conv3.i226, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i225)
  %tobool.not.i227 = icmp eq i32 %call.i225, 0
  br i1 %tobool.not.i227, label %if.else53.hl_get_fan_speed.exit230_crit_edge, label %do.end.i229

if.else53.hl_get_fan_speed.exit230_crit_edge:     ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #10
  br label %hl_get_fan_speed.exit230

do.end.i229:                                      ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i228 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %174 = ptrtoint ptr %dev.i228 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %dev.i228, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %175, ptr noundef nonnull @.str.16, i32 noundef %channel, i32 noundef %call.i225) #11
  %176 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 0, ptr %val, align 4
  br label %hl_get_fan_speed.exit230

hl_get_fan_speed.exit230:                         ; preds = %do.end.i229, %if.else53.hl_get_fan_speed.exit230_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result.i219) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt.i218) #8
  br label %cleanup

sw.bb57:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %attr)
  %switch = icmp ult i32 %attr, 2
  br i1 %switch, label %sw.epilog61, label %sw.bb57.cleanup_crit_edge

sw.bb57.cleanup_crit_edge:                        ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog61:                                      ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #10
  %call66 = tail call i32 @hl_get_pwm_info(ptr noundef %1, i32 noundef %channel, i32 noundef %attr, ptr noundef %val)
  br label %cleanup

sw.bb68:                                          ; preds = %if.end
  %177 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %177, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %attr, label %sw.bb68.cleanup_crit_edge [
    i32 9, label %sw.bb68.sw.epilog72_crit_edge
    i32 10, label %sw.bb70
  ]

sw.bb68.sw.epilog72_crit_edge:                    ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog72

sw.bb68.cleanup_crit_edge:                        ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb70:                                          ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog72

sw.epilog72:                                      ; preds = %sw.bb70, %sw.bb68.sw.epilog72_crit_edge
  %cpucp_attr.5 = phi i16 [ 2304, %sw.bb70 ], [ 2048, %sw.bb68.sw.epilog72_crit_edge ]
  br i1 %tobool.not, label %if.else76, label %if.then74

if.then74:                                        ; preds = %sw.epilog72
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt.i231) #8
  %178 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i231, i32 0, i32 1
  %179 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i231, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %result.i232) #8
  %180 = ptrtoint ptr %result.i232 to i32
  call void @__asan_store8_noabort(i32 %180)
  store i64 -1, ptr %result.i232, align 8, !annotation !102
  %181 = call ptr @memset(ptr %pkt.i231, i32 0, i32 24)
  %182 = ptrtoint ptr %178 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 8192, ptr %178, align 8
  %conv.i233 = trunc i32 %channel to i16
  %183 = tail call i16 @llvm.bswap.i16(i16 %conv.i233) #8
  %184 = ptrtoint ptr %179 to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %183, ptr %179, align 8
  %type.i235 = getelementptr inbounds %struct.anon.104, ptr %179, i32 0, i32 1
  %185 = ptrtoint ptr %type.i235 to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 %cpucp_attr.5, ptr %type.i235, align 2
  %asic_funcs.i236 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 34
  %186 = ptrtoint ptr %asic_funcs.i236 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %asic_funcs.i236, align 8
  %send_cpu_message.i237 = getelementptr inbounds %struct.hl_asic_funcs, ptr %187, i32 0, i32 54
  %188 = ptrtoint ptr %send_cpu_message.i237 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %send_cpu_message.i237, align 4
  %call.i238 = call i32 %189(ptr noundef %1, ptr noundef nonnull %pkt.i231, i16 noundef zeroext 24, i32 noundef 0, ptr noundef nonnull %result.i232) #8
  %190 = ptrtoint ptr %result.i232 to i32
  call void @__asan_load8_noabort(i32 %190)
  %191 = load i64, ptr %result.i232, align 8
  %conv3.i239 = trunc i64 %191 to i32
  %192 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %conv3.i239, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i238)
  %tobool.not.i240 = icmp eq i32 %call.i238, 0
  br i1 %tobool.not.i240, label %if.then74.hl_get_power.exit_crit_edge, label %do.end.i242

if.then74.hl_get_power.exit_crit_edge:            ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #10
  br label %hl_get_power.exit

do.end.i242:                                      ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i241 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %193 = ptrtoint ptr %dev.i241 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %dev.i241, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %194, ptr noundef nonnull @.str.28, i32 noundef %channel, i32 noundef %call.i238) #11
  %195 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 0, ptr %val, align 4
  br label %hl_get_power.exit

hl_get_power.exit:                                ; preds = %do.end.i242, %if.then74.hl_get_power.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result.i232) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt.i231) #8
  br label %cleanup

if.else76:                                        ; preds = %sw.epilog72
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt.i243) #8
  %196 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i243, i32 0, i32 1
  %197 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i243, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %result.i244) #8
  %198 = ptrtoint ptr %result.i244 to i32
  call void @__asan_store8_noabort(i32 %198)
  store i64 -1, ptr %result.i244, align 8, !annotation !102
  %199 = call ptr @memset(ptr %pkt.i243, i32 0, i32 24)
  %200 = ptrtoint ptr %196 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 8192, ptr %196, align 8
  %conv.i245 = trunc i32 %channel to i16
  %201 = tail call i16 @llvm.bswap.i16(i16 %conv.i245) #8
  %202 = ptrtoint ptr %197 to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 %201, ptr %197, align 8
  %conv2.i246 = trunc i32 %attr to i16
  %203 = tail call i16 @llvm.bswap.i16(i16 %conv2.i246) #8
  %type.i247 = getelementptr inbounds %struct.anon.104, ptr %197, i32 0, i32 1
  %204 = ptrtoint ptr %type.i247 to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 %203, ptr %type.i247, align 2
  %asic_funcs.i248 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 34
  %205 = ptrtoint ptr %asic_funcs.i248 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %asic_funcs.i248, align 8
  %send_cpu_message.i249 = getelementptr inbounds %struct.hl_asic_funcs, ptr %206, i32 0, i32 54
  %207 = ptrtoint ptr %send_cpu_message.i249 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %send_cpu_message.i249, align 4
  %call.i250 = call i32 %208(ptr noundef %1, ptr noundef nonnull %pkt.i243, i16 noundef zeroext 24, i32 noundef 0, ptr noundef nonnull %result.i244) #8
  %209 = ptrtoint ptr %result.i244 to i32
  call void @__asan_load8_noabort(i32 %209)
  %210 = load i64, ptr %result.i244, align 8
  %conv3.i251 = trunc i64 %210 to i32
  %211 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %conv3.i251, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i250)
  %tobool.not.i252 = icmp eq i32 %call.i250, 0
  br i1 %tobool.not.i252, label %if.else76.hl_get_power.exit255_crit_edge, label %do.end.i254

if.else76.hl_get_power.exit255_crit_edge:         ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #10
  br label %hl_get_power.exit255

do.end.i254:                                      ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i253 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %212 = ptrtoint ptr %dev.i253 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %dev.i253, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %213, ptr noundef nonnull @.str.28, i32 noundef %channel, i32 noundef %call.i250) #11
  %214 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 0, ptr %val, align 4
  br label %hl_get_power.exit255

hl_get_power.exit255:                             ; preds = %do.end.i254, %if.else76.hl_get_power.exit255_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result.i244) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt.i243) #8
  br label %cleanup

cleanup:                                          ; preds = %hl_get_power.exit255, %hl_get_power.exit, %sw.bb68.cleanup_crit_edge, %sw.epilog61, %sw.bb57.cleanup_crit_edge, %hl_get_fan_speed.exit230, %hl_get_fan_speed.exit, %sw.bb44.cleanup_crit_edge, %hl_get_current.exit205, %hl_get_current.exit, %switch.hole_check258.cleanup_crit_edge, %sw.bb30.cleanup_crit_edge, %hl_get_voltage.exit180, %hl_get_voltage.exit, %switch.hole_check.cleanup_crit_edge, %sw.bb16.cleanup_crit_edge, %hl_get_temperature.exit158, %hl_get_temperature.exit, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb16.cleanup_crit_edge ], [ -22, %sw.bb30.cleanup_crit_edge ], [ -22, %sw.bb44.cleanup_crit_edge ], [ -22, %sw.bb57.cleanup_crit_edge ], [ -22, %sw.bb68.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call.i238, %hl_get_power.exit ], [ %call.i250, %hl_get_power.exit255 ], [ %call.i213, %hl_get_fan_speed.exit ], [ %call.i225, %hl_get_fan_speed.exit230 ], [ %call.i188, %hl_get_current.exit ], [ %call.i200, %hl_get_current.exit205 ], [ %call.i, %hl_get_voltage.exit ], [ %call.i175, %hl_get_voltage.exit180 ], [ %call10.i, %hl_get_temperature.exit ], [ %call10.i152, %hl_get_temperature.exit158 ], [ %call66, %sw.epilog61 ], [ -22, %switch.hole_check.cleanup_crit_edge ], [ -22, %switch.hole_check258.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_write(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i32 noundef %val) #0 align 64 {
entry:
  %pkt.i192 = alloca %struct.cpucp_packet, align 8
  %pkt.i183 = alloca %struct.cpucp_packet, align 8
  %pkt.i172 = alloca %struct.cpucp_packet, align 8
  %pkt.i162 = alloca %struct.cpucp_packet, align 8
  %pkt.i151 = alloca %struct.cpucp_packet, align 8
  %pkt.i141 = alloca %struct.cpucp_packet, align 8
  %pkt.i129 = alloca %struct.cpucp_packet, align 8
  %pkt.i118 = alloca %struct.cpucp_packet, align 8
  %pkt.i106 = alloca %struct.cpucp_packet, align 8
  %pkt.i = alloca %struct.cpucp_packet, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %fw_app_cpu_boot_dev_sts0 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 54
  %2 = ptrtoint ptr %fw_app_cpu_boot_dev_sts0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_app_cpu_boot_dev_sts0, align 8
  %and = and i32 %3, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %call2 = tail call zeroext i1 @hl_device_operational(ptr noundef %1, ptr noundef null) #8
  br i1 %call2, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %type, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb11
    i32 2, label %sw.bb20
    i32 3, label %sw.bb31
    i32 4, label %sw.bb42
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %5 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %attr, label %sw.bb.cleanup_crit_edge [
    i32 20, label %sw.bb.sw.epilog_crit_edge
    i32 24, label %sw.bb4
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb.sw.epilog_crit_edge
  %cpucp_attr.0 = phi i16 [ 5888, %sw.bb4 ], [ 4864, %sw.bb.sw.epilog_crit_edge ]
  br i1 %tobool.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt.i) #8
  %6 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i, i32 0, i32 1
  %7 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i, i32 0, i32 3
  %8 = call ptr @memset(ptr %6, i32 0, i32 16)
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 6144, ptr %6, align 8
  %conv.i = trunc i32 %channel to i16
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #8
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %7, align 8
  %type.i = getelementptr inbounds %struct.anon.104, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %type.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %cpucp_attr.0, ptr %type.i, align 2
  %conv3.i = sext i32 %val to i64
  %13 = tail call i64 @llvm.bswap.i64(i64 %conv3.i) #8
  %14 = ptrtoint ptr %pkt.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %pkt.i, align 8
  %asic_funcs.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 34
  %15 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %asic_funcs.i, align 8
  %send_cpu_message.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %16, i32 0, i32 54
  %17 = ptrtoint ptr %send_cpu_message.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %send_cpu_message.i, align 4
  %call.i = call i32 %18(ptr noundef %1, ptr noundef nonnull %pkt.i, i16 noundef zeroext 24, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then6.hl_set_temperature.exit_crit_edge, label %do.end.i

if.then6.hl_set_temperature.exit_crit_edge:       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %hl_set_temperature.exit

do.end.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.10, i32 noundef %channel, i32 noundef %call.i) #11
  br label %hl_set_temperature.exit

hl_set_temperature.exit:                          ; preds = %do.end.i, %if.then6.hl_set_temperature.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt.i) #8
  br label %cleanup

if.else:                                          ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt.i106) #8
  %21 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i106, i32 0, i32 1
  %22 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i106, i32 0, i32 3
  %23 = call ptr @memset(ptr %21, i32 0, i32 16)
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 6144, ptr %21, align 8
  %conv.i107 = trunc i32 %channel to i16
  %25 = tail call i16 @llvm.bswap.i16(i16 %conv.i107) #8
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %22, align 8
  %conv2.i108 = trunc i32 %attr to i16
  %27 = tail call i16 @llvm.bswap.i16(i16 %conv2.i108) #8
  %type.i109 = getelementptr inbounds %struct.anon.104, ptr %22, i32 0, i32 1
  %28 = ptrtoint ptr %type.i109 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %type.i109, align 2
  %conv3.i110 = sext i32 %val to i64
  %29 = tail call i64 @llvm.bswap.i64(i64 %conv3.i110) #8
  %30 = ptrtoint ptr %pkt.i106 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %pkt.i106, align 8
  %asic_funcs.i111 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 34
  %31 = ptrtoint ptr %asic_funcs.i111 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %asic_funcs.i111, align 8
  %send_cpu_message.i112 = getelementptr inbounds %struct.hl_asic_funcs, ptr %32, i32 0, i32 54
  %33 = ptrtoint ptr %send_cpu_message.i112 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %send_cpu_message.i112, align 4
  %call.i113 = call i32 %34(ptr noundef %1, ptr noundef nonnull %pkt.i106, i16 noundef zeroext 24, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %tobool.not.i114 = icmp eq i32 %call.i113, 0
  br i1 %tobool.not.i114, label %if.else.hl_set_temperature.exit117_crit_edge, label %do.end.i116

if.else.hl_set_temperature.exit117_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %hl_set_temperature.exit117

do.end.i116:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i115 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %35 = ptrtoint ptr %dev.i115 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i115, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.10, i32 noundef %channel, i32 noundef %call.i113) #11
  br label %hl_set_temperature.exit117

hl_set_temperature.exit117:                       ; preds = %do.end.i116, %if.else.hl_set_temperature.exit117_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt.i106) #8
  br label %cleanup

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %attr)
  %switch = icmp ult i32 %attr, 2
  br i1 %switch, label %sw.epilog15, label %sw.bb11.cleanup_crit_edge

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog15:                                      ; preds = %sw.bb11
  br i1 %tobool.not, label %if.else18, label %if.then17

if.then17:                                        ; preds = %sw.epilog15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt.i118) #8
  %37 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i118, i32 0, i32 1
  %38 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i118, i32 0, i32 3
  %39 = call ptr @memset(ptr %37, i32 0, i32 16)
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2048, ptr %37, align 8
  %conv.i119 = trunc i32 %channel to i16
  %41 = tail call i16 @llvm.bswap.i16(i16 %conv.i119) #8
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %38, align 8
  %conv2.i120 = trunc i32 %attr to i16
  %43 = tail call i16 @llvm.bswap.i16(i16 %conv2.i120) #8
  %type.i121 = getelementptr inbounds %struct.anon.104, ptr %38, i32 0, i32 1
  %44 = ptrtoint ptr %type.i121 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %type.i121, align 2
  %conv3.i122 = sext i32 %val to i64
  %45 = tail call i64 @llvm.bswap.i64(i64 %conv3.i122) #8
  %46 = ptrtoint ptr %pkt.i118 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %pkt.i118, align 8
  %asic_funcs.i123 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 34
  %47 = ptrtoint ptr %asic_funcs.i123 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %asic_funcs.i123, align 8
  %send_cpu_message.i124 = getelementptr inbounds %struct.hl_asic_funcs, ptr %48, i32 0, i32 54
  %49 = ptrtoint ptr %send_cpu_message.i124 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %send_cpu_message.i124, align 4
  %call.i125 = call i32 %50(ptr noundef %1, ptr noundef nonnull %pkt.i118, i16 noundef zeroext 24, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125)
  %tobool.not.i126 = icmp eq i32 %call.i125, 0
  br i1 %tobool.not.i126, label %if.then17.hl_set_pwm_info.exit_crit_edge, label %do.end.i128

if.then17.hl_set_pwm_info.exit_crit_edge:         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %hl_set_pwm_info.exit

do.end.i128:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i127 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %51 = ptrtoint ptr %dev.i127 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i127, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.20, i32 noundef %channel, i32 noundef %call.i125) #11
  br label %hl_set_pwm_info.exit

hl_set_pwm_info.exit:                             ; preds = %do.end.i128, %if.then17.hl_set_pwm_info.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt.i118) #8
  br label %cleanup

if.else18:                                        ; preds = %sw.epilog15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt.i129) #8
  %53 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i129, i32 0, i32 1
  %54 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i129, i32 0, i32 3
  %55 = call ptr @memset(ptr %53, i32 0, i32 16)
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 2048, ptr %53, align 8
  %conv.i130 = trunc i32 %channel to i16
  %57 = tail call i16 @llvm.bswap.i16(i16 %conv.i130) #8
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %54, align 8
  %conv2.i131 = trunc i32 %attr to i16
  %59 = tail call i16 @llvm.bswap.i16(i16 %conv2.i131) #8
  %type.i132 = getelementptr inbounds %struct.anon.104, ptr %54, i32 0, i32 1
  %60 = ptrtoint ptr %type.i132 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %type.i132, align 2
  %conv3.i133 = sext i32 %val to i64
  %61 = tail call i64 @llvm.bswap.i64(i64 %conv3.i133) #8
  %62 = ptrtoint ptr %pkt.i129 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %pkt.i129, align 8
  %asic_funcs.i134 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 34
  %63 = ptrtoint ptr %asic_funcs.i134 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %asic_funcs.i134, align 8
  %send_cpu_message.i135 = getelementptr inbounds %struct.hl_asic_funcs, ptr %64, i32 0, i32 54
  %65 = ptrtoint ptr %send_cpu_message.i135 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %send_cpu_message.i135, align 4
  %call.i136 = call i32 %66(ptr noundef %1, ptr noundef nonnull %pkt.i129, i16 noundef zeroext 24, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i136)
  %tobool.not.i137 = icmp eq i32 %call.i136, 0
  br i1 %tobool.not.i137, label %if.else18.hl_set_pwm_info.exit140_crit_edge, label %do.end.i139

if.else18.hl_set_pwm_info.exit140_crit_edge:      ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #10
  br label %hl_set_pwm_info.exit140

do.end.i139:                                      ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i138 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %67 = ptrtoint ptr %dev.i138 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.i138, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.20, i32 noundef %channel, i32 noundef %call.i136) #11
  br label %hl_set_pwm_info.exit140

hl_set_pwm_info.exit140:                          ; preds = %do.end.i139, %if.else18.hl_set_pwm_info.exit140_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt.i129) #8
  br label %cleanup

sw.bb20:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %attr)
  %cond59 = icmp eq i32 %attr, 9
  br i1 %cond59, label %sw.bb21, label %sw.bb20.cleanup_crit_edge

sw.bb20.cleanup_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb21:                                          ; preds = %sw.bb20
  br i1 %tobool.not, label %if.else27, label %if.then25

if.then25:                                        ; preds = %sw.bb21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt.i141) #8
  %69 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i141, i32 0, i32 1
  %70 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i141, i32 0, i32 3
  %71 = call ptr @memset(ptr %69, i32 0, i32 16)
  %72 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 6400, ptr %69, align 8
  %conv.i142 = trunc i32 %channel to i16
  %73 = tail call i16 @llvm.bswap.i16(i16 %conv.i142) #8
  %74 = ptrtoint ptr %70 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %70, align 8
  %type.i143 = getelementptr inbounds %struct.anon.104, ptr %70, i32 0, i32 1
  %75 = ptrtoint ptr %type.i143 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 2048, ptr %type.i143, align 2
  %conv3.i144 = sext i32 %val to i64
  %76 = tail call i64 @llvm.bswap.i64(i64 %conv3.i144) #8
  %77 = ptrtoint ptr %pkt.i141 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %76, ptr %pkt.i141, align 8
  %asic_funcs.i145 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 34
  %78 = ptrtoint ptr %asic_funcs.i145 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %asic_funcs.i145, align 8
  %send_cpu_message.i146 = getelementptr inbounds %struct.hl_asic_funcs, ptr %79, i32 0, i32 54
  %80 = ptrtoint ptr %send_cpu_message.i146 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %send_cpu_message.i146, align 4
  %call.i147 = call i32 %81(ptr noundef %1, ptr noundef nonnull %pkt.i141, i16 noundef zeroext 24, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147)
  %tobool.not.i148 = icmp eq i32 %call.i147, 0
  br i1 %tobool.not.i148, label %if.then25.hl_set_voltage.exit_crit_edge, label %do.end.i150

if.then25.hl_set_voltage.exit_crit_edge:          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %hl_set_voltage.exit

do.end.i150:                                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i149 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %82 = ptrtoint ptr %dev.i149 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev.i149, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.22, i32 noundef %channel, i32 noundef %call.i147) #11
  br label %hl_set_voltage.exit

hl_set_voltage.exit:                              ; preds = %do.end.i150, %if.then25.hl_set_voltage.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt.i141) #8
  br label %cleanup

if.else27:                                        ; preds = %sw.bb21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt.i151) #8
  %84 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i151, i32 0, i32 1
  %85 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i151, i32 0, i32 3
  %86 = call ptr @memset(ptr %84, i32 0, i32 16)
  %87 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 6400, ptr %84, align 8
  %conv.i152 = trunc i32 %channel to i16
  %88 = tail call i16 @llvm.bswap.i16(i16 %conv.i152) #8
  %89 = ptrtoint ptr %85 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %85, align 8
  %type.i153 = getelementptr inbounds %struct.anon.104, ptr %85, i32 0, i32 1
  %90 = ptrtoint ptr %type.i153 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 2304, ptr %type.i153, align 2
  %conv3.i154 = sext i32 %val to i64
  %91 = tail call i64 @llvm.bswap.i64(i64 %conv3.i154) #8
  %92 = ptrtoint ptr %pkt.i151 to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %91, ptr %pkt.i151, align 8
  %asic_funcs.i155 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 34
  %93 = ptrtoint ptr %asic_funcs.i155 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %asic_funcs.i155, align 8
  %send_cpu_message.i156 = getelementptr inbounds %struct.hl_asic_funcs, ptr %94, i32 0, i32 54
  %95 = ptrtoint ptr %send_cpu_message.i156 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %send_cpu_message.i156, align 4
  %call.i157 = call i32 %96(ptr noundef %1, ptr noundef nonnull %pkt.i151, i16 noundef zeroext 24, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157)
  %tobool.not.i158 = icmp eq i32 %call.i157, 0
  br i1 %tobool.not.i158, label %if.else27.hl_set_voltage.exit161_crit_edge, label %do.end.i160

if.else27.hl_set_voltage.exit161_crit_edge:       ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #10
  br label %hl_set_voltage.exit161

do.end.i160:                                      ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i159 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %97 = ptrtoint ptr %dev.i159 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev.i159, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.22, i32 noundef %channel, i32 noundef %call.i157) #11
  br label %hl_set_voltage.exit161

hl_set_voltage.exit161:                           ; preds = %do.end.i160, %if.else27.hl_set_voltage.exit161_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt.i151) #8
  br label %cleanup

sw.bb31:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %attr)
  %cond58 = icmp eq i32 %attr, 9
  br i1 %cond58, label %sw.bb32, label %sw.bb31.cleanup_crit_edge

sw.bb31.cleanup_crit_edge:                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb32:                                          ; preds = %sw.bb31
  br i1 %tobool.not, label %if.else38, label %if.then36

if.then36:                                        ; preds = %sw.bb32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt.i162) #8
  %99 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i162, i32 0, i32 1
  %100 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i162, i32 0, i32 3
  %101 = call ptr @memset(ptr %99, i32 0, i32 16)
  %102 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 6656, ptr %99, align 8
  %conv.i163 = trunc i32 %channel to i16
  %103 = tail call i16 @llvm.bswap.i16(i16 %conv.i163) #8
  %104 = ptrtoint ptr %100 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %100, align 8
  %type.i164 = getelementptr inbounds %struct.anon.104, ptr %100, i32 0, i32 1
  %105 = ptrtoint ptr %type.i164 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 2048, ptr %type.i164, align 2
  %conv3.i165 = sext i32 %val to i64
  %106 = tail call i64 @llvm.bswap.i64(i64 %conv3.i165) #8
  %107 = ptrtoint ptr %pkt.i162 to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %106, ptr %pkt.i162, align 8
  %asic_funcs.i166 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 34
  %108 = ptrtoint ptr %asic_funcs.i166 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %asic_funcs.i166, align 8
  %send_cpu_message.i167 = getelementptr inbounds %struct.hl_asic_funcs, ptr %109, i32 0, i32 54
  %110 = ptrtoint ptr %send_cpu_message.i167 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %send_cpu_message.i167, align 4
  %call.i168 = call i32 %111(ptr noundef %1, ptr noundef nonnull %pkt.i162, i16 noundef zeroext 24, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168)
  %tobool.not.i169 = icmp eq i32 %call.i168, 0
  br i1 %tobool.not.i169, label %if.then36.hl_set_current.exit_crit_edge, label %do.end.i171

if.then36.hl_set_current.exit_crit_edge:          ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %hl_set_current.exit

do.end.i171:                                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i170 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %112 = ptrtoint ptr %dev.i170 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev.i170, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.24, i32 noundef %channel, i32 noundef %call.i168) #11
  br label %hl_set_current.exit

hl_set_current.exit:                              ; preds = %do.end.i171, %if.then36.hl_set_current.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt.i162) #8
  br label %cleanup

if.else38:                                        ; preds = %sw.bb32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt.i172) #8
  %114 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i172, i32 0, i32 1
  %115 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i172, i32 0, i32 3
  %116 = call ptr @memset(ptr %114, i32 0, i32 16)
  %117 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 6656, ptr %114, align 8
  %conv.i173 = trunc i32 %channel to i16
  %118 = tail call i16 @llvm.bswap.i16(i16 %conv.i173) #8
  %119 = ptrtoint ptr %115 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %118, ptr %115, align 8
  %type.i174 = getelementptr inbounds %struct.anon.104, ptr %115, i32 0, i32 1
  %120 = ptrtoint ptr %type.i174 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 2304, ptr %type.i174, align 2
  %conv3.i175 = sext i32 %val to i64
  %121 = tail call i64 @llvm.bswap.i64(i64 %conv3.i175) #8
  %122 = ptrtoint ptr %pkt.i172 to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 %121, ptr %pkt.i172, align 8
  %asic_funcs.i176 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 34
  %123 = ptrtoint ptr %asic_funcs.i176 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %asic_funcs.i176, align 8
  %send_cpu_message.i177 = getelementptr inbounds %struct.hl_asic_funcs, ptr %124, i32 0, i32 54
  %125 = ptrtoint ptr %send_cpu_message.i177 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %send_cpu_message.i177, align 4
  %call.i178 = call i32 %126(ptr noundef %1, ptr noundef nonnull %pkt.i172, i16 noundef zeroext 24, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i178)
  %tobool.not.i179 = icmp eq i32 %call.i178, 0
  br i1 %tobool.not.i179, label %if.else38.hl_set_current.exit182_crit_edge, label %do.end.i181

if.else38.hl_set_current.exit182_crit_edge:       ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #10
  br label %hl_set_current.exit182

do.end.i181:                                      ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i180 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %127 = ptrtoint ptr %dev.i180 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev.i180, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %128, ptr noundef nonnull @.str.24, i32 noundef %channel, i32 noundef %call.i178) #11
  br label %hl_set_current.exit182

hl_set_current.exit182:                           ; preds = %do.end.i181, %if.else38.hl_set_current.exit182_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt.i172) #8
  br label %cleanup

sw.bb42:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %attr)
  %cond57 = icmp eq i32 %attr, 12
  br i1 %cond57, label %sw.bb43, label %sw.bb42.cleanup_crit_edge

sw.bb42.cleanup_crit_edge:                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb43:                                          ; preds = %sw.bb42
  br i1 %tobool.not, label %if.else49, label %if.then47

if.then47:                                        ; preds = %sw.bb43
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt.i183) #8
  %129 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i183, i32 0, i32 1
  %130 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i183, i32 0, i32 3
  %131 = call ptr @memset(ptr %129, i32 0, i32 16)
  %use_get_power_for_reset_history.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 78
  %132 = ptrtoint ptr %use_get_power_for_reset_history.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %use_get_power_for_reset_history.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool.not.i184 = icmp eq i8 %133, 0
  %..i = select i1 %tobool.not.i184, i32 11520, i32 8192
  %134 = ptrtoint ptr %129 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %..i, ptr %129, align 8
  %conv.i185 = trunc i32 %channel to i16
  %135 = tail call i16 @llvm.bswap.i16(i16 %conv.i185) #8
  %136 = ptrtoint ptr %130 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %135, ptr %130, align 8
  %type.i186 = getelementptr inbounds %struct.anon.104, ptr %130, i32 0, i32 1
  %137 = ptrtoint ptr %type.i186 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 2816, ptr %type.i186, align 2
  %conv4.i = sext i32 %val to i64
  %138 = tail call i64 @llvm.bswap.i64(i64 %conv4.i) #8
  %139 = ptrtoint ptr %pkt.i183 to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 %138, ptr %pkt.i183, align 8
  %asic_funcs.i187 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 34
  %140 = ptrtoint ptr %asic_funcs.i187 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %asic_funcs.i187, align 8
  %send_cpu_message.i188 = getelementptr inbounds %struct.hl_asic_funcs, ptr %141, i32 0, i32 54
  %142 = ptrtoint ptr %send_cpu_message.i188 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %send_cpu_message.i188, align 4
  %call.i189 = call i32 %143(ptr noundef %1, ptr noundef nonnull %pkt.i183, i16 noundef zeroext 24, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i189)
  %tobool5.not.i = icmp eq i32 %call.i189, 0
  br i1 %tobool5.not.i, label %if.then47.hl_set_power.exit_crit_edge, label %do.end.i191

if.then47.hl_set_power.exit_crit_edge:            ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %hl_set_power.exit

do.end.i191:                                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i190 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %144 = ptrtoint ptr %dev.i190 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev.i190, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %145, ptr noundef nonnull @.str.26, i32 noundef %channel, i32 noundef %call.i189) #11
  br label %hl_set_power.exit

hl_set_power.exit:                                ; preds = %do.end.i191, %if.then47.hl_set_power.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt.i183) #8
  br label %cleanup

if.else49:                                        ; preds = %sw.bb43
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt.i192) #8
  %146 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i192, i32 0, i32 1
  %147 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt.i192, i32 0, i32 3
  %148 = call ptr @memset(ptr %146, i32 0, i32 16)
  %use_get_power_for_reset_history.i193 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 78
  %149 = ptrtoint ptr %use_get_power_for_reset_history.i193 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %use_get_power_for_reset_history.i193, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool.not.i194 = icmp eq i8 %150, 0
  %..i195 = select i1 %tobool.not.i194, i32 11520, i32 8192
  %151 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %..i195, ptr %146, align 8
  %conv.i196 = trunc i32 %channel to i16
  %152 = tail call i16 @llvm.bswap.i16(i16 %conv.i196) #8
  %153 = ptrtoint ptr %147 to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %152, ptr %147, align 8
  %type.i197 = getelementptr inbounds %struct.anon.104, ptr %147, i32 0, i32 1
  %154 = ptrtoint ptr %type.i197 to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 3072, ptr %type.i197, align 2
  %conv4.i198 = sext i32 %val to i64
  %155 = tail call i64 @llvm.bswap.i64(i64 %conv4.i198) #8
  %156 = ptrtoint ptr %pkt.i192 to i32
  call void @__asan_store8_noabort(i32 %156)
  store i64 %155, ptr %pkt.i192, align 8
  %asic_funcs.i199 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 34
  %157 = ptrtoint ptr %asic_funcs.i199 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %asic_funcs.i199, align 8
  %send_cpu_message.i200 = getelementptr inbounds %struct.hl_asic_funcs, ptr %158, i32 0, i32 54
  %159 = ptrtoint ptr %send_cpu_message.i200 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %send_cpu_message.i200, align 4
  %call.i201 = call i32 %160(ptr noundef %1, ptr noundef nonnull %pkt.i192, i16 noundef zeroext 24, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i201)
  %tobool5.not.i202 = icmp eq i32 %call.i201, 0
  br i1 %tobool5.not.i202, label %if.else49.hl_set_power.exit205_crit_edge, label %do.end.i204

if.else49.hl_set_power.exit205_crit_edge:         ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #10
  br label %hl_set_power.exit205

do.end.i204:                                      ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i203 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %161 = ptrtoint ptr %dev.i203 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dev.i203, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %162, ptr noundef nonnull @.str.26, i32 noundef %channel, i32 noundef %call.i201) #11
  br label %hl_set_power.exit205

hl_set_power.exit205:                             ; preds = %do.end.i204, %if.else49.hl_set_power.exit205_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt.i192) #8
  br label %cleanup

cleanup:                                          ; preds = %hl_set_power.exit205, %hl_set_power.exit, %sw.bb42.cleanup_crit_edge, %hl_set_current.exit182, %hl_set_current.exit, %sw.bb31.cleanup_crit_edge, %hl_set_voltage.exit161, %hl_set_voltage.exit, %sw.bb20.cleanup_crit_edge, %hl_set_pwm_info.exit140, %hl_set_pwm_info.exit, %sw.bb11.cleanup_crit_edge, %hl_set_temperature.exit117, %hl_set_temperature.exit, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb11.cleanup_crit_edge ], [ -22, %sw.bb20.cleanup_crit_edge ], [ -22, %sw.bb31.cleanup_crit_edge ], [ -22, %sw.bb42.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %hl_set_power.exit ], [ 0, %hl_set_power.exit205 ], [ 0, %hl_set_current.exit ], [ 0, %hl_set_current.exit182 ], [ 0, %hl_set_voltage.exit ], [ 0, %hl_set_voltage.exit161 ], [ 0, %hl_set_pwm_info.exit ], [ 0, %hl_set_pwm_info.exit140 ], [ 0, %hl_set_temperature.exit ], [ 0, %hl_set_temperature.exit117 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hl_device_operational(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88, !89}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/misc/habanalabs/common/hwmon.c", i32 165, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @hl_build_hwmon_channel_info._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @hl_build_hwmon_channel_info._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/misc/habanalabs/common/hwmon.c", i32 178, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @hl_build_hwmon_channel_info.__UNIQUE_ID_ddebug299, !9, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/misc/habanalabs/common/hwmon.c", i32 581, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @hl_get_temperature.__UNIQUE_ID_ddebug300, !13, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/misc/habanalabs/common/hwmon.c", i32 590, i32 3}
!18 = !{ptr @hl_get_temperature._entry, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @hl_get_temperature._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/misc/habanalabs/common/hwmon.c", i32 617, i32 3}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @hl_set_temperature._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @hl_set_temperature._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/misc/habanalabs/common/hwmon.c", i32 644, i32 3}
!27 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @hl_get_voltage._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @hl_get_voltage._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/misc/habanalabs/common/hwmon.c", i32 673, i32 3}
!32 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @hl_get_current._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @hl_get_current._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/misc/habanalabs/common/hwmon.c", i32 702, i32 3}
!37 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @hl_get_fan_speed._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @hl_get_fan_speed._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/misc/habanalabs/common/hwmon.c", i32 731, i32 3}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @hl_get_pwm_info._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @hl_get_pwm_info._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/misc/habanalabs/common/hwmon.c", i32 758, i32 3}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @hl_set_pwm_info._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @hl_set_pwm_info._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/misc/habanalabs/common/hwmon.c", i32 781, i32 3}
!52 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @hl_set_voltage._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @hl_set_voltage._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/misc/habanalabs/common/hwmon.c", i32 806, i32 3}
!57 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @hl_set_current._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @hl_set_current._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/misc/habanalabs/common/hwmon.c", i32 837, i32 3}
!62 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @hl_set_power._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @hl_set_power._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/misc/habanalabs/common/hwmon.c", i32 864, i32 3}
!67 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @hl_get_power._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @hl_get_power._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/misc/habanalabs/common/hwmon.c", i32 890, i32 4}
!72 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @hl_hwmon_init._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @hl_hwmon_init._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/misc/habanalabs/common/hwmon.c", i32 895, i32 3}
!77 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @hl_hwmon_init._entry.32, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @hl_hwmon_init._entry_ptr.35, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/misc/habanalabs/common/hwmon.c", i32 900, i32 3}
!82 = !{ptr @hl_hwmon_init._entry.36, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @hl_hwmon_init._entry_ptr.38, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/misc/habanalabs/common/hwmon.c", i32 137, i32 4}
!86 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @adjust_hwmon_flags._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @adjust_hwmon_flags._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @hl_hwmon_ops, !90, !"hl_hwmon_ops", i1 false, i1 false}
!90 = !{!"../drivers/misc/habanalabs/common/hwmon.c", i32 561, i32 31}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{i64 2148997100, i64 2148997105, i64 2148997118, i64 2148997162, i64 2148997196, i64 2148997217}
!101 = !{!"branch_weights", i32 1, i32 2000}
!102 = !{!"auto-init"}

; ModuleID = '/llk/IR_all_yes/drivers/misc/habanalabs/common/firmware_if.c_pt.bc'
source_filename = "../drivers/misc/habanalabs/common/firmware_if.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.fw_load_mgr = type { %union.anon.76, %struct.fw_image_props, %struct.fw_image_props, i32, i32, i8, i8, i8, i8 }
%union.anon.76 = type { %struct.dynamic_fw_load_mgr }
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
%struct.firmware = type { i32, ptr, ptr }
%struct.cpucp_packet = type { %union.anon.100, i32, i32, %union.anon.101, i32 }
%union.anon.100 = type { i64 }
%union.anon.101 = type { i32 }
%struct.hl_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hl_hw_queue = type { ptr, %struct.hl_sync_stream_properties, i32, i32, ptr, i32, i32, %struct.atomic_t, i32, i32, i32, i16, i8, i8 }
%struct.hl_sync_stream_properties = type { [2 x %struct.hl_hw_sob], i16, i16, i16, [2 x i16], i16, i16, i8 }
%struct.hl_hw_sob = type { ptr, %struct.kref, i32, i32, i32, i8 }
%struct.hl_bd = type { i64, i32, i32 }
%struct.cpucp_unmask_irq_arr_packet = type { %struct.cpucp_packet, i32, [0 x i32] }
%struct.gen_pool = type { %struct.spinlock, %struct.list_head, i32, ptr, ptr, ptr }
%struct.cpucp_array_data_packet = type { %struct.cpucp_packet, i32, [0 x i32] }
%struct.hl_info_pci_counters = type { i64, i64, i64 }
%struct.anon.102 = type { i16, i16 }
%struct.lkd_fw_comms_msg = type { %struct.comms_msg_header, %union.anon.106 }
%struct.comms_msg_header = type { i32, i32, i16, i8, i8, [4 x i8] }
%union.anon.106 = type { %struct.anon.107 }
%struct.anon.107 = type { %struct.cpu_dyn_regs, [128 x i8], [128 x i8], [128 x i8], i64 }
%struct.static_fw_load_mgr = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@hl_fw_send_cpu_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 223, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to allocate DMA memory for packet to CPU\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hl_fw_send_cpu_message\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/misc/habanalabs/common/firmware_if.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hl_fw_send_cpu_message._entry_ptr = internal global ptr @hl_fw_send_cpu_message._entry, section ".printk_index", align 4
@hl_fw_send_cpu_message._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 265, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Device CPU packet timeout (0x%x)\0A\00", [62 x i8] zeroinitializer }, align 32
@hl_fw_send_cpu_message._entry_ptr.7 = internal global ptr @hl_fw_send_cpu_message._entry.5, section ".printk_index", align 4
@hl_fw_send_cpu_message._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 277, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"F/W ERROR %d for CPU packet %d\0A\00", [32 x i8] zeroinitializer }, align 32
@hl_fw_send_cpu_message._entry_ptr.10 = internal global ptr @hl_fw_send_cpu_message._entry.8, section ".printk_index", align 4
@hl_fw_unmask_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 315, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to unmask RAZWI IRQ %d\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hl_fw_unmask_irq\00", [47 x i8] zeroinitializer }, align 32
@hl_fw_unmask_irq._entry_ptr = internal global ptr @hl_fw_unmask_irq._entry, section ".printk_index", align 4
@hl_fw_unmask_irq_arr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 336, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"too many elements in IRQ array\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hl_fw_unmask_irq_arr\00", [43 x i8] zeroinitializer }, align 32
@hl_fw_unmask_irq_arr._entry_ptr = internal global ptr @hl_fw_unmask_irq_arr._entry, section ".printk_index", align 4
@hl_fw_unmask_irq_arr._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 354, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to unmask IRQ array\0A\00", [36 x i8] zeroinitializer }, align 32
@hl_fw_unmask_irq_arr._entry_ptr.17 = internal global ptr @hl_fw_unmask_irq_arr._entry.15, section ".printk_index", align 4
@hl_fw_test_cpu_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 377, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"CPU queue test failed (%#08llx)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hl_fw_test_cpu_queue\00", [43 x i8] zeroinitializer }, align 32
@hl_fw_test_cpu_queue._entry_ptr = internal global ptr @hl_fw_test_cpu_queue._entry, section ".printk_index", align 4
@hl_fw_test_cpu_queue._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 379, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"CPU queue test failed, error %d\0A\00", [63 x i8] zeroinitializer }, align 32
@hl_fw_test_cpu_queue._entry_ptr.22 = internal global ptr @hl_fw_test_cpu_queue._entry.20, section ".printk_index", align 4
@hl_fw_send_heartbeat._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 424, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"FW reported EQ fault during heartbeat\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hl_fw_send_heartbeat\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hl_fw_send_heartbeat._entry_ptr = internal global ptr @hl_fw_send_heartbeat._entry, section ".printk_index", align 4
@hl_fw_cpucp_info_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 641, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Failed to allocate DMA memory for CPU-CP info packet\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hl_fw_cpucp_info_get\00", [43 x i8] zeroinitializer }, align 32
@hl_fw_cpucp_info_get._entry_ptr = internal global ptr @hl_fw_cpucp_info_get._entry, section ".printk_index", align 4
@hl_fw_cpucp_info_get._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 656, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to handle CPU-CP info pkt, error %d\0A\00", [52 x i8] zeroinitializer }, align 32
@hl_fw_cpucp_info_get._entry_ptr.30 = internal global ptr @hl_fw_cpucp_info_get._entry.28, section ".printk_index", align 4
@hl_fw_cpucp_info_get._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.2, i32 663, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Errors in device boot\0A\00", [41 x i8] zeroinitializer }, align 32
@hl_fw_cpucp_info_get._entry_ptr.33 = internal global ptr @hl_fw_cpucp_info_get._entry.31, section ".printk_index", align 4
@hl_fw_cpucp_info_get._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.27, ptr @.str.2, i32 673, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to build hwmon channel info, error %d\0A\00", [50 x i8] zeroinitializer }, align 32
@hl_fw_cpucp_info_get._entry_ptr.36 = internal global ptr @hl_fw_cpucp_info_get._entry.34, section ".printk_index", align 4
@hl_fw_cpucp_info_get._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.27, ptr @.str.2, i32 680, ptr @.str.39, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Linux version %s\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@hl_fw_cpucp_info_get._entry_ptr.40 = internal global ptr @hl_fw_cpucp_info_get._entry.37, section ".printk_index", align 4
@hl_fw_get_eeprom_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 788, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Failed to allocate DMA memory for CPU-CP EEPROM packet\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hl_fw_get_eeprom_data\00", [42 x i8] zeroinitializer }, align 32
@hl_fw_get_eeprom_data._entry_ptr = internal global ptr @hl_fw_get_eeprom_data._entry, section ".printk_index", align 4
@hl_fw_get_eeprom_data._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.2, i32 805, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to handle CPU-CP EEPROM packet, error %d\0A\00", [47 x i8] zeroinitializer }, align 32
@hl_fw_get_eeprom_data._entry_ptr.45 = internal global ptr @hl_fw_get_eeprom_data._entry.43, section ".printk_index", align 4
@hl_fw_cpucp_pci_counters_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 835, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to handle CPU-CP PCI info pkt, error %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hl_fw_cpucp_pci_counters_get\00", [35 x i8] zeroinitializer }, align 32
@hl_fw_cpucp_pci_counters_get._entry_ptr = internal global ptr @hl_fw_cpucp_pci_counters_get._entry, section ".printk_index", align 4
@hl_fw_cpucp_pci_counters_get._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 850, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@hl_fw_cpucp_pci_counters_get._entry_ptr.49 = internal global ptr @hl_fw_cpucp_pci_counters_get._entry.48, section ".printk_index", align 4
@hl_fw_cpucp_pci_counters_get._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 864, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@hl_fw_cpucp_pci_counters_get._entry_ptr.51 = internal global ptr @hl_fw_cpucp_pci_counters_get._entry.50, section ".printk_index", align 4
@hl_fw_cpucp_total_energy_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 886, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Failed to handle CpuCP total energy pkt, error %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hl_fw_cpucp_total_energy_get\00", [35 x i8] zeroinitializer }, align 32
@hl_fw_cpucp_total_energy_get._entry_ptr = internal global ptr @hl_fw_cpucp_total_energy_get._entry, section ".printk_index", align 4
@get_used_pll_index._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 922, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid PLL index (%u) error %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"get_used_pll_index\00", [45 x i8] zeroinitializer }, align 32
@get_used_pll_index._entry_ptr = internal global ptr @get_used_pll_index._entry, section ".printk_index", align 4
@get_used_pll_index._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.2, i32 932, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"PLL index %d is not supported\0A\00", [33 x i8] zeroinitializer }, align 32
@get_used_pll_index._entry_ptr.58 = internal global ptr @get_used_pll_index._entry.56, section ".printk_index", align 4
@hl_fw_cpucp_pll_info_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 962, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read PLL info, error %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hl_fw_cpucp_pll_info_get\00", [39 x i8] zeroinitializer }, align 32
@hl_fw_cpucp_pll_info_get._entry_ptr = internal global ptr @hl_fw_cpucp_pll_info_get._entry, section ".printk_index", align 4
@hl_fw_cpucp_power_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 987, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read power, error %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hl_fw_cpucp_power_get\00", [42 x i8] zeroinitializer }, align 32
@hl_fw_cpucp_power_get._entry_ptr = internal global ptr @hl_fw_cpucp_power_get._entry, section ".printk_index", align 4
@hl_fw_dram_replaced_row_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 1011, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Failed to allocate DMA memory for CPU-CP replaced rows info packet\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hl_fw_dram_replaced_row_get\00", [36 x i8] zeroinitializer }, align 32
@hl_fw_dram_replaced_row_get._entry_ptr = internal global ptr @hl_fw_dram_replaced_row_get._entry, section ".printk_index", align 4
@hl_fw_dram_replaced_row_get._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.2, i32 1026, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Failed to handle CPU-CP replaced rows info pkt, error %d\0A\00", [38 x i8] zeroinitializer }, align 32
@hl_fw_dram_replaced_row_get._entry_ptr.67 = internal global ptr @hl_fw_dram_replaced_row_get._entry.65, section ".printk_index", align 4
@hl_fw_dram_pending_row_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 1053, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Failed to handle CPU-CP pending rows info pkt, error %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hl_fw_dram_pending_row_get\00", [37 x i8] zeroinitializer }, align 32
@hl_fw_dram_pending_row_get._entry_ptr = internal global ptr @hl_fw_dram_pending_row_get._entry, section ".printk_index", align 4
@hl_fw_cpucp_engine_core_asid_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 1077, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Failed on ASID configuration request for engine core, error %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"hl_fw_cpucp_engine_core_asid_set\00", [63 x i8] zeroinitializer }, align 32
@hl_fw_cpucp_engine_core_asid_set._entry_ptr = internal global ptr @hl_fw_cpucp_engine_core_asid_set._entry, section ".printk_index", align 4
@hl_fw_ask_hard_reset_without_linux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 1093, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed sending COMMS_RST_DEV\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"hl_fw_ask_hard_reset_without_linux\00", [61 x i8] zeroinitializer }, align 32
@hl_fw_ask_hard_reset_without_linux._entry_ptr = internal global ptr @hl_fw_ask_hard_reset_without_linux._entry, section ".printk_index", align 4
@hl_fw_ask_halt_machine_without_linux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 1114, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed sending COMMS_GOTO_WFE\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"hl_fw_ask_halt_machine_without_linux\00", [59 x i8] zeroinitializer }, align 32
@hl_fw_ask_halt_machine_without_linux._entry_ptr = internal global ptr @hl_fw_ask_halt_machine_without_linux._entry, section ".printk_index", align 4
@hl_request_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 57, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Firmware file %s is not found! (error %d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hl_request_fw\00", [18 x i8] zeroinitializer }, align 32
@hl_request_fw._entry_ptr = internal global ptr @hl_request_fw._entry, section ".printk_index", align 4
@hl_request_fw._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.2, i32 64, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Illegal %s firmware size %zu\0A\00", [34 x i8] zeroinitializer }, align 32
@hl_request_fw._entry_ptr.80 = internal global ptr @hl_request_fw._entry.78, section ".printk_index", align 4
@hl_request_fw.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.81, ptr @.str.77, ptr @.str.2, ptr @.str.82, i8 0, i8 17, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"habanalabs\00", [21 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s firmware size == %zu\0A\00", [39 x i8] zeroinitializer }, align 32
@hl_request_fw._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.77, ptr @.str.2, i32 74, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"FW file size %zu exceeds maximum of %u bytes\0A\00", [50 x i8] zeroinitializer }, align 32
@hl_request_fw._entry_ptr.85 = internal global ptr @hl_request_fw._entry.83, section ".printk_index", align 4
@hl_fw_copy_fw_to_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.2, i32 124, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"size to copy(%u) and offset(%u) are invalid\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hl_fw_copy_fw_to_device\00", [40 x i8] zeroinitializer }, align 32
@hl_fw_copy_fw_to_device._entry_ptr = internal global ptr @hl_fw_copy_fw_to_device._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@fw_report_boot_dev0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.2, i32 441, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Device boot error - DRAM initialization failed\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fw_report_boot_dev0\00", [44 x i8] zeroinitializer }, align 32
@fw_report_boot_dev0._entry_ptr = internal global ptr @fw_report_boot_dev0._entry, section ".printk_index", align 4
@fw_report_boot_dev0._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.2, i32 446, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Device boot error - FIT image corrupted\0A\00", [55 x i8] zeroinitializer }, align 32
@fw_report_boot_dev0._entry_ptr.92 = internal global ptr @fw_report_boot_dev0._entry.90, section ".printk_index", align 4
@fw_report_boot_dev0._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.89, ptr @.str.2, i32 452, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Device boot error - Thermal Sensor initialization failed\0A\00", [38 x i8] zeroinitializer }, align 32
@fw_report_boot_dev0._entry_ptr.95 = internal global ptr @fw_report_boot_dev0._entry.93, section ".printk_index", align 4
@fw_report_boot_dev0._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.89, ptr @.str.2, i32 459, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Device boot error - Skipped waiting for BMC\0A\00", [51 x i8] zeroinitializer }, align 32
@fw_report_boot_dev0._entry_ptr.98 = internal global ptr @fw_report_boot_dev0._entry.96, section ".printk_index", align 4
@fw_report_boot_dev0._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.89, ptr @.str.2, i32 463, ptr @.str.39, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Device boot message - Skipped waiting for BMC\0A\00", [49 x i8] zeroinitializer }, align 32
@fw_report_boot_dev0._entry_ptr.101 = internal global ptr @fw_report_boot_dev0._entry.99, section ".printk_index", align 4
@fw_report_boot_dev0._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.89, ptr @.str.2, i32 473, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Device boot error - Serdes data from BMC not available\0A\00", [40 x i8] zeroinitializer }, align 32
@fw_report_boot_dev0._entry_ptr.104 = internal global ptr @fw_report_boot_dev0._entry.102, section ".printk_index", align 4
@fw_report_boot_dev0._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.89, ptr @.str.2, i32 479, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Device boot error - NIC F/W initialization failed\0A\00", [45 x i8] zeroinitializer }, align 32
@fw_report_boot_dev0._entry_ptr.107 = internal global ptr @fw_report_boot_dev0._entry.105, section ".printk_index", align 4
@fw_report_boot_dev0._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.89, ptr @.str.2, i32 485, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Device boot warning - security not ready\0A\00", [54 x i8] zeroinitializer }, align 32
@fw_report_boot_dev0._entry_ptr.110 = internal global ptr @fw_report_boot_dev0._entry.108, section ".printk_index", align 4
@fw_report_boot_dev0._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.89, ptr @.str.2, i32 490, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Device boot error - security failure\0A\00", [58 x i8] zeroinitializer }, align 32
@fw_report_boot_dev0._entry_ptr.113 = internal global ptr @fw_report_boot_dev0._entry.111, section ".printk_index", align 4
@fw_report_boot_dev0._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.89, ptr @.str.2, i32 495, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Device boot error - eFuse failure\0A\00", [61 x i8] zeroinitializer }, align 32
@fw_report_boot_dev0._entry_ptr.116 = internal global ptr @fw_report_boot_dev0._entry.114, section ".printk_index", align 4
@fw_report_boot_dev0._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.89, ptr @.str.2, i32 500, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Device boot error - Failed to load preboot secondary image\0A\00", [36 x i8] zeroinitializer }, align 32
@fw_report_boot_dev0._entry_ptr.119 = internal global ptr @fw_report_boot_dev0._entry.117, section ".printk_index", align 4
@fw_report_boot_dev0._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.89, ptr @.str.2, i32 505, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Device boot error - PLL failure\0A\00", [63 x i8] zeroinitializer }, align 32
@fw_report_boot_dev0._entry_ptr.122 = internal global ptr @fw_report_boot_dev0._entry.120, section ".printk_index", align 4
@fw_report_boot_dev0.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.81, ptr @.str.89, ptr @.str.2, ptr @.str.123, i8 0, i8 127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"device unusable status is set\0A\00", [33 x i8] zeroinitializer }, align 32
@fw_report_boot_dev0.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.81, ptr @.str.89, ptr @.str.2, ptr @.str.124, i8 0, i8 -127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.124 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Device status0 %#x\0A\00", [44 x i8] zeroinitializer }, align 32
@fw_report_boot_dev0._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.89, ptr @.str.2, i32 521, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Device boot warning - Skipped DRAM initialization\0A\00", [45 x i8] zeroinitializer }, align 32
@fw_report_boot_dev0._entry_ptr.127 = internal global ptr @fw_report_boot_dev0._entry.125, section ".printk_index", align 4
@fw_report_boot_dev0._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.89, ptr @.str.2, i32 530, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Device boot warning - Failed to load preboot primary image\0A\00", [36 x i8] zeroinitializer }, align 32
@fw_report_boot_dev0._entry_ptr.130 = internal global ptr @fw_report_boot_dev0._entry.128, section ".printk_index", align 4
@fw_report_boot_dev0._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.89, ptr @.str.2, i32 539, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Device boot warning - TPM failure\0A\00", [61 x i8] zeroinitializer }, align 32
@fw_report_boot_dev0._entry_ptr.133 = internal global ptr @fw_report_boot_dev0._entry.131, section ".printk_index", align 4
@fw_report_boot_dev0._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.89, ptr @.str.2, i32 548, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Device boot error - unknown ERR0 error 0x%08x\0A\00", [49 x i8] zeroinitializer }, align 32
@fw_report_boot_dev0._entry_ptr.136 = internal global ptr @fw_report_boot_dev0._entry.134, section ".printk_index", align 4
@fw_report_boot_dev1.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.81, ptr @.str.137, ptr @.str.2, ptr @.str.138, i8 0, i8 -113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.137 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fw_report_boot_dev1\00", [44 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Device status1 %#x\0A\00", [44 x i8] zeroinitializer }, align 32
@fw_report_boot_dev1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.137, ptr @.str.2, i32 580, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Device boot error - unknown ERR1 error 0x%08x\0A\00", [49 x i8] zeroinitializer }, align 32
@fw_report_boot_dev1._entry_ptr = internal global ptr @fw_report_boot_dev1._entry, section ".printk_index", align 4
@.str.140 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fw-\00", [28 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@hl_fw_send_msi_info_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.143, ptr @.str.2, i32 724, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CPUCP array data is too big\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hl_fw_send_msi_info_msg\00", [40 x i8] zeroinitializer }, align 32
@hl_fw_send_msi_info_msg._entry_ptr = internal global ptr @hl_fw_send_msi_info_msg._entry, section ".printk_index", align 4
@hl_fw_send_msi_info_msg._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.143, ptr @.str.2, i32 752, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to send CPUCP array data\0A\00", [63 x i8] zeroinitializer }, align 32
@hl_fw_send_msi_info_msg._entry_ptr.146 = internal global ptr @hl_fw_send_msi_info_msg._entry.144, section ".printk_index", align 4
@hl_fw_read_preboot_caps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 1214, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CPU boot ready status timeout\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hl_fw_read_preboot_caps\00", [40 x i8] zeroinitializer }, align 32
@hl_fw_read_preboot_caps._entry_ptr = internal global ptr @hl_fw_read_preboot_caps._entry, section ".printk_index", align 4
@hl_fw_read_preboot_caps.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.81, ptr @.str.148, ptr @.str.2, ptr @.str.149, i8 1, i8 58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.149 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Attempting %s FW load\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dynamic\00", [24 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"legacy\00", [25 x i8] zeroinitializer }, align 32
@detect_cpu_boot_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.153, ptr @.str.2, i32 1136, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Device boot progress - BTL/ROM did NOT run\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"detect_cpu_boot_status\00", [41 x i8] zeroinitializer }, align 32
@detect_cpu_boot_status._entry_ptr = internal global ptr @detect_cpu_boot_status._entry, section ".printk_index", align 4
@detect_cpu_boot_status._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.153, ptr @.str.2, i32 1140, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Device boot progress - Stuck inside WFE loop\0A\00", [50 x i8] zeroinitializer }, align 32
@detect_cpu_boot_status._entry_ptr.156 = internal global ptr @detect_cpu_boot_status._entry.154, section ".printk_index", align 4
@detect_cpu_boot_status._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.153, ptr @.str.2, i32 1144, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Device boot progress - Stuck in BTL\0A\00", [59 x i8] zeroinitializer }, align 32
@detect_cpu_boot_status._entry_ptr.159 = internal global ptr @detect_cpu_boot_status._entry.157, section ".printk_index", align 4
@detect_cpu_boot_status._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.153, ptr @.str.2, i32 1148, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Device boot progress - Stuck in Preboot\0A\00", [55 x i8] zeroinitializer }, align 32
@detect_cpu_boot_status._entry_ptr.162 = internal global ptr @detect_cpu_boot_status._entry.160, section ".printk_index", align 4
@detect_cpu_boot_status._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.153, ptr @.str.2, i32 1152, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Device boot progress - Stuck in SPL\0A\00", [59 x i8] zeroinitializer }, align 32
@detect_cpu_boot_status._entry_ptr.165 = internal global ptr @detect_cpu_boot_status._entry.163, section ".printk_index", align 4
@detect_cpu_boot_status._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.153, ptr @.str.2, i32 1156, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Device boot progress - Stuck in u-boot\0A\00", [56 x i8] zeroinitializer }, align 32
@detect_cpu_boot_status._entry_ptr.168 = internal global ptr @detect_cpu_boot_status._entry.166, section ".printk_index", align 4
@detect_cpu_boot_status._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.153, ptr @.str.2, i32 1160, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Device boot progress - DRAM initialization failed\0A\00", [45 x i8] zeroinitializer }, align 32
@detect_cpu_boot_status._entry_ptr.171 = internal global ptr @detect_cpu_boot_status._entry.169, section ".printk_index", align 4
@detect_cpu_boot_status._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.153, ptr @.str.2, i32 1164, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Device boot progress - Cannot boot\0A\00", [60 x i8] zeroinitializer }, align 32
@detect_cpu_boot_status._entry_ptr.174 = internal global ptr @detect_cpu_boot_status._entry.172, section ".printk_index", align 4
@detect_cpu_boot_status._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.153, ptr @.str.2, i32 1168, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Device boot progress - Thermal Sensor initialization failed\0A\00", [35 x i8] zeroinitializer }, align 32
@detect_cpu_boot_status._entry_ptr.177 = internal global ptr @detect_cpu_boot_status._entry.175, section ".printk_index", align 4
@detect_cpu_boot_status._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.153, ptr @.str.2, i32 1172, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Device boot progress - Stuck in preboot after security initialization\0A\00", [57 x i8] zeroinitializer }, align 32
@detect_cpu_boot_status._entry_ptr.180 = internal global ptr @detect_cpu_boot_status._entry.178, section ".printk_index", align 4
@detect_cpu_boot_status._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.153, ptr @.str.2, i32 1177, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Device boot progress - Invalid status code %d\0A\00", [49 x i8] zeroinitializer }, align 32
@detect_cpu_boot_status._entry_ptr.183 = internal global ptr @detect_cpu_boot_status._entry.181, section ".printk_index", align 4
@hl_fw_preboot_update_state.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.81, ptr @.str.184, ptr @.str.2, ptr @.str.185, i8 1, i8 84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.184 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hl_fw_preboot_update_state\00", [37 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Firmware preboot boot device status0 %#x\0A\00", [54 x i8] zeroinitializer }, align 32
@hl_fw_preboot_update_state.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.81, ptr @.str.184, ptr @.str.2, ptr @.str.186, i8 1, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.186 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Firmware preboot boot device status1 %#x\0A\00", [54 x i8] zeroinitializer }, align 32
@hl_fw_preboot_update_state.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.81, ptr @.str.184, ptr @.str.2, ptr @.str.187, i8 1, i8 85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.187 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Firmware preboot hard-reset is %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@hl_fw_preboot_update_state.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.81, ptr @.str.184, ptr @.str.2, ptr @.str.190, i8 1, i8 86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.190 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"firmware-level security is %s\0A\00", [33 x i8] zeroinitializer }, align 32
@hl_fw_preboot_update_state.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.81, ptr @.str.184, ptr @.str.2, ptr @.str.191, i8 1, i8 87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.191 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GIC controller is %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Boot-fit\00", [23 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Preboot\00", [24 x i8] zeroinitializer }, align 32
@hl_fw_static_read_device_fw_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.195, ptr @.str.2, i32 1287, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Undefined FW component: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"hl_fw_static_read_device_fw_version\00", [60 x i8] zeroinitializer }, align 32
@hl_fw_static_read_device_fw_version._entry_ptr = internal global ptr @hl_fw_static_read_device_fw_version._entry, section ".printk_index", align 4
@hl_fw_static_read_device_fw_version._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.195, ptr @.str.2, i32 1299, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s version offset (0x%x) is above SRAM\0A\00", [56 x i8] zeroinitializer }, align 32
@hl_fw_static_read_device_fw_version._entry_ptr.198 = internal global ptr @hl_fw_static_read_device_fw_version._entry.196, section ".printk_index", align 4
@.str.199 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"unavailable\00", [20 x i8] zeroinitializer }, align 32
@hl_fw_static_read_device_fw_version._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.195, ptr @.str.2, i32 1307, ptr @.str.39, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"boot-fit version %s\0A\00", [43 x i8] zeroinitializer }, align 32
@hl_fw_static_read_device_fw_version._entry_ptr.202 = internal global ptr @hl_fw_static_read_device_fw_version._entry.200, section ".printk_index", align 4
@hl_fw_static_read_device_fw_version._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.195, ptr @.str.2, i32 1317, ptr @.str.39, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@hl_fw_static_read_device_fw_version._entry_ptr.205 = internal global ptr @hl_fw_static_read_device_fw_version._entry.203, section ".printk_index", align 4
@hl_fw_static_read_device_fw_version._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.195, ptr @.str.2, i32 1323, ptr @.str.39, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"preboot version %s\0A\00", [44 x i8] zeroinitializer }, align 32
@hl_fw_static_read_device_fw_version._entry_ptr.208 = internal global ptr @hl_fw_static_read_device_fw_version._entry.206, section ".printk_index", align 4
@hl_fw_dynamic_report_error_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.210, ptr @.str.2, i32 1443, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Device status %s, expected status: %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"hl_fw_dynamic_report_error_status\00", [62 x i8] zeroinitializer }, align 32
@hl_fw_dynamic_report_error_status._entry_ptr = internal global ptr @hl_fw_dynamic_report_error_status._entry, section ".printk_index", align 4
@hl_dynamic_fw_status_str = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219], [40 x i8] zeroinitializer }, align 32
@hl_fw_dynamic_report_error_status._entry.211 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.210, ptr @.str.2, i32 1447, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Device status unknown %d, expected status: %s\0A\00", [49 x i8] zeroinitializer }, align 32
@hl_fw_dynamic_report_error_status._entry_ptr.213 = internal global ptr @hl_fw_dynamic_report_error_status._entry.211, section ".printk_index", align 4
@.str.214 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NOOP\00", [27 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ACK\00", [28 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"OK\00", [29 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ERR\00", [28 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"VALID_ERR\00", [22 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TIMEOUT_ERR\00", [20 x i8] zeroinitializer }, align 32
@hl_fw_dynamic_extract_fw_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.221, ptr @.str.2, i32 1502, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"FW status: invalid RAM type %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"hl_fw_dynamic_extract_fw_response\00", [62 x i8] zeroinitializer }, align 32
@hl_fw_dynamic_extract_fw_response._entry_ptr = internal global ptr @hl_fw_dynamic_extract_fw_response._entry, section ".printk_index", align 4
@hl_fw_dynamic_init_cpu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.223, ptr @.str.2, i32 2357, ptr @.str.39, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Loading firmware to device, may take some time...\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hl_fw_dynamic_init_cpu\00", [41 x i8] zeroinitializer }, align 32
@hl_fw_dynamic_init_cpu._entry_ptr = internal global ptr @hl_fw_dynamic_init_cpu._entry, section ".printk_index", align 4
@hl_fw_dynamic_init_cpu._entry.224 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.223, ptr @.str.2, i32 2399, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to load boot fit\0A\00", [39 x i8] zeroinitializer }, align 32
@hl_fw_dynamic_init_cpu._entry_ptr.226 = internal global ptr @hl_fw_dynamic_init_cpu._entry.224, section ".printk_index", align 4
@hl_fw_dynamic_init_cpu._entry.227 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.223, ptr @.str.2, i32 2422, ptr @.str.39, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Skip loading Linux F/W\0A\00", [40 x i8] zeroinitializer }, align 32
@hl_fw_dynamic_init_cpu._entry_ptr.229 = internal global ptr @hl_fw_dynamic_init_cpu._entry.227, section ".printk_index", align 4
@hl_fw_dynamic_init_cpu._entry.230 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.223, ptr @.str.2, i32 2432, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@hl_fw_dynamic_init_cpu._entry_ptr.231 = internal global ptr @hl_fw_dynamic_init_cpu._entry.230, section ".printk_index", align 4
@hl_fw_dynamic_init_cpu._entry.232 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.223, ptr @.str.2, i32 2441, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to load Linux\0A\00", [42 x i8] zeroinitializer }, align 32
@hl_fw_dynamic_init_cpu._entry_ptr.234 = internal global ptr @hl_fw_dynamic_init_cpu._entry.232, section ".printk_index", align 4
@hl_fw_dynamic_send_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.236, ptr @.str.2, i32 2303, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Send COMMS message - invalid message type %u\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hl_fw_dynamic_send_msg\00", [41 x i8] zeroinitializer }, align 32
@hl_fw_dynamic_send_msg._entry_ptr = internal global ptr @hl_fw_dynamic_send_msg._entry, section ".printk_index", align 4
@hl_fw_copy_msg_to_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.237, ptr @.str.2, i32 158, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hl_fw_copy_msg_to_device\00", [39 x i8] zeroinitializer }, align 32
@hl_fw_copy_msg_to_device._entry_ptr = internal global ptr @hl_fw_copy_msg_to_device._entry, section ".printk_index", align 4
@hl_fw_dynamic_read_and_validate_descriptor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.238, ptr @.str.239, ptr @.str.2, i32 1860, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"invalid mem transfer request for FW descriptor\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"hl_fw_dynamic_read_and_validate_descriptor\00", [53 x i8] zeroinitializer }, align 32
@hl_fw_dynamic_read_and_validate_descriptor._entry_ptr = internal global ptr @hl_fw_dynamic_read_and_validate_descriptor._entry, section ".printk_index", align 4
@hl_fw_dynamic_validate_memory_bound._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.240, ptr @.str.241, ptr @.str.2, i32 1700, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"dynamic FW load: memory transfer end address out of memory region bounds. addr: %llx\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"hl_fw_dynamic_validate_memory_bound\00", [60 x i8] zeroinitializer }, align 32
@hl_fw_dynamic_validate_memory_bound._entry_ptr = internal global ptr @hl_fw_dynamic_validate_memory_bound._entry, section ".printk_index", align 4
@hl_fw_dynamic_validate_memory_bound._entry.242 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.243, ptr @.str.241, ptr @.str.2, i32 1712, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"FW image beyond PCI BAR bounds\0A\00", [32 x i8] zeroinitializer }, align 32
@hl_fw_dynamic_validate_memory_bound._entry_ptr.244 = internal global ptr @hl_fw_dynamic_validate_memory_bound._entry.242, section ".printk_index", align 4
@hl_fw_dynamic_validate_descriptor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.245, ptr @.str.246, ptr @.str.2, i32 1742, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Invalid magic for dynamic FW descriptor (%x)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"hl_fw_dynamic_validate_descriptor\00", [62 x i8] zeroinitializer }, align 32
@hl_fw_dynamic_validate_descriptor._entry_ptr = internal global ptr @hl_fw_dynamic_validate_descriptor._entry, section ".printk_index", align 4
@hl_fw_dynamic_validate_descriptor._entry.247 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.248, ptr @.str.246, ptr @.str.2, i32 1748, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Invalid version for dynamic FW descriptor (%x)\0A\00", [48 x i8] zeroinitializer }, align 32
@hl_fw_dynamic_validate_descriptor._entry_ptr.249 = internal global ptr @hl_fw_dynamic_validate_descriptor._entry.247, section ".printk_index", align 4
@hl_fw_dynamic_validate_descriptor._entry.250 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.251, ptr @.str.246, ptr @.str.2, i32 1764, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Invalid descriptor size 0x%x, expected size 0x%zx\0A\00", [45 x i8] zeroinitializer }, align 32
@hl_fw_dynamic_validate_descriptor._entry_ptr.252 = internal global ptr @hl_fw_dynamic_validate_descriptor._entry.250, section ".printk_index", align 4
@hl_fw_dynamic_validate_descriptor._entry.253 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.254, ptr @.str.246, ptr @.str.2, i32 1773, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"CRC32 mismatch for dynamic FW descriptor (%x:%x)\0A\00", [46 x i8] zeroinitializer }, align 32
@hl_fw_dynamic_validate_descriptor._entry_ptr.255 = internal global ptr @hl_fw_dynamic_validate_descriptor._entry.253, section ".printk_index", align 4
@hl_fw_dynamic_validate_descriptor._entry.256 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.257, ptr @.str.246, ptr @.str.2, i32 1783, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Invalid region to copy FW image address=%llx\0A\00", [50 x i8] zeroinitializer }, align 32
@hl_fw_dynamic_validate_descriptor._entry_ptr.258 = internal global ptr @hl_fw_dynamic_validate_descriptor._entry.256, section ".printk_index", align 4
@hl_fw_dynamic_validate_descriptor._entry.259 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.260, ptr @.str.246, ptr @.str.2, i32 1801, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"invalid mem transfer request for FW image\0A\00", [53 x i8] zeroinitializer }, align 32
@hl_fw_dynamic_validate_descriptor._entry_ptr.261 = internal global ptr @hl_fw_dynamic_validate_descriptor._entry.259, section ".printk_index", align 4
@hl_fw_dynamic_read_device_fw_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.262, ptr @.str.2, i32 1922, ptr @.str.39, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"hl_fw_dynamic_read_device_fw_version\00", [59 x i8] zeroinitializer }, align 32
@hl_fw_dynamic_read_device_fw_version._entry_ptr = internal global ptr @hl_fw_dynamic_read_device_fw_version._entry, section ".printk_index", align 4
@hl_fw_dynamic_read_device_fw_version._entry.263 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.262, ptr @.str.2, i32 1935, ptr @.str.39, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@hl_fw_dynamic_read_device_fw_version._entry_ptr.264 = internal global ptr @hl_fw_dynamic_read_device_fw_version._entry.263, section ".printk_index", align 4
@hl_fw_dynamic_read_device_fw_version._entry.265 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.262, ptr @.str.2, i32 1941, ptr @.str.39, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@hl_fw_dynamic_read_device_fw_version._entry_ptr.266 = internal global ptr @hl_fw_dynamic_read_device_fw_version._entry.265, section ".printk_index", align 4
@hl_fw_dynamic_read_device_fw_version._entry.267 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.262, ptr @.str.2, i32 1947, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@hl_fw_dynamic_read_device_fw_version._entry_ptr.268 = internal global ptr @hl_fw_dynamic_read_device_fw_version._entry.267, section ".printk_index", align 4
@hl_fw_boot_fit_update_state.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.81, ptr @.str.269, ptr @.str.2, ptr @.str.270, i8 1, i8 -2, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.269 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hl_fw_boot_fit_update_state\00", [36 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Firmware boot CPU status0 %#x\0A\00", [33 x i8] zeroinitializer }, align 32
@hl_fw_boot_fit_update_state.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.81, ptr @.str.269, ptr @.str.2, ptr @.str.271, i8 2, i8 0, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.271 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Firmware boot CPU status1 %#x\0A\00", [33 x i8] zeroinitializer }, align 32
@hl_fw_boot_fit_update_state.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.81, ptr @.str.269, ptr @.str.2, ptr @.str.272, i8 2, i8 1, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.272 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Firmware boot CPU hard-reset is %s\0A\00", [60 x i8] zeroinitializer }, align 32
@hl_fw_dynamic_wait_for_boot_fit_active._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.273, ptr @.str.274, ptr @.str.2, i32 2181, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to wait for boot\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"hl_fw_dynamic_wait_for_boot_fit_active\00", [57 x i8] zeroinitializer }, align 32
@hl_fw_dynamic_wait_for_boot_fit_active._entry_ptr = internal global ptr @hl_fw_dynamic_wait_for_boot_fit_active._entry, section ".printk_index", align 4
@hl_fw_dynamic_wait_for_boot_fit_active.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.81, ptr @.str.274, ptr @.str.2, ptr @.str.275, i8 2, i8 34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.275 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"uboot status = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@hl_fw_dynamic_wait_for_linux_active._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.276, ptr @.str.277, ptr @.str.2, i32 2208, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to wait for Linux\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"hl_fw_dynamic_wait_for_linux_active\00", [60 x i8] zeroinitializer }, align 32
@hl_fw_dynamic_wait_for_linux_active._entry_ptr = internal global ptr @hl_fw_dynamic_wait_for_linux_active._entry, section ".printk_index", align 4
@hl_fw_dynamic_wait_for_linux_active.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.81, ptr @.str.277, ptr @.str.2, ptr @.str.278, i8 2, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.278 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Boot status = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@hl_fw_linux_update_state.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.81, ptr @.str.279, ptr @.str.2, ptr @.str.280, i8 2, i8 51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.279 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hl_fw_linux_update_state\00", [39 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Firmware application CPU status0 %#x\0A\00", [58 x i8] zeroinitializer }, align 32
@hl_fw_linux_update_state.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.81, ptr @.str.279, ptr @.str.2, ptr @.str.191, i8 2, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@hl_fw_linux_update_state.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.81, ptr @.str.279, ptr @.str.2, ptr @.str.281, i8 2, i8 54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.281 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Firmware application CPU status1 %#x\0A\00", [58 x i8] zeroinitializer }, align 32
@hl_fw_linux_update_state.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.81, ptr @.str.279, ptr @.str.2, ptr @.str.282, i8 2, i8 55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.282 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Firmware application CPU hard-reset is %s\0A\00", [53 x i8] zeroinitializer }, align 32
@hl_fw_linux_update_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.283, ptr @.str.279, ptr @.str.2, i32 2270, ptr @.str.39, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Successfully loaded firmware to device\0A\00", [56 x i8] zeroinitializer }, align 32
@hl_fw_linux_update_state._entry_ptr = internal global ptr @hl_fw_linux_update_state._entry, section ".printk_index", align 4
@hl_fw_dynamic_update_linux_interrupt_if._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.284, ptr @.str.285, ptr @.str.2, i32 2072, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Using a single interrupt interface towards cpucp\00", [47 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"hl_fw_dynamic_update_linux_interrupt_if\00", [56 x i8] zeroinitializer }, align 32
@hl_fw_dynamic_update_linux_interrupt_if._entry_ptr = internal global ptr @hl_fw_dynamic_update_linux_interrupt_if._entry, section ".printk_index", align 4
@hl_fw_static_init_cpu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.286, ptr @.str.287, ptr @.str.2, i32 2497, ptr @.str.39, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Going to wait for device boot (up to %lds)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hl_fw_static_init_cpu\00", [42 x i8] zeroinitializer }, align 32
@hl_fw_static_init_cpu._entry_ptr = internal global ptr @hl_fw_static_init_cpu._entry, section ".printk_index", align 4
@hl_fw_static_init_cpu.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.81, ptr @.str.287, ptr @.str.2, ptr @.str.288, i8 2, i8 115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.288 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"No boot fit request received, resuming boot\0A\00", [51 x i8] zeroinitializer }, align 32
@hl_fw_static_init_cpu._entry.289 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.290, ptr @.str.287, ptr @.str.2, i32 2533, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Timeout waiting for boot fit load ack\0A\00", [57 x i8] zeroinitializer }, align 32
@hl_fw_static_init_cpu._entry_ptr.291 = internal global ptr @hl_fw_static_init_cpu._entry.289, section ".printk_index", align 4
@hl_fw_static_init_cpu.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.81, ptr @.str.287, ptr @.str.2, ptr @.str.275, i8 2, i8 -128, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@hl_fw_static_init_cpu._entry.292 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.287, ptr @.str.2, i32 2581, ptr @.str.39, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@hl_fw_static_init_cpu._entry_ptr.293 = internal global ptr @hl_fw_static_init_cpu._entry.292, section ".printk_index", align 4
@hl_fw_static_init_cpu._entry.294 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.287, ptr @.str.2, i32 2592, ptr @.str.39, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@hl_fw_static_init_cpu._entry_ptr.295 = internal global ptr @hl_fw_static_init_cpu._entry.294, section ".printk_index", align 4
@hl_fw_static_init_cpu._entry.296 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.297, ptr @.str.287, ptr @.str.2, i32 2612, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to get ACK on skipping BMC, %d\0A\00", [57 x i8] zeroinitializer }, align 32
@hl_fw_static_init_cpu._entry_ptr.298 = internal global ptr @hl_fw_static_init_cpu._entry.296, section ".printk_index", align 4
@hl_fw_static_init_cpu._entry.299 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.300, ptr @.str.287, ptr @.str.2, i32 2635, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Device reports FIT image is corrupted\0A\00", [57 x i8] zeroinitializer }, align 32
@hl_fw_static_init_cpu._entry_ptr.301 = internal global ptr @hl_fw_static_init_cpu._entry.299, section ".printk_index", align 4
@hl_fw_static_init_cpu._entry.302 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.303, ptr @.str.287, ptr @.str.2, i32 2639, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to load firmware to device, %d\0A\00", [57 x i8] zeroinitializer }, align 32
@hl_fw_static_init_cpu._entry_ptr.304 = internal global ptr @hl_fw_static_init_cpu._entry.302, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 7, i64 11, i64 15, i64 16]
@__sancov_gen_cov_switch_values.305 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 7, i64 11, i64 15, i64 16]
@__sancov_gen_cov_switch_values.306 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 11, i64 15]
@__sancov_gen_cov_switch_values.307 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 11, i64 15]
@__sancov_gen_cov_switch_values.308 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 9]
@__sancov_gen_cov_switch_values.309 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 4, i64 5, i64 6, i64 7, i64 8, i64 10, i64 12, i64 17]
@__sancov_gen_cov_switch_values.310 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.311 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.312 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 15]
@__sancov_gen_cov_switch_values.313 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 15]
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 222, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 265, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 274, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 315, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 336, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 354, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 376, i32 4 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 379, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 424, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 640, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 655, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 663, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 672, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 680, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 787, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 803, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 834, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 849, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 863, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 884, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 921, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 931, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 962, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 987, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1010, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1025, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1052, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1075, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1093, i32 4 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1114, i32 4 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 56, i32 3 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 63, i32 3 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 69, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 72, i32 3 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 122, i32 3 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 440, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 446, i32 3 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 451, i32 3 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 458, i32 4 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 462, i32 4 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 472, i32 3 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 478, i32 3 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 484, i32 3 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 490, i32 3 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 495, i32 3 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 500, i32 3 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 505, i32 3 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 511, i32 3 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 516, i32 3 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 520, i32 3 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 529, i32 3 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 538, i32 3 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 547, i32 3 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 575, i32 3 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 578, i32 3 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 26, i32 24 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 34, i32 29 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 724, i32 3 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 752, i32 3 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1214, i32 3 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1255, i32 2 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1135, i32 3 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1139, i32 3 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1143, i32 3 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1147, i32 3 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1151, i32 3 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1155, i32 3 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1159, i32 3 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1163, i32 3 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1167, i32 3 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1171, i32 3 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1175, i32 3 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1359, i32 2 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1362, i32 2 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1365, i32 2 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1368, i32 2 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1371, i32 2 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1277, i32 10 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1283, i32 10 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1287, i32 3 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1298, i32 3 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1300, i32 17 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1307, i32 4 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1317, i32 4 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1322, i32 4 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1441, i32 3 }
@___asan_gen_.890 = private unnamed_addr constant [25 x i8] c"hl_dynamic_fw_status_str\00", align 1
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1417, i32 14 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1445, i32 3 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1418, i32 21 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1419, i32 20 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1420, i32 19 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1421, i32 20 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1422, i32 26 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1423, i32 28 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1501, i32 3 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 2356, i32 2 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 2399, i32 3 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 2422, i32 3 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 2432, i32 4 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 2441, i32 3 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 2301, i32 3 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 156, i32 3 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1859, i32 3 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1698, i32 3 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1711, i32 3 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1741, i32 3 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1747, i32 3 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1762, i32 3 }
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1771, i32 3 }
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1782, i32 3 }
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1800, i32 3 }
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1922, i32 4 }
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1935, i32 4 }
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1940, i32 4 }
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 1947, i32 3 }
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 2041, i32 3 }
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 2049, i32 3 }
@___asan_gen_.1060 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 2053, i32 2 }
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 2181, i32 3 }
@___asan_gen_.1072 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 2185, i32 2 }
@___asan_gen_.1081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 2208, i32 3 }
@___asan_gen_.1084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 2212, i32 2 }
@___asan_gen_.1090 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 2250, i32 3 }
@___asan_gen_.1093 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 2262, i32 3 }
@___asan_gen_.1096 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 2267, i32 2 }
@___asan_gen_.1102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 2270, i32 2 }
@___asan_gen_.1111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 2071, i32 3 }
@___asan_gen_.1120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 2496, i32 2 }
@___asan_gen_.1123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 2509, i32 3 }
@___asan_gen_.1129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 2532, i32 4 }
@___asan_gen_.1132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 2581, i32 3 }
@___asan_gen_.1135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 2591, i32 2 }
@___asan_gen_.1141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 2610, i32 4 }
@___asan_gen_.1147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 2634, i32 4 }
@___asan_gen_.1148 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1151 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1152 = private constant [48 x i8] c"../drivers/misc/habanalabs/common/firmware_if.c\00", align 1
@___asan_gen_.1153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1152, i32 2637, i32 4 }
@llvm.compiler.used = appending global [384 x ptr] [ptr @detect_cpu_boot_status._entry, ptr @detect_cpu_boot_status._entry.154, ptr @detect_cpu_boot_status._entry.157, ptr @detect_cpu_boot_status._entry.160, ptr @detect_cpu_boot_status._entry.163, ptr @detect_cpu_boot_status._entry.166, ptr @detect_cpu_boot_status._entry.169, ptr @detect_cpu_boot_status._entry.172, ptr @detect_cpu_boot_status._entry.175, ptr @detect_cpu_boot_status._entry.178, ptr @detect_cpu_boot_status._entry.181, ptr @detect_cpu_boot_status._entry_ptr, ptr @detect_cpu_boot_status._entry_ptr.156, ptr @detect_cpu_boot_status._entry_ptr.159, ptr @detect_cpu_boot_status._entry_ptr.162, ptr @detect_cpu_boot_status._entry_ptr.165, ptr @detect_cpu_boot_status._entry_ptr.168, ptr @detect_cpu_boot_status._entry_ptr.171, ptr @detect_cpu_boot_status._entry_ptr.174, ptr @detect_cpu_boot_status._entry_ptr.177, ptr @detect_cpu_boot_status._entry_ptr.180, ptr @detect_cpu_boot_status._entry_ptr.183, ptr @fw_report_boot_dev0._entry, ptr @fw_report_boot_dev0._entry.102, ptr @fw_report_boot_dev0._entry.105, ptr @fw_report_boot_dev0._entry.108, ptr @fw_report_boot_dev0._entry.111, ptr @fw_report_boot_dev0._entry.114, ptr @fw_report_boot_dev0._entry.117, ptr @fw_report_boot_dev0._entry.120, ptr @fw_report_boot_dev0._entry.125, ptr @fw_report_boot_dev0._entry.128, ptr @fw_report_boot_dev0._entry.131, ptr @fw_report_boot_dev0._entry.134, ptr @fw_report_boot_dev0._entry.90, ptr @fw_report_boot_dev0._entry.93, ptr @fw_report_boot_dev0._entry.96, ptr @fw_report_boot_dev0._entry.99, ptr @fw_report_boot_dev0._entry_ptr, ptr @fw_report_boot_dev0._entry_ptr.101, ptr @fw_report_boot_dev0._entry_ptr.104, ptr @fw_report_boot_dev0._entry_ptr.107, ptr @fw_report_boot_dev0._entry_ptr.110, ptr @fw_report_boot_dev0._entry_ptr.113, ptr @fw_report_boot_dev0._entry_ptr.116, ptr @fw_report_boot_dev0._entry_ptr.119, ptr @fw_report_boot_dev0._entry_ptr.122, ptr @fw_report_boot_dev0._entry_ptr.127, ptr @fw_report_boot_dev0._entry_ptr.130, ptr @fw_report_boot_dev0._entry_ptr.133, ptr @fw_report_boot_dev0._entry_ptr.136, ptr @fw_report_boot_dev0._entry_ptr.92, ptr @fw_report_boot_dev0._entry_ptr.95, ptr @fw_report_boot_dev0._entry_ptr.98, ptr @fw_report_boot_dev1._entry, ptr @fw_report_boot_dev1._entry_ptr, ptr @get_used_pll_index._entry, ptr @get_used_pll_index._entry.56, ptr @get_used_pll_index._entry_ptr, ptr @get_used_pll_index._entry_ptr.58, ptr @hl_fw_ask_halt_machine_without_linux._entry, ptr @hl_fw_ask_halt_machine_without_linux._entry_ptr, ptr @hl_fw_ask_hard_reset_without_linux._entry, ptr @hl_fw_ask_hard_reset_without_linux._entry_ptr, ptr @hl_fw_copy_fw_to_device._entry, ptr @hl_fw_copy_fw_to_device._entry_ptr, ptr @hl_fw_copy_msg_to_device._entry, ptr @hl_fw_copy_msg_to_device._entry_ptr, ptr @hl_fw_cpucp_engine_core_asid_set._entry, ptr @hl_fw_cpucp_engine_core_asid_set._entry_ptr, ptr @hl_fw_cpucp_info_get._entry, ptr @hl_fw_cpucp_info_get._entry.28, ptr @hl_fw_cpucp_info_get._entry.31, ptr @hl_fw_cpucp_info_get._entry.34, ptr @hl_fw_cpucp_info_get._entry.37, ptr @hl_fw_cpucp_info_get._entry_ptr, ptr @hl_fw_cpucp_info_get._entry_ptr.30, ptr @hl_fw_cpucp_info_get._entry_ptr.33, ptr @hl_fw_cpucp_info_get._entry_ptr.36, ptr @hl_fw_cpucp_info_get._entry_ptr.40, ptr @hl_fw_cpucp_pci_counters_get._entry, ptr @hl_fw_cpucp_pci_counters_get._entry.48, ptr @hl_fw_cpucp_pci_counters_get._entry.50, ptr @hl_fw_cpucp_pci_counters_get._entry_ptr, ptr @hl_fw_cpucp_pci_counters_get._entry_ptr.49, ptr @hl_fw_cpucp_pci_counters_get._entry_ptr.51, ptr @hl_fw_cpucp_pll_info_get._entry, ptr @hl_fw_cpucp_pll_info_get._entry_ptr, ptr @hl_fw_cpucp_power_get._entry, ptr @hl_fw_cpucp_power_get._entry_ptr, ptr @hl_fw_cpucp_total_energy_get._entry, ptr @hl_fw_cpucp_total_energy_get._entry_ptr, ptr @hl_fw_dram_pending_row_get._entry, ptr @hl_fw_dram_pending_row_get._entry_ptr, ptr @hl_fw_dram_replaced_row_get._entry, ptr @hl_fw_dram_replaced_row_get._entry.65, ptr @hl_fw_dram_replaced_row_get._entry_ptr, ptr @hl_fw_dram_replaced_row_get._entry_ptr.67, ptr @hl_fw_dynamic_extract_fw_response._entry, ptr @hl_fw_dynamic_extract_fw_response._entry_ptr, ptr @hl_fw_dynamic_init_cpu._entry, ptr @hl_fw_dynamic_init_cpu._entry.224, ptr @hl_fw_dynamic_init_cpu._entry.227, ptr @hl_fw_dynamic_init_cpu._entry.230, ptr @hl_fw_dynamic_init_cpu._entry.232, ptr @hl_fw_dynamic_init_cpu._entry_ptr, ptr @hl_fw_dynamic_init_cpu._entry_ptr.226, ptr @hl_fw_dynamic_init_cpu._entry_ptr.229, ptr @hl_fw_dynamic_init_cpu._entry_ptr.231, ptr @hl_fw_dynamic_init_cpu._entry_ptr.234, ptr @hl_fw_dynamic_read_and_validate_descriptor._entry, ptr @hl_fw_dynamic_read_and_validate_descriptor._entry_ptr, ptr @hl_fw_dynamic_read_device_fw_version._entry, ptr @hl_fw_dynamic_read_device_fw_version._entry.263, ptr @hl_fw_dynamic_read_device_fw_version._entry.265, ptr @hl_fw_dynamic_read_device_fw_version._entry.267, ptr @hl_fw_dynamic_read_device_fw_version._entry_ptr, ptr @hl_fw_dynamic_read_device_fw_version._entry_ptr.264, ptr @hl_fw_dynamic_read_device_fw_version._entry_ptr.266, ptr @hl_fw_dynamic_read_device_fw_version._entry_ptr.268, ptr @hl_fw_dynamic_report_error_status._entry, ptr @hl_fw_dynamic_report_error_status._entry.211, ptr @hl_fw_dynamic_report_error_status._entry_ptr, ptr @hl_fw_dynamic_report_error_status._entry_ptr.213, ptr @hl_fw_dynamic_send_msg._entry, ptr @hl_fw_dynamic_send_msg._entry_ptr, ptr @hl_fw_dynamic_update_linux_interrupt_if._entry, ptr @hl_fw_dynamic_update_linux_interrupt_if._entry_ptr, ptr @hl_fw_dynamic_validate_descriptor._entry, ptr @hl_fw_dynamic_validate_descriptor._entry.247, ptr @hl_fw_dynamic_validate_descriptor._entry.250, ptr @hl_fw_dynamic_validate_descriptor._entry.253, ptr @hl_fw_dynamic_validate_descriptor._entry.256, ptr @hl_fw_dynamic_validate_descriptor._entry.259, ptr @hl_fw_dynamic_validate_descriptor._entry_ptr, ptr @hl_fw_dynamic_validate_descriptor._entry_ptr.249, ptr @hl_fw_dynamic_validate_descriptor._entry_ptr.252, ptr @hl_fw_dynamic_validate_descriptor._entry_ptr.255, ptr @hl_fw_dynamic_validate_descriptor._entry_ptr.258, ptr @hl_fw_dynamic_validate_descriptor._entry_ptr.261, ptr @hl_fw_dynamic_validate_memory_bound._entry, ptr @hl_fw_dynamic_validate_memory_bound._entry.242, ptr @hl_fw_dynamic_validate_memory_bound._entry_ptr, ptr @hl_fw_dynamic_validate_memory_bound._entry_ptr.244, ptr @hl_fw_dynamic_wait_for_boot_fit_active._entry, ptr @hl_fw_dynamic_wait_for_boot_fit_active._entry_ptr, ptr @hl_fw_dynamic_wait_for_linux_active._entry, ptr @hl_fw_dynamic_wait_for_linux_active._entry_ptr, ptr @hl_fw_get_eeprom_data._entry, ptr @hl_fw_get_eeprom_data._entry.43, ptr @hl_fw_get_eeprom_data._entry_ptr, ptr @hl_fw_get_eeprom_data._entry_ptr.45, ptr @hl_fw_linux_update_state._entry, ptr @hl_fw_linux_update_state._entry_ptr, ptr @hl_fw_read_preboot_caps._entry, ptr @hl_fw_read_preboot_caps._entry_ptr, ptr @hl_fw_send_cpu_message._entry, ptr @hl_fw_send_cpu_message._entry.5, ptr @hl_fw_send_cpu_message._entry.8, ptr @hl_fw_send_cpu_message._entry_ptr, ptr @hl_fw_send_cpu_message._entry_ptr.10, ptr @hl_fw_send_cpu_message._entry_ptr.7, ptr @hl_fw_send_heartbeat._entry, ptr @hl_fw_send_heartbeat._entry_ptr, ptr @hl_fw_send_msi_info_msg._entry, ptr @hl_fw_send_msi_info_msg._entry.144, ptr @hl_fw_send_msi_info_msg._entry_ptr, ptr @hl_fw_send_msi_info_msg._entry_ptr.146, ptr @hl_fw_static_init_cpu._entry, ptr @hl_fw_static_init_cpu._entry.289, ptr @hl_fw_static_init_cpu._entry.292, ptr @hl_fw_static_init_cpu._entry.294, ptr @hl_fw_static_init_cpu._entry.296, ptr @hl_fw_static_init_cpu._entry.299, ptr @hl_fw_static_init_cpu._entry.302, ptr @hl_fw_static_init_cpu._entry_ptr, ptr @hl_fw_static_init_cpu._entry_ptr.291, ptr @hl_fw_static_init_cpu._entry_ptr.293, ptr @hl_fw_static_init_cpu._entry_ptr.295, ptr @hl_fw_static_init_cpu._entry_ptr.298, ptr @hl_fw_static_init_cpu._entry_ptr.301, ptr @hl_fw_static_init_cpu._entry_ptr.304, ptr @hl_fw_static_read_device_fw_version._entry, ptr @hl_fw_static_read_device_fw_version._entry.196, ptr @hl_fw_static_read_device_fw_version._entry.200, ptr @hl_fw_static_read_device_fw_version._entry.203, ptr @hl_fw_static_read_device_fw_version._entry.206, ptr @hl_fw_static_read_device_fw_version._entry_ptr, ptr @hl_fw_static_read_device_fw_version._entry_ptr.198, ptr @hl_fw_static_read_device_fw_version._entry_ptr.202, ptr @hl_fw_static_read_device_fw_version._entry_ptr.205, ptr @hl_fw_static_read_device_fw_version._entry_ptr.208, ptr @hl_fw_test_cpu_queue._entry, ptr @hl_fw_test_cpu_queue._entry.20, ptr @hl_fw_test_cpu_queue._entry_ptr, ptr @hl_fw_test_cpu_queue._entry_ptr.22, ptr @hl_fw_unmask_irq._entry, ptr @hl_fw_unmask_irq._entry_ptr, ptr @hl_fw_unmask_irq_arr._entry, ptr @hl_fw_unmask_irq_arr._entry.15, ptr @hl_fw_unmask_irq_arr._entry_ptr, ptr @hl_fw_unmask_irq_arr._entry_ptr.17, ptr @hl_request_fw._entry, ptr @hl_request_fw._entry.78, ptr @hl_request_fw._entry.83, ptr @hl_request_fw._entry_ptr, ptr @hl_request_fw._entry_ptr.80, ptr @hl_request_fw._entry_ptr.85, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @.str.123, ptr @.str.124, ptr @.str.126, ptr @.str.129, ptr @.str.132, ptr @.str.135, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.145, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.155, ptr @.str.158, ptr @.str.161, ptr @.str.164, ptr @.str.167, ptr @.str.170, ptr @.str.173, ptr @.str.176, ptr @.str.179, ptr @.str.182, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.197, ptr @.str.199, ptr @.str.201, ptr @.str.204, ptr @.str.207, ptr @.str.209, ptr @.str.210, ptr @hl_dynamic_fw_status_str, ptr @.str.212, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.225, ptr @.str.228, ptr @.str.233, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.243, ptr @.str.245, ptr @.str.246, ptr @.str.248, ptr @.str.251, ptr @.str.254, ptr @.str.257, ptr @.str.260, ptr @.str.262, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.290, ptr @.str.297, ptr @.str.300, ptr @.str.303], section "llvm.metadata"
@0 = internal global [280 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_send_cpu_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_send_cpu_message._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_send_cpu_message._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_unmask_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_unmask_irq_arr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_unmask_irq_arr._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_test_cpu_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_test_cpu_queue._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_send_heartbeat._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_cpucp_info_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_cpucp_info_get._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_cpucp_info_get._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_cpucp_info_get._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_cpucp_info_get._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_get_eeprom_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_get_eeprom_data._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_cpucp_pci_counters_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_cpucp_pci_counters_get._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_cpucp_pci_counters_get._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_cpucp_total_energy_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_used_pll_index._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_used_pll_index._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_cpucp_pll_info_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_cpucp_power_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_dram_replaced_row_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_dram_replaced_row_get._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_dram_pending_row_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_cpucp_engine_core_asid_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_ask_hard_reset_without_linux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_ask_halt_machine_without_linux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_request_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_request_fw._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_request_fw._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_copy_fw_to_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_report_boot_dev0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_report_boot_dev0._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_report_boot_dev0._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_report_boot_dev0._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_report_boot_dev0._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_report_boot_dev0._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_report_boot_dev0._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_report_boot_dev0._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_report_boot_dev0._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_report_boot_dev0._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_report_boot_dev0._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_report_boot_dev0._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_report_boot_dev0._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_report_boot_dev0._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_report_boot_dev0._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_report_boot_dev0._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_report_boot_dev1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_send_msi_info_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_send_msi_info_msg._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_read_preboot_caps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @detect_cpu_boot_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @detect_cpu_boot_status._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @detect_cpu_boot_status._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @detect_cpu_boot_status._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @detect_cpu_boot_status._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @detect_cpu_boot_status._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @detect_cpu_boot_status._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @detect_cpu_boot_status._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @detect_cpu_boot_status._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @detect_cpu_boot_status._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @detect_cpu_boot_status._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_static_read_device_fw_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_static_read_device_fw_version._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_static_read_device_fw_version._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_static_read_device_fw_version._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_static_read_device_fw_version._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_dynamic_report_error_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_dynamic_fw_status_str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_dynamic_report_error_status._entry.211 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_dynamic_extract_fw_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_dynamic_init_cpu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_dynamic_init_cpu._entry.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_dynamic_init_cpu._entry.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_dynamic_init_cpu._entry.230 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_dynamic_init_cpu._entry.232 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_dynamic_send_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_copy_msg_to_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_dynamic_read_and_validate_descriptor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_dynamic_validate_memory_bound._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_dynamic_validate_memory_bound._entry.242 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_dynamic_validate_descriptor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_dynamic_validate_descriptor._entry.247 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_dynamic_validate_descriptor._entry.250 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_dynamic_validate_descriptor._entry.253 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_dynamic_validate_descriptor._entry.256 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_dynamic_validate_descriptor._entry.259 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_dynamic_read_device_fw_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_dynamic_read_device_fw_version._entry.263 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_dynamic_read_device_fw_version._entry.265 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_dynamic_read_device_fw_version._entry.267 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_dynamic_wait_for_boot_fit_active._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_dynamic_wait_for_linux_active._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_linux_update_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_dynamic_update_linux_interrupt_if._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_static_init_cpu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_static_init_cpu._entry.289 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_static_init_cpu._entry.292 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_static_init_cpu._entry.294 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_static_init_cpu._entry.296 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_static_init_cpu._entry.299 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_fw_static_init_cpu._entry.302 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_fw_load_fw_to_device(ptr nocapture noundef readonly %hdev, ptr noundef %fw_name, ptr noundef %dst, i32 noundef %src_offset, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #8
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !551
  %call = call fastcc i32 @hl_request_fw(ptr noundef %hdev, ptr noundef nonnull %fw, ptr noundef %fw_name)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not.i = icmp eq i32 %size, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %size.addr.0.i = phi i32 [ %size, %if.end.if.end.i_crit_edge ], [ %4, %if.then.i ]
  %add.i = add i32 %size.addr.0.i, %src_offset
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %6)
  %cmp.i = icmp ugt i32 %add.i, %6
  br i1 %cmp.i, label %do.end.i, label %if.end4.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.86, i32 noundef %size.addr.0.i, i32 noundef %src_offset) #11
  br label %hl_fw_copy_fw_to_device.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %data.i = getelementptr inbounds %struct.firmware, ptr %2, i32 0, i32 1
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %src_offset
  call void @mmiocpy(ptr noundef %dst, ptr noundef %add.ptr.i, i32 noundef %size.addr.0.i) #8
  br label %hl_fw_copy_fw_to_device.exit

hl_fw_copy_fw_to_device.exit:                     ; preds = %if.end4.i, %do.end.i
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ 0, %if.end4.i ]
  %11 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %12) #8
  br label %cleanup

cleanup:                                          ; preds = %hl_fw_copy_fw_to_device.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %hl_fw_copy_fw_to_device.exit ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hl_request_fw(ptr nocapture noundef readonly %hdev, ptr noundef %firmware_p, ptr noundef %fw_name) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call = tail call i32 @request_firmware(ptr noundef %firmware_p, ptr noundef %fw_name, ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.76, ptr noundef %fw_name, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %firmware_p to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %firmware_p, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %rem = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %do.body8, label %do.end5

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.79, ptr noundef %fw_name, i32 noundef %7) #11
  br label %release_fw

do.body8:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_request_fw.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_request_fw, %if.then13)) #8
          to label %do.end17 [label %if.then13], !srcloc !552

if.then13:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hl_request_fw.__UNIQUE_ID_ddebug297, ptr noundef %11, ptr noundef nonnull @.str.82, ptr noundef %fw_name, i32 noundef %7) #8
  br label %do.end17

do.end17:                                         ; preds = %if.then13, %do.body8
  call void @__sanitizer_cov_trace_const_cmp4(i32 20971520, i32 %7)
  %cmp18 = icmp ugt i32 %7, 20971520
  br i1 %cmp18, label %do.end22, label %do.end17.cleanup_crit_edge

do.end17.cleanup_crit_edge:                       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end22:                                         ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.84, i32 noundef %7, i32 noundef 20971520) #11
  br label %release_fw

release_fw:                                       ; preds = %do.end22, %do.end5
  %14 = ptrtoint ptr %firmware_p to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %firmware_p, align 4
  tail call void @release_firmware(ptr noundef %15) #8
  br label %cleanup

cleanup:                                          ; preds = %release_fw, %do.end17.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end17.cleanup_crit_edge ], [ %call, %do.end ], [ -22, %release_fw ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_fw_send_pci_access_msg(ptr noundef %hdev, i32 noundef %opcode) local_unnamed_addr #0 align 64 {
entry:
  %pkt = alloca %struct.cpucp_packet, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt) #8
  %0 = call ptr @memset(ptr %pkt, i32 0, i32 24)
  %1 = tail call i32 @llvm.bswap.i32(i32 %opcode)
  %2 = lshr i32 %1, 16
  %ctl = getelementptr inbounds %struct.cpucp_packet, ptr %pkt, i32 0, i32 1
  %3 = ptrtoint ptr %ctl to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %ctl, align 8
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %4 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asic_funcs, align 8
  %send_cpu_message = getelementptr inbounds %struct.hl_asic_funcs, ptr %5, i32 0, i32 54
  %6 = ptrtoint ptr %send_cpu_message to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %send_cpu_message, align 4
  %call = call i32 %7(ptr noundef %hdev, ptr noundef nonnull %pkt, i16 noundef zeroext 24, i32 noundef 0, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt) #8
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_fw_send_cpu_message(ptr noundef %hdev, i32 noundef %hw_queue_id, ptr nocapture noundef readonly %msg, i16 noundef zeroext %len, i32 noundef %timeout, ptr noundef writeonly %result) local_unnamed_addr #0 align 64 {
entry:
  %pkt_dma_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %kernel_queues = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 20
  %0 = ptrtoint ptr %kernel_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kernel_queues, align 8
  %arrayidx = getelementptr %struct.hl_hw_queue, ptr %1, i32 %hw_queue_id
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pkt_dma_addr) #8
  %2 = ptrtoint ptr %pkt_dma_addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %pkt_dma_addr, align 4, !annotation !551
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %3 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %asic_funcs, align 8
  %cpu_accessible_dma_pool_alloc = getelementptr inbounds %struct.hl_asic_funcs, ptr %4, i32 0, i32 21
  %5 = ptrtoint ptr %cpu_accessible_dma_pool_alloc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cpu_accessible_dma_pool_alloc, align 4
  %conv = zext i16 %len to i32
  %call = call ptr %6(ptr noundef %hdev, i32 noundef %conv, ptr noundef nonnull %pkt_dma_addr) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = call ptr @memcpy(ptr %call, ptr %msg, i32 %conv)
  %send_cpu_message_lock = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 31
  call void @mutex_lock_nested(ptr noundef %send_cpu_message_lock, i32 noundef 0) #8
  %disabled = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 78
  %10 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %disabled, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool2.not = icmp eq i8 %11, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end4:                                          ; preds = %if.end
  %device_cpu_disabled = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 87
  %12 = ptrtoint ptr %device_cpu_disabled to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %device_cpu_disabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool5.not = icmp eq i8 %13, 0
  br i1 %tobool5.not, label %if.end7, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end7:                                          ; preds = %if.end4
  %fence = getelementptr inbounds %struct.cpucp_packet, ptr %call, i32 0, i32 2
  %14 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %fence, align 4
  %pi8 = getelementptr %struct.hl_hw_queue, ptr %1, i32 %hw_queue_id, i32 6
  %15 = ptrtoint ptr %pi8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pi8, align 4
  %call10 = call i32 @hl_hw_queue_add_ptr(i32 noundef %16, i16 noundef zeroext 1) #8
  %17 = ptrtoint ptr %pkt_dma_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pkt_dma_addr, align 4
  %conv12 = zext i32 %18 to i64
  call void @hl_hw_queue_submit_bd(ptr noundef %hdev, ptr noundef %arrayidx, i32 noundef %call10, i32 noundef %conv, i64 noundef %conv12) #8
  %fw_app_cpu_boot_dev_sts0 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 54
  %19 = ptrtoint ptr %fw_app_cpu_boot_dev_sts0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fw_app_cpu_boot_dev_sts0, align 8
  %and = and i32 %20, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end7.if.end16_crit_edge, label %if.then14

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %pi8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pi8, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end7.if.end16_crit_edge
  %expected_ack_val.0 = phi i32 [ %22, %if.then14 ], [ -24320091, %if.end7.if.end16_crit_edge ]
  %23 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hdev, align 8
  %tobool17.not = icmp eq ptr %24, null
  %call23 = call i64 @ktime_get() #8
  %mul = mul i32 %timeout, 10
  %25 = call i32 @llvm.umin.i32(i32 %mul, i32 10000000)
  %.sink = select i1 %tobool17.not, i32 %25, i32 %timeout
  %cond = zext i32 %.sink to i64
  %mul.i141 = mul nuw nsw i64 %cond, 1000
  %add.i142 = add i64 %call23, %mul.i141
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 260) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !553
  call void @arm_heavy_mb() #8
  %26 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fence, align 4
  %28 = call i32 @llvm.bswap.i32(i32 %27)
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %expected_ack_val.0)
  %cmp42144 = icmp eq i32 %28, %expected_ack_val.0
  br i1 %cmp42144, label %if.end16.for.end.thread_crit_edge, label %if.end45.lr.ph

if.end16.for.end.thread_crit_edge:                ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

if.end45.lr.ph:                                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool46.not = icmp eq i32 %timeout, 0
  br label %if.end45

if.end45:                                         ; preds = %if.end53.if.end45_crit_edge, %if.end45.lr.ph
  br i1 %tobool46.not, label %if.end45.if.end53_crit_edge, label %land.lhs.true

if.end45.if.end53_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

land.lhs.true:                                    ; preds = %if.end45
  %call47 = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call47, i64 %add.i142)
  %cmp3.i = icmp sgt i64 %call47, %add.i142
  br i1 %cmp3.i, label %for.end, label %land.lhs.true.if.end53_crit_edge

land.lhs.true.if.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.end53:                                         ; preds = %land.lhs.true.if.end53_crit_edge, %if.end45.if.end53_crit_edge
  call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !553
  call void @arm_heavy_mb() #8
  %29 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fence, align 4
  %31 = call i32 @llvm.bswap.i32(i32 %30)
  %cmp42 = icmp eq i32 %31, %expected_ack_val.0
  br i1 %cmp42, label %if.end53.for.end.thread_crit_edge, label %if.end53.if.end45_crit_edge

if.end53.if.end45_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.end53.for.end.thread_crit_edge:                ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

for.end.thread:                                   ; preds = %if.end53.for.end.thread_crit_edge, %if.end16.for.end.thread_crit_edge
  call void @hl_hw_queue_inc_ci_kernel(ptr noundef %hdev, i32 noundef %hw_queue_id) #8
  br label %if.end66

for.end:                                          ; preds = %land.lhs.true
  %32 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fence, align 4
  %34 = call i32 @llvm.bswap.i32(i32 %33)
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %expected_ack_val.0)
  %cmp55.not = icmp eq i32 %34, %expected_ack_val.0
  call void @hl_hw_queue_inc_ci_kernel(ptr noundef %hdev, i32 noundef %hw_queue_id) #8
  br i1 %cmp55.not, label %for.end.if.end66_crit_edge, label %do.end63

for.end.if.end66_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

do.end63:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev64 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %35 = ptrtoint ptr %dev64 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev64, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.6, i32 noundef %34) #11
  %37 = ptrtoint ptr %device_cpu_disabled to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %device_cpu_disabled, align 1
  br label %out

if.end66:                                         ; preds = %for.end.if.end66_crit_edge, %for.end.thread
  %ctl = getelementptr inbounds %struct.cpucp_packet, ptr %call, i32 0, i32 1
  %38 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ctl, align 8
  %40 = call i32 @llvm.bswap.i32(i32 %39)
  %and67 = lshr i32 %40, 12
  %shr = and i32 %and67, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool68.not = icmp eq i32 %shr, 0
  br i1 %tobool68.not, label %if.else76, label %do.end72

do.end72:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  %dev73 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %41 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev73, align 4
  %and74 = lshr i32 %40, 16
  %shr75 = and i32 %and74, 8191
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.9, i32 noundef %shr, i32 noundef %shr75) #11
  br label %if.end80

if.else76:                                        ; preds = %if.end66
  %tobool77.not = icmp eq ptr %result, null
  br i1 %tobool77.not, label %if.else76.if.end80_crit_edge, label %if.then78

if.else76.if.end80_crit_edge:                     ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.then78:                                        ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %call to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %call, align 8
  %45 = call i64 @llvm.bswap.i64(i64 %44)
  %46 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %result, align 8
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.else76.if.end80_crit_edge, %do.end72
  %rc.0 = phi i32 [ -5, %do.end72 ], [ 0, %if.then78 ], [ 0, %if.else76.if.end80_crit_edge ]
  %kernel_address = getelementptr %struct.hl_hw_queue, ptr %1, i32 %hw_queue_id, i32 4
  %47 = ptrtoint ptr %kernel_address to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %kernel_address, align 4
  %and81 = and i32 %16, 4095
  %ctl82 = getelementptr %struct.hl_bd, ptr %48, i32 %and81, i32 2
  %49 = ptrtoint ptr %ctl82 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %ctl82, align 4
  br label %out

out:                                              ; preds = %if.end80, %do.end63, %if.end4.out_crit_edge, %if.end.out_crit_edge
  %rc.1 = phi i32 [ 0, %if.end.out_crit_edge ], [ -110, %do.end63 ], [ %rc.0, %if.end80 ], [ -5, %if.end4.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %send_cpu_message_lock) #8
  %50 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %asic_funcs, align 8
  %cpu_accessible_dma_pool_free = getelementptr inbounds %struct.hl_asic_funcs, ptr %51, i32 0, i32 22
  %52 = ptrtoint ptr %cpu_accessible_dma_pool_free to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cpu_accessible_dma_pool_free, align 4
  call void %53(ptr noundef %hdev, i32 noundef %conv, ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ %rc.1, %out ], [ -12, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pkt_dma_addr) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_hw_queue_submit_bd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_hw_queue_add_ptr(i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_hw_queue_inc_ci_kernel(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_fw_unmask_irq(ptr noundef %hdev, i16 noundef zeroext %event_type) local_unnamed_addr #0 align 64 {
entry:
  %pkt = alloca %struct.cpucp_packet, align 8
  %result = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt) #8
  %0 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %result) #8
  %1 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %result, align 8, !annotation !551
  %2 = getelementptr inbounds i8, ptr %pkt, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 16)
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4096, ptr %0, align 8
  %conv = zext i16 %event_type to i64
  %5 = tail call i64 @llvm.bswap.i64(i64 %conv)
  %6 = ptrtoint ptr %pkt to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %pkt, align 8
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %7 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %asic_funcs, align 8
  %send_cpu_message = getelementptr inbounds %struct.hl_asic_funcs, ptr %8, i32 0, i32 54
  %9 = ptrtoint ptr %send_cpu_message to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %send_cpu_message, align 4
  %call = call i32 %10(ptr noundef %hdev, ptr noundef nonnull %pkt, i16 noundef zeroext 24, i32 noundef 0, ptr noundef nonnull %result) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %conv1 = zext i16 %event_type to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.11, i32 noundef %conv1) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_fw_unmask_irq_arr(ptr noundef %hdev, ptr nocapture noundef readonly %irq_arr, i32 noundef %irq_arr_size) local_unnamed_addr #0 align 64 {
entry:
  %result = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %result) #8
  %0 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %result, align 8, !annotation !551
  %add1 = add i32 %irq_arr_size, 39
  %and = and i32 %add1, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %and)
  %cmp = icmp ugt i32 %and, 65535
  br i1 %cmp, label %do.end, label %if.end8.i.i

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.13) #11
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %and, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end3

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end8.i.i
  %div29 = lshr i32 %irq_arr_size, 2
  %3 = tail call i32 @llvm.bswap.i32(i32 %div29)
  %length = getelementptr inbounds %struct.cpucp_unmask_irq_arr_packet, ptr %call9.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %length, align 8
  %irqs = getelementptr inbounds %struct.cpucp_unmask_irq_arr_packet, ptr %call9.i.i, i32 0, i32 2
  %5 = call ptr @memcpy(ptr %irqs, ptr %irq_arr, i32 %irq_arr_size)
  %ctl = getelementptr inbounds %struct.cpucp_packet, ptr %call9.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %ctl to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4352, ptr %ctl, align 8
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %7 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %asic_funcs, align 8
  %send_cpu_message = getelementptr inbounds %struct.hl_asic_funcs, ptr %8, i32 0, i32 54
  %9 = ptrtoint ptr %send_cpu_message to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %send_cpu_message, align 4
  %conv = trunc i32 %and to i16
  %call4 = call i32 %10(ptr noundef %hdev, ptr noundef nonnull %call9.i.i, i16 noundef zeroext %conv, i32 noundef 0, ptr noundef nonnull %result) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end3.if.end11_crit_edge, label %do.end9

if.end3.if.end11_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

do.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %dev10 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %11 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.16) #11
  br label %if.end11

if.end11:                                         ; preds = %do.end9, %if.end3.if.end11_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end8.i.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call4, %if.end11 ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_fw_test_cpu_queue(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  %test_pkt = alloca %struct.cpucp_packet, align 8
  %result = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %test_pkt) #8
  %0 = getelementptr inbounds i8, ptr %test_pkt, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %result) #8
  %2 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %result, align 8, !annotation !551
  %ctl = getelementptr inbounds %struct.cpucp_packet, ptr %test_pkt, i32 0, i32 1
  %3 = ptrtoint ptr %ctl to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4608, ptr %ctl, align 8
  %4 = ptrtoint ptr %test_pkt to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -6492065315281698816, ptr %test_pkt, align 8
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %5 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %asic_funcs, align 8
  %send_cpu_message = getelementptr inbounds %struct.hl_asic_funcs, ptr %6, i32 0, i32 54
  %7 = ptrtoint ptr %send_cpu_message to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %send_cpu_message, align 4
  %call = call i32 %8(ptr noundef %hdev, ptr noundef nonnull %test_pkt, i16 noundef zeroext 24, i32 noundef 0, ptr noundef nonnull %result) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %do.end4

if.then:                                          ; preds = %entry
  %9 = ptrtoint ptr %result to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %result, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4270647205, i64 %10)
  %cmp.not = icmp eq i64 %10, 4270647205
  br i1 %cmp.not, label %if.then.if.end6_crit_edge, label %do.end

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.18, i64 noundef %10) #11
  br label %if.end6

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev5 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %13 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.21, i32 noundef %call) #11
  br label %if.end6

if.end6:                                          ; preds = %do.end4, %do.end, %if.then.if.end6_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %test_pkt) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hl_fw_cpu_accessible_dma_pool_alloc(ptr nocapture noundef readonly %hdev, i32 noundef %size, ptr nocapture noundef writeonly %dma_handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu_accessible_dma_pool = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 28
  %0 = ptrtoint ptr %cpu_accessible_dma_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpu_accessible_dma_pool, align 4
  %algo.i = getelementptr inbounds %struct.gen_pool, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %algo.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i, align 4
  %data.i = getelementptr inbounds %struct.gen_pool, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %call.i.i = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef %1, i32 noundef %size, ptr noundef %3, ptr noundef %5, ptr noundef null) #8
  %cpu_accessible_dma_address = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 27
  %6 = ptrtoint ptr %cpu_accessible_dma_address to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu_accessible_dma_address, align 8
  %cpu_accessible_dma_mem = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 26
  %8 = ptrtoint ptr %cpu_accessible_dma_mem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cpu_accessible_dma_mem, align 4
  %10 = ptrtoint ptr %9 to i32
  %sub = add i32 %7, %call.i.i
  %add = sub i32 %sub, %10
  %11 = ptrtoint ptr %dma_handle to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add, ptr %dma_handle, align 4
  %12 = inttoptr i32 %call.i.i to ptr
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_fw_cpu_accessible_dma_pool_free(ptr nocapture noundef readonly %hdev, i32 noundef %size, ptr noundef %vaddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu_accessible_dma_pool = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 28
  %0 = ptrtoint ptr %cpu_accessible_dma_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpu_accessible_dma_pool, align 4
  %2 = ptrtoint ptr %vaddr to i32
  tail call void @gen_pool_free_owner(ptr noundef %1, i32 noundef %2, i32 noundef %size, ptr noundef null) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_fw_send_heartbeat(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  %hb_pkt = alloca %struct.cpucp_packet, align 8
  %result = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %hb_pkt) #8
  %0 = getelementptr inbounds %struct.cpucp_packet, ptr %hb_pkt, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cpucp_packet, ptr %hb_pkt, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %result) #8
  %2 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %result, align 8, !annotation !551
  %3 = getelementptr inbounds i8, ptr %hb_pkt, i32 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 16)
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4608, ptr %0, align 8
  %6 = ptrtoint ptr %hb_pkt to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -6492065315281698816, ptr %hb_pkt, align 8
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %7 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %asic_funcs, align 8
  %send_cpu_message = getelementptr inbounds %struct.hl_asic_funcs, ptr %8, i32 0, i32 54
  %9 = ptrtoint ptr %send_cpu_message to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %send_cpu_message, align 4
  %call = call i32 %10(ptr noundef %hdev, ptr noundef nonnull %hb_pkt, i16 noundef zeroext 24, i32 noundef 0, ptr noundef nonnull %result) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %11 = ptrtoint ptr %result to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %result, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4270647205, i64 %12)
  %cmp.not = icmp eq i64 %12, 4270647205
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 8
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool1.not = icmp eq i32 %15, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.23) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %lor.lhs.false.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ], [ -5, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %hb_pkt) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_fw_cpucp_info_get(ptr noundef %hdev, i32 noundef %sts_boot_dev_sts0_reg, i32 noundef %sts_boot_dev_sts1_reg, i32 noundef %boot_err0_reg, i32 noundef %boot_err1_reg) local_unnamed_addr #0 align 64 {
entry:
  %pkt = alloca %struct.cpucp_packet, align 8
  %cpucp_info_dma_addr = alloca i32, align 4
  %result = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt) #8
  %0 = getelementptr inbounds i8, ptr %pkt, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpucp_info_dma_addr) #8
  %2 = ptrtoint ptr %cpucp_info_dma_addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %cpucp_info_dma_addr, align 4, !annotation !551
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %result) #8
  %3 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %result, align 8, !annotation !551
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %4 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asic_funcs, align 8
  %cpu_accessible_dma_pool_alloc = getelementptr inbounds %struct.hl_asic_funcs, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %cpu_accessible_dma_pool_alloc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cpu_accessible_dma_pool_alloc, align 4
  %call = call ptr %7(ptr noundef %hdev, i32 noundef 1640, ptr noundef nonnull %cpucp_info_dma_addr) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.26) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = call ptr @memset(ptr %call, i32 0, i32 1640)
  %ctl = getelementptr inbounds %struct.cpucp_packet, ptr %pkt, i32 0, i32 1
  %11 = ptrtoint ptr %ctl to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3584, ptr %ctl, align 8
  %12 = ptrtoint ptr %cpucp_info_dma_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpucp_info_dma_addr, align 4
  %conv = zext i32 %13 to i64
  %14 = call i64 @llvm.bswap.i64(i64 %conv)
  %15 = ptrtoint ptr %pkt to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %pkt, align 8
  %16 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt, i32 0, i32 3
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1745223680, ptr %16, align 8
  %18 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %asic_funcs, align 8
  %send_cpu_message = getelementptr inbounds %struct.hl_asic_funcs, ptr %19, i32 0, i32 54
  %20 = ptrtoint ptr %send_cpu_message to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %send_cpu_message, align 4
  %call2 = call i32 %21(ptr noundef %hdev, ptr noundef nonnull %pkt, i16 noundef zeroext 24, i32 noundef 10000000, ptr noundef nonnull %result) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end9, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev8 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %22 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.29, i32 noundef %call2) #11
  br label %out

if.end9:                                          ; preds = %if.end
  %call10 = call fastcc i32 @fw_read_errors(ptr noundef %hdev, i32 noundef %boot_err0_reg, i32 noundef %boot_err1_reg, i32 noundef %sts_boot_dev_sts0_reg, i32 noundef %sts_boot_dev_sts1_reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end17, label %do.end15

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %dev16 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %24 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev16, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.32) #11
  br label %out

if.end17:                                         ; preds = %if.end9
  %cpucp_info = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 1
  %26 = call ptr @memcpy(ptr %cpucp_info, ptr %call, i32 1640)
  %call19 = call i32 @hl_build_hwmon_channel_info(ptr noundef %hdev, ptr noundef %cpucp_info) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end26, label %do.end24

do.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %dev25 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %27 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev25, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.35, i32 noundef %call19) #11
  br label %out

if.end26:                                         ; preds = %if.end17
  %kernel_version = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 1, i32 1
  %call29 = call fastcc ptr @extract_fw_ver_from_str(ptr noundef %kernel_version)
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %if.end26.if.end36_crit_edge, label %do.end34

if.end26.if.end36_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

do.end34:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %dev35 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %29 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev35, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.38, ptr noundef nonnull %call29) #11
  call void @kfree(ptr noundef nonnull %call29) #8
  br label %if.end36

if.end36:                                         ; preds = %do.end34, %if.end26.if.end36_crit_edge
  %check_eqe_index = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 24, i32 5
  %31 = ptrtoint ptr %check_eqe_index to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %check_eqe_index, align 4
  %fw_cpu_boot_dev_sts0_valid = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 69
  %32 = ptrtoint ptr %fw_cpu_boot_dev_sts0_valid to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %fw_cpu_boot_dev_sts0_valid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool37.not = icmp eq i8 %33, 0
  br i1 %tobool37.not, label %if.end36.if.end47_crit_edge, label %if.then38

if.end36.if.end47_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then38:                                        ; preds = %if.end36
  %34 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %asic_funcs, align 8
  %rreg = getelementptr inbounds %struct.hl_asic_funcs, ptr %35, i32 0, i32 57
  %36 = ptrtoint ptr %rreg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rreg, align 4
  %call40 = call i32 %37(ptr noundef %hdev, i32 noundef %sts_boot_dev_sts0_reg) #8
  %fw_app_cpu_boot_dev_sts0 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 54
  %38 = ptrtoint ptr %fw_app_cpu_boot_dev_sts0 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call40, ptr %fw_app_cpu_boot_dev_sts0, align 8
  %and = and i32 %call40, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool42.not = icmp eq i32 %and, 0
  br i1 %tobool42.not, label %if.then38.if.end47_crit_edge, label %if.then43

if.then38.if.end47_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then43:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %check_eqe_index to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %check_eqe_index, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %if.then38.if.end47_crit_edge, %if.end36.if.end47_crit_edge
  %fw_cpu_boot_dev_sts1_valid = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 70
  %40 = ptrtoint ptr %fw_cpu_boot_dev_sts1_valid to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %fw_cpu_boot_dev_sts1_valid, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool48.not = icmp eq i8 %41, 0
  br i1 %tobool48.not, label %if.end47.out_crit_edge, label %if.then49

if.end47.out_crit_edge:                           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then49:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %asic_funcs, align 8
  %rreg51 = getelementptr inbounds %struct.hl_asic_funcs, ptr %43, i32 0, i32 57
  %44 = ptrtoint ptr %rreg51 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rreg51, align 4
  %call52 = call i32 %45(ptr noundef %hdev, i32 noundef %sts_boot_dev_sts1_reg) #8
  %fw_app_cpu_boot_dev_sts1 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 55
  %46 = ptrtoint ptr %fw_app_cpu_boot_dev_sts1 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call52, ptr %fw_app_cpu_boot_dev_sts1, align 4
  br label %out

out:                                              ; preds = %if.then49, %if.end47.out_crit_edge, %do.end24, %do.end15, %do.end7
  %rc.0 = phi i32 [ %call2, %do.end7 ], [ %call10, %do.end15 ], [ -14, %do.end24 ], [ 0, %if.then49 ], [ 0, %if.end47.out_crit_edge ]
  %47 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %asic_funcs, align 8
  %cpu_accessible_dma_pool_free = getelementptr inbounds %struct.hl_asic_funcs, ptr %48, i32 0, i32 22
  %49 = ptrtoint ptr %cpu_accessible_dma_pool_free to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cpu_accessible_dma_pool_free, align 4
  call void %50(ptr noundef %hdev, i32 noundef 1640, ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ %rc.0, %out ], [ -12, %do.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpucp_info_dma_addr) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fw_read_errors(ptr noundef %hdev, i32 noundef %boot_err0_reg, i32 noundef %boot_err1_reg, i32 noundef %cpu_boot_dev_status0_reg, i32 noundef %cpu_boot_dev_status1_reg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %0 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asic_funcs, align 8
  %rreg = getelementptr inbounds %struct.hl_asic_funcs, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %rreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rreg, align 4
  %call = tail call i32 %3(ptr noundef %hdev, i32 noundef %boot_err0_reg) #8
  %4 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asic_funcs, align 8
  %rreg2 = getelementptr inbounds %struct.hl_asic_funcs, ptr %5, i32 0, i32 57
  %6 = ptrtoint ptr %rreg2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rreg2, align 4
  %call3 = tail call i32 %7(ptr noundef %hdev, i32 noundef %cpu_boot_dev_status0_reg) #8
  %call4 = tail call fastcc zeroext i1 @fw_report_boot_dev0(ptr noundef %hdev, i32 noundef %call, i32 noundef %call3)
  %8 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %asic_funcs, align 8
  %rreg6 = getelementptr inbounds %struct.hl_asic_funcs, ptr %9, i32 0, i32 57
  %10 = ptrtoint ptr %rreg6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rreg6, align 4
  %call7 = tail call i32 %11(ptr noundef %hdev, i32 noundef %boot_err1_reg) #8
  %12 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %asic_funcs, align 8
  %rreg9 = getelementptr inbounds %struct.hl_asic_funcs, ptr %13, i32 0, i32 57
  %14 = ptrtoint ptr %rreg9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rreg9, align 4
  %call10 = tail call i32 %15(ptr noundef %hdev, i32 noundef %cpu_boot_dev_status1_reg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call7)
  %tobool.not.i = icmp sgt i32 %call7, -1
  br i1 %tobool.not.i, label %entry.fw_report_boot_dev1.exit_crit_edge, label %if.end.i

entry.fw_report_boot_dev1.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fw_report_boot_dev1.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call10)
  %tobool2.not.i = icmp sgt i32 %call10, -1
  br i1 %tobool2.not.i, label %if.end.i.land.lhs.true.i_crit_edge, label %do.body.i

if.end.i.land.lhs.true.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fw_report_boot_dev1.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fw_read_errors, %if.then7.i)) #8
          to label %land.lhs.true.i [label %if.then7.i], !srcloc !552

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fw_report_boot_dev1.__UNIQUE_ID_ddebug302, ptr noundef %17, ptr noundef nonnull @.str.138, i32 noundef %call10) #8
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then7.i, %do.body.i, %if.end.i.land.lhs.true.i_crit_edge
  %and11.i = and i32 %call7, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %land.lhs.true.i.if.end26.i_crit_edge, label %do.end16.i

land.lhs.true.i.if.end26.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

do.end16.i:                                       ; preds = %land.lhs.true.i
  %dev17.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %18 = ptrtoint ptr %dev17.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev17.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.139, i32 noundef %call7) #11
  %boot_error_status_mask.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 65
  %20 = ptrtoint ptr %boot_error_status_mask.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %boot_error_status_mask.i, align 8
  %shr.i = lshr i64 %21, 32
  %conv.i = trunc i64 %shr.i to i32
  %and23.i = and i32 %and11.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %do.end16.i.if.end26.i_crit_edge, label %do.end16.i.fw_report_boot_dev1.exit_crit_edge

do.end16.i.fw_report_boot_dev1.exit_crit_edge:    ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fw_report_boot_dev1.exit

do.end16.i.if.end26.i_crit_edge:                  ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

if.end26.i:                                       ; preds = %do.end16.i.if.end26.i_crit_edge, %land.lhs.true.i.if.end26.i_crit_edge
  br label %fw_report_boot_dev1.exit

fw_report_boot_dev1.exit:                         ; preds = %if.end26.i, %do.end16.i.fw_report_boot_dev1.exit_crit_edge, %entry.fw_report_boot_dev1.exit_crit_edge
  %retval.0.i = phi i1 [ false, %if.end26.i ], [ false, %entry.fw_report_boot_dev1.exit_crit_edge ], [ true, %do.end16.i.fw_report_boot_dev1.exit_crit_edge ]
  %or30 = or i1 %call4, %retval.0.i
  %. = select i1 %or30, i32 -5, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_build_hwmon_channel_info(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @extract_fw_ver_from_str(ptr noundef %fw_str) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 16) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @strnstr(ptr noundef %fw_str, ptr noundef nonnull @.str.140, i32 noundef 128) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.free_fw_ver_crit_edge, label %if.end4

if.end.free_fw_ver_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_fw_ver

if.end4:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %call1, i32 3
  %call5 = tail call ptr @strnstr(ptr noundef %add.ptr, ptr noundef nonnull @.str.141, i32 noundef 15) #8
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.free_fw_ver_crit_edge, label %if.end8

if.end4.free_fw_ver_crit_edge:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_fw_ver

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %sub.ptr.lhs.cast = ptrtoint ptr %call5 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub = sub i32 1, %sub.ptr.rhs.cast
  %add = add i32 %sub.ptr.sub, %sub.ptr.lhs.cast
  %call9 = tail call i32 @strscpy(ptr noundef nonnull %call7.i, ptr noundef %add.ptr, i32 noundef %add) #8
  br label %cleanup

free_fw_ver:                                      ; preds = %if.end4.free_fw_ver_crit_edge, %if.end.free_fw_ver_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %free_fw_ver, %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i, %if.end8 ], [ null, %free_fw_ver ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_fw_cpucp_handshake(ptr noundef %hdev, i32 noundef %sts_boot_dev_sts0_reg, i32 noundef %sts_boot_dev_sts1_reg, i32 noundef %boot_err0_reg, i32 noundef %boot_err1_reg) local_unnamed_addr #0 align 64 {
entry:
  %result.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @hl_fw_cpucp_info_get(ptr noundef %hdev, i32 noundef %sts_boot_dev_sts0_reg, i32 noundef %sts_boot_dev_sts1_reg, i32 noundef %boot_err0_reg, i32 noundef %boot_err1_reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %result.i) #8
  %0 = ptrtoint ptr %result.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %result.i, align 8, !annotation !551
  %asic_funcs.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %1 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %asic_funcs.i, align 8
  %get_msi_info.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %2, i32 0, i32 82
  %3 = ptrtoint ptr %get_msi_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_msi_info.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.hl_fw_send_msi_info_msg.exit_crit_edge, label %if.end3.i

if.end.hl_fw_send_msi_info_msg.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %hl_fw_send_msi_info_msg.exit

if.end3.i:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 56) #13
  %tobool4.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool4.not.i, label %if.end3.i.hl_fw_send_msi_info_msg.exit_crit_edge, label %if.end6.i

if.end3.i.hl_fw_send_msi_info_msg.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hl_fw_send_msi_info_msg.exit

if.end6.i:                                        ; preds = %if.end3.i
  %length.i = getelementptr inbounds %struct.cpucp_array_data_packet, ptr %call7.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 100663296, ptr %length.i, align 8
  %data.i = getelementptr inbounds %struct.cpucp_array_data_packet, ptr %call7.i.i.i, i32 0, i32 2
  %7 = call ptr @memset(ptr %data.i, i32 255, i32 24)
  %8 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %asic_funcs.i, align 8
  %get_msi_info8.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %9, i32 0, i32 82
  %10 = ptrtoint ptr %get_msi_info8.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_msi_info8.i, align 4
  tail call void %11(ptr noundef %data.i) #8
  %ctl.i = getelementptr inbounds %struct.cpucp_packet, ptr %call7.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %ctl.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 9472, ptr %ctl.i, align 8
  %13 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %asic_funcs.i, align 8
  %send_cpu_message.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %14, i32 0, i32 54
  %15 = ptrtoint ptr %send_cpu_message.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %send_cpu_message.i, align 4
  %call11.i = call i32 %16(ptr noundef %hdev, ptr noundef nonnull %call7.i.i.i, i16 noundef zeroext 56, i32 noundef 0, ptr noundef nonnull %result.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end6.i.if.end23.i_crit_edge, label %land.lhs.true.i

if.end6.i.if.end23.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

land.lhs.true.i:                                  ; preds = %if.end6.i
  %17 = ptrtoint ptr %result.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %result.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %18)
  %cmp13.i = icmp eq i64 %18, 1
  br i1 %cmp13.i, label %land.lhs.true.i.if.end23.i_crit_edge, label %do.end21.i

land.lhs.true.i.if.end23.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

do.end21.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev22.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %19 = ptrtoint ptr %dev22.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev22.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.145) #11
  br label %if.end23.i

if.end23.i:                                       ; preds = %do.end21.i, %land.lhs.true.i.if.end23.i_crit_edge, %if.end6.i.if.end23.i_crit_edge
  %rc.047.i = phi i32 [ %call11.i, %do.end21.i ], [ 0, %if.end6.i.if.end23.i_crit_edge ], [ 0, %land.lhs.true.i.if.end23.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %hl_fw_send_msi_info_msg.exit

hl_fw_send_msi_info_msg.exit:                     ; preds = %if.end23.i, %if.end3.i.hl_fw_send_msi_info_msg.exit_crit_edge, %if.end.hl_fw_send_msi_info_msg.exit_crit_edge
  %retval.0.i = phi i32 [ %rc.047.i, %if.end23.i ], [ 0, %if.end.hl_fw_send_msi_info_msg.exit_crit_edge ], [ -12, %if.end3.i.hl_fw_send_msi_info_msg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result.i) #8
  br label %cleanup

cleanup:                                          ; preds = %hl_fw_send_msi_info_msg.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %hl_fw_send_msi_info_msg.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_fw_get_eeprom_data(ptr noundef %hdev, ptr nocapture noundef writeonly %data, i32 noundef %max_size) local_unnamed_addr #0 align 64 {
entry:
  %pkt = alloca %struct.cpucp_packet, align 8
  %eeprom_info_dma_addr = alloca i32, align 4
  %result = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt) #8
  %0 = getelementptr inbounds i8, ptr %pkt, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eeprom_info_dma_addr) #8
  %2 = ptrtoint ptr %eeprom_info_dma_addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %eeprom_info_dma_addr, align 4, !annotation !551
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %result) #8
  %3 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %result, align 8, !annotation !551
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %4 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asic_funcs, align 8
  %cpu_accessible_dma_pool_alloc = getelementptr inbounds %struct.hl_asic_funcs, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %cpu_accessible_dma_pool_alloc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cpu_accessible_dma_pool_alloc, align 4
  %call = call ptr %7(ptr noundef %hdev, i32 noundef %max_size, ptr noundef nonnull %eeprom_info_dma_addr) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.41) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = call ptr @memset(ptr %call, i32 0, i32 %max_size)
  %ctl = getelementptr inbounds %struct.cpucp_packet, ptr %pkt, i32 0, i32 1
  %11 = ptrtoint ptr %ctl to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 5632, ptr %ctl, align 8
  %12 = ptrtoint ptr %eeprom_info_dma_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %eeprom_info_dma_addr, align 4
  %conv = zext i32 %13 to i64
  %14 = call i64 @llvm.bswap.i64(i64 %conv)
  %15 = ptrtoint ptr %pkt to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %pkt, align 8
  %16 = call i32 @llvm.bswap.i32(i32 %max_size)
  %17 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt, i32 0, i32 3
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %17, align 8
  %19 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %asic_funcs, align 8
  %send_cpu_message = getelementptr inbounds %struct.hl_asic_funcs, ptr %20, i32 0, i32 54
  %21 = ptrtoint ptr %send_cpu_message to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %send_cpu_message, align 4
  %call2 = call i32 %22(ptr noundef %hdev, ptr noundef nonnull %pkt, i16 noundef zeroext 24, i32 noundef 10000000, ptr noundef nonnull %result) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end9, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev8 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %23 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.44, i32 noundef %call2) #11
  br label %out

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %result to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %result, align 8
  %conv10 = trunc i64 %26 to i32
  %27 = call i32 @llvm.umin.i32(i32 %conv10, i32 %max_size)
  %28 = call ptr @memcpy(ptr %data, ptr %call, i32 %27)
  br label %out

out:                                              ; preds = %if.end9, %do.end7
  %29 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %asic_funcs, align 8
  %cpu_accessible_dma_pool_free = getelementptr inbounds %struct.hl_asic_funcs, ptr %30, i32 0, i32 22
  %31 = ptrtoint ptr %cpu_accessible_dma_pool_free to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cpu_accessible_dma_pool_free, align 4
  call void %32(ptr noundef %hdev, i32 noundef %max_size, ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ %call2, %out ], [ -12, %do.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eeprom_info_dma_addr) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_fw_cpucp_pci_counters_get(ptr noundef %hdev, ptr nocapture noundef writeonly %counters) local_unnamed_addr #0 align 64 {
entry:
  %pkt = alloca %struct.cpucp_packet, align 8
  %result = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt) #8
  %0 = call ptr @memset(ptr %pkt, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %result) #8
  %1 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %result, align 8, !annotation !551
  %ctl = getelementptr inbounds %struct.cpucp_packet, ptr %pkt, i32 0, i32 1
  %2 = ptrtoint ptr %ctl to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 6912, ptr %ctl, align 8
  %3 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt, i32 0, i32 3
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16777216, ptr %3, align 8
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %5 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %asic_funcs, align 8
  %send_cpu_message = getelementptr inbounds %struct.hl_asic_funcs, ptr %6, i32 0, i32 54
  %7 = ptrtoint ptr %send_cpu_message to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %send_cpu_message, align 4
  %call = call i32 %8(ptr noundef %hdev, ptr noundef nonnull %pkt, i16 noundef zeroext 24, i32 noundef 10000000, ptr noundef nonnull %result) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.46, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %result to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %result, align 8
  %13 = ptrtoint ptr %counters to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %counters, align 8
  %14 = call ptr @memset(ptr %pkt, i32 0, i32 24)
  %15 = ptrtoint ptr %ctl to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 6912, ptr %ctl, align 8
  %16 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %asic_funcs, align 8
  %send_cpu_message3 = getelementptr inbounds %struct.hl_asic_funcs, ptr %17, i32 0, i32 54
  %18 = ptrtoint ptr %send_cpu_message3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %send_cpu_message3, align 4
  %call4 = call i32 %19(ptr noundef %hdev, ptr noundef nonnull %pkt, i16 noundef zeroext 24, i32 noundef 10000000, ptr noundef nonnull %result) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end11, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev10 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %20 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.46, i32 noundef %call4) #11
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %22 = ptrtoint ptr %result to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %result, align 8
  %tx_throughput = getelementptr inbounds %struct.hl_info_pci_counters, ptr %counters, i32 0, i32 1
  %24 = ptrtoint ptr %tx_throughput to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %tx_throughput, align 8
  %25 = call ptr @memset(ptr %pkt, i32 0, i32 24)
  %26 = ptrtoint ptr %ctl to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 7168, ptr %ctl, align 8
  %27 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %asic_funcs, align 8
  %send_cpu_message14 = getelementptr inbounds %struct.hl_asic_funcs, ptr %28, i32 0, i32 54
  %29 = ptrtoint ptr %send_cpu_message14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %send_cpu_message14, align 4
  %call15 = call i32 %30(ptr noundef %hdev, ptr noundef nonnull %pkt, i16 noundef zeroext 24, i32 noundef 10000000, ptr noundef nonnull %result) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end22, label %do.end20

do.end20:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %dev21 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %31 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.46, i32 noundef %call15) #11
  br label %cleanup

if.end22:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %result to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %result, align 8
  %conv23 = and i64 %34, 4294967295
  %replay_cnt = getelementptr inbounds %struct.hl_info_pci_counters, ptr %counters, i32 0, i32 2
  %35 = ptrtoint ptr %replay_cnt to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %conv23, ptr %replay_cnt, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end20, %do.end9, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call4, %do.end9 ], [ %call15, %do.end20 ], [ 0, %if.end22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_fw_cpucp_total_energy_get(ptr noundef %hdev, ptr nocapture noundef writeonly %total_energy) local_unnamed_addr #0 align 64 {
entry:
  %pkt = alloca %struct.cpucp_packet, align 8
  %result = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt) #8
  %0 = call ptr @memset(ptr %pkt, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %result) #8
  %1 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %result, align 8, !annotation !551
  %ctl = getelementptr inbounds %struct.cpucp_packet, ptr %pkt, i32 0, i32 1
  %2 = ptrtoint ptr %ctl to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 7424, ptr %ctl, align 8
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %3 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %asic_funcs, align 8
  %send_cpu_message = getelementptr inbounds %struct.hl_asic_funcs, ptr %4, i32 0, i32 54
  %5 = ptrtoint ptr %send_cpu_message to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %send_cpu_message, align 4
  %call = call i32 %6(ptr noundef %hdev, ptr noundef nonnull %pkt, i16 noundef zeroext 24, i32 noundef 10000000, ptr noundef nonnull %result) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.52, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %result to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %result, align 8
  %11 = ptrtoint ptr %total_energy to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %total_energy, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_used_pll_index(ptr nocapture noundef readonly %hdev, i32 noundef %input_pll_index, ptr nocapture noundef writeonly %pll_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_app_cpu_boot_dev_sts0 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 54
  %0 = ptrtoint ptr %fw_app_cpu_boot_dev_sts0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_app_cpu_boot_dev_sts0, align 8
  %and = and i32 %1, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %pll_index to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %input_pll_index, ptr %pll_index, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %3 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %asic_funcs, align 8
  %map_pll_idx_to_fw_idx = getelementptr inbounds %struct.hl_asic_funcs, ptr %4, i32 0, i32 83
  %5 = ptrtoint ptr %map_pll_idx_to_fw_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map_pll_idx_to_fw_idx, align 4
  %call = tail call i32 %6(i32 noundef %input_pll_index) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.54, i32 noundef %input_pll_index, i32 noundef %call) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %shr32 = lshr i32 %call, 3
  %arrayidx = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 1, i32 23, i32 %shr32
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %conv = and i32 %call, 7
  %conv6 = zext i8 %10 to i32
  %shl = shl nuw nsw i32 1, %conv
  %and8 = and i32 %shl, %conv6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.end13, label %if.end15

do.end13:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %dev14 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %11 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.57, i32 noundef %call) #11
  br label %cleanup

if.end15:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %pll_index to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call, ptr %pll_index, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end13, %do.end, %if.then
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end15 ], [ -22, %do.end13 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_fw_cpucp_pll_info_get(ptr noundef %hdev, i32 noundef %pll_index, ptr nocapture noundef writeonly %pll_freq_arr) local_unnamed_addr #0 align 64 {
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
  store i64 -1, ptr %result, align 8, !annotation !551
  %fw_app_cpu_boot_dev_sts0.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 54
  %3 = ptrtoint ptr %fw_app_cpu_boot_dev_sts0.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fw_app_cpu_boot_dev_sts0.i, align 8
  %and.i = and i32 %4, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %asic_funcs.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %5 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %asic_funcs.i, align 8
  %map_pll_idx_to_fw_idx.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %6, i32 0, i32 83
  %7 = ptrtoint ptr %map_pll_idx_to_fw_idx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map_pll_idx_to_fw_idx.i, align 4
  %call.i = tail call i32 %8(i32 noundef %pll_index) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end4.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.54, i32 noundef %pll_index, i32 noundef %call.i) #11
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %shr32.i = lshr i32 %call.i, 3
  %arrayidx.i = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 1, i32 23, i32 %shr32.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  %conv.i = and i32 %call.i, 7
  %conv6.i = zext i8 %12 to i32
  %shl.i = shl nuw nsw i32 1, %conv.i
  %and8.i = and i32 %shl.i, %conv6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %do.end13.i, label %if.end4.i.if.end_crit_edge

if.end4.i.if.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end13.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev14.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %13 = ptrtoint ptr %dev14.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev14.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.57, i32 noundef %call.i) #11
  br label %cleanup

if.end:                                           ; preds = %if.end4.i.if.end_crit_edge, %entry.if.end_crit_edge
  %used_pll_idx.0.ph = phi i32 [ %call.i, %if.end4.i.if.end_crit_edge ], [ %pll_index, %entry.if.end_crit_edge ]
  %15 = call ptr @memset(ptr %pkt, i32 0, i32 24)
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 7680, ptr %0, align 8
  %conv = trunc i32 %used_pll_idx.0.ph to i16
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %1, align 8
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %19 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %asic_funcs, align 8
  %send_cpu_message = getelementptr inbounds %struct.hl_asic_funcs, ptr %20, i32 0, i32 54
  %21 = ptrtoint ptr %send_cpu_message to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %send_cpu_message, align 4
  %call1 = call i32 %22(ptr noundef %hdev, ptr noundef nonnull %pkt, i16 noundef zeroext 24, i32 noundef 10000000, ptr noundef nonnull %result) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.do.end19_crit_edge, label %do.end

if.end.do.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end19

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.59, i32 noundef %call1) #11
  br label %do.end19

do.end19:                                         ; preds = %do.end, %if.end.do.end19_crit_edge
  %25 = ptrtoint ptr %result to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %result, align 8
  %conv20 = trunc i64 %26 to i16
  %27 = ptrtoint ptr %pll_freq_arr to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv20, ptr %pll_freq_arr, align 2
  %and37 = lshr i64 %26, 16
  %conv39 = trunc i64 %and37 to i16
  %arrayidx40 = getelementptr i16, ptr %pll_freq_arr, i32 1
  %28 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv39, ptr %arrayidx40, align 2
  %and57 = lshr i64 %26, 32
  %conv59 = trunc i64 %and57 to i16
  %arrayidx60 = getelementptr i16, ptr %pll_freq_arr, i32 2
  %29 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv59, ptr %arrayidx60, align 2
  %shr78 = lshr i64 %26, 48
  %conv79 = trunc i64 %shr78 to i16
  %arrayidx80 = getelementptr i16, ptr %pll_freq_arr, i32 3
  %30 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv79, ptr %arrayidx80, align 2
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %do.end13.i, %do.end.i
  %retval.0 = phi i32 [ %call1, %do.end19 ], [ -22, %do.end.i ], [ -22, %do.end13.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt) #8
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_fw_cpucp_power_get(ptr noundef %hdev, ptr nocapture noundef writeonly %power) local_unnamed_addr #0 align 64 {
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
  store i64 -1, ptr %result, align 8, !annotation !551
  %3 = call ptr @memset(ptr %pkt, i32 0, i32 24)
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8192, ptr %0, align 8
  %type = getelementptr inbounds %struct.anon.102, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 2048, ptr %type, align 2
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %6 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asic_funcs, align 8
  %send_cpu_message = getelementptr inbounds %struct.hl_asic_funcs, ptr %7, i32 0, i32 54
  %8 = ptrtoint ptr %send_cpu_message to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %send_cpu_message, align 4
  %call = call i32 %9(ptr noundef %hdev, ptr noundef nonnull %pkt, i16 noundef zeroext 24, i32 noundef 10000000, ptr noundef nonnull %result) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.61, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %result to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %result, align 8
  %14 = ptrtoint ptr %power to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %power, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_fw_dram_replaced_row_get(ptr noundef %hdev, ptr nocapture noundef writeonly %info) local_unnamed_addr #0 align 64 {
entry:
  %cpucp_repl_rows_info_dma_addr = alloca i32, align 4
  %pkt = alloca %struct.cpucp_packet, align 8
  %result = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpucp_repl_rows_info_dma_addr) #8
  %0 = ptrtoint ptr %cpucp_repl_rows_info_dma_addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cpucp_repl_rows_info_dma_addr, align 4, !annotation !551
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt) #8
  %1 = getelementptr inbounds i8, ptr %pkt, i32 8
  %2 = call ptr @memset(ptr %1, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %result) #8
  %3 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %result, align 8, !annotation !551
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %4 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asic_funcs, align 8
  %cpu_accessible_dma_pool_alloc = getelementptr inbounds %struct.hl_asic_funcs, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %cpu_accessible_dma_pool_alloc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cpu_accessible_dma_pool_alloc, align 4
  %call = call ptr %7(ptr noundef %hdev, i32 noundef 8, ptr noundef nonnull %cpucp_repl_rows_info_dma_addr) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.63) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %call to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 0, ptr %call, align 2
  %ctl = getelementptr inbounds %struct.cpucp_packet, ptr %pkt, i32 0, i32 1
  %11 = ptrtoint ptr %ctl to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 11008, ptr %ctl, align 8
  %12 = ptrtoint ptr %cpucp_repl_rows_info_dma_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpucp_repl_rows_info_dma_addr, align 4
  %conv = zext i32 %13 to i64
  %14 = call i64 @llvm.bswap.i64(i64 %conv)
  %15 = ptrtoint ptr %pkt to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %pkt, align 8
  %16 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt, i32 0, i32 3
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 134217728, ptr %16, align 8
  %18 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %asic_funcs, align 8
  %send_cpu_message = getelementptr inbounds %struct.hl_asic_funcs, ptr %19, i32 0, i32 54
  %20 = ptrtoint ptr %send_cpu_message to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %send_cpu_message, align 4
  %call2 = call i32 %21(ptr noundef %hdev, ptr noundef nonnull %pkt, i16 noundef zeroext 24, i32 noundef 10000000, ptr noundef nonnull %result) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end9, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev8 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %22 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.66, i32 noundef %call2) #11
  br label %out

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %call to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %call, align 2
  %26 = ptrtoint ptr %info to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %25, ptr %info, align 2
  br label %out

out:                                              ; preds = %if.end9, %do.end7
  %27 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %asic_funcs, align 8
  %cpu_accessible_dma_pool_free = getelementptr inbounds %struct.hl_asic_funcs, ptr %28, i32 0, i32 22
  %29 = ptrtoint ptr %cpu_accessible_dma_pool_free to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cpu_accessible_dma_pool_free, align 4
  call void %30(ptr noundef %hdev, i32 noundef 8, ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ %call2, %out ], [ -12, %do.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpucp_repl_rows_info_dma_addr) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_fw_dram_pending_row_get(ptr noundef %hdev, ptr nocapture noundef writeonly %pend_rows_num) local_unnamed_addr #0 align 64 {
entry:
  %pkt = alloca %struct.cpucp_packet, align 8
  %result = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt) #8
  %0 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %result) #8
  %1 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %result, align 8, !annotation !551
  %2 = call ptr @memset(ptr %pkt, i32 0, i32 24)
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 11264, ptr %0, align 8
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %4 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asic_funcs, align 8
  %send_cpu_message = getelementptr inbounds %struct.hl_asic_funcs, ptr %5, i32 0, i32 54
  %6 = ptrtoint ptr %send_cpu_message to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %send_cpu_message, align 4
  %call = call i32 %7(ptr noundef %hdev, ptr noundef nonnull %pkt, i16 noundef zeroext 24, i32 noundef 0, ptr noundef nonnull %result) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.68, i32 noundef %call) #11
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %result to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %result, align 8
  %conv = trunc i64 %11 to i32
  %12 = ptrtoint ptr %pend_rows_num to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %pend_rows_num, align 4
  br label %out

out:                                              ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_fw_cpucp_engine_core_asid_set(ptr noundef %hdev, i32 noundef %asid) local_unnamed_addr #0 align 64 {
entry:
  %pkt = alloca %struct.cpucp_packet, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt) #8
  %0 = getelementptr inbounds %struct.cpucp_packet, ptr %pkt, i32 0, i32 1
  %1 = getelementptr inbounds i8, ptr %pkt, i32 8
  %2 = call ptr @memset(ptr %1, i32 0, i32 16)
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 12032, ptr %0, align 8
  %conv = zext i32 %asid to i64
  %4 = tail call i64 @llvm.bswap.i64(i64 %conv)
  %5 = ptrtoint ptr %pkt to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %pkt, align 8
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %6 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asic_funcs, align 8
  %send_cpu_message = getelementptr inbounds %struct.hl_asic_funcs, ptr %7, i32 0, i32 54
  %8 = ptrtoint ptr %send_cpu_message to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %send_cpu_message, align 4
  %call = call i32 %9(ptr noundef %hdev, ptr noundef nonnull %pkt, i16 noundef zeroext 24, i32 noundef 10000000, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.70, i32 noundef %call) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_fw_ask_hard_reset_without_linux(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dynamic_fw_load = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 76
  %0 = ptrtoint ptr %dynamic_fw_load to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dynamic_fw_load, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %fw_loader = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 53
  %cpu_timeout = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 53, i32 3
  %2 = ptrtoint ptr %cpu_timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu_timeout, align 8
  %call = tail call i32 @hl_fw_dynamic_send_protocol_cmd(ptr noundef %hdev, ptr noundef %fw_loader, i32 noundef 6, i32 noundef 0, i1 noundef zeroext false, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %do.end

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.72) #11
  br label %if.end5

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %6 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asic_funcs, align 8
  %wreg = getelementptr inbounds %struct.hl_asic_funcs, ptr %7, i32 0, i32 58
  %8 = ptrtoint ptr %wreg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wreg, align 4
  %kmd_msg_to_cpu_reg = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 53, i32 0, i32 0, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %kmd_msg_to_cpu_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %kmd_msg_to_cpu_reg, align 8
  tail call void %9(ptr noundef %hdev, i32 noundef %11, i32 noundef 5) #8
  br label %if.end5

if.end5:                                          ; preds = %if.else, %do.end, %if.then.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_fw_dynamic_send_protocol_cmd(ptr noundef %hdev, ptr nocapture noundef %fw_loader, i32 noundef %cmd, i32 noundef %size, i1 noundef zeroext %wait_ok, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_funcs.i.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %0 = ptrtoint ptr %asic_funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asic_funcs.i.i, align 8
  %wreg.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %1, i32 0, i32 58
  %2 = ptrtoint ptr %wreg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wreg.i.i, align 4
  %kmd_msg_to_cpu.i.i = getelementptr inbounds %struct.dynamic_fw_load_mgr, ptr %fw_loader, i32 0, i32 1, i32 1, i32 24
  %4 = ptrtoint ptr %kmd_msg_to_cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %kmd_msg_to_cpu.i.i, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  tail call void %3(ptr noundef %hdev, i32 noundef %6, i32 noundef 134217728) #8
  %cpu_timeout.i = getelementptr inbounds %struct.fw_load_mgr, ptr %fw_loader, i32 0, i32 3
  %7 = ptrtoint ptr %cpu_timeout.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu_timeout.i, align 8
  %call.i = tail call fastcc i32 @hl_fw_dynamic_wait_for_status(ptr noundef %hdev, ptr noundef %fw_loader, i32 noundef 0, i32 noundef %8) #8
  %shl.i = shl i32 %cmd, 27
  %and37.i = and i32 %size, 33554431
  %or.i = or i32 %and37.i, %shl.i
  %9 = ptrtoint ptr %asic_funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %asic_funcs.i.i, align 8
  %wreg.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %10, i32 0, i32 58
  %11 = ptrtoint ptr %wreg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wreg.i, align 4
  %13 = ptrtoint ptr %kmd_msg_to_cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %kmd_msg_to_cpu.i.i, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  tail call void %12(ptr noundef %hdev, i32 noundef %15, i32 noundef %or.i) #8
  %call1 = tail call fastcc i32 @hl_fw_dynamic_wait_for_status(ptr noundef %hdev, ptr noundef %fw_loader, i32 noundef 1, i32 noundef %timeout)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = ptrtoint ptr %asic_funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %asic_funcs.i.i, align 8
  %wreg.i.i40 = getelementptr inbounds %struct.hl_asic_funcs, ptr %17, i32 0, i32 58
  %18 = ptrtoint ptr %wreg.i.i40 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wreg.i.i40, align 4
  %20 = ptrtoint ptr %kmd_msg_to_cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %kmd_msg_to_cpu.i.i, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  tail call void %19(ptr noundef %hdev, i32 noundef %22, i32 noundef 134217728) #8
  %23 = ptrtoint ptr %cpu_timeout.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu_timeout.i, align 8
  %call.i43 = tail call fastcc i32 @hl_fw_dynamic_wait_for_status(ptr noundef %hdev, ptr noundef %fw_loader, i32 noundef 0, i32 noundef %24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %tobool3.not = icmp eq i32 %call.i43, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %25 = ptrtoint ptr %asic_funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %asic_funcs.i.i, align 8
  %wreg.i46 = getelementptr inbounds %struct.hl_asic_funcs, ptr %26, i32 0, i32 58
  %27 = ptrtoint ptr %wreg.i46 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wreg.i46, align 4
  %29 = ptrtoint ptr %kmd_msg_to_cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %kmd_msg_to_cpu.i.i, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #8
  tail call void %28(ptr noundef %hdev, i32 noundef %31, i32 noundef 0) #8
  br i1 %wait_ok, label %if.end8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %call9 = tail call fastcc i32 @hl_fw_dynamic_wait_for_status(ptr noundef %hdev, ptr noundef %fw_loader, i32 noundef 2, i32 noundef %timeout)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %32 = ptrtoint ptr %asic_funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %asic_funcs.i.i, align 8
  %wreg.i.i49 = getelementptr inbounds %struct.hl_asic_funcs, ptr %33, i32 0, i32 58
  %34 = ptrtoint ptr %wreg.i.i49 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wreg.i.i49, align 4
  %36 = ptrtoint ptr %kmd_msg_to_cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %kmd_msg_to_cpu.i.i, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #8
  tail call void %35(ptr noundef %hdev, i32 noundef %38, i32 noundef 134217728) #8
  %39 = ptrtoint ptr %cpu_timeout.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cpu_timeout.i, align 8
  %call.i52 = tail call fastcc i32 @hl_fw_dynamic_wait_for_status(ptr noundef %hdev, ptr noundef %fw_loader, i32 noundef 0, i32 noundef %40) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %tobool14.not = icmp eq i32 %call.i52, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %asic_funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %asic_funcs.i.i, align 8
  %wreg.i55 = getelementptr inbounds %struct.hl_asic_funcs, ptr %42, i32 0, i32 58
  %43 = ptrtoint ptr %wreg.i55 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %wreg.i55, align 4
  %45 = ptrtoint ptr %kmd_msg_to_cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %kmd_msg_to_cpu.i.i, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #8
  tail call void %44(ptr noundef %hdev, i32 noundef %47, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ %call1, %entry.cleanup_crit_edge ], [ %call.i43, %if.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call.i52, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_fw_ask_halt_machine_without_linux(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_loader = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 53
  %device_cpu_is_halted = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 101
  %0 = ptrtoint ptr %device_cpu_is_halted to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %device_cpu_is_halted, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dynamic_fw_load = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 76
  %2 = ptrtoint ptr %dynamic_fw_load to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dynamic_fw_load, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %cpu_timeout = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 53, i32 3
  %4 = ptrtoint ptr %cpu_timeout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu_timeout, align 8
  %call = tail call i32 @hl_fw_dynamic_send_protocol_cmd(ptr noundef %hdev, ptr noundef %fw_loader, i32 noundef 7, i32 noundef 0, i1 noundef zeroext true, i32 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.then2.if.end11_crit_edge, label %do.end

if.then2.if.end11_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.74) #11
  br label %if.end11

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %8 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %asic_funcs, align 8
  %wreg = getelementptr inbounds %struct.hl_asic_funcs, ptr %9, i32 0, i32 58
  %10 = ptrtoint ptr %wreg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wreg, align 4
  %kmd_msg_to_cpu_reg = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 53, i32 0, i32 0, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %kmd_msg_to_cpu_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %kmd_msg_to_cpu_reg, align 8
  tail call void %11(ptr noundef %hdev, i32 noundef %13, i32 noundef 1) #8
  %cpu_reset_wait_msec = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 53, i32 0, i32 0, i32 1, i32 1, i32 8
  %14 = ptrtoint ptr %cpu_reset_wait_msec to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu_reset_wait_msec, align 8
  tail call void @msleep(i32 noundef %15) #8
  %16 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %asic_funcs, align 8
  %wreg9 = getelementptr inbounds %struct.hl_asic_funcs, ptr %17, i32 0, i32 58
  %18 = ptrtoint ptr %wreg9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wreg9, align 4
  %20 = ptrtoint ptr %kmd_msg_to_cpu_reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %kmd_msg_to_cpu_reg, align 8
  tail call void %19(ptr noundef %hdev, i32 noundef %21, i32 noundef 0) #8
  br label %if.end11

if.end11:                                         ; preds = %if.else, %do.end, %if.then2.if.end11_crit_edge
  %22 = ptrtoint ptr %device_cpu_is_halted to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %device_cpu_is_halted, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_fw_read_preboot_status(ptr noundef %hdev, i32 noundef %cpu_boot_status_reg, i32 noundef %sts_boot_dev_sts0_reg, i32 noundef %sts_boot_dev_sts1_reg, i32 noundef %boot_err0_reg, i32 noundef %boot_err1_reg, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_components = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 106
  %0 = ptrtoint ptr %fw_components to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %fw_components, align 8
  %and = and i64 %1, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @hl_fw_read_preboot_caps(ptr noundef %hdev, i32 noundef %cpu_boot_status_reg, i32 noundef %sts_boot_dev_sts0_reg, i32 noundef %sts_boot_dev_sts1_reg, i32 noundef %boot_err0_reg, i32 noundef %boot_err1_reg, i32 noundef %timeout)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  tail call fastcc void @hl_fw_preboot_update_state(ptr noundef %hdev)
  %dynamic_fw_load = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 76
  %2 = ptrtoint ptr %dynamic_fw_load to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dynamic_fw_load, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call fastcc i32 @hl_fw_static_read_device_fw_version(ptr noundef %hdev, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end6 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hl_fw_read_preboot_caps(ptr noundef %hdev, i32 noundef %cpu_boot_status_reg, i32 noundef %sts_boot_dev_sts0_reg, i32 noundef %sts_boot_dev_sts1_reg, i32 noundef %boot_err0_reg, i32 noundef %boot_err1_reg, i32 noundef %timeout) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 8
  %tobool.not = icmp eq ptr %1, null
  %call2 = tail call i64 @ktime_get() #8
  %mul = mul i32 %timeout, 10
  %2 = tail call i32 @llvm.umin.i32(i32 %mul, i32 10000000)
  %timeout.sink = select i1 %tobool.not, i32 %2, i32 %timeout
  %conv = zext i32 %timeout.sink to i64
  %mul.i = mul nuw nsw i64 %conv, 1000
  %add.i = add i64 %call2, %mul.i
  %fw_poll_interval_usec = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 70
  %3 = ptrtoint ptr %fw_poll_interval_usec to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %fw_poll_interval_usec, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool6.not = icmp eq i64 %4, 0
  br i1 %tobool6.not, label %entry.do.end14_crit_edge, label %do.body8

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1211) #8
  br label %do.end14

do.end14:                                         ; preds = %do.body8, %entry.do.end14_crit_edge
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool31.not = icmp eq i32 %timeout, 0
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %do.end14
  %5 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %asic_funcs, align 8
  %rreg = getelementptr inbounds %struct.hl_asic_funcs, ptr %6, i32 0, i32 57
  %7 = ptrtoint ptr %rreg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rreg, align 4
  %call15 = tail call i32 %8(ptr noundef %hdev, i32 noundef %cpu_boot_status_reg) #8
  %9 = zext i32 %call15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call15, label %if.end30 [
    i32 7, label %for.cond.if.end74_crit_edge
    i32 2, label %for.cond.if.end74_crit_edge173
    i32 11, label %for.cond.if.end74_crit_edge174
    i32 15, label %for.cond.if.end74_crit_edge175
    i32 16, label %for.cond.if.end74_crit_edge176
  ]

for.cond.if.end74_crit_edge176:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

for.cond.if.end74_crit_edge175:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

for.cond.if.end74_crit_edge174:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

for.cond.if.end74_crit_edge173:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

for.cond.if.end74_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.end30:                                         ; preds = %for.cond
  br i1 %tobool31.not, label %if.end30.if.end40_crit_edge, label %land.lhs.true

if.end30.if.end40_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

land.lhs.true:                                    ; preds = %if.end30
  %call32 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call32, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call32, %add.i
  br i1 %cmp3.i, label %for.end, label %land.lhs.true.if.end40_crit_edge

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.end40:                                         ; preds = %land.lhs.true.if.end40_crit_edge, %if.end30.if.end40_crit_edge
  %10 = ptrtoint ptr %fw_poll_interval_usec to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %fw_poll_interval_usec, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool42.not = icmp eq i64 %11, 0
  br i1 %tobool42.not, label %if.end40.for.cond.backedge_crit_edge, label %if.then43

if.end40.for.cond.backedge_crit_edge:             ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %shr = lshr i64 %11, 2
  %12 = trunc i64 %shr to i32
  %conv45 = add i32 %12, 1
  %conv47 = trunc i64 %11 to i32
  tail call void @usleep_range_state(i32 noundef %conv45, i32 noundef %conv47, i32 noundef 2) #8
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.then43, %if.end40.for.cond.backedge_crit_edge
  br label %for.cond

for.end:                                          ; preds = %land.lhs.true
  %13 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %asic_funcs, align 8
  %rreg38 = getelementptr inbounds %struct.hl_asic_funcs, ptr %14, i32 0, i32 57
  %15 = ptrtoint ptr %rreg38 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rreg38, align 4
  %call39 = tail call i32 %16(ptr noundef %hdev, i32 noundef %cpu_boot_status_reg) #8
  %17 = zext i32 %call39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.305)
  switch i32 %call39, label %do.end68.critedge [
    i32 7, label %for.end.if.end74_crit_edge
    i32 2, label %for.end.if.end74_crit_edge177
    i32 11, label %for.end.if.end74_crit_edge178
    i32 15, label %for.end.if.end74_crit_edge179
    i32 16, label %for.end.if.end74_crit_edge180
  ]

for.end.if.end74_crit_edge180:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

for.end.if.end74_crit_edge179:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

for.end.if.end74_crit_edge178:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

for.end.if.end74_crit_edge177:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

for.end.if.end74_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

do.end68.critedge:                                ; preds = %for.end
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.147) #11
  tail call fastcc void @detect_cpu_boot_status(ptr noundef %hdev, i32 noundef %call39)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call39)
  %cmp69.not = icmp eq i32 %call39, -1
  br i1 %cmp69.not, label %do.end68.critedge.cleanup_crit_edge, label %if.then71

do.end68.critedge.cleanup_crit_edge:              ; preds = %do.end68.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then71:                                        ; preds = %do.end68.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %call72 = tail call fastcc i32 @fw_read_errors(ptr noundef %hdev, i32 noundef %boot_err0_reg, i32 noundef %boot_err1_reg, i32 noundef %sts_boot_dev_sts0_reg, i32 noundef %sts_boot_dev_sts1_reg)
  br label %cleanup

if.end74:                                         ; preds = %for.end.if.end74_crit_edge, %for.end.if.end74_crit_edge177, %for.end.if.end74_crit_edge178, %for.end.if.end74_crit_edge179, %for.end.if.end74_crit_edge180, %for.cond.if.end74_crit_edge, %for.cond.if.end74_crit_edge173, %for.cond.if.end74_crit_edge174, %for.cond.if.end74_crit_edge175, %for.cond.if.end74_crit_edge176
  %20 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %asic_funcs, align 8
  %rreg76 = getelementptr inbounds %struct.hl_asic_funcs, ptr %21, i32 0, i32 57
  %22 = ptrtoint ptr %rreg76 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rreg76, align 4
  %call77 = tail call i32 %23(ptr noundef %hdev, i32 noundef %sts_boot_dev_sts0_reg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call77)
  %tobool78.not = icmp sgt i32 %call77, -1
  br i1 %tobool78.not, label %if.end74.if.end80_crit_edge, label %if.then79

if.end74.if.end80_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.then79:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  %fw_cpu_boot_dev_sts0_valid = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 69
  %24 = ptrtoint ptr %fw_cpu_boot_dev_sts0_valid to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %fw_cpu_boot_dev_sts0_valid, align 1
  %fw_preboot_cpu_boot_dev_sts0 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 50
  %25 = ptrtoint ptr %fw_preboot_cpu_boot_dev_sts0 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call77, ptr %fw_preboot_cpu_boot_dev_sts0, align 8
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %if.end74.if.end80_crit_edge
  %26 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %asic_funcs, align 8
  %rreg82 = getelementptr inbounds %struct.hl_asic_funcs, ptr %27, i32 0, i32 57
  %28 = ptrtoint ptr %rreg82 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rreg82, align 4
  %call83 = tail call i32 %29(ptr noundef %hdev, i32 noundef %sts_boot_dev_sts1_reg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call83)
  %tobool85.not = icmp sgt i32 %call83, -1
  br i1 %tobool85.not, label %if.end80.if.end87_crit_edge, label %if.then86

if.end80.if.end87_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.then86:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  %fw_cpu_boot_dev_sts1_valid = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 70
  %30 = ptrtoint ptr %fw_cpu_boot_dev_sts1_valid to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %fw_cpu_boot_dev_sts1_valid, align 2
  %fw_preboot_cpu_boot_dev_sts1 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 51
  %31 = ptrtoint ptr %fw_preboot_cpu_boot_dev_sts1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call83, ptr %fw_preboot_cpu_boot_dev_sts1, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then86, %if.end80.if.end87_crit_edge
  %fw_preboot_cpu_boot_dev_sts088 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 50
  %32 = ptrtoint ptr %fw_preboot_cpu_boot_dev_sts088 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fw_preboot_cpu_boot_dev_sts088, align 8
  %and89 = lshr i32 %33, 16
  %34 = trunc i32 %and89 to i8
  %35 = and i8 %34, 1
  %dynamic_fw_load = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 76
  %36 = ptrtoint ptr %dynamic_fw_load to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %dynamic_fw_load, align 8
  %37 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %asic_funcs, align 8
  %init_firmware_loader = getelementptr inbounds %struct.hl_asic_funcs, ptr %38, i32 0, i32 84
  %39 = ptrtoint ptr %init_firmware_loader to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %init_firmware_loader, align 4
  tail call void %40(ptr noundef %hdev) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_fw_read_preboot_caps.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_fw_read_preboot_caps, %if.then103)) #8
          to label %cleanup [label %if.then103], !srcloc !552

if.then103:                                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  %dev104 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %41 = ptrtoint ptr %dev104 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev104, align 4
  %43 = ptrtoint ptr %dynamic_fw_load to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %dynamic_fw_load, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool107.not = icmp eq i8 %44, 0
  %cond108 = select i1 %tobool107.not, ptr @.str.151, ptr @.str.150
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hl_fw_read_preboot_caps.__UNIQUE_ID_ddebug327, ptr noundef %42, ptr noundef nonnull @.str.149, ptr noundef nonnull %cond108) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then103, %if.end87, %if.then71, %do.end68.critedge.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then71 ], [ -5, %do.end68.critedge.cleanup_crit_edge ], [ 0, %if.then103 ], [ 0, %if.end87 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hl_fw_preboot_update_state(ptr nocapture noundef %hdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_preboot_cpu_boot_dev_sts0 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 50
  %0 = ptrtoint ptr %fw_preboot_cpu_boot_dev_sts0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_preboot_cpu_boot_dev_sts0, align 8
  %fw_preboot_cpu_boot_dev_sts1 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 51
  %2 = ptrtoint ptr %fw_preboot_cpu_boot_dev_sts1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_preboot_cpu_boot_dev_sts1, align 4
  %and = lshr i32 %1, 10
  %4 = trunc i32 %and to i8
  %5 = and i8 %4, 1
  %hard_reset_done_by_fw = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 72
  %6 = ptrtoint ptr %hard_reset_done_by_fw to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %hard_reset_done_by_fw, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_fw_preboot_update_state.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_fw_preboot_update_state, %if.then)) #8
          to label %do.body8 [label %if.then], !srcloc !552

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hl_fw_preboot_update_state.__UNIQUE_ID_ddebug330, ptr noundef %8, ptr noundef nonnull @.str.185, i32 noundef %1) #8
  br label %do.body8

do.body8:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_fw_preboot_update_state.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_fw_preboot_update_state, %if.then20)) #8
          to label %do.body25 [label %if.then20], !srcloc !552

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  %dev21 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %9 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev21, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hl_fw_preboot_update_state.__UNIQUE_ID_ddebug331, ptr noundef %10, ptr noundef nonnull @.str.186, i32 noundef %3) #8
  br label %do.body25

do.body25:                                        ; preds = %if.then20, %do.body8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_fw_preboot_update_state.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_fw_preboot_update_state, %if.then37)) #8
          to label %do.body45 [label %if.then37], !srcloc !552

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  %dev38 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %11 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev38, align 4
  %13 = ptrtoint ptr %hard_reset_done_by_fw to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %hard_reset_done_by_fw, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool41.not = icmp eq i8 %14, 0
  %cond = select i1 %tobool41.not, ptr @.str.189, ptr @.str.188
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hl_fw_preboot_update_state.__UNIQUE_ID_ddebug332, ptr noundef %12, ptr noundef nonnull @.str.187, ptr noundef nonnull %cond) #8
  br label %do.body45

do.body45:                                        ; preds = %if.then37, %do.body25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_fw_preboot_update_state.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_fw_preboot_update_state, %if.then57)) #8
          to label %do.body65 [label %if.then57], !srcloc !552

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #10
  %dev58 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %15 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev58, align 4
  %fw_security_enabled = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 68
  %17 = ptrtoint ptr %fw_security_enabled to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %fw_security_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool60.not = icmp eq i8 %18, 0
  %cond61 = select i1 %tobool60.not, ptr @.str.189, ptr @.str.188
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hl_fw_preboot_update_state.__UNIQUE_ID_ddebug333, ptr noundef %16, ptr noundef nonnull @.str.190, ptr noundef nonnull %cond61) #8
  br label %do.body65

do.body65:                                        ; preds = %if.then57, %do.body45
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_fw_preboot_update_state.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_fw_preboot_update_state, %if.then77)) #8
          to label %do.end84 [label %if.then77], !srcloc !552

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #10
  %dev78 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %19 = ptrtoint ptr %dev78 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev78, align 4
  %gic_interrupts_enable = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 77
  %21 = ptrtoint ptr %gic_interrupts_enable to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %gic_interrupts_enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool80.not = icmp eq i8 %22, 0
  %cond81 = select i1 %tobool80.not, ptr @.str.189, ptr @.str.188
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hl_fw_preboot_update_state.__UNIQUE_ID_ddebug334, ptr noundef %20, ptr noundef nonnull @.str.191, ptr noundef nonnull %cond81) #8
  br label %do.end84

do.end84:                                         ; preds = %if.then77, %do.body65
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hl_fw_dynamic_wait_for_status(ptr noundef %hdev, ptr nocapture noundef %fw_loader, i32 noundef %expected_status, i32 noundef %timeout) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 8
  %tobool.not = icmp eq ptr %1, null
  %call2 = tail call i64 @ktime_get() #8
  %mul = mul i32 %timeout, 10
  %2 = tail call i32 @llvm.umin.i32(i32 %mul, i32 10000000)
  %timeout.sink = select i1 %tobool.not, i32 %2, i32 %timeout
  %conv = zext i32 %timeout.sink to i64
  %mul.i = mul nuw nsw i64 %conv, 1000
  %add.i = add i64 %call2, %mul.i
  %fw_poll_interval_usec = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 70
  %3 = ptrtoint ptr %fw_poll_interval_usec to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %fw_poll_interval_usec, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool6.not = icmp eq i64 %4, 0
  br i1 %tobool6.not, label %entry.do.end14_crit_edge, label %do.body8

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1540) #8
  br label %do.end14

do.end14:                                         ; preds = %do.body8, %entry.do.end14_crit_edge
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %cpu_cmd_status_to_host = getelementptr inbounds %struct.dynamic_fw_load_mgr, ptr %fw_loader, i32 0, i32 1, i32 1, i32 25
  %5 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %asic_funcs, align 8
  %rreg121 = getelementptr inbounds %struct.hl_asic_funcs, ptr %6, i32 0, i32 57
  %7 = ptrtoint ptr %rreg121 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rreg121, align 4
  %9 = ptrtoint ptr %cpu_cmd_status_to_host to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu_cmd_status_to_host, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %call15122 = tail call i32 %8(ptr noundef %hdev, i32 noundef %11) #8
  %shr123 = lshr i32 %call15122, 28
  call void @__sanitizer_cov_trace_cmp4(i32 %shr123, i32 %expected_status)
  %cmp32124 = icmp eq i32 %shr123, %expected_status
  br i1 %cmp32124, label %do.end14.do.end71_crit_edge, label %if.end35.lr.ph

do.end14.do.end71_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end71

if.end35.lr.ph:                                   ; preds = %do.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool36.not = icmp eq i32 %timeout, 0
  br label %if.end35

if.end35:                                         ; preds = %if.end55.if.end35_crit_edge, %if.end35.lr.ph
  br i1 %tobool36.not, label %if.end35.if.end46_crit_edge, label %land.lhs.true

if.end35.if.end46_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

land.lhs.true:                                    ; preds = %if.end35
  %call37 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call37, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call37, %add.i
  br i1 %cmp3.i, label %if.then41, label %land.lhs.true.if.end46_crit_edge

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then41:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %asic_funcs, align 8
  %rreg43 = getelementptr inbounds %struct.hl_asic_funcs, ptr %13, i32 0, i32 57
  %14 = ptrtoint ptr %rreg43 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rreg43, align 4
  %16 = ptrtoint ptr %cpu_cmd_status_to_host to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu_cmd_status_to_host, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %call45 = tail call i32 %15(ptr noundef %hdev, i32 noundef %18) #8
  br label %do.end71

if.end46:                                         ; preds = %land.lhs.true.if.end46_crit_edge, %if.end35.if.end46_crit_edge
  %19 = ptrtoint ptr %fw_poll_interval_usec to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %fw_poll_interval_usec, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %tobool48.not = icmp eq i64 %20, 0
  br i1 %tobool48.not, label %if.end46.if.end55_crit_edge, label %if.then49

if.end46.if.end55_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %shr51 = lshr i64 %20, 2
  %21 = trunc i64 %shr51 to i32
  %conv52 = add i32 %21, 1
  %conv54 = trunc i64 %20 to i32
  tail call void @usleep_range_state(i32 noundef %conv52, i32 noundef %conv54, i32 noundef 2) #8
  br label %if.end55

if.end55:                                         ; preds = %if.then49, %if.end46.if.end55_crit_edge
  %22 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %asic_funcs, align 8
  %rreg = getelementptr inbounds %struct.hl_asic_funcs, ptr %23, i32 0, i32 57
  %24 = ptrtoint ptr %rreg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rreg, align 4
  %26 = ptrtoint ptr %cpu_cmd_status_to_host to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu_cmd_status_to_host, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %call15 = tail call i32 %25(ptr noundef %hdev, i32 noundef %28) #8
  %shr = lshr i32 %call15, 28
  %cmp32 = icmp eq i32 %shr, %expected_status
  br i1 %cmp32, label %if.end55.do.end71_crit_edge, label %if.end55.if.end35_crit_edge

if.end55.if.end35_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.end55.do.end71_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end71

do.end71:                                         ; preds = %if.end55.do.end71_crit_edge, %if.then41, %do.end14.do.end71_crit_edge
  %status.0 = phi i32 [ %call45, %if.then41 ], [ %call15122, %do.end14.do.end71_crit_edge ], [ %call15, %if.end55.do.end71_crit_edge ]
  %shr74 = lshr i32 %status.0, 28
  call void @__sanitizer_cov_trace_cmp4(i32 %shr74, i32 %expected_status)
  %cmp75 = icmp eq i32 %shr74, %expected_status
  br i1 %cmp75, label %if.end80, label %if.then79

if.then79:                                        ; preds = %do.end71
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %status.0)
  %cmp.i114 = icmp ult i32 %status.0, 1610612736
  %dev.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  br i1 %cmp.i114, label %do.end15.i, label %do.end19.i

do.end15.i:                                       ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr [6 x ptr], ptr @hl_dynamic_fw_status_str, i32 0, i32 %shr74
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx16.i = getelementptr [6 x ptr], ptr @hl_dynamic_fw_status_str, i32 0, i32 %expected_status
  %33 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx16.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.209, ptr noundef %32, ptr noundef %34) #11
  br label %cleanup

do.end19.i:                                       ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx21.i = getelementptr [6 x ptr], ptr @hl_dynamic_fw_status_str, i32 0, i32 %expected_status
  %35 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx21.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.212, i32 noundef %shr74, ptr noundef %36) #11
  br label %cleanup

if.end80:                                         ; preds = %do.end71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %expected_status)
  %cmp81 = icmp eq i32 %expected_status, 0
  br i1 %cmp81, label %if.end80.cleanup_crit_edge, label %if.end84

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end84:                                         ; preds = %if.end80
  %conv.i = trunc i32 %expected_status to i8
  %status9.i = getelementptr inbounds %struct.fw_response, ptr %fw_loader, i32 0, i32 2
  %37 = ptrtoint ptr %status9.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv.i, ptr %status9.i, align 1
  %and21.i = shl i32 %status.0, 2
  %shl.i = and i32 %and21.i, 268435452
  %38 = ptrtoint ptr %fw_loader to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %shl.i, ptr %fw_loader, align 4
  %and34.i = lshr i32 %status.0, 26
  %39 = trunc i32 %and34.i to i8
  %conv36.i = and i8 %39, 3
  %ram_type.i = getelementptr inbounds %struct.fw_response, ptr %fw_loader, i32 0, i32 1
  %40 = ptrtoint ptr %ram_type.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv36.i, ptr %ram_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %conv36.i)
  %switch.i = icmp ult i8 %conv36.i, 2
  br i1 %switch.i, label %if.end84.cleanup_crit_edge, label %do.end45.i

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end45.i:                                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  %conv38.i = zext i8 %conv36.i to i32
  %dev.i116 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %41 = ptrtoint ptr %dev.i116 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i116, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.220, i32 noundef %conv38.i) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end45.i, %if.end84.cleanup_crit_edge, %if.end80.cleanup_crit_edge, %do.end19.i, %do.end15.i
  %retval.0 = phi i32 [ 0, %if.end80.cleanup_crit_edge ], [ -5, %do.end15.i ], [ -5, %do.end19.i ], [ -5, %do.end45.i ], [ 0, %if.end84.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_fw_init_cpu(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  %msg.i.i = alloca %struct.lkd_fw_comms_msg, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_loader1 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 53
  %dynamic_fw_load = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 76
  %0 = ptrtoint ptr %dynamic_fw_load to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dynamic_fw_load, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %dev.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.222) #11
  %fw_desc_valid.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 53, i32 0, i32 0, i32 5
  %4 = ptrtoint ptr %fw_desc_valid.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %fw_desc_valid.i, align 4
  %cpu_timeout.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 53, i32 3
  %5 = ptrtoint ptr %cpu_timeout.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu_timeout.i, align 8
  %call.i = tail call i32 @hl_fw_dynamic_send_protocol_cmd(ptr noundef %hdev, ptr noundef %fw_loader1, i32 noundef 2, i32 noundef 0, i1 noundef zeroext true, i32 noundef %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %cond.true.protocol_err.i_crit_edge

cond.true.protocol_err.i_crit_edge:               ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %protocol_err.i

if.end.i:                                         ; preds = %cond.true
  %curr_reset_cause.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 8
  %7 = ptrtoint ptr %curr_reset_cause.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %curr_reset_cause.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not.i = icmp eq i8 %8, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end11.i_crit_edge, label %if.then2.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.then2.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 640, ptr nonnull %msg.i.i) #8
  %9 = call ptr @memset(ptr %msg.i.i, i32 0, i32 640)
  %type.i.i = getelementptr inbounds %struct.comms_msg_header, ptr %msg.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %type.i.i, align 1
  %size.i.i = getelementptr inbounds %struct.comms_msg_header, ptr %msg.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 4096, ptr %size.i.i, align 8
  %12 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 21840712, ptr %msg.i.i, align 8
  %13 = getelementptr inbounds %struct.lkd_fw_comms_msg, ptr %msg.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %8, ptr %13, align 8
  %call.i.i = tail call fastcc i32 @hl_fw_dynamic_request_descriptor(ptr noundef %hdev, ptr noundef %fw_loader1, i32 noundef 640) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then2.i.hl_fw_dynamic_send_msg.exit.thread.i_crit_edge

if.then2.i.hl_fw_dynamic_send_msg.exit.thread.i_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hl_fw_dynamic_send_msg.exit.thread.i

if.end.i.i:                                       ; preds = %if.then2.i
  %img_addr.i.i.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 53, i32 0, i32 0, i32 1, i32 5
  %15 = ptrtoint ptr %img_addr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %img_addr.i.i.i, align 8
  %17 = tail call i64 @llvm.bswap.i64(i64 %16) #8
  %image_region.i.i.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 53, i32 0, i32 0, i32 2
  %18 = ptrtoint ptr %image_region.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %image_region.i.i.i, align 8
  %bar_id.i.i.i = getelementptr inbounds %struct.pci_mem_region, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %bar_id.i.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bar_id.i.i.i, align 8
  %idxprom.i.i.i = zext i8 %21 to i32
  %arrayidx.i.i.i = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 2, i32 %idxprom.i.i.i
  %22 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i.i, align 4
  %offset_in_bar.i.i.i = getelementptr inbounds %struct.pci_mem_region, ptr %19, i32 0, i32 3
  %24 = ptrtoint ptr %offset_in_bar.i.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %offset_in_bar.i.i.i, align 8
  %idx.ext.i.i.i = trunc i64 %25 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %23, i32 %idx.ext.i.i.i
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %19, align 8
  %sub.i.i.i = sub i64 %17, %27
  %idx.ext1.i.i.i = trunc i64 %sub.i.i.i to i32
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %idx.ext1.i.i.i
  call void @mmiocpy(ptr noundef %add.ptr2.i.i.i, ptr noundef nonnull %msg.i.i, i32 noundef 640) #8
  %28 = ptrtoint ptr %cpu_timeout.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu_timeout.i, align 8
  %call8.i.i = call i32 @hl_fw_dynamic_send_protocol_cmd(ptr noundef %hdev, ptr noundef %fw_loader1, i32 noundef 4, i32 noundef 0, i1 noundef zeroext true, i32 noundef %29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %hl_fw_dynamic_send_msg.exit.i, label %if.end.i.i.hl_fw_dynamic_send_msg.exit.thread.i_crit_edge

if.end.i.i.hl_fw_dynamic_send_msg.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hl_fw_dynamic_send_msg.exit.thread.i

hl_fw_dynamic_send_msg.exit.thread.i:             ; preds = %if.end.i.i.hl_fw_dynamic_send_msg.exit.thread.i_crit_edge, %if.then2.i.hl_fw_dynamic_send_msg.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call8.i.i, %if.end.i.i.hl_fw_dynamic_send_msg.exit.thread.i_crit_edge ], [ %call.i.i, %if.then2.i.hl_fw_dynamic_send_msg.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 640, ptr nonnull %msg.i.i) #8
  br label %protocol_err.i

hl_fw_dynamic_send_msg.exit.i:                    ; preds = %if.end.i.i
  %30 = ptrtoint ptr %cpu_timeout.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu_timeout.i, align 8
  %call13.i.i = call i32 @hl_fw_dynamic_send_protocol_cmd(ptr noundef %hdev, ptr noundef %fw_loader1, i32 noundef 5, i32 noundef 0, i1 noundef zeroext true, i32 noundef %31) #8
  call void @llvm.lifetime.end.p0(i64 640, ptr nonnull %msg.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool6.not.i = icmp eq i32 %call13.i.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %hl_fw_dynamic_send_msg.exit.i.protocol_err.i_crit_edge

hl_fw_dynamic_send_msg.exit.i.protocol_err.i_crit_edge: ; preds = %hl_fw_dynamic_send_msg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %protocol_err.i

if.end8.i:                                        ; preds = %hl_fw_dynamic_send_msg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %curr_reset_cause.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %curr_reset_cause.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end8.i, %if.end.i.if.end11.i_crit_edge
  %fw_components.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 106
  %33 = ptrtoint ptr %fw_components.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %fw_components.i, align 8
  %and.i = and i64 %34, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool12.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool12.not.i, label %if.then13.i, label %if.end19.i

if.then13.i:                                      ; preds = %if.end11.i
  %call14.i = call fastcc i32 @hl_fw_dynamic_request_descriptor(ptr noundef %hdev, ptr noundef %fw_loader1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.then13.i.protocol_err.i_crit_edge

if.then13.i.protocol_err.i_crit_edge:             ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %protocol_err.i

if.end17.i:                                       ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #10
  %cur_fw_ver.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 53, i32 0, i32 0, i32 1, i32 3
  call fastcc void @hl_fw_dynamic_read_device_fw_version(ptr noundef %hdev, i32 noundef 1, ptr noundef %cur_fw_ver.i) #8
  br label %cond.end

if.end19.i:                                       ; preds = %if.end11.i
  %boot_fit_timeout.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 53, i32 4
  %35 = ptrtoint ptr %boot_fit_timeout.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %boot_fit_timeout.i, align 4
  %call20.i = call fastcc i32 @hl_fw_dynamic_load_image(ptr noundef %hdev, ptr noundef %fw_loader1, i32 noundef 0, i32 noundef %36) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end27.i, label %do.end25.i

do.end25.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.225) #11
  br label %protocol_err.i

if.end27.i:                                       ; preds = %if.end19.i
  %pldm.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 111
  %39 = ptrtoint ptr %pldm.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %pldm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool28.not.i = icmp eq i8 %40, 0
  br i1 %tobool28.not.i, label %if.end27.i.if.end33.i_crit_edge, label %land.lhs.true.i

if.end27.i.if.end33.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

land.lhs.true.i:                                  ; preds = %if.end27.i
  %41 = ptrtoint ptr %fw_components.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %fw_components.i, align 8
  %and30.i = and i64 %42, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and30.i)
  %tobool31.not.i = icmp eq i64 %and30.i, 0
  br i1 %tobool31.not.i, label %land.lhs.true.i.cond.end_crit_edge, label %land.lhs.true.i.if.end33.i_crit_edge

land.lhs.true.i.if.end33.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

land.lhs.true.i.cond.end_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

if.end33.i:                                       ; preds = %land.lhs.true.i.if.end33.i_crit_edge, %if.end27.i.if.end33.i_crit_edge
  %call34.i = call fastcc i32 @hl_fw_dynamic_wait_for_boot_fit_active(ptr noundef %hdev, ptr noundef %fw_loader1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end37.i, label %if.end33.i.protocol_err.i_crit_edge

if.end33.i.protocol_err.i_crit_edge:              ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %protocol_err.i

if.end37.i:                                       ; preds = %if.end33.i
  %asic_funcs.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %43 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %asic_funcs.i, align 8
  %init_cpu_scrambler_dram.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %44, i32 0, i32 85
  %45 = ptrtoint ptr %init_cpu_scrambler_dram.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %init_cpu_scrambler_dram.i, align 4
  call void %46(ptr noundef %hdev) #8
  %47 = ptrtoint ptr %fw_components.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %fw_components.i, align 8
  %and39.i = and i64 %48, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and39.i)
  %tobool40.not.i = icmp eq i64 %and39.i, 0
  br i1 %tobool40.not.i, label %do.end44.i, label %if.end46.i

do.end44.i:                                       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.228) #11
  br label %cond.end

if.end46.i:                                       ; preds = %if.end37.i
  %skip_bmc.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 53, i32 5
  %51 = ptrtoint ptr %skip_bmc.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %skip_bmc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool47.not.i = icmp eq i8 %52, 0
  br i1 %tobool47.not.i, label %if.end46.i.if.end58.i_crit_edge, label %if.then48.i

if.end46.i.if.end58.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i

if.then48.i:                                      ; preds = %if.end46.i
  %53 = ptrtoint ptr %cpu_timeout.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cpu_timeout.i, align 8
  %call50.i = call i32 @hl_fw_dynamic_send_protocol_cmd(ptr noundef %hdev, ptr noundef %fw_loader1, i32 noundef 8, i32 noundef 0, i1 noundef zeroext true, i32 noundef %54) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %if.then48.i.if.end58.i_crit_edge, label %do.end55.i

if.then48.i.if.end58.i_crit_edge:                 ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i

do.end55.i:                                       ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.225) #11
  br label %protocol_err.i

if.end58.i:                                       ; preds = %if.then48.i.if.end58.i_crit_edge, %if.end46.i.if.end58.i_crit_edge
  %57 = ptrtoint ptr %cpu_timeout.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cpu_timeout.i, align 8
  %call60.i = call fastcc i32 @hl_fw_dynamic_load_image(ptr noundef %hdev, ptr noundef %fw_loader1, i32 noundef 2, i32 noundef %58) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %tobool61.not.i = icmp eq i32 %call60.i, 0
  br i1 %tobool61.not.i, label %if.end67.i, label %do.end65.i

do.end65.i:                                       ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.233) #11
  br label %protocol_err.i

if.end67.i:                                       ; preds = %if.end58.i
  %call68.i = call fastcc i32 @hl_fw_dynamic_wait_for_linux_active(ptr noundef %hdev, ptr noundef %fw_loader1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i)
  %tobool69.not.i = icmp eq i32 %call68.i, 0
  br i1 %tobool69.not.i, label %if.end71.i, label %if.end67.i.protocol_err.i_crit_edge

if.end67.i.protocol_err.i_crit_edge:              ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %protocol_err.i

if.end71.i:                                       ; preds = %if.end67.i
  %cpu_boot_dev_sts0.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 53, i32 0, i32 0, i32 1, i32 1, i32 12
  %61 = ptrtoint ptr %cpu_boot_dev_sts0.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cpu_boot_dev_sts0.i, align 4
  %63 = call i32 @llvm.bswap.i32(i32 %62) #8
  %cpu_boot_dev_sts1.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 53, i32 0, i32 0, i32 1, i32 1, i32 13
  %64 = ptrtoint ptr %cpu_boot_dev_sts1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cpu_boot_dev_sts1.i, align 4
  %66 = call i32 @llvm.bswap.i32(i32 %65) #8
  call fastcc void @hl_fw_linux_update_state(ptr noundef %hdev, i32 noundef %63, i32 noundef %66) #8
  %gic_interrupts_enable.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 77
  %67 = ptrtoint ptr %gic_interrupts_enable.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %gic_interrupts_enable.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i7 = icmp eq i8 %68, 0
  br i1 %tobool.not.i7, label %land.lhs.true.i9, label %if.end71.i.cond.end_crit_edge

if.end71.i.cond.end_crit_edge:                    ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

land.lhs.true.i9:                                 ; preds = %if.end71.i
  %fw_app_cpu_boot_dev_sts0.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 54
  %69 = ptrtoint ptr %fw_app_cpu_boot_dev_sts0.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %fw_app_cpu_boot_dev_sts0.i, align 8
  %and.i8 = and i32 %70, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8)
  %tobool2.not.i = icmp eq i32 %and.i8, 0
  br i1 %tobool2.not.i, label %if.then.i, label %land.lhs.true.i9.cond.end_crit_edge

land.lhs.true.i9.cond.end_crit_edge:              ; preds = %land.lhs.true.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

if.then.i:                                        ; preds = %land.lhs.true.i9
  call void @__sanitizer_cov_trace_pc() #10
  %gic_host_pi_upd_irq.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 53, i32 0, i32 0, i32 1, i32 1, i32 26
  %71 = ptrtoint ptr %gic_host_pi_upd_irq.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %gic_host_pi_upd_irq.i, align 4
  %gic_host_halt_irq.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 53, i32 0, i32 0, i32 1, i32 1, i32 32
  %73 = ptrtoint ptr %gic_host_halt_irq.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %gic_host_halt_irq.i, align 4
  %gic_host_ints_irq.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 53, i32 0, i32 0, i32 1, i32 1, i32 33
  %74 = ptrtoint ptr %gic_host_ints_irq.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %72, ptr %gic_host_ints_irq.i, align 4
  %75 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %76, ptr noundef nonnull @.str.284) #11
  br label %cond.end

protocol_err.i:                                   ; preds = %if.end67.i.protocol_err.i_crit_edge, %do.end65.i, %do.end55.i, %if.end33.i.protocol_err.i_crit_edge, %do.end25.i, %if.then13.i.protocol_err.i_crit_edge, %hl_fw_dynamic_send_msg.exit.i.protocol_err.i_crit_edge, %hl_fw_dynamic_send_msg.exit.thread.i, %cond.true.protocol_err.i_crit_edge
  %rc.0.i = phi i32 [ %call.i, %cond.true.protocol_err.i_crit_edge ], [ %call13.i.i, %hl_fw_dynamic_send_msg.exit.i.protocol_err.i_crit_edge ], [ %call20.i, %do.end25.i ], [ %call34.i, %if.end33.i.protocol_err.i_crit_edge ], [ %call50.i, %do.end55.i ], [ %call60.i, %do.end65.i ], [ %call68.i, %if.end67.i.protocol_err.i_crit_edge ], [ %call14.i, %if.then13.i.protocol_err.i_crit_edge ], [ %retval.0.i.ph.i, %hl_fw_dynamic_send_msg.exit.thread.i ]
  %77 = ptrtoint ptr %fw_desc_valid.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %fw_desc_valid.i, align 4, !range !554
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool73.not.i = icmp eq i8 %78, 0
  br i1 %tobool73.not.i, label %protocol_err.i.cond.end_crit_edge, label %if.then74.i

protocol_err.i.cond.end_crit_edge:                ; preds = %protocol_err.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

if.then74.i:                                      ; preds = %protocol_err.i
  call void @__sanitizer_cov_trace_pc() #10
  %cpu_boot_err0.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 53, i32 0, i32 0, i32 1, i32 1, i32 14
  %79 = ptrtoint ptr %cpu_boot_err0.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %cpu_boot_err0.i, align 4
  %81 = call i32 @llvm.bswap.i32(i32 %80) #8
  %cpu_boot_err1.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 53, i32 0, i32 0, i32 1, i32 1, i32 15
  %82 = ptrtoint ptr %cpu_boot_err1.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %cpu_boot_err1.i, align 4
  %84 = call i32 @llvm.bswap.i32(i32 %83) #8
  %cpu_boot_dev_sts075.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 53, i32 0, i32 0, i32 1, i32 1, i32 12
  %85 = ptrtoint ptr %cpu_boot_dev_sts075.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %cpu_boot_dev_sts075.i, align 4
  %87 = call i32 @llvm.bswap.i32(i32 %86) #8
  %cpu_boot_dev_sts176.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 53, i32 0, i32 0, i32 1, i32 1, i32 13
  %88 = ptrtoint ptr %cpu_boot_dev_sts176.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %cpu_boot_dev_sts176.i, align 4
  %90 = call i32 @llvm.bswap.i32(i32 %89) #8
  %call77.i = call fastcc i32 @fw_read_errors(ptr noundef %hdev, i32 noundef %81, i32 noundef %84, i32 noundef %87, i32 noundef %90) #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call fastcc i32 @hl_fw_static_init_cpu(ptr noundef %hdev, ptr noundef %fw_loader1)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then74.i, %protocol_err.i.cond.end_crit_edge, %if.then.i, %land.lhs.true.i9.cond.end_crit_edge, %if.end71.i.cond.end_crit_edge, %do.end44.i, %land.lhs.true.i.cond.end_crit_edge, %if.end17.i
  %cond = phi i32 [ %call2, %cond.false ], [ 0, %do.end44.i ], [ 0, %if.end17.i ], [ 0, %land.lhs.true.i.cond.end_crit_edge ], [ %rc.0.i, %if.then74.i ], [ %rc.0.i, %protocol_err.i.cond.end_crit_edge ], [ 0, %if.end71.i.cond.end_crit_edge ], [ 0, %land.lhs.true.i9.cond.end_crit_edge ], [ 0, %if.then.i ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hl_fw_static_init_cpu(ptr noundef %hdev, ptr nocapture noundef readonly %fw_loader) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_components = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 106
  %0 = ptrtoint ptr %fw_components to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %fw_components, align 8
  %and = and i64 %1, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %cpu_timeout1 = getelementptr inbounds %struct.fw_load_mgr, ptr %fw_loader, i32 0, i32 3
  %2 = ptrtoint ptr %cpu_timeout1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu_timeout1, align 8
  %cpu_cmd_status_to_host_reg = getelementptr inbounds %struct.static_fw_load_mgr, ptr %fw_loader, i32 0, i32 3
  %4 = ptrtoint ptr %cpu_cmd_status_to_host_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu_cmd_status_to_host_reg, align 4
  %kmd_msg_to_cpu_reg = getelementptr inbounds %struct.static_fw_load_mgr, ptr %fw_loader, i32 0, i32 2
  %6 = ptrtoint ptr %kmd_msg_to_cpu_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %kmd_msg_to_cpu_reg, align 8
  %cpu_boot_dev_status0_reg2 = getelementptr inbounds %struct.static_fw_load_mgr, ptr %fw_loader, i32 0, i32 5
  %8 = ptrtoint ptr %cpu_boot_dev_status0_reg2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu_boot_dev_status0_reg2, align 4
  %cpu_boot_dev_status1_reg3 = getelementptr inbounds %struct.static_fw_load_mgr, ptr %fw_loader, i32 0, i32 6
  %10 = ptrtoint ptr %cpu_boot_dev_status1_reg3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu_boot_dev_status1_reg3, align 8
  %cpu_boot_status_reg4 = getelementptr inbounds %struct.static_fw_load_mgr, ptr %fw_loader, i32 0, i32 4
  %12 = ptrtoint ptr %cpu_boot_status_reg4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu_boot_status_reg4, align 8
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %div = udiv i32 %3, 1000000
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.286, i32 noundef %div) #11
  %16 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hdev, align 8
  %tobool5.not = icmp eq ptr %17, null
  %call8 = tail call i64 @ktime_get() #8
  %boot_fit_timeout9 = getelementptr inbounds %struct.fw_load_mgr, ptr %fw_loader, i32 0, i32 4
  %18 = ptrtoint ptr %boot_fit_timeout9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %boot_fit_timeout9, align 4
  %mul = mul i32 %19, 10
  %20 = tail call i32 @llvm.umin.i32(i32 %mul, i32 10000000)
  %.sink = select i1 %tobool5.not, i32 %20, i32 %19
  %conv = zext i32 %.sink to i64
  %mul.i = mul nuw nsw i64 %conv, 1000
  %add.i = add i64 %mul.i, %call8
  %fw_poll_interval_usec = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 70
  %21 = ptrtoint ptr %fw_poll_interval_usec to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %fw_poll_interval_usec, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %tobool15.not = icmp eq i64 %22, 0
  br i1 %tobool15.not, label %if.end.do.end25_crit_edge, label %do.body17

if.end.do.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end25

do.body17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 2506) #8
  br label %do.end25

do.end25:                                         ; preds = %do.body17, %if.end.do.end25_crit_edge
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %23 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %asic_funcs, align 8
  %rreg693 = getelementptr inbounds %struct.hl_asic_funcs, ptr %24, i32 0, i32 57
  %25 = ptrtoint ptr %rreg693 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rreg693, align 4
  %call26694 = tail call i32 %26(ptr noundef %hdev, i32 noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call26694)
  %cmp27695 = icmp eq i32 %call26694, 16
  br i1 %cmp27695, label %do.end25.if.else67_crit_edge, label %if.end30.lr.ph

do.end25.if.else67_crit_edge:                     ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else67

if.end30.lr.ph:                                   ; preds = %do.end25
  %boot_fit_timeout31 = getelementptr inbounds %struct.fw_load_mgr, ptr %fw_loader, i32 0, i32 4
  br label %if.end30

if.end30:                                         ; preds = %if.end49.if.end30_crit_edge, %if.end30.lr.ph
  %27 = ptrtoint ptr %boot_fit_timeout31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %boot_fit_timeout31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool32.not = icmp eq i32 %28, 0
  br i1 %tobool32.not, label %if.end30.if.end41_crit_edge, label %land.lhs.true

if.end30.if.end41_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

land.lhs.true:                                    ; preds = %if.end30
  %call33 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call33, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call33, %add.i
  br i1 %cmp3.i, label %for.end, label %land.lhs.true.if.end41_crit_edge

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.end41:                                         ; preds = %land.lhs.true.if.end41_crit_edge, %if.end30.if.end41_crit_edge
  %29 = ptrtoint ptr %fw_poll_interval_usec to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %fw_poll_interval_usec, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %30)
  %tobool43.not = icmp eq i64 %30, 0
  br i1 %tobool43.not, label %if.end41.if.end49_crit_edge, label %if.then44

if.end41.if.end49_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %shr = lshr i64 %30, 2
  %31 = trunc i64 %shr to i32
  %conv46 = add i32 %31, 1
  %conv48 = trunc i64 %30 to i32
  tail call void @usleep_range_state(i32 noundef %conv46, i32 noundef %conv48, i32 noundef 2) #8
  br label %if.end49

if.end49:                                         ; preds = %if.then44, %if.end41.if.end49_crit_edge
  %32 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %asic_funcs, align 8
  %rreg = getelementptr inbounds %struct.hl_asic_funcs, ptr %33, i32 0, i32 57
  %34 = ptrtoint ptr %rreg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rreg, align 4
  %call26 = tail call i32 %35(ptr noundef %hdev, i32 noundef %13) #8
  %cmp27 = icmp eq i32 %call26, 16
  br i1 %cmp27, label %if.end49.if.else67_crit_edge, label %if.end49.if.end30_crit_edge

if.end49.if.end30_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.end49.if.else67_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else67

for.end:                                          ; preds = %land.lhs.true
  %36 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %asic_funcs, align 8
  %rreg39 = getelementptr inbounds %struct.hl_asic_funcs, ptr %37, i32 0, i32 57
  %38 = ptrtoint ptr %rreg39 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rreg39, align 4
  %call40 = tail call i32 %39(ptr noundef %hdev, i32 noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call40)
  %cmp51 = icmp eq i32 %call40, 16
  br i1 %cmp51, label %for.end.if.else67_crit_edge, label %do.body56

for.end.if.else67_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else67

do.body56:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_fw_static_init_cpu.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_fw_static_init_cpu, %if.then62)) #8
          to label %if.end155 [label %if.then62], !srcloc !552

if.then62:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hl_fw_static_init_cpu.__UNIQUE_ID_ddebug389, ptr noundef %41, ptr noundef nonnull @.str.288) #8
  br label %if.end155

if.else67:                                        ; preds = %for.end.if.else67_crit_edge, %if.end49.if.else67_crit_edge, %do.end25.if.else67_crit_edge
  %42 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %asic_funcs, align 8
  %load_boot_fit_to_device = getelementptr inbounds %struct.hl_asic_funcs, ptr %43, i32 0, i32 65
  %44 = ptrtoint ptr %load_boot_fit_to_device to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %load_boot_fit_to_device, align 4
  %call69 = tail call i32 %45(ptr noundef %hdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.else67.out_crit_edge

if.else67.out_crit_edge:                          ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end72:                                         ; preds = %if.else67
  %46 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %asic_funcs, align 8
  %wreg = getelementptr inbounds %struct.hl_asic_funcs, ptr %47, i32 0, i32 58
  %48 = ptrtoint ptr %wreg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %wreg, align 4
  tail call void %49(ptr noundef %hdev, i32 noundef %5, i32 noundef 0) #8
  %50 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %asic_funcs, align 8
  %wreg75 = getelementptr inbounds %struct.hl_asic_funcs, ptr %51, i32 0, i32 58
  %52 = ptrtoint ptr %wreg75 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %wreg75, align 4
  tail call void %53(ptr noundef %hdev, i32 noundef %7, i32 noundef 2) #8
  %54 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hdev, align 8
  %tobool78.not = icmp eq ptr %55, null
  %call85 = tail call i64 @ktime_get() #8
  %boot_fit_timeout86 = getelementptr inbounds %struct.fw_load_mgr, ptr %fw_loader, i32 0, i32 4
  %56 = ptrtoint ptr %boot_fit_timeout86 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %boot_fit_timeout86, align 4
  %mul87 = mul i32 %57, 10
  %58 = tail call i32 @llvm.umin.i32(i32 %mul87, i32 10000000)
  %.sink707 = select i1 %tobool78.not, i32 %58, i32 %57
  %conv82 = zext i32 %.sink707 to i64
  %mul.i644 = mul nuw nsw i64 %conv82, 1000
  %add.i645 = add i64 %mul.i644, %call85
  %59 = ptrtoint ptr %fw_poll_interval_usec to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %fw_poll_interval_usec, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %60)
  %tobool100.not = icmp eq i64 %60, 0
  br i1 %tobool100.not, label %if.end72.do.end110_crit_edge, label %do.body102

if.end72.do.end110_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end110

do.body102:                                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 2529) #8
  br label %do.end110

do.end110:                                        ; preds = %do.body102, %if.end72.do.end110_crit_edge
  %61 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %asic_funcs, align 8
  %rreg113696 = getelementptr inbounds %struct.hl_asic_funcs, ptr %62, i32 0, i32 57
  %63 = ptrtoint ptr %rreg113696 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rreg113696, align 4
  %call114697 = tail call i32 %64(ptr noundef %hdev, i32 noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call114697)
  %cmp115698 = icmp eq i32 %call114697, 1
  br i1 %cmp115698, label %do.end110.if.end152_crit_edge, label %if.end118.lr.ph

do.end110.if.end152_crit_edge:                    ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end152

if.end118.lr.ph:                                  ; preds = %do.end110
  %boot_fit_timeout119 = getelementptr inbounds %struct.fw_load_mgr, ptr %fw_loader, i32 0, i32 4
  br label %if.end118

if.end118:                                        ; preds = %if.end140.if.end118_crit_edge, %if.end118.lr.ph
  %65 = ptrtoint ptr %boot_fit_timeout119 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %boot_fit_timeout119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool120.not = icmp eq i32 %66, 0
  br i1 %tobool120.not, label %if.end118.if.end130_crit_edge, label %land.lhs.true121

if.end118.if.end130_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130

land.lhs.true121:                                 ; preds = %if.end118
  %call122 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call122, i64 %add.i645)
  %cmp3.i649 = icmp sgt i64 %call122, %add.i645
  br i1 %cmp3.i649, label %for.end141, label %land.lhs.true121.if.end130_crit_edge

land.lhs.true121.if.end130_crit_edge:             ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130

if.end130:                                        ; preds = %land.lhs.true121.if.end130_crit_edge, %if.end118.if.end130_crit_edge
  %67 = ptrtoint ptr %fw_poll_interval_usec to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %fw_poll_interval_usec, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %68)
  %tobool132.not = icmp eq i64 %68, 0
  br i1 %tobool132.not, label %if.end130.if.end140_crit_edge, label %if.then133

if.end130.if.end140_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end140

if.then133:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  %shr135 = lshr i64 %68, 2
  %69 = trunc i64 %shr135 to i32
  %conv137 = add i32 %69, 1
  %conv139 = trunc i64 %68 to i32
  tail call void @usleep_range_state(i32 noundef %conv137, i32 noundef %conv139, i32 noundef 2) #8
  br label %if.end140

if.end140:                                        ; preds = %if.then133, %if.end130.if.end140_crit_edge
  %70 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %asic_funcs, align 8
  %rreg113 = getelementptr inbounds %struct.hl_asic_funcs, ptr %71, i32 0, i32 57
  %72 = ptrtoint ptr %rreg113 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rreg113, align 4
  %call114 = tail call i32 %73(ptr noundef %hdev, i32 noundef %5) #8
  %cmp115 = icmp eq i32 %call114, 1
  br i1 %cmp115, label %if.end140.if.end152_crit_edge, label %if.end140.if.end118_crit_edge

if.end140.if.end118_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

if.end140.if.end152_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end152

for.end141:                                       ; preds = %land.lhs.true121
  %74 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %asic_funcs, align 8
  %rreg128 = getelementptr inbounds %struct.hl_asic_funcs, ptr %75, i32 0, i32 57
  %76 = ptrtoint ptr %rreg128 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rreg128, align 4
  %call129 = tail call i32 %77(ptr noundef %hdev, i32 noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call129)
  %cmp143 = icmp eq i32 %call129, 1
  br i1 %cmp143, label %for.end141.if.end152_crit_edge, label %do.end150

for.end141.if.end152_crit_edge:                   ; preds = %for.end141
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end152

do.end150:                                        ; preds = %for.end141
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.290) #11
  br label %out

if.end152:                                        ; preds = %for.end141.if.end152_crit_edge, %if.end140.if.end152_crit_edge, %do.end110.if.end152_crit_edge
  %80 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %asic_funcs, align 8
  %wreg154 = getelementptr inbounds %struct.hl_asic_funcs, ptr %81, i32 0, i32 58
  %82 = ptrtoint ptr %wreg154 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %wreg154, align 4
  tail call void %83(ptr noundef %hdev, i32 noundef %7, i32 noundef 0) #8
  br label %if.end155

if.end155:                                        ; preds = %if.end152, %if.then62, %do.body56
  %84 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hdev, align 8
  %tobool158.not = icmp eq ptr %85, null
  %call164 = tail call i64 @ktime_get() #8
  %mul165 = mul i32 %3, 10
  %86 = tail call i32 @llvm.umin.i32(i32 %mul165, i32 10000000)
  %.sink708 = select i1 %tobool158.not, i32 %86, i32 %3
  %conv161 = zext i32 %.sink708 to i64
  %mul.i652 = mul nuw nsw i64 %conv161, 1000
  %add.i653 = add i64 %call164, %mul.i652
  %87 = ptrtoint ptr %fw_poll_interval_usec to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %fw_poll_interval_usec, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %88)
  %tobool178.not = icmp eq i64 %88, 0
  br i1 %tobool178.not, label %if.end155.do.end188_crit_edge, label %do.body180

if.end155.do.end188_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end188

do.body180:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 2558) #8
  br label %do.end188

do.end188:                                        ; preds = %do.body180, %if.end155.do.end188_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool205.not = icmp eq i32 %3, 0
  br label %for.cond189

for.cond189:                                      ; preds = %for.cond189.backedge, %do.end188
  %89 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %asic_funcs, align 8
  %rreg191 = getelementptr inbounds %struct.hl_asic_funcs, ptr %90, i32 0, i32 57
  %91 = ptrtoint ptr %rreg191 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rreg191, align 4
  %call192 = tail call i32 %92(ptr noundef %hdev, i32 noundef %13) #8
  %93 = zext i32 %call192 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.306)
  switch i32 %call192, label %if.end204 [
    i32 2, label %for.cond189.lor.end_crit_edge
    i32 11, label %for.cond189.lor.end_crit_edge714
    i32 15, label %for.cond189.lor.end_crit_edge715
    i32 3, label %for.cond189.lor.end_crit_edge716
  ]

for.cond189.lor.end_crit_edge716:                 ; preds = %for.cond189
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

for.cond189.lor.end_crit_edge715:                 ; preds = %for.cond189
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

for.cond189.lor.end_crit_edge714:                 ; preds = %for.cond189
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

for.cond189.lor.end_crit_edge:                    ; preds = %for.cond189
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

if.end204:                                        ; preds = %for.cond189
  br i1 %tobool205.not, label %if.end204.if.end215_crit_edge, label %land.lhs.true206

if.end204.if.end215_crit_edge:                    ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end215

land.lhs.true206:                                 ; preds = %if.end204
  %call207 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call207, i64 %add.i653)
  %cmp3.i657 = icmp sgt i64 %call207, %add.i653
  br i1 %cmp3.i657, label %for.end226, label %land.lhs.true206.if.end215_crit_edge

land.lhs.true206.if.end215_crit_edge:             ; preds = %land.lhs.true206
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end215

if.end215:                                        ; preds = %land.lhs.true206.if.end215_crit_edge, %if.end204.if.end215_crit_edge
  %94 = ptrtoint ptr %fw_poll_interval_usec to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %fw_poll_interval_usec, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %95)
  %tobool217.not = icmp eq i64 %95, 0
  br i1 %tobool217.not, label %if.end215.for.cond189.backedge_crit_edge, label %if.then218

if.end215.for.cond189.backedge_crit_edge:         ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond189.backedge

if.then218:                                       ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #10
  %shr220 = lshr i64 %95, 2
  %96 = trunc i64 %shr220 to i32
  %conv222 = add i32 %96, 1
  %conv224 = trunc i64 %95 to i32
  tail call void @usleep_range_state(i32 noundef %conv222, i32 noundef %conv224, i32 noundef 2) #8
  br label %for.cond189.backedge

for.cond189.backedge:                             ; preds = %if.then218, %if.end215.for.cond189.backedge_crit_edge
  br label %for.cond189

for.end226:                                       ; preds = %land.lhs.true206
  %97 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %asic_funcs, align 8
  %rreg213 = getelementptr inbounds %struct.hl_asic_funcs, ptr %98, i32 0, i32 57
  %99 = ptrtoint ptr %rreg213 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %rreg213, align 4
  %call214 = tail call i32 %100(ptr noundef %hdev, i32 noundef %13) #8
  %101 = zext i32 %call214 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.307)
  switch i32 %call214, label %lor.rhs [
    i32 2, label %for.end226.lor.end_crit_edge
    i32 11, label %for.end226.lor.end_crit_edge717
    i32 15, label %for.end226.lor.end_crit_edge718
    i32 3, label %for.end226.lor.end_crit_edge719
  ]

for.end226.lor.end_crit_edge719:                  ; preds = %for.end226
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

for.end226.lor.end_crit_edge718:                  ; preds = %for.end226
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

for.end226.lor.end_crit_edge717:                  ; preds = %for.end226
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

for.end226.lor.end_crit_edge:                     ; preds = %for.end226
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.rhs:                                          ; preds = %for.end226
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.end226.lor.end_crit_edge, %for.end226.lor.end_crit_edge717, %for.end226.lor.end_crit_edge718, %for.end226.lor.end_crit_edge719, %for.cond189.lor.end_crit_edge, %for.cond189.lor.end_crit_edge714, %for.cond189.lor.end_crit_edge715, %for.cond189.lor.end_crit_edge716
  %status.2682 = phi i32 [ %call214, %for.end226.lor.end_crit_edge ], [ %call214, %lor.rhs ], [ %call214, %for.end226.lor.end_crit_edge717 ], [ %call214, %for.end226.lor.end_crit_edge718 ], [ %call214, %for.end226.lor.end_crit_edge719 ], [ %call192, %for.cond189.lor.end_crit_edge ], [ %call192, %for.cond189.lor.end_crit_edge714 ], [ %call192, %for.cond189.lor.end_crit_edge715 ], [ %call192, %for.cond189.lor.end_crit_edge716 ]
  %102 = phi i1 [ true, %for.end226.lor.end_crit_edge ], [ false, %lor.rhs ], [ true, %for.end226.lor.end_crit_edge717 ], [ true, %for.end226.lor.end_crit_edge718 ], [ true, %for.end226.lor.end_crit_edge719 ], [ true, %for.cond189.lor.end_crit_edge ], [ true, %for.cond189.lor.end_crit_edge714 ], [ true, %for.cond189.lor.end_crit_edge715 ], [ true, %for.cond189.lor.end_crit_edge716 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_fw_static_init_cpu.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_fw_static_init_cpu, %if.then251)) #8
          to label %do.end255 [label %if.then251], !srcloc !552

if.then251:                                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  %103 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hl_fw_static_init_cpu.__UNIQUE_ID_ddebug394, ptr noundef %104, ptr noundef nonnull @.str.275, i32 noundef %status.2682) #8
  br label %do.end255

do.end255:                                        ; preds = %if.then251, %lor.end
  %call256 = tail call fastcc i32 @hl_fw_static_read_device_fw_version(ptr noundef %hdev, i32 noundef 0)
  tail call fastcc void @hl_fw_boot_fit_update_state(ptr noundef %hdev, i32 noundef %9, i32 noundef %11)
  br i1 %102, label %if.end259, label %if.then258

if.then258:                                       ; preds = %do.end255
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @detect_cpu_boot_status(ptr noundef %hdev, i32 noundef %status.2682)
  br label %out

if.end259:                                        ; preds = %do.end255
  %105 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %asic_funcs, align 8
  %init_cpu_scrambler_dram = getelementptr inbounds %struct.hl_asic_funcs, ptr %106, i32 0, i32 85
  %107 = ptrtoint ptr %init_cpu_scrambler_dram to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %init_cpu_scrambler_dram, align 4
  tail call void %108(ptr noundef %hdev) #8
  %109 = ptrtoint ptr %fw_components to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %fw_components, align 8
  %and262 = and i64 %110, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and262)
  %tobool263.not = icmp eq i64 %and262, 0
  br i1 %tobool263.not, label %do.end267, label %if.end269

do.end267:                                        ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #10
  %111 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %112, ptr noundef nonnull @.str.228) #11
  br label %out

if.end269:                                        ; preds = %if.end259
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %status.2682)
  %cmp270 = icmp eq i32 %status.2682, 3
  br i1 %cmp270, label %if.end269.out_crit_edge, label %do.end276

if.end269.out_crit_edge:                          ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end276:                                        ; preds = %if.end269
  %113 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %114, ptr noundef nonnull @.str.222) #11
  %115 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %asic_funcs, align 8
  %load_firmware_to_device = getelementptr inbounds %struct.hl_asic_funcs, ptr %116, i32 0, i32 64
  %117 = ptrtoint ptr %load_firmware_to_device to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %load_firmware_to_device, align 4
  %call279 = tail call i32 %118(ptr noundef %hdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call279)
  %tobool280.not = icmp eq i32 %call279, 0
  br i1 %tobool280.not, label %if.end282, label %do.end276.out_crit_edge

do.end276.out_crit_edge:                          ; preds = %do.end276
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end282:                                        ; preds = %do.end276
  %skip_bmc = getelementptr inbounds %struct.fw_load_mgr, ptr %fw_loader, i32 0, i32 5
  %119 = ptrtoint ptr %skip_bmc to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %skip_bmc, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool283.not = icmp eq i8 %120, 0
  br i1 %tobool283.not, label %if.end282.if.end363_crit_edge, label %if.then284

if.end282.if.end363_crit_edge:                    ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end363

if.then284:                                       ; preds = %if.end282
  %121 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %asic_funcs, align 8
  %wreg286 = getelementptr inbounds %struct.hl_asic_funcs, ptr %122, i32 0, i32 58
  %123 = ptrtoint ptr %wreg286 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %wreg286, align 4
  tail call void %124(ptr noundef %hdev, i32 noundef %7, i32 noundef 3) #8
  %125 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %hdev, align 8
  %tobool289.not = icmp eq ptr %126, null
  %call295 = tail call i64 @ktime_get() #8
  %mul296 = mul i32 %3, 10
  %127 = tail call i32 @llvm.umin.i32(i32 %mul296, i32 10000000)
  %.sink709 = select i1 %tobool289.not, i32 %127, i32 %3
  %conv292 = zext i32 %.sink709 to i64
  %mul.i660 = mul nuw nsw i64 %conv292, 1000
  %add.i661 = add i64 %call295, %mul.i660
  %128 = ptrtoint ptr %fw_poll_interval_usec to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %fw_poll_interval_usec, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %129)
  %tobool309.not = icmp eq i64 %129, 0
  br i1 %tobool309.not, label %if.then284.do.end319_crit_edge, label %do.body311

if.then284.do.end319_crit_edge:                   ; preds = %if.then284
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end319

do.body311:                                       ; preds = %if.then284
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 2607) #8
  br label %do.end319

do.end319:                                        ; preds = %do.body311, %if.then284.do.end319_crit_edge
  %130 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %asic_funcs, align 8
  %rreg322699 = getelementptr inbounds %struct.hl_asic_funcs, ptr %131, i32 0, i32 57
  %132 = ptrtoint ptr %rreg322699 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %rreg322699, align 4
  %call323700 = tail call i32 %133(ptr noundef %hdev, i32 noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %call323700)
  %cmp324701 = icmp eq i32 %call323700, 14
  br i1 %cmp324701, label %do.end319.if.end363_crit_edge, label %do.end319.if.end327_crit_edge

do.end319.if.end327_crit_edge:                    ; preds = %do.end319
  br label %if.end327

do.end319.if.end363_crit_edge:                    ; preds = %do.end319
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end363

if.end327:                                        ; preds = %if.end348.if.end327_crit_edge, %do.end319.if.end327_crit_edge
  br i1 %tobool205.not, label %if.end327.if.end338_crit_edge, label %land.lhs.true329

if.end327.if.end338_crit_edge:                    ; preds = %if.end327
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end338

land.lhs.true329:                                 ; preds = %if.end327
  %call330 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call330, i64 %add.i661)
  %cmp3.i665 = icmp sgt i64 %call330, %add.i661
  br i1 %cmp3.i665, label %for.end349, label %land.lhs.true329.if.end338_crit_edge

land.lhs.true329.if.end338_crit_edge:             ; preds = %land.lhs.true329
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end338

if.end338:                                        ; preds = %land.lhs.true329.if.end338_crit_edge, %if.end327.if.end338_crit_edge
  %134 = ptrtoint ptr %fw_poll_interval_usec to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %fw_poll_interval_usec, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %135)
  %tobool340.not = icmp eq i64 %135, 0
  br i1 %tobool340.not, label %if.end338.if.end348_crit_edge, label %if.then341

if.end338.if.end348_crit_edge:                    ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end348

if.then341:                                       ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #10
  %shr343 = lshr i64 %135, 2
  %136 = trunc i64 %shr343 to i32
  %conv345 = add i32 %136, 1
  %conv347 = trunc i64 %135 to i32
  tail call void @usleep_range_state(i32 noundef %conv345, i32 noundef %conv347, i32 noundef 2) #8
  br label %if.end348

if.end348:                                        ; preds = %if.then341, %if.end338.if.end348_crit_edge
  %137 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %asic_funcs, align 8
  %rreg322 = getelementptr inbounds %struct.hl_asic_funcs, ptr %138, i32 0, i32 57
  %139 = ptrtoint ptr %rreg322 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %rreg322, align 4
  %call323 = tail call i32 %140(ptr noundef %hdev, i32 noundef %13) #8
  %cmp324 = icmp eq i32 %call323, 14
  br i1 %cmp324, label %if.end348.if.end363_crit_edge, label %if.end348.if.end327_crit_edge

if.end348.if.end327_crit_edge:                    ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end327

if.end348.if.end363_crit_edge:                    ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end363

for.end349:                                       ; preds = %land.lhs.true329
  %141 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %asic_funcs, align 8
  %rreg336 = getelementptr inbounds %struct.hl_asic_funcs, ptr %142, i32 0, i32 57
  %143 = ptrtoint ptr %rreg336 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %rreg336, align 4
  %call337 = tail call i32 %144(ptr noundef %hdev, i32 noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %call337)
  %cmp351 = icmp eq i32 %call337, 14
  br i1 %cmp351, label %for.end349.if.end363_crit_edge, label %do.end358

for.end349.if.end363_crit_edge:                   ; preds = %for.end349
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end363

do.end358:                                        ; preds = %for.end349
  call void @__sanitizer_cov_trace_pc() #10
  %145 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %146, ptr noundef nonnull @.str.297, i32 noundef %call337) #11
  %147 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %asic_funcs, align 8
  %wreg361 = getelementptr inbounds %struct.hl_asic_funcs, ptr %148, i32 0, i32 58
  %149 = ptrtoint ptr %wreg361 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %wreg361, align 4
  tail call void %150(ptr noundef %hdev, i32 noundef %7, i32 noundef 0) #8
  br label %out

if.end363:                                        ; preds = %for.end349.if.end363_crit_edge, %if.end348.if.end363_crit_edge, %do.end319.if.end363_crit_edge, %if.end282.if.end363_crit_edge
  %151 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %asic_funcs, align 8
  %wreg365 = getelementptr inbounds %struct.hl_asic_funcs, ptr %152, i32 0, i32 58
  %153 = ptrtoint ptr %wreg365 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %wreg365, align 4
  tail call void %154(ptr noundef %hdev, i32 noundef %7, i32 noundef 2) #8
  %155 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %hdev, align 8
  %tobool368.not = icmp eq ptr %156, null
  %call374 = tail call i64 @ktime_get() #8
  %mul375 = mul i32 %3, 10
  %157 = tail call i32 @llvm.umin.i32(i32 %mul375, i32 10000000)
  %.sink710 = select i1 %tobool368.not, i32 %157, i32 %3
  %conv371 = zext i32 %.sink710 to i64
  %mul.i668 = mul nuw nsw i64 %conv371, 1000
  %add.i669 = add i64 %call374, %mul.i668
  %158 = ptrtoint ptr %fw_poll_interval_usec to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %fw_poll_interval_usec, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %159)
  %tobool388.not = icmp eq i64 %159, 0
  br i1 %tobool388.not, label %if.end363.do.end398_crit_edge, label %do.body390

if.end363.do.end398_crit_edge:                    ; preds = %if.end363
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end398

do.body390:                                       ; preds = %if.end363
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 2627) #8
  br label %do.end398

do.end398:                                        ; preds = %do.body390, %if.end363.do.end398_crit_edge
  %160 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %asic_funcs, align 8
  %rreg401702 = getelementptr inbounds %struct.hl_asic_funcs, ptr %161, i32 0, i32 57
  %162 = ptrtoint ptr %rreg401702 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %rreg401702, align 4
  %call402703 = tail call i32 %163(ptr noundef %hdev, i32 noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call402703)
  %cmp403704 = icmp eq i32 %call402703, 3
  br i1 %cmp403704, label %do.end398.for.end428.thread_crit_edge, label %do.end398.if.end406_crit_edge

do.end398.if.end406_crit_edge:                    ; preds = %do.end398
  br label %if.end406

do.end398.for.end428.thread_crit_edge:            ; preds = %do.end398
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end428.thread

for.end428.thread:                                ; preds = %if.end427.for.end428.thread_crit_edge, %do.end398.for.end428.thread_crit_edge
  %164 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %asic_funcs, align 8
  %wreg434688 = getelementptr inbounds %struct.hl_asic_funcs, ptr %165, i32 0, i32 58
  %166 = ptrtoint ptr %wreg434688 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %wreg434688, align 4
  tail call void %167(ptr noundef %hdev, i32 noundef %7, i32 noundef 0) #8
  br label %if.end450

if.end406:                                        ; preds = %if.end427.if.end406_crit_edge, %do.end398.if.end406_crit_edge
  br i1 %tobool205.not, label %if.end406.if.end417_crit_edge, label %land.lhs.true408

if.end406.if.end417_crit_edge:                    ; preds = %if.end406
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end417

land.lhs.true408:                                 ; preds = %if.end406
  %call409 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call409, i64 %add.i669)
  %cmp3.i673 = icmp sgt i64 %call409, %add.i669
  br i1 %cmp3.i673, label %for.end428, label %land.lhs.true408.if.end417_crit_edge

land.lhs.true408.if.end417_crit_edge:             ; preds = %land.lhs.true408
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end417

if.end417:                                        ; preds = %land.lhs.true408.if.end417_crit_edge, %if.end406.if.end417_crit_edge
  %168 = ptrtoint ptr %fw_poll_interval_usec to i32
  call void @__asan_load8_noabort(i32 %168)
  %169 = load i64, ptr %fw_poll_interval_usec, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %169)
  %tobool419.not = icmp eq i64 %169, 0
  br i1 %tobool419.not, label %if.end417.if.end427_crit_edge, label %if.then420

if.end417.if.end427_crit_edge:                    ; preds = %if.end417
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end427

if.then420:                                       ; preds = %if.end417
  call void @__sanitizer_cov_trace_pc() #10
  %shr422 = lshr i64 %169, 2
  %170 = trunc i64 %shr422 to i32
  %conv424 = add i32 %170, 1
  %conv426 = trunc i64 %169 to i32
  tail call void @usleep_range_state(i32 noundef %conv424, i32 noundef %conv426, i32 noundef 2) #8
  br label %if.end427

if.end427:                                        ; preds = %if.then420, %if.end417.if.end427_crit_edge
  %171 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %asic_funcs, align 8
  %rreg401 = getelementptr inbounds %struct.hl_asic_funcs, ptr %172, i32 0, i32 57
  %173 = ptrtoint ptr %rreg401 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %rreg401, align 4
  %call402 = tail call i32 %174(ptr noundef %hdev, i32 noundef %13) #8
  %cmp403 = icmp eq i32 %call402, 3
  br i1 %cmp403, label %if.end427.for.end428.thread_crit_edge, label %if.end427.if.end406_crit_edge

if.end427.if.end406_crit_edge:                    ; preds = %if.end427
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end406

if.end427.for.end428.thread_crit_edge:            ; preds = %if.end427
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end428.thread

for.end428:                                       ; preds = %land.lhs.true408
  %175 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %asic_funcs, align 8
  %rreg415 = getelementptr inbounds %struct.hl_asic_funcs, ptr %176, i32 0, i32 57
  %177 = ptrtoint ptr %rreg415 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %rreg415, align 4
  %call416 = tail call i32 %178(ptr noundef %hdev, i32 noundef %13) #8
  %179 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %asic_funcs, align 8
  %wreg434 = getelementptr inbounds %struct.hl_asic_funcs, ptr %180, i32 0, i32 58
  %181 = ptrtoint ptr %wreg434 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %wreg434, align 4
  tail call void %182(ptr noundef %hdev, i32 noundef %7, i32 noundef 0) #8
  %183 = zext i32 %call416 to i64
  call void @__sanitizer_cov_trace_switch(i64 %183, ptr @__sancov_gen_cov_switch_values.308)
  switch i32 %call416, label %do.end447 [
    i32 3, label %for.end428.if.end450_crit_edge
    i32 9, label %do.end442
  ]

for.end428.if.end450_crit_edge:                   ; preds = %for.end428
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end450

do.end442:                                        ; preds = %for.end428
  call void @__sanitizer_cov_trace_pc() #10
  %184 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %185, ptr noundef nonnull @.str.300) #11
  br label %out

do.end447:                                        ; preds = %for.end428
  call void @__sanitizer_cov_trace_pc() #10
  %186 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %187, ptr noundef nonnull @.str.303, i32 noundef %call416) #11
  br label %out

if.end450:                                        ; preds = %for.end428.if.end450_crit_edge, %for.end428.thread
  %boot_err0_reg = getelementptr inbounds %struct.static_fw_load_mgr, ptr %fw_loader, i32 0, i32 7
  %188 = ptrtoint ptr %boot_err0_reg to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %boot_err0_reg, align 4
  %boot_err1_reg = getelementptr inbounds %struct.static_fw_load_mgr, ptr %fw_loader, i32 0, i32 8
  %190 = ptrtoint ptr %boot_err1_reg to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %boot_err1_reg, align 8
  %call451 = tail call fastcc i32 @fw_read_errors(ptr noundef %hdev, i32 noundef %189, i32 noundef %191, i32 noundef %9, i32 noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call451)
  %tobool452.not = icmp eq i32 %call451, 0
  br i1 %tobool452.not, label %if.end454, label %if.end450.cleanup_crit_edge

if.end450.cleanup_crit_edge:                      ; preds = %if.end450
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end454:                                        ; preds = %if.end450
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @hl_fw_linux_update_state(ptr noundef %hdev, i32 noundef %9, i32 noundef %11)
  br label %cleanup

out:                                              ; preds = %do.end447, %do.end442, %do.end358, %do.end276.out_crit_edge, %if.end269.out_crit_edge, %do.end267, %if.then258, %do.end150, %if.else67.out_crit_edge
  %rc.0 = phi i32 [ -5, %if.then258 ], [ %call279, %do.end276.out_crit_edge ], [ -5, %do.end358 ], [ 0, %do.end267 ], [ %call69, %if.else67.out_crit_edge ], [ -110, %do.end150 ], [ 0, %if.end269.out_crit_edge ], [ -5, %do.end447 ], [ -5, %do.end442 ]
  %boot_err0_reg455 = getelementptr inbounds %struct.static_fw_load_mgr, ptr %fw_loader, i32 0, i32 7
  %192 = ptrtoint ptr %boot_err0_reg455 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %boot_err0_reg455, align 4
  %boot_err1_reg456 = getelementptr inbounds %struct.static_fw_load_mgr, ptr %fw_loader, i32 0, i32 8
  %194 = ptrtoint ptr %boot_err1_reg456 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %boot_err1_reg456, align 8
  %call457 = tail call fastcc i32 @fw_read_errors(ptr noundef %hdev, i32 noundef %193, i32 noundef %195, i32 noundef %9, i32 noundef %11)
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end454, %if.end450.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out ], [ 0, %if.end454 ], [ 0, %entry.cleanup_crit_edge ], [ %call451, %if.end450.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_alloc_algo_owner(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_free_owner(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @fw_report_boot_dev0(ptr nocapture noundef readonly %hdev, i32 noundef %err_val, i32 noundef %sts_val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %err_val)
  %tobool.not = icmp sgt i32 %err_val, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and1 = and i32 %err_val, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %do.end

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.88) #11
  br label %if.end4

if.end4:                                          ; preds = %do.end, %if.end.if.end4_crit_edge
  %2 = xor i1 %tobool2.not, true
  %and5 = and i32 %err_val, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.if.end12_crit_edge, label %do.end10

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %dev11 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %3 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.91) #11
  br label %if.end12

if.end12:                                         ; preds = %do.end10, %if.end4.if.end12_crit_edge
  %err_exists.1.off0 = phi i1 [ true, %do.end10 ], [ %2, %if.end4.if.end12_crit_edge ]
  %and13 = and i32 %err_val, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end20_crit_edge, label %do.end18

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %dev19 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %5 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.94) #11
  br label %if.end20

if.end20:                                         ; preds = %do.end18, %if.end12.if.end20_crit_edge
  %err_exists.2.off0 = phi i1 [ true, %do.end18 ], [ %err_exists.1.off0, %if.end12.if.end20_crit_edge ]
  %and21 = and i32 %err_val, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end36_crit_edge, label %if.then23

if.end20.if.end36_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then23:                                        ; preds = %if.end20
  %bmc_enable = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 116
  %7 = ptrtoint ptr %bmc_enable to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bmc_enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool24.not = icmp eq i8 %8, 0
  %dev33 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %9 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev33, align 4
  br i1 %tobool24.not, label %do.end32, label %do.end28

do.end28:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.97) #11
  br label %if.end36

do.end32:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.100) #11
  %and34 = and i32 %err_val, -17
  br label %if.end36

if.end36:                                         ; preds = %do.end32, %do.end28, %if.end20.if.end36_crit_edge
  %err_exists.3.off0 = phi i1 [ true, %do.end28 ], [ %err_exists.2.off0, %do.end32 ], [ %err_exists.2.off0, %if.end20.if.end36_crit_edge ]
  %err_val.addr.0 = phi i32 [ %err_val, %do.end28 ], [ %and34, %do.end32 ], [ %err_val, %if.end20.if.end36_crit_edge ]
  %and37 = and i32 %err_val.addr.0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end44_crit_edge, label %do.end42

if.end36.if.end44_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

do.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %dev43 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %11 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev43, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.103) #11
  br label %if.end44

if.end44:                                         ; preds = %do.end42, %if.end36.if.end44_crit_edge
  %err_exists.4.off0 = phi i1 [ true, %do.end42 ], [ %err_exists.3.off0, %if.end36.if.end44_crit_edge ]
  %and45 = and i32 %err_val.addr.0, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end44.if.end52_crit_edge, label %do.end50

if.end44.if.end52_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

do.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %dev51 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %13 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev51, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.106) #11
  br label %if.end52

if.end52:                                         ; preds = %do.end50, %if.end44.if.end52_crit_edge
  %err_exists.5.off0 = phi i1 [ true, %do.end50 ], [ %err_exists.4.off0, %if.end44.if.end52_crit_edge ]
  %and53 = and i32 %err_val.addr.0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end52.if.end60_crit_edge, label %do.end58

if.end52.if.end60_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

do.end58:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %dev59 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %15 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev59, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.109) #11
  br label %if.end60

if.end60:                                         ; preds = %do.end58, %if.end52.if.end60_crit_edge
  %err_exists.6.off0 = phi i1 [ true, %do.end58 ], [ %err_exists.5.off0, %if.end52.if.end60_crit_edge ]
  %and61 = and i32 %err_val.addr.0, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end60.if.end68_crit_edge, label %do.end66

if.end60.if.end68_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

do.end66:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %dev67 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %17 = ptrtoint ptr %dev67 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev67, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.112) #11
  br label %if.end68

if.end68:                                         ; preds = %do.end66, %if.end60.if.end68_crit_edge
  %err_exists.7.off0 = phi i1 [ true, %do.end66 ], [ %err_exists.6.off0, %if.end60.if.end68_crit_edge ]
  %and69 = and i32 %err_val.addr.0, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.end68.if.end76_crit_edge, label %do.end74

if.end68.if.end76_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

do.end74:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  %dev75 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %19 = ptrtoint ptr %dev75 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev75, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.115) #11
  br label %if.end76

if.end76:                                         ; preds = %do.end74, %if.end68.if.end76_crit_edge
  %err_exists.8.off0 = phi i1 [ true, %do.end74 ], [ %err_exists.7.off0, %if.end68.if.end76_crit_edge ]
  %and77 = and i32 %err_val.addr.0, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.end76.if.end84_crit_edge, label %do.end82

if.end76.if.end84_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

do.end82:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  %dev83 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %21 = ptrtoint ptr %dev83 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev83, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.118) #11
  br label %if.end84

if.end84:                                         ; preds = %do.end82, %if.end76.if.end84_crit_edge
  %err_exists.9.off0 = phi i1 [ true, %do.end82 ], [ %err_exists.8.off0, %if.end76.if.end84_crit_edge ]
  %and85 = and i32 %err_val.addr.0, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.end84.if.end92_crit_edge, label %do.end90

if.end84.if.end92_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

do.end90:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  %dev91 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %23 = ptrtoint ptr %dev91 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev91, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.121) #11
  br label %if.end92

if.end92:                                         ; preds = %do.end90, %if.end84.if.end92_crit_edge
  %err_exists.10.off0 = phi i1 [ true, %do.end90 ], [ %err_exists.9.off0, %if.end84.if.end92_crit_edge ]
  %and93 = and i32 %err_val.addr.0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %if.end92.if.end106_crit_edge, label %do.body96

if.end92.if.end106_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end106

do.body96:                                        ; preds = %if.end92
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fw_report_boot_dev0.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fw_report_boot_dev0, %if.then100)) #8
          to label %do.end104 [label %if.then100], !srcloc !552

if.then100:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #10
  %dev101 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %25 = ptrtoint ptr %dev101 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev101, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fw_report_boot_dev0.__UNIQUE_ID_ddebug300, ptr noundef %26, ptr noundef nonnull @.str.123) #8
  br label %do.end104

do.end104:                                        ; preds = %if.then100, %do.body96
  %and105 = and i32 %err_val.addr.0, -8193
  br label %if.end106

if.end106:                                        ; preds = %do.end104, %if.end92.if.end106_crit_edge
  %err_val.addr.1 = phi i32 [ %and105, %do.end104 ], [ %err_val.addr.0, %if.end92.if.end106_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sts_val)
  %tobool108.not = icmp sgt i32 %sts_val, -1
  br i1 %tobool108.not, label %if.end106.if.end127_crit_edge, label %do.body110

if.end106.if.end127_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

do.body110:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fw_report_boot_dev0.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fw_report_boot_dev0, %if.then122)) #8
          to label %if.end127 [label %if.then122], !srcloc !552

if.then122:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #10
  %dev123 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %27 = ptrtoint ptr %dev123 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev123, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fw_report_boot_dev0.__UNIQUE_ID_ddebug301, ptr noundef %28, ptr noundef nonnull @.str.124, i32 noundef %sts_val) #8
  br label %if.end127

if.end127:                                        ; preds = %if.then122, %do.body110, %if.end106.if.end127_crit_edge
  %and128 = and i32 %err_val.addr.1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.end127.if.end136_crit_edge, label %do.end133

if.end127.if.end136_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end136

do.end133:                                        ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  %dev134 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %29 = ptrtoint ptr %dev134 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev134, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %30, ptr noundef nonnull @.str.126) #11
  %and135 = and i32 %err_val.addr.1, -9
  br label %if.end136

if.end136:                                        ; preds = %do.end133, %if.end127.if.end136_crit_edge
  %err_val.addr.2 = phi i32 [ %and135, %do.end133 ], [ %err_val.addr.1, %if.end127.if.end136_crit_edge ]
  %and137 = and i32 %err_val.addr.2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %if.end136.if.end145_crit_edge, label %do.end142

if.end136.if.end145_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end145

do.end142:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  %dev143 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %31 = ptrtoint ptr %dev143 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev143, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.129) #11
  %and144 = and i32 %err_val.addr.2, -1025
  br label %if.end145

if.end145:                                        ; preds = %do.end142, %if.end136.if.end145_crit_edge
  %err_val.addr.3 = phi i32 [ %and144, %do.end142 ], [ %err_val.addr.2, %if.end136.if.end145_crit_edge ]
  %and146 = and i32 %err_val.addr.3, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146)
  %tobool147.not = icmp eq i32 %and146, 0
  br i1 %tobool147.not, label %if.end145.if.end154_crit_edge, label %do.end151

if.end145.if.end154_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end154

do.end151:                                        ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #10
  %dev152 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %33 = ptrtoint ptr %dev152 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev152, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef nonnull @.str.132) #11
  %and153 = and i32 %err_val.addr.3, -1048577
  br label %if.end154

if.end154:                                        ; preds = %do.end151, %if.end145.if.end154_crit_edge
  %err_val.addr.4 = phi i32 [ %and153, %do.end151 ], [ %err_val.addr.3, %if.end145.if.end154_crit_edge ]
  %and156 = and i32 %err_val.addr.4, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156)
  %tobool157.not = icmp eq i32 %and156, 0
  %or.cond = select i1 %err_exists.10.off0, i1 true, i1 %tobool157.not
  br i1 %or.cond, label %if.end163, label %do.end161

do.end161:                                        ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #10
  %dev162 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %35 = ptrtoint ptr %dev162 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev162, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.135, i32 noundef %err_val.addr.4) #11
  br label %land.lhs.true165

if.end163:                                        ; preds = %if.end154
  br i1 %err_exists.10.off0, label %if.end163.land.lhs.true165_crit_edge, label %if.end163.if.end171_crit_edge

if.end163.if.end171_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end171

if.end163.land.lhs.true165_crit_edge:             ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true165

land.lhs.true165:                                 ; preds = %if.end163.land.lhs.true165_crit_edge, %do.end161
  %boot_error_status_mask = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 65
  %37 = ptrtoint ptr %boot_error_status_mask to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %boot_error_status_mask, align 8
  %conv = trunc i64 %38 to i32
  %and168 = and i32 %and156, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and168)
  %tobool169.not = icmp eq i32 %and168, 0
  br i1 %tobool169.not, label %land.lhs.true165.if.end171_crit_edge, label %land.lhs.true165.cleanup_crit_edge

land.lhs.true165.cleanup_crit_edge:               ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true165.if.end171_crit_edge:             ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end171

if.end171:                                        ; preds = %land.lhs.true165.if.end171_crit_edge, %if.end163.if.end171_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end171, %land.lhs.true165.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end171 ], [ false, %entry.cleanup_crit_edge ], [ true, %land.lhs.true165.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strnstr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @detect_cpu_boot_status(ptr nocapture noundef readonly %hdev, i32 noundef %status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.309)
  switch i32 %status, label %do.end38 [
    i32 0, label %do.end
    i32 1, label %do.end3
    i32 4, label %do.end7
    i32 5, label %do.end11
    i32 6, label %do.end15
    i32 7, label %do.end19
    i32 8, label %do.end23
    i32 10, label %do.end27
    i32 12, label %do.end31
    i32 17, label %do.end35
  ]

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.152) #11
  br label %sw.epilog

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev4 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %3 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.155) #11
  br label %sw.epilog

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev8 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %5 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.158) #11
  br label %sw.epilog

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev12 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %7 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.161) #11
  br label %sw.epilog

do.end15:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev16 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %9 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.164) #11
  br label %sw.epilog

do.end19:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev20 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %11 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.167) #11
  br label %sw.epilog

do.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev24 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %13 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.170) #11
  br label %sw.epilog

do.end27:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev28 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %15 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev28, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.173) #11
  br label %sw.epilog

do.end31:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev32 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %17 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev32, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.176) #11
  br label %sw.epilog

do.end35:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev36 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %19 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev36, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.179) #11
  br label %sw.epilog

do.end38:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev39 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %21 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev39, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.182, i32 noundef %status) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end38, %do.end35, %do.end31, %do.end27, %do.end23, %do.end19, %do.end15, %do.end11, %do.end7, %do.end3, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hl_fw_static_read_device_fw_version(ptr noundef %hdev, i32 noundef %fwc) unnamed_addr #0 align 64 {
entry:
  %btl_ver = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %btl_ver) #8
  %0 = call ptr @memset(ptr %btl_ver, i32 255, i32 32)
  %1 = zext i32 %fwc to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.310)
  switch i32 %fwc, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %2 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asic_funcs, align 8
  %rreg = getelementptr inbounds %struct.hl_asic_funcs, ptr %3, i32 0, i32 57
  %4 = ptrtoint ptr %rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rreg, align 4
  %boot_fit_version_offset_reg = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 53, i32 0, i32 0, i32 1, i32 1, i32 6
  %6 = ptrtoint ptr %boot_fit_version_offset_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %boot_fit_version_offset_reg, align 8
  %call = tail call i32 %5(ptr noundef %hdev, i32 noundef %7) #8
  %uboot_ver = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 2
  %boot_fit_version_max_off = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 53, i32 0, i32 0, i32 1
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %fw_loader1 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 53
  %asic_funcs4 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %8 = ptrtoint ptr %asic_funcs4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %asic_funcs4, align 8
  %rreg5 = getelementptr inbounds %struct.hl_asic_funcs, ptr %9, i32 0, i32 57
  %10 = ptrtoint ptr %rreg5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rreg5, align 4
  %preboot_version_offset_reg = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 53, i32 0, i32 0, i32 1, i32 1, i32 5
  %12 = ptrtoint ptr %preboot_version_offset_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %preboot_version_offset_reg, align 4
  %call6 = tail call i32 %11(ptr noundef %hdev, i32 noundef %13) #8
  %preboot_ver7 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 3
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.194, i32 noundef %fwc) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb
  %fw_loader1.sink = phi ptr [ %fw_loader1, %sw.bb3 ], [ %boot_fit_version_max_off, %sw.bb ]
  %dest.0 = phi ptr [ %preboot_ver7, %sw.bb3 ], [ %uboot_ver, %sw.bb ]
  %ver_off.0 = phi i32 [ %call6, %sw.bb3 ], [ %call, %sw.bb ]
  %name.0 = phi ptr [ @.str.193, %sw.bb3 ], [ @.str.192, %sw.bb ]
  %16 = ptrtoint ptr %fw_loader1.sink to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %fw_loader1.sink, align 8
  %conv9 = trunc i64 %17 to i32
  %sram_offset_mask = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 53, i32 0, i32 0, i32 1, i32 1, i32 7
  %18 = ptrtoint ptr %sram_offset_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sram_offset_mask, align 4
  %and = and i32 %19, %ver_off.0
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv9)
  %cmp = icmp ult i32 %and, %conv9
  br i1 %cmp, label %if.then, label %do.end13

if.then:                                          ; preds = %sw.epilog
  %sram_bar_id = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 53, i32 6
  %20 = ptrtoint ptr %sram_bar_id to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sram_bar_id, align 1
  %idxprom = zext i8 %21 to i32
  %arrayidx = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 2, i32 %idxprom
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 %and
  tail call void @mmiocpy(ptr noundef %dest.0, ptr noundef %add.ptr, i32 noundef 128) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fwc)
  %cmp16 = icmp eq i32 %fwc, 0
  br i1 %cmp16, label %if.then18, label %if.then31

do.end13:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %dev14 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %24 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.197, ptr noundef nonnull %name.0, i32 noundef %and) #11
  %call15 = tail call i32 @strscpy(ptr noundef %dest.0, ptr noundef nonnull @.str.199, i32 noundef 128) #8
  br label %cleanup

if.then18:                                        ; preds = %if.then
  %uboot_ver19 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 2
  %call21 = tail call fastcc ptr @extract_fw_ver_from_str(ptr noundef %uboot_ver19)
  %tobool.not = icmp eq ptr %call21, null
  br i1 %tobool.not, label %if.then18.cleanup_crit_edge, label %do.end25

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end25:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  %dev26 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %26 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev26, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.201, ptr noundef nonnull %call21) #11
  tail call void @kfree(ptr noundef nonnull %call21) #8
  br label %cleanup

if.then31:                                        ; preds = %if.then
  %preboot_ver32 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 3
  %call34 = tail call ptr @strnstr(ptr noundef %preboot_ver32, ptr noundef nonnull @.str.193, i32 noundef 128) #8
  %tobool35.not = icmp eq ptr %call34, null
  %cmp38.not = icmp eq ptr %call34, %preboot_ver32
  %or.cond = or i1 %tobool35.not, %cmp38.not
  br i1 %or.cond, label %if.then31.if.end54_crit_edge, label %if.then40

if.then31.if.end54_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then40:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  %sub.ptr.lhs.cast = ptrtoint ptr %call34 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %preboot_ver32 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %28 = tail call i32 @llvm.smin.i32(i32 %sub.ptr.sub, i32 31)
  %call48 = call i32 @strscpy(ptr noundef nonnull %btl_ver, ptr noundef %preboot_ver32, i32 noundef %28) #8
  %dev52 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %29 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev52, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.204, ptr noundef nonnull %btl_ver) #11
  br label %if.end54

if.end54:                                         ; preds = %if.then40, %if.then31.if.end54_crit_edge
  %call57 = call fastcc ptr @extract_fw_ver_from_str(ptr noundef %preboot_ver32)
  %tobool58.not = icmp eq ptr %call57, null
  br i1 %tobool58.not, label %if.end54.cleanup_crit_edge, label %do.end62

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end62:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %dev63 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %31 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev63, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.207, ptr noundef nonnull %call57) #11
  call void @kfree(ptr noundef nonnull %call57) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end62, %if.end54.cleanup_crit_edge, %do.end25, %if.then18.cleanup_crit_edge, %do.end13, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end13 ], [ 0, %do.end62 ], [ 0, %if.end54.cleanup_crit_edge ], [ 0, %if.then18.cleanup_crit_edge ], [ 0, %do.end25 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %btl_ver) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hl_fw_dynamic_request_descriptor(ptr noundef %hdev, ptr noundef %fw_loader, i32 noundef %next_image_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu_timeout = getelementptr inbounds %struct.fw_load_mgr, ptr %fw_loader, i32 0, i32 3
  %0 = ptrtoint ptr %cpu_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu_timeout, align 8
  %call = tail call i32 @hl_fw_dynamic_send_protocol_cmd(ptr noundef %hdev, ptr noundef %fw_loader, i32 noundef 3, i32 noundef %next_image_size, i1 noundef zeroext true, i32 noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %ram_type.i = getelementptr inbounds %struct.fw_response, ptr %fw_loader, i32 0, i32 1
  %2 = ptrtoint ptr %ram_type.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ram_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i = icmp eq i8 %3, 0
  %cond.i = select i1 %cmp.i, i32 1, i32 2
  %arrayidx.i = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 54, i32 %cond.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx.i, align 8
  %6 = ptrtoint ptr %fw_loader to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fw_loader, align 4
  %conv.i.i = zext i32 %7 to i64
  %add.i.i = add i64 %5, 640
  %add.i.i.i = add i64 %add.i.i, %conv.i.i
  %region_size.i.i.i = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 54, i32 %cond.i, i32 1
  %8 = ptrtoint ptr %region_size.i.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %region_size.i.i.i, align 8
  %add1.i.i.i = add i64 %9, %5
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i.i, i64 %add1.i.i.i)
  %cmp.not.i.i.i = icmp ult i64 %add.i.i.i, %add1.i.i.i
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %10 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.240, i64 noundef %add.i.i.i) #11
  br label %do.end.i

if.end.i.i.i:                                     ; preds = %if.end
  %offset_in_bar.i.i.i = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 54, i32 %cond.i, i32 3
  %12 = ptrtoint ptr %offset_in_bar.i.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %offset_in_bar.i.i.i, align 8
  %sub.i.i.i = sub i64 %5, %13
  %bar_size.i.i.i = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 54, i32 %cond.i, i32 2
  %14 = ptrtoint ptr %bar_size.i.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %bar_size.i.i.i, align 8
  %add4.i.i.i = add i64 %sub.i.i.i, %15
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i.i, i64 %add4.i.i.i)
  %cmp5.not.i.i.i = icmp ult i64 %add.i.i.i, %add4.i.i.i
  br i1 %cmp5.not.i.i.i, label %if.end.i, label %do.end10.i.i.i

do.end10.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev11.i.i.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %16 = ptrtoint ptr %dev11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev11.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.243) #11
  br label %do.end.i

do.end.i:                                         ; preds = %do.end10.i.i.i, %do.end.i.i.i
  %dev.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.238) #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end.i.i.i
  %comm_desc.i = getelementptr inbounds %struct.dynamic_fw_load_mgr, ptr %fw_loader, i32 0, i32 1
  %fw_desc_valid.i = getelementptr inbounds %struct.dynamic_fw_load_mgr, ptr %fw_loader, i32 0, i32 5
  %20 = ptrtoint ptr %fw_desc_valid.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %fw_desc_valid.i, align 4
  %bar_id.i = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 54, i32 %cond.i, i32 4
  %21 = ptrtoint ptr %bar_id.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bar_id.i, align 8
  %idxprom.i = zext i8 %22 to i32
  %arrayidx3.i = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 2, i32 %idxprom.i
  %23 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx3.i, align 4
  %25 = ptrtoint ptr %offset_in_bar.i.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %offset_in_bar.i.i.i, align 8
  %idx.ext.i = trunc i64 %26 to i32
  %add.ptr.i = getelementptr i8, ptr %24, i32 %idx.ext.i
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 %7
  tail call void @mmiocpy(ptr noundef %comm_desc.i, ptr noundef %add.ptr4.i, i32 noundef 640) #8
  %27 = ptrtoint ptr %comm_desc.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %comm_desc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1296319304, i32 %28)
  %cmp.not.i.i = icmp eq i32 %28, 1296319304
  br i1 %cmp.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %29 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.245, i32 noundef %28) #11
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end.i
  %version.i.i = getelementptr inbounds %struct.dynamic_fw_load_mgr, ptr %fw_loader, i32 0, i32 1, i32 0, i32 3
  %31 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %version.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp4.not.i.i = icmp eq i8 %32, 1
  br i1 %cmp4.not.i.i, label %if.end14.i.i, label %do.end9.i.i

do.end9.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i24.i = zext i8 %32 to i32
  %dev10.i.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %33 = ptrtoint ptr %dev10.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev10.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.248, i32 noundef %conv.i24.i) #11
  br label %cleanup

if.end14.i.i:                                     ; preds = %if.end.i.i
  %size.i.i = getelementptr inbounds %struct.dynamic_fw_load_mgr, ptr %fw_loader, i32 0, i32 1, i32 0, i32 2
  %35 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 28674, i16 %36)
  %cmp17.not.i.i = icmp eq i16 %36, 28674
  br i1 %cmp17.not.i.i, label %if.end27.i.i, label %do.end22.i.i

do.end22.i.i:                                     ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %37 = tail call i16 @llvm.bswap.i16(i16 %36) #8
  %conv16.i.i = zext i16 %37 to i32
  %dev23.i.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %38 = ptrtoint ptr %dev23.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev23.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.251, i32 noundef %conv16.i.i, i32 noundef 624) #11
  br label %cleanup

if.end27.i.i:                                     ; preds = %if.end14.i.i
  %add.ptr.i.i = getelementptr %struct.dynamic_fw_load_mgr, ptr %fw_loader, i32 0, i32 1, i32 1
  %call.i.i.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %add.ptr.i.i, i32 noundef 624) #14
  %neg.i.i.i = xor i32 %call.i.i.i, -1
  %crc32.i.i = getelementptr inbounds %struct.dynamic_fw_load_mgr, ptr %fw_loader, i32 0, i32 1, i32 0, i32 1
  %40 = ptrtoint ptr %crc32.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %crc32.i.i, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %neg.i.i.i)
  %cmp29.not.i.i = icmp eq i32 %42, %neg.i.i.i
  br i1 %cmp29.not.i.i, label %if.end38.i.i, label %do.end34.i.i

do.end34.i.i:                                     ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev35.i.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %43 = ptrtoint ptr %dev35.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev35.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.254, i32 noundef %neg.i.i.i, i32 noundef %41) #11
  br label %cleanup

if.end38.i.i:                                     ; preds = %if.end27.i.i
  %img_addr.i.i = getelementptr inbounds %struct.dynamic_fw_load_mgr, ptr %fw_loader, i32 0, i32 1, i32 5
  %45 = ptrtoint ptr %img_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %img_addr.i.i, align 8
  %47 = tail call i64 @llvm.bswap.i64(i64 %46) #8
  %call39.i.i = tail call i32 @hl_get_pci_memory_region(ptr noundef %hdev, i64 noundef %47) #8
  %call39.off.i.i = add i32 %call39.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call39.off.i.i)
  %switch.i.i = icmp ult i32 %call39.off.i.i, 2
  br i1 %switch.i.i, label %if.end49.i.i, label %do.end47.i.i

do.end47.i.i:                                     ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev48.i.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %48 = ptrtoint ptr %dev48.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev48.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.257, i64 noundef %47) #11
  br label %cleanup

if.end49.i.i:                                     ; preds = %if.end38.i.i
  %arrayidx.i.i = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 54, i32 %call39.i.i
  %image_region.i.i = getelementptr inbounds %struct.dynamic_fw_load_mgr, ptr %fw_loader, i32 0, i32 2
  %50 = ptrtoint ptr %image_region.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %arrayidx.i.i, ptr %image_region.i.i, align 8
  %fw_image_size.i.i = getelementptr inbounds %struct.dynamic_fw_load_mgr, ptr %fw_loader, i32 0, i32 3
  %51 = ptrtoint ptr %fw_image_size.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fw_image_size.i.i, align 4
  %conv.i.i.i = zext i32 %52 to i64
  %add.i.i25.i = add i64 %47, %conv.i.i.i
  %53 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %arrayidx.i.i, align 8
  %region_size.i.i26.i = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 54, i32 %call39.i.i, i32 1
  %55 = ptrtoint ptr %region_size.i.i26.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %region_size.i.i26.i, align 8
  %add1.i.i27.i = add i64 %56, %54
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i25.i, i64 %add1.i.i27.i)
  %cmp.not.i.i28.i = icmp ult i64 %add.i.i25.i, %add1.i.i27.i
  br i1 %cmp.not.i.i28.i, label %if.end.i.i36.i, label %do.end.i.i30.i

do.end.i.i30.i:                                   ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i29.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %57 = ptrtoint ptr %dev.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i.i29.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.240, i64 noundef %add.i.i25.i) #11
  br label %do.end54.i.i

if.end.i.i36.i:                                   ; preds = %if.end49.i.i
  %offset_in_bar.i.i31.i = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 54, i32 %call39.i.i, i32 3
  %59 = ptrtoint ptr %offset_in_bar.i.i31.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %offset_in_bar.i.i31.i, align 8
  %sub.i.i32.i = sub i64 %54, %60
  %bar_size.i.i33.i = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 54, i32 %call39.i.i, i32 2
  %61 = ptrtoint ptr %bar_size.i.i33.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %bar_size.i.i33.i, align 8
  %add4.i.i34.i = add i64 %sub.i.i32.i, %62
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i25.i, i64 %add4.i.i34.i)
  %cmp5.not.i.i35.i = icmp ult i64 %add.i.i25.i, %add4.i.i34.i
  br i1 %cmp5.not.i.i35.i, label %if.end56.i.i, label %do.end10.i.i38.i

do.end10.i.i38.i:                                 ; preds = %if.end.i.i36.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev11.i.i37.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %63 = ptrtoint ptr %dev11.i.i37.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev11.i.i37.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.243) #11
  br label %do.end54.i.i

do.end54.i.i:                                     ; preds = %do.end10.i.i38.i, %do.end.i.i30.i
  %dev55.i.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %65 = ptrtoint ptr %dev55.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev55.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.260) #11
  br label %cleanup

if.end56.i.i:                                     ; preds = %if.end.i.i36.i
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %fw_desc_valid.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %fw_desc_valid.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end56.i.i, %do.end54.i.i, %do.end47.i.i, %do.end34.i.i, %do.end22.i.i, %do.end9.i.i, %do.end.i.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -5, %do.end.i ], [ -5, %do.end.i.i ], [ -5, %do.end9.i.i ], [ -5, %do.end22.i.i ], [ -5, %do.end34.i.i ], [ -5, %do.end47.i.i ], [ -5, %do.end54.i.i ], [ 0, %if.end56.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hl_fw_dynamic_read_device_fw_version(ptr noundef %hdev, i32 noundef %fwc, ptr noundef %fw_version) unnamed_addr #0 align 64 {
entry:
  %btl_ver = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %btl_ver) #8
  %0 = call ptr @memset(ptr %btl_ver, i32 255, i32 32)
  %1 = zext i32 %fwc to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.311)
  switch i32 %fwc, label %do.end40 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  %uboot_ver = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 2
  %call = tail call i32 @strscpy(ptr noundef %uboot_ver, ptr noundef %fw_version, i32 noundef 128) #8
  %call3 = tail call fastcc ptr @extract_fw_ver_from_str(ptr noundef %uboot_ver)
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %do.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.201, ptr noundef nonnull %call3) #11
  tail call void @kfree(ptr noundef nonnull %call3) #8
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %preboot_ver5 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 3
  %call7 = tail call i32 @strscpy(ptr noundef %preboot_ver5, ptr noundef %fw_version, i32 noundef 128) #8
  %call10 = tail call ptr @strnstr(ptr noundef %preboot_ver5, ptr noundef nonnull @.str.193, i32 noundef 128) #8
  %tobool11.not = icmp eq ptr %call10, null
  %cmp.not = icmp eq ptr %call10, %preboot_ver5
  %or.cond = or i1 %tobool11.not, %cmp.not
  br i1 %or.cond, label %sw.bb4.if.end27_crit_edge, label %if.then14

sw.bb4.if.end27_crit_edge:                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then14:                                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  %sub.ptr.lhs.cast = ptrtoint ptr %call10 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %preboot_ver5 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %4 = tail call i32 @llvm.smin.i32(i32 %sub.ptr.sub, i32 31)
  %call21 = call i32 @strscpy(ptr noundef nonnull %btl_ver, ptr noundef %preboot_ver5, i32 noundef %4) #8
  %dev25 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %5 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev25, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.204, ptr noundef nonnull %btl_ver) #11
  br label %if.end27

if.end27:                                         ; preds = %if.then14, %sw.bb4.if.end27_crit_edge
  %call30 = call fastcc ptr @extract_fw_ver_from_str(ptr noundef %preboot_ver5)
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %if.end27.cleanup_crit_edge, label %do.end35

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end35:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %dev36 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %7 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev36, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.207, ptr noundef nonnull %call30) #11
  call void @kfree(ptr noundef nonnull %call30) #8
  br label %cleanup

do.end40:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev41 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %9 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev41, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.194, i32 noundef %fwc) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end40, %do.end35, %if.end27.cleanup_crit_edge, %do.end, %sw.bb.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %btl_ver) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hl_fw_dynamic_load_image(ptr noundef %hdev, ptr noundef %fw_loader, i32 noundef %load_fwc, i32 noundef %img_ld_timeout) unnamed_addr #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #8
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !551
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %load_fwc)
  %cmp = icmp eq i32 %load_fwc, 0
  %boot_fit_img = getelementptr inbounds %struct.fw_load_mgr, ptr %fw_loader, i32 0, i32 1
  %linux_img = getelementptr inbounds %struct.fw_load_mgr, ptr %fw_loader, i32 0, i32 2
  %cur_fwc.0 = zext i1 %cmp to i32
  %fw_name.0.in = select i1 %cmp, ptr %boot_fit_img, ptr %linux_img
  %1 = ptrtoint ptr %fw_name.0.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %fw_name.0 = load ptr, ptr %fw_name.0.in, align 4
  %call = call fastcc i32 @hl_request_fw(ptr noundef %hdev, ptr noundef nonnull %fw, ptr noundef %fw_name.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %entry
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %fw_image_size = getelementptr inbounds %struct.dynamic_fw_load_mgr, ptr %fw_loader, i32 0, i32 3
  %6 = ptrtoint ptr %fw_image_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %fw_image_size, align 4
  %7 = load i32, ptr %3, align 4
  %call5 = call fastcc i32 @hl_fw_dynamic_request_descriptor(ptr noundef %hdev, ptr noundef %fw_loader, i32 noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end3.release_fw_crit_edge

if.end3.release_fw_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %release_fw

if.end8:                                          ; preds = %if.end3
  %cur_fw_ver = getelementptr inbounds %struct.dynamic_fw_load_mgr, ptr %fw_loader, i32 0, i32 1, i32 3
  call fastcc void @hl_fw_dynamic_read_device_fw_version(ptr noundef %hdev, i32 noundef %cur_fwc.0, ptr noundef %cur_fw_ver)
  br i1 %cmp, label %if.end8.if.end12_crit_edge, label %if.then10

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %cpu_boot_dev_sts0 = getelementptr inbounds %struct.dynamic_fw_load_mgr, ptr %fw_loader, i32 0, i32 1, i32 1, i32 12
  %8 = ptrtoint ptr %cpu_boot_dev_sts0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu_boot_dev_sts0, align 4
  %10 = call i32 @llvm.bswap.i32(i32 %9)
  %cpu_boot_dev_sts1 = getelementptr inbounds %struct.dynamic_fw_load_mgr, ptr %fw_loader, i32 0, i32 1, i32 1, i32 13
  %11 = ptrtoint ptr %cpu_boot_dev_sts1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu_boot_dev_sts1, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  call fastcc void @hl_fw_boot_fit_update_state(ptr noundef %hdev, i32 noundef %10, i32 noundef %13)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8.if.end12_crit_edge
  %14 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fw, align 4
  %img_addr.i = getelementptr inbounds %struct.dynamic_fw_load_mgr, ptr %fw_loader, i32 0, i32 1, i32 5
  %16 = ptrtoint ptr %img_addr.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %img_addr.i, align 8
  %18 = call i64 @llvm.bswap.i64(i64 %17) #8
  %image_region.i = getelementptr inbounds %struct.dynamic_fw_load_mgr, ptr %fw_loader, i32 0, i32 2
  %19 = ptrtoint ptr %image_region.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %image_region.i, align 8
  %bar_id.i = getelementptr inbounds %struct.pci_mem_region, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %bar_id.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bar_id.i, align 8
  %idxprom.i = zext i8 %22 to i32
  %arrayidx.i = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 2, i32 %idxprom.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  %offset_in_bar.i = getelementptr inbounds %struct.pci_mem_region, ptr %20, i32 0, i32 3
  %25 = ptrtoint ptr %offset_in_bar.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %offset_in_bar.i, align 8
  %idx.ext.i = trunc i64 %26 to i32
  %add.ptr.i = getelementptr i8, ptr %24, i32 %idx.ext.i
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %20, align 8
  %sub.i = sub i64 %18, %28
  %idx.ext1.i = trunc i64 %sub.i to i32
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %idx.ext1.i
  %src_off.i = getelementptr inbounds %struct.fw_load_mgr, ptr %fw_loader, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %src_off.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %src_off.i, align 4
  %copy_size.i = getelementptr inbounds %struct.fw_load_mgr, ptr %fw_loader, i32 0, i32 1, i32 2
  %31 = ptrtoint ptr %copy_size.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %copy_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end12.if.end.i.i_crit_edge

if.end12.if.end.i.i_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %15, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end12.if.end.i.i_crit_edge
  %size.addr.0.i.i = phi i32 [ %32, %if.end12.if.end.i.i_crit_edge ], [ %34, %if.then.i.i ]
  %add.i.i = add i32 %size.addr.0.i.i, %30
  %35 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %36)
  %cmp.i.i = icmp ugt i32 %add.i.i, %36
  br i1 %cmp.i.i, label %hl_fw_dynamic_copy_image.exit, label %if.end16

hl_fw_dynamic_copy_image.exit:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %37 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.86, i32 noundef %size.addr.0.i.i, i32 noundef %30) #11
  br label %release_fw

if.end16:                                         ; preds = %if.end.i.i
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %15, i32 0, i32 1
  %39 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %40, i32 %30
  call void @mmiocpy(ptr noundef %add.ptr2.i, ptr noundef %add.ptr.i.i, i32 noundef %size.addr.0.i.i) #8
  %cpu_timeout = getelementptr inbounds %struct.fw_load_mgr, ptr %fw_loader, i32 0, i32 3
  %41 = ptrtoint ptr %cpu_timeout to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cpu_timeout, align 8
  %call17 = call i32 @hl_fw_dynamic_send_protocol_cmd(ptr noundef %hdev, ptr noundef %fw_loader, i32 noundef 4, i32 noundef 0, i1 noundef zeroext true, i32 noundef %42)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.release_fw_crit_edge

if.end16.release_fw_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %release_fw

if.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %call21 = call i32 @hl_fw_dynamic_send_protocol_cmd(ptr noundef %hdev, ptr noundef %fw_loader, i32 noundef 5, i32 noundef 0, i1 noundef zeroext false, i32 noundef %img_ld_timeout)
  br label %release_fw

release_fw:                                       ; preds = %if.end20, %if.end16.release_fw_crit_edge, %hl_fw_dynamic_copy_image.exit, %if.end3.release_fw_crit_edge
  %rc.0 = phi i32 [ %call5, %if.end3.release_fw_crit_edge ], [ -22, %hl_fw_dynamic_copy_image.exit ], [ %call17, %if.end16.release_fw_crit_edge ], [ %call21, %if.end20 ]
  %43 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %44) #8
  br label %cleanup

cleanup:                                          ; preds = %release_fw, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %release_fw ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hl_fw_dynamic_wait_for_boot_fit_active(ptr noundef %hdev, ptr nocapture noundef readonly %fw_loader) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 8
  %tobool.not = icmp eq ptr %1, null
  %call2 = tail call i64 @ktime_get() #8
  %wait_for_bl_timeout3 = getelementptr inbounds %struct.dynamic_fw_load_mgr, ptr %fw_loader, i32 0, i32 4
  %2 = ptrtoint ptr %wait_for_bl_timeout3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wait_for_bl_timeout3, align 8
  %mul = mul i32 %3, 10
  %4 = tail call i32 @llvm.umin.i32(i32 %mul, i32 10000000)
  %.sink = select i1 %tobool.not, i32 %4, i32 %3
  %conv = zext i32 %.sink to i64
  %mul.i = mul nuw nsw i64 %conv, 1000
  %add.i = add i64 %mul.i, %call2
  %fw_poll_interval_usec = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 70
  %5 = ptrtoint ptr %fw_poll_interval_usec to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %fw_poll_interval_usec, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool7.not = icmp eq i64 %6, 0
  br i1 %tobool7.not, label %entry.do.end15_crit_edge, label %do.body9

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

do.body9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 2179) #8
  br label %do.end15

do.end15:                                         ; preds = %do.body9, %entry.do.end15_crit_edge
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %cpu_boot_status = getelementptr inbounds %struct.dynamic_fw_load_mgr, ptr %fw_loader, i32 0, i32 1, i32 1, i32 16
  %wait_for_bl_timeout23 = getelementptr inbounds %struct.dynamic_fw_load_mgr, ptr %fw_loader, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %do.end15
  %7 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %asic_funcs, align 8
  %rreg = getelementptr inbounds %struct.hl_asic_funcs, ptr %8, i32 0, i32 57
  %9 = ptrtoint ptr %rreg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rreg, align 4
  %11 = ptrtoint ptr %cpu_boot_status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu_boot_status, align 8
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %call16 = tail call i32 %10(ptr noundef %hdev, i32 noundef %13) #8
  %14 = zext i32 %call16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.312)
  switch i32 %call16, label %if.end22 [
    i32 15, label %for.cond.do.body57_crit_edge
    i32 3, label %for.cond.do.body57_crit_edge124
  ]

for.cond.do.body57_crit_edge124:                  ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body57

for.cond.do.body57_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body57

if.end22:                                         ; preds = %for.cond
  %15 = ptrtoint ptr %wait_for_bl_timeout23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wait_for_bl_timeout23, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool24.not = icmp eq i32 %16, 0
  br i1 %tobool24.not, label %if.end22.if.end36_crit_edge, label %land.lhs.true

if.end22.if.end36_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

land.lhs.true:                                    ; preds = %if.end22
  %call25 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call25, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call25, %add.i
  br i1 %cmp3.i, label %for.end, label %land.lhs.true.if.end36_crit_edge

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.end36:                                         ; preds = %land.lhs.true.if.end36_crit_edge, %if.end22.if.end36_crit_edge
  %17 = ptrtoint ptr %fw_poll_interval_usec to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %fw_poll_interval_usec, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %tobool38.not = icmp eq i64 %18, 0
  br i1 %tobool38.not, label %if.end36.for.cond.backedge_crit_edge, label %if.then39

if.end36.for.cond.backedge_crit_edge:             ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %shr = lshr i64 %18, 2
  %19 = trunc i64 %shr to i32
  %conv41 = add i32 %19, 1
  %conv43 = trunc i64 %18 to i32
  tail call void @usleep_range_state(i32 noundef %conv41, i32 noundef %conv43, i32 noundef 2) #8
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.then39, %if.end36.for.cond.backedge_crit_edge
  br label %for.cond

for.end:                                          ; preds = %land.lhs.true
  %20 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %asic_funcs, align 8
  %rreg31 = getelementptr inbounds %struct.hl_asic_funcs, ptr %21, i32 0, i32 57
  %22 = ptrtoint ptr %rreg31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rreg31, align 4
  %24 = ptrtoint ptr %cpu_boot_status to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu_boot_status, align 8
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %call35 = tail call i32 %23(ptr noundef %hdev, i32 noundef %26) #8
  %27 = zext i32 %call35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.313)
  switch i32 %call35, label %do.end55 [
    i32 3, label %for.end.do.body57_crit_edge
    i32 15, label %do.body57.fold.split
  ]

for.end.do.body57_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body57

do.end55:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.273) #11
  br label %cleanup

do.body57.fold.split:                             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body57

do.body57:                                        ; preds = %do.body57.fold.split, %for.end.do.body57_crit_edge, %for.cond.do.body57_crit_edge, %for.cond.do.body57_crit_edge124
  %status.097107.ph = phi i32 [ %call35, %for.end.do.body57_crit_edge ], [ 15, %do.body57.fold.split ], [ %call16, %for.cond.do.body57_crit_edge ], [ %call16, %for.cond.do.body57_crit_edge124 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_fw_dynamic_wait_for_boot_fit_active.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_fw_dynamic_wait_for_boot_fit_active, %if.then63)) #8
          to label %cleanup [label %if.then63], !srcloc !552

if.then63:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #10
  %dev64 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %30 = ptrtoint ptr %dev64 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev64, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hl_fw_dynamic_wait_for_boot_fit_active.__UNIQUE_ID_ddebug379, ptr noundef %31, ptr noundef nonnull @.str.275, i32 noundef %status.097107.ph) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %do.body57, %do.end55
  %retval.0 = phi i32 [ -110, %do.end55 ], [ 0, %if.then63 ], [ 0, %do.body57 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hl_fw_dynamic_wait_for_linux_active(ptr noundef %hdev, ptr nocapture noundef readonly %fw_loader) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 8
  %tobool.not = icmp eq ptr %1, null
  %call2 = tail call i64 @ktime_get() #8
  %cpu_timeout3 = getelementptr inbounds %struct.fw_load_mgr, ptr %fw_loader, i32 0, i32 3
  %2 = ptrtoint ptr %cpu_timeout3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu_timeout3, align 8
  %mul = mul i32 %3, 10
  %4 = tail call i32 @llvm.umin.i32(i32 %mul, i32 10000000)
  %.sink = select i1 %tobool.not, i32 %4, i32 %3
  %conv = zext i32 %.sink to i64
  %mul.i = mul nuw nsw i64 %conv, 1000
  %add.i = add i64 %mul.i, %call2
  %fw_poll_interval_usec = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 70
  %5 = ptrtoint ptr %fw_poll_interval_usec to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %fw_poll_interval_usec, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool7.not = icmp eq i64 %6, 0
  br i1 %tobool7.not, label %entry.do.end15_crit_edge, label %do.body9

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

do.body9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 2206) #8
  br label %do.end15

do.end15:                                         ; preds = %do.body9, %entry.do.end15_crit_edge
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %cpu_boot_status = getelementptr inbounds %struct.dynamic_fw_load_mgr, ptr %fw_loader, i32 0, i32 1, i32 1, i32 16
  %7 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %asic_funcs, align 8
  %rreg94 = getelementptr inbounds %struct.hl_asic_funcs, ptr %8, i32 0, i32 57
  %9 = ptrtoint ptr %rreg94 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rreg94, align 4
  %11 = ptrtoint ptr %cpu_boot_status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu_boot_status, align 8
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %call1695 = tail call i32 %10(ptr noundef %hdev, i32 noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call1695)
  %cmp1796 = icmp eq i32 %call1695, 3
  br i1 %cmp1796, label %do.end15.do.body53_crit_edge, label %if.end20.lr.ph

do.end15.do.body53_crit_edge:                     ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body53

if.end20.lr.ph:                                   ; preds = %do.end15
  %cpu_timeout21 = getelementptr inbounds %struct.fw_load_mgr, ptr %fw_loader, i32 0, i32 3
  br label %if.end20

if.end20:                                         ; preds = %if.end42.if.end20_crit_edge, %if.end20.lr.ph
  %14 = ptrtoint ptr %cpu_timeout21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu_timeout21, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool22.not = icmp eq i32 %15, 0
  br i1 %tobool22.not, label %if.end20.if.end34_crit_edge, label %land.lhs.true

if.end20.if.end34_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

land.lhs.true:                                    ; preds = %if.end20
  %call23 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call23, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call23, %add.i
  br i1 %cmp3.i, label %for.end, label %land.lhs.true.if.end34_crit_edge

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.end34:                                         ; preds = %land.lhs.true.if.end34_crit_edge, %if.end20.if.end34_crit_edge
  %16 = ptrtoint ptr %fw_poll_interval_usec to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %fw_poll_interval_usec, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool36.not = icmp eq i64 %17, 0
  br i1 %tobool36.not, label %if.end34.if.end42_crit_edge, label %if.then37

if.end34.if.end42_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %shr = lshr i64 %17, 2
  %18 = trunc i64 %shr to i32
  %conv39 = add i32 %18, 1
  %conv41 = trunc i64 %17 to i32
  tail call void @usleep_range_state(i32 noundef %conv39, i32 noundef %conv41, i32 noundef 2) #8
  br label %if.end42

if.end42:                                         ; preds = %if.then37, %if.end34.if.end42_crit_edge
  %19 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %asic_funcs, align 8
  %rreg = getelementptr inbounds %struct.hl_asic_funcs, ptr %20, i32 0, i32 57
  %21 = ptrtoint ptr %rreg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rreg, align 4
  %23 = ptrtoint ptr %cpu_boot_status to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu_boot_status, align 8
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %call16 = tail call i32 %22(ptr noundef %hdev, i32 noundef %25) #8
  %cmp17 = icmp eq i32 %call16, 3
  br i1 %cmp17, label %if.end42.do.body53_crit_edge, label %if.end42.if.end20_crit_edge

if.end42.if.end20_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end42.do.body53_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body53

for.end:                                          ; preds = %land.lhs.true
  %26 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %asic_funcs, align 8
  %rreg29 = getelementptr inbounds %struct.hl_asic_funcs, ptr %27, i32 0, i32 57
  %28 = ptrtoint ptr %rreg29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rreg29, align 4
  %30 = ptrtoint ptr %cpu_boot_status to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu_boot_status, align 8
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %call33 = tail call i32 %29(ptr noundef %hdev, i32 noundef %32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call33)
  %cmp44 = icmp eq i32 %call33, 3
  br i1 %cmp44, label %for.end.do.body53_crit_edge, label %do.end51

for.end.do.body53_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body53

do.end51:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.276) #11
  br label %cleanup

do.body53:                                        ; preds = %for.end.do.body53_crit_edge, %if.end42.do.body53_crit_edge, %do.end15.do.body53_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_fw_dynamic_wait_for_linux_active.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_fw_dynamic_wait_for_linux_active, %if.then59)) #8
          to label %cleanup [label %if.then59], !srcloc !552

if.then59:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #10
  %dev60 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %35 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev60, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hl_fw_dynamic_wait_for_linux_active.__UNIQUE_ID_ddebug382, ptr noundef %36, ptr noundef nonnull @.str.278, i32 noundef 3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then59, %do.body53, %do.end51
  %retval.0 = phi i32 [ -110, %do.end51 ], [ 0, %if.then59 ], [ 0, %do.body53 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hl_fw_linux_update_state(ptr noundef %hdev, i32 noundef %cpu_boot_dev_sts0_reg, i32 noundef %cpu_boot_dev_sts1_reg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_comp_loaded = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 53, i32 8
  %0 = ptrtoint ptr %fw_comp_loaded to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fw_comp_loaded, align 1
  %2 = or i8 %1, 1
  store i8 %2, ptr %fw_comp_loaded, align 1
  %fw_cpu_boot_dev_sts0_valid = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 69
  %3 = ptrtoint ptr %fw_cpu_boot_dev_sts0_valid to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %fw_cpu_boot_dev_sts0_valid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end40_crit_edge, label %if.then

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then:                                          ; preds = %entry
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %5 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %asic_funcs, align 8
  %rreg = getelementptr inbounds %struct.hl_asic_funcs, ptr %6, i32 0, i32 57
  %7 = ptrtoint ptr %rreg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rreg, align 4
  %call = tail call i32 %8(ptr noundef %hdev, i32 noundef %cpu_boot_dev_sts0_reg) #8
  %fw_app_cpu_boot_dev_sts0 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 54
  %9 = ptrtoint ptr %fw_app_cpu_boot_dev_sts0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call, ptr %fw_app_cpu_boot_dev_sts0, align 8
  %and = lshr i32 %call, 10
  %10 = trunc i32 %and to i8
  %11 = and i8 %10, 1
  %hard_reset_done_by_fw = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 72
  %12 = ptrtoint ptr %hard_reset_done_by_fw to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %hard_reset_done_by_fw, align 4
  %and7 = and i32 %call, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.then.do.body_crit_edge, label %if.then9

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %gic_interrupts_enable = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 77
  %13 = ptrtoint ptr %gic_interrupts_enable to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %gic_interrupts_enable, align 1
  br label %do.body

do.body:                                          ; preds = %if.then9, %if.then.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_fw_linux_update_state.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_fw_linux_update_state, %if.then17)) #8
          to label %do.body20 [label %if.then17], !srcloc !552

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %16 = ptrtoint ptr %fw_app_cpu_boot_dev_sts0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fw_app_cpu_boot_dev_sts0, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hl_fw_linux_update_state.__UNIQUE_ID_ddebug383, ptr noundef %15, ptr noundef nonnull @.str.280, i32 noundef %17) #8
  br label %do.body20

do.body20:                                        ; preds = %if.then17, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_fw_linux_update_state.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_fw_linux_update_state, %if.then32)) #8
          to label %if.end40 [label %if.then32], !srcloc !552

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  %dev33 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %18 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev33, align 4
  %gic_interrupts_enable34 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 77
  %20 = ptrtoint ptr %gic_interrupts_enable34 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %gic_interrupts_enable34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool36.not = icmp eq i8 %21, 0
  %cond = select i1 %tobool36.not, ptr @.str.189, ptr @.str.188
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hl_fw_linux_update_state.__UNIQUE_ID_ddebug384, ptr noundef %19, ptr noundef nonnull @.str.191, ptr noundef nonnull %cond) #8
  br label %if.end40

if.end40:                                         ; preds = %if.then32, %do.body20, %entry.if.end40_crit_edge
  %fw_cpu_boot_dev_sts1_valid = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 70
  %22 = ptrtoint ptr %fw_cpu_boot_dev_sts1_valid to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %fw_cpu_boot_dev_sts1_valid, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool41.not = icmp eq i8 %23, 0
  br i1 %tobool41.not, label %if.end40.do.body65_crit_edge, label %if.then42

if.end40.do.body65_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body65

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %asic_funcs43 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %24 = ptrtoint ptr %asic_funcs43 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %asic_funcs43, align 8
  %rreg44 = getelementptr inbounds %struct.hl_asic_funcs, ptr %25, i32 0, i32 57
  %26 = ptrtoint ptr %rreg44 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rreg44, align 4
  %call45 = tail call i32 %27(ptr noundef %hdev, i32 noundef %cpu_boot_dev_sts1_reg) #8
  %fw_app_cpu_boot_dev_sts1 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 55
  %28 = ptrtoint ptr %fw_app_cpu_boot_dev_sts1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call45, ptr %fw_app_cpu_boot_dev_sts1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_fw_linux_update_state.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_fw_linux_update_state, %if.then58)) #8
          to label %do.body65 [label %if.then58], !srcloc !552

if.then58:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  %dev59 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %29 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev59, align 4
  %31 = ptrtoint ptr %fw_app_cpu_boot_dev_sts1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fw_app_cpu_boot_dev_sts1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hl_fw_linux_update_state.__UNIQUE_ID_ddebug385, ptr noundef %30, ptr noundef nonnull @.str.281, i32 noundef %32) #8
  br label %do.body65

do.body65:                                        ; preds = %if.then58, %if.then42, %if.end40.do.body65_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_fw_linux_update_state.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_fw_linux_update_state, %if.then77)) #8
          to label %do.end88 [label %if.then77], !srcloc !552

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #10
  %dev78 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %33 = ptrtoint ptr %dev78 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev78, align 4
  %hard_reset_done_by_fw79 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 72
  %35 = ptrtoint ptr %hard_reset_done_by_fw79 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %hard_reset_done_by_fw79, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool81.not = icmp eq i8 %36, 0
  %cond82 = select i1 %tobool81.not, ptr @.str.189, ptr @.str.188
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hl_fw_linux_update_state.__UNIQUE_ID_ddebug386, ptr noundef %34, ptr noundef nonnull @.str.282, ptr noundef nonnull %cond82) #8
  br label %do.end88

do.end88:                                         ; preds = %if.then77, %do.body65
  %dev89 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %37 = ptrtoint ptr %dev89 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev89, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.283) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_get_pci_memory_region(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hl_fw_boot_fit_update_state(ptr noundef %hdev, i32 noundef %cpu_boot_dev_sts0_reg, i32 noundef %cpu_boot_dev_sts1_reg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_comp_loaded = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 53, i32 8
  %0 = ptrtoint ptr %fw_comp_loaded to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fw_comp_loaded, align 1
  %2 = or i8 %1, 2
  store i8 %2, ptr %fw_comp_loaded, align 1
  %fw_preboot_cpu_boot_dev_sts0 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 50
  %3 = ptrtoint ptr %fw_preboot_cpu_boot_dev_sts0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fw_preboot_cpu_boot_dev_sts0, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %tobool.not = icmp sgt i32 %4, -1
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %if.then

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %5 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %asic_funcs, align 8
  %rreg = getelementptr inbounds %struct.hl_asic_funcs, ptr %6, i32 0, i32 57
  %7 = ptrtoint ptr %rreg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rreg, align 4
  %call = tail call i32 %8(ptr noundef %hdev, i32 noundef %cpu_boot_dev_sts0_reg) #8
  %fw_bootfit_cpu_boot_dev_sts0 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 52
  %9 = ptrtoint ptr %fw_bootfit_cpu_boot_dev_sts0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call, ptr %fw_bootfit_cpu_boot_dev_sts0, align 8
  %and3 = lshr i32 %call, 10
  %10 = trunc i32 %and3 to i8
  %11 = and i8 %10, 1
  %hard_reset_done_by_fw = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 72
  %12 = ptrtoint ptr %hard_reset_done_by_fw to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %hard_reset_done_by_fw, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_fw_boot_fit_update_state.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_fw_boot_fit_update_state, %if.then14)) #8
          to label %if.end16 [label %if.then14], !srcloc !552

if.then14:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %15 = ptrtoint ptr %fw_bootfit_cpu_boot_dev_sts0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fw_bootfit_cpu_boot_dev_sts0, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hl_fw_boot_fit_update_state.__UNIQUE_ID_ddebug374, ptr noundef %14, ptr noundef nonnull @.str.270, i32 noundef %16) #8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.then, %entry.if.end16_crit_edge
  %fw_cpu_boot_dev_sts1_valid = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 70
  %17 = ptrtoint ptr %fw_cpu_boot_dev_sts1_valid to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %fw_cpu_boot_dev_sts1_valid, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool17.not = icmp eq i8 %18, 0
  br i1 %tobool17.not, label %if.end16.do.body41_crit_edge, label %if.then18

if.end16.do.body41_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body41

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %asic_funcs19 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %19 = ptrtoint ptr %asic_funcs19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %asic_funcs19, align 8
  %rreg20 = getelementptr inbounds %struct.hl_asic_funcs, ptr %20, i32 0, i32 57
  %21 = ptrtoint ptr %rreg20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rreg20, align 4
  %call21 = tail call i32 %22(ptr noundef %hdev, i32 noundef %cpu_boot_dev_sts1_reg) #8
  %fw_bootfit_cpu_boot_dev_sts1 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 53
  %23 = ptrtoint ptr %fw_bootfit_cpu_boot_dev_sts1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call21, ptr %fw_bootfit_cpu_boot_dev_sts1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_fw_boot_fit_update_state.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_fw_boot_fit_update_state, %if.then34)) #8
          to label %do.body41 [label %if.then34], !srcloc !552

if.then34:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  %dev35 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %24 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev35, align 4
  %26 = ptrtoint ptr %fw_bootfit_cpu_boot_dev_sts1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fw_bootfit_cpu_boot_dev_sts1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hl_fw_boot_fit_update_state.__UNIQUE_ID_ddebug375, ptr noundef %25, ptr noundef nonnull @.str.271, i32 noundef %27) #8
  br label %do.body41

do.body41:                                        ; preds = %if.then34, %if.then18, %if.end16.do.body41_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_fw_boot_fit_update_state.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_fw_boot_fit_update_state, %if.then53)) #8
          to label %do.end60 [label %if.then53], !srcloc !552

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #10
  %dev54 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %28 = ptrtoint ptr %dev54 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev54, align 4
  %hard_reset_done_by_fw55 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 72
  %30 = ptrtoint ptr %hard_reset_done_by_fw55 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %hard_reset_done_by_fw55, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool57.not = icmp eq i8 %31, 0
  %cond = select i1 %tobool57.not, ptr @.str.189, ptr @.str.188
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hl_fw_boot_fit_update_state.__UNIQUE_ID_ddebug376, ptr noundef %29, ptr noundef nonnull @.str.272, ptr noundef nonnull %cond) #8
  br label %do.end60

do.end60:                                         ; preds = %if.then53, %do.body41
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 280)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 280)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !86, !87, !89, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !122, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !162, !164, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !216, !217, !219, !220, !221, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !241, !243, !245, !247, !248, !249, !250, !252, !253, !254, !256, !257, !258, !259, !261, !262, !263, !264, !266, !267, !268, !269, !271, !272, !273, !275, !276, !277, !279, !280, !281, !283, !284, !285, !287, !288, !289, !291, !292, !293, !295, !296, !297, !299, !300, !301, !303, !304, !305, !307, !308, !309, !311, !312, !313, !315, !316, !318, !319, !320, !321, !323, !324, !326, !327, !329, !331, !333, !334, !335, !336, !338, !339, !340, !342, !344, !345, !346, !348, !349, !350, !352, !353, !354, !356, !357, !358, !359, !361, !362, !363, !365, !367, !369, !371, !373, !375, !377, !379, !380, !381, !382, !384, !385, !386, !387, !389, !390, !391, !393, !394, !395, !397, !398, !400, !401, !402, !404, !405, !406, !407, !409, !410, !411, !413, !414, !415, !416, !418, !419, !420, !421, !423, !424, !425, !427, !428, !429, !430, !432, !433, !434, !436, !437, !438, !440, !441, !442, !444, !445, !446, !448, !449, !450, !452, !453, !454, !456, !457, !459, !460, !462, !463, !465, !466, !467, !469, !470, !472, !473, !475, !476, !477, !478, !480, !481, !483, !484, !485, !486, !488, !489, !491, !492, !493, !495, !497, !498, !500, !501, !503, !504, !505, !507, !508, !509, !510, !512, !513, !514, !515, !517, !518, !520, !521, !522, !524, !526, !527, !529, !530, !532, !533, !534, !536, !537, !538, !540, !541}
!llvm.module.flags = !{!542, !543, !544, !545, !546, !547, !548, !549}
!llvm.ident = !{!550}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 222, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @hl_fw_send_cpu_message._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @hl_fw_send_cpu_message._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 265, i32 3}
!10 = !{ptr @hl_fw_send_cpu_message._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @hl_fw_send_cpu_message._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 274, i32 3}
!14 = !{ptr @hl_fw_send_cpu_message._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @hl_fw_send_cpu_message._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 315, i32 3}
!18 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @hl_fw_unmask_irq._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @hl_fw_unmask_irq._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 336, i32 3}
!23 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @hl_fw_unmask_irq_arr._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @hl_fw_unmask_irq_arr._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 354, i32 3}
!28 = !{ptr @hl_fw_unmask_irq_arr._entry.15, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @hl_fw_unmask_irq_arr._entry_ptr.17, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 376, i32 4}
!32 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @hl_fw_test_cpu_queue._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @hl_fw_test_cpu_queue._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 379, i32 3}
!37 = !{ptr @hl_fw_test_cpu_queue._entry.20, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @hl_fw_test_cpu_queue._entry_ptr.22, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 424, i32 3}
!41 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @hl_fw_send_heartbeat._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @hl_fw_send_heartbeat._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 640, i32 3}
!47 = !{ptr @.str.27, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @hl_fw_cpucp_info_get._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @hl_fw_cpucp_info_get._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 655, i32 3}
!52 = !{ptr @hl_fw_cpucp_info_get._entry.28, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @hl_fw_cpucp_info_get._entry_ptr.30, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.32, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 663, i32 3}
!56 = !{ptr @hl_fw_cpucp_info_get._entry.31, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @hl_fw_cpucp_info_get._entry_ptr.33, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.35, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 672, i32 3}
!60 = !{ptr @hl_fw_cpucp_info_get._entry.34, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @hl_fw_cpucp_info_get._entry_ptr.36, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.38, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 680, i32 3}
!64 = !{ptr @.str.39, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @hl_fw_cpucp_info_get._entry.37, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @hl_fw_cpucp_info_get._entry_ptr.40, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.41, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 787, i32 3}
!69 = !{ptr @.str.42, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @hl_fw_get_eeprom_data._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @hl_fw_get_eeprom_data._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.44, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 803, i32 3}
!74 = !{ptr @hl_fw_get_eeprom_data._entry.43, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @hl_fw_get_eeprom_data._entry_ptr.45, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.46, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 834, i32 3}
!78 = !{ptr @.str.47, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @hl_fw_cpucp_pci_counters_get._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @hl_fw_cpucp_pci_counters_get._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @hl_fw_cpucp_pci_counters_get._entry.48, !82, !"_entry", i1 false, i1 false}
!82 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 849, i32 3}
!83 = !{ptr @hl_fw_cpucp_pci_counters_get._entry_ptr.49, !82, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @hl_fw_cpucp_pci_counters_get._entry.50, !85, !"_entry", i1 false, i1 false}
!85 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 863, i32 3}
!86 = !{ptr @hl_fw_cpucp_pci_counters_get._entry_ptr.51, !85, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.52, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 884, i32 3}
!89 = !{ptr @.str.53, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @hl_fw_cpucp_total_energy_get._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @hl_fw_cpucp_total_energy_get._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.54, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 921, i32 3}
!94 = !{ptr @.str.55, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @get_used_pll_index._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @get_used_pll_index._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.57, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 931, i32 3}
!99 = !{ptr @get_used_pll_index._entry.56, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @get_used_pll_index._entry_ptr.58, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.59, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 962, i32 3}
!103 = !{ptr @.str.60, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @hl_fw_cpucp_pll_info_get._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @hl_fw_cpucp_pll_info_get._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.61, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 987, i32 3}
!108 = !{ptr @.str.62, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @hl_fw_cpucp_power_get._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @hl_fw_cpucp_power_get._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.63, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1010, i32 3}
!113 = !{ptr @.str.64, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @hl_fw_dram_replaced_row_get._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @hl_fw_dram_replaced_row_get._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.66, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1025, i32 3}
!118 = !{ptr @hl_fw_dram_replaced_row_get._entry.65, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @hl_fw_dram_replaced_row_get._entry_ptr.67, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.68, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1052, i32 3}
!122 = !{ptr @.str.69, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @hl_fw_dram_pending_row_get._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @hl_fw_dram_pending_row_get._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.70, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1075, i32 3}
!127 = !{ptr @.str.71, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @hl_fw_cpucp_engine_core_asid_set._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @hl_fw_cpucp_engine_core_asid_set._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.72, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1093, i32 4}
!132 = !{ptr @.str.73, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @hl_fw_ask_hard_reset_without_linux._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @hl_fw_ask_hard_reset_without_linux._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.74, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1114, i32 4}
!137 = !{ptr @.str.75, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @hl_fw_ask_halt_machine_without_linux._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @hl_fw_ask_halt_machine_without_linux._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.76, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 56, i32 3}
!142 = !{ptr @.str.77, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @hl_request_fw._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @hl_request_fw._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.79, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 63, i32 3}
!147 = !{ptr @hl_request_fw._entry.78, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @hl_request_fw._entry_ptr.80, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.81, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 69, i32 2}
!151 = !{ptr @.str.82, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @hl_request_fw.__UNIQUE_ID_ddebug297, !150, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!153 = !{ptr @.str.84, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 72, i32 3}
!155 = !{ptr @hl_request_fw._entry.83, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @hl_request_fw._entry_ptr.85, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.86, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 122, i32 3}
!159 = !{ptr @.str.87, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @hl_fw_copy_fw_to_device._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @hl_fw_copy_fw_to_device._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.88, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 440, i32 3}
!164 = !{ptr @.str.89, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @fw_report_boot_dev0._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @fw_report_boot_dev0._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.91, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 446, i32 3}
!169 = !{ptr @fw_report_boot_dev0._entry.90, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @fw_report_boot_dev0._entry_ptr.92, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.94, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 451, i32 3}
!173 = !{ptr @fw_report_boot_dev0._entry.93, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @fw_report_boot_dev0._entry_ptr.95, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.97, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 458, i32 4}
!177 = !{ptr @fw_report_boot_dev0._entry.96, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @fw_report_boot_dev0._entry_ptr.98, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.100, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 462, i32 4}
!181 = !{ptr @fw_report_boot_dev0._entry.99, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @fw_report_boot_dev0._entry_ptr.101, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.103, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 472, i32 3}
!185 = !{ptr @fw_report_boot_dev0._entry.102, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @fw_report_boot_dev0._entry_ptr.104, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.106, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 478, i32 3}
!189 = !{ptr @fw_report_boot_dev0._entry.105, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @fw_report_boot_dev0._entry_ptr.107, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.109, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 484, i32 3}
!193 = !{ptr @fw_report_boot_dev0._entry.108, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @fw_report_boot_dev0._entry_ptr.110, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.112, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 490, i32 3}
!197 = !{ptr @fw_report_boot_dev0._entry.111, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @fw_report_boot_dev0._entry_ptr.113, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.115, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 495, i32 3}
!201 = !{ptr @fw_report_boot_dev0._entry.114, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @fw_report_boot_dev0._entry_ptr.116, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.118, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 500, i32 3}
!205 = !{ptr @fw_report_boot_dev0._entry.117, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @fw_report_boot_dev0._entry_ptr.119, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.121, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 505, i32 3}
!209 = !{ptr @fw_report_boot_dev0._entry.120, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @fw_report_boot_dev0._entry_ptr.122, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.123, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 511, i32 3}
!213 = !{ptr @fw_report_boot_dev0.__UNIQUE_ID_ddebug300, !212, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!214 = !{ptr @.str.124, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 516, i32 3}
!216 = !{ptr @fw_report_boot_dev0.__UNIQUE_ID_ddebug301, !215, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!217 = !{ptr @.str.126, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 520, i32 3}
!219 = !{ptr @fw_report_boot_dev0._entry.125, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @fw_report_boot_dev0._entry_ptr.127, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.129, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 529, i32 3}
!223 = !{ptr @fw_report_boot_dev0._entry.128, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @fw_report_boot_dev0._entry_ptr.130, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.132, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 538, i32 3}
!227 = !{ptr @fw_report_boot_dev0._entry.131, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @fw_report_boot_dev0._entry_ptr.133, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.135, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 547, i32 3}
!231 = !{ptr @fw_report_boot_dev0._entry.134, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @fw_report_boot_dev0._entry_ptr.136, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.137, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 575, i32 3}
!235 = !{ptr @.str.138, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @fw_report_boot_dev1.__UNIQUE_ID_ddebug302, !234, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!237 = !{ptr @.str.139, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 578, i32 3}
!239 = !{ptr @fw_report_boot_dev1._entry, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @fw_report_boot_dev1._entry_ptr, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.140, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 26, i32 24}
!243 = !{ptr @.str.141, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 34, i32 29}
!245 = !{ptr @.str.142, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 724, i32 3}
!247 = !{ptr @.str.143, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @hl_fw_send_msi_info_msg._entry, !246, !"_entry", i1 false, i1 false}
!249 = !{ptr @hl_fw_send_msi_info_msg._entry_ptr, !246, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.145, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 752, i32 3}
!252 = !{ptr @hl_fw_send_msi_info_msg._entry.144, !251, !"_entry", i1 false, i1 false}
!253 = !{ptr @hl_fw_send_msi_info_msg._entry_ptr.146, !251, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.147, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1214, i32 3}
!256 = !{ptr @.str.148, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @hl_fw_read_preboot_caps._entry, !255, !"_entry", i1 false, i1 false}
!258 = !{ptr @hl_fw_read_preboot_caps._entry_ptr, !255, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.149, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1255, i32 2}
!261 = !{ptr @hl_fw_read_preboot_caps.__UNIQUE_ID_ddebug327, !260, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!262 = !{ptr @.str.150, !260, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @.str.151, !260, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @.str.152, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1135, i32 3}
!266 = !{ptr @.str.153, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @detect_cpu_boot_status._entry, !265, !"_entry", i1 false, i1 false}
!268 = !{ptr @detect_cpu_boot_status._entry_ptr, !265, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.155, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1139, i32 3}
!271 = !{ptr @detect_cpu_boot_status._entry.154, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @detect_cpu_boot_status._entry_ptr.156, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.158, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1143, i32 3}
!275 = !{ptr @detect_cpu_boot_status._entry.157, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @detect_cpu_boot_status._entry_ptr.159, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.161, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1147, i32 3}
!279 = !{ptr @detect_cpu_boot_status._entry.160, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @detect_cpu_boot_status._entry_ptr.162, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.164, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1151, i32 3}
!283 = !{ptr @detect_cpu_boot_status._entry.163, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @detect_cpu_boot_status._entry_ptr.165, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.167, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1155, i32 3}
!287 = !{ptr @detect_cpu_boot_status._entry.166, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @detect_cpu_boot_status._entry_ptr.168, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.170, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1159, i32 3}
!291 = !{ptr @detect_cpu_boot_status._entry.169, !290, !"_entry", i1 false, i1 false}
!292 = !{ptr @detect_cpu_boot_status._entry_ptr.171, !290, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.173, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1163, i32 3}
!295 = !{ptr @detect_cpu_boot_status._entry.172, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @detect_cpu_boot_status._entry_ptr.174, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.176, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1167, i32 3}
!299 = !{ptr @detect_cpu_boot_status._entry.175, !298, !"_entry", i1 false, i1 false}
!300 = !{ptr @detect_cpu_boot_status._entry_ptr.177, !298, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.179, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1171, i32 3}
!303 = !{ptr @detect_cpu_boot_status._entry.178, !302, !"_entry", i1 false, i1 false}
!304 = !{ptr @detect_cpu_boot_status._entry_ptr.180, !302, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.182, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1175, i32 3}
!307 = !{ptr @detect_cpu_boot_status._entry.181, !306, !"_entry", i1 false, i1 false}
!308 = !{ptr @detect_cpu_boot_status._entry_ptr.183, !306, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @.str.184, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1359, i32 2}
!311 = !{ptr @.str.185, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @hl_fw_preboot_update_state.__UNIQUE_ID_ddebug330, !310, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!313 = !{ptr @.str.186, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1362, i32 2}
!315 = !{ptr @hl_fw_preboot_update_state.__UNIQUE_ID_ddebug331, !314, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!316 = !{ptr @.str.187, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1365, i32 2}
!318 = !{ptr @hl_fw_preboot_update_state.__UNIQUE_ID_ddebug332, !317, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!319 = !{ptr @.str.188, !317, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @.str.189, !317, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @.str.190, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1368, i32 2}
!323 = !{ptr @hl_fw_preboot_update_state.__UNIQUE_ID_ddebug333, !322, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!324 = !{ptr @.str.191, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1371, i32 2}
!326 = !{ptr @hl_fw_preboot_update_state.__UNIQUE_ID_ddebug334, !325, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!327 = !{ptr @.str.192, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1277, i32 10}
!329 = !{ptr @.str.193, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1283, i32 10}
!331 = !{ptr @.str.194, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1287, i32 3}
!333 = !{ptr @.str.195, !332, !"<string literal>", i1 false, i1 false}
!334 = !{ptr @hl_fw_static_read_device_fw_version._entry, !332, !"_entry", i1 false, i1 false}
!335 = !{ptr @hl_fw_static_read_device_fw_version._entry_ptr, !332, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.197, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1298, i32 3}
!338 = !{ptr @hl_fw_static_read_device_fw_version._entry.196, !337, !"_entry", i1 false, i1 false}
!339 = !{ptr @hl_fw_static_read_device_fw_version._entry_ptr.198, !337, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.199, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1300, i32 17}
!342 = !{ptr @.str.201, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1307, i32 4}
!344 = !{ptr @hl_fw_static_read_device_fw_version._entry.200, !343, !"_entry", i1 false, i1 false}
!345 = !{ptr @hl_fw_static_read_device_fw_version._entry_ptr.202, !343, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.204, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1317, i32 4}
!348 = !{ptr @hl_fw_static_read_device_fw_version._entry.203, !347, !"_entry", i1 false, i1 false}
!349 = !{ptr @hl_fw_static_read_device_fw_version._entry_ptr.205, !347, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.207, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1322, i32 4}
!352 = !{ptr @hl_fw_static_read_device_fw_version._entry.206, !351, !"_entry", i1 false, i1 false}
!353 = !{ptr @hl_fw_static_read_device_fw_version._entry_ptr.208, !351, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.209, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1441, i32 3}
!356 = !{ptr @.str.210, !355, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @hl_fw_dynamic_report_error_status._entry, !355, !"_entry", i1 false, i1 false}
!358 = !{ptr @hl_fw_dynamic_report_error_status._entry_ptr, !355, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @.str.212, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1445, i32 3}
!361 = !{ptr @hl_fw_dynamic_report_error_status._entry.211, !360, !"_entry", i1 false, i1 false}
!362 = !{ptr @hl_fw_dynamic_report_error_status._entry_ptr.213, !360, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @.str.214, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1418, i32 21}
!365 = !{ptr @.str.215, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1419, i32 20}
!367 = !{ptr @.str.216, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1420, i32 19}
!369 = !{ptr @.str.217, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1421, i32 20}
!371 = !{ptr @.str.218, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1422, i32 26}
!373 = !{ptr @.str.219, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1423, i32 28}
!375 = !{ptr @hl_dynamic_fw_status_str, !376, !"hl_dynamic_fw_status_str", i1 false, i1 false}
!376 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1417, i32 14}
!377 = !{ptr @.str.220, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1501, i32 3}
!379 = !{ptr @.str.221, !378, !"<string literal>", i1 false, i1 false}
!380 = !{ptr @hl_fw_dynamic_extract_fw_response._entry, !378, !"_entry", i1 false, i1 false}
!381 = !{ptr @hl_fw_dynamic_extract_fw_response._entry_ptr, !378, !"_entry_ptr", i1 false, i1 false}
!382 = !{ptr @.str.222, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 2356, i32 2}
!384 = !{ptr @.str.223, !383, !"<string literal>", i1 false, i1 false}
!385 = !{ptr @hl_fw_dynamic_init_cpu._entry, !383, !"_entry", i1 false, i1 false}
!386 = !{ptr @hl_fw_dynamic_init_cpu._entry_ptr, !383, !"_entry_ptr", i1 false, i1 false}
!387 = !{ptr @.str.225, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 2399, i32 3}
!389 = !{ptr @hl_fw_dynamic_init_cpu._entry.224, !388, !"_entry", i1 false, i1 false}
!390 = !{ptr @hl_fw_dynamic_init_cpu._entry_ptr.226, !388, !"_entry_ptr", i1 false, i1 false}
!391 = !{ptr @.str.228, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 2422, i32 3}
!393 = !{ptr @hl_fw_dynamic_init_cpu._entry.227, !392, !"_entry", i1 false, i1 false}
!394 = !{ptr @hl_fw_dynamic_init_cpu._entry_ptr.229, !392, !"_entry_ptr", i1 false, i1 false}
!395 = !{ptr @hl_fw_dynamic_init_cpu._entry.230, !396, !"_entry", i1 false, i1 false}
!396 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 2432, i32 4}
!397 = !{ptr @hl_fw_dynamic_init_cpu._entry_ptr.231, !396, !"_entry_ptr", i1 false, i1 false}
!398 = !{ptr @.str.233, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 2441, i32 3}
!400 = !{ptr @hl_fw_dynamic_init_cpu._entry.232, !399, !"_entry", i1 false, i1 false}
!401 = !{ptr @hl_fw_dynamic_init_cpu._entry_ptr.234, !399, !"_entry_ptr", i1 false, i1 false}
!402 = !{ptr @.str.235, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 2301, i32 3}
!404 = !{ptr @.str.236, !403, !"<string literal>", i1 false, i1 false}
!405 = !{ptr @hl_fw_dynamic_send_msg._entry, !403, !"_entry", i1 false, i1 false}
!406 = !{ptr @hl_fw_dynamic_send_msg._entry_ptr, !403, !"_entry_ptr", i1 false, i1 false}
!407 = !{ptr @.str.237, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 156, i32 3}
!409 = !{ptr @hl_fw_copy_msg_to_device._entry, !408, !"_entry", i1 false, i1 false}
!410 = !{ptr @hl_fw_copy_msg_to_device._entry_ptr, !408, !"_entry_ptr", i1 false, i1 false}
!411 = !{ptr @.str.238, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1859, i32 3}
!413 = !{ptr @.str.239, !412, !"<string literal>", i1 false, i1 false}
!414 = !{ptr @hl_fw_dynamic_read_and_validate_descriptor._entry, !412, !"_entry", i1 false, i1 false}
!415 = !{ptr @hl_fw_dynamic_read_and_validate_descriptor._entry_ptr, !412, !"_entry_ptr", i1 false, i1 false}
!416 = !{ptr @.str.240, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1698, i32 3}
!418 = !{ptr @.str.241, !417, !"<string literal>", i1 false, i1 false}
!419 = !{ptr @hl_fw_dynamic_validate_memory_bound._entry, !417, !"_entry", i1 false, i1 false}
!420 = !{ptr @hl_fw_dynamic_validate_memory_bound._entry_ptr, !417, !"_entry_ptr", i1 false, i1 false}
!421 = !{ptr @.str.243, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1711, i32 3}
!423 = !{ptr @hl_fw_dynamic_validate_memory_bound._entry.242, !422, !"_entry", i1 false, i1 false}
!424 = !{ptr @hl_fw_dynamic_validate_memory_bound._entry_ptr.244, !422, !"_entry_ptr", i1 false, i1 false}
!425 = !{ptr @.str.245, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1741, i32 3}
!427 = !{ptr @.str.246, !426, !"<string literal>", i1 false, i1 false}
!428 = !{ptr @hl_fw_dynamic_validate_descriptor._entry, !426, !"_entry", i1 false, i1 false}
!429 = !{ptr @hl_fw_dynamic_validate_descriptor._entry_ptr, !426, !"_entry_ptr", i1 false, i1 false}
!430 = !{ptr @.str.248, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1747, i32 3}
!432 = !{ptr @hl_fw_dynamic_validate_descriptor._entry.247, !431, !"_entry", i1 false, i1 false}
!433 = !{ptr @hl_fw_dynamic_validate_descriptor._entry_ptr.249, !431, !"_entry_ptr", i1 false, i1 false}
!434 = !{ptr @.str.251, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1762, i32 3}
!436 = !{ptr @hl_fw_dynamic_validate_descriptor._entry.250, !435, !"_entry", i1 false, i1 false}
!437 = !{ptr @hl_fw_dynamic_validate_descriptor._entry_ptr.252, !435, !"_entry_ptr", i1 false, i1 false}
!438 = !{ptr @.str.254, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1771, i32 3}
!440 = !{ptr @hl_fw_dynamic_validate_descriptor._entry.253, !439, !"_entry", i1 false, i1 false}
!441 = !{ptr @hl_fw_dynamic_validate_descriptor._entry_ptr.255, !439, !"_entry_ptr", i1 false, i1 false}
!442 = !{ptr @.str.257, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1782, i32 3}
!444 = !{ptr @hl_fw_dynamic_validate_descriptor._entry.256, !443, !"_entry", i1 false, i1 false}
!445 = !{ptr @hl_fw_dynamic_validate_descriptor._entry_ptr.258, !443, !"_entry_ptr", i1 false, i1 false}
!446 = !{ptr @.str.260, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1800, i32 3}
!448 = !{ptr @hl_fw_dynamic_validate_descriptor._entry.259, !447, !"_entry", i1 false, i1 false}
!449 = !{ptr @hl_fw_dynamic_validate_descriptor._entry_ptr.261, !447, !"_entry_ptr", i1 false, i1 false}
!450 = !{ptr @.str.262, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1922, i32 4}
!452 = !{ptr @hl_fw_dynamic_read_device_fw_version._entry, !451, !"_entry", i1 false, i1 false}
!453 = !{ptr @hl_fw_dynamic_read_device_fw_version._entry_ptr, !451, !"_entry_ptr", i1 false, i1 false}
!454 = !{ptr @hl_fw_dynamic_read_device_fw_version._entry.263, !455, !"_entry", i1 false, i1 false}
!455 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1935, i32 4}
!456 = !{ptr @hl_fw_dynamic_read_device_fw_version._entry_ptr.264, !455, !"_entry_ptr", i1 false, i1 false}
!457 = !{ptr @hl_fw_dynamic_read_device_fw_version._entry.265, !458, !"_entry", i1 false, i1 false}
!458 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1940, i32 4}
!459 = !{ptr @hl_fw_dynamic_read_device_fw_version._entry_ptr.266, !458, !"_entry_ptr", i1 false, i1 false}
!460 = !{ptr @hl_fw_dynamic_read_device_fw_version._entry.267, !461, !"_entry", i1 false, i1 false}
!461 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 1947, i32 3}
!462 = !{ptr @hl_fw_dynamic_read_device_fw_version._entry_ptr.268, !461, !"_entry_ptr", i1 false, i1 false}
!463 = !{ptr @.str.269, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 2041, i32 3}
!465 = !{ptr @.str.270, !464, !"<string literal>", i1 false, i1 false}
!466 = !{ptr @hl_fw_boot_fit_update_state.__UNIQUE_ID_ddebug374, !464, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!467 = !{ptr @.str.271, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 2049, i32 3}
!469 = !{ptr @hl_fw_boot_fit_update_state.__UNIQUE_ID_ddebug375, !468, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!470 = !{ptr @.str.272, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 2053, i32 2}
!472 = !{ptr @hl_fw_boot_fit_update_state.__UNIQUE_ID_ddebug376, !471, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!473 = !{ptr @.str.273, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 2181, i32 3}
!475 = !{ptr @.str.274, !474, !"<string literal>", i1 false, i1 false}
!476 = !{ptr @hl_fw_dynamic_wait_for_boot_fit_active._entry, !474, !"_entry", i1 false, i1 false}
!477 = !{ptr @hl_fw_dynamic_wait_for_boot_fit_active._entry_ptr, !474, !"_entry_ptr", i1 false, i1 false}
!478 = !{ptr @.str.275, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 2185, i32 2}
!480 = !{ptr @hl_fw_dynamic_wait_for_boot_fit_active.__UNIQUE_ID_ddebug379, !479, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!481 = !{ptr @.str.276, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 2208, i32 3}
!483 = !{ptr @.str.277, !482, !"<string literal>", i1 false, i1 false}
!484 = !{ptr @hl_fw_dynamic_wait_for_linux_active._entry, !482, !"_entry", i1 false, i1 false}
!485 = !{ptr @hl_fw_dynamic_wait_for_linux_active._entry_ptr, !482, !"_entry_ptr", i1 false, i1 false}
!486 = !{ptr @.str.278, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 2212, i32 2}
!488 = !{ptr @hl_fw_dynamic_wait_for_linux_active.__UNIQUE_ID_ddebug382, !487, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!489 = !{ptr @.str.279, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 2250, i32 3}
!491 = !{ptr @.str.280, !490, !"<string literal>", i1 false, i1 false}
!492 = !{ptr @hl_fw_linux_update_state.__UNIQUE_ID_ddebug383, !490, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!493 = !{ptr @hl_fw_linux_update_state.__UNIQUE_ID_ddebug384, !494, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!494 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 2254, i32 3}
!495 = !{ptr @.str.281, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 2262, i32 3}
!497 = !{ptr @hl_fw_linux_update_state.__UNIQUE_ID_ddebug385, !496, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!498 = !{ptr @.str.282, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 2267, i32 2}
!500 = !{ptr @hl_fw_linux_update_state.__UNIQUE_ID_ddebug386, !499, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!501 = !{ptr @.str.283, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 2270, i32 2}
!503 = !{ptr @hl_fw_linux_update_state._entry, !502, !"_entry", i1 false, i1 false}
!504 = !{ptr @hl_fw_linux_update_state._entry_ptr, !502, !"_entry_ptr", i1 false, i1 false}
!505 = !{ptr @.str.284, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 2071, i32 3}
!507 = !{ptr @.str.285, !506, !"<string literal>", i1 false, i1 false}
!508 = !{ptr @hl_fw_dynamic_update_linux_interrupt_if._entry, !506, !"_entry", i1 false, i1 false}
!509 = !{ptr @hl_fw_dynamic_update_linux_interrupt_if._entry_ptr, !506, !"_entry_ptr", i1 false, i1 false}
!510 = !{ptr @.str.286, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 2496, i32 2}
!512 = !{ptr @.str.287, !511, !"<string literal>", i1 false, i1 false}
!513 = !{ptr @hl_fw_static_init_cpu._entry, !511, !"_entry", i1 false, i1 false}
!514 = !{ptr @hl_fw_static_init_cpu._entry_ptr, !511, !"_entry_ptr", i1 false, i1 false}
!515 = !{ptr @.str.288, !516, !"<string literal>", i1 false, i1 false}
!516 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 2509, i32 3}
!517 = !{ptr @hl_fw_static_init_cpu.__UNIQUE_ID_ddebug389, !516, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!518 = !{ptr @.str.290, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 2532, i32 4}
!520 = !{ptr @hl_fw_static_init_cpu._entry.289, !519, !"_entry", i1 false, i1 false}
!521 = !{ptr @hl_fw_static_init_cpu._entry_ptr.291, !519, !"_entry_ptr", i1 false, i1 false}
!522 = !{ptr @hl_fw_static_init_cpu.__UNIQUE_ID_ddebug394, !523, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!523 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 2560, i32 2}
!524 = !{ptr @hl_fw_static_init_cpu._entry.292, !525, !"_entry", i1 false, i1 false}
!525 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 2581, i32 3}
!526 = !{ptr @hl_fw_static_init_cpu._entry_ptr.293, !525, !"_entry_ptr", i1 false, i1 false}
!527 = !{ptr @hl_fw_static_init_cpu._entry.294, !528, !"_entry", i1 false, i1 false}
!528 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 2591, i32 2}
!529 = !{ptr @hl_fw_static_init_cpu._entry_ptr.295, !528, !"_entry_ptr", i1 false, i1 false}
!530 = !{ptr @.str.297, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 2610, i32 4}
!532 = !{ptr @hl_fw_static_init_cpu._entry.296, !531, !"_entry", i1 false, i1 false}
!533 = !{ptr @hl_fw_static_init_cpu._entry_ptr.298, !531, !"_entry_ptr", i1 false, i1 false}
!534 = !{ptr @.str.300, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 2634, i32 4}
!536 = !{ptr @hl_fw_static_init_cpu._entry.299, !535, !"_entry", i1 false, i1 false}
!537 = !{ptr @hl_fw_static_init_cpu._entry_ptr.301, !535, !"_entry_ptr", i1 false, i1 false}
!538 = !{ptr @.str.303, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../drivers/misc/habanalabs/common/firmware_if.c", i32 2637, i32 4}
!540 = !{ptr @hl_fw_static_init_cpu._entry.302, !539, !"_entry", i1 false, i1 false}
!541 = !{ptr @hl_fw_static_init_cpu._entry_ptr.304, !539, !"_entry_ptr", i1 false, i1 false}
!542 = !{i32 1, !"wchar_size", i32 2}
!543 = !{i32 1, !"min_enum_size", i32 4}
!544 = !{i32 8, !"branch-target-enforcement", i32 0}
!545 = !{i32 8, !"sign-return-address", i32 0}
!546 = !{i32 8, !"sign-return-address-all", i32 0}
!547 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!548 = !{i32 7, !"uwtable", i32 1}
!549 = !{i32 7, !"frame-pointer", i32 2}
!550 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!551 = !{!"auto-init"}
!552 = !{i64 2149050413, i64 2149050418, i64 2149050431, i64 2149050475, i64 2149050509, i64 2149050530}
!553 = !{i64 2155901709}
!554 = !{i8 0, i8 2}

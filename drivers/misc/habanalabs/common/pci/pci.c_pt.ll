; ModuleID = '/llk/IR_all_yes/drivers/misc/habanalabs/common/pci/pci.c_pt.bc'
source_filename = "../drivers/misc/habanalabs/common/pci/pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.hl_inbound_pci_region = type { i32, i64, i64, i64, i8 }
%struct.hl_outbound_pci_region = type { i64, i64 }
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
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.hl_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"habanalabs\00", [21 x i8] zeroinitializer }, align 32
@hl_pci_bars_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 38, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot obtain PCI resources\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hl_pci_bars_map\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/misc/habanalabs/common/pci/pci.c\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hl_pci_bars_map._entry_ptr = internal global ptr @hl_pci_bars_map._entry, section ".printk_index", align 4
@hl_pci_bars_map._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 49, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"pci_ioremap%s_bar failed for %s\0A\00", [63 x i8] zeroinitializer }, align 32
@hl_pci_bars_map._entry_ptr.8 = internal global ptr @hl_pci_bars_map._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"_wc\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@hl_pci_elbi_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 127, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error reading from ELBI\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hl_pci_elbi_read\00", [47 x i8] zeroinitializer }, align 32
@hl_pci_elbi_read._entry_ptr = internal global ptr @hl_pci_elbi_read._entry, section ".printk_index", align 4
@hl_pci_elbi_read._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.3, i32 132, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ELBI read didn't finish in time\0A\00", [63 x i8] zeroinitializer }, align 32
@hl_pci_elbi_read._entry_ptr.15 = internal global ptr @hl_pci_elbi_read._entry.13, section ".printk_index", align 4
@hl_pci_elbi_read._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.3, i32 136, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ELBI read has undefined bits in status\0A\00", [56 x i8] zeroinitializer }, align 32
@hl_pci_elbi_read._entry_ptr.18 = internal global ptr @hl_pci_elbi_read._entry.16, section ".printk_index", align 4
@hl_pci_set_inbound_region._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 309, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to map bar %u to 0x%08llx\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hl_pci_set_inbound_region\00", [38 x i8] zeroinitializer }, align 32
@hl_pci_set_inbound_region._entry_ptr = internal global ptr @hl_pci_set_inbound_region._entry, section ".printk_index", align 4
@hl_pci_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 406, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"can't enable PCI device\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hl_pci_init\00", [20 x i8] zeroinitializer }, align 32
@hl_pci_init._entry_ptr = internal global ptr @hl_pci_init._entry, section ".printk_index", align 4
@hl_pci_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.3, i32 414, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to initialize PCI BARs\0A\00", [33 x i8] zeroinitializer }, align 32
@hl_pci_init._entry_ptr.25 = internal global ptr @hl_pci_init._entry.23, section ".printk_index", align 4
@hl_pci_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.3, i32 420, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to initialize iATU\0A\00", [37 x i8] zeroinitializer }, align 32
@hl_pci_init._entry_ptr.28 = internal global ptr @hl_pci_init._entry.26, section ".printk_index", align 4
@hl_pci_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.3, i32 435, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to set dma mask to %d bits, error %d\0A\00", [51 x i8] zeroinitializer }, align 32
@hl_pci_init._entry_ptr.31 = internal global ptr @hl_pci_init._entry.29, section ".printk_index", align 4
@hl_pci_elbi_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 189, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ELBI write didn't finish in time\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hl_pci_elbi_write\00", [46 x i8] zeroinitializer }, align 32
@hl_pci_elbi_write._entry_ptr = internal global ptr @hl_pci_elbi_write._entry, section ".printk_index", align 4
@hl_pci_elbi_write._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.3, i32 193, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ELBI write has undefined bits in status\0A\00", [55 x i8] zeroinitializer }, align 32
@hl_pci_elbi_write._entry_ptr.36 = internal global ptr @hl_pci_elbi_write._entry.34, section ".printk_index", align 4
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 36, i32 33 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 38, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 48, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 127, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 132, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 136, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 308, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 406, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 414, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 420, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 433, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 189, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.140 = private constant [44 x i8] c"../drivers/misc/habanalabs/common/pci/pci.c\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 193, i32 2 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @hl_pci_bars_map._entry, ptr @hl_pci_bars_map._entry.6, ptr @hl_pci_bars_map._entry_ptr, ptr @hl_pci_bars_map._entry_ptr.8, ptr @hl_pci_elbi_read._entry, ptr @hl_pci_elbi_read._entry.13, ptr @hl_pci_elbi_read._entry.16, ptr @hl_pci_elbi_read._entry_ptr, ptr @hl_pci_elbi_read._entry_ptr.15, ptr @hl_pci_elbi_read._entry_ptr.18, ptr @hl_pci_elbi_write._entry, ptr @hl_pci_elbi_write._entry.34, ptr @hl_pci_elbi_write._entry_ptr, ptr @hl_pci_elbi_write._entry_ptr.36, ptr @hl_pci_init._entry, ptr @hl_pci_init._entry.23, ptr @hl_pci_init._entry.26, ptr @hl_pci_init._entry.29, ptr @hl_pci_init._entry_ptr, ptr @hl_pci_init._entry_ptr.25, ptr @hl_pci_init._entry_ptr.28, ptr @hl_pci_init._entry_ptr.31, ptr @hl_pci_set_inbound_region._entry, ptr @hl_pci_set_inbound_region._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_pci_bars_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_pci_bars_map._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_pci_elbi_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_pci_elbi_read._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_pci_elbi_read._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_pci_set_inbound_region._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_pci_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_pci_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_pci_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_pci_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_pci_elbi_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_pci_elbi_write._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_pci_bars_map(ptr nocapture noundef %hdev, ptr nocapture noundef readonly %name, ptr nocapture noundef readonly %is_wc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 8
  %call = tail call i32 @pci_request_regions(ptr noundef %1, ptr noundef nonnull @.str) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.preheader, label %do.end

for.body.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %is_wc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_wc, align 1, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %cond.false, label %cond.true

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1) #8
  br label %cleanup

cond.true:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call ptr @pci_ioremap_wc_bar(ptr noundef %1, i32 noundef 0) #5
  br label %cond.end

cond.false:                                       ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call ptr @pci_ioremap_bar(ptr noundef %1, i32 noundef 0) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call3, %cond.true ], [ %call4, %cond.false ]
  %arrayidx5 = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 2, i32 0
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cond, ptr %arrayidx5, align 4
  %tobool8.not = icmp eq ptr %cond, null
  br i1 %tobool8.not, label %cond.end.do.end12_crit_edge, label %for.inc

cond.end.do.end12_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end12

do.end12:                                         ; preds = %cond.end.2.do.end12_crit_edge, %cond.end.1.do.end12_crit_edge, %cond.end.do.end12_crit_edge
  %i.061.lcssa = phi i32 [ 0, %cond.end.do.end12_crit_edge ], [ 1, %cond.end.1.do.end12_crit_edge ], [ 2, %cond.end.2.do.end12_crit_edge ]
  %arrayidx.le = getelementptr i8, ptr %is_wc, i32 %i.061.lcssa
  %dev13 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %7 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev13, align 4
  %9 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.le, align 1, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool15.not = icmp eq i8 %10, 0
  %cond16 = select i1 %tobool15.not, ptr @.str.10, ptr @.str.9
  %arrayidx17 = getelementptr ptr, ptr %name, i32 %i.061.lcssa
  %11 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.7, ptr noundef nonnull %cond16, ptr noundef %12) #8
  %arrayidx24 = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 2, i32 4
  %13 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx24, align 4
  %tobool25.not = icmp eq ptr %14, null
  br i1 %tobool25.not, label %do.end12.for.inc30_crit_edge, label %if.then26

do.end12.for.inc30_crit_edge:                     ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc30

for.inc:                                          ; preds = %cond.end
  %arrayidx.1 = getelementptr i8, ptr %is_wc, i32 1
  %15 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.1, align 1, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool2.not.1 = icmp eq i8 %16, 0
  br i1 %tobool2.not.1, label %cond.false.1, label %cond.true.1

cond.true.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %call3.1 = tail call ptr @pci_ioremap_wc_bar(ptr noundef %1, i32 noundef 2) #5
  br label %cond.end.1

cond.false.1:                                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %call4.1 = tail call ptr @pci_ioremap_bar(ptr noundef %1, i32 noundef 2) #5
  br label %cond.end.1

cond.end.1:                                       ; preds = %cond.false.1, %cond.true.1
  %cond.1 = phi ptr [ %call3.1, %cond.true.1 ], [ %call4.1, %cond.false.1 ]
  %arrayidx5.1 = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %cond.1, ptr %arrayidx5.1, align 4
  %tobool8.not.1 = icmp eq ptr %cond.1, null
  br i1 %tobool8.not.1, label %cond.end.1.do.end12_crit_edge, label %for.inc.1

cond.end.1.do.end12_crit_edge:                    ; preds = %cond.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end12

for.inc.1:                                        ; preds = %cond.end.1
  %arrayidx.2 = getelementptr i8, ptr %is_wc, i32 2
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.2, align 1, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool2.not.2 = icmp eq i8 %19, 0
  br i1 %tobool2.not.2, label %cond.false.2, label %cond.true.2

cond.true.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  %call3.2 = tail call ptr @pci_ioremap_wc_bar(ptr noundef %1, i32 noundef 4) #5
  br label %cond.end.2

cond.false.2:                                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  %call4.2 = tail call ptr @pci_ioremap_bar(ptr noundef %1, i32 noundef 4) #5
  br label %cond.end.2

cond.end.2:                                       ; preds = %cond.false.2, %cond.true.2
  %cond.2 = phi ptr [ %call3.2, %cond.true.2 ], [ %call4.2, %cond.false.2 ]
  %arrayidx5.2 = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 2, i32 4
  %20 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %cond.2, ptr %arrayidx5.2, align 4
  %tobool8.not.2 = icmp eq ptr %cond.2, null
  br i1 %tobool8.not.2, label %cond.end.2.do.end12_crit_edge, label %cond.end.2.cleanup_crit_edge

cond.end.2.cleanup_crit_edge:                     ; preds = %cond.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cond.end.2.do.end12_crit_edge:                    ; preds = %cond.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end12

if.then26:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @iounmap(ptr noundef nonnull %14) #5
  br label %for.inc30

for.inc30:                                        ; preds = %if.then26, %do.end12.for.inc30_crit_edge
  %arrayidx24.1 = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx24.1, align 4
  %tobool25.not.1 = icmp eq ptr %22, null
  br i1 %tobool25.not.1, label %for.inc30.for.inc30.1_crit_edge, label %if.then26.1

for.inc30.for.inc30.1_crit_edge:                  ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc30.1

if.then26.1:                                      ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @iounmap(ptr noundef nonnull %22) #5
  br label %for.inc30.1

for.inc30.1:                                      ; preds = %if.then26.1, %for.inc30.for.inc30.1_crit_edge
  %23 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx5, align 4
  %tobool25.not.2 = icmp eq ptr %24, null
  br i1 %tobool25.not.2, label %for.inc30.1.for.inc30.2_crit_edge, label %if.then26.2

for.inc30.1.for.inc30.2_crit_edge:                ; preds = %for.inc30.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc30.2

if.then26.2:                                      ; preds = %for.inc30.1
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @iounmap(ptr noundef nonnull %24) #5
  br label %for.inc30.2

for.inc30.2:                                      ; preds = %if.then26.2, %for.inc30.1.for.inc30.2_crit_edge
  tail call void @pci_release_regions(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %for.inc30.2, %cond.end.2.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ -19, %for.inc30.2 ], [ 0, %cond.end.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_wc_bar(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_pci_elbi_read(ptr nocapture noundef readonly %hdev, i64 noundef %addr, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !70
  %pldm = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 111
  %3 = ptrtoint ptr %pldm to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pldm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %call = tail call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 4092, i32 noundef 0) #5
  %conv = trunc i64 %addr to i32
  %call2 = tail call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 4080, i32 noundef %conv) #5
  %call3 = tail call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 4088, i32 noundef 0) #5
  %call4 = tail call i64 @ktime_get() #5
  %mul.i = select i1 %tobool.not, i64 10000000, i64 1000000000
  %add.i = add i64 %call4, %mul.i
  %call650 = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef 4092, ptr noundef nonnull %val) #5
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %6)
  %tobool7.not51 = icmp ult i32 %6, 1073741824
  br i1 %tobool7.not51, label %entry.if.end9_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

entry.if.end9_crit_edge:                          ; preds = %entry
  br label %if.end9

if.end9:                                          ; preds = %if.end15.if.end9_crit_edge, %entry.if.end9_crit_edge
  %call10 = call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call10, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call10, %add.i
  br i1 %cmp3.i, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %call14 = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef 4092, ptr noundef nonnull %val) #5
  br label %for.end

if.end15:                                         ; preds = %if.end9
  call void @usleep_range_state(i32 noundef 300, i32 noundef 500, i32 noundef 2) #5
  %call6 = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef 4092, ptr noundef nonnull %val) #5
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %tobool7.not = icmp ult i32 %8, 1073741824
  br i1 %tobool7.not, label %if.end15.if.end9_crit_edge, label %if.end15.for.end_crit_edge

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end15.if.end9_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

for.end:                                          ; preds = %if.end15.for.end_crit_edge, %if.then13, %entry.for.end_crit_edge
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and16 = and i32 %10, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %and16)
  %cmp17 = icmp eq i32 %and16, -2147483648
  br i1 %cmp17, label %if.then19, label %if.end21

if.then19:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %call20 = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef 4084, ptr noundef %data) #5
  br label %cleanup

if.end21:                                         ; preds = %for.end
  %and22 = and i32 %10, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end25, label %do.end

do.end:                                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool27.not = icmp eq i32 %and16, 0
  %dev32 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %13 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev32, align 4
  br i1 %tobool27.not, label %do.end31, label %do.end36

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.14) #8
  br label %cleanup

do.end36:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.17) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %do.end31, %do.end, %if.then19
  %retval.0 = phi i32 [ 0, %if.then19 ], [ -5, %do.end ], [ -5, %do.end36 ], [ -5, %do.end31 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_pci_iatu_write(ptr nocapture noundef readonly %hdev, i32 noundef %addr, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %addr, 4095
  %pcie_aux_dbi_reg_addr = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 22
  %0 = ptrtoint ptr %pcie_aux_dbi_reg_addr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pcie_aux_dbi_reg_addr, align 8
  %call = tail call fastcc i32 @hl_pci_elbi_write(ptr noundef %hdev, i64 noundef %1, i32 noundef 3145728)
  %pcie_dbi_base_address = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 21
  %2 = ptrtoint ptr %pcie_dbi_base_address to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pcie_dbi_base_address, align 8
  %conv = zext i32 %and to i64
  %add = add i64 %3, %conv
  %call1 = tail call fastcc i32 @hl_pci_elbi_write(ptr noundef %hdev, i64 noundef %add, i32 noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %. = select i1 %tobool.not, i32 0, i32 -5
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hl_pci_elbi_write(ptr nocapture noundef readonly %hdev, i64 noundef %addr, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !70
  %pldm = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 111
  %3 = ptrtoint ptr %pldm to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pldm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %call = tail call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 4092, i32 noundef 0) #5
  %conv = trunc i64 %addr to i32
  %call2 = tail call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 4080, i32 noundef %conv) #5
  %call3 = tail call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 4084, i32 noundef %data) #5
  %call4 = tail call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 4088, i32 noundef -2147483648) #5
  %call5 = tail call i64 @ktime_get() #5
  %mul.i = select i1 %tobool.not, i64 10000000, i64 1000000000
  %add.i = add i64 %call5, %mul.i
  %call745 = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef 4092, ptr noundef nonnull %val) #5
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %6)
  %tobool8.not46 = icmp ult i32 %6, 1073741824
  br i1 %tobool8.not46, label %entry.if.end10_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

entry.if.end10_crit_edge:                         ; preds = %entry
  br label %if.end10

if.end10:                                         ; preds = %if.end16.if.end10_crit_edge, %entry.if.end10_crit_edge
  %call11 = call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call11, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call11, %add.i
  br i1 %cmp3.i, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %call15 = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef 4092, ptr noundef nonnull %val) #5
  br label %for.end

if.end16:                                         ; preds = %if.end10
  call void @usleep_range_state(i32 noundef 300, i32 noundef 500, i32 noundef 2) #5
  %call7 = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef 4092, ptr noundef nonnull %val) #5
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %tobool8.not = icmp ult i32 %8, 1073741824
  br i1 %tobool8.not, label %if.end16.if.end10_crit_edge, label %if.end16.for.end_crit_edge

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end16.if.end10_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

for.end:                                          ; preds = %if.end16.for.end_crit_edge, %if.then14, %entry.for.end_crit_edge
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and17 = and i32 %10, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %and17)
  %cmp18 = icmp eq i32 %and17, -2147483648
  br i1 %cmp18, label %for.end.cleanup_crit_edge, label %if.end21

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %for.end
  %and22 = and i32 %10, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool27.not = icmp eq i32 %and17, 0
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %.str.32..str.35 = select i1 %tobool27.not, ptr @.str.32, ptr @.str.35
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull %.str.32..str.35) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end21.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end.cleanup_crit_edge ], [ -5, %if.end21.cleanup_crit_edge ], [ -5, %if.end25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_pci_set_inbound_region(ptr noundef readonly %hdev, i8 noundef zeroext %region, ptr nocapture noundef readonly %pci_region) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %region to i32
  %mul = shl nuw nsw i32 %conv, 9
  %0 = ptrtoint ptr %pci_region to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pci_region, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %.pre = and i32 %mul, 3584
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %bar = getelementptr inbounds %struct.hl_inbound_pci_region, ptr %pci_region, i32 0, i32 4
  %2 = ptrtoint ptr %bar to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bar, align 8
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 1, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx, align 8
  %offset_in_bar = getelementptr inbounds %struct.hl_inbound_pci_region, ptr %pci_region, i32 0, i32 3
  %6 = ptrtoint ptr %offset_in_bar to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %offset_in_bar, align 8
  %add2 = add i64 %7, %5
  %size = getelementptr inbounds %struct.hl_inbound_pci_region, ptr %pci_region, i32 0, i32 2
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %size, align 8
  %add3 = add i64 %add2, %9
  %conv5 = trunc i64 %add2 to i32
  %add4 = and i32 %mul, 3584
  %and.i = or i32 %add4, 264
  %pcie_aux_dbi_reg_addr.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 22
  %10 = ptrtoint ptr %pcie_aux_dbi_reg_addr.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %pcie_aux_dbi_reg_addr.i, align 8
  %call.i = tail call fastcc i32 @hl_pci_elbi_write(ptr noundef %hdev, i64 noundef %11, i32 noundef 3145728) #5
  %pcie_dbi_base_address.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 21
  %12 = ptrtoint ptr %pcie_dbi_base_address.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %pcie_dbi_base_address.i, align 8
  %conv.i = zext i32 %and.i to i64
  %add.i = add i64 %13, %conv.i
  %call1.i = tail call fastcc i32 @hl_pci_elbi_write(ptr noundef %hdev, i64 noundef %add.i, i32 noundef %conv5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  %shr = lshr i64 %add2, 32
  %conv8 = trunc i64 %shr to i32
  %and.i177 = or i32 %add4, 268
  %14 = ptrtoint ptr %pcie_aux_dbi_reg_addr.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %pcie_aux_dbi_reg_addr.i, align 8
  %call.i179 = tail call fastcc i32 @hl_pci_elbi_write(ptr noundef %hdev, i64 noundef %15, i32 noundef 3145728) #5
  %16 = ptrtoint ptr %pcie_dbi_base_address.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %pcie_dbi_base_address.i, align 8
  %conv.i181 = zext i32 %and.i177 to i64
  %add.i182 = add i64 %17, %conv.i181
  %call1.i183 = tail call fastcc i32 @hl_pci_elbi_write(ptr noundef %hdev, i64 noundef %add.i182, i32 noundef %conv8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i183)
  %tobool.not.i184 = icmp eq i32 %call1.i183, 0
  %18 = select i1 %tobool.not.i, i1 %tobool.not.i184, i1 false
  %19 = trunc i64 %add3 to i32
  %conv13 = add i32 %19, -1
  %and.i186 = or i32 %add4, 272
  %20 = ptrtoint ptr %pcie_aux_dbi_reg_addr.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %pcie_aux_dbi_reg_addr.i, align 8
  %call.i188 = tail call fastcc i32 @hl_pci_elbi_write(ptr noundef %hdev, i64 noundef %21, i32 noundef 3145728) #5
  %22 = ptrtoint ptr %pcie_dbi_base_address.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %pcie_dbi_base_address.i, align 8
  %conv.i190 = zext i32 %and.i186 to i64
  %add.i191 = add i64 %23, %conv.i190
  %call1.i192 = tail call fastcc i32 @hl_pci_elbi_write(ptr noundef %hdev, i64 noundef %add.i191, i32 noundef %conv13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i192)
  %tobool.not.i193 = icmp eq i32 %call1.i192, 0
  %24 = select i1 %18, i1 %tobool.not.i193, i1 false
  %or15 = select i1 %24, i32 0, i32 -5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add16.pre-phi = phi i32 [ %.pre, %entry.if.end_crit_edge ], [ %add4, %if.then ]
  %rc.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %or15, %if.then ]
  %addr = getelementptr inbounds %struct.hl_inbound_pci_region, ptr %pci_region, i32 0, i32 1
  %25 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %addr, align 8
  %conv18 = trunc i64 %26 to i32
  %and.i195 = or i32 %add16.pre-phi, 276
  %pcie_aux_dbi_reg_addr.i196 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 22
  %27 = ptrtoint ptr %pcie_aux_dbi_reg_addr.i196 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %pcie_aux_dbi_reg_addr.i196, align 8
  %call.i197 = tail call fastcc i32 @hl_pci_elbi_write(ptr noundef %hdev, i64 noundef %28, i32 noundef 3145728) #5
  %pcie_dbi_base_address.i198 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 21
  %29 = ptrtoint ptr %pcie_dbi_base_address.i198 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %pcie_dbi_base_address.i198, align 8
  %conv.i199 = zext i32 %and.i195 to i64
  %add.i200 = add i64 %30, %conv.i199
  %call1.i201 = tail call fastcc i32 @hl_pci_elbi_write(ptr noundef %hdev, i64 noundef %add.i200, i32 noundef %conv18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i201)
  %tobool.not.i202 = icmp eq i32 %call1.i201, 0
  %31 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %addr, align 8
  %shr23 = lshr i64 %32, 32
  %conv25 = trunc i64 %shr23 to i32
  %and.i204 = or i32 %add16.pre-phi, 280
  %33 = ptrtoint ptr %pcie_aux_dbi_reg_addr.i196 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %pcie_aux_dbi_reg_addr.i196, align 8
  %call.i206 = tail call fastcc i32 @hl_pci_elbi_write(ptr noundef %hdev, i64 noundef %34, i32 noundef 3145728) #5
  %35 = ptrtoint ptr %pcie_dbi_base_address.i198 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %pcie_dbi_base_address.i198, align 8
  %conv.i208 = zext i32 %and.i204 to i64
  %add.i209 = add i64 %36, %conv.i208
  %call1.i210 = tail call fastcc i32 @hl_pci_elbi_write(ptr noundef %hdev, i64 noundef %add.i209, i32 noundef %conv25) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i210)
  %tobool.not.i211 = icmp eq i32 %call1.i210, 0
  %37 = select i1 %tobool.not.i211, i1 %tobool.not.i202, i1 false
  %or27 = select i1 %37, i32 %rc.0, i32 -5
  %and.i213 = or i32 %add16.pre-phi, 256
  %38 = ptrtoint ptr %pcie_aux_dbi_reg_addr.i196 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %pcie_aux_dbi_reg_addr.i196, align 8
  %call.i215 = tail call fastcc i32 @hl_pci_elbi_write(ptr noundef %hdev, i64 noundef %39, i32 noundef 3145728) #5
  %40 = ptrtoint ptr %pcie_dbi_base_address.i198 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %pcie_dbi_base_address.i198, align 8
  %conv.i217 = zext i32 %and.i213 to i64
  %add.i218 = add i64 %41, %conv.i217
  %call1.i219 = tail call fastcc i32 @hl_pci_elbi_write(ptr noundef %hdev, i64 noundef %add.i218, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i219)
  %tobool.not.i220 = icmp eq i32 %call1.i219, 0
  %..i221 = select i1 %tobool.not.i220, i32 0, i32 -5
  %or30 = or i32 %or27, %..i221
  %42 = ptrtoint ptr %pci_region to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pci_region, align 8
  %shl = shl i32 %43, 30
  %or83 = or i32 %shl, -2146959360
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp85 = icmp eq i32 %43, 1
  br i1 %cmp85, label %do.end111, label %if.end.if.end118_crit_edge

if.end.if.end118_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end118

do.end111:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %bar95 = getelementptr inbounds %struct.hl_inbound_pci_region, ptr %pci_region, i32 0, i32 4
  %44 = ptrtoint ptr %bar95 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %bar95, align 8
  %conv114 = zext i8 %45 to i32
  %shl115 = shl nuw nsw i32 %conv114, 8
  %and116 = and i32 %shl115, 1792
  %or117 = or i32 %and116, %or83
  br label %if.end118

if.end118:                                        ; preds = %do.end111, %if.end.if.end118_crit_edge
  %ctrl_reg_val.0 = phi i32 [ %or117, %do.end111 ], [ %or83, %if.end.if.end118_crit_edge ]
  %and.i222 = or i32 %add16.pre-phi, 260
  %46 = ptrtoint ptr %pcie_aux_dbi_reg_addr.i196 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %pcie_aux_dbi_reg_addr.i196, align 8
  %call.i224 = tail call fastcc i32 @hl_pci_elbi_write(ptr noundef %hdev, i64 noundef %47, i32 noundef 3145728) #5
  %48 = ptrtoint ptr %pcie_dbi_base_address.i198 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %pcie_dbi_base_address.i198, align 8
  %conv.i226 = zext i32 %and.i222 to i64
  %add.i227 = add i64 %49, %conv.i226
  %call1.i228 = tail call fastcc i32 @hl_pci_elbi_write(ptr noundef %hdev, i64 noundef %add.i227, i32 noundef %ctrl_reg_val.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i228)
  %tobool.not.i229 = icmp eq i32 %call1.i228, 0
  %..i230 = select i1 %tobool.not.i229, i32 0, i32 -5
  %or121 = or i32 %or30, %..i230
  %50 = ptrtoint ptr %pcie_aux_dbi_reg_addr.i196 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %pcie_aux_dbi_reg_addr.i196, align 8
  %call122 = tail call fastcc i32 @hl_pci_elbi_write(ptr noundef %hdev, i64 noundef %51, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or121)
  %tobool123.not = icmp eq i32 %or121, 0
  br i1 %tobool123.not, label %if.end118.if.end131_crit_edge, label %do.end127

if.end118.if.end131_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end131

do.end127:                                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 4
  %bar128 = getelementptr inbounds %struct.hl_inbound_pci_region, ptr %pci_region, i32 0, i32 4
  %54 = ptrtoint ptr %bar128 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %bar128, align 8
  %conv129 = zext i8 %55 to i32
  %56 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %addr, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.19, i32 noundef %conv129, i64 noundef %57) #8
  br label %if.end131

if.end131:                                        ; preds = %do.end127, %if.end118.if.end131_crit_edge
  ret i32 %or121
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_pci_set_outbound_region(ptr noundef readonly %hdev, ptr nocapture noundef readonly %pci_region) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pci_region to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pci_region, align 8
  %size = getelementptr inbounds %struct.hl_outbound_pci_region, ptr %pci_region, i32 0, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %size, align 8
  %add = add i64 %1, -1
  %sub = add i64 %add, %3
  %conv = trunc i64 %1 to i32
  %pcie_aux_dbi_reg_addr.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 22
  %4 = ptrtoint ptr %pcie_aux_dbi_reg_addr.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pcie_aux_dbi_reg_addr.i, align 8
  %call.i = tail call fastcc i32 @hl_pci_elbi_write(ptr noundef %hdev, i64 noundef %5, i32 noundef 3145728) #5
  %pcie_dbi_base_address.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 21
  %6 = ptrtoint ptr %pcie_dbi_base_address.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pcie_dbi_base_address.i, align 8
  %add.i = add i64 %7, 8
  %call1.i = tail call fastcc i32 @hl_pci_elbi_write(ptr noundef %hdev, i64 noundef %add.i, i32 noundef %conv) #5
  %8 = ptrtoint ptr %pci_region to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %pci_region, align 8
  %shr = lshr i64 %9, 32
  %conv4 = trunc i64 %shr to i32
  %10 = ptrtoint ptr %pcie_aux_dbi_reg_addr.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %pcie_aux_dbi_reg_addr.i, align 8
  %call.i56 = tail call fastcc i32 @hl_pci_elbi_write(ptr noundef %hdev, i64 noundef %11, i32 noundef 3145728) #5
  %12 = ptrtoint ptr %pcie_dbi_base_address.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %pcie_dbi_base_address.i, align 8
  %add.i58 = add i64 %13, 12
  %call1.i59 = tail call fastcc i32 @hl_pci_elbi_write(ptr noundef %hdev, i64 noundef %add.i58, i32 noundef %conv4) #5
  %conv8 = trunc i64 %sub to i32
  %14 = ptrtoint ptr %pcie_aux_dbi_reg_addr.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %pcie_aux_dbi_reg_addr.i, align 8
  %call.i63 = tail call fastcc i32 @hl_pci_elbi_write(ptr noundef %hdev, i64 noundef %15, i32 noundef 3145728) #5
  %16 = ptrtoint ptr %pcie_dbi_base_address.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %pcie_dbi_base_address.i, align 8
  %add.i65 = add i64 %17, 16
  %call1.i66 = tail call fastcc i32 @hl_pci_elbi_write(ptr noundef %hdev, i64 noundef %add.i65, i32 noundef %conv8) #5
  %18 = ptrtoint ptr %pcie_aux_dbi_reg_addr.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %pcie_aux_dbi_reg_addr.i, align 8
  %call.i70 = tail call fastcc i32 @hl_pci_elbi_write(ptr noundef %hdev, i64 noundef %19, i32 noundef 3145728) #5
  %20 = ptrtoint ptr %pcie_dbi_base_address.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %pcie_dbi_base_address.i, align 8
  %add.i72 = add i64 %21, 20
  %call1.i73 = tail call fastcc i32 @hl_pci_elbi_write(ptr noundef %hdev, i64 noundef %add.i72, i32 noundef 0) #5
  %power9_64bit_dma_enable = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 90
  %22 = ptrtoint ptr %power9_64bit_dma_enable to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %power9_64bit_dma_enable, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not = icmp eq i8 %23, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %dma_mask = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 88
  %24 = ptrtoint ptr %dma_mask to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dma_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %25)
  %cmp = icmp eq i8 %25, 64
  br i1 %cmp, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %.sink = phi i32 [ 0, %if.else ], [ 134217728, %land.lhs.true.if.end_crit_edge ]
  %26 = ptrtoint ptr %pcie_aux_dbi_reg_addr.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %pcie_aux_dbi_reg_addr.i, align 8
  %call.i84 = tail call fastcc i32 @hl_pci_elbi_write(ptr noundef %hdev, i64 noundef %27, i32 noundef 3145728) #5
  %28 = ptrtoint ptr %pcie_dbi_base_address.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %pcie_dbi_base_address.i, align 8
  %add.i86 = add i64 %29, 24
  %call1.i87 = tail call fastcc i32 @hl_pci_elbi_write(ptr noundef %hdev, i64 noundef %add.i86, i32 noundef %.sink) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i87)
  %tobool.not.i88 = icmp eq i32 %call1.i87, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i73)
  %tobool.not.i74 = icmp eq i32 %call1.i73, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i66)
  %tobool.not.i67 = icmp eq i32 %call1.i66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i59)
  %tobool.not.i60 = icmp eq i32 %call1.i59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  %shr20 = lshr i64 %sub, 32
  %conv22 = trunc i64 %shr20 to i32
  %30 = ptrtoint ptr %pcie_aux_dbi_reg_addr.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %pcie_aux_dbi_reg_addr.i, align 8
  %call.i91 = tail call fastcc i32 @hl_pci_elbi_write(ptr noundef %hdev, i64 noundef %31, i32 noundef 3145728) #5
  %32 = ptrtoint ptr %pcie_dbi_base_address.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %pcie_dbi_base_address.i, align 8
  %add.i93 = add i64 %33, 32
  %call1.i94 = tail call fastcc i32 @hl_pci_elbi_write(ptr noundef %hdev, i64 noundef %add.i93, i32 noundef %conv22) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i94)
  %tobool.not.i95 = icmp eq i32 %call1.i94, 0
  %34 = select i1 %tobool.not.i95, i1 %tobool.not.i, i1 false
  %35 = select i1 %34, i1 %tobool.not.i60, i1 false
  %36 = select i1 %35, i1 %tobool.not.i67, i1 false
  %37 = select i1 %36, i1 %tobool.not.i74, i1 false
  %38 = select i1 %37, i1 %tobool.not.i88, i1 false
  %39 = ptrtoint ptr %pcie_aux_dbi_reg_addr.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %pcie_aux_dbi_reg_addr.i, align 8
  %call.i98 = tail call fastcc i32 @hl_pci_elbi_write(ptr noundef %hdev, i64 noundef %40, i32 noundef 3145728) #5
  %41 = ptrtoint ptr %pcie_dbi_base_address.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %pcie_dbi_base_address.i, align 8
  %call1.i100 = tail call fastcc i32 @hl_pci_elbi_write(ptr noundef %hdev, i64 noundef %42, i32 noundef 8192) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i100)
  %tobool.not.i101 = icmp eq i32 %call1.i100, 0
  %43 = select i1 %38, i1 %tobool.not.i101, i1 false
  %44 = ptrtoint ptr %pcie_aux_dbi_reg_addr.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %pcie_aux_dbi_reg_addr.i, align 8
  %call.i104 = tail call fastcc i32 @hl_pci_elbi_write(ptr noundef %hdev, i64 noundef %45, i32 noundef 3145728) #5
  %46 = ptrtoint ptr %pcie_dbi_base_address.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %pcie_dbi_base_address.i, align 8
  %add.i106 = add i64 %47, 4
  %call1.i107 = tail call fastcc i32 @hl_pci_elbi_write(ptr noundef %hdev, i64 noundef %add.i106, i32 noundef -2147483648) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i107)
  %tobool.not.i108 = icmp eq i32 %call1.i107, 0
  %48 = select i1 %43, i1 %tobool.not.i108, i1 false
  %or28 = select i1 %48, i32 0, i32 -5
  %49 = ptrtoint ptr %pcie_aux_dbi_reg_addr.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %pcie_aux_dbi_reg_addr.i, align 8
  %call29 = tail call fastcc i32 @hl_pci_elbi_write(ptr noundef %hdev, i64 noundef %50, i32 noundef 0)
  ret i32 %or28
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_get_pci_memory_region(ptr nocapture noundef readonly %hdev, i64 noundef %addr) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %used = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 54, i32 0, i32 5
  %0 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %used, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 54, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %addr)
  %cmp1.not = icmp ugt i64 %3, %addr
  br i1 %cmp1.not, label %if.end.for.inc_crit_edge, label %land.lhs.true

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end
  %region_size = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 54, i32 0, i32 1
  %4 = ptrtoint ptr %region_size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %region_size, align 8
  %add = add i64 %5, %3
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %addr)
  %cmp3 = icmp ugt i64 %add, %addr
  br i1 %cmp3, label %land.lhs.true.cleanup6_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true.cleanup6_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup6

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end.for.inc_crit_edge, %entry.for.inc_crit_edge
  %used.1 = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 54, i32 1, i32 5
  %6 = ptrtoint ptr %used.1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %used.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.1 = icmp eq i8 %7, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %arrayidx.1 = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 54, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx.1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %addr)
  %cmp1.not.1 = icmp ugt i64 %9, %addr
  br i1 %cmp1.not.1, label %if.end.1.for.inc.1_crit_edge, label %land.lhs.true.1

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %if.end.1
  %region_size.1 = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 54, i32 1, i32 1
  %10 = ptrtoint ptr %region_size.1 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %region_size.1, align 8
  %add.1 = add i64 %11, %9
  call void @__sanitizer_cov_trace_cmp8(i64 %add.1, i64 %addr)
  %cmp3.1 = icmp ugt i64 %add.1, %addr
  br i1 %cmp3.1, label %land.lhs.true.1.cleanup6_crit_edge, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

land.lhs.true.1.cleanup6_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup6

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %if.end.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %used.2 = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 54, i32 2, i32 5
  %12 = ptrtoint ptr %used.2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %used.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.2 = icmp eq i8 %13, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  %arrayidx.2 = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 54, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx.2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %addr)
  %cmp1.not.2 = icmp ugt i64 %15, %addr
  br i1 %cmp1.not.2, label %if.end.2.for.inc.2_crit_edge, label %land.lhs.true.2

if.end.2.for.inc.2_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %if.end.2
  %region_size.2 = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 54, i32 2, i32 1
  %16 = ptrtoint ptr %region_size.2 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %region_size.2, align 8
  %add.2 = add i64 %17, %15
  call void @__sanitizer_cov_trace_cmp8(i64 %add.2, i64 %addr)
  %cmp3.2 = icmp ugt i64 %add.2, %addr
  br i1 %cmp3.2, label %land.lhs.true.2.cleanup6_crit_edge, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

land.lhs.true.2.cleanup6_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup6

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %if.end.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %used.3 = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 54, i32 3, i32 5
  %18 = ptrtoint ptr %used.3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %used.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.3 = icmp eq i8 %19, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  %arrayidx.3 = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 54, i32 3
  %20 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx.3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %addr)
  %cmp1.not.3 = icmp ugt i64 %21, %addr
  br i1 %cmp1.not.3, label %if.end.3.for.inc.3_crit_edge, label %land.lhs.true.3

if.end.3.for.inc.3_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %if.end.3
  %region_size.3 = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 54, i32 3, i32 1
  %22 = ptrtoint ptr %region_size.3 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %region_size.3, align 8
  %add.3 = add i64 %23, %21
  call void @__sanitizer_cov_trace_cmp8(i64 %add.3, i64 %addr)
  %cmp3.3 = icmp ugt i64 %add.3, %addr
  br i1 %cmp3.3, label %land.lhs.true.3.cleanup6_crit_edge, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

land.lhs.true.3.cleanup6_crit_edge:               ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup6

for.inc.3:                                        ; preds = %land.lhs.true.3.for.inc.3_crit_edge, %if.end.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  br label %cleanup6

cleanup6:                                         ; preds = %for.inc.3, %land.lhs.true.3.cleanup6_crit_edge, %land.lhs.true.2.cleanup6_crit_edge, %land.lhs.true.1.cleanup6_crit_edge, %land.lhs.true.cleanup6_crit_edge
  %retval.2 = phi i32 [ 0, %land.lhs.true.cleanup6_crit_edge ], [ 1, %land.lhs.true.1.cleanup6_crit_edge ], [ 2, %land.lhs.true.2.cleanup6_crit_edge ], [ 3, %land.lhs.true.3.cleanup6_crit_edge ], [ 4, %for.inc.3 ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_pci_init(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 8
  %reset_pcilink = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 109
  %2 = ptrtoint ptr %reset_pcilink to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reset_pcilink, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #5
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %val.i, align 2, !annotation !70
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus.i, align 8
  %self.i = getelementptr inbounds %struct.pci_bus, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %self.i, align 4
  %call.i = call i32 @pci_read_config_word(ptr noundef %8, i32 noundef 62, ptr noundef nonnull %val.i) #5
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %val.i, align 2
  %11 = or i16 %10, 64
  store i16 %11, ptr %val.i, align 2
  %call3.i = call i32 @pci_write_config_word(ptr noundef %8, i32 noundef 62, i16 noundef zeroext %11) #5
  call void @msleep(i32 noundef 1000) #5
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %val.i, align 2
  %14 = and i16 %13, -65
  store i16 %14, ptr %val.i, align 2
  %call6.i = call i32 @pci_write_config_word(ptr noundef %8, i32 noundef 62, i16 noundef zeroext %14) #5
  call void @msleep(i32 noundef 3000) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = call i32 @pci_enable_device_mem(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.21) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @pci_set_master(ptr noundef %1) #5
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %17 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %asic_funcs, align 8
  %pci_bars_map = getelementptr inbounds %struct.hl_asic_funcs, ptr %18, i32 0, i32 55
  %19 = ptrtoint ptr %pci_bars_map to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pci_bars_map, align 4
  %call5 = call i32 %20(ptr noundef %hdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end12, label %do.end10

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %dev11 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %21 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.24) #8
  br label %disable_device

if.end12:                                         ; preds = %if.end4
  %23 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %asic_funcs, align 8
  %init_iatu = getelementptr inbounds %struct.hl_asic_funcs, ptr %24, i32 0, i32 56
  %25 = ptrtoint ptr %init_iatu to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_iatu, align 4
  %call14 = call i32 %26(ptr noundef %hdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end21, label %do.end19

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %dev20 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %27 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev20, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.27) #8
  br label %unmap_pci_bars

if.end21:                                         ; preds = %if.end12
  %iatu_done_by_fw = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 75
  %29 = ptrtoint ptr %iatu_done_by_fw to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %iatu_done_by_fw, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool22.not = icmp eq i8 %30, 0
  br i1 %tobool22.not, label %if.end21.if.end25_crit_edge, label %if.then23

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #5
  %31 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %asic_funcs, align 8
  %set_dma_mask_from_fw = getelementptr inbounds %struct.hl_asic_funcs, ptr %32, i32 0, i32 72
  %33 = ptrtoint ptr %set_dma_mask_from_fw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %set_dma_mask_from_fw, align 4
  call void %34(ptr noundef %hdev) #5
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end21.if.end25_crit_edge
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %dma_mask = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 88
  %35 = ptrtoint ptr %dma_mask to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %dma_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %36)
  %cmp = icmp eq i8 %36, 64
  br i1 %cmp, label %if.end25.cond.end_crit_edge, label %cond.false

if.end25.cond.end_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %sh_prom = zext i8 %36 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end25.cond.end_crit_edge
  %cond = phi i64 [ %sub, %cond.false ], [ -1, %if.end25.cond.end_crit_edge ]
  %call.i71 = call i32 @dma_set_mask(ptr noundef %dev26, i64 noundef %cond) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %cmp.i = icmp eq i32 %call.i71, 0
  br i1 %cmp.i, label %if.end39, label %do.end35

do.end35:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev36 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %37 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev36, align 4
  %39 = ptrtoint ptr %dma_mask to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %dma_mask, align 4
  %conv38 = zext i8 %40 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.30, i32 noundef %conv38, i32 noundef %call.i71) #8
  br label %unmap_pci_bars

if.end39:                                         ; preds = %cond.end
  %call1.i = call i32 @dma_set_coherent_mask(ptr noundef %dev26, i64 noundef %cond) #5
  %dma_parms.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 22
  %41 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i = icmp eq ptr %42, null
  br i1 %tobool.not.i, label %if.end39.cleanup_crit_edge, label %if.then.i72

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i72:                                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %42, align 4
  br label %cleanup

unmap_pci_bars:                                   ; preds = %do.end35, %do.end19
  %rc.0 = phi i32 [ %call14, %do.end19 ], [ %call.i71, %do.end35 ]
  %44 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hdev, align 8
  %arrayidx.i = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 2, i32 4
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i, align 4
  call void @iounmap(ptr noundef %47) #5
  %arrayidx.1.i = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 2, i32 2
  %48 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.1.i, align 4
  call void @iounmap(ptr noundef %49) #5
  %arrayidx.2.i = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 2, i32 0
  %50 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.2.i, align 4
  call void @iounmap(ptr noundef %51) #5
  call void @pci_release_regions(ptr noundef %45) #5
  br label %disable_device

disable_device:                                   ; preds = %unmap_pci_bars, %do.end10
  %rc.1 = phi i32 [ %call5, %do.end10 ], [ %rc.0, %unmap_pci_bars ]
  call void @pci_clear_master(ptr noundef %1) #5
  call void @pci_disable_device(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %disable_device, %if.then.i72, %if.end39.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %rc.1, %disable_device ], [ 0, %if.end39.cleanup_crit_edge ], [ 0, %if.then.i72 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device_mem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_clear_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_pci_fini(ptr nocapture noundef readonly %hdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 8
  %arrayidx.i = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  tail call void @iounmap(ptr noundef %3) #5
  %arrayidx.1.i = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1.i, align 4
  tail call void @iounmap(ptr noundef %5) #5
  %arrayidx.2.i = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 2, i32 0
  %6 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2.i, align 4
  tail call void @iounmap(ptr noundef %7) #5
  tail call void @pci_release_regions(ptr noundef %1) #5
  %8 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdev, align 8
  tail call void @pci_clear_master(ptr noundef %9) #5
  %10 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hdev, align 8
  tail call void @pci_disable_device(ptr noundef %11) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/misc/habanalabs/common/pci/pci.c", i32 36, i32 33}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/misc/habanalabs/common/pci/pci.c", i32 38, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @hl_pci_bars_map._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @hl_pci_bars_map._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/misc/habanalabs/common/pci/pci.c", i32 48, i32 4}
!12 = !{ptr @hl_pci_bars_map._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @hl_pci_bars_map._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.10, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/misc/habanalabs/common/pci/pci.c", i32 127, i32 3}
!18 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @hl_pci_elbi_read._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @hl_pci_elbi_read._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/misc/habanalabs/common/pci/pci.c", i32 132, i32 3}
!23 = !{ptr @hl_pci_elbi_read._entry.13, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @hl_pci_elbi_read._entry_ptr.15, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/misc/habanalabs/common/pci/pci.c", i32 136, i32 2}
!27 = !{ptr @hl_pci_elbi_read._entry.16, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @hl_pci_elbi_read._entry_ptr.18, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/misc/habanalabs/common/pci/pci.c", i32 308, i32 3}
!31 = !{ptr @.str.20, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @hl_pci_set_inbound_region._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @hl_pci_set_inbound_region._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/misc/habanalabs/common/pci/pci.c", i32 406, i32 3}
!36 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @hl_pci_init._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @hl_pci_init._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/misc/habanalabs/common/pci/pci.c", i32 414, i32 3}
!41 = !{ptr @hl_pci_init._entry.23, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @hl_pci_init._entry_ptr.25, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/misc/habanalabs/common/pci/pci.c", i32 420, i32 3}
!45 = !{ptr @hl_pci_init._entry.26, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @hl_pci_init._entry_ptr.28, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.30, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/misc/habanalabs/common/pci/pci.c", i32 433, i32 3}
!49 = !{ptr @hl_pci_init._entry.29, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @hl_pci_init._entry_ptr.31, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.32, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/misc/habanalabs/common/pci/pci.c", i32 189, i32 3}
!53 = !{ptr @.str.33, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @hl_pci_elbi_write._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @hl_pci_elbi_write._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.35, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/misc/habanalabs/common/pci/pci.c", i32 193, i32 2}
!58 = !{ptr @hl_pci_elbi_write._entry.34, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @hl_pci_elbi_write._entry_ptr.36, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i8 0, i8 2}
!70 = !{!"auto-init"}

; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/toshsd.c_pt.bc'
source_filename = "../drivers/mmc/host/toshsd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.toshsd_host = type { ptr, ptr, %struct.spinlock, ptr, ptr, ptr, %struct.sg_mapping_iter, ptr }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__initcall__kmod_toshsd__284_701_toshsd_driver_init6 = internal global ptr @toshsd_driver_init, section ".initcall6.init", align 4
@toshsd_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @pci_ids, ptr @toshsd_probe, ptr @toshsd_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @toshsd_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_toshsd_driver_exit = internal global ptr @toshsd_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author285 = internal constant [41 x i8] c"toshsd.author=Ondrej Zary, Richard Betts\00", section ".modinfo", align 1
@__UNIQUE_ID_description286 = internal constant [79 x i8] c"toshsd.description=Toshiba PCI Secure Digital Host Controller Interface driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file287 = internal constant [36 x i8] c"toshsd.file=drivers/mmc/host/toshsd\00", section ".modinfo", align 1
@__UNIQUE_ID_license288 = internal constant [19 x i8] c"toshsd.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"toshsd\00", [25 x i8] zeroinitializer }, align 32
@pci_ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4473, i32 2053, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@toshsd_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @toshsd_pm_suspend, ptr @toshsd_pm_resume, ptr @toshsd_pm_suspend, ptr @toshsd_pm_resume, ptr @toshsd_pm_suspend, ptr @toshsd_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@toshsd_ops = internal constant { %struct.mmc_host_ops, [32 x i8] } { %struct.mmc_host_ops { ptr null, ptr null, ptr @toshsd_request, ptr null, ptr @toshsd_set_ios, ptr @toshsd_get_ro, ptr @toshsd_get_cd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@toshsd_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&host->lock\00", [20 x i8] zeroinitializer }, align 32
@toshsd_probe.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"toshsd_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/mmc/host/toshsd.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMIO %pa, IRQ %d\0A\00", [46 x i8] zeroinitializer }, align 32
@toshsd_start_data.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.3, ptr @.str.6, i8 0, i8 119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"toshsd_start_data\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"setup data transfer: blocksize %08x  nr_blocks %d, offset: %08x\0A\00", [63 x i8] zeroinitializer }, align 32
@toshsd_start_cmd.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.3, ptr @.str.8, i8 0, i8 101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"toshsd_start_cmd\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Command opcode: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@toshsd_start_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 442, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unknown response type %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@toshsd_start_cmd._entry_ptr = internal global ptr @toshsd_start_cmd._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@toshsd_irq.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.13, i8 0, i8 75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"toshsd_irq\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IRQ status:%x mask:%x\0A\00", [41 x i8] zeroinitializer }, align 32
@toshsd_irq.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.14, i8 0, i8 77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Timeout\0A\00", [23 x i8] zeroinitializer }, align 32
@toshsd_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.12, ptr @.str.3, i32 314, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BadCRC\0A\00", [24 x i8] zeroinitializer }, align 32
@toshsd_irq._entry_ptr = internal global ptr @toshsd_irq._entry, section ".printk_index", align 4
@toshsd_irq._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.3, i32 327, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer status error: { %s%s%s%s%s%s}\0A\00", [58 x i8] zeroinitializer }, align 32
@toshsd_irq._entry_ptr.18 = internal global ptr @toshsd_irq._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ILLEGAL_ACC \00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CMD_INDEX \00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"STOPBIT_END \00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"OVERFLOW \00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"UNDERFLOW \00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DATA_TIMEOUT \00", [18 x i8] zeroinitializer }, align 32
@toshsd_irq._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.12, ptr @.str.3, i32 343, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"detail error status { %s%s%s%s%s%s%s%s%s%s%s%s%s}\0A\00", [45 x i8] zeroinitializer }, align 32
@toshsd_irq._entry_ptr.28 = internal global ptr @toshsd_irq._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RESP_CMD \00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RESP_END_BIT \00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"READ_DATA_END_BIT \00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"WRITE_CMD_END_BIT \00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RESP_CRC \00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"READ_DATA_CRC \00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"WRITE_CMD_CRC \00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"NO_CMD_RESP \00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"READ_DATA_TIMEOUT \00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CRS_STATUS_TIMEOUT \00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CRC_BUSY_TIMEOUT \00", [46 x i8] zeroinitializer }, align 32
@toshsd_cmd_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 212, ptr @.str.42, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Spurious CMD irq\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"toshsd_cmd_irq\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@toshsd_cmd_irq._entry_ptr = internal global ptr @toshsd_cmd_irq._entry, section ".printk_index", align 4
@toshsd_cmd_irq.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.3, ptr @.str.43, i8 0, i8 63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Command IRQ complete %d %d %x\0A\00", [33 x i8] zeroinitializer }, align 32
@toshsd_data_end_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 272, ptr @.str.42, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Spurious data end IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"toshsd_data_end_irq\00", [44 x i8] zeroinitializer }, align 32
@toshsd_data_end_irq._entry_ptr = internal global ptr @toshsd_data_end_irq._entry, section ".printk_index", align 4
@toshsd_data_end_irq.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.3, ptr @.str.46, i8 0, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Completed data request xfr=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@toshsd_thread_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 166, ptr @.str.42, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Spurious Data IRQ\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"toshsd_thread_irq\00", [46 x i8] zeroinitializer }, align 32
@toshsd_thread_irq._entry_ptr = internal global ptr @toshsd_thread_irq._entry, section ".printk_index", align 4
@toshsd_thread_irq.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.3, ptr @.str.49, i8 0, i8 47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"count: %08x, flags %08x\0A\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 7, i64 21, i64 29]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@___asan_gen_.52 = private unnamed_addr constant [14 x i8] c"toshsd_driver\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 693, i32 26 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 701, i32 1 }
@___asan_gen_.58 = private unnamed_addr constant [8 x i8] c"pci_ids\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 28, i32 35 }
@___asan_gen_.61 = private unnamed_addr constant [14 x i8] c"toshsd_pm_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 689, i32 32 }
@___asan_gen_.64 = private unnamed_addr constant [11 x i8] c"toshsd_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 549, i32 34 }
@___asan_gen_.67 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 645, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 657, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 478, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 407, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 441, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 300, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 311, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 314, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 321, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 330, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 212, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 254, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 272, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 281, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 166, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.224 = private constant [29 x i8] c"../drivers/mmc/host/toshsd.c\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 187, i32 2 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @__UNIQUE_ID_author285, ptr @__UNIQUE_ID_description286, ptr @__UNIQUE_ID_file287, ptr @__UNIQUE_ID_license288, ptr @__exitcall_toshsd_driver_exit, ptr @__initcall__kmod_toshsd__284_701_toshsd_driver_init6, ptr @toshsd_cmd_irq._entry, ptr @toshsd_cmd_irq._entry_ptr, ptr @toshsd_data_end_irq._entry, ptr @toshsd_data_end_irq._entry_ptr, ptr @toshsd_driver_exit, ptr @toshsd_irq._entry, ptr @toshsd_irq._entry.16, ptr @toshsd_irq._entry.26, ptr @toshsd_irq._entry_ptr, ptr @toshsd_irq._entry_ptr.18, ptr @toshsd_irq._entry_ptr.28, ptr @toshsd_start_cmd._entry, ptr @toshsd_start_cmd._entry_ptr, ptr @toshsd_thread_irq._entry, ptr @toshsd_thread_irq._entry_ptr, ptr @toshsd_driver, ptr @.str, ptr @pci_ids, ptr @toshsd_pm_ops, ptr @toshsd_ops, ptr @toshsd_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @toshsd_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @toshsd_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @toshsd_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @toshsd_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @toshsd_start_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @toshsd_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @toshsd_irq._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @toshsd_irq._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @toshsd_cmd_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @toshsd_data_end_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @toshsd_thread_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @toshsd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @toshsd_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @toshsd_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @toshsd_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @toshsd_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  %base = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base) #6
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call1 = tail call ptr @mmc_alloc_host(i32 noundef 112, ptr noundef %dev) #6
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.err_crit_edge, label %if.end4

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end4:                                          ; preds = %if.end
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %call1, i32 0, i32 70
  %mmc6 = getelementptr inbounds %struct.toshsd_host, ptr %private.i, i32 0, i32 1
  %0 = ptrtoint ptr %mmc6 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %mmc6, align 4
  %1 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pdev, ptr %private.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %private.i, ptr %driver_data.i.i, align 4
  %call8 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end4.free_crit_edge

if.end4.free_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %free

if.end11:                                         ; preds = %if.end4
  %call12 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 0, i32 noundef 0) #6
  %ioaddr = getelementptr inbounds %struct.mmc_host, ptr %call1, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 1
  %3 = ptrtoint ptr %ioaddr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call12, ptr %ioaddr, align 4
  %tobool14.not = icmp eq ptr %call12, null
  br i1 %tobool14.not, label %if.end11.release_crit_edge, label %if.end16

if.end11.release_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %release

if.end16:                                         ; preds = %if.end11
  %ops = getelementptr inbounds %struct.mmc_host, ptr %call1, i32 0, i32 3
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @toshsd_ops, ptr %ops, align 4
  %caps = getelementptr inbounds %struct.mmc_host, ptr %call1, i32 0, i32 16
  %5 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %caps, align 32
  %ocr_avail = getelementptr inbounds %struct.mmc_host, ptr %call1, i32 0, i32 8
  %6 = ptrtoint ptr %ocr_avail to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1048576, ptr %ocr_avail, align 64
  %f_min = getelementptr inbounds %struct.mmc_host, ptr %call1, i32 0, i32 5
  %7 = ptrtoint ptr %f_min to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 64453, ptr %f_min, align 4
  %f_max = getelementptr inbounds %struct.mmc_host, ptr %call1, i32 0, i32 6
  %8 = ptrtoint ptr %f_max to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 33000000, ptr %f_max, align 8
  %lock = getelementptr inbounds %struct.mmc_host, ptr %call1, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @toshsd_probe.__key, i16 noundef signext 3) #6
  tail call fastcc void @toshsd_init(ptr noundef %private.i)
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  %call18 = tail call i32 @request_threaded_irq(i32 noundef %10, ptr noundef nonnull @toshsd_irq, ptr noundef nonnull @toshsd_thread_irq, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %private.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %unmap

if.end21:                                         ; preds = %if.end16
  %call22 = tail call i32 @mmc_add_host(ptr noundef nonnull %call1) #6
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %11 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %resource, align 8
  %13 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %base, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @toshsd_probe.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@toshsd_probe, %if.then28)) #6
          to label %do.end33 [label %if.then28], !srcloc !112

if.then28:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @toshsd_probe.__UNIQUE_ID_ddebug283, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull %base, i32 noundef %15) #6
  br label %do.end33

do.end33:                                         ; preds = %if.then28, %if.end21
  %ignore_children.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 12, i32 15
  %16 = ptrtoint ptr %ignore_children.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load.i = load i16, ptr %ignore_children.i, align 4
  %bf.set.i = or i16 %bf.load.i, 128
  store i16 %bf.set.i, ptr %ignore_children.i, align 4
  br label %cleanup

unmap:                                            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ioaddr, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %18) #6
  br label %release

release:                                          ; preds = %unmap, %if.end11.release_crit_edge
  %ret.0 = phi i32 [ %call18, %unmap ], [ -12, %if.end11.release_crit_edge ]
  tail call void @pci_release_regions(ptr noundef %pdev) #6
  br label %free

free:                                             ; preds = %release, %if.end4.free_crit_edge
  %ret.1 = phi i32 [ %call8, %if.end4.free_crit_edge ], [ %ret.0, %release ]
  tail call void @mmc_free_host(ptr noundef nonnull %call1) #6
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %err

err:                                              ; preds = %free, %if.end.err_crit_edge
  %ret.2 = phi i32 [ %ret.1, %free ], [ -12, %if.end.err_crit_edge ]
  tail call void @pci_disable_device(ptr noundef %pdev) #6
  br label %cleanup

cleanup:                                          ; preds = %err, %do.end33, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %err ], [ 0, %do.end33 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @toshsd_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mmc = getelementptr inbounds %struct.toshsd_host, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 4
  tail call void @mmc_remove_host(ptr noundef %3) #6
  %ioaddr.i = getelementptr inbounds %struct.toshsd_host, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #6, !srcloc !114
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %7, i32 312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i, i16 0) #6, !srcloc !116
  %8 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %9, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i, i16 0) #6, !srcloc !116
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @pci_write_config_byte(ptr noundef %11, i32 noundef 72, i8 noundef zeroext 0) #6
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call7.i = tail call i32 @pci_write_config_byte(ptr noundef %13, i32 noundef 64, i8 noundef zeroext 0) #6
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %15, ptr noundef %1) #6
  %16 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioaddr.i, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %17) #6
  tail call void @pci_release_regions(ptr noundef %pdev) #6
  %18 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmc, align 4
  tail call void @mmc_free_host(ptr noundef %19) #6
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @pci_disable_device(ptr noundef %pdev) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @toshsd_init(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %call = tail call i32 @pci_write_config_byte(ptr noundef %1, i32 noundef 64, i8 noundef zeroext 31) #6
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %call2 = tail call i32 @pci_write_config_byte(ptr noundef %3, i32 noundef 76, i8 noundef zeroext 2) #6
  %ioaddr = getelementptr inbounds %struct.toshsd_host, ptr %host, i32 0, i32 7
  %4 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 0) #6, !srcloc !116
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 429496000) #6
  %7 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioaddr, align 4
  %add.ptr4 = getelementptr i8, ptr %8, i32 224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4, i16 256) #6, !srcloc !116
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 429496000) #6
  %10 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioaddr, align 4
  %add.ptr6 = getelementptr i8, ptr %11, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr6, i16 0) #6, !srcloc !116
  %12 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr, align 4
  %add.ptr8 = getelementptr i8, ptr %13, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 0) #6, !srcloc !114
  %14 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioaddr, align 4
  %add.ptr10 = getelementptr i8, ptr %15, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 0) #6, !srcloc !114
  %16 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioaddr, align 4
  %add.ptr12 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr12, i16 0) #6, !srcloc !116
  %18 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ioaddr, align 4
  %add.ptr15 = getelementptr i8, ptr %19, i32 312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr15, i16 1) #6, !srcloc !116
  %20 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %host, align 4
  %call17 = tail call i32 @pci_write_config_byte(ptr noundef %21, i32 noundef 250, i8 noundef zeroext 18) #6
  %22 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %host, align 4
  %call19 = tail call i32 @pci_write_config_byte(ptr noundef %23, i32 noundef 254, i8 noundef zeroext -128) #6
  %24 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ioaddr, align 4
  %add.ptr21 = getelementptr i8, ptr %25, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 -486555652) #6, !srcloc !114
  %26 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ioaddr, align 4
  %add.ptr23 = getelementptr i8, ptr %27, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr23, i16 16) #6, !srcloc !116
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @toshsd_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.toshsd_host, ptr %dev_id, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %ioaddr = getelementptr inbounds %struct.toshsd_host, ptr %dev_id, i32 0, i32 7
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 28
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !117
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  %4 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr, align 4
  %add.ptr2 = getelementptr i8, ptr %5, i32 32
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !117
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  %neg = xor i32 %7, -1
  %and = and i32 %3, %neg
  %and4 = and i32 %and, -1082131681
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @toshsd_irq.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@toshsd_irq, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !112

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_id, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @toshsd_irq.__UNIQUE_ID_ddebug279, ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %3, i32 noundef %7) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool8.not = icmp eq i32 %and4, 0
  br i1 %tobool8.not, label %do.end.irq_end_crit_edge, label %if.end10

do.end.irq_end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %irq_end

if.end10:                                         ; preds = %do.end
  %and11 = and i32 %and, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @toshsd_irq.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@toshsd_irq, %if.then26)) #6
          to label %if.then117 [label %if.then26], !srcloc !112

if.then26:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_id, align 4
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @toshsd_irq.__UNIQUE_ID_ddebug280, ptr noundef %dev28, ptr noundef nonnull @.str.14) #6
  br label %if.then117

if.else:                                          ; preds = %if.end10
  %and32 = and i32 %and, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.else40, label %if.then34

if.then34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_id, align 4
  %dev39 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39, ptr noundef nonnull @.str.15) #9
  br label %if.then117

if.else40:                                        ; preds = %if.else
  %and41 = and i32 %and, -2143485952
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.else40.if.end130_crit_edge, label %do.end46

if.else40.if.end130_crit_edge:                    ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end130

do.end46:                                         ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_id, align 4
  %dev48 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %and)
  %tobool50.not = icmp sgt i32 %and, -1
  %cond = select i1 %tobool50.not, ptr @.str.20, ptr @.str.19
  %and51 = and i32 %and, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  %cond53 = select i1 %tobool52.not, ptr @.str.20, ptr @.str.21
  %and54 = and i32 %and, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  %cond56 = select i1 %tobool55.not, ptr @.str.20, ptr @.str.22
  %and57 = and i32 %and, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  %cond59 = select i1 %tobool58.not, ptr @.str.20, ptr @.str.23
  %and60 = and i32 %and, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  %cond62 = select i1 %tobool61.not, ptr @.str.20, ptr @.str.24
  %and63 = and i32 %and, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  %cond65 = select i1 %tobool64.not, ptr @.str.20, ptr @.str.25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev48, ptr noundef nonnull @.str.17, ptr noundef nonnull %cond, ptr noundef nonnull %cond53, ptr noundef nonnull %cond56, ptr noundef nonnull %cond59, ptr noundef nonnull %cond62, ptr noundef nonnull %cond65) #9
  %16 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioaddr, align 4
  %add.ptr67 = getelementptr i8, ptr %17, i32 44
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr67) #6, !srcloc !117
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  %20 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_id, align 4
  %dev73 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %and74 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  %cond76 = select i1 %tobool75.not, ptr @.str.20, ptr @.str.29
  %and77 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  %cond79 = select i1 %tobool78.not, ptr @.str.20, ptr @.str.30
  %and80 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  %cond82 = select i1 %tobool81.not, ptr @.str.20, ptr @.str.30
  %and83 = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  %cond85 = select i1 %tobool84.not, ptr @.str.20, ptr @.str.31
  %and86 = and i32 %19, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  %cond88 = select i1 %tobool87.not, ptr @.str.20, ptr @.str.32
  %and89 = and i32 %19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  %cond91 = select i1 %tobool90.not, ptr @.str.20, ptr @.str.33
  %and92 = and i32 %19, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  %cond94 = select i1 %tobool93.not, ptr @.str.20, ptr @.str.33
  %and95 = and i32 %19, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  %cond97 = select i1 %tobool96.not, ptr @.str.20, ptr @.str.34
  %and98 = and i32 %19, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  %cond100 = select i1 %tobool99.not, ptr @.str.20, ptr @.str.35
  %and101 = and i32 %19, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  %cond103 = select i1 %tobool102.not, ptr @.str.20, ptr @.str.36
  %and104 = and i32 %19, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  %cond106 = select i1 %tobool105.not, ptr @.str.20, ptr @.str.37
  %and107 = and i32 %19, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  %cond109 = select i1 %tobool108.not, ptr @.str.20, ptr @.str.38
  %and110 = and i32 %19, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  %cond112 = select i1 %tobool111.not, ptr @.str.20, ptr @.str.39
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev73, ptr noundef nonnull @.str.27, ptr noundef nonnull %cond76, ptr noundef nonnull %cond79, ptr noundef nonnull %cond82, ptr noundef nonnull %cond85, ptr noundef nonnull %cond88, ptr noundef nonnull %cond91, ptr noundef nonnull %cond94, ptr noundef nonnull %cond97, ptr noundef nonnull %cond100, ptr noundef nonnull %cond103, ptr noundef nonnull %cond106, ptr noundef nonnull %cond109, ptr noundef nonnull %cond112) #9
  br label %if.then117

if.then117:                                       ; preds = %do.end46, %if.then34, %if.then26, %if.then13
  %error.0230 = phi i32 [ -110, %if.then13 ], [ -110, %if.then26 ], [ -5, %do.end46 ], [ -84, %if.then34 ]
  %cmd = getelementptr inbounds %struct.toshsd_host, ptr %dev_id, i32 0, i32 4
  %22 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cmd, align 4
  %tobool118.not = icmp eq ptr %23, null
  br i1 %tobool118.not, label %if.then117.if.end122_crit_edge, label %if.then119

if.then117.if.end122_crit_edge:                   ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end122

if.then119:                                       ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #8
  %error121 = getelementptr inbounds %struct.mmc_command, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %error121 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %error.0230, ptr %error121, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.then119, %if.then117.if.end122_crit_edge
  br i1 %tobool12.not, label %if.else127, label %if.then123

if.then123:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #8
  %and124 = and i32 %3, -4194306
  %25 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ioaddr, align 4
  %add.ptr126 = getelementptr i8, ptr %26, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %27 = tail call i32 @llvm.bswap.i32(i32 %and124) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr126, i32 %27) #6, !srcloc !114
  br label %if.end130

if.else127:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @toshsd_init(ptr noundef %dev_id)
  %mmc = getelementptr inbounds %struct.toshsd_host, ptr %dev_id, i32 0, i32 1
  %28 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmc, align 4
  %ios = getelementptr inbounds %struct.mmc_host, ptr %29, i32 0, i32 28
  tail call fastcc void @__toshsd_set_ios(ptr noundef %29, ptr noundef %ios)
  br label %irq_end

if.end130:                                        ; preds = %if.then123, %if.else40.if.end130_crit_edge
  %and131 = and i32 %and, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %if.end130.if.end142_crit_edge, label %if.then133

if.end130.if.end142_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end142

if.then133:                                       ; preds = %if.end130
  %and134 = and i32 %3, -25
  %30 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ioaddr, align 4
  %add.ptr136 = getelementptr i8, ptr %31, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %32 = tail call i32 @llvm.bswap.i32(i32 %and134) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr136, i32 %32) #6, !srcloc !114
  %and137 = and i32 %and, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %if.then133.if.end140_crit_edge, label %if.then139

if.then133.if.end140_crit_edge:                   ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end140

if.then139:                                       ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @toshsd_init(ptr noundef %dev_id)
  br label %if.end140

if.end140:                                        ; preds = %if.then139, %if.then133.if.end140_crit_edge
  %mmc141 = getelementptr inbounds %struct.toshsd_host, ptr %dev_id, i32 0, i32 1
  %33 = ptrtoint ptr %mmc141 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmc141, align 4
  tail call void @mmc_detect_change(ptr noundef %34, i32 noundef 1) #6
  br label %if.end142

if.end142:                                        ; preds = %if.end140, %if.end130.if.end142_crit_edge
  %and143 = and i32 %and, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %if.end149, label %if.then145

if.then145:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #8
  %and146 = and i32 %3, -50331649
  %35 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ioaddr, align 4
  %add.ptr148 = getelementptr i8, ptr %36, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %37 = tail call i32 @llvm.bswap.i32(i32 %and146) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr148, i32 %37) #6, !srcloc !114
  br label %irq_end

if.end149:                                        ; preds = %if.end142
  %and150 = and i32 %and, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  br i1 %tobool151.not, label %if.end149.if.end156_crit_edge, label %if.then152

if.end149.if.end156_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end156

if.then152:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #8
  %and153 = and i32 %3, -2
  %38 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ioaddr, align 4
  %add.ptr155 = getelementptr i8, ptr %39, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %40 = tail call i32 @llvm.bswap.i32(i32 %and153) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr155, i32 %40) #6, !srcloc !114
  tail call fastcc void @toshsd_cmd_irq(ptr noundef %dev_id)
  br label %if.end156

if.end156:                                        ; preds = %if.then152, %if.end149.if.end156_crit_edge
  %and157 = and i32 %and, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and157)
  %tobool158.not = icmp eq i32 %and157, 0
  br i1 %tobool158.not, label %if.end156.irq_end_crit_edge, label %if.then159

if.end156.irq_end_crit_edge:                      ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #8
  br label %irq_end

if.then159:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #8
  %and160 = and i32 %3, -5
  %41 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ioaddr, align 4
  %add.ptr162 = getelementptr i8, ptr %42, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %43 = tail call i32 @llvm.bswap.i32(i32 %and160) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr162, i32 %43) #6, !srcloc !114
  tail call fastcc void @toshsd_data_end_irq(ptr noundef %dev_id)
  br label %irq_end

irq_end:                                          ; preds = %if.then159, %if.end156.irq_end_crit_edge, %if.then145, %if.else127, %do.end.irq_end_crit_edge
  %ret.0 = phi i32 [ 2, %if.then145 ], [ 1, %if.then159 ], [ 1, %if.end156.irq_end_crit_edge ], [ 1, %if.else127 ], [ 0, %do.end.irq_end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @toshsd_thread_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.toshsd_host, ptr %dev_id, i32 0, i32 5
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %sg_miter2 = getelementptr inbounds %struct.toshsd_host, ptr %dev_id, i32 0, i32 6
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %do.body8

do.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_id, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.47) #9
  %cmd = getelementptr inbounds %struct.toshsd_host, ptr %dev_id, i32 0, i32 4
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %do.end.cleanup_crit_edge, label %if.then4

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %error = getelementptr inbounds %struct.mmc_command, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -5, ptr %error, align 4
  %mrq1.i = getelementptr inbounds %struct.toshsd_host, ptr %dev_id, i32 0, i32 3
  %7 = ptrtoint ptr %mrq1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mrq1.i, align 4
  store ptr null, ptr %mrq1.i, align 4
  %9 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %cmd, align 4
  %10 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %data1, align 4
  %ioaddr.i.i = getelementptr inbounds %struct.toshsd_host, ptr %dev_id, i32 0, i32 7
  %11 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioaddr.i.i, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %12, i32 318
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i.i, i16 0) #6, !srcloc !116
  %mmc.i = getelementptr inbounds %struct.toshsd_host, ptr %dev_id, i32 0, i32 1
  %13 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmc.i, align 4
  tail call void @mmc_request_done(ptr noundef %14, ptr noundef %8) #6
  br label %cleanup

do.body8:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.toshsd_host, ptr %dev_id, i32 0, i32 2
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %call14 = tail call zeroext i1 @sg_miter_next(ptr noundef %sg_miter2) #6
  br i1 %call14, label %if.end16, label %do.body8.done_crit_edge

do.body8.done_crit_edge:                          ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end16:                                         ; preds = %do.body8
  %addr = getelementptr inbounds %struct.toshsd_host, ptr %dev_id, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %addr, align 4
  %length = getelementptr inbounds %struct.toshsd_host, ptr %dev_id, i32 0, i32 6, i32 2
  %17 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %blksz, align 4
  %21 = tail call i32 @llvm.umin.i32(i32 %18, i32 %20)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @toshsd_thread_irq.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@toshsd_thread_irq, %if.then28)) #6
          to label %do.end34 [label %if.then28], !srcloc !112

if.then28:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_id, align 4
  %dev30 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %flags31 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %flags31 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags31, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @toshsd_thread_irq.__UNIQUE_ID_ddebug276, ptr noundef %dev30, ptr noundef nonnull @.str.49, i32 noundef %21, i32 noundef %25) #6
  br label %do.end34

do.end34:                                         ; preds = %if.then28, %if.end16
  %flags35 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %26 = ptrtoint ptr %flags35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags35, align 4
  %and = and i32 %27, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  %ioaddr38 = getelementptr inbounds %struct.toshsd_host, ptr %dev_id, i32 0, i32 7
  %28 = ptrtoint ptr %ioaddr38 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ioaddr38, align 4
  %add.ptr39 = getelementptr i8, ptr %29, i32 48
  %shr40 = ashr i32 %21, 2
  br i1 %tobool36.not, label %if.else, label %if.then37

if.then37:                                        ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__raw_readsl(ptr noundef %add.ptr39, ptr noundef %16, i32 noundef %shr40) #6
  br label %if.end41

if.else:                                          ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__raw_writesl(ptr noundef %add.ptr39, ptr noundef %16, i32 noundef %shr40) #6
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then37
  %consumed = getelementptr inbounds %struct.toshsd_host, ptr %dev_id, i32 0, i32 6, i32 3
  %30 = ptrtoint ptr %consumed to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %21, ptr %consumed, align 4
  tail call void @sg_miter_stop(ptr noundef %sg_miter2) #6
  br label %done

done:                                             ; preds = %if.end41, %do.body8.done_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #6
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then4, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %done ], [ 0, %if.then4 ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @toshsd_request(ptr noundef %mmc, ptr noundef %mrq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %ioaddr = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 1
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 28
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #6, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  %3 = and i16 %2, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.then, label %do.body2

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd, align 4
  %error = getelementptr inbounds %struct.mmc_command, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -123, ptr %error, align 4
  tail call void @mmc_request_done(ptr noundef %mmc, ptr noundef %mrq) #6
  br label %cleanup

do.body2:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %mrq8 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 2
  %7 = ptrtoint ptr %mrq8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mrq8, align 4
  %cmp9.not = icmp eq ptr %8, null
  br i1 %cmp9.not, label %do.body2.if.end28_crit_edge, label %do.end22, !prof !121

do.body2.if.end28_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

do.end22:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 510, i32 noundef 9, ptr noundef null) #6
  br label %if.end28

if.end28:                                         ; preds = %do.end22, %do.body2.if.end28_crit_edge
  %9 = ptrtoint ptr %mrq8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %mrq, ptr %mrq8, align 4
  %data = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %tobool37.not = icmp eq ptr %11, null
  br i1 %tobool37.not, label %if.end28.if.end40_crit_edge, label %if.then38

if.end28.if.end40_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then38:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @toshsd_start_data(ptr noundef %private.i, ptr noundef nonnull %11)
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end28.if.end40_crit_edge
  %12 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr, align 4
  %add.ptr1.i = getelementptr i8, ptr %13, i32 318
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i, i16 256) #6, !srcloc !116
  %cmd41 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %14 = ptrtoint ptr %cmd41 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cmd41, align 4
  tail call fastcc void @toshsd_start_cmd(ptr noundef %private.i, ptr noundef %15)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @toshsd_set_ios(ptr noundef %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  tail call fastcc void @__toshsd_set_ios(ptr noundef %mmc, ptr noundef %ios)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @toshsd_get_ro(ptr nocapture noundef readonly %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 1
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 28
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #6, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  %3 = xor i16 %2, -1
  %4 = lshr i16 %3, 15
  %5 = zext i16 %4 to i32
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @toshsd_get_cd(ptr nocapture noundef readonly %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 1
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 28
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #6, !srcloc !119
  %3 = lshr i16 %2, 13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  %.lobit = and i16 %3, 1
  %4 = zext i16 %.lobit to i32
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @toshsd_start_data(ptr noundef %host, ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @toshsd_start_data.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@toshsd_start_data, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !112

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blksz, align 4
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 3
  %4 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %blocks, align 4
  %sg = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 12
  %6 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sg, align 4
  %offset = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @toshsd_start_data.__UNIQUE_ID_ddebug282, ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %3, i32 noundef %5, i32 noundef %9) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %data3 = getelementptr inbounds %struct.toshsd_host, ptr %host, i32 0, i32 5
  %10 = ptrtoint ptr %data3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %data, ptr %data3, align 4
  %flags4 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 6
  %11 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags4, align 4
  %and = and i32 %12, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %. = select i1 %tobool5.not, i32 5, i32 3
  %sg_miter = getelementptr inbounds %struct.toshsd_host, ptr %host, i32 0, i32 6
  %sg9 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 12
  %13 = ptrtoint ptr %sg9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sg9, align 4
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 10
  %15 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sg_len, align 4
  tail call void @sg_miter_start(ptr noundef %sg_miter, ptr noundef %14, i32 noundef %16, i32 noundef %.) #6
  %blocks10 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 3
  %17 = ptrtoint ptr %blocks10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %blocks10, align 4
  %conv = trunc i32 %18 to i16
  %ioaddr = getelementptr inbounds %struct.toshsd_host, ptr %host, i32 0, i32 7
  %19 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  %21 = tail call i16 @llvm.bswap.i16(i16 %conv) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %21) #6, !srcloc !116
  %blksz11 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 2
  %22 = ptrtoint ptr %blksz11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %blksz11, align 4
  %conv12 = trunc i32 %23 to i16
  %24 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ioaddr, align 4
  %add.ptr14 = getelementptr i8, ptr %25, i32 38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  %26 = tail call i16 @llvm.bswap.i16(i16 %conv12) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr14, i16 %26) #6, !srcloc !116
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @toshsd_start_cmd(ptr nocapture noundef %host, ptr noundef %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.toshsd_host, ptr %host, i32 0, i32 5
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmd, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @toshsd_start_cmd.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@toshsd_start_cmd, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !112

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmd, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @toshsd_start_cmd.__UNIQUE_ID_ddebug281, ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %7) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %9)
  %cmp = icmp eq i32 %9, 12
  br i1 %cmp, label %if.then6, label %if.end14

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %ioaddr = getelementptr inbounds %struct.toshsd_host, ptr %host, i32 0, i32 7
  %10 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 256) #6, !srcloc !116
  %12 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cmd, align 4
  %resp = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 2
  %14 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %resp, align 4
  %arrayidx9 = getelementptr %struct.mmc_command, ptr %cmd, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %arrayidx9, align 4
  %arrayidx11 = getelementptr %struct.mmc_command, ptr %cmd, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %arrayidx11, align 4
  %arrayidx13 = getelementptr %struct.mmc_command, ptr %cmd, i32 0, i32 2, i32 3
  %17 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %arrayidx13, align 4
  %mrq1.i = getelementptr inbounds %struct.toshsd_host, ptr %host, i32 0, i32 3
  %18 = ptrtoint ptr %mrq1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mrq1.i, align 4
  store ptr null, ptr %mrq1.i, align 4
  %cmd.i = getelementptr inbounds %struct.toshsd_host, ptr %host, i32 0, i32 4
  %20 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %cmd.i, align 4
  %21 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %data1, align 4
  %22 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ioaddr, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %23, i32 318
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i.i, i16 0) #6, !srcloc !116
  %mmc.i = getelementptr inbounds %struct.toshsd_host, ptr %host, i32 0, i32 1
  %24 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmc.i, align 4
  tail call void @mmc_request_done(ptr noundef %25, ptr noundef %19) #6
  br label %cleanup

if.end14:                                         ; preds = %do.end
  %flags = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 4
  %and = and i32 %27, 31
  %28 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %do.end25 [
    i32 0, label %sw.bb
    i32 21, label %sw.bb15
    i32 29, label %sw.bb17
    i32 7, label %sw.bb19
    i32 1, label %sw.bb21
  ]

sw.bb:                                            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %3, 768
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %or16 = or i32 %3, 1024
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %or18 = or i32 %3, 1280
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %or20 = or i32 %3, 1536
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %or22 = or i32 %3, 1792
  br label %sw.epilog

do.end25:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %host, align 4
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27, ptr noundef nonnull @.str.9, i32 noundef %and) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end25, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb
  %c.0 = phi i32 [ %3, %do.end25 ], [ %or22, %sw.bb21 ], [ %or20, %sw.bb19 ], [ %or18, %sw.bb17 ], [ %or16, %sw.bb15 ], [ %or, %sw.bb ]
  %cmd30 = getelementptr inbounds %struct.toshsd_host, ptr %host, i32 0, i32 4
  %31 = ptrtoint ptr %cmd30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %cmd, ptr %cmd30, align 4
  %32 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 55, i32 %33)
  %cmp32 = icmp eq i32 %33, 55
  %or34 = or i32 %c.0, 64
  %spec.select = select i1 %cmp32, i32 %or34, i32 %c.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp37 = icmp eq i32 %33, 0
  %or39 = or i32 %spec.select, 768
  %c.2 = select i1 %cmp37, i32 %or39, i32 %spec.select
  %tobool41.not = icmp eq ptr %1, null
  br i1 %tobool41.not, label %sw.epilog.if.end56_crit_edge, label %if.then42

sw.epilog.if.end56_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then42:                                        ; preds = %sw.epilog
  %or43 = or i32 %c.2, 2048
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp44 = icmp ugt i32 %35, 1
  br i1 %cmp44, label %if.then45, label %if.then42.if.end49_crit_edge

if.then42.if.end49_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then45:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  %ioaddr46 = getelementptr inbounds %struct.toshsd_host, ptr %host, i32 0, i32 7
  %36 = ptrtoint ptr %ioaddr46 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ioaddr46, align 4
  %add.ptr47 = getelementptr i8, ptr %37, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr47, i16 1) #6, !srcloc !116
  %or48 = or i32 %c.2, 10240
  br label %if.end49

if.end49:                                         ; preds = %if.then45, %if.then42.if.end49_crit_edge
  %c.3 = phi i32 [ %or48, %if.then45 ], [ %or43, %if.then42.if.end49_crit_edge ]
  %flags50 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %38 = ptrtoint ptr %flags50 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags50, align 4
  %and51 = shl i32 %39, 3
  %40 = and i32 %and51, 4096
  %41 = or i32 %40, %c.3
  br label %if.end56

if.end56:                                         ; preds = %if.end49, %sw.epilog.if.end56_crit_edge
  %c.4 = phi i32 [ %c.2, %sw.epilog.if.end56_crit_edge ], [ %41, %if.end49 ]
  %arg = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %42 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arg, align 4
  %ioaddr57 = getelementptr inbounds %struct.toshsd_host, ptr %host, i32 0, i32 7
  %44 = ptrtoint ptr %ioaddr57 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ioaddr57, align 4
  %add.ptr58 = getelementptr i8, ptr %45, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %46 = tail call i32 @llvm.bswap.i32(i32 %43) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %46) #6, !srcloc !114
  %conv = trunc i32 %c.4 to i16
  %47 = ptrtoint ptr %ioaddr57 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ioaddr57, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  %49 = tail call i16 @llvm.bswap.i16(i16 %conv) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %48, i16 %49) #6, !srcloc !116
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.then6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__toshsd_set_ios(ptr nocapture noundef readonly %mmc, ptr nocapture noundef readonly %ios) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %0 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else18, label %entry.while.cond_crit_edge

entry.while.cond_crit_edge:                       ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry.while.cond_crit_edge
  %div.0 = phi i32 [ %mul, %while.cond.while.cond_crit_edge ], [ 1, %entry.while.cond_crit_edge ]
  %div2 = sdiv i32 33000000, %div.0
  %cmp = icmp ult i32 %1, %div2
  %mul = shl i32 %div.0, 1
  br i1 %cmp, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div.0)
  %cmp3 = icmp eq i32 %div.0, 1
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %call6 = tail call i32 @pci_write_config_byte(ptr noundef %3, i32 noundef 66, i8 noundef zeroext 1) #6
  br label %if.end

if.else:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = lshr i32 %div.0, 2
  %5 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private.i, align 4
  %call10 = tail call i32 @pci_write_config_byte(ptr noundef %6, i32 noundef 66, i8 noundef zeroext 0) #6
  %phi.cast = trunc i32 %4 to i16
  %phi.bo = or i16 %phi.cast, 256
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  %clk.0 = phi i16 [ -32512, %if.then5 ], [ %phi.bo, %if.else ]
  %ioaddr = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 1
  %7 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  %9 = tail call i16 @llvm.bswap.i16(i16 %clk.0) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %9) #6, !srcloc !116
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #6
  br label %if.end21

if.else18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ioaddr19 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 1
  %20 = ptrtoint ptr %ioaddr19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioaddr19, align 4
  %add.ptr20 = getelementptr i8, ptr %21, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr20, i16 0) #6, !srcloc !116
  br label %if.end21

if.end21:                                         ; preds = %if.else18, %if.end
  %power_mode = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 5
  %22 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %power_mode, align 2
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.50)
  switch i8 %23, label %if.end21.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 2, label %sw.bb25
  ]

if.end21.sw.epilog_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %private.i, align 4
  %call24 = tail call i32 @pci_write_config_byte(ptr noundef %26, i32 noundef 72, i8 noundef zeroext 0) #6
  br label %sw.epilog.sink.split

sw.bb25:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %private.i, align 4
  %call27 = tail call i32 @pci_write_config_byte(ptr noundef %28, i32 noundef 72, i8 noundef zeroext 8) #6
  %29 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %private.i, align 4
  %call29 = tail call i32 @pci_write_config_byte(ptr noundef %30, i32 noundef 73, i8 noundef zeroext 2) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748000) #6
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb25, %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748000) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end21.sw.epilog_crit_edge
  %bus_width = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 6
  %51 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bus_width, align 1
  %53 = zext i8 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %52, label %sw.epilog.sw.epilog43_crit_edge [
    i8 0, label %sw.bb37
    i8 2, label %sw.bb40
  ]

sw.epilog.sw.epilog43_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog43

sw.bb37:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %ioaddr38 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 1
  %54 = ptrtoint ptr %ioaddr38 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ioaddr38, align 4
  %add.ptr39 = getelementptr i8, ptr %55, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr39, i16 -4416) #6, !srcloc !116
  br label %sw.epilog43

sw.bb40:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %ioaddr41 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 1
  %56 = ptrtoint ptr %ioaddr41 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ioaddr41, align 4
  %add.ptr42 = getelementptr i8, ptr %57, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr42, i16 -4544) #6, !srcloc !116
  br label %sw.epilog43

sw.epilog43:                                      ; preds = %sw.bb40, %sw.bb37, %sw.epilog.sw.epilog43_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_detect_change(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @toshsd_cmd_irq(ptr nocapture noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd1 = getelementptr inbounds %struct.toshsd_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.40) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %resp = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %cmd1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %cmd1, align 4
  %flags = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %7 = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %.not = icmp eq i32 %7, 3
  br i1 %.not, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.mmc_command, ptr %1, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %arrayidx, align 1
  %ioaddr = getelementptr inbounds %struct.toshsd_host, ptr %host, i32 0, i32 7
  %9 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 12
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #6, !srcloc !119
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  %conv10 = trunc i16 %12 to i8
  %arrayidx11 = getelementptr i8, ptr %resp, i32 13
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv10, ptr %arrayidx11, align 1
  %14 = lshr i16 %12, 8
  %conv13 = trunc i16 %14 to i8
  %arrayidx14 = getelementptr i8, ptr %resp, i32 14
  %15 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv13, ptr %arrayidx14, align 1
  %16 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioaddr, align 4
  %add.ptr16 = getelementptr i8, ptr %17, i32 14
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr16) #6, !srcloc !119
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  %conv20 = trunc i16 %19 to i8
  %arrayidx21 = getelementptr i8, ptr %resp, i32 15
  %20 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv20, ptr %arrayidx21, align 1
  %21 = lshr i16 %19, 8
  %conv24 = trunc i16 %21 to i8
  %arrayidx25 = getelementptr %struct.mmc_command, ptr %1, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv24, ptr %arrayidx25, align 1
  %23 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioaddr, align 4
  %add.ptr27 = getelementptr i8, ptr %24, i32 16
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr27) #6, !srcloc !119
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  %conv31 = trunc i16 %26 to i8
  %arrayidx32 = getelementptr i8, ptr %resp, i32 9
  %27 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv31, ptr %arrayidx32, align 1
  %28 = lshr i16 %26, 8
  %conv35 = trunc i16 %28 to i8
  %arrayidx36 = getelementptr i8, ptr %resp, i32 10
  %29 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv35, ptr %arrayidx36, align 1
  %30 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ioaddr, align 4
  %add.ptr38 = getelementptr i8, ptr %31, i32 18
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr38) #6, !srcloc !119
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  %conv42 = trunc i16 %33 to i8
  %arrayidx43 = getelementptr i8, ptr %resp, i32 11
  %34 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv42, ptr %arrayidx43, align 1
  %35 = lshr i16 %33, 8
  %conv46 = trunc i16 %35 to i8
  %arrayidx47 = getelementptr %struct.mmc_command, ptr %1, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv46, ptr %arrayidx47, align 1
  %37 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ioaddr, align 4
  %add.ptr49 = getelementptr i8, ptr %38, i32 20
  %39 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr49) #6, !srcloc !119
  %40 = tail call i16 @llvm.bswap.i16(i16 %39) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  %conv53 = trunc i16 %40 to i8
  %arrayidx54 = getelementptr i8, ptr %resp, i32 5
  %41 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv53, ptr %arrayidx54, align 1
  %42 = lshr i16 %40, 8
  %conv57 = trunc i16 %42 to i8
  %arrayidx58 = getelementptr i8, ptr %resp, i32 6
  %43 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv57, ptr %arrayidx58, align 1
  %44 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ioaddr, align 4
  %add.ptr60 = getelementptr i8, ptr %45, i32 22
  %46 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr60) #6, !srcloc !119
  %47 = tail call i16 @llvm.bswap.i16(i16 %46) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  %conv64 = trunc i16 %47 to i8
  %arrayidx65 = getelementptr i8, ptr %resp, i32 7
  %48 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv64, ptr %arrayidx65, align 1
  %49 = lshr i16 %47, 8
  %conv68 = trunc i16 %49 to i8
  %50 = ptrtoint ptr %resp to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv68, ptr %resp, align 1
  %51 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ioaddr, align 4
  %add.ptr71 = getelementptr i8, ptr %52, i32 24
  %53 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr71) #6, !srcloc !119
  %54 = tail call i16 @llvm.bswap.i16(i16 %53) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  %conv75 = trunc i16 %54 to i8
  %arrayidx76 = getelementptr i8, ptr %resp, i32 1
  %55 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv75, ptr %arrayidx76, align 1
  %56 = lshr i16 %54, 8
  %conv79 = trunc i16 %56 to i8
  %arrayidx80 = getelementptr i8, ptr %resp, i32 2
  %57 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv79, ptr %arrayidx80, align 1
  %58 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ioaddr, align 4
  %add.ptr82 = getelementptr i8, ptr %59, i32 26
  %60 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr82) #6, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  %extract196 = lshr i16 %60, 8
  %extract.t197 = trunc i16 %extract196 to i8
  br label %do.body116.sink.split

if.else:                                          ; preds = %if.end
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.else.do.body116_crit_edge, label %if.then91

if.else.do.body116_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body116

if.then91:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %ioaddr92 = getelementptr inbounds %struct.toshsd_host, ptr %host, i32 0, i32 7
  %61 = ptrtoint ptr %ioaddr92 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ioaddr92, align 4
  %add.ptr93 = getelementptr i8, ptr %62, i32 12
  %63 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr93) #6, !srcloc !119
  %64 = tail call i16 @llvm.bswap.i16(i16 %63) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  %conv97 = trunc i16 %64 to i8
  %65 = ptrtoint ptr %resp to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv97, ptr %resp, align 1
  %66 = lshr i16 %64, 8
  %conv101 = trunc i16 %66 to i8
  %arrayidx102 = getelementptr i8, ptr %resp, i32 1
  %67 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv101, ptr %arrayidx102, align 1
  %68 = ptrtoint ptr %ioaddr92 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ioaddr92, align 4
  %add.ptr104 = getelementptr i8, ptr %69, i32 14
  %70 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr104) #6, !srcloc !119
  %71 = tail call i16 @llvm.bswap.i16(i16 %70) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  %conv108 = trunc i16 %71 to i8
  %arrayidx109 = getelementptr i8, ptr %resp, i32 2
  %72 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv108, ptr %arrayidx109, align 1
  %extract = lshr i16 %71, 8
  %extract.t = trunc i16 %extract to i8
  br label %do.body116.sink.split

do.body116.sink.split:                            ; preds = %if.then91, %if.then8
  %.sink.off8 = phi i8 [ %extract.t, %if.then91 ], [ %extract.t197, %if.then8 ]
  %arrayidx87 = getelementptr i8, ptr %resp, i32 3
  %73 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %.sink.off8, ptr %arrayidx87, align 1
  br label %do.body116

do.body116:                                       ; preds = %do.body116.sink.split, %if.else.do.body116_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @toshsd_cmd_irq.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@toshsd_cmd_irq, %if.then121)) #6
          to label %do.end127 [label %if.then121], !srcloc !112

if.then121:                                       ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %host, align 4
  %dev123 = getelementptr inbounds %struct.pci_dev, ptr %75, i32 0, i32 44
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %1, align 4
  %error = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  %78 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %error, align 4
  %80 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %flags, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @toshsd_cmd_irq.__UNIQUE_ID_ddebug277, ptr noundef %dev123, ptr noundef nonnull @.str.43, i32 noundef %77, i32 noundef %79, i32 noundef %81) #6
  br label %do.end127

do.end127:                                        ; preds = %if.then121, %do.body116
  %data128 = getelementptr inbounds %struct.toshsd_host, ptr %host, i32 0, i32 5
  %82 = ptrtoint ptr %data128 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data128, align 4
  %tobool129.not = icmp eq ptr %83, null
  br i1 %tobool129.not, label %if.end131, label %do.end127.cleanup_crit_edge

do.end127.cleanup_crit_edge:                      ; preds = %do.end127
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end131:                                        ; preds = %do.end127
  call void @__sanitizer_cov_trace_pc() #8
  %mrq1.i = getelementptr inbounds %struct.toshsd_host, ptr %host, i32 0, i32 3
  %84 = ptrtoint ptr %mrq1.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mrq1.i, align 4
  store ptr null, ptr %mrq1.i, align 4
  %86 = ptrtoint ptr %cmd1 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %cmd1, align 4
  %87 = ptrtoint ptr %data128 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %data128, align 4
  %ioaddr.i.i = getelementptr inbounds %struct.toshsd_host, ptr %host, i32 0, i32 7
  %88 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ioaddr.i.i, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %89, i32 318
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i.i, i16 0) #6, !srcloc !116
  %mmc.i = getelementptr inbounds %struct.toshsd_host, ptr %host, i32 0, i32 1
  %90 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mmc.i, align 4
  tail call void @mmc_request_done(ptr noundef %91, ptr noundef %85) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end131, %do.end127.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @toshsd_data_end_irq(ptr nocapture noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.toshsd_host, ptr %host, i32 0, i32 5
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  store ptr null, ptr %data1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.44) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %error = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then3, label %if.end.do.body6_crit_edge

if.end.do.body6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %blocks, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %blksz, align 4
  %mul = mul i32 %9, %7
  br label %do.body6

do.body6:                                         ; preds = %if.then3, %if.end.do.body6_crit_edge
  %.sink = phi i32 [ %mul, %if.then3 ], [ 0, %if.end.do.body6_crit_edge ]
  %10 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %10, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @toshsd_data_end_irq.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@toshsd_data_end_irq, %if.then10)) #6
          to label %do.end16 [label %if.then10], !srcloc !112

if.then10:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host, align 4
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @toshsd_data_end_irq.__UNIQUE_ID_ddebug278, ptr noundef %dev12, ptr noundef nonnull @.str.46, i32 noundef %15) #6
  br label %do.end16

do.end16:                                         ; preds = %if.then10, %do.body6
  %ioaddr = getelementptr inbounds %struct.toshsd_host, ptr %host, i32 0, i32 7
  %16 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 0) #6, !srcloc !116
  %mrq1.i = getelementptr inbounds %struct.toshsd_host, ptr %host, i32 0, i32 3
  %18 = ptrtoint ptr %mrq1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mrq1.i, align 4
  store ptr null, ptr %mrq1.i, align 4
  %cmd.i = getelementptr inbounds %struct.toshsd_host, ptr %host, i32 0, i32 4
  %20 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %cmd.i, align 4
  %21 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %data1, align 4
  %22 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ioaddr, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %23, i32 318
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i.i, i16 0) #6, !srcloc !116
  %mmc.i = getelementptr inbounds %struct.toshsd_host, ptr %host, i32 0, i32 1
  %24 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmc.i, align 4
  tail call void @mmc_request_done(ptr noundef %25, ptr noundef %19) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @toshsd_pm_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ioaddr.i = getelementptr inbounds %struct.toshsd_host, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #6, !srcloc !114
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %5, i32 312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i, i16 0) #6, !srcloc !116
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %7, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i, i16 0) #6, !srcloc !116
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @pci_write_config_byte(ptr noundef %9, i32 noundef 72, i8 noundef zeroext 0) #6
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call7.i = tail call i32 @pci_write_config_byte(ptr noundef %11, i32 noundef 64, i8 noundef zeroext 0) #6
  %call1 = tail call i32 @pci_save_state(ptr noundef %add.ptr) #6
  %call2 = tail call i32 @pci_enable_wake(ptr noundef %add.ptr, i32 noundef 3, i1 noundef zeroext false) #6
  tail call void @pci_disable_device(ptr noundef %add.ptr) #6
  %call3 = tail call i32 @pci_set_power_state(ptr noundef %add.ptr, i32 noundef 3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @toshsd_pm_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @pci_set_power_state(ptr noundef %add.ptr, i32 noundef 0) #6
  tail call void @pci_restore_state(ptr noundef %add.ptr) #6
  %call2 = tail call i32 @pci_enable_device(ptr noundef %add.ptr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @toshsd_init(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_wake(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !18, !20, !21, !22, !23, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !39, !41, !42, !43, !45, !46, !48, !49, !50, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !78, !79, !80, !81, !82, !84, !85, !87, !88, !89, !90, !92, !93, !95, !96, !97, !98, !100, !101}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @__initcall__kmod_toshsd__284_701_toshsd_driver_init6, !1, !"__initcall__kmod_toshsd__284_701_toshsd_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/toshsd.c", i32 701, i32 1}
!2 = !{ptr @__exitcall_toshsd_driver_exit, !1, !"__exitcall_toshsd_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author285, !4, !"__UNIQUE_ID_author285", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/toshsd.c", i32 703, i32 1}
!5 = !{ptr @__UNIQUE_ID_description286, !6, !"__UNIQUE_ID_description286", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/toshsd.c", i32 704, i32 1}
!7 = !{ptr @__UNIQUE_ID_file287, !8, !"__UNIQUE_ID_file287", i1 false, i1 false}
!8 = !{!"../drivers/mmc/host/toshsd.c", i32 705, i32 1}
!9 = !{ptr @__UNIQUE_ID_license288, !8, !"__UNIQUE_ID_license288", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @toshsd_driver, !12, !"toshsd_driver", i1 false, i1 false}
!12 = !{!"../drivers/mmc/host/toshsd.c", i32 693, i32 26}
!13 = !{ptr @pci_ids, !14, !"pci_ids", i1 false, i1 false}
!14 = !{!"../drivers/mmc/host/toshsd.c", i32 28, i32 35}
!15 = !{ptr @toshsd_probe.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/mmc/host/toshsd.c", i32 645, i32 2}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mmc/host/toshsd.c", i32 657, i32 2}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @toshsd_probe.__UNIQUE_ID_ddebug283, !19, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!23 = !{ptr @toshsd_ops, !24, !"toshsd_ops", i1 false, i1 false}
!24 = !{!"../drivers/mmc/host/toshsd.c", i32 549, i32 34}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mmc/host/toshsd.c", i32 478, i32 2}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @toshsd_start_data.__UNIQUE_ID_ddebug282, !26, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mmc/host/toshsd.c", i32 407, i32 2}
!31 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @toshsd_start_cmd.__UNIQUE_ID_ddebug281, !30, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mmc/host/toshsd.c", i32 441, i32 3}
!35 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @toshsd_start_cmd._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @toshsd_start_cmd._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mmc/host/toshsd.c", i32 300, i32 2}
!41 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @toshsd_irq.__UNIQUE_ID_ddebug279, !40, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mmc/host/toshsd.c", i32 311, i32 3}
!45 = !{ptr @toshsd_irq.__UNIQUE_ID_ddebug280, !44, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mmc/host/toshsd.c", i32 314, i32 3}
!48 = !{ptr @toshsd_irq._entry, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @toshsd_irq._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mmc/host/toshsd.c", i32 321, i32 3}
!52 = !{ptr @toshsd_irq._entry.16, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @toshsd_irq._entry_ptr.18, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mmc/host/toshsd.c", i32 330, i32 3}
!63 = !{ptr @toshsd_irq._entry.26, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @toshsd_irq._entry_ptr.28, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.35, !62, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.36, !62, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.37, !62, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.38, !62, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.39, !62, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mmc/host/toshsd.c", i32 212, i32 3}
!78 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @toshsd_cmd_irq._entry, !77, !"_entry", i1 false, i1 false}
!81 = !{ptr @toshsd_cmd_irq._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/mmc/host/toshsd.c", i32 254, i32 2}
!84 = !{ptr @toshsd_cmd_irq.__UNIQUE_ID_ddebug277, !83, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!85 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/mmc/host/toshsd.c", i32 272, i32 3}
!87 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @toshsd_data_end_irq._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @toshsd_data_end_irq._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mmc/host/toshsd.c", i32 281, i32 2}
!92 = !{ptr @toshsd_data_end_irq.__UNIQUE_ID_ddebug278, !91, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!93 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/mmc/host/toshsd.c", i32 166, i32 3}
!95 = !{ptr @.str.48, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @toshsd_thread_irq._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @toshsd_thread_irq._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/mmc/host/toshsd.c", i32 187, i32 2}
!100 = !{ptr @toshsd_thread_irq.__UNIQUE_ID_ddebug276, !99, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!101 = !{ptr @toshsd_pm_ops, !102, !"toshsd_pm_ops", i1 false, i1 false}
!102 = !{!"../drivers/mmc/host/toshsd.c", i32 689, i32 32}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{i64 2148772426, i64 2148772431, i64 2148772444, i64 2148772488, i64 2148772522, i64 2148772543}
!113 = !{i64 2152545515}
!114 = !{i64 5003393}
!115 = !{i64 2152544965}
!116 = !{i64 5002773}
!117 = !{i64 5003811}
!118 = !{i64 2152544160}
!119 = !{i64 5002973}
!120 = !{i64 2152543548}
!121 = !{!"branch_weights", i32 2000, i32 1}

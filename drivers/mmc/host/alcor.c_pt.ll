; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/alcor.c_pt.bc'
source_filename = "../drivers/mmc/host/alcor.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
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
%struct.alcor_sdmmc_host = type { ptr, ptr, ptr, ptr, ptr, i8, %struct.mutex, %struct.delayed_work, %struct.sg_mapping_iter, ptr, i32, i32, i32, i8 }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.alcor_pci_priv = type { ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, i8, i8 }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__initcall__kmod_alcor__293_1185_alcor_pci_sdmmc_driver_init6 = internal global ptr @alcor_pci_sdmmc_driver_init, section ".initcall6.init", align 4
@alcor_pci_sdmmc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @alcor_pci_sdmmc_drv_probe, ptr @alcor_pci_sdmmc_drv_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @alcor_mmc_pm_ops, ptr null, ptr null }, ptr @alcor_pci_sdmmc_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_alcor_pci_sdmmc_driver_exit = internal global ptr @alcor_pci_sdmmc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author294 = internal constant [53 x i8] c"alcor.author=Oleksij Rempel <linux@rempel-privat.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [93 x i8] c"alcor.description=PCI driver for Alcor Micro AU6601 Secure Digital Host Controller Interface\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [34 x i8] c"alcor.file=drivers/mmc/host/alcor\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [18 x i8] c"alcor.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"alcor_sdmmc\00", [20 x i8] zeroinitializer }, align 32
@alcor_mmc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @alcor_pci_sdmmc_suspend, ptr @alcor_pci_sdmmc_resume, ptr @alcor_pci_sdmmc_suspend, ptr @alcor_pci_sdmmc_resume, ptr @alcor_pci_sdmmc_suspend, ptr @alcor_pci_sdmmc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@alcor_pci_sdmmc_ids = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"alcor_sdmmc\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@alcor_pci_sdmmc_drv_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1088, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Can't allocate MMC\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"alcor_pci_sdmmc_drv_probe\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/mmc/host/alcor.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@alcor_pci_sdmmc_drv_probe._entry_ptr = internal global ptr @alcor_pci_sdmmc_drv_probe._entry, section ".printk_index", align 4
@alcor_pci_sdmmc_drv_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1106, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to get irq for data line\0A\00", [63 x i8] zeroinitializer }, align 32
@alcor_pci_sdmmc_drv_probe._entry_ptr.8 = internal global ptr @alcor_pci_sdmmc_drv_probe._entry.6, section ".printk_index", align 4
@alcor_pci_sdmmc_drv_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&host->cmd_mutex\00", [47 x i8] zeroinitializer }, align 32
@alcor_pci_sdmmc_drv_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&host->timeout_work)->work)\00", [48 x i8] zeroinitializer }, align 32
@alcor_pci_sdmmc_drv_probe.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&host->timeout_work)->timer\00", [34 x i8] zeroinitializer }, align 32
@alcor_cmd_irq_done.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.3, ptr @.str.16, i8 0, i8 106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"alcor\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"alcor_cmd_irq_done\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RSP0: 0x%04x\0A\00", [18 x i8] zeroinitializer }, align 32
@alcor_cmd_irq_done.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.3, ptr @.str.17, i8 0, i8 108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"RSP1,2,3: 0x%04x 0x%04x 0x%04x\0A\00", [32 x i8] zeroinitializer }, align 32
@alcor_data_set_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 131, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"have blocks, but no SG\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"alcor_data_set_dma\00", [45 x i8] zeroinitializer }, align 32
@alcor_data_set_dma._entry_ptr = internal global ptr @alcor_data_set_dma._entry, section ".printk_index", align 4
@alcor_data_set_dma._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.3, i32 136, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DMA SG len == 0\0A\00", [47 x i8] zeroinitializer }, align 32
@alcor_data_set_dma._entry_ptr.22 = internal global ptr @alcor_data_set_dma._entry.20, section ".printk_index", align 4
@alcor_data_irq_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 509, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Got READ_BUF_RDY and WRITE_BUF_RDY at same time\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"alcor_data_irq_done\00", [44 x i8] zeroinitializer }, align 32
@alcor_data_irq_done._entry_ptr = internal global ptr @alcor_data_irq_done._entry, section ".printk_index", align 4
@alcor_trf_block_pio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 195, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"configured DMA but got PIO request.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"alcor_trf_block_pio\00", [44 x i8] zeroinitializer }, align 32
@alcor_trf_block_pio._entry_ptr = internal global ptr @alcor_trf_block_pio._entry, section ".printk_index", align 4
@alcor_trf_block_pio._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 201, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"got unexpected direction %i != %i\0A\00", [61 x i8] zeroinitializer }, align 32
@alcor_trf_block_pio._entry_ptr.29 = internal global ptr @alcor_trf_block_pio._entry.27, section ".printk_index", align 4
@alcor_trf_block_pio.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.26, ptr @.str.3, ptr @.str.30, i8 0, i8 52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PIO, %s block size: 0x%zx\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@alcor_irq_thread.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.33, ptr @.str.3, ptr @.str.34, i8 0, i8 -111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"alcor_irq_thread\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unexpected IRQ: 0x%04x\0A\00", [40 x i8] zeroinitializer }, align 32
@alcor_irq_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.3, i32 604, ptr @.str.36, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"warning: over current detected!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@alcor_irq_thread._entry_ptr = internal global ptr @alcor_irq_thread._entry, section ".printk_index", align 4
@alcor_irq_thread.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.33, ptr @.str.3, ptr @.str.37, i8 0, i8 -104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"got not handled IRQ: 0x%04x\0A\00", [35 x i8] zeroinitializer }, align 32
@alcor_err_irq.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.38, ptr @.str.3, ptr @.str.39, i8 0, i8 96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"alcor_err_irq\00", [18 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ERR IRQ %x\0A\00", [20 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@alcor_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 116, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: timeout\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"alcor_reset\00", [20 x i8] zeroinitializer }, align 32
@alcor_reset._entry_ptr = internal global ptr @alcor_reset._entry, section ".printk_index", align 4
@alcor_cmd_irq_thread.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.42, ptr @.str.3, ptr @.str.43, i8 0, i8 115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"alcor_cmd_irq_thread\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"Got command interrupt 0x%08x even though no command operation was in progress.\0A\00", [48 x i8] zeroinitializer }, align 32
@alcor_data_irq_thread.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.44, ptr @.str.3, ptr @.str.45, i8 0, i8 -123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"alcor_data_irq_thread\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"Got data interrupt 0x%08x even though no data operation was in progress.\0A\00", [54 x i8] zeroinitializer }, align 32
@alcor_send_cmd.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.46, ptr @.str.3, ptr @.str.47, i8 0, i8 68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"alcor_send_cmd\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"send CMD. opcode: 0x%02x, arg; 0x%08x\0A\00", [57 x i8] zeroinitializer }, align 32
@alcor_send_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.3, i32 295, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: cmd->flag (0x%02x) is not valid\0A\00", [59 x i8] zeroinitializer }, align 32
@alcor_send_cmd._entry_ptr = internal global ptr @alcor_send_cmd._entry, section ".printk_index", align 4
@alcor_send_cmd.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.46, ptr @.str.3, ptr @.str.49, i8 0, i8 77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"xfer ctrl: 0x%02x; timeout: %lu\0A\00", [63 x i8] zeroinitializer }, align 32
@alcor_prepare_data.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.50, ptr @.str.3, ptr @.str.51, i8 0, i8 63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"alcor_prepare_data\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"prepare DATA: sg %i, blocks: %i\0A\00", [63 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@alcor_cd_irq.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.52, ptr @.str.3, ptr @.str.53, i8 0, i8 -119, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"alcor_cd_irq\00", [19 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"card %s\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"removed\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"inserted\00", [23 x i8] zeroinitializer }, align 32
@alcor_cd_irq.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.52, ptr @.str.3, ptr @.str.56, i8 0, i8 -118, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cancel all pending tasks.\0A\00", [37 x i8] zeroinitializer }, align 32
@alcor_timeout_timer.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.57, ptr @.str.3, ptr @.str.58, i8 0, i8 -14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"alcor_timeout_timer\00", [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"triggered timeout\0A\00", [45 x i8] zeroinitializer }, align 32
@alcor_timeout_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.3, i32 970, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Timeout waiting for hardware interrupt.\0A\00", [55 x i8] zeroinitializer }, align 32
@alcor_timeout_timer._entry_ptr = internal global ptr @alcor_timeout_timer._entry, section ".printk_index", align 4
@alcor_sdc_ops = internal constant { %struct.mmc_host_ops, [32 x i8] } { %struct.mmc_host_ops { ptr @alcor_post_req, ptr @alcor_pre_req, ptr @alcor_request, ptr null, ptr @alcor_set_ios, ptr @alcor_get_ro, ptr @alcor_get_cd, ptr null, ptr null, ptr null, ptr @alcor_signal_voltage_switch, ptr @alcor_card_busy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@alcor_set_ios.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.60, ptr @.str.3, ptr @.str.61, i8 0, i8 -28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"alcor_set_ios\00", [18 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"set ios. bus width: %x, power mode: %x\0A\00", [56 x i8] zeroinitializer }, align 32
@alcor_set_power_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.3, i32 902, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unknown power parameter\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"alcor_set_power_mode\00", [43 x i8] zeroinitializer }, align 32
@alcor_set_power_mode._entry_ptr = internal global ptr @alcor_set_power_mode._entry, section ".printk_index", align 4
@alcor_set_bus_width._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.3, i32 716, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Unknown BUS mode\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"alcor_set_bus_width\00", [44 x i8] zeroinitializer }, align 32
@alcor_set_bus_width._entry_ptr = internal global ptr @alcor_set_bus_width._entry, section ".printk_index", align 4
@alcor_set_clock.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.66, ptr @.str.3, ptr @.str.67, i8 0, i8 -85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"alcor_set_clock\00", [16 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"set freq %d cal freq %d, use div %d, mod %x\0A\00", [51 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.68 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.69 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 7, i64 21, i64 29]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 18, i64 25]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.74 = private unnamed_addr constant [23 x i8] c"alcor_pci_sdmmc_driver\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1175, i32 31 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1180, i32 11 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"alcor_mmc_pm_ops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1163, i32 8 }
@___asan_gen_.83 = private unnamed_addr constant [20 x i8] c"alcor_pci_sdmmc_ids\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1166, i32 40 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1088, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1106, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1110, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1111, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 426, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 434, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 131, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 136, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 509, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 195, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 200, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 210, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 581, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 603, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 609, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 385, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 116, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 459, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 533, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 272, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 294, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 309, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 253, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 549, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 553, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 968, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 970, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant [14 x i8] c"alcor_sdc_ops\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 950, i32 34 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 912, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 902, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 716, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.312 = private constant [28 x i8] c"../drivers/mmc/host/alcor.c\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 685, i32 2 }
@llvm.compiler.used = appending global [100 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_alcor_pci_sdmmc_driver_exit, ptr @__initcall__kmod_alcor__293_1185_alcor_pci_sdmmc_driver_init6, ptr @alcor_data_irq_done._entry, ptr @alcor_data_irq_done._entry_ptr, ptr @alcor_data_set_dma._entry, ptr @alcor_data_set_dma._entry.20, ptr @alcor_data_set_dma._entry_ptr, ptr @alcor_data_set_dma._entry_ptr.22, ptr @alcor_irq_thread._entry, ptr @alcor_irq_thread._entry_ptr, ptr @alcor_pci_sdmmc_driver_exit, ptr @alcor_pci_sdmmc_drv_probe._entry, ptr @alcor_pci_sdmmc_drv_probe._entry.6, ptr @alcor_pci_sdmmc_drv_probe._entry_ptr, ptr @alcor_pci_sdmmc_drv_probe._entry_ptr.8, ptr @alcor_reset._entry, ptr @alcor_reset._entry_ptr, ptr @alcor_send_cmd._entry, ptr @alcor_send_cmd._entry_ptr, ptr @alcor_set_bus_width._entry, ptr @alcor_set_bus_width._entry_ptr, ptr @alcor_set_power_mode._entry, ptr @alcor_set_power_mode._entry_ptr, ptr @alcor_timeout_timer._entry, ptr @alcor_timeout_timer._entry_ptr, ptr @alcor_trf_block_pio._entry, ptr @alcor_trf_block_pio._entry.27, ptr @alcor_trf_block_pio._entry_ptr, ptr @alcor_trf_block_pio._entry_ptr.29, ptr @alcor_pci_sdmmc_driver, ptr @.str, ptr @alcor_mmc_pm_ops, ptr @alcor_pci_sdmmc_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @alcor_pci_sdmmc_drv_probe.__key, ptr @.str.9, ptr @alcor_pci_sdmmc_drv_probe.__key.10, ptr @.str.11, ptr @alcor_pci_sdmmc_drv_probe.__key.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @alcor_sdc_ops, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alcor_pci_sdmmc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alcor_mmc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alcor_pci_sdmmc_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alcor_pci_sdmmc_drv_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alcor_pci_sdmmc_drv_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alcor_pci_sdmmc_drv_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alcor_pci_sdmmc_drv_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alcor_pci_sdmmc_drv_probe.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alcor_data_set_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alcor_data_set_dma._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alcor_data_irq_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alcor_trf_block_pio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alcor_trf_block_pio._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alcor_irq_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alcor_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alcor_send_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alcor_timeout_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alcor_sdc_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alcor_set_power_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alcor_set_bus_width._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @alcor_pci_sdmmc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @alcor_pci_sdmmc_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @alcor_pci_sdmmc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @alcor_pci_sdmmc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alcor_pci_sdmmc_drv_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %call = tail call ptr @mmc_alloc_host(i32 noundef 280, ptr noundef %dev) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 70
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %private.i, align 4
  %cur_power_mode = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 10, i32 1, i32 1
  %3 = ptrtoint ptr %cur_power_mode to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 3, ptr %cur_power_mode, align 4
  %alcor_pci = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %private.i, i32 0, i32 1
  %4 = ptrtoint ptr %alcor_pci to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %alcor_pci, align 4
  tail call void @alcor_write32(ptr noundef %1, i32 noundef 0, i32 noundef 148) #5
  tail call void @alcor_write32(ptr noundef %1, i32 noundef 0, i32 noundef 180) #5
  %irq = getelementptr inbounds %struct.alcor_pci_priv, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call7 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %6, ptr noundef nonnull @alcor_irq, ptr noundef nonnull @alcor_irq_thread, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %private.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.body15, label %do.end12

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  tail call void @mmc_free_host(ptr noundef nonnull %call) #5
  br label %cleanup

do.body15:                                        ; preds = %if.end
  %cmd_mutex = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %cmd_mutex, ptr noundef nonnull @.str.9, ptr noundef nonnull @alcor_pci_sdmmc_drv_probe.__key) #5
  %timeout_work = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 2
  tail call void @__init_work(ptr noundef %timeout_work, i32 noundef 0) #5
  %7 = ptrtoint ptr %timeout_work to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %timeout_work, align 4
  %lockdep_map = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 2
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.11, ptr noundef nonnull @alcor_pci_sdmmc_drv_probe.__key.10, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry26 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 3
  %8 = ptrtoint ptr %entry26 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry26, ptr %entry26, align 4
  %prev.i = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 6
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry26, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 7
  %10 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @alcor_timeout_timer, ptr %func, align 4
  %timer = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 5
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.13, ptr noundef nonnull @alcor_pci_sdmmc_drv_probe.__key.12) #5
  %f_min.i = getelementptr %struct.mmc_host, ptr %call, i32 0, i32 5
  %11 = ptrtoint ptr %f_min.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 150000, ptr %f_min.i, align 4
  %f_max.i = getelementptr %struct.mmc_host, ptr %call, i32 0, i32 6
  %12 = ptrtoint ptr %f_max.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 208000000, ptr %f_max.i, align 8
  %ocr_avail.i = getelementptr %struct.mmc_host, ptr %call, i32 0, i32 8
  %13 = ptrtoint ptr %ocr_avail.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2097152, ptr %ocr_avail.i, align 64
  %caps.i = getelementptr %struct.mmc_host, ptr %call, i32 0, i32 16
  %14 = ptrtoint ptr %caps.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2031621, ptr %caps.i, align 32
  %caps2.i = getelementptr %struct.mmc_host, ptr %call, i32 0, i32 17
  %15 = ptrtoint ptr %caps2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 524288, ptr %caps2.i, align 4
  %ops.i = getelementptr %struct.mmc_host, ptr %call, i32 0, i32 3
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @alcor_sdc_ops, ptr %ops.i, align 4
  %max_segs.i = getelementptr %struct.mmc_host, ptr %call, i32 0, i32 21
  %17 = ptrtoint ptr %max_segs.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 64, ptr %max_segs.i, align 4
  %max_seg_size.i = getelementptr %struct.mmc_host, ptr %call, i32 0, i32 20
  %18 = ptrtoint ptr %max_seg_size.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4096, ptr %max_seg_size.i, align 16
  %max_blk_count.i = getelementptr %struct.mmc_host, ptr %call, i32 0, i32 25
  %19 = ptrtoint ptr %max_blk_count.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 240, ptr %max_blk_count.i, align 128
  %max_blk_size.i = getelementptr %struct.mmc_host, ptr %call, i32 0, i32 24
  %20 = ptrtoint ptr %max_blk_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_blk_size.i, align 4
  %mul.i = mul i32 %21, 240
  %max_req_size.i = getelementptr %struct.mmc_host, ptr %call, i32 0, i32 23
  %22 = ptrtoint ptr %max_req_size.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul.i, ptr %max_req_size.i, align 8
  %23 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %private.i, align 4
  %dma_parms.i.i = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 22
  %25 = ptrtoint ptr %dma_parms.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dma_parms.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i, label %do.body15.alcor_init_mmc.exit_crit_edge, label %if.then.i.i

do.body15.alcor_init_mmc.exit_crit_edge:          ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #7
  br label %alcor_init_mmc.exit

if.then.i.i:                                      ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4096, ptr %26, align 4
  br label %alcor_init_mmc.exit

alcor_init_mmc.exit:                              ; preds = %if.then.i.i, %do.body15.alcor_init_mmc.exit_crit_edge
  tail call fastcc void @alcor_hw_init(ptr noundef %private.i)
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %28 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %private.i, ptr %driver_data.i, align 4
  %call38 = tail call i32 @mmc_add_host(ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %alcor_init_mmc.exit, %do.end12, %do.end
  %retval.0 = phi i32 [ %call7, %do.end12 ], [ 0, %alcor_init_mmc.exit ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alcor_pci_sdmmc_drv_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1920
  %timeout_work = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %1, i32 0, i32 7
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %timeout_work) #5
  br i1 %call2, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %mrq1.i = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mrq1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mrq1.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %mrq1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %mrq1.i, align 4
  %cmd.i = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %cmd.i, align 4
  %data.i = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %data.i, align 4
  %dma_on.i = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %dma_on.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %dma_on.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %dma_on.i, align 4
  tail call void @mmc_request_done(ptr noundef %add.ptr.i, ptr noundef nonnull %3) #5
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call fastcc void @alcor_hw_uninit(ptr noundef %1)
  tail call void @mmc_remove_host(ptr noundef %add.ptr.i) #5
  tail call void @mmc_free_host(ptr noundef %add.ptr.i) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @alcor_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alcor_irq(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %alcor_pci = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %d, i32 0, i32 1
  %0 = ptrtoint ptr %alcor_pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alcor_pci, align 4
  %call = tail call i32 @alcor_read32(ptr noundef %1, i32 noundef 144) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @alcor_write32(ptr noundef %1, i32 noundef %call, i32 noundef 144) #5
  %and = and i32 %call, 59
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %call)
  %cmp = icmp eq i32 %and, %call
  br i1 %cmp, label %if.then1, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then1:                                         ; preds = %if.end
  %call2 = tail call fastcc i32 @alcor_cmd_irq_done(ptr noundef %d, i32 noundef %call)
  %call3 = tail call fastcc i32 @alcor_data_irq_done(ptr noundef %d, i32 noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool4.not = icmp eq i32 %call2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool5.not = icmp eq i32 %call3, 0
  %or.cond = select i1 %tobool4.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %if.then1.if.end8_crit_edge, label %if.then1.cleanup_crit_edge

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then1.if.end8_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.end8:                                          ; preds = %if.then1.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %irq_status_sd = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %d, i32 0, i32 12
  %2 = ptrtoint ptr %irq_status_sd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %irq_status_sd, align 4
  %3 = ptrtoint ptr %alcor_pci to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %alcor_pci, align 4
  tail call void @alcor_write32(ptr noundef %4, i32 noundef 0, i32 noundef 148) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 2, %if.end8 ], [ 1, %if.then1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alcor_irq_thread(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_mutex = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %d, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %cmd_mutex, i32 noundef 0) #5
  %irq_status_sd = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %d, i32 0, i32 12
  %0 = ptrtoint ptr %irq_status_sd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_status_sd, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.end12 [
    i32 -1, label %entry.do.body_crit_edge
    i32 0, label %entry.do.body_crit_edge86
  ]

entry.do.body_crit_edge86:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge86
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alcor_irq_thread.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alcor_irq_thread, %if.then11)) #5
          to label %exit [label %if.then11], !srcloc !166

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alcor_irq_thread.__UNIQUE_ID_ddebug288, ptr noundef %4, ptr noundef nonnull @.str.34, i32 noundef %1) #5
  br label %exit

if.end12:                                         ; preds = %entry
  %and = and i32 %1, 8323131
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end12.if.end20_crit_edge, label %if.then14

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then14:                                        ; preds = %if.end12
  %and15 = and i32 %1, 8323072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @alcor_err_irq(ptr noundef %d, i32 noundef %and)
  br label %if.end18

if.else:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @alcor_cmd_irq_thread(ptr noundef %d, i32 noundef %and)
  tail call fastcc void @alcor_data_irq_thread(ptr noundef %d, i32 noundef %and)
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then17
  %and19 = and i32 %1, -8323132
  br label %if.end20

if.end20:                                         ; preds = %if.end18, %if.end12.if.end20_crit_edge
  %intmask.0 = phi i32 [ %and19, %if.end18 ], [ %1, %if.end12.if.end20_crit_edge ]
  %and21 = and i32 %intmask.0, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end25_crit_edge, label %if.then23

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @alcor_cd_irq(ptr noundef %d, i32 noundef %intmask.0)
  %and24 = and i32 %intmask.0, -193
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end20.if.end25_crit_edge
  %intmask.1 = phi i32 [ %and24, %if.then23 ], [ %intmask.0, %if.end20.if.end25_crit_edge ]
  %and26 = and i32 %intmask.1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.if.end34_crit_edge, label %do.end31

if.end25.if.end34_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.35) #8
  %and33 = and i32 %intmask.1, -257
  br label %if.end34

if.end34:                                         ; preds = %do.end31, %if.end25.if.end34_crit_edge
  %intmask.2 = phi i32 [ %and33, %do.end31 ], [ %intmask.1, %if.end25.if.end34_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %intmask.2)
  %tobool35.not = icmp eq i32 %intmask.2, 0
  br i1 %tobool35.not, label %if.end34.exit_crit_edge, label %do.body37

if.end34.exit_crit_edge:                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

do.body37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alcor_irq_thread.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alcor_irq_thread, %if.then49)) #5
          to label %exit [label %if.then49], !srcloc !166

if.then49:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alcor_irq_thread.__UNIQUE_ID_ddebug289, ptr noundef %8, ptr noundef nonnull @.str.37, i32 noundef %intmask.2) #5
  br label %exit

exit:                                             ; preds = %if.then49, %do.body37, %if.end34.exit_crit_edge, %if.then11, %do.body
  %ret.0 = phi i32 [ 1, %if.then49 ], [ 1, %if.end34.exit_crit_edge ], [ 0, %if.then11 ], [ 0, %do.body ], [ 1, %do.body37 ]
  tail call void @mutex_unlock(ptr noundef %cmd_mutex) #5
  %alcor_pci.i = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %d, i32 0, i32 1
  %9 = ptrtoint ptr %alcor_pci.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %alcor_pci.i, align 4
  tail call void @alcor_write32(ptr noundef %10, i32 noundef 8323579, i32 noundef 148) #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alcor_timeout_timer(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -116
  %cmd_mutex = getelementptr i8, ptr %work, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %cmd_mutex, i32 noundef 0) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alcor_timeout_timer.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alcor_timeout_timer, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !166

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alcor_timeout_timer.__UNIQUE_ID_ddebug292, ptr noundef %1, ptr noundef nonnull @.str.58) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mrq = getelementptr i8, ptr %work, i32 -108
  %2 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mrq, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %do.end.if.end24_crit_edge, label %do.end9

do.end.if.end24_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

do.end9:                                          ; preds = %do.end
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.59) #8
  %data = getelementptr i8, ptr %work, i32 -100
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #7
  %error = getelementptr inbounds %struct.mmc_data, ptr %7, i32 0, i32 5
  br label %if.end23

if.else:                                          ; preds = %do.end9
  %cmd = getelementptr i8, ptr %work, i32 -104
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmd, align 4
  %tobool14.not = icmp eq ptr %9, null
  br i1 %tobool14.not, label %if.else18, label %if.then15

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %error17 = getelementptr inbounds %struct.mmc_command, ptr %9, i32 0, i32 5
  br label %if.end23

if.else18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mrq, align 4
  %cmd20 = getelementptr inbounds %struct.mmc_request, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %cmd20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cmd20, align 4
  %error21 = getelementptr inbounds %struct.mmc_command, ptr %13, i32 0, i32 5
  br label %if.end23

if.end23:                                         ; preds = %if.else18, %if.then15, %if.then12
  %error17.sink = phi ptr [ %error17, %if.then15 ], [ %error21, %if.else18 ], [ %error, %if.then12 ]
  %14 = ptrtoint ptr %error17.sink to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -110, ptr %error17.sink, align 4
  %alcor_pci.i = getelementptr i8, ptr %work, i32 -112
  %15 = ptrtoint ptr %alcor_pci.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %alcor_pci.i, align 4
  tail call void @alcor_write8(ptr noundef %16, i8 noundef zeroext -119, i32 noundef 121) #5
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end23
  %i.011.i = phi i32 [ 0, %if.end23 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %call.i = tail call zeroext i8 @alcor_read8(ptr noundef %16, i32 noundef 121) #5
  %and10.i = and i8 %call.i, 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10.i)
  %tobool.not.i = icmp eq i8 %and10.i, 0
  br i1 %tobool.not.i, label %for.body.i.alcor_reset.exit_crit_edge, label %if.end.i

for.body.i.alcor_reset.exit_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %alcor_reset.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 10737400) #5
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %do.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #8
  br label %alcor_reset.exit

alcor_reset.exit:                                 ; preds = %do.end.i, %for.body.i.alcor_reset.exit_crit_edge
  %20 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mrq, align 4
  %tobool.not.i38 = icmp eq ptr %21, null
  br i1 %tobool.not.i38, label %alcor_reset.exit.if.end24_crit_edge, label %if.end.i39

alcor_reset.exit.if.end24_crit_edge:              ; preds = %alcor_reset.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.end.i39:                                       ; preds = %alcor_reset.exit
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %mrq to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %mrq, align 4
  %cmd.i = getelementptr i8, ptr %work, i32 -104
  %23 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %cmd.i, align 4
  %24 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %data, align 4
  %dma_on.i = getelementptr i8, ptr %work, i32 -96
  %25 = ptrtoint ptr %dma_on.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load.i = load i8, ptr %dma_on.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %dma_on.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %work, i32 -2036
  tail call void @mmc_request_done(ptr noundef %add.ptr.i.i, ptr noundef nonnull %21) #5
  br label %if.end24

if.end24:                                         ; preds = %if.end.i39, %alcor_reset.exit.if.end24_crit_edge, %do.end.if.end24_crit_edge
  tail call void @mutex_unlock(ptr noundef %cmd_mutex) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alcor_hw_init(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %alcor_pci = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %alcor_pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alcor_pci, align 4
  %cfg1 = getelementptr inbounds %struct.alcor_pci_priv, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg1, align 4
  tail call void @alcor_write8(ptr noundef %1, i8 noundef zeroext -127, i32 noundef 121) #5
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.011.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %call.i = tail call zeroext i8 @alcor_read8(ptr noundef %1, i32 noundef 121) #5
  %and10.i = and i8 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10.i)
  %tobool.not.i = icmp eq i8 %and10.i, 0
  br i1 %tobool.not.i, label %for.body.i.alcor_reset.exit_crit_edge, label %if.end.i

for.body.i.alcor_reset.exit_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %alcor_reset.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 10737400) #5
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %do.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %host, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #8
  br label %alcor_reset.exit

alcor_reset.exit:                                 ; preds = %do.end.i, %for.body.i.alcor_reset.exit_crit_edge
  tail call void @alcor_write8(ptr noundef %1, i8 noundef zeroext 0, i32 noundef 5) #5
  tail call void @alcor_write8(ptr noundef %1, i8 noundef zeroext 1, i32 noundef 117) #5
  tail call void @alcor_write8(ptr noundef %1, i8 noundef zeroext 0, i32 noundef 130) #5
  %7 = ptrtoint ptr %alcor_pci to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %alcor_pci, align 4
  tail call void @alcor_write8(ptr noundef %8, i8 noundef zeroext -120, i32 noundef 121) #5
  br label %for.body.i22

for.body.i22:                                     ; preds = %if.end.i25.for.body.i22_crit_edge, %alcor_reset.exit
  %i.011.i18 = phi i32 [ 0, %alcor_reset.exit ], [ %inc.i23, %if.end.i25.for.body.i22_crit_edge ]
  %call.i19 = tail call zeroext i8 @alcor_read8(ptr noundef %8, i32 noundef 121) #5
  %and10.i20 = and i8 %call.i19, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10.i20)
  %tobool.not.i21 = icmp eq i8 %and10.i20, 0
  br i1 %tobool.not.i21, label %for.body.i22.alcor_reset.exit27_crit_edge, label %if.end.i25

for.body.i22.alcor_reset.exit27_crit_edge:        ; preds = %for.body.i22
  call void @__sanitizer_cov_trace_pc() #7
  br label %alcor_reset.exit27

if.end.i25:                                       ; preds = %for.body.i22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 10737400) #5
  %inc.i23 = add nuw nsw i32 %i.011.i18, 1
  %exitcond.not.i24 = icmp eq i32 %inc.i23, 100
  br i1 %exitcond.not.i24, label %do.end.i26, label %if.end.i25.for.body.i22_crit_edge

if.end.i25.for.body.i22_crit_edge:                ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i22

do.end.i26:                                       ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #8
  br label %alcor_reset.exit27

alcor_reset.exit27:                               ; preds = %do.end.i26, %for.body.i22.alcor_reset.exit27_crit_edge
  tail call void @alcor_write8(ptr noundef %1, i8 noundef zeroext 0, i32 noundef 5) #5
  tail call void @alcor_write8(ptr noundef %1, i8 noundef zeroext 0, i32 noundef 116) #5
  tail call void @alcor_write8(ptr noundef %1, i8 noundef zeroext 68, i32 noundef 123) #5
  tail call void @alcor_write8(ptr noundef %1, i8 noundef zeroext 68, i32 noundef 124) #5
  tail call void @alcor_write8(ptr noundef %1, i8 noundef zeroext 0, i32 noundef 125) #5
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %3, align 1
  tail call void @alcor_write8(ptr noundef %1, i8 noundef zeroext %13, i32 noundef 5) #5
  tail call void @alcor_write8(ptr noundef %1, i8 noundef zeroext 0, i32 noundef 122) #5
  tail call void @alcor_write8(ptr noundef %1, i8 noundef zeroext 0, i32 noundef 112) #5
  tail call void @alcor_write8(ptr noundef %1, i8 noundef zeroext -128, i32 noundef 118) #5
  %14 = ptrtoint ptr %alcor_pci to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %alcor_pci, align 4
  tail call void @alcor_write32(ptr noundef %15, i32 noundef 8323579, i32 noundef 148) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alcor_read32(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alcor_cmd_irq_done(ptr nocapture noundef %host, i32 noundef %intmask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %alcor_pci = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %alcor_pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alcor_pci, align 4
  %and = and i32 %intmask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmd = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 3
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and5 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end3.if.end56_crit_edge, label %if.then7

if.end3.if.end56_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

if.then7:                                         ; preds = %if.end3
  %call = tail call i32 @alcor_read32be(ptr noundef %1, i32 noundef 48) #5
  %resp = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %resp, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alcor_cmd_irq_done.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alcor_cmd_irq_done, %if.then14)) #5
          to label %do.end [label %if.then14], !srcloc !166

if.then14:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %host, align 4
  %9 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %resp, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alcor_cmd_irq_done.__UNIQUE_ID_ddebug282, ptr noundef %8, ptr noundef nonnull @.str.16, i32 noundef %10) #5
  br label %do.end

do.end:                                           ; preds = %if.then14, %if.then7
  %11 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cmd, align 4
  %flags19 = getelementptr inbounds %struct.mmc_command, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %flags19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags19, align 4
  %and20 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.end.if.end56_crit_edge, label %if.then22

do.end.if.end56_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

if.then22:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %call23 = tail call i32 @alcor_read32be(ptr noundef %1, i32 noundef 52) #5
  %arrayidx25 = getelementptr %struct.mmc_command, ptr %3, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call23, ptr %arrayidx25, align 4
  %call26 = tail call i32 @alcor_read32be(ptr noundef %1, i32 noundef 56) #5
  %arrayidx28 = getelementptr %struct.mmc_command, ptr %3, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call26, ptr %arrayidx28, align 4
  %call29 = tail call i32 @alcor_read32be(ptr noundef %1, i32 noundef 60) #5
  %arrayidx31 = getelementptr %struct.mmc_command, ptr %3, i32 0, i32 2, i32 3
  %17 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call29, ptr %arrayidx31, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alcor_cmd_irq_done.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alcor_cmd_irq_done, %if.then44)) #5
          to label %if.end56 [label %if.then44], !srcloc !166

if.then44:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host, align 4
  %20 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx25, align 4
  %22 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx28, align 4
  %24 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx31, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alcor_cmd_irq_done.__UNIQUE_ID_ddebug283, ptr noundef %19, ptr noundef nonnull @.str.17, i32 noundef %21, i32 noundef %23, i32 noundef %25) #5
  br label %if.end56

if.end56:                                         ; preds = %if.then44, %if.then22, %do.end.if.end56_crit_edge, %if.end3.if.end56_crit_edge
  %26 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cmd, align 4
  %error = getelementptr inbounds %struct.mmc_command, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %error, align 4
  %data = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 4
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
  %tobool58.not = icmp eq ptr %30, null
  br i1 %tobool58.not, label %if.end56.cleanup_crit_edge, label %if.end60

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end60:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @alcor_trigger_data_transfer(ptr noundef %host)
  %31 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %cmd, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.end56.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end60 ], [ 1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end56.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alcor_data_irq_done(ptr noundef %host, i32 noundef %intmask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %intmask, 7340090
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool1.not = icmp eq ptr %1, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp = icmp eq i32 %and, 2
  %or.cond = and i1 %cmp, %tobool1.not
  %.mux = zext i1 %or.cond to i32
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %and8 = lshr i32 %intmask, 3
  %2 = and i32 %and8, 7
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %2, label %do.end [
    i32 0, label %if.end7.sw.epilog_crit_edge
    i32 4, label %sw.bb
    i32 2, label %sw.bb9
    i32 1, label %sw.bb10
  ]

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @alcor_trf_block_pio(ptr noundef %host, i1 noundef zeroext true)
  br label %cleanup

sw.bb9:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @alcor_trf_block_pio(ptr noundef %host, i1 noundef zeroext false)
  br label %cleanup

sw.bb10:                                          ; preds = %if.end7
  %sg_count = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 11
  %4 = ptrtoint ptr %sg_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sg_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool11.not = icmp eq i32 %5, 0
  br i1 %tobool11.not, label %sw.bb10.sw.epilog_crit_edge, label %if.end.i

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb10
  %alcor_pci.i = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 1
  %6 = ptrtoint ptr %alcor_pci.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %alcor_pci.i, align 4
  %sg.i = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 9
  %8 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sg.i, align 4
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %do.end.i, label %if.end3.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.18) #8
  br label %sw.epilog

if.end3.i:                                        ; preds = %if.end.i
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %9, i32 0, i32 4
  %12 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool5.not.i = icmp eq i32 %13, 0
  br i1 %tobool5.not.i, label %do.end9.i, label %if.end11.i

do.end9.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %host, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.21) #8
  br label %sw.epilog

if.end11.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %9, i32 0, i32 3
  %16 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_address.i, align 4
  tail call void @alcor_write32(ptr noundef %7, i32 noundef %17, i32 noundef 0) #5
  %18 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sg.i, align 4
  %call.i = tail call ptr @sg_next(ptr noundef %19) #5
  %20 = ptrtoint ptr %sg.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %sg.i, align 4
  %21 = ptrtoint ptr %sg_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sg_count, align 4
  %dec.i = add i32 %22, -1
  store i32 %dec.i, ptr %sg_count, align 4
  br label %sw.epilog

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %host, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.23) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end11.i, %do.end9.i, %do.end.i, %sw.bb10.sw.epilog_crit_edge, %if.end7.sw.epilog_crit_edge
  %and14 = and i32 %intmask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %sw.epilog.cleanup_crit_edge, label %if.then16

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then16:                                        ; preds = %sw.epilog
  %dma_on = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 5
  %25 = ptrtoint ptr %dma_on to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load = load i8, ptr %dma_on, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool17.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool17.not, label %land.lhs.true18, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true18:                                  ; preds = %if.then16
  %blocks = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 10
  %26 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool19.not = icmp eq i32 %27, 0
  br i1 %tobool19.not, label %land.lhs.true18.cleanup_crit_edge, label %if.then20

land.lhs.true18.cleanup_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then20:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @alcor_trigger_data_transfer(ptr noundef %host)
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %land.lhs.true18.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb9, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then20 ], [ 1, %sw.bb9 ], [ 1, %sw.bb ], [ 1, %entry.cleanup_crit_edge ], [ %.mux, %if.end.cleanup_crit_edge ], [ 0, %land.lhs.true18.cleanup_crit_edge ], [ 0, %if.then16.cleanup_crit_edge ], [ 1, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alcor_read32be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alcor_trigger_data_transfer(ptr nocapture noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %alcor_pci = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %alcor_pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alcor_pci, align 4
  %data1 = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 4
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1, align 4
  %flags = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = lshr i32 %5, 1
  %6 = trunc i32 %and to i8
  %7 = and i8 %6, -128
  %host_cookie = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 13
  %8 = ptrtoint ptr %host_cookie to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %host_cookie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp = icmp eq i32 %9, 2
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %entry
  %sg_count.i = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 11
  %10 = ptrtoint ptr %sg_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sg_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.then4.alcor_data_set_dma.exit_crit_edge, label %if.end.i

if.then4.alcor_data_set_dma.exit_crit_edge:       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %alcor_data_set_dma.exit

if.end.i:                                         ; preds = %if.then4
  %sg.i = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 9
  %12 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sg.i, align 4
  %tobool1.not.i = icmp eq ptr %13, null
  br i1 %tobool1.not.i, label %do.end.i, label %if.end3.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %host, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.18) #8
  br label %alcor_data_set_dma.exit

if.end3.i:                                        ; preds = %if.end.i
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %13, i32 0, i32 4
  %16 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool5.not.i = icmp eq i32 %17, 0
  br i1 %tobool5.not.i, label %do.end9.i, label %if.end11.i

do.end9.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.21) #8
  br label %alcor_data_set_dma.exit

if.end11.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %13, i32 0, i32 3
  %20 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_address.i, align 4
  tail call void @alcor_write32(ptr noundef %1, i32 noundef %21, i32 noundef 0) #5
  %22 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sg.i, align 4
  %call.i = tail call ptr @sg_next(ptr noundef %23) #5
  %24 = ptrtoint ptr %sg.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %sg.i, align 4
  %25 = ptrtoint ptr %sg_count.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sg_count.i, align 4
  %dec.i = add i32 %26, -1
  store i32 %dec.i, ptr %sg_count.i, align 4
  br label %alcor_data_set_dma.exit

alcor_data_set_dma.exit:                          ; preds = %if.end11.i, %do.end9.i, %do.end.i, %if.then4.alcor_data_set_dma.exit_crit_edge
  %27 = or i8 %7, 64
  %dma_on = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 5
  %28 = ptrtoint ptr %dma_on to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load = load i8, ptr %dma_on, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %dma_on, align 4
  %sg_count = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 11
  %29 = ptrtoint ptr %sg_count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sg_count, align 4
  %mul = shl i32 %30, 12
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 2
  %31 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %blksz, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else, %alcor_data_set_dma.exit
  %.sink = phi i32 [ %32, %if.else ], [ %mul, %alcor_data_set_dma.exit ]
  %ctrl.1 = phi i8 [ %7, %if.else ], [ %27, %alcor_data_set_dma.exit ]
  tail call void @alcor_write32(ptr noundef %1, i32 noundef %.sink, i32 noundef 108) #5
  %33 = or i8 %ctrl.1, 1
  tail call void @alcor_write8(ptr noundef %1, i8 noundef zeroext %33, i32 noundef 131) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @alcor_write8(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alcor_trf_block_pio(ptr noundef %host, i1 noundef zeroext %read) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %alcor_pci = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %alcor_pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alcor_pci, align 4
  %blocks = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 10
  %2 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dma_on = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 5
  %4 = ptrtoint ptr %dma_on to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %dma_on, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool1.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool1.not, label %if.end3, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %host, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.25) #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 4
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %flags = getelementptr inbounds %struct.mmc_data, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and = lshr i32 %10, 9
  %and.lobit = and i32 %and, 1
  %conv = zext i1 %read to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.lobit, i32 %conv)
  %cmp.not = icmp eq i32 %and.lobit, %conv
  br i1 %cmp.not, label %if.end3.if.end23_crit_edge, label %do.end11

if.end3.if.end23_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

do.end11:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %host, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.28, i32 noundef %and.lobit, i32 noundef %conv) #8
  br label %if.end23

if.end23:                                         ; preds = %do.end11, %if.end3.if.end23_crit_edge
  %sg_miter = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 8
  %call = tail call zeroext i1 @sg_miter_next(ptr noundef %sg_miter) #5
  br i1 %call, label %if.end25, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25:                                         ; preds = %if.end23
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %blksz, align 4
  %length = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 8, i32 2
  %17 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length, align 4
  %19 = tail call i32 @llvm.umin.i32(i32 %18, i32 %16)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alcor_trf_block_pio.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alcor_trf_block_pio, %if.then40)) #5
          to label %do.end47 [label %if.then40], !srcloc !166

if.then40:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %host, align 4
  %cond44 = select i1 %read, ptr @.str.31, ptr @.str.32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alcor_trf_block_pio.__UNIQUE_ID_ddebug277, ptr noundef %21, ptr noundef nonnull @.str.30, ptr noundef nonnull %cond44, i32 noundef %16) #5
  br label %do.end47

do.end47:                                         ; preds = %if.then40, %if.end25
  %consumed = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 8, i32 3
  %22 = ptrtoint ptr %consumed to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %19, ptr %consumed, align 4
  %23 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %blocks, align 4
  %dec = add i32 %24, -1
  store i32 %dec, ptr %blocks, align 4
  %addr = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 8, i32 1
  %25 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %addr, align 4
  %iobase = getelementptr inbounds %struct.alcor_pci_priv, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %28, i32 8
  %shr = lshr i32 %19, 2
  br i1 %read, label %if.then52, label %if.else

if.then52:                                        ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__raw_readsl(ptr noundef %add.ptr, ptr noundef %26, i32 noundef %shr) #5
  br label %if.end56

if.else:                                          ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__raw_writesl(ptr noundef %add.ptr, ptr noundef %26, i32 noundef %shr) #5
  br label %if.end56

if.end56:                                         ; preds = %if.else, %if.then52
  tail call void @sg_miter_stop(ptr noundef %sg_miter) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.end23.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alcor_err_irq(ptr noundef %host, i32 noundef %intmask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alcor_err_irq.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alcor_err_irq, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !166

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alcor_err_irq.__UNIQUE_ID_ddebug281, ptr noundef %1, ptr noundef nonnull @.str.39, i32 noundef %intmask) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cmd = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 3
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %do.end.if.end11_crit_edge, label %if.then4

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %intmask, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %error9 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 5
  %. = select i1 %tobool5.not, i32 -84, i32 -110
  %4 = ptrtoint ptr %error9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %., ptr %error9, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then4, %do.end.if.end11_crit_edge
  %data = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 4
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %tobool12.not = icmp eq ptr %6, null
  br i1 %tobool12.not, label %if.end11.if.end24_crit_edge, label %if.then13

if.end11.if.end24_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %and14 = and i32 %intmask, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %spec.select = select i1 %tobool15.not, i32 -84, i32 -110
  %7 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 5
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.select, ptr %7, align 4
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %bytes_xfered = getelementptr inbounds %struct.mmc_data, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %bytes_xfered, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then13, %if.end11.if.end24_crit_edge
  %alcor_pci.i = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 1
  %12 = ptrtoint ptr %alcor_pci.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %alcor_pci.i, align 4
  tail call void @alcor_write8(ptr noundef %13, i8 noundef zeroext -119, i32 noundef 121) #5
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end24
  %i.011.i = phi i32 [ 0, %if.end24 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %call.i = tail call zeroext i8 @alcor_read8(ptr noundef %13, i32 noundef 121) #5
  %and10.i = and i8 %call.i, 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10.i)
  %tobool.not.i = icmp eq i8 %and10.i, 0
  br i1 %tobool.not.i, label %for.body.i.alcor_reset.exit_crit_edge, label %if.end.i

for.body.i.alcor_reset.exit_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %alcor_reset.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 10737400) #5
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %do.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %host, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #8
  br label %alcor_reset.exit

alcor_reset.exit:                                 ; preds = %do.end.i, %for.body.i.alcor_reset.exit_crit_edge
  %mrq1.i = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 2
  %17 = ptrtoint ptr %mrq1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mrq1.i, align 4
  %tobool.not.i37 = icmp eq ptr %18, null
  br i1 %tobool.not.i37, label %alcor_reset.exit.alcor_request_complete.exit_crit_edge, label %if.end.i38

alcor_reset.exit.alcor_request_complete.exit_crit_edge: ; preds = %alcor_reset.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %alcor_request_complete.exit

if.end.i38:                                       ; preds = %alcor_reset.exit
  call void @__sanitizer_cov_trace_pc() #7
  %timeout_work.i = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 7
  %call.i39 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work.i) #5
  %19 = ptrtoint ptr %mrq1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mrq1.i, align 4
  store ptr null, ptr %mrq1.i, align 4
  %21 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %cmd, align 4
  %22 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %data, align 4
  %dma_on.i = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 5
  %23 = ptrtoint ptr %dma_on.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.i = load i8, ptr %dma_on.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %dma_on.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %host, i32 -1920
  tail call void @mmc_request_done(ptr noundef %add.ptr.i.i, ptr noundef %20) #5
  br label %alcor_request_complete.exit

alcor_request_complete.exit:                      ; preds = %if.end.i38, %alcor_reset.exit.alcor_request_complete.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alcor_cmd_irq_thread(ptr noundef %host, i32 noundef %intmask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %intmask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  %cmd = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 3
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %do.body, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alcor_cmd_irq_thread.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alcor_cmd_irq_thread, %if.then8)) #5
          to label %if.end10 [label %if.then8], !srcloc !166

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alcor_cmd_irq_thread.__UNIQUE_ID_ddebug284, ptr noundef %3, ptr noundef nonnull @.str.43, i32 noundef 1) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %do.body, %if.end.if.end10_crit_edge
  %data = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %tobool11.not = icmp eq ptr %5, null
  br i1 %tobool11.not, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end10
  %mrq1.i = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 2
  %6 = ptrtoint ptr %mrq1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mrq1.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then12.if.end13_crit_edge, label %if.end.i

if.then12.if.end13_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.end.i:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  %timeout_work.i = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 7
  %call.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work.i) #5
  %8 = ptrtoint ptr %mrq1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mrq1.i, align 4
  store ptr null, ptr %mrq1.i, align 4
  %10 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %cmd, align 4
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %data, align 4
  %dma_on.i = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 5
  %12 = ptrtoint ptr %dma_on.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %dma_on.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %dma_on.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %host, i32 -1920
  tail call void @mmc_request_done(ptr noundef %add.ptr.i.i, ptr noundef %9) #5
  br label %if.end13

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @alcor_trigger_data_transfer(ptr noundef %host)
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.end.i, %if.then12.if.end13_crit_edge
  %13 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %cmd, align 4
  br label %return

return:                                           ; preds = %if.end13, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alcor_data_irq_thread(ptr noundef %host, i32 noundef %intmask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %intmask, 7340090
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.end

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %do.body, label %if.end8

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alcor_data_irq_thread.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alcor_data_irq_thread, %if.then6)) #5
          to label %do.end [label %if.then6], !srcloc !166

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alcor_data_irq_thread.__UNIQUE_ID_ddebug285, ptr noundef %3, ptr noundef nonnull @.str.45, i32 noundef %and) #5
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %alcor_pci.i = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 1
  %4 = ptrtoint ptr %alcor_pci.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %alcor_pci.i, align 4
  tail call void @alcor_write8(ptr noundef %5, i8 noundef zeroext -120, i32 noundef 121) #5
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %do.end
  %i.011.i = phi i32 [ 0, %do.end ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %call.i = tail call zeroext i8 @alcor_read8(ptr noundef %5, i32 noundef 121) #5
  %and10.i = and i8 %call.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10.i)
  %tobool.not.i = icmp eq i8 %and10.i, 0
  br i1 %tobool.not.i, label %for.body.i.if.end20_crit_edge, label %if.end.i

for.body.i.if.end20_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 10737400) #5
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %do.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %host, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #8
  br label %if.end20

if.end8:                                          ; preds = %if.end
  %call9 = tail call fastcc i32 @alcor_data_irq_done(ptr noundef %host, i32 noundef %and)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.if.end20_crit_edge

if.end8.if.end20_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.end12:                                         ; preds = %if.end8
  %and13 = and i32 %intmask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %lor.lhs.false, label %if.end12.if.then19_crit_edge

if.end12.if.then19_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19

lor.lhs.false:                                    ; preds = %if.end12
  %blocks = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 10
  %9 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool15.not = icmp eq i32 %10, 0
  br i1 %tobool15.not, label %lor.lhs.false.if.then19_crit_edge, label %lor.lhs.false16

lor.lhs.false.if.then19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %dma_on = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 5
  %11 = ptrtoint ptr %dma_on to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %dma_on, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool17.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool17.not, label %lor.lhs.false16.if.end20_crit_edge, label %land.lhs.true

lor.lhs.false16.if.end20_crit_edge:               ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

land.lhs.true:                                    ; preds = %lor.lhs.false16
  %sg_count = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 11
  %12 = ptrtoint ptr %sg_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sg_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool18.not = icmp eq i32 %13, 0
  br i1 %tobool18.not, label %land.lhs.true.if.then19_crit_edge, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

land.lhs.true.if.then19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19

if.then19:                                        ; preds = %land.lhs.true.if.then19_crit_edge, %lor.lhs.false.if.then19_crit_edge, %if.end12.if.then19_crit_edge
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  store ptr null, ptr %data, align 4
  %dma_on.i = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 5
  %16 = ptrtoint ptr %dma_on.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i = load i8, ptr %dma_on.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %dma_on.i, align 4
  %error.i = getelementptr inbounds %struct.mmc_data, ptr %15, i32 0, i32 5
  %17 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i32 = icmp eq i32 %18, 0
  br i1 %tobool.not.i32, label %if.end.i33, label %if.end.thread.i

if.end.i33:                                       ; preds = %if.then19
  %blksz.i = getelementptr inbounds %struct.mmc_data, ptr %15, i32 0, i32 2
  %19 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %blksz.i, align 4
  %blocks.i = getelementptr inbounds %struct.mmc_data, ptr %15, i32 0, i32 3
  %21 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %blocks.i, align 4
  %mul.i = mul i32 %22, %20
  %bytes_xfered3.i = getelementptr inbounds %struct.mmc_data, ptr %15, i32 0, i32 7
  %23 = ptrtoint ptr %bytes_xfered3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %mul.i, ptr %bytes_xfered3.i, align 4
  %stop.i = getelementptr inbounds %struct.mmc_data, ptr %15, i32 0, i32 8
  %24 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stop.i, align 4
  %tobool4.not.i = icmp eq ptr %25, null
  br i1 %tobool4.not.i, label %if.end.i33.if.end14.i_crit_edge, label %lor.lhs.false.i

if.end.i33.if.end14.i_crit_edge:                  ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.end.thread.i:                                  ; preds = %if.then19
  %bytes_xfered.i = getelementptr inbounds %struct.mmc_data, ptr %15, i32 0, i32 7
  %26 = ptrtoint ptr %bytes_xfered.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %bytes_xfered.i, align 4
  %stop34.i = getelementptr inbounds %struct.mmc_data, ptr %15, i32 0, i32 8
  %27 = ptrtoint ptr %stop34.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %stop34.i, align 4
  %tobool4.not35.i = icmp eq ptr %28, null
  br i1 %tobool4.not35.i, label %if.end.thread.i.if.end14.i_crit_edge, label %if.then11.i

if.end.thread.i.if.end14.i_crit_edge:             ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

lor.lhs.false.i:                                  ; preds = %if.end.i33
  %mrq.i = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 2
  %29 = ptrtoint ptr %mrq.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mrq.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %tobool7.not.i = icmp eq ptr %32, null
  br i1 %tobool7.not.i, label %lor.lhs.false.i.if.end12.i_crit_edge, label %lor.lhs.false.i.if.end14.i_crit_edge

lor.lhs.false.i.if.end14.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

lor.lhs.false.i.if.end12.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

if.then11.i:                                      ; preds = %if.end.thread.i
  %alcor_pci.i.i = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 1
  %33 = ptrtoint ptr %alcor_pci.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %alcor_pci.i.i, align 4
  tail call void @alcor_write8(ptr noundef %34, i8 noundef zeroext -119, i32 noundef 121) #5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.then11.i
  %i.011.i.i = phi i32 [ 0, %if.then11.i ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %call.i.i = tail call zeroext i8 @alcor_read8(ptr noundef %34, i32 noundef 121) #5
  %and10.i.i = and i8 %call.i.i, 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10.i.i)
  %tobool.not.i.i = icmp eq i8 %and10.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end12.i_crit_edge, label %if.end.i.i

for.body.i.i.if.end12.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 10737400) #5
  %inc.i.i = add nuw nsw i32 %i.011.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 100
  br i1 %exitcond.not.i.i, label %do.end.i.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %host, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #8
  br label %if.end12.i

if.end12.i:                                       ; preds = %do.end.i.i, %for.body.i.i.if.end12.i_crit_edge, %lor.lhs.false.i.if.end12.i_crit_edge
  %stop363841.i = phi ptr [ %stop.i, %lor.lhs.false.i.if.end12.i_crit_edge ], [ %stop34.i, %do.end.i.i ], [ %stop34.i, %for.body.i.i.if.end12.i_crit_edge ]
  %alcor_pci.i30.i = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 1
  %38 = ptrtoint ptr %alcor_pci.i30.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %alcor_pci.i30.i, align 4
  tail call void @alcor_write32(ptr noundef %39, i32 noundef 8323579, i32 noundef 148) #5
  %40 = ptrtoint ptr %stop363841.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %stop363841.i, align 4
  tail call fastcc void @alcor_send_cmd(ptr noundef %host, ptr noundef %41, i1 noundef zeroext false) #5
  br label %if.end20

if.end14.i:                                       ; preds = %lor.lhs.false.i.if.end14.i_crit_edge, %if.end.thread.i.if.end14.i_crit_edge, %if.end.i33.if.end14.i_crit_edge
  %mrq1.i.i = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 2
  %42 = ptrtoint ptr %mrq1.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mrq1.i.i, align 4
  %tobool.not.i31.i = icmp eq ptr %43, null
  br i1 %tobool.not.i31.i, label %if.end14.i.if.end20_crit_edge, label %if.end.i32.i

if.end14.i.if.end20_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.end.i32.i:                                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  %timeout_work.i.i = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 7
  %call.i33.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work.i.i) #5
  %44 = ptrtoint ptr %mrq1.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mrq1.i.i, align 4
  store ptr null, ptr %mrq1.i.i, align 4
  %cmd.i.i = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 3
  %46 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %cmd.i.i, align 4
  %47 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %data, align 4
  %48 = ptrtoint ptr %dma_on.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load.i.i = load i8, ptr %dma_on.i, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, 127
  store i8 %bf.clear.i.i, ptr %dma_on.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %host, i32 -1920
  tail call void @mmc_request_done(ptr noundef %add.ptr.i.i.i, ptr noundef %45) #5
  br label %if.end20

if.end20:                                         ; preds = %if.end.i32.i, %if.end14.i.if.end20_crit_edge, %if.end12.i, %land.lhs.true.if.end20_crit_edge, %lor.lhs.false16.if.end20_crit_edge, %if.end8.if.end20_crit_edge, %do.end.i, %for.body.i.if.end20_crit_edge, %entry.if.end20_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alcor_cd_irq(ptr noundef %host, i32 noundef %intmask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alcor_cd_irq.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alcor_cd_irq, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !166

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %and = and i32 %intmask, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool3.not, ptr @.str.55, ptr @.str.54
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alcor_cd_irq.__UNIQUE_ID_ddebug286, ptr noundef %1, ptr noundef nonnull @.str.53, ptr noundef nonnull %cond) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mrq = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 2
  %2 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mrq, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %do.end.if.end34_crit_edge, label %do.body6

do.end.if.end34_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

do.body6:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alcor_cd_irq.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alcor_cd_irq, %if.then18)) #5
          to label %do.end21 [label %if.then18], !srcloc !166

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alcor_cd_irq.__UNIQUE_ID_ddebug287, ptr noundef %5, ptr noundef nonnull @.str.56) #5
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %do.body6
  %data = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 4
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %tobool22.not = icmp eq ptr %7, null
  br i1 %tobool22.not, label %do.end21.if.end25_crit_edge, label %if.then23

do.end21.if.end25_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then23:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #7
  %error = getelementptr inbounds %struct.mmc_data, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -123, ptr %error, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %do.end21.if.end25_crit_edge
  %cmd = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 3
  %9 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cmd, align 4
  %tobool26.not = icmp eq ptr %10, null
  br i1 %tobool26.not, label %if.else, label %if.end25.if.end33_crit_edge

if.end25.if.end33_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.else:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mrq, align 4
  %cmd31 = getelementptr inbounds %struct.mmc_request, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %cmd31 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmd31, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.end25.if.end33_crit_edge
  %.sink = phi ptr [ %14, %if.else ], [ %10, %if.end25.if.end33_crit_edge ]
  %error32 = getelementptr inbounds %struct.mmc_command, ptr %.sink, i32 0, i32 5
  %15 = ptrtoint ptr %error32 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -123, ptr %error32, align 4
  %16 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mrq, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end33.if.end34_crit_edge, label %if.end.i

if.end33.if.end34_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.end.i:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %timeout_work.i = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 7
  %call.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work.i) #5
  %18 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mrq, align 4
  store ptr null, ptr %mrq, align 4
  %20 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %cmd, align 4
  %21 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %data, align 4
  %dma_on.i = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 5
  %22 = ptrtoint ptr %dma_on.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load.i = load i8, ptr %dma_on.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %dma_on.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %host, i32 -1920
  tail call void @mmc_request_done(ptr noundef %add.ptr.i.i, ptr noundef %19) #5
  br label %if.end34

if.end34:                                         ; preds = %if.end.i, %if.end33.if.end34_crit_edge, %do.end.if.end34_crit_edge
  %add.ptr.i = getelementptr i8, ptr %host, i32 -1920
  tail call void @mmc_detect_change(ptr noundef %add.ptr.i, i32 noundef 1) #5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @alcor_read8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alcor_send_cmd(ptr noundef %host, ptr noundef %cmd, i1 noundef zeroext %set_timeout) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %alcor_pci = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %alcor_pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alcor_pci, align 4
  %cmd1 = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 3
  %2 = ptrtoint ptr %cmd1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cmd, ptr %cmd1, align 4
  tail call fastcc void @alcor_prepare_data(ptr noundef %host, ptr noundef %cmd)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alcor_send_cmd.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alcor_send_cmd, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !166

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %host, align 4
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cmd, align 4
  %arg = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alcor_send_cmd.__UNIQUE_ID_ddebug279, ptr noundef %4, ptr noundef nonnull @.str.47, i32 noundef %6, i32 noundef %8) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %9 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cmd, align 4
  %11 = trunc i32 %10 to i8
  %conv = or i8 %11, 64
  tail call void @alcor_write8(ptr noundef %1, i8 noundef zeroext %conv, i32 noundef 35) #5
  %arg6 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %12 = ptrtoint ptr %arg6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arg6, align 4
  tail call void @alcor_write32be(ptr noundef %1, i32 noundef %13, i32 noundef 36) #5
  %flags = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and = and i32 %15, 31
  %16 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %and, label %do.end13 [
    i32 0, label %do.end.sw.epilog_crit_edge
    i32 21, label %sw.bb7
    i32 29, label %sw.bb8
    i32 7, label %sw.bb9
    i32 1, label %sw.bb10
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb8:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb9:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb10:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end13:                                         ; preds = %do.end
  %17 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %host, align 4
  %init_name.i = getelementptr i8, ptr %host, i32 -1768
  %19 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end.i75, label %do.end13.dev_name.exit_crit_edge

do.end13.dev_name.exit_crit_edge:                 ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i75:                                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev = getelementptr i8, ptr %host, i32 -1912
  %21 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i75, %do.end13.dev_name.exit_crit_edge
  %retval.0.i76 = phi ptr [ %22, %if.end.i75 ], [ %20, %do.end13.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.48, ptr noundef %retval.0.i76, i32 noundef %and) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %dev_name.exit, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %do.end.sw.epilog_crit_edge
  %ctrl.0 = phi i32 [ 0, %dev_name.exit ], [ 128, %sw.bb10 ], [ 192, %sw.bb9 ], [ 80, %sw.bb8 ], [ 64, %sw.bb7 ], [ %and, %do.end.sw.epilog_crit_edge ]
  br i1 %set_timeout, label %if.then20, label %sw.epilog.do.body29_crit_edge

sw.epilog.do.body29_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body29

if.then20:                                        ; preds = %sw.epilog
  %data = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 7
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %tobool21.not = icmp eq ptr %24, null
  br i1 %tobool21.not, label %land.lhs.true, label %if.then20.if.else_crit_edge

if.then20.if.else_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %if.then20
  %busy_timeout = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 6
  %25 = ptrtoint ptr %busy_timeout to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %busy_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool22.not = icmp eq i32 %26, 0
  br i1 %tobool22.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then20.if.else_crit_edge
  br label %if.end25

if.end25:                                         ; preds = %if.else, %land.lhs.true.if.end25_crit_edge
  %timeout.0 = phi i32 [ 10000, %if.else ], [ %26, %land.lhs.true.if.end25_crit_edge ]
  %timeout_work = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 7
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %timeout.0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %27 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %27, ptr noundef %timeout_work, i32 noundef %call2.i) #5
  br label %do.body29

do.body29:                                        ; preds = %if.end25, %sw.epilog.do.body29_crit_edge
  %timeout.1 = phi i32 [ %timeout.0, %if.end25 ], [ 0, %sw.epilog.do.body29_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alcor_send_cmd.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alcor_send_cmd, %if.then41)) #5
          to label %do.end46 [label %if.then41], !srcloc !166

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %host, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alcor_send_cmd.__UNIQUE_ID_ddebug280, ptr noundef %29, ptr noundef nonnull @.str.49, i32 noundef %ctrl.0, i32 noundef %timeout.1) #5
  br label %do.end46

do.end46:                                         ; preds = %if.then41, %do.body29
  %30 = trunc i32 %ctrl.0 to i8
  %conv49 = or i8 %30, 32
  tail call void @alcor_write8(ptr noundef %1, i8 noundef zeroext %conv49, i32 noundef 129) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alcor_prepare_data(ptr noundef %host, ptr nocapture noundef readonly %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %alcor_pci = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %alcor_pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alcor_pci, align 4
  %data1 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 7
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %data2 = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 4
  %4 = ptrtoint ptr %data2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %data2, align 4
  %bytes_xfered = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 7
  %5 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %bytes_xfered, align 4
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %blocks, align 4
  %blocks4 = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 10
  %8 = ptrtoint ptr %blocks4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %blocks4, align 4
  %sg = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 12
  %9 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sg, align 4
  %sg5 = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 9
  %11 = ptrtoint ptr %sg5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %sg5, align 4
  %sg_count = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 11
  %12 = ptrtoint ptr %sg_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sg_count, align 4
  %sg_count6 = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 11
  %14 = ptrtoint ptr %sg_count6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %sg_count6, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alcor_prepare_data.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alcor_prepare_data, %if.then10)) #5
          to label %do.end [label %if.then10], !srcloc !166

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %host, align 4
  %17 = ptrtoint ptr %sg_count6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sg_count6, align 4
  %19 = ptrtoint ptr %blocks4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %blocks4, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alcor_prepare_data.__UNIQUE_ID_ddebug278, ptr noundef %16, ptr noundef nonnull @.str.51, i32 noundef %18, i32 noundef %20) #5
  br label %do.end

do.end:                                           ; preds = %if.then10, %if.end
  %host_cookie = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 13
  %21 = ptrtoint ptr %host_cookie to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %host_cookie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp.not = icmp eq i32 %22, 2
  br i1 %cmp.not, label %do.end.if.end15_crit_edge, label %if.then14

do.end.if.end15_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then14:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data2, align 4
  %flags2.i = getelementptr inbounds %struct.mmc_data, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags2.i, align 4
  %and.i = and i32 %26, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i32 5, i32 3
  %sg_miter.i = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 8
  %sg.i = getelementptr inbounds %struct.mmc_data, ptr %24, i32 0, i32 12
  %27 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sg.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %24, i32 0, i32 10
  %29 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sg_len.i, align 4
  tail call void @sg_miter_start(ptr noundef %sg_miter.i, ptr noundef %28, i32 noundef %30, i32 noundef %..i) #5
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %do.end.if.end15_crit_edge
  tail call void @alcor_write8(ptr noundef %1, i8 noundef zeroext 0, i32 noundef 131) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @alcor_write32be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_detect_change(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alcor_post_req(ptr nocapture noundef readonly %mmc, ptr nocapture noundef readonly %mrq, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %data1 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %host_cookie = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %host_cookie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %host_cookie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i, align 4
  %sg = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sg, align 4
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sg_len, align 4
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %5, ptr noundef %7, i32 noundef %9, i32 noundef %cond.i, i32 noundef 0) #5
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %12 = ptrtoint ptr %host_cookie to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %host_cookie, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alcor_pre_req(ptr nocapture noundef readonly %mmc, ptr nocapture noundef readonly %mrq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %data1 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %cmd2 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %2 = ptrtoint ptr %cmd2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd2, align 4
  %tobool.not = icmp eq ptr %1, null
  %tobool3.not = icmp eq ptr %3, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %host_cookie = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %host_cookie to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %host_cookie, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %3, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %6, label %if.end.cleanup_crit_edge [
    i32 18, label %if.end.if.end7_crit_edge
    i32 25, label %if.end.if.end7_crit_edge69
  ]

if.end.if.end7_crit_edge69:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end.if.end7_crit_edge, %if.end.if.end7_crit_edge69
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %blocks, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %blksz, align 4
  %mul = mul i32 %11, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %mul)
  %cmp8 = icmp ugt i32 %mul, 4095
  %and = and i32 %11, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  %or.cond59 = and i1 %cmp8, %tobool12.not
  br i1 %or.cond59, label %if.end14, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %sg15 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %sg_len16 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %sg_len16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sg_len16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp1761.not = icmp eq i32 %13, 0
  br i1 %cmp1761.not, label %if.end14.for.end_crit_edge, label %for.body.preheader

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.preheader:                               ; preds = %if.end14
  %14 = ptrtoint ptr %sg15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sg15, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.063 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %sg.062 = phi ptr [ %call24, %for.inc.for.body_crit_edge ], [ %15, %for.body.preheader ]
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.062, i32 0, i32 2
  %16 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %17)
  %cmp18.not = icmp eq i32 %17, 4096
  br i1 %cmp18.not, label %if.end20, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %for.body
  %offset = getelementptr inbounds %struct.scatterlist, ptr %sg.062, i32 0, i32 1
  %18 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp21.not = icmp eq i32 %19, 0
  br i1 %cmp21.not, label %for.inc, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc:                                          ; preds = %if.end20
  %inc = add nuw i32 %i.063, 1
  %call24 = tail call ptr @sg_next(ptr noundef %sg.062) #5
  %20 = ptrtoint ptr %sg_len16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sg_len16, align 4
  %cmp17 = icmp ult i32 %inc, %21
  br i1 %cmp17, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end14.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %if.end14.for.end_crit_edge ], [ %21, %for.inc.for.end_crit_edge ]
  %22 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %private.i, align 4
  %24 = ptrtoint ptr %sg15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sg15, align 4
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %27, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 2, i32 1
  %call28 = tail call i32 @dma_map_sg_attrs(ptr noundef %23, ptr noundef %25, i32 noundef %.lcssa, i32 noundef %cond.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %for.end.if.end32_crit_edge, label %if.then30

for.end.if.end32_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then30:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %host_cookie to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %host_cookie, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %for.end.if.end32_crit_edge
  %sg_count = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 11
  %29 = ptrtoint ptr %sg_count to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call28, ptr %sg_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end20.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alcor_request(ptr noundef %mmc, ptr noundef %mrq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %cmd_mutex = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %cmd_mutex, i32 noundef 0) #5
  %mrq1 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %0 = ptrtoint ptr %mrq1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %mrq, ptr %mrq1, align 4
  %alcor_pci.i = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %private.i, i32 0, i32 1
  %1 = ptrtoint ptr %alcor_pci.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %alcor_pci.i, align 4
  %call1.i = tail call zeroext i8 @alcor_read8(ptr noundef %2, i32 noundef 118) #5
  %3 = and i8 %call1.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.i.not = icmp eq i8 %3, 1
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd, align 4
  br i1 %cmp.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @alcor_send_cmd(ptr noundef %private.i, ptr noundef %5, i1 noundef zeroext true)
  br label %if.end

if.else:                                          ; preds = %entry
  %error = getelementptr inbounds %struct.mmc_command, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -123, ptr %error, align 4
  %7 = ptrtoint ptr %mrq1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mrq1, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.else.if.end_crit_edge, label %if.end.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %timeout_work.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 2
  %call.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work.i) #5
  %9 = ptrtoint ptr %mrq1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mrq1, align 4
  store ptr null, ptr %mrq1, align 4
  %cmd.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %cmd.i, align 4
  %data.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %data.i, align 4
  %dma_on.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 2
  %13 = ptrtoint ptr %dma_on.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i = load i8, ptr %dma_on.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %dma_on.i, align 4
  tail call void @mmc_request_done(ptr noundef %mmc, ptr noundef %10) #5
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.else.if.end_crit_edge, %if.then
  tail call void @mutex_unlock(ptr noundef %cmd_mutex) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alcor_set_ios(ptr noundef %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %cmd_mutex = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %cmd_mutex, i32 noundef 0) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alcor_set_ios.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alcor_set_ios, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !166

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %bus_width = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 6
  %2 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bus_width, align 1
  %conv = zext i8 %3 to i32
  %power_mode = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 5
  %4 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %power_mode, align 2
  %conv4 = zext i8 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alcor_set_ios.__UNIQUE_ID_ddebug291, ptr noundef %1, ptr noundef nonnull @.str.61, i32 noundef %conv, i32 noundef %conv4) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %power_mode5 = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 5
  %6 = ptrtoint ptr %power_mode5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %power_mode5, align 2
  %cur_power_mode = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 10, i32 1, i32 1
  %8 = ptrtoint ptr %cur_power_mode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cur_power_mode, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %9)
  %cmp.not = icmp eq i8 %7, %9
  br i1 %cmp.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %do.end
  %alcor_pci.i = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %private.i, i32 0, i32 1
  %10 = ptrtoint ptr %alcor_pci.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %alcor_pci.i, align 4
  %12 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.71)
  switch i8 %7, label %do.end.i [
    i8 0, label %sw.bb.i
    i8 1, label %if.then9.alcor_set_power_mode.exit_crit_edge
    i8 2, label %sw.bb1.i
  ]

if.then9.alcor_set_power_mode.exit_crit_edge:     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %alcor_set_power_mode.exit

sw.bb.i:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ios, align 4
  tail call fastcc void @alcor_set_clock(ptr noundef %private.i, i32 noundef %14) #5
  tail call void @alcor_write8(ptr noundef %11, i8 noundef zeroext 0, i32 noundef 122) #5
  tail call void @alcor_write8(ptr noundef %11, i8 noundef zeroext 0, i32 noundef 112) #5
  br label %alcor_set_power_mode.exit

sw.bb1.i:                                         ; preds = %if.then9
  tail call void @alcor_write8(ptr noundef %11, i8 noundef zeroext 1, i32 noundef 117) #5
  tail call void @alcor_write8(ptr noundef %11, i8 noundef zeroext 0, i32 noundef 133) #5
  tail call void @alcor_write8(ptr noundef %11, i8 noundef zeroext 32, i32 noundef 134) #5
  tail call void @alcor_write8(ptr noundef %11, i8 noundef zeroext 0, i32 noundef 130) #5
  %15 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ios, align 4
  tail call fastcc void @alcor_set_clock(ptr noundef %private.i, i32 noundef %16) #5
  tail call void @alcor_write8(ptr noundef %11, i8 noundef zeroext 1, i32 noundef 112) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #5
  %37 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ios, align 4
  tail call fastcc void @alcor_set_clock(ptr noundef %private.i, i32 noundef %38) #5
  tail call void @alcor_write8(ptr noundef %11, i8 noundef zeroext 1, i32 noundef 122) #5
  tail call void @alcor_write8(ptr noundef %11, i8 noundef zeroext -128, i32 noundef 131) #5
  tail call void @alcor_write8(ptr noundef %11, i8 noundef zeroext 125, i32 noundef 105) #5
  br label %while.body8.i

while.body8.i:                                    ; preds = %while.body8.i.while.body8.i_crit_edge, %sw.bb1.i
  %__ms4.027.i = phi i32 [ 100, %sw.bb1.i ], [ %dec6.i, %while.body8.i.while.body8.i_crit_edge ]
  %dec6.i = add nsw i32 %__ms4.027.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #5
  %tobool7.not.i = icmp eq i32 %dec6.i, 0
  br i1 %tobool7.not.i, label %while.body8.i.alcor_set_power_mode.exit_crit_edge, label %while.body8.i.while.body8.i_crit_edge

while.body8.i.while.body8.i_crit_edge:            ; preds = %while.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body8.i

while.body8.i.alcor_set_power_mode.exit_crit_edge: ; preds = %while.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %alcor_set_power_mode.exit

do.end.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %private.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.62) #8
  br label %alcor_set_power_mode.exit

alcor_set_power_mode.exit:                        ; preds = %do.end.i, %while.body8.i.alcor_set_power_mode.exit_crit_edge, %sw.bb.i, %if.then9.alcor_set_power_mode.exit_crit_edge
  %42 = ptrtoint ptr %power_mode5 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %power_mode5, align 2
  %44 = ptrtoint ptr %cur_power_mode to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %cur_power_mode, align 4
  br label %if.end12

if.else:                                          ; preds = %do.end
  %timing.i = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 7
  %45 = ptrtoint ptr %timing.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %timing.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp.i = icmp eq i8 %46, 0
  %alcor_pci.i.i = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %private.i, i32 0, i32 1
  %47 = ptrtoint ptr %alcor_pci.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %alcor_pci.i.i, align 4
  %call.i.i = tail call zeroext i8 @alcor_read8(ptr noundef %48, i32 noundef 134) #5
  %and.i.i = and i8 %call.i.i, 63
  %masksel.i = select i1 %cmp.i, i8 0, i8 -64
  %or.i.sink.i = or i8 %and.i.i, %masksel.i
  tail call void @alcor_write8(ptr noundef %48, i8 noundef zeroext %or.i.sink.i, i32 noundef 134) #5
  %49 = ptrtoint ptr %alcor_pci.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %alcor_pci.i.i, align 4
  %bus_width.i = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 6
  %51 = ptrtoint ptr %bus_width.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bus_width.i, align 1
  %53 = zext i8 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.72)
  switch i8 %52, label %do.end.i32 [
    i8 0, label %if.then.i
    i8 2, label %if.then6.i
  ]

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @alcor_write8(ptr noundef %50, i8 noundef zeroext 0, i32 noundef 130) #5
  br label %alcor_set_bus_width.exit

if.then6.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @alcor_write8(ptr noundef %50, i8 noundef zeroext 32, i32 noundef 130) #5
  br label %alcor_set_bus_width.exit

do.end.i32:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %private.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.64) #8
  br label %alcor_set_bus_width.exit

alcor_set_bus_width.exit:                         ; preds = %do.end.i32, %if.then6.i, %if.then.i
  %56 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ios, align 4
  tail call fastcc void @alcor_set_clock(ptr noundef %private.i, i32 noundef %57)
  br label %if.end12

if.end12:                                         ; preds = %alcor_set_bus_width.exit, %alcor_set_power_mode.exit
  tail call void @mutex_unlock(ptr noundef %cmd_mutex) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alcor_get_ro(ptr nocapture noundef readonly %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %alcor_pci = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %private.i, i32 0, i32 1
  %0 = ptrtoint ptr %alcor_pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alcor_pci, align 4
  %call1 = tail call zeroext i8 @alcor_read8(ptr noundef %1, i32 noundef 116) #5
  %2 = and i8 %call1, 1
  %3 = zext i8 %2 to i32
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alcor_get_cd(ptr nocapture noundef readonly %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %alcor_pci = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %private.i, i32 0, i32 1
  %0 = ptrtoint ptr %alcor_pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alcor_pci, align 4
  %call1 = tail call zeroext i8 @alcor_read8(ptr noundef %1, i32 noundef 118) #5
  %2 = and i8 %call1, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp = icmp eq i8 %2, 1
  %conv4 = zext i1 %cmp to i32
  ret i32 %conv4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alcor_signal_voltage_switch(ptr noundef %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %cmd_mutex = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %cmd_mutex, i32 noundef 0) #5
  %signal_voltage = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 8
  %0 = ptrtoint ptr %signal_voltage to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %signal_voltage, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.73)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %alcor_pci.i = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %private.i, i32 0, i32 1
  %3 = ptrtoint ptr %alcor_pci.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %alcor_pci.i, align 4
  %call.i = tail call zeroext i8 @alcor_read8(ptr noundef %4, i32 noundef 133) #5
  %and.i = and i8 %call.i, -2
  tail call void @alcor_write8(ptr noundef %4, i8 noundef zeroext %and.i, i32 noundef 133) #5
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %alcor_pci.i6 = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %private.i, i32 0, i32 1
  %5 = ptrtoint ptr %alcor_pci.i6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %alcor_pci.i6, align 4
  %call.i7 = tail call zeroext i8 @alcor_read8(ptr noundef %6, i32 noundef 133) #5
  %or.i = or i8 %call.i7, 1
  tail call void @alcor_write8(ptr noundef %6, i8 noundef zeroext %or.i, i32 noundef 133) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  tail call void @mutex_unlock(ptr noundef %cmd_mutex) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alcor_card_busy(ptr nocapture noundef readonly %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %alcor_pci = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %private.i, i32 0, i32 1
  %0 = ptrtoint ptr %alcor_pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alcor_pci, align 4
  %call1 = tail call zeroext i8 @alcor_read8(ptr noundef %1, i32 noundef 132) #5
  %2 = and i8 %call1, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alcor_set_clock(ptr nocapture noundef readonly %host, i32 noundef %clock) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %alcor_pci = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %alcor_pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alcor_pci, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clock)
  %cmp = icmp eq i32 %clock, 0
  br i1 %cmp, label %entry.cleanup33_crit_edge, label %for.body.preheader

entry.cleanup33_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup33

for.body.preheader:                               ; preds = %entry
  %sub = add i32 %clock, 31249999
  %div = udiv i32 %sub, %clock
  call void @__sanitizer_cov_trace_const_cmp4(i32 -31250000, i32 %clock)
  %cmp2 = icmp ugt i32 %clock, -31250000
  br i1 %cmp2, label %for.body.preheader.cleanup.3_crit_edge, label %lor.lhs.false

for.body.preheader.cleanup.3_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.3

lor.lhs.false:                                    ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %div)
  %cmp3 = icmp ugt i32 %div, 511
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %if.end5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %sub8 = add nuw nsw i32 %div, 31249999
  %div9 = udiv i32 %sub8, %div
  %sub10 = sub i32 %clock, %div9
  %2 = tail call i32 @llvm.abs.i32(i32 %sub10, i1 false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %2)
  %cmp13 = icmp ult i32 %2, 2147483647
  %conv15 = trunc i32 %div to i8
  %spec.select = select i1 %cmp13, i8 %conv15, i8 0
  %3 = call i32 @llvm.umin.i32(i32 %2, i32 2147483647)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %lor.lhs.false.cleanup_crit_edge
  %tmp_clock.1 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %div9, %if.end5 ]
  %clk_div.2 = phi i8 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %spec.select, %if.end5 ]
  %diff.2 = phi i32 [ 2147483647, %lor.lhs.false.cleanup_crit_edge ], [ %3, %if.end5 ]
  %sub.1 = add i32 %clock, 47999999
  %div.1 = udiv i32 %sub.1, %clock
  call void @__sanitizer_cov_trace_const_cmp4(i32 -48000000, i32 %clock)
  %cmp2.1 = icmp ugt i32 %clock, -48000000
  br i1 %cmp2.1, label %cleanup.cleanup.3_crit_edge, label %lor.lhs.false.1

cleanup.cleanup.3_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.3

lor.lhs.false.1:                                  ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %div.1)
  %cmp3.1 = icmp ugt i32 %div.1, 511
  br i1 %cmp3.1, label %lor.lhs.false.1.cleanup.1_crit_edge, label %if.end5.1

lor.lhs.false.1.cleanup.1_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.1

if.end5.1:                                        ; preds = %lor.lhs.false.1
  %sub8.1 = add nuw nsw i32 %div.1, 47999999
  %div9.1 = udiv i32 %sub8.1, %div.1
  %sub10.1 = sub i32 %clock, %div9.1
  %4 = tail call i32 @llvm.abs.i32(i32 %sub10.1, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %diff.2)
  %cmp13.1 = icmp ult i32 %4, %diff.2
  br i1 %cmp13.1, label %if.then14.1, label %if.end5.1.cleanup.1_crit_edge

if.end5.1.cleanup.1_crit_edge:                    ; preds = %if.end5.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.1

if.then14.1:                                      ; preds = %if.end5.1
  call void @__sanitizer_cov_trace_pc() #7
  %conv15.1 = trunc i32 %div.1 to i8
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.then14.1, %if.end5.1.cleanup.1_crit_edge, %lor.lhs.false.1.cleanup.1_crit_edge
  %tmp_clock.1.1 = phi i32 [ %tmp_clock.1, %lor.lhs.false.1.cleanup.1_crit_edge ], [ %div9.1, %if.then14.1 ], [ %div9.1, %if.end5.1.cleanup.1_crit_edge ]
  %clk_src.2.1 = phi i16 [ 0, %lor.lhs.false.1.cleanup.1_crit_edge ], [ 16, %if.then14.1 ], [ 0, %if.end5.1.cleanup.1_crit_edge ]
  %clk_div.2.1 = phi i8 [ %clk_div.2, %lor.lhs.false.1.cleanup.1_crit_edge ], [ %conv15.1, %if.then14.1 ], [ %clk_div.2, %if.end5.1.cleanup.1_crit_edge ]
  %diff.2.1 = phi i32 [ %diff.2, %lor.lhs.false.1.cleanup.1_crit_edge ], [ %4, %if.then14.1 ], [ %diff.2, %if.end5.1.cleanup.1_crit_edge ]
  %sub.2 = add i32 %clock, 124999999
  %div.2 = udiv i32 %sub.2, %clock
  call void @__sanitizer_cov_trace_const_cmp4(i32 -125000000, i32 %clock)
  %cmp2.2 = icmp ugt i32 %clock, -125000000
  br i1 %cmp2.2, label %cleanup.1.cleanup.3_crit_edge, label %lor.lhs.false.2

cleanup.1.cleanup.3_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.3

lor.lhs.false.2:                                  ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %div.2)
  %cmp3.2 = icmp ugt i32 %div.2, 511
  br i1 %cmp3.2, label %lor.lhs.false.2.cleanup.2_crit_edge, label %if.end5.2

lor.lhs.false.2.cleanup.2_crit_edge:              ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.2

if.end5.2:                                        ; preds = %lor.lhs.false.2
  %sub8.2 = add nuw nsw i32 %div.2, 124999999
  %div9.2 = udiv i32 %sub8.2, %div.2
  %sub10.2 = sub i32 %clock, %div9.2
  %5 = tail call i32 @llvm.abs.i32(i32 %sub10.2, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %diff.2.1)
  %cmp13.2 = icmp ult i32 %5, %diff.2.1
  br i1 %cmp13.2, label %if.then14.2, label %if.end5.2.cleanup.2_crit_edge

if.end5.2.cleanup.2_crit_edge:                    ; preds = %if.end5.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.2

if.then14.2:                                      ; preds = %if.end5.2
  call void @__sanitizer_cov_trace_pc() #7
  %conv15.2 = trunc i32 %div.2 to i8
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.then14.2, %if.end5.2.cleanup.2_crit_edge, %lor.lhs.false.2.cleanup.2_crit_edge
  %tmp_clock.1.2 = phi i32 [ %tmp_clock.1.1, %lor.lhs.false.2.cleanup.2_crit_edge ], [ %div9.2, %if.then14.2 ], [ %div9.2, %if.end5.2.cleanup.2_crit_edge ]
  %clk_src.2.2 = phi i16 [ %clk_src.2.1, %lor.lhs.false.2.cleanup.2_crit_edge ], [ 32, %if.then14.2 ], [ %clk_src.2.1, %if.end5.2.cleanup.2_crit_edge ]
  %clk_div.2.2 = phi i8 [ %clk_div.2.1, %lor.lhs.false.2.cleanup.2_crit_edge ], [ %conv15.2, %if.then14.2 ], [ %clk_div.2.1, %if.end5.2.cleanup.2_crit_edge ]
  %diff.2.2 = phi i32 [ %diff.2.1, %lor.lhs.false.2.cleanup.2_crit_edge ], [ %5, %if.then14.2 ], [ %diff.2.1, %if.end5.2.cleanup.2_crit_edge ]
  %sub.3 = add i32 %clock, 383999999
  %div.3 = udiv i32 %sub.3, %clock
  call void @__sanitizer_cov_trace_const_cmp4(i32 -384000000, i32 %clock)
  %cmp2.3 = icmp ugt i32 %clock, -384000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %div.3)
  %cmp3.3 = icmp ugt i32 %div.3, 511
  %or.cond = or i1 %cmp2.3, %cmp3.3
  br i1 %or.cond, label %cleanup.2.cleanup.3_crit_edge, label %if.end5.3

cleanup.2.cleanup.3_crit_edge:                    ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.3

if.end5.3:                                        ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #7
  %sub8.3 = add nuw nsw i32 %div.3, 383999999
  %div9.3 = udiv i32 %sub8.3, %div.3
  %sub10.3 = sub i32 %clock, %div9.3
  %6 = tail call i32 @llvm.abs.i32(i32 %sub10.3, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %diff.2.2)
  %cmp13.3 = icmp ult i32 %6, %diff.2.2
  %conv15.3 = trunc i32 %div.3 to i8
  %spec.select93 = select i1 %cmp13.3, i16 48, i16 %clk_src.2.2
  %spec.select94 = select i1 %cmp13.3, i8 %conv15.3, i8 %clk_div.2.2
  br label %cleanup.3

cleanup.3:                                        ; preds = %if.end5.3, %cleanup.2.cleanup.3_crit_edge, %cleanup.1.cleanup.3_crit_edge, %cleanup.cleanup.3_crit_edge, %for.body.preheader.cleanup.3_crit_edge
  %tmp_clock.1.3 = phi i32 [ %tmp_clock.1.2, %cleanup.2.cleanup.3_crit_edge ], [ %tmp_clock.1.1, %cleanup.1.cleanup.3_crit_edge ], [ %tmp_clock.1, %cleanup.cleanup.3_crit_edge ], [ 0, %for.body.preheader.cleanup.3_crit_edge ], [ %div9.3, %if.end5.3 ]
  %clk_src.2.3 = phi i16 [ %clk_src.2.2, %cleanup.2.cleanup.3_crit_edge ], [ %clk_src.2.1, %cleanup.1.cleanup.3_crit_edge ], [ 0, %cleanup.cleanup.3_crit_edge ], [ 0, %for.body.preheader.cleanup.3_crit_edge ], [ %spec.select93, %if.end5.3 ]
  %clk_div.2.3 = phi i8 [ %clk_div.2.2, %cleanup.2.cleanup.3_crit_edge ], [ %clk_div.2.1, %cleanup.1.cleanup.3_crit_edge ], [ %clk_div.2, %cleanup.cleanup.3_crit_edge ], [ 0, %for.body.preheader.cleanup.3_crit_edge ], [ %spec.select94, %if.end5.3 ]
  %conv19.tr = zext i8 %clk_div.2.3 to i16
  %7 = shl nuw i16 %conv19.tr, 8
  %8 = add i16 %7, -256
  %conv22 = or i16 %clk_src.2.3, %8
  %9 = or i16 %conv22, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alcor_set_clock.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alcor_set_clock, %if.then29)) #5
          to label %cleanup33 [label %if.then29], !srcloc !166

if.then29:                                        ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #7
  %conv19 = zext i8 %clk_div.2.3 to i32
  %10 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host, align 4
  %conv31 = zext i16 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alcor_set_clock.__UNIQUE_ID_ddebug290, ptr noundef %11, ptr noundef nonnull @.str.67, i32 noundef %clock, i32 noundef %tmp_clock.1.3, i32 noundef %conv19, i32 noundef %conv31) #5
  br label %cleanup33

cleanup33:                                        ; preds = %if.then29, %cleanup.3, %entry.cleanup33_crit_edge
  %.sink = phi i16 [ 0, %entry.cleanup33_crit_edge ], [ %9, %cleanup.3 ], [ %9, %if.then29 ]
  tail call void @alcor_write16(ptr noundef %1, i16 noundef zeroext %.sink, i32 noundef 114) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @alcor_write16(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alcor_hw_uninit(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %alcor_pci = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %alcor_pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alcor_pci, align 4
  tail call void @alcor_write32(ptr noundef %1, i32 noundef 0, i32 noundef 148) #5
  %2 = ptrtoint ptr %alcor_pci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %alcor_pci, align 4
  tail call void @alcor_write8(ptr noundef %3, i8 noundef zeroext -119, i32 noundef 121) #5
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.011.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %call.i = tail call zeroext i8 @alcor_read8(ptr noundef %3, i32 noundef 121) #5
  %and10.i = and i8 %call.i, 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10.i)
  %tobool.not.i = icmp eq i8 %and10.i, 0
  br i1 %tobool.not.i, label %for.body.i.alcor_reset.exit_crit_edge, label %if.end.i

for.body.i.alcor_reset.exit_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %alcor_reset.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 10737400) #5
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %do.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %host, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #8
  br label %alcor_reset.exit

alcor_reset.exit:                                 ; preds = %do.end.i, %for.body.i.alcor_reset.exit_crit_edge
  tail call void @alcor_write8(ptr noundef %1, i8 noundef zeroext 0, i32 noundef 118) #5
  tail call void @alcor_write8(ptr noundef %1, i8 noundef zeroext 0, i32 noundef 122) #5
  tail call void @alcor_write8(ptr noundef %1, i8 noundef zeroext 0, i32 noundef 112) #5
  tail call void @alcor_write8(ptr noundef %1, i8 noundef zeroext 0, i32 noundef 133) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alcor_pci_sdmmc_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %timeout_work = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %1, i32 0, i32 7
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %timeout_work) #5
  br i1 %call1, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %mrq1.i = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mrq1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mrq1.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %mrq1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %mrq1.i, align 4
  %cmd.i = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %cmd.i, align 4
  %data.i = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %data.i, align 4
  %dma_on.i = getelementptr inbounds %struct.alcor_sdmmc_host, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %dma_on.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %dma_on.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %dma_on.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -1920
  tail call void @mmc_request_done(ptr noundef %add.ptr.i.i, ptr noundef nonnull %3) #5
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call fastcc void @alcor_hw_uninit(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alcor_pci_sdmmc_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call fastcc void @alcor_hw_init(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !79, !81, !82, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !112, !113, !114, !116, !117, !118, !119, !120, !122, !123, !125, !126, !127, !129, !130, !131, !133, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !147, !149, !150, !151, !153, !155}
!llvm.module.flags = !{!157, !158, !159, !160, !161, !162, !163, !164}
!llvm.ident = !{!165}

!0 = !{ptr @__initcall__kmod_alcor__293_1185_alcor_pci_sdmmc_driver_init6, !1, !"__initcall__kmod_alcor__293_1185_alcor_pci_sdmmc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/alcor.c", i32 1185, i32 1}
!2 = !{ptr @__exitcall_alcor_pci_sdmmc_driver_exit, !1, !"__exitcall_alcor_pci_sdmmc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author294, !4, !"__UNIQUE_ID_author294", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/alcor.c", i32 1187, i32 1}
!5 = !{ptr @__UNIQUE_ID_description295, !6, !"__UNIQUE_ID_description295", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/alcor.c", i32 1188, i32 1}
!7 = !{ptr @__UNIQUE_ID_file296, !8, !"__UNIQUE_ID_file296", i1 false, i1 false}
!8 = !{!"../drivers/mmc/host/alcor.c", i32 1189, i32 1}
!9 = !{ptr @__UNIQUE_ID_license297, !8, !"__UNIQUE_ID_license297", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/alcor.c", i32 1180, i32 11}
!12 = !{ptr @alcor_pci_sdmmc_driver, !13, !"alcor_pci_sdmmc_driver", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/alcor.c", i32 1175, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/alcor.c", i32 1088, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @alcor_pci_sdmmc_drv_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @alcor_pci_sdmmc_drv_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mmc/host/alcor.c", i32 1106, i32 3}
!24 = !{ptr @alcor_pci_sdmmc_drv_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @alcor_pci_sdmmc_drv_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @alcor_pci_sdmmc_drv_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/mmc/host/alcor.c", i32 1110, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @alcor_pci_sdmmc_drv_probe.__key.10, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/mmc/host/alcor.c", i32 1111, i32 2}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @alcor_pci_sdmmc_drv_probe.__key.12, !30, !"__key", i1 false, i1 false}
!33 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mmc/host/alcor.c", i32 426, i32 3}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @alcor_cmd_irq_done.__UNIQUE_ID_ddebug282, !35, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mmc/host/alcor.c", i32 434, i32 4}
!41 = !{ptr @alcor_cmd_irq_done.__UNIQUE_ID_ddebug283, !40, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mmc/host/alcor.c", i32 131, i32 3}
!44 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @alcor_data_set_dma._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @alcor_data_set_dma._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mmc/host/alcor.c", i32 136, i32 3}
!49 = !{ptr @alcor_data_set_dma._entry.20, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @alcor_data_set_dma._entry_ptr.22, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mmc/host/alcor.c", i32 509, i32 3}
!53 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @alcor_data_irq_done._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @alcor_data_irq_done._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mmc/host/alcor.c", i32 195, i32 3}
!58 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @alcor_trf_block_pio._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @alcor_trf_block_pio._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mmc/host/alcor.c", i32 200, i32 3}
!63 = !{ptr @alcor_trf_block_pio._entry.27, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @alcor_trf_block_pio._entry_ptr.29, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mmc/host/alcor.c", i32 210, i32 2}
!67 = !{ptr @alcor_trf_block_pio.__UNIQUE_ID_ddebug277, !66, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!68 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mmc/host/alcor.c", i32 581, i32 3}
!72 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @alcor_irq_thread.__UNIQUE_ID_ddebug288, !71, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/mmc/host/alcor.c", i32 603, i32 3}
!76 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @alcor_irq_thread._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @alcor_irq_thread._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/mmc/host/alcor.c", i32 609, i32 3}
!81 = !{ptr @alcor_irq_thread.__UNIQUE_ID_ddebug289, !80, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/mmc/host/alcor.c", i32 385, i32 2}
!84 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @alcor_err_irq.__UNIQUE_ID_ddebug281, !83, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mmc/host/alcor.c", i32 116, i32 2}
!88 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @alcor_reset._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @alcor_reset._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/mmc/host/alcor.c", i32 459, i32 3}
!93 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @alcor_cmd_irq_thread.__UNIQUE_ID_ddebug284, !92, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/mmc/host/alcor.c", i32 533, i32 3}
!97 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @alcor_data_irq_thread.__UNIQUE_ID_ddebug285, !96, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!99 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/mmc/host/alcor.c", i32 272, i32 2}
!101 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @alcor_send_cmd.__UNIQUE_ID_ddebug279, !100, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!103 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/mmc/host/alcor.c", i32 294, i32 3}
!105 = !{ptr @alcor_send_cmd._entry, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @alcor_send_cmd._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/mmc/host/alcor.c", i32 309, i32 2}
!109 = !{ptr @alcor_send_cmd.__UNIQUE_ID_ddebug280, !108, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!110 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/mmc/host/alcor.c", i32 253, i32 2}
!112 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @alcor_prepare_data.__UNIQUE_ID_ddebug278, !111, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/mmc/host/alcor.c", i32 549, i32 2}
!116 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @alcor_cd_irq.__UNIQUE_ID_ddebug286, !115, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!118 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/mmc/host/alcor.c", i32 553, i32 3}
!122 = !{ptr @alcor_cd_irq.__UNIQUE_ID_ddebug287, !121, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!123 = !{ptr @.str.57, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/mmc/host/alcor.c", i32 968, i32 2}
!125 = !{ptr @.str.58, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @alcor_timeout_timer.__UNIQUE_ID_ddebug292, !124, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/mmc/host/alcor.c", i32 970, i32 3}
!129 = !{ptr @alcor_timeout_timer._entry, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @alcor_timeout_timer._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @alcor_sdc_ops, !132, !"alcor_sdc_ops", i1 false, i1 false}
!132 = !{!"../drivers/mmc/host/alcor.c", i32 950, i32 34}
!133 = !{ptr @.str.60, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/mmc/host/alcor.c", i32 912, i32 2}
!135 = !{ptr @.str.61, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @alcor_set_ios.__UNIQUE_ID_ddebug291, !134, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!137 = !{ptr @.str.62, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/mmc/host/alcor.c", i32 902, i32 3}
!139 = !{ptr @.str.63, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @alcor_set_power_mode._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @alcor_set_power_mode._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.64, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/mmc/host/alcor.c", i32 716, i32 3}
!144 = !{ptr @.str.65, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @alcor_set_bus_width._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @alcor_set_bus_width._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.66, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/mmc/host/alcor.c", i32 685, i32 2}
!149 = !{ptr @.str.67, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @alcor_set_clock.__UNIQUE_ID_ddebug290, !148, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!151 = distinct !{null, !152, !"alcor_pll_cfg", i1 false, i1 false}
!152 = !{!"../drivers/mmc/host/alcor.c", i32 64, i32 36}
!153 = !{ptr @alcor_mmc_pm_ops, !154, !"alcor_mmc_pm_ops", i1 false, i1 false}
!154 = !{!"../drivers/mmc/host/alcor.c", i32 1163, i32 8}
!155 = !{ptr @alcor_pci_sdmmc_ids, !156, !"alcor_pci_sdmmc_ids", i1 false, i1 false}
!156 = !{!"../drivers/mmc/host/alcor.c", i32 1166, i32 40}
!157 = !{i32 1, !"wchar_size", i32 2}
!158 = !{i32 1, !"min_enum_size", i32 4}
!159 = !{i32 8, !"branch-target-enforcement", i32 0}
!160 = !{i32 8, !"sign-return-address", i32 0}
!161 = !{i32 8, !"sign-return-address-all", i32 0}
!162 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!163 = !{i32 7, !"uwtable", i32 1}
!164 = !{i32 7, !"frame-pointer", i32 2}
!165 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!166 = !{i64 2148784364, i64 2148784369, i64 2148784382, i64 2148784426, i64 2148784460, i64 2148784481}

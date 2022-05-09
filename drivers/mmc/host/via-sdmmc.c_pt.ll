; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/via-sdmmc.c_pt.bc'
source_filename = "../drivers/mmc/host/via-sdmmc.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.via_crdr_mmc_host = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.pcictrlreg, %struct.sdhcreg, %struct.work_struct, %struct.tasklet_struct, %struct.timer_list, %struct.spinlock, i8, i32, i32 }
%struct.pcictrlreg = type { [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.sdhcreg = type { i32, i32, i32, i32, [4 x i32], i32, i32, i32, i32, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.76, i32 }
%union.anon.76 = type { ptr }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__initcall__kmod_via_sdmmc__282_1310_via_sd_driver_init6 = internal global ptr @via_sd_driver_init, section ".initcall6.init", align 4
@via_sd_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @via_ids, ptr @via_sd_probe, ptr @via_sd_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @via_sd_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_via_sd_driver_exit = internal global ptr @via_sd_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file283 = internal constant [42 x i8] c"via_sdmmc.file=drivers/mmc/host/via-sdmmc\00", section ".modinfo", align 1
@__UNIQUE_ID_license284 = internal constant [22 x i8] c"via_sdmmc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author285 = internal constant [39 x i8] c"via_sdmmc.author=VIA Technologies Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description286 = internal constant [55 x i8] c"via_sdmmc.description=VIA SD/MMC Card Interface driver\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"via_sdmmc\00", [22 x i8] zeroinitializer }, align 32
@via_ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4358, i32 38192, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@via_sd_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @via_sd_suspend, ptr @via_sd_resume, ptr @via_sd_suspend, ptr @via_sd_resume, ptr @via_sd_suspend, ptr @via_sd_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@via_sd_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1089, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\016via_sdmmc: VIA SDMMC controller found at %s [%04x:%04x] (rev %x)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"via_sd_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/mmc/host/via-sdmmc.c\00", [35 x i8] zeroinitializer }, align 32
@via_sd_probe._entry_ptr = internal global ptr @via_sd_probe._entry, section ".printk_index", align 4
@via_init_mmc_host.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&host->timer)\00", [17 x i8] zeroinitializer }, align 32
@via_init_mmc_host.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&host->lock\00", [20 x i8] zeroinitializer }, align 32
@via_sdc_ops = internal constant { %struct.mmc_host_ops, [32 x i8] } { %struct.mmc_host_ops { ptr null, ptr null, ptr @via_sdc_request, ptr null, ptr @via_sdc_set_ios, ptr @via_sdc_get_ro, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@via_init_mmc_host.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&host->carddet_work)\00", [57 x i8] zeroinitializer }, align 32
@via_sdc_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 946, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s: Timeout waiting for hardware interrupt.cmd:0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"via_sdc_timeout\00", [16 x i8] zeroinitializer }, align 32
@via_sdc_timeout._entry_ptr = internal global ptr @via_sdc_timeout._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@via_sdc_send_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: cmd->flag is not valid\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"via_sdc_send_command\00", [43 x i8] zeroinitializer }, align 32
@via_sdc_send_command._entry_ptr = internal global ptr @via_sdc_send_command._entry, section ".printk_index", align 4
@via_set_ddma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 472, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"forcing card speed to 8MHz\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"via_set_ddma\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@via_set_ddma._entry_ptr = internal global ptr @via_set_ddma._entry, section ".printk_index", align 4
@via_sdc_card_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 1006, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Card removed during transfer!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"via_sdc_card_detect\00", [44 x i8] zeroinitializer }, align 32
@via_sdc_card_detect._entry_ptr = internal global ptr @via_sdc_card_detect._entry, section ".printk_index", align 4
@via_print_pcictrl.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 0, i8 88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"via_print_pcictrl\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PCI Control Registers:\0A\00", [40 x i8] zeroinitializer }, align 32
@via_print_pcictrl.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.3, ptr @.str.21, i8 0, i8 89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"PCICLKGATT=%02x, PCISDCCLK=%02x, PCIDMACLK=%02x\0A\00", [47 x i8] zeroinitializer }, align 32
@via_print_pcictrl.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.3, ptr @.str.22, i8 0, i8 90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"PCIINTCTRL=%02x, PCIINTSTATUS=%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@via_print_sdchc.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.3, ptr @.str.24, i8 0, i8 84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"via_print_sdchc\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SDC MMIO Registers:\0A\00", [43 x i8] zeroinitializer }, align 32
@via_print_sdchc.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.3, ptr @.str.25, i8 0, i8 85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"SDCONTROL=%08x, SDCMDARG=%08x, SDBUSMODE=%08x\0A\00", [49 x i8] zeroinitializer }, align 32
@via_print_sdchc.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.3, ptr @.str.26, i8 0, i8 86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"SDBLKLEN=%08x, SDCURBLKCNT=%08x, SDINTMASK=%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@via_print_sdchc.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.3, ptr @.str.27, i8 0, i8 87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"SDSTATUS=%08x, SDCLKSEL=%08x, SDEXTCTRL=%08x\0A\00", [50 x i8] zeroinitializer }, align 32
@via_sdc_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 922, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: Unexpected interrupt 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"via_sdc_isr\00", [20 x i8] zeroinitializer }, align 32
@via_sdc_isr._entry_ptr = internal global ptr @via_sdc_isr._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@via_sdc_cmd_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 841, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\013%s: Got command interrupt 0x%x even though no command operation was in progress.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"via_sdc_cmd_isr\00", [16 x i8] zeroinitializer }, align 32
@via_sdc_cmd_isr._entry_ptr = internal global ptr @via_sdc_cmd_isr._entry, section ".printk_index", align 4
@via_sd_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 1187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: Controller removed during transfer\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"via_sd_remove\00", [18 x i8] zeroinitializer }, align 32
@via_sd_remove._entry_ptr = internal global ptr @via_sd_remove._entry, section ".printk_index", align 4
@via_sd_remove._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.3, i32 1220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016via_sdmmc: VIA SDMMC controller at %s [%04x:%04x] has been removed\0A\00", [58 x i8] zeroinitializer }, align 32
@via_sd_remove._entry_ptr.36 = internal global ptr @via_sd_remove._entry.34, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 7, i64 21, i64 29]
@___asan_gen_.37 = private unnamed_addr constant [14 x i8] c"via_sd_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 1302, i32 26 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 1310, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant [8 x i8] c"via_ids\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 324, i32 35 }
@___asan_gen_.46 = private unnamed_addr constant [14 x i8] c"via_sd_pm_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 1300, i32 8 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 1086, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 1033, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 1035, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [12 x i8] c"via_sdc_ops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 797, i32 34 }
@___asan_gen_.76 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 1052, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 944, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 588, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 472, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 1005, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 355, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 356, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 360, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 336, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 337, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 341, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 345, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 921, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 839, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 1186, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.182 = private constant [32 x i8] c"../drivers/mmc/host/via-sdmmc.c\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 1218, i32 2 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @__UNIQUE_ID_author285, ptr @__UNIQUE_ID_description286, ptr @__UNIQUE_ID_file283, ptr @__UNIQUE_ID_license284, ptr @__exitcall_via_sd_driver_exit, ptr @__initcall__kmod_via_sdmmc__282_1310_via_sd_driver_init6, ptr @via_sd_driver_exit, ptr @via_sd_probe._entry, ptr @via_sd_probe._entry_ptr, ptr @via_sd_remove._entry, ptr @via_sd_remove._entry.34, ptr @via_sd_remove._entry_ptr, ptr @via_sd_remove._entry_ptr.36, ptr @via_sdc_card_detect._entry, ptr @via_sdc_card_detect._entry_ptr, ptr @via_sdc_cmd_isr._entry, ptr @via_sdc_cmd_isr._entry_ptr, ptr @via_sdc_isr._entry, ptr @via_sdc_isr._entry_ptr, ptr @via_sdc_send_command._entry, ptr @via_sdc_send_command._entry_ptr, ptr @via_sdc_timeout._entry, ptr @via_sdc_timeout._entry_ptr, ptr @via_set_ddma._entry, ptr @via_set_ddma._entry_ptr, ptr @via_sd_driver, ptr @.str, ptr @via_ids, ptr @via_sd_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @via_init_mmc_host.__key, ptr @.str.4, ptr @via_init_mmc_host.__key.5, ptr @.str.6, ptr @via_sdc_ops, ptr @via_init_mmc_host.__key.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_sd_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_sd_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_sd_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_init_mmc_host.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_init_mmc_host.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_sdc_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_init_mmc_host.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_sdc_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_sdc_send_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_set_ddma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_sdc_card_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_sdc_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_sdc_cmd_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_sd_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_sd_remove._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @via_sd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @via_sd_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @via_sd_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pci_unregister_driver(ptr noundef nonnull @via_sd_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @via_sd_probe(ptr noundef %pcidev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 44, i32 3
  %0 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 44
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %3, %if.end.i.i ], [ %1, %entry.pci_name.exit_crit_edge ]
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 7
  %4 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vendor, align 8
  %conv = zext i16 %5 to i32
  %device = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 8
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device, align 2
  %conv1 = zext i16 %7 to i32
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 12
  %8 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %revision, align 4
  %conv2 = zext i8 %9 to i32
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %retval.0.i.i, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2) #8
  %call4 = tail call i32 @pci_enable_device(ptr noundef %pcidev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %pci_name.exit.cleanup_crit_edge

pci_name.exit.cleanup_crit_edge:                  ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %pci_name.exit
  %call5 = tail call i32 @pci_request_regions(ptr noundef %pcidev, ptr noundef nonnull @.str) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.disable_crit_edge

if.end.disable_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %disable

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @pci_write_config_byte(ptr noundef %pcidev, i32 noundef 64, i8 noundef zeroext 0) #5
  %call10 = tail call i32 @pci_write_config_byte(ptr noundef %pcidev, i32 noundef 65, i8 noundef zeroext 0) #5
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 44
  %call11 = tail call ptr @mmc_alloc_host(i32 noundef 272, ptr noundef %dev) #5
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end8.release_crit_edge, label %if.end14

if.end8.release_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %release

if.end14:                                         ; preds = %if.end8
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %call11, i32 0, i32 70
  %10 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call11, ptr %private.i, align 4
  %driver_data.i = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 44, i32 8
  %11 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %private.i, ptr %driver_data.i, align 4
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 47
  %end = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 47, i32 0, i32 1
  %12 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %if.end14.cond.end_crit_edge, label %cond.false

if.end14.cond.end_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %resource, align 8
  %sub = add i32 %13, 1
  %add = sub i32 %sub, %15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end14.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %if.end14.cond.end_crit_edge ]
  %16 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %resource, align 8
  %call27 = tail call ptr @ioremap(i32 noundef %17, i32 noundef %cond) #5
  %mmiobase = getelementptr inbounds %struct.mmc_host, ptr %call11, i32 1, i32 1, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %mmiobase to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call27, ptr %mmiobase, align 4
  %tobool29.not = icmp eq ptr %call27, null
  br i1 %tobool29.not, label %cond.end.free_mmc_host_crit_edge, label %if.end31

cond.end.free_mmc_host_crit_edge:                 ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_mmc_host

if.end31:                                         ; preds = %cond.end
  %add.ptr = getelementptr i8, ptr %call27, i32 512
  %sdhc_mmiobase = getelementptr inbounds %struct.mmc_host, ptr %call11, i32 1, i32 1, i32 0, i32 2
  %19 = ptrtoint ptr %sdhc_mmiobase to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr, ptr %sdhc_mmiobase, align 4
  %add.ptr34 = getelementptr i8, ptr %call27, i32 1024
  %ddma_mmiobase = getelementptr inbounds %struct.mmc_host, ptr %call11, i32 1, i32 1, i32 0, i32 3
  %20 = ptrtoint ptr %ddma_mmiobase to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr34, ptr %ddma_mmiobase, align 4
  %add.ptr36 = getelementptr i8, ptr %call27, i32 1536
  %pcictrl_mmiobase = getelementptr inbounds %struct.mmc_host, ptr %call11, i32 1, i32 1, i32 0, i32 4
  %21 = ptrtoint ptr %pcictrl_mmiobase to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr36, ptr %pcictrl_mmiobase, align 4
  %power = getelementptr inbounds %struct.mmc_host, ptr %call11, i32 1, i32 1, i32 9, i32 5, i32 6
  %22 = ptrtoint ptr %power to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -128, ptr %power, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %23 = ptrtoint ptr %pcictrl_mmiobase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcictrl_mmiobase, align 4
  %add.ptr41 = getelementptr i8, ptr %24, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr41, i8 48) #5, !srcloc !108
  %quirks.i = getelementptr inbounds %struct.mmc_host, ptr %call11, i32 1, i32 1, i32 10
  %25 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i32 3, i32 300
  tail call void @msleep(i32 noundef %..i) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !109
  tail call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %pcictrl_mmiobase to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pcictrl_mmiobase, align 4
  %add.ptr48 = getelementptr i8, ptr %28, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr48, i8 49) #5, !srcloc !108
  tail call void @msleep(i32 noundef 3) #5
  %29 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %private.i, align 4
  %timer.i = getelementptr inbounds %struct.mmc_host, ptr %call11, i32 1, i32 1, i32 7
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @via_sdc_timeout, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @via_init_mmc_host.__key) #5
  %lock.i = getelementptr inbounds %struct.mmc_host, ptr %call11, i32 1, i32 1, i32 9, i32 1, i32 4, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @via_init_mmc_host.__key.5, i16 noundef signext 3) #5
  %f_min.i = getelementptr inbounds %struct.mmc_host, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %f_min.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 375000, ptr %f_min.i, align 4
  %f_max.i = getelementptr inbounds %struct.mmc_host, ptr %30, i32 0, i32 6
  %32 = ptrtoint ptr %f_max.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 48000000, ptr %f_max.i, align 8
  %ocr_avail.i = getelementptr inbounds %struct.mmc_host, ptr %30, i32 0, i32 8
  %33 = ptrtoint ptr %ocr_avail.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 3145856, ptr %ocr_avail.i, align 64
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %30, i32 0, i32 16
  %34 = ptrtoint ptr %caps.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 5, ptr %caps.i, align 32
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %30, i32 0, i32 3
  %35 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @via_sdc_ops, ptr %ops.i, align 4
  %max_segs.i = getelementptr inbounds %struct.mmc_host, ptr %30, i32 0, i32 21
  %36 = ptrtoint ptr %max_segs.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1, ptr %max_segs.i, align 4
  %max_blk_size.i = getelementptr inbounds %struct.mmc_host, ptr %30, i32 0, i32 24
  %37 = ptrtoint ptr %max_blk_size.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2048, ptr %max_blk_size.i, align 4
  %max_blk_count.i = getelementptr inbounds %struct.mmc_host, ptr %30, i32 0, i32 25
  %38 = ptrtoint ptr %max_blk_count.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 65536, ptr %max_blk_count.i, align 128
  %max_seg_size.i = getelementptr inbounds %struct.mmc_host, ptr %30, i32 0, i32 20
  %39 = ptrtoint ptr %max_seg_size.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 134217728, ptr %max_seg_size.i, align 16
  %max_req_size.i = getelementptr inbounds %struct.mmc_host, ptr %30, i32 0, i32 23
  %40 = ptrtoint ptr %max_req_size.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 134217728, ptr %max_req_size.i, align 8
  %carddet_work.i = getelementptr inbounds %struct.mmc_host, ptr %call11, i32 1, i32 1, i32 0, i32 7, i32 1, i32 3
  tail call void @__init_work(ptr noundef %carddet_work.i, i32 noundef 0) #5
  %41 = ptrtoint ptr %carddet_work.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -64, ptr %carddet_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.mmc_host, ptr %call11, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 2
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @via_init_mmc_host.__key.7, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry12.i = getelementptr inbounds %struct.mmc_host, ptr %call11, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4
  %42 = ptrtoint ptr %entry12.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %entry12.i, ptr %entry12.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mmc_host, ptr %call11, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 1
  %43 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %entry12.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.mmc_host, ptr %call11, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 1, i32 1
  %44 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @via_sdc_card_detect, ptr %func.i, align 4
  %finish_tasklet.i = getelementptr inbounds %struct.mmc_host, ptr %call11, i32 1, i32 1, i32 1
  tail call void @tasklet_setup(ptr noundef %finish_tasklet.i, ptr noundef nonnull @via_sdc_tasklet_finish) #5
  %45 = ptrtoint ptr %sdhc_mmiobase to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sdhc_mmiobase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !110
  tail call void @arm_heavy_mb() #5
  %add.ptr.i = getelementptr i8, ptr %46, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !111
  tail call void @msleep(i32 noundef 1) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  tail call void @arm_heavy_mb() #5
  %add.ptr22.i = getelementptr i8, ptr %46, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 10485760) #5, !srcloc !111
  %add.ptr23.i = getelementptr i8, ptr %46, i32 40
  %47 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr23.i) #5, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !114
  %48 = and i16 %47, -3586
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr23.i, i16 %48) #5, !srcloc !116
  %add.ptr33.i = getelementptr i8, ptr %46, i32 42
  %49 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr33.i) #5, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !117
  %50 = or i16 %49, -32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !118
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr33.i, i16 %50) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !119
  tail call void @arm_heavy_mb() #5
  %add.ptr46.i = getelementptr i8, ptr %46, i32 52
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr46.i, i8 0) #5, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1862926336) #5, !srcloc !111
  tail call void @msleep(i32 noundef 1) #5
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 46
  %51 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %52, ptr noundef nonnull @via_sdc_isr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %private.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool50.not = icmp eq i32 %call.i, 0
  br i1 %tobool50.not, label %do.body53, label %unmap

do.body53:                                        ; preds = %if.end31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !121
  tail call void @arm_heavy_mb() #5
  %53 = ptrtoint ptr %pcictrl_mmiobase to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pcictrl_mmiobase, align 4
  %add.ptr57 = getelementptr i8, ptr %54, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr57, i8 4) #5, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !122
  tail call void @arm_heavy_mb() #5
  %55 = ptrtoint ptr %pcictrl_mmiobase to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pcictrl_mmiobase, align 4
  %add.ptr62 = getelementptr i8, ptr %56, i32 10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr62, i8 6) #5, !srcloc !108
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 9
  %57 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %subsystem_vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6058, i16 %58)
  %cmp64 = icmp eq i16 %58, 6058
  br i1 %cmp64, label %land.lhs.true, label %do.body53.if.end70_crit_edge

do.body53.if.end70_crit_edge:                     ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70

land.lhs.true:                                    ; preds = %do.body53
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 10
  %59 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %subsystem_device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 14481, i16 %60)
  %cmp67 = icmp eq i16 %60, 14481
  br i1 %cmp67, label %if.then69, label %land.lhs.true.if.end70_crit_edge

land.lhs.true.if.end70_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70

if.then69:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %quirks.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %quirks.i, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %land.lhs.true.if.end70_crit_edge, %do.body53.if.end70_crit_edge
  %call71 = tail call i32 @mmc_add_host(ptr noundef nonnull %call11) #5
  br label %cleanup

unmap:                                            ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %mmiobase to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mmiobase, align 4
  tail call void @iounmap(ptr noundef %63) #5
  br label %free_mmc_host

free_mmc_host:                                    ; preds = %unmap, %cond.end.free_mmc_host_crit_edge
  %ret.0 = phi i32 [ %call.i, %unmap ], [ -12, %cond.end.free_mmc_host_crit_edge ]
  %64 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %driver_data.i, align 4
  tail call void @mmc_free_host(ptr noundef nonnull %call11) #5
  br label %release

release:                                          ; preds = %free_mmc_host, %if.end8.release_crit_edge
  %ret.1 = phi i32 [ %ret.0, %free_mmc_host ], [ -12, %if.end8.release_crit_edge ]
  tail call void @pci_release_regions(ptr noundef %pcidev) #5
  br label %disable

disable:                                          ; preds = %release, %if.end.disable_crit_edge
  %ret.2 = phi i32 [ %call5, %if.end.disable_crit_edge ], [ %ret.1, %release ]
  tail call void @pci_disable_device(ptr noundef %pcidev) #5
  br label %cleanup

cleanup:                                          ; preds = %disable, %if.end70, %pci_name.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %disable ], [ 0, %if.end70 ], [ %call4, %pci_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @via_sd_remove(ptr noundef %pcidev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %reject = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %reject to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %reject, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  tail call void @arm_heavy_mb() #5
  %pcictrl_mmiobase = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %pcictrl_mmiobase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcictrl_mmiobase, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #5, !srcloc !108
  %mrq = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mrq, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end26_crit_edge, label %do.end11

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

do.end11:                                         ; preds = %entry
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %8, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end11.dev_name.exit_crit_edge

do.end11.dev_name.exit_crit_edge:                 ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end11.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %12, %if.end.i ], [ %10, %do.end11.dev_name.exit_crit_edge ]
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %retval.0.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !124
  tail call void @arm_heavy_mb() #5
  %ddma_mmiobase = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %ddma_mmiobase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ddma_mmiobase, align 4
  %add.ptr18 = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 1) #5, !srcloc !111
  %15 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mrq, align 4
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cmd, align 4
  %error = getelementptr inbounds %struct.mmc_command, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -123, ptr %error, align 4
  %20 = load ptr, ptr %mrq, align 4
  %stop = getelementptr inbounds %struct.mmc_request, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stop, align 4
  %tobool21.not = icmp eq ptr %22, null
  br i1 %tobool21.not, label %dev_name.exit.if.end_crit_edge, label %if.then22

dev_name.exit.if.end_crit_edge:                   ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then22:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %error25 = getelementptr inbounds %struct.mmc_command, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %error25 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -123, ptr %error25, align 4
  br label %if.end

if.end:                                           ; preds = %if.then22, %dev_name.exit.if.end_crit_edge
  %state.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 11, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i79 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i79, label %if.then.i, label %if.end.if.end26_crit_edge

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %finish_tasklet = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 11
  tail call void @__tasklet_schedule(ptr noundef %finish_tasklet) #5
  br label %if.end26

if.end26:                                         ; preds = %if.then.i, %if.end.if.end26_crit_edge, %entry.if.end26_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #5
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  tail call void @mmc_remove_host(ptr noundef %25) #5
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 46
  %26 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq, align 4
  %call29 = tail call ptr @free_irq(i32 noundef %27, ptr noundef %1) #5
  %timer = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 12
  %call30 = tail call i32 @del_timer_sync(ptr noundef %timer) #5
  %finish_tasklet31 = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 11
  tail call void @tasklet_kill(ptr noundef %finish_tasklet31) #5
  %28 = ptrtoint ptr %pcictrl_mmiobase to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pcictrl_mmiobase, align 4
  %add.ptr33 = getelementptr i8, ptr %29, i32 2
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr33) #5, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !126
  %31 = and i8 %30, -33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !127
  tail call void @arm_heavy_mb() #5
  %32 = ptrtoint ptr %pcictrl_mmiobase to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pcictrl_mmiobase, align 4
  %add.ptr43 = getelementptr i8, ptr %33, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr43, i8 %31) #5, !srcloc !108
  %mmiobase = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 4
  %34 = ptrtoint ptr %mmiobase to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmiobase, align 4
  tail call void @iounmap(ptr noundef %35) #5
  %36 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %driver_data.i.i, align 4
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  tail call void @mmc_free_host(ptr noundef %38) #5
  tail call void @pci_release_regions(ptr noundef %pcidev) #5
  tail call void @pci_disable_device(ptr noundef %pcidev) #5
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 44, i32 3
  %39 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end26.pci_name.exit_crit_edge

if.end26.pci_name.exit_crit_edge:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 44
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end26.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %42, %if.end.i.i ], [ %40, %if.end26.pci_name.exit_crit_edge ]
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 7
  %43 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %vendor, align 8
  %conv50 = zext i16 %44 to i32
  %device = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 8
  %45 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %device, align 2
  %conv51 = zext i16 %46 to i32
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %retval.0.i.i, i32 noundef %conv50, i32 noundef %conv51) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @via_sdc_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev_id, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %dev_id, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %lock) #5
  %pcictrl_mmiobase = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %dev_id, i32 0, i32 7
  %0 = ptrtoint ptr %pcictrl_mmiobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcictrl_mmiobase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 9
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !128
  %3 = and i8 %2, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end4:                                          ; preds = %if.end
  %sdhc_mmiobase = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %dev_id, i32 0, i32 5
  %4 = ptrtoint ptr %sdhc_mmiobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdhc_mmiobase, align 4
  %add.ptr7 = getelementptr i8, ptr %5, i32 40
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr7) #5, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  %7 = and i16 %6, -12042
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool17.not = icmp eq i16 %7, 0
  br i1 %tobool17.not, label %if.end4.out_crit_edge, label %if.end19

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end19:                                         ; preds = %if.end4
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %9 = and i16 %8, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool22.not = icmp eq i16 %9, 0
  br i1 %tobool22.not, label %if.end19.if.end29_crit_edge, label %do.body

if.end19.if.end29_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

do.body:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !130
  tail call void @arm_heavy_mb() #5
  %10 = shl nuw i16 %9, 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr7, i16 %10) #5, !srcloc !116
  %carddet_work = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %dev_id, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %11 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %carddet_work) #5
  br label %if.end29

if.end29:                                         ; preds = %do.body, %if.end19.if.end29_crit_edge
  %and31 = and i16 %8, -2480
  %conv33 = zext i16 %and31 to i32
  %and34 = and i32 %conv33, 9728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end29.if.end47_crit_edge, label %do.body37

if.end29.if.end47_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

do.body37:                                        ; preds = %if.end29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !131
  tail call void @arm_heavy_mb() #5
  %conv42 = trunc i32 %and34 to i16
  %12 = lshr exact i16 %conv42, 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr7, i16 %12) #5, !srcloc !116
  %cmd.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %dev_id, i32 0, i32 2
  %13 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmd.i, align 4
  %tobool7.not.i = icmp eq ptr %14, null
  br i1 %tobool7.not.i, label %do.end10.i, label %if.end13.i

do.end10.i:                                       ; preds = %do.body37
  %15 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_id, align 4
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %16, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end10.i.dev_name.exit.i_crit_edge

do.end10.i.dev_name.exit.i_crit_edge:             ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %class_dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end10.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %20, %if.end.i.i ], [ %18, %do.end10.i.dev_name.exit.i_crit_edge ]
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %retval.0.i.i, i32 noundef %and34) #8
  br label %if.end47

if.end13.i:                                       ; preds = %do.body37
  %and.i = and i32 %conv33, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool15.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool15.not.i, label %if.else.i, label %if.end13.i.if.end25.sink.split.i_crit_edge

if.end13.i.if.end25.sink.split.i_crit_edge:       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25.sink.split.i

if.else.i:                                        ; preds = %if.end13.i
  %and19.i = and i32 %conv33, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.else.i.if.end25.i_crit_edge, label %if.else.i.if.end25.sink.split.i_crit_edge

if.else.i.if.end25.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25.sink.split.i

if.else.i.if.end25.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25.i

if.end25.sink.split.i:                            ; preds = %if.else.i.if.end25.sink.split.i_crit_edge, %if.end13.i.if.end25.sink.split.i_crit_edge
  %.sink.i = phi i32 [ -110, %if.end13.i.if.end25.sink.split.i_crit_edge ], [ -84, %if.else.i.if.end25.sink.split.i_crit_edge ]
  %error23.i = getelementptr inbounds %struct.mmc_command, ptr %14, i32 0, i32 5
  %21 = ptrtoint ptr %error23.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink.i, ptr %error23.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.end25.sink.split.i, %if.else.i.if.end25.i_crit_edge
  %22 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cmd.i, align 4
  %error27.i = getelementptr inbounds %struct.mmc_command, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %error27.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %error27.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool28.not.i = icmp eq i32 %25, 0
  br i1 %tobool28.not.i, label %if.else30.i, label %if.then29.i

if.then29.i:                                      ; preds = %if.end25.i
  %state.i.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %dev_id, i32 0, i32 11, i32 1
  %call.i.i113 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i113)
  %tobool.not.i47.i = icmp eq i32 %call.i.i113, 0
  br i1 %tobool.not.i47.i, label %if.then.i.i, label %if.then29.i.if.end47_crit_edge

if.then29.i.if.end47_crit_edge:                   ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.then.i.i:                                      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #7
  %finish_tasklet.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %dev_id, i32 0, i32 11
  tail call void @__tasklet_schedule(ptr noundef %finish_tasklet.i) #5
  br label %if.end47

if.else30.i:                                      ; preds = %if.end25.i
  %and32.i = and i32 %conv33, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %if.else30.i.if.end47_crit_edge, label %if.then34.i

if.else30.i.if.end47_crit_edge:                   ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.then34.i:                                      ; preds = %if.else30.i
  %26 = ptrtoint ptr %sdhc_mmiobase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sdhc_mmiobase, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %27, i32 16
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !132
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  %add.ptr4.i.i.i = getelementptr i8, ptr %27, i32 20
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i.i) #5, !srcloc !132
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  %add.ptr10.i.i.i = getelementptr i8, ptr %27, i32 24
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i.i) #5, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !135
  %add.ptr16.i.i.i = getelementptr i8, ptr %27, i32 28
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i.i.i) #5, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !136
  %flags.i.i.i = getelementptr inbounds %struct.mmc_command, ptr %23, i32 0, i32 3
  %34 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #7
  %36 = tail call i32 @llvm.bswap.i32(i32 %33) #5
  %37 = tail call i32 @llvm.bswap.i32(i32 %32) #5
  %conv20.i.i.i = and i32 %31, 255
  %38 = lshr i32 %29, 16
  %shl.i.i.i = and i32 %38, 65280
  %conv25.i.i.i = and i32 %29, 16711680
  %39 = shl i32 %29, 16
  %shl31.i.i.i = and i32 %39, -16777216
  %or.i.i.i = or i32 %shl.i.i.i, %conv25.i.i.i
  %or27.i.i.i = or i32 %or.i.i.i, %shl31.i.i.i
  %or32.i.i.i = or i32 %or27.i.i.i, %conv20.i.i.i
  %conv34.i.i.i = and i32 %37, 255
  %40 = lshr i32 %31, 16
  %shl38.i.i.i = and i32 %40, 65280
  %conv42.i.i.i = and i32 %31, 16711680
  %41 = shl i32 %31, 16
  %shl48.i.i.i = and i32 %41, -16777216
  %or39.i.i.i = or i32 %shl38.i.i.i, %conv42.i.i.i
  %or44.i.i.i = or i32 %or39.i.i.i, %shl48.i.i.i
  %or49.i.i.i = or i32 %or44.i.i.i, %conv34.i.i.i
  %conv53.i.i.i = and i32 %36, 255
  %42 = lshr i32 %37, 16
  %shl57.i.i.i = and i32 %42, 65280
  %conv61.i.i.i = and i32 %37, 16711680
  %43 = shl i32 %37, 16
  %shl67.i.i.i = and i32 %43, -16777216
  %or58.i.i.i = or i32 %shl57.i.i.i, %conv61.i.i.i
  %or63.i.i.i = or i32 %or58.i.i.i, %shl67.i.i.i
  %or68.i.i.i = or i32 %or63.i.i.i, %conv53.i.i.i
  %arrayidx70.i.i.i = getelementptr %struct.mmc_command, ptr %23, i32 0, i32 2, i32 2
  %44 = ptrtoint ptr %arrayidx70.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or68.i.i.i, ptr %arrayidx70.i.i.i, align 4
  %45 = lshr i32 %36, 16
  %conv78.i.i.i = and i32 %36, 16711680
  %46 = shl i32 %36, 16
  %shl84.i.i.i = and i32 %46, -16777216
  %or75.i.i.i = or i32 %45, %conv78.i.i.i
  %or80.i.i.i = or i32 %or75.i.i.i, %shl84.i.i.i
  %or85.i.i.i = or i32 %or80.i.i.i, 255
  %arrayidx87.i.i.i = getelementptr %struct.mmc_command, ptr %23, i32 0, i32 2, i32 3
  %47 = ptrtoint ptr %arrayidx87.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or85.i.i.i, ptr %arrayidx87.i.i.i, align 4
  br label %via_sdc_get_response.exit.i.i

if.else.i.i.i:                                    ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #7
  %48 = shl i32 %29, 16
  %shl90.i.i.i = and i32 %48, -16777216
  %and92.i.i.i = and i32 %29, 16711680
  %or94.i.i.i = or i32 %shl90.i.i.i, %and92.i.i.i
  %49 = lshr i32 %29, 16
  %shl97.i.i.i = and i32 %49, 65280
  %or98.i.i.i = or i32 %or94.i.i.i, %shl97.i.i.i
  %and99.i.i.i = and i32 %31, 255
  %or100.i.i.i = or i32 %or98.i.i.i, %and99.i.i.i
  %50 = shl i32 %31, 16
  %shl105.i.i.i = and i32 %50, -16777216
  %and107.i.i.i = and i32 %31, 16711680
  %or109.i.i.i = or i32 %shl105.i.i.i, %and107.i.i.i
  %51 = lshr i32 %31, 16
  %shl112.i.i.i = and i32 %51, 65280
  %or113.i.i.i = or i32 %or109.i.i.i, %shl112.i.i.i
  br label %via_sdc_get_response.exit.i.i

via_sdc_get_response.exit.i.i:                    ; preds = %if.else.i.i.i, %if.then.i.i.i
  %or32.sink.i.i.i = phi i32 [ %or100.i.i.i, %if.else.i.i.i ], [ %or32.i.i.i, %if.then.i.i.i ]
  %or49.sink.i.i.i = phi i32 [ %or113.i.i.i, %if.else.i.i.i ], [ %or49.i.i.i, %if.then.i.i.i ]
  %52 = getelementptr inbounds %struct.mmc_command, ptr %23, i32 0, i32 2
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or32.sink.i.i.i, ptr %52, align 4
  %54 = getelementptr %struct.mmc_command, ptr %23, i32 0, i32 2, i32 1
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or49.sink.i.i.i, ptr %54, align 4
  %56 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cmd.i, align 4
  %error.i.i = getelementptr inbounds %struct.mmc_command, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %error.i.i, align 4
  %59 = load ptr, ptr %cmd.i, align 4
  %data.i.i = getelementptr inbounds %struct.mmc_command, ptr %59, i32 0, i32 7
  %60 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data.i.i, align 4
  %tobool.not.i49.i = icmp eq ptr %61, null
  br i1 %tobool.not.i49.i, label %if.then.i50.i, label %via_sdc_get_response.exit.i.i.via_sdc_finish_command.exit.i_crit_edge

via_sdc_get_response.exit.i.i.via_sdc_finish_command.exit.i_crit_edge: ; preds = %via_sdc_get_response.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %via_sdc_finish_command.exit.i

if.then.i50.i:                                    ; preds = %via_sdc_get_response.exit.i.i
  %state.i.i.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %dev_id, i32 0, i32 11, i32 1
  %call.i.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i9.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i9.i.i, label %if.then.i10.i.i, label %if.then.i50.i.via_sdc_finish_command.exit.i_crit_edge

if.then.i50.i.via_sdc_finish_command.exit.i_crit_edge: ; preds = %if.then.i50.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %via_sdc_finish_command.exit.i

if.then.i10.i.i:                                  ; preds = %if.then.i50.i
  call void @__sanitizer_cov_trace_pc() #7
  %finish_tasklet.i.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %dev_id, i32 0, i32 11
  tail call void @__tasklet_schedule(ptr noundef %finish_tasklet.i.i) #5
  br label %via_sdc_finish_command.exit.i

via_sdc_finish_command.exit.i:                    ; preds = %if.then.i10.i.i, %if.then.i50.i.via_sdc_finish_command.exit.i_crit_edge, %via_sdc_get_response.exit.i.i.via_sdc_finish_command.exit.i_crit_edge
  %62 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %cmd.i, align 4
  br label %if.end47

if.end47:                                         ; preds = %via_sdc_finish_command.exit.i, %if.else30.i.if.end47_crit_edge, %if.then.i.i, %if.then29.i.if.end47_crit_edge, %dev_name.exit.i, %if.end29.if.end47_crit_edge
  %and49 = and i32 %conv33, 53264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end47.if.end62_crit_edge, label %do.body52

if.end47.if.end62_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

do.body52:                                        ; preds = %if.end47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  tail call void @arm_heavy_mb() #5
  %conv57 = trunc i32 %and49 to i16
  %63 = tail call i16 @llvm.bswap.i16(i16 %conv57)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr7, i16 %63) #5, !srcloc !116
  %data.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %dev_id, i32 0, i32 3
  %64 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data.i, align 4
  %tobool7.not.i115 = icmp eq ptr %65, null
  br i1 %tobool7.not.i115, label %do.body52.if.end62_crit_edge, label %if.end9.i

do.body52.if.end62_crit_edge:                     ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

if.end9.i:                                        ; preds = %do.body52
  %and.i116 = and i32 %conv33, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i116)
  %tobool11.not.i = icmp eq i32 %and.i116, 0
  br i1 %tobool11.not.i, label %if.else.i117, label %if.end9.i.if.end21.sink.split.i_crit_edge

if.end9.i.if.end21.sink.split.i_crit_edge:        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.sink.split.i

if.else.i117:                                     ; preds = %if.end9.i
  %and15.i = and i32 %conv33, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.else.i117.if.end21.i_crit_edge, label %if.else.i117.if.end21.sink.split.i_crit_edge

if.else.i117.if.end21.sink.split.i_crit_edge:     ; preds = %if.else.i117
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.sink.split.i

if.else.i117.if.end21.i_crit_edge:                ; preds = %if.else.i117
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.i

if.end21.sink.split.i:                            ; preds = %if.else.i117.if.end21.sink.split.i_crit_edge, %if.end9.i.if.end21.sink.split.i_crit_edge
  %.sink.i118 = phi i32 [ -110, %if.end9.i.if.end21.sink.split.i_crit_edge ], [ -84, %if.else.i117.if.end21.sink.split.i_crit_edge ]
  %error19.i = getelementptr inbounds %struct.mmc_data, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %error19.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %.sink.i118, ptr %error19.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end21.sink.split.i, %if.else.i117.if.end21.i_crit_edge
  tail call fastcc void @via_sdc_finish_data(ptr noundef nonnull %dev_id) #5
  br label %if.end62

if.end62:                                         ; preds = %if.end21.i, %do.body52.if.end62_crit_edge, %if.end47.if.end62_crit_edge
  %and64 = and i16 %8, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and64)
  %tobool66.not = icmp eq i16 %and64, 0
  br i1 %tobool66.not, label %if.end62.out_crit_edge, label %do.end70

if.end62.out_crit_edge:                           ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.end70:                                         ; preds = %if.end62
  %67 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev_id, align 4
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %68, i32 0, i32 1, i32 3
  %69 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %70, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end70.dev_name.exit_crit_edge

do.end70.dev_name.exit_crit_edge:                 ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %68, i32 0, i32 1
  %71 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end70.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %72, %if.end.i ], [ %70, %do.end70.dev_name.exit_crit_edge ]
  %conv73 = zext i16 %and64 to i32
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %retval.0.i, i32 noundef %conv73) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  tail call void @arm_heavy_mb() #5
  %73 = shl nuw nsw i16 %and64, 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr7, i16 %73) #5, !srcloc !116
  br label %out

out:                                              ; preds = %dev_name.exit, %if.end62.out_crit_edge, %if.end4.out_crit_edge, %if.end.out_crit_edge
  %result.0 = phi i32 [ 0, %if.end.out_crit_edge ], [ 0, %if.end4.out_crit_edge ], [ 1, %dev_name.exit ], [ 1, %if.end62.out_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.0, %out ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @via_sdc_timeout(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -168
  %lock = getelementptr i8, ptr %t, i32 48
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %mrq = getelementptr i8, ptr %t, i32 -164
  %0 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrq, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end30_crit_edge, label %do.end8

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

do.end8:                                          ; preds = %entry
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end8.dev_name.exit_crit_edge

do.end8.dev_name.exit_crit_edge:                  ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end8.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %do.end8.dev_name.exit_crit_edge ]
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmd, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %retval.0.i, i32 noundef %11) #8
  %data = getelementptr i8, ptr %t, i32 -156
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %tobool13.not = icmp eq ptr %13, null
  br i1 %tobool13.not, label %if.else, label %do.body15

do.body15:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  tail call void @arm_heavy_mb() #5
  %ddma_mmiobase = getelementptr i8, ptr %t, i32 -144
  %14 = ptrtoint ptr %ddma_mmiobase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ddma_mmiobase, align 4
  %add.ptr18 = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 1) #5, !srcloc !111
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %error = getelementptr inbounds %struct.mmc_data, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -110, ptr %error, align 4
  tail call fastcc void @via_sdc_finish_data(ptr noundef %add.ptr)
  br label %if.end30

if.else:                                          ; preds = %dev_name.exit
  %cmd20 = getelementptr i8, ptr %t, i32 -160
  %19 = ptrtoint ptr %cmd20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cmd20, align 4
  %tobool21.not = icmp eq ptr %20, null
  br i1 %tobool21.not, label %if.else25, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.else25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mrq, align 4
  %cmd27 = getelementptr inbounds %struct.mmc_request, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %cmd27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cmd27, align 4
  br label %if.end

if.end:                                           ; preds = %if.else25, %if.else.if.end_crit_edge
  %.sink = phi ptr [ %24, %if.else25 ], [ %20, %if.else.if.end_crit_edge ]
  %error28 = getelementptr inbounds %struct.mmc_command, ptr %.sink, i32 0, i32 5
  %25 = ptrtoint ptr %error28 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -110, ptr %error28, align 4
  %state.i = getelementptr i8, ptr %t, i32 -20
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i44 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i44, label %if.then.i, label %if.end.if.end30_crit_edge

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %finish_tasklet = getelementptr i8, ptr %t, i32 -24
  tail call void @__tasklet_schedule(ptr noundef %finish_tasklet) #5
  br label %if.end30

if.end30:                                         ; preds = %if.then.i, %if.end.if.end30_crit_edge, %do.body15, %entry.if.end30_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @via_sdc_card_detect(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -100
  %ddma_mmiobase = getelementptr i8, ptr %work, i32 -76
  %0 = ptrtoint ptr %ddma_mmiobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddma_mmiobase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %add.ptr1 = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 1) #5, !srcloc !111
  %lock = getelementptr i8, ptr %work, i32 116
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %pcictrl_mmiobase = getelementptr i8, ptr %work, i32 -72
  %2 = ptrtoint ptr %pcictrl_mmiobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcictrl_mmiobase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  tail call void @arm_heavy_mb() #5
  %add.ptr13 = getelementptr i8, ptr %3, i32 7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr13, i8 2) #5, !srcloc !108
  %sdhc_mmiobase = getelementptr i8, ptr %work, i32 -80
  %4 = ptrtoint ptr %sdhc_mmiobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdhc_mmiobase, align 4
  %add.ptr14 = getelementptr i8, ptr %5, i32 40
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr14) #5, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  %7 = and i16 %6, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end43_crit_edge

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.then:                                          ; preds = %entry
  %mrq = getelementptr i8, ptr %work, i32 -96
  %8 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mrq, align 4
  %tobool19.not = icmp eq ptr %9, null
  br i1 %tobool19.not, label %if.then.if.end_crit_edge, label %do.end23

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end23:                                         ; preds = %if.then
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end23.dev_name.exit_crit_edge

do.end23.dev_name.exit_crit_edge:                 ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end23.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %15, %if.end.i ], [ %13, %do.end23.dev_name.exit_crit_edge ]
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %retval.0.i) #8
  %16 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mrq, align 4
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmd, align 4
  %error = getelementptr inbounds %struct.mmc_command, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -123, ptr %error, align 4
  %state.i = getelementptr i8, ptr %work, i32 48
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i64 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i64, label %if.then.i, label %dev_name.exit.if.end_crit_edge

dev_name.exit.if.end_crit_edge:                   ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then.i:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %finish_tasklet = getelementptr i8, ptr %work, i32 44
  tail call void @__tasklet_schedule(ptr noundef %finish_tasklet) #5
  br label %if.end

if.end:                                           ; preds = %if.then.i, %dev_name.exit.if.end_crit_edge, %if.then.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #5
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %21 = ptrtoint ptr %pcictrl_mmiobase to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcictrl_mmiobase, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 2
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #5, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  %pciclkgat_reg.i.i = getelementptr i8, ptr %work, i32 -66
  %24 = or i8 %23, 48
  %25 = ptrtoint ptr %pciclkgat_reg.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %pciclkgat_reg.i.i, align 1
  %add.ptr7.i.i = getelementptr i8, ptr %22, i32 5
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7.i.i) #5, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  %pcisdclk_reg.i.i = getelementptr i8, ptr %work, i32 -63
  %27 = ptrtoint ptr %pcisdclk_reg.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %pcisdclk_reg.i.i, align 1
  %add.ptr13.i.i = getelementptr i8, ptr %22, i32 7
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr13.i.i) #5, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !145
  %pcidmaclk_reg.i.i = getelementptr i8, ptr %work, i32 -61
  %29 = ptrtoint ptr %pcidmaclk_reg.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %pcidmaclk_reg.i.i, align 1
  %add.ptr19.i.i = getelementptr i8, ptr %22, i32 8
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr19.i.i) #5, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !146
  %pciintctrl_reg.i.i = getelementptr i8, ptr %work, i32 -60
  %31 = ptrtoint ptr %pciintctrl_reg.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %pciintctrl_reg.i.i, align 1
  %add.ptr25.i.i = getelementptr i8, ptr %22, i32 9
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr25.i.i) #5, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !147
  %pciintstatus_reg.i.i = getelementptr i8, ptr %work, i32 -59
  %33 = ptrtoint ptr %pciintstatus_reg.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %pciintstatus_reg.i.i, align 1
  %add.ptr31.i.i = getelementptr i8, ptr %22, i32 10
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr31.i.i) #5, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !148
  %pcitmoctrl_reg.i.i = getelementptr i8, ptr %work, i32 -58
  %35 = ptrtoint ptr %pcitmoctrl_reg.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %pcitmoctrl_reg.i.i, align 1
  %pm_sdhc_reg1.i.i = getelementptr i8, ptr %work, i32 -56
  %36 = ptrtoint ptr %sdhc_mmiobase to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sdhc_mmiobase, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #5, !srcloc !132
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !149
  %40 = ptrtoint ptr %pm_sdhc_reg1.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %pm_sdhc_reg1.i.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %37, i32 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #5, !srcloc !132
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !150
  %sdcmdarg_reg.i.i = getelementptr i8, ptr %work, i32 -52
  %43 = ptrtoint ptr %sdcmdarg_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %sdcmdarg_reg.i.i, align 4
  %add.ptr11.i.i = getelementptr i8, ptr %37, i32 8
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i.i) #5, !srcloc !132
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !151
  %sdbusmode_reg.i.i = getelementptr i8, ptr %work, i32 -48
  %46 = ptrtoint ptr %sdbusmode_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %sdbusmode_reg.i.i, align 4
  %add.ptr17.i.i = getelementptr i8, ptr %37, i32 12
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.i) #5, !srcloc !132
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !152
  %sdblklen_reg.i.i = getelementptr i8, ptr %work, i32 -44
  %49 = ptrtoint ptr %sdblklen_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %sdblklen_reg.i.i, align 4
  %add.ptr23.i.i = getelementptr i8, ptr %37, i32 32
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i.i) #5, !srcloc !132
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !153
  %sdcurblkcnt_reg.i.i = getelementptr i8, ptr %work, i32 -24
  %52 = ptrtoint ptr %sdcurblkcnt_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %sdcurblkcnt_reg.i.i, align 4
  %add.ptr29.i.i = getelementptr i8, ptr %37, i32 36
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29.i.i) #5, !srcloc !132
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !154
  %sdintmask_reg.i.i = getelementptr i8, ptr %work, i32 -20
  %55 = ptrtoint ptr %sdintmask_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %sdintmask_reg.i.i, align 4
  %add.ptr35.i.i = getelementptr i8, ptr %37, i32 40
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.i.i) #5, !srcloc !132
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !155
  %sdstatus_reg.i.i = getelementptr i8, ptr %work, i32 -16
  %58 = ptrtoint ptr %sdstatus_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %sdstatus_reg.i.i, align 4
  %add.ptr41.i.i = getelementptr i8, ptr %37, i32 44
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41.i.i) #5, !srcloc !132
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !156
  %sdrsptmo_reg.i.i = getelementptr i8, ptr %work, i32 -12
  %61 = ptrtoint ptr %sdrsptmo_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %sdrsptmo_reg.i.i, align 4
  %add.ptr47.i.i = getelementptr i8, ptr %37, i32 48
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47.i.i) #5, !srcloc !132
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  %sdclksel_reg.i.i = getelementptr i8, ptr %work, i32 -8
  %64 = ptrtoint ptr %sdclksel_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %sdclksel_reg.i.i, align 4
  %add.ptr53.i.i = getelementptr i8, ptr %37, i32 52
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53.i.i) #5, !srcloc !132
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !158
  %sdextctrl_reg.i.i = getelementptr i8, ptr %work, i32 -4
  %67 = ptrtoint ptr %sdextctrl_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %sdextctrl_reg.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #5
  %power.i = getelementptr i8, ptr %work, i32 160
  %68 = ptrtoint ptr %power.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %power.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %69)
  %cmp7.i = icmp eq i8 %69, -128
  %..i = select i1 %cmp7.i, i8 0, i8 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !159
  tail call void @arm_heavy_mb() #5
  %70 = ptrtoint ptr %pcictrl_mmiobase to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pcictrl_mmiobase, align 4
  %add.ptr.i = getelementptr i8, ptr %71, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %..i) #5, !srcloc !108
  %quirks.i.i = getelementptr i8, ptr %work, i32 168
  %72 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %quirks.i.i, align 4
  %and.i.i = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %..i.i = select i1 %tobool.not.i.i, i32 3, i32 300
  tail call void @msleep(i32 noundef %..i.i) #5
  %74 = or i8 %..i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !160
  tail call void @arm_heavy_mb() #5
  %75 = ptrtoint ptr %pcictrl_mmiobase to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pcictrl_mmiobase, align 4
  %add.ptr23.i = getelementptr i8, ptr %76, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr23.i, i8 %74) #5, !srcloc !108
  tail call void @msleep(i32 noundef 3) #5
  %call33.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %77 = ptrtoint ptr %pcictrl_mmiobase to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pcictrl_mmiobase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !161
  tail call void @arm_heavy_mb() #5
  %79 = ptrtoint ptr %pciclkgat_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %pciclkgat_reg.i.i, align 1
  %add.ptr.i57.i = getelementptr i8, ptr %78, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i57.i, i8 %80) #5, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !162
  tail call void @arm_heavy_mb() #5
  %81 = ptrtoint ptr %pcisdclk_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %pcisdclk_reg.i.i, align 1
  %add.ptr5.i59.i = getelementptr i8, ptr %78, i32 5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i59.i, i8 %82) #5, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !163
  tail call void @arm_heavy_mb() #5
  %83 = ptrtoint ptr %pcidmaclk_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %pcidmaclk_reg.i.i, align 1
  %add.ptr9.i.i = getelementptr i8, ptr %78, i32 7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.i.i, i8 %84) #5, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !164
  tail call void @arm_heavy_mb() #5
  %85 = ptrtoint ptr %pciintctrl_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %pciintctrl_reg.i.i, align 1
  %add.ptr13.i62.i = getelementptr i8, ptr %78, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr13.i62.i, i8 %86) #5, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !165
  tail call void @arm_heavy_mb() #5
  %87 = ptrtoint ptr %pciintstatus_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %pciintstatus_reg.i.i, align 1
  %add.ptr17.i64.i = getelementptr i8, ptr %78, i32 9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr17.i64.i, i8 %88) #5, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !166
  tail call void @arm_heavy_mb() #5
  %89 = ptrtoint ptr %pcitmoctrl_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %pcitmoctrl_reg.i.i, align 1
  %add.ptr21.i.i = getelementptr i8, ptr %78, i32 10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr21.i.i, i8 %90) #5, !srcloc !108
  %91 = ptrtoint ptr %sdhc_mmiobase to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %sdhc_mmiobase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !167
  tail call void @arm_heavy_mb() #5
  %93 = ptrtoint ptr %pm_sdhc_reg1.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %pm_sdhc_reg1.i.i, align 4
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %95) #5, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !168
  tail call void @arm_heavy_mb() #5
  %96 = ptrtoint ptr %sdcmdarg_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %sdcmdarg_reg.i.i, align 4
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #5
  %add.ptr5.i69.i = getelementptr i8, ptr %92, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i69.i, i32 %98) #5, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !169
  tail call void @arm_heavy_mb() #5
  %99 = ptrtoint ptr %sdbusmode_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %sdbusmode_reg.i.i, align 4
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #5
  %add.ptr9.i71.i = getelementptr i8, ptr %92, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i71.i, i32 %101) #5, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !170
  tail call void @arm_heavy_mb() #5
  %102 = ptrtoint ptr %sdblklen_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %sdblklen_reg.i.i, align 4
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #5
  %add.ptr13.i73.i = getelementptr i8, ptr %92, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i73.i, i32 %104) #5, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !171
  tail call void @arm_heavy_mb() #5
  %105 = ptrtoint ptr %sdcurblkcnt_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %sdcurblkcnt_reg.i.i, align 4
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #5
  %add.ptr17.i75.i = getelementptr i8, ptr %92, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i75.i, i32 %107) #5, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !172
  tail call void @arm_heavy_mb() #5
  %108 = ptrtoint ptr %sdintmask_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %sdintmask_reg.i.i, align 4
  %110 = tail call i32 @llvm.bswap.i32(i32 %109) #5
  %add.ptr21.i77.i = getelementptr i8, ptr %92, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i77.i, i32 %110) #5, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !173
  tail call void @arm_heavy_mb() #5
  %111 = ptrtoint ptr %sdstatus_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %sdstatus_reg.i.i, align 4
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #5
  %add.ptr25.i79.i = getelementptr i8, ptr %92, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i79.i, i32 %113) #5, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !174
  tail call void @arm_heavy_mb() #5
  %114 = ptrtoint ptr %sdrsptmo_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %sdrsptmo_reg.i.i, align 4
  %116 = tail call i32 @llvm.bswap.i32(i32 %115) #5
  %add.ptr29.i81.i = getelementptr i8, ptr %92, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i81.i, i32 %116) #5, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !175
  tail call void @arm_heavy_mb() #5
  %117 = ptrtoint ptr %sdclksel_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %sdclksel_reg.i.i, align 4
  %119 = tail call i32 @llvm.bswap.i32(i32 %118) #5
  %add.ptr33.i.i = getelementptr i8, ptr %92, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i.i, i32 %119) #5, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !176
  tail call void @arm_heavy_mb() #5
  %120 = ptrtoint ptr %sdextctrl_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %sdextctrl_reg.i.i, align 4
  %122 = tail call i32 @llvm.bswap.i32(i32 %121) #5
  %add.ptr37.i.i = getelementptr i8, ptr %92, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i.i, i32 %122) #5, !srcloc !111
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call33.i) #5
  %call38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  br label %if.end43

if.end43:                                         ; preds = %if.end, %entry.if.end43_crit_edge
  %flags.0 = phi i32 [ %call5, %entry.if.end43_crit_edge ], [ %call38, %if.end ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0) #5
  tail call fastcc void @via_print_pcictrl(ptr noundef %add.ptr)
  tail call fastcc void @via_print_sdchc(ptr noundef %add.ptr)
  %123 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %add.ptr, align 4
  tail call void @mmc_detect_change(ptr noundef %124, i32 noundef 50) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @via_sdc_tasklet_finish(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -144
  %lock = getelementptr i8, ptr %t, i32 72
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %timer = getelementptr i8, ptr %t, i32 24
  %call6 = tail call i32 @del_timer(ptr noundef %timer) #5
  %mrq7 = getelementptr i8, ptr %t, i32 -140
  %0 = ptrtoint ptr %mrq7 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrq7, align 4
  store ptr null, ptr %mrq7, align 4
  %cmd = getelementptr i8, ptr %t, i32 -136
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %cmd, align 4
  %data = getelementptr i8, ptr %t, i32 -132
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %data, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #5
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  tail call void @mmc_request_done(ptr noundef %5, ptr noundef %1) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @via_sdc_finish_data(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %host, i32 0, i32 3
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !177

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/via-sdmmc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 629, 0\0A.popsection", ""() #5, !srcloc !178
  unreachable

do.end10:                                         ; preds = %entry
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %data1, align 4
  %error = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool13.not = icmp eq i32 %4, 0
  br i1 %tobool13.not, label %if.else, label %do.end10.if.end16_crit_edge

do.end10.if.end16_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.else:                                          ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #7
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %blocks, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %blksz, align 4
  %mul = mul i32 %8, %6
  br label %if.end16

if.end16:                                         ; preds = %if.else, %do.end10.if.end16_crit_edge
  %.sink = phi i32 [ %mul, %if.else ], [ 0, %do.end10.if.end16_crit_edge ]
  %9 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink, ptr %9, align 4
  %11 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %host, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 128
  %sg = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %15 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sg, align 4
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 10
  %17 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sg_len, align 4
  %flags = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %and = and i32 %20, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool17.not, i32 1, i32 2
  tail call void @dma_unmap_sg_attrs(ptr noundef %14, ptr noundef %16, i32 noundef %18, i32 noundef %cond, i32 noundef 0) #5
  %stop = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stop, align 4
  %tobool18.not = icmp eq ptr %22, null
  br i1 %tobool18.not, label %if.else21, label %if.then19

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @via_sdc_send_command(ptr noundef %host, ptr noundef nonnull %22)
  br label %if.end22

if.else21:                                        ; preds = %if.end16
  %state.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %host, i32 0, i32 11, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else21.if.end22_crit_edge

if.else21.if.end22_crit_edge:                     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then.i:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #7
  %finish_tasklet = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %host, i32 0, i32 11
  tail call void @__tasklet_schedule(ptr noundef %finish_tasklet) #5
  br label %if.end22

if.end22:                                         ; preds = %if.then.i, %if.else21.if.end22_crit_edge, %if.then19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @via_sdc_send_command(ptr noundef %host, ptr noundef %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd1 = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %host, i32 0, i32 2
  %0 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !179

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 559, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %data21 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 7
  %2 = ptrtoint ptr %data21 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data21, align 4
  %4 = ptrtoint ptr %cmd1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cmd, ptr %cmd1, align 4
  %busy_timeout = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 6
  %5 = ptrtoint ptr %busy_timeout to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %busy_timeout, align 4
  %timer = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %host, i32 0, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool23.not = icmp eq i32 %6, 0
  %spec.select = select i1 %tobool23.not, i32 1000, i32 %6
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %spec.select) #5
  %add = add i32 %call2.i, %7
  %call25 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #5
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cmd, align 4
  %shl = shl i32 %9, 8
  %flags = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 31
  %12 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %do.end36 [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 21, label %sw.bb26
    i32 29, label %sw.bb28
    i32 7, label %sw.bb30
    i32 1, label %sw.bb32
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %or27 = or i32 %shl, 65536
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %or29 = or i32 %shl, 589824
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %or31 = or i32 %shl, 131072
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %or33 = or i32 %shl, 196608
  br label %sw.epilog

do.end36:                                         ; preds = %if.end
  %13 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %host, align 4
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %14, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.i109, label %do.end36.dev_name.exit_crit_edge

do.end36.dev_name.exit_crit_edge:                 ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i109:                                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i109, %do.end36.dev_name.exit_crit_edge
  %retval.0.i110 = phi ptr [ %18, %if.end.i109 ], [ %16, %do.end36.dev_name.exit_crit_edge ]
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %retval.0.i110) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %dev_name.exit, %sw.bb32, %sw.bb30, %sw.bb28, %sw.bb26, %if.end.sw.epilog_crit_edge
  %cmdctrl.0 = phi i32 [ %shl, %dev_name.exit ], [ %or33, %sw.bb32 ], [ %or31, %sw.bb30 ], [ %or29, %sw.bb28 ], [ %or27, %sw.bb26 ], [ %shl, %if.end.sw.epilog_crit_edge ]
  %19 = ptrtoint ptr %data21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data21, align 4
  %tobool41.not = icmp eq ptr %20, null
  br i1 %tobool41.not, label %sw.epilog.nodata_crit_edge, label %if.end43

sw.epilog.nodata_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %nodata

if.end43:                                         ; preds = %sw.epilog
  %data1.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %host, i32 0, i32 3
  %21 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data1.i, align 4
  %tobool.not.i111 = icmp eq ptr %22, null
  br i1 %tobool.not.i111, label %if.end43.if.end.i113_crit_edge, label %do.end.i, !prof !179

if.end43.if.end.i113_crit_edge:                   ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i113

do.end.i:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 484, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i113

if.end.i113:                                      ; preds = %do.end.i, %if.end43.if.end.i113_crit_edge
  %blksz.i = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 2
  %23 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %blksz.i, align 4
  %25 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %host, align 4
  %max_blk_size.i = getelementptr inbounds %struct.mmc_host, ptr %26, i32 0, i32 24
  %27 = ptrtoint ptr %max_blk_size.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_blk_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %28)
  %cmp.i112 = icmp ugt i32 %24, %28
  br i1 %cmp.i112, label %do.body29.i, label %do.body38.i, !prof !177

do.body29.i:                                      ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/via-sdmmc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 487, 0\0A.popsection", ""() #5, !srcloc !180
  unreachable

do.body38.i:                                      ; preds = %if.end.i113
  %blocks.i = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 3
  %29 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %blocks.i, align 4
  %max_blk_count.i = getelementptr inbounds %struct.mmc_host, ptr %26, i32 0, i32 25
  %31 = ptrtoint ptr %max_blk_count.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_blk_count.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp40.i = icmp ugt i32 %30, %32
  br i1 %cmp40.i, label %do.body48.i, label %do.end56.i, !prof !177

do.body48.i:                                      ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/via-sdmmc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 488, 0\0A.popsection", ""() #5, !srcloc !181
  unreachable

do.end56.i:                                       ; preds = %do.body38.i
  %33 = ptrtoint ptr %data1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %3, ptr %data1.i, align 4
  %34 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %26, align 128
  %sg.i = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 12
  %36 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sg.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 10
  %38 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sg_len.i, align 4
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 6
  %40 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %41, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool59.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool59.not.i, i32 1, i32 2
  %call.i = tail call i32 @dma_map_sg_attrs(ptr noundef %35, ptr noundef %37, i32 noundef %39, i32 noundef %cond.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp61.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp61.not.i, label %do.end77.i, label %do.body69.i, !prof !179

do.body69.i:                                      ; preds = %do.end56.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/via-sdmmc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 495, 0\0A.popsection", ""() #5, !srcloc !182
  unreachable

do.end77.i:                                       ; preds = %do.end56.i
  %42 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sg.i, align 4
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dma_address.i, align 4
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %43, i32 0, i32 4
  %46 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dma_length.i, align 4
  %48 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags.i, align 4
  %50 = and i32 %49, 256
  %51 = or i32 %50, 65536
  %ddma_mmiobase.i.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %host, i32 0, i32 6
  %52 = ptrtoint ptr %ddma_mmiobase.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ddma_mmiobase.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !183
  tail call void @arm_heavy_mb() #5
  %54 = tail call i32 @llvm.bswap.i32(i32 %45) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %54) #5, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !184
  tail call void @arm_heavy_mb() #5
  %55 = tail call i32 @llvm.bswap.i32(i32 %47) #5
  %add.ptr8.i.i = getelementptr i8, ptr %53, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i, i32 %55) #5, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !185
  tail call void @arm_heavy_mb() #5
  %56 = tail call i32 @llvm.bswap.i32(i32 %51) #5
  %add.ptr12.i.i = getelementptr i8, ptr %53, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i.i, i32 %56) #5, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !186
  tail call void @arm_heavy_mb() #5
  %add.ptr16.i.i = getelementptr i8, ptr %53, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i.i, i32 16777216) #5, !srcloc !111
  %pcictrl_mmiobase.i.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %host, i32 0, i32 7
  %57 = ptrtoint ptr %pcictrl_mmiobase.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pcictrl_mmiobase.i.i, align 4
  %add.ptr17.i.i = getelementptr i8, ptr %58, i32 5
  %59 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr17.i.i) #5, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %59)
  %cmp.i.i = icmp eq i8 %59, 3
  br i1 %cmp.i.i, label %do.end23.i.i, label %do.end77.i.via_sdc_preparedata.exit_crit_edge

do.end77.i.via_sdc_preparedata.exit_crit_edge:    ; preds = %do.end77.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %via_sdc_preparedata.exit

do.end23.i.i:                                     ; preds = %do.end77.i
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %host, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 128
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %63, ptr noundef nonnull @.str.13) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !188
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr17.i.i, i8 4) #5, !srcloc !108
  br label %via_sdc_preparedata.exit

via_sdc_preparedata.exit:                         ; preds = %do.end23.i.i, %do.end77.i.via_sdc_preparedata.exit_crit_edge
  %sdhc_mmiobase.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %host, i32 0, i32 5
  %64 = ptrtoint ptr %sdhc_mmiobase.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sdhc_mmiobase.i, align 4
  %66 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %blksz.i, align 4
  %sub.i = add i32 %67, -1
  %68 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %blocks.i, align 4
  %shl.i = shl i32 %69, 16
  %or.i = or i32 %sub.i, %shl.i
  %or86.i = or i32 %or.i, 40960
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !189
  tail call void @arm_heavy_mb() #5
  %70 = tail call i32 @llvm.bswap.i32(i32 %or86.i) #5
  %add.ptr.i = getelementptr i8, ptr %65, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %70) #5, !srcloc !111
  %71 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %blocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %72)
  %cmp = icmp ugt i32 %72, 1
  %73 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %flags.i, align 4
  %and46 = and i32 %74, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %cmp, label %if.then44, label %if.else53

if.then44:                                        ; preds = %via_sdc_preparedata.exit
  br i1 %tobool47.not, label %if.else, label %if.then48

if.then48:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  %or50 = or i32 %cmdctrl.0, 52
  br label %nodata

if.else:                                          ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  %or51 = or i32 %cmdctrl.0, 64
  br label %nodata

if.else53:                                        ; preds = %via_sdc_preparedata.exit
  br i1 %tobool47.not, label %if.else60, label %if.then57

if.then57:                                        ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #7
  %or59 = or i32 %cmdctrl.0, 20
  br label %nodata

if.else60:                                        ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #7
  %or61 = or i32 %cmdctrl.0, 32
  br label %nodata

nodata:                                           ; preds = %if.else60, %if.then57, %if.else, %if.then48, %sw.epilog.nodata_crit_edge
  %cmdctrl.1 = phi i32 [ %or50, %if.then48 ], [ %or51, %if.else ], [ %or59, %if.then57 ], [ %or61, %if.else60 ], [ %cmdctrl.0, %sw.epilog.nodata_crit_edge ]
  %mrq = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %host, i32 0, i32 1
  %75 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mrq, align 4
  %stop = getelementptr inbounds %struct.mmc_request, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %stop, align 4
  %cmp64 = icmp eq ptr %78, %cmd
  %or66 = or i32 %cmdctrl.1, 112
  %spec.select108 = select i1 %cmp64, i32 %or66, i32 %cmdctrl.1
  %or68 = or i32 %spec.select108, 1
  %sdhc_mmiobase = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %host, i32 0, i32 5
  %79 = ptrtoint ptr %sdhc_mmiobase to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %sdhc_mmiobase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !190
  tail call void @arm_heavy_mb() #5
  %arg = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %81 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arg, align 4
  %83 = tail call i32 @llvm.bswap.i32(i32 %82)
  %add.ptr = getelementptr i8, ptr %80, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %83) #5, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !191
  tail call void @arm_heavy_mb() #5
  %84 = tail call i32 @llvm.bswap.i32(i32 %or68)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %84) #5, !srcloc !111
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @via_sdc_request(ptr noundef %mmc, ptr noundef %mrq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %lock = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1, i32 4, i32 6
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %pcictrl_mmiobase = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 4
  %0 = ptrtoint ptr %pcictrl_mmiobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcictrl_mmiobase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !192
  tail call void @arm_heavy_mb() #5
  %add.ptr = getelementptr i8, ptr %1, i32 7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 2) #5, !srcloc !108
  %sdhc_mmiobase = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %sdhc_mmiobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdhc_mmiobase, align 4
  %add.ptr9 = getelementptr i8, ptr %3, i32 40
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr9) #5, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !193
  %5 = and i16 %4, -3586
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !194
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %sdhc_mmiobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdhc_mmiobase, align 4
  %add.ptr19 = getelementptr i8, ptr %7, i32 40
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr19, i16 %5) #5, !srcloc !116
  %mrq20 = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %private.i, i32 0, i32 1
  %8 = ptrtoint ptr %mrq20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mrq20, align 4
  %cmp21.not = icmp eq ptr %9, null
  br i1 %cmp21.not, label %entry.if.end_crit_edge, label %do.end32, !prof !179

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end32:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 679, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end32, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %mrq20 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %mrq, ptr %mrq20, align 4
  %11 = ptrtoint ptr %sdhc_mmiobase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sdhc_mmiobase, align 4
  %add.ptr49 = getelementptr i8, ptr %12, i32 40
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr49) #5, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !195
  %14 = and i16 %13, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool55.not = icmp eq i16 %14, 0
  br i1 %tobool55.not, label %if.end.if.then57_crit_edge, label %lor.lhs.false

if.end.if.then57_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then57

lor.lhs.false:                                    ; preds = %if.end
  %reject = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 5, i32 7
  %15 = ptrtoint ptr %reject to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reject, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool56.not = icmp eq i32 %16, 0
  br i1 %tobool56.not, label %if.else, label %lor.lhs.false.if.then57_crit_edge

lor.lhs.false.if.then57_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then57

if.then57:                                        ; preds = %lor.lhs.false.if.then57_crit_edge, %if.end.if.then57_crit_edge
  %17 = ptrtoint ptr %mrq20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mrq20, align 4
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cmd, align 4
  %error = getelementptr inbounds %struct.mmc_command, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -123, ptr %error, align 4
  %state.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 2
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then57.if.end60_crit_edge

if.then57.if.end60_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

if.then.i:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #7
  %finish_tasklet = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 1
  tail call void @__tasklet_schedule(ptr noundef %finish_tasklet) #5
  br label %if.end60

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %cmd59 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %22 = ptrtoint ptr %cmd59 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cmd59, align 4
  tail call fastcc void @via_sdc_send_command(ptr noundef %private.i, ptr noundef %23)
  br label %if.end60

if.end60:                                         ; preds = %if.else, %if.then.i, %if.then57.if.end60_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @via_sdc_set_ios(ptr noundef %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1, i32 4, i32 6
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %sdhc_mmiobase = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %sdhc_mmiobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdhc_mmiobase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !196
  %add.ptr11 = getelementptr i8, ptr %1, i32 52
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #5, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !197
  %bus_width = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 6
  %4 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bus_width, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp16 = icmp eq i8 %5, 0
  %masksel = select i1 %cmp16, i32 0, i32 2
  %power_mode = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 5
  %6 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %power_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp19 = icmp eq i8 %7, 0
  %8 = and i32 %2, -1107296257
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %and22 = or i32 %masksel, %9
  %masksel147 = select i1 %cmp19, i32 0, i32 64
  %org_data.1 = or i32 %and22, %masksel147
  %timing = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 7
  %10 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %timing, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp27 = icmp eq i8 %11, 2
  %12 = and i32 %3, 2147483647
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %masksel148 = select i1 %cmp27, i32 128, i32 0
  %sdextctrl.0 = or i32 %masksel148, %13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !198
  tail call void @arm_heavy_mb() #5
  %14 = tail call i32 @llvm.bswap.i32(i32 %org_data.1)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %14) #5, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !199
  tail call void @arm_heavy_mb() #5
  %15 = tail call i32 @llvm.bswap.i32(i32 %sdextctrl.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %15) #5, !srcloc !111
  %16 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 47999999, i32 %17)
  %cmp43 = icmp ugt i32 %17, 47999999
  br i1 %cmp43, label %entry.if.end77_crit_edge, label %if.else46

entry.if.end77_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end77

if.else46:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 32999999, i32 %17)
  %cmp48 = icmp ugt i32 %17, 32999999
  br i1 %cmp48, label %if.else46.if.end77_crit_edge, label %if.else51

if.else46.if.end77_crit_edge:                     ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end77

if.else51:                                        ; preds = %if.else46
  call void @__sanitizer_cov_trace_const_cmp4(i32 23999999, i32 %17)
  %cmp53 = icmp ugt i32 %17, 23999999
  br i1 %cmp53, label %if.else51.if.end77_crit_edge, label %if.else56

if.else51.if.end77_crit_edge:                     ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end77

if.else56:                                        ; preds = %if.else51
  call void @__sanitizer_cov_trace_const_cmp4(i32 15999999, i32 %17)
  %cmp58 = icmp ugt i32 %17, 15999999
  br i1 %cmp58, label %if.else56.if.end77_crit_edge, label %if.else61

if.else56.if.end77_crit_edge:                     ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end77

if.else61:                                        ; preds = %if.else56
  call void @__sanitizer_cov_trace_const_cmp4(i32 11999999, i32 %17)
  %cmp63 = icmp ugt i32 %17, 11999999
  br i1 %cmp63, label %if.else61.if.end77_crit_edge, label %if.else66

if.else61.if.end77_crit_edge:                     ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end77

if.else66:                                        ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7999999, i32 %17)
  %cmp68 = icmp ugt i32 %17, 7999999
  %. = select i1 %cmp68, i8 4, i8 3
  br label %if.end77

if.end77:                                         ; preds = %if.else66, %if.else61.if.end77_crit_edge, %if.else56.if.end77_crit_edge, %if.else51.if.end77_crit_edge, %if.else46.if.end77_crit_edge, %entry.if.end77_crit_edge
  %clock.0 = phi i8 [ 2, %entry.if.end77_crit_edge ], [ 6, %if.else46.if.end77_crit_edge ], [ 1, %if.else51.if.end77_crit_edge ], [ 5, %if.else56.if.end77_crit_edge ], [ 0, %if.else61.if.end77_crit_edge ], [ %., %if.else66 ]
  %pcictrl_mmiobase = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 4
  %18 = ptrtoint ptr %pcictrl_mmiobase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pcictrl_mmiobase, align 4
  %add.ptr80 = getelementptr i8, ptr %19, i32 5
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr80) #5, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !200
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %clock.0)
  %cmp86.not = icmp eq i8 %20, %clock.0
  br i1 %cmp86.not, label %if.end77.if.end93_crit_edge, label %do.body89

if.end77.if.end93_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end93

do.body89:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr80, i8 %clock.0) #5, !srcloc !108
  br label %if.end93

if.end93:                                         ; preds = %do.body89, %if.end77.if.end93_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #5
  %21 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %power_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp97.not = icmp eq i8 %22, 0
  %vdd101 = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 1
  %23 = ptrtoint ptr %vdd101 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vdd101, align 4
  %call2.i132 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %conv5.i133 = zext i16 %24 to i32
  %shl.i134 = shl nuw i32 1, %conv5.i133
  %conv6.i135 = trunc i32 %shl.i134 to i8
  %power7.i136 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 5, i32 6
  %25 = ptrtoint ptr %power7.i136 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv6.i135, ptr %power7.i136, align 4
  %26 = ptrtoint ptr %pcictrl_mmiobase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pcictrl_mmiobase, align 4
  %add.ptr.i138 = getelementptr i8, ptr %27, i32 2
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i138) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  %29 = ptrtoint ptr %power7.i136 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %power7.i136, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %30)
  %cmp13.i139 = icmp eq i8 %30, -128
  %31 = and i8 %28, -49
  %masksel.i140 = select i1 %cmp13.i139, i8 0, i8 16
  br i1 %cmp97.not, label %if.else100, label %if.then99

if.then99:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  %gatt.0.i = or i8 %31, %masksel.i140
  %gatt.1.i = or i8 %gatt.0.i, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !202
  tail call void @arm_heavy_mb() #5
  %32 = ptrtoint ptr %pcictrl_mmiobase to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pcictrl_mmiobase, align 4
  %add.ptr32.i = getelementptr i8, ptr %33, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr32.i, i8 %gatt.1.i) #5, !srcloc !108
  br label %if.end102

if.else100:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  %gatt.1.i141 = or i8 %masksel.i140, %31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !202
  tail call void @arm_heavy_mb() #5
  %34 = ptrtoint ptr %pcictrl_mmiobase to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pcictrl_mmiobase, align 4
  %add.ptr32.i142 = getelementptr i8, ptr %35, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr32.i142, i8 %gatt.1.i141) #5, !srcloc !108
  br label %if.end102

if.end102:                                        ; preds = %if.else100, %if.then99
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i132) #5
  %quirks.i.i143 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 10
  %36 = ptrtoint ptr %quirks.i.i143 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %quirks.i.i143, align 4
  %and.i.i144 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i144)
  %tobool.not.i.i145 = icmp eq i32 %and.i.i144, 0
  %..i.i146 = select i1 %tobool.not.i.i145, i32 3, i32 300
  tail call void @msleep(i32 noundef %..i.i146) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @via_sdc_get_ro(ptr noundef %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1, i32 4, i32 6
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %sdhc_mmiobase = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %sdhc_mmiobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdhc_mmiobase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 40
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #5, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !203
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #5
  %3 = lshr i16 %2, 9
  %.lobit = and i16 %3, 1
  %4 = xor i16 %.lobit, 1
  %5 = zext i16 %4 to i32
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @via_print_pcictrl(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pcictrl_mmiobase = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %host, i32 0, i32 7
  %0 = ptrtoint ptr %pcictrl_mmiobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcictrl_mmiobase, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @via_print_pcictrl.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@via_print_pcictrl, %if.then)) #5
          to label %do.body3 [label %if.then], !srcloc !204

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @via_print_pcictrl.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.20) #5
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @via_print_pcictrl.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@via_print_pcictrl, %if.then15)) #5
          to label %do.body36 [label %if.then15], !srcloc !204

if.then15:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %1, i32 2
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !205
  %conv = zext i8 %2 to i32
  %add.ptr21 = getelementptr i8, ptr %1, i32 5
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr21) #5, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !206
  %conv25 = zext i8 %3 to i32
  %add.ptr28 = getelementptr i8, ptr %1, i32 7
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr28) #5, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !207
  %conv32 = zext i8 %4 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @via_print_pcictrl.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.21, i32 noundef %conv, i32 noundef %conv25, i32 noundef %conv32) #5
  br label %do.body36

do.body36:                                        ; preds = %if.then15, %do.body3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @via_print_pcictrl.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@via_print_pcictrl, %if.then48)) #5
          to label %do.end65 [label %if.then48], !srcloc !204

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr51 = getelementptr i8, ptr %1, i32 8
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr51) #5, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !208
  %conv55 = zext i8 %5 to i32
  %add.ptr58 = getelementptr i8, ptr %1, i32 9
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr58) #5, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !209
  %conv62 = zext i8 %6 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @via_print_pcictrl.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.22, i32 noundef %conv55, i32 noundef %conv62) #5
  br label %do.end65

do.end65:                                         ; preds = %if.then48, %do.body36
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @via_print_sdchc(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sdhc_mmiobase = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %host, i32 0, i32 5
  %0 = ptrtoint ptr %sdhc_mmiobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdhc_mmiobase, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @via_print_sdchc.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@via_print_sdchc, %if.then)) #5
          to label %do.body3 [label %if.then], !srcloc !204

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @via_print_sdchc.__UNIQUE_ID_ddebug275, ptr noundef nonnull @.str.24) #5
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @via_print_sdchc.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@via_print_sdchc, %if.then15)) #5
          to label %do.body34 [label %if.then15], !srcloc !204

if.then15:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !132
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !210
  %add.ptr21 = getelementptr i8, ptr %1, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #5, !srcloc !132
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !211
  %add.ptr27 = getelementptr i8, ptr %1, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #5, !srcloc !132
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !212
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @via_print_sdchc.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.25, i32 noundef %3, i32 noundef %5, i32 noundef %7) #5
  br label %do.body34

do.body34:                                        ; preds = %if.then15, %do.body3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @via_print_sdchc.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@via_print_sdchc, %if.then46)) #5
          to label %do.body68 [label %if.then46], !srcloc !204

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr49 = getelementptr i8, ptr %1, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #5, !srcloc !132
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !213
  %add.ptr55 = getelementptr i8, ptr %1, i32 32
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55) #5, !srcloc !132
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !214
  %add.ptr61 = getelementptr i8, ptr %1, i32 36
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61) #5, !srcloc !132
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !215
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @via_print_sdchc.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.26, i32 noundef %9, i32 noundef %11, i32 noundef %13) #5
  br label %do.body68

do.body68:                                        ; preds = %if.then46, %do.body34
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @via_print_sdchc.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@via_print_sdchc, %if.then80)) #5
          to label %do.end101 [label %if.then80], !srcloc !204

if.then80:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr83 = getelementptr i8, ptr %1, i32 40
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83) #5, !srcloc !132
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !216
  %add.ptr89 = getelementptr i8, ptr %1, i32 48
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr89) #5, !srcloc !132
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !217
  %add.ptr95 = getelementptr i8, ptr %1, i32 52
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr95) #5, !srcloc !132
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !218
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @via_print_sdchc.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.27, i32 noundef %15, i32 noundef %17, i32 noundef %19) #5
  br label %do.end101

do.end101:                                        ; preds = %if.then80, %do.body68
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_detect_change(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @via_sd_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %pcictrl_mmiobase.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %pcictrl_mmiobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcictrl_mmiobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 2
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #5, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  %pciclkgat_reg.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 8, i32 1
  %5 = or i8 %4, 48
  %6 = ptrtoint ptr %pciclkgat_reg.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %pciclkgat_reg.i, align 1
  %add.ptr7.i = getelementptr i8, ptr %3, i32 5
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7.i) #5, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  %pcisdclk_reg.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 8, i32 4
  %8 = ptrtoint ptr %pcisdclk_reg.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %pcisdclk_reg.i, align 1
  %add.ptr13.i = getelementptr i8, ptr %3, i32 7
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr13.i) #5, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !145
  %pcidmaclk_reg.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 8, i32 6
  %10 = ptrtoint ptr %pcidmaclk_reg.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %pcidmaclk_reg.i, align 1
  %add.ptr19.i = getelementptr i8, ptr %3, i32 8
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr19.i) #5, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !146
  %pciintctrl_reg.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 8, i32 7
  %12 = ptrtoint ptr %pciintctrl_reg.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %pciintctrl_reg.i, align 1
  %add.ptr25.i = getelementptr i8, ptr %3, i32 9
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr25.i) #5, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !147
  %pciintstatus_reg.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 8, i32 8
  %14 = ptrtoint ptr %pciintstatus_reg.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %pciintstatus_reg.i, align 1
  %add.ptr31.i = getelementptr i8, ptr %3, i32 10
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr31.i) #5, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !148
  %pcitmoctrl_reg.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 8, i32 9
  %16 = ptrtoint ptr %pcitmoctrl_reg.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %pcitmoctrl_reg.i, align 1
  %pm_sdhc_reg1.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 9
  %sdhc_mmiobase.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %sdhc_mmiobase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sdhc_mmiobase.i, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #5, !srcloc !132
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !149
  %21 = ptrtoint ptr %pm_sdhc_reg1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %pm_sdhc_reg1.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %18, i32 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #5, !srcloc !132
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !150
  %sdcmdarg_reg.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 9, i32 1
  %24 = ptrtoint ptr %sdcmdarg_reg.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %sdcmdarg_reg.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %18, i32 8
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #5, !srcloc !132
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !151
  %sdbusmode_reg.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 9, i32 2
  %27 = ptrtoint ptr %sdbusmode_reg.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %sdbusmode_reg.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %18, i32 12
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #5, !srcloc !132
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !152
  %sdblklen_reg.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 9, i32 3
  %30 = ptrtoint ptr %sdblklen_reg.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %sdblklen_reg.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %18, i32 32
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #5, !srcloc !132
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !153
  %sdcurblkcnt_reg.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 9, i32 5
  %33 = ptrtoint ptr %sdcurblkcnt_reg.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %sdcurblkcnt_reg.i, align 4
  %add.ptr29.i = getelementptr i8, ptr %18, i32 36
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29.i) #5, !srcloc !132
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !154
  %sdintmask_reg.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 9, i32 6
  %36 = ptrtoint ptr %sdintmask_reg.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %sdintmask_reg.i, align 4
  %add.ptr35.i = getelementptr i8, ptr %18, i32 40
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.i) #5, !srcloc !132
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !155
  %sdstatus_reg.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 9, i32 7
  %39 = ptrtoint ptr %sdstatus_reg.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %sdstatus_reg.i, align 4
  %add.ptr41.i = getelementptr i8, ptr %18, i32 44
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41.i) #5, !srcloc !132
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !156
  %sdrsptmo_reg.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 9, i32 8
  %42 = ptrtoint ptr %sdrsptmo_reg.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %sdrsptmo_reg.i, align 4
  %add.ptr47.i = getelementptr i8, ptr %18, i32 48
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47.i) #5, !srcloc !132
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  %sdclksel_reg.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 9, i32 9
  %45 = ptrtoint ptr %sdclksel_reg.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %sdclksel_reg.i, align 4
  %add.ptr53.i = getelementptr i8, ptr %18, i32 52
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53.i) #5, !srcloc !132
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !158
  %sdextctrl_reg.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 9, i32 10
  %48 = ptrtoint ptr %sdextctrl_reg.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %sdextctrl_reg.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #5
  %call7 = tail call i32 @device_wakeup_enable(ptr noundef %dev) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @via_sd_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %power = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %power to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %power, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %3)
  %cmp = icmp eq i8 %3, -128
  %. = select i1 %cmp, i8 32, i8 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !219
  tail call void @arm_heavy_mb() #5
  %pcictrl_mmiobase = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %pcictrl_mmiobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcictrl_mmiobase, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %.) #5, !srcloc !108
  %quirks.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i32 3, i32 300
  tail call void @msleep(i32 noundef %..i) #5
  %8 = or i8 %., 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !220
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %pcictrl_mmiobase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcictrl_mmiobase, align 4
  %add.ptr13 = getelementptr i8, ptr %10, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr13, i8 %8) #5, !srcloc !108
  tail call void @msleep(i32 noundef 3) #5
  tail call void @msleep(i32 noundef 100) #5
  %11 = ptrtoint ptr %pcictrl_mmiobase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcictrl_mmiobase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !161
  tail call void @arm_heavy_mb() #5
  %pciclkgat_reg.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 8, i32 1
  %13 = ptrtoint ptr %pciclkgat_reg.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pciclkgat_reg.i, align 1
  %add.ptr.i = getelementptr i8, ptr %12, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %14) #5, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !162
  tail call void @arm_heavy_mb() #5
  %pcisdclk_reg.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 8, i32 4
  %15 = ptrtoint ptr %pcisdclk_reg.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pcisdclk_reg.i, align 1
  %add.ptr5.i = getelementptr i8, ptr %12, i32 5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i, i8 %16) #5, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !163
  tail call void @arm_heavy_mb() #5
  %pcidmaclk_reg.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 8, i32 6
  %17 = ptrtoint ptr %pcidmaclk_reg.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pcidmaclk_reg.i, align 1
  %add.ptr9.i = getelementptr i8, ptr %12, i32 7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.i, i8 %18) #5, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !164
  tail call void @arm_heavy_mb() #5
  %pciintctrl_reg.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 8, i32 7
  %19 = ptrtoint ptr %pciintctrl_reg.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pciintctrl_reg.i, align 1
  %add.ptr13.i = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr13.i, i8 %20) #5, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !165
  tail call void @arm_heavy_mb() #5
  %pciintstatus_reg.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 8, i32 8
  %21 = ptrtoint ptr %pciintstatus_reg.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pciintstatus_reg.i, align 1
  %add.ptr17.i = getelementptr i8, ptr %12, i32 9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr17.i, i8 %22) #5, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !166
  tail call void @arm_heavy_mb() #5
  %pcitmoctrl_reg.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 8, i32 9
  %23 = ptrtoint ptr %pcitmoctrl_reg.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %pcitmoctrl_reg.i, align 1
  %add.ptr21.i = getelementptr i8, ptr %12, i32 10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr21.i, i8 %24) #5, !srcloc !108
  %pm_sdhc_reg.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 9
  %sdhc_mmiobase.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 5
  %25 = ptrtoint ptr %sdhc_mmiobase.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sdhc_mmiobase.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !221
  tail call void @arm_heavy_mb() #5
  %add.ptr.i23 = getelementptr i8, ptr %26, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 0) #5, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !222
  tail call void @arm_heavy_mb() #5
  %add.ptr4.i = getelementptr i8, ptr %26, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 10485760) #5, !srcloc !111
  %add.ptr5.i24 = getelementptr i8, ptr %26, i32 40
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr5.i24) #5, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !223
  %28 = and i16 %27, -3586
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !224
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i24, i16 %28) #5, !srcloc !116
  %add.ptr14.i = getelementptr i8, ptr %26, i32 42
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr14.i) #5, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !225
  %30 = or i16 %29, -32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr14.i, i16 %30) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @arm_heavy_mb() #5
  %31 = ptrtoint ptr %pm_sdhc_reg.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pm_sdhc_reg.i, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %33) #5, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !228
  tail call void @arm_heavy_mb() #5
  %sdcmdarg_reg.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 9, i32 1
  %34 = ptrtoint ptr %sdcmdarg_reg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sdcmdarg_reg.i, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #5
  %add.ptr31.i = getelementptr i8, ptr %26, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 %36) #5, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !229
  tail call void @arm_heavy_mb() #5
  %sdintmask_reg.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 9, i32 6
  %37 = ptrtoint ptr %sdintmask_reg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sdintmask_reg.i, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 %39) #5, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !230
  tail call void @arm_heavy_mb() #5
  %sdrsptmo_reg.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 9, i32 8
  %40 = ptrtoint ptr %sdrsptmo_reg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sdrsptmo_reg.i, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #5
  %add.ptr39.i = getelementptr i8, ptr %26, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39.i, i32 %42) #5, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !231
  tail call void @arm_heavy_mb() #5
  %sdclksel_reg.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 9, i32 9
  %43 = ptrtoint ptr %sdclksel_reg.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sdclksel_reg.i, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #5
  %add.ptr43.i = getelementptr i8, ptr %26, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.i, i32 %45) #5, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !232
  tail call void @arm_heavy_mb() #5
  %sdextctrl_reg.i = getelementptr inbounds %struct.via_crdr_mmc_host, ptr %1, i32 0, i32 9, i32 10
  %46 = ptrtoint ptr %sdextctrl_reg.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sdextctrl_reg.i, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #5
  %add.ptr47.i = getelementptr i8, ptr %26, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47.i, i32 %48) #5, !srcloc !111
  tail call fastcc void @via_print_pcictrl(ptr noundef %1) #5
  tail call fastcc void @via_print_sdchc(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !45, !46, !47, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !63, !64, !66, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @__initcall__kmod_via_sdmmc__282_1310_via_sd_driver_init6, !1, !"__initcall__kmod_via_sdmmc__282_1310_via_sd_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/via-sdmmc.c", i32 1310, i32 1}
!2 = !{ptr @__exitcall_via_sd_driver_exit, !1, !"__exitcall_via_sd_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file283, !4, !"__UNIQUE_ID_file283", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/via-sdmmc.c", i32 1312, i32 1}
!5 = !{ptr @__UNIQUE_ID_license284, !4, !"__UNIQUE_ID_license284", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author285, !7, !"__UNIQUE_ID_author285", i1 false, i1 false}
!7 = !{!"../drivers/mmc/host/via-sdmmc.c", i32 1313, i32 1}
!8 = !{ptr @__UNIQUE_ID_description286, !9, !"__UNIQUE_ID_description286", i1 false, i1 false}
!9 = !{!"../drivers/mmc/host/via-sdmmc.c", i32 1314, i32 1}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @via_sd_driver, !12, !"via_sd_driver", i1 false, i1 false}
!12 = !{!"../drivers/mmc/host/via-sdmmc.c", i32 1302, i32 26}
!13 = !{ptr @via_ids, !14, !"via_ids", i1 false, i1 false}
!14 = !{!"../drivers/mmc/host/via-sdmmc.c", i32 324, i32 35}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/mmc/host/via-sdmmc.c", i32 1086, i32 2}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @via_sd_probe._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @via_sd_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @via_init_mmc_host.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/mmc/host/via-sdmmc.c", i32 1033, i32 2}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @via_init_mmc_host.__key.5, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/mmc/host/via-sdmmc.c", i32 1035, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @via_init_mmc_host.__key.7, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/mmc/host/via-sdmmc.c", i32 1052, i32 2}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mmc/host/via-sdmmc.c", i32 944, i32 3}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @via_sdc_timeout._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @via_sdc_timeout._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mmc/host/via-sdmmc.c", i32 588, i32 3}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @via_sdc_send_command._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @via_sdc_send_command._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mmc/host/via-sdmmc.c", i32 472, i32 3}
!42 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @via_set_ddma._entry, !41, !"_entry", i1 false, i1 false}
!46 = !{ptr @via_set_ddma._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @via_sdc_ops, !48, !"via_sdc_ops", i1 false, i1 false}
!48 = !{!"../drivers/mmc/host/via-sdmmc.c", i32 797, i32 34}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mmc/host/via-sdmmc.c", i32 1005, i32 4}
!51 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @via_sdc_card_detect._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @via_sdc_card_detect._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mmc/host/via-sdmmc.c", i32 355, i32 2}
!56 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @via_print_pcictrl.__UNIQUE_ID_ddebug279, !55, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mmc/host/via-sdmmc.c", i32 356, i32 2}
!60 = !{ptr @via_print_pcictrl.__UNIQUE_ID_ddebug280, !59, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mmc/host/via-sdmmc.c", i32 360, i32 2}
!63 = !{ptr @via_print_pcictrl.__UNIQUE_ID_ddebug281, !62, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mmc/host/via-sdmmc.c", i32 336, i32 2}
!66 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @via_print_sdchc.__UNIQUE_ID_ddebug275, !65, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mmc/host/via-sdmmc.c", i32 337, i32 2}
!70 = !{ptr @via_print_sdchc.__UNIQUE_ID_ddebug276, !69, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!71 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mmc/host/via-sdmmc.c", i32 341, i32 2}
!73 = !{ptr @via_print_sdchc.__UNIQUE_ID_ddebug277, !72, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/mmc/host/via-sdmmc.c", i32 345, i32 2}
!76 = !{ptr @via_print_sdchc.__UNIQUE_ID_ddebug278, !75, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!77 = !{ptr @.str.28, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mmc/host/via-sdmmc.c", i32 921, i32 3}
!79 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @via_sdc_isr._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @via_sdc_isr._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/mmc/host/via-sdmmc.c", i32 839, i32 3}
!84 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @via_sdc_cmd_isr._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @via_sdc_cmd_isr._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/mmc/host/via-sdmmc.c", i32 1186, i32 3}
!89 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @via_sd_remove._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @via_sd_remove._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mmc/host/via-sdmmc.c", i32 1218, i32 2}
!94 = !{ptr @via_sd_remove._entry.34, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @via_sd_remove._entry_ptr.36, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @via_sd_pm_ops, !97, !"via_sd_pm_ops", i1 false, i1 false}
!97 = !{!"../drivers/mmc/host/via-sdmmc.c", i32 1300, i32 8}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{i64 2154996787}
!108 = !{i64 5012870}
!109 = !{i64 2154997091}
!110 = !{i64 2154990115}
!111 = !{i64 5013067}
!112 = !{i64 2154990520}
!113 = !{i64 5012647}
!114 = !{i64 2154991184}
!115 = !{i64 2154991737}
!116 = !{i64 5012447}
!117 = !{i64 2154992402}
!118 = !{i64 2154992627}
!119 = !{i64 2154993026}
!120 = !{i64 2154993630}
!121 = !{i64 2154997418}
!122 = !{i64 2154997720}
!123 = !{i64 2154998409}
!124 = !{i64 2155000529}
!125 = !{i64 5013265}
!126 = !{i64 2155001002}
!127 = !{i64 2155001239}
!128 = !{i64 2154972720}
!129 = !{i64 2154973208}
!130 = !{i64 2154973863}
!131 = !{i64 2154974496}
!132 = !{i64 5013485}
!133 = !{i64 2154951242}
!134 = !{i64 2154951725}
!135 = !{i64 2154952208}
!136 = !{i64 2154952691}
!137 = !{i64 2154975337}
!138 = !{i64 2154977889}
!139 = !{i64 2154981881}
!140 = !{i64 2154985271}
!141 = !{i64 2154986034}
!142 = !{i64 2154986567}
!143 = !{i64 2154928055}
!144 = !{i64 2154928295}
!145 = !{i64 2154928525}
!146 = !{i64 2154928755}
!147 = !{i64 2154928985}
!148 = !{i64 2154929215}
!149 = !{i64 2154931603}
!150 = !{i64 2154932081}
!151 = !{i64 2154932559}
!152 = !{i64 2154933037}
!153 = !{i64 2154933520}
!154 = !{i64 2154934003}
!155 = !{i64 2154934486}
!156 = !{i64 2154934969}
!157 = !{i64 2154935452}
!158 = !{i64 2154935935}
!159 = !{i64 2154966291}
!160 = !{i64 2154966591}
!161 = !{i64 2154929456}
!162 = !{i64 2154929772}
!163 = !{i64 2154930088}
!164 = !{i64 2154930406}
!165 = !{i64 2154930727}
!166 = !{i64 2154931048}
!167 = !{i64 2154936173}
!168 = !{i64 2154936651}
!169 = !{i64 2154937127}
!170 = !{i64 2154937605}
!171 = !{i64 2154938085}
!172 = !{i64 2154938573}
!173 = !{i64 2154939054}
!174 = !{i64 2154939532}
!175 = !{i64 2154940010}
!176 = !{i64 2154940489}
!177 = !{!"branch_weights", i32 1, i32 2000}
!178 = !{i64 2154956667, i64 2154957160, i64 2154956704, i64 2154956760, i64 2154956794, i64 2154956818, i64 2154956859, i64 2154956880, i64 2154956908, i64 2154956942}
!179 = !{!"branch_weights", i32 2000, i32 1}
!180 = !{i64 2154945419, i64 2154945912, i64 2154945456, i64 2154945512, i64 2154945546, i64 2154945570, i64 2154945611, i64 2154945632, i64 2154945660, i64 2154945694}
!181 = !{i64 2154947080, i64 2154947573, i64 2154947117, i64 2154947173, i64 2154947207, i64 2154947231, i64 2154947272, i64 2154947293, i64 2154947321, i64 2154947355}
!182 = !{i64 2154948950, i64 2154949443, i64 2154948987, i64 2154949043, i64 2154949077, i64 2154949101, i64 2154949142, i64 2154949163, i64 2154949191, i64 2154949225}
!183 = !{i64 2154940971}
!184 = !{i64 2154941372}
!185 = !{i64 2154941771}
!186 = !{i64 2154942179}
!187 = !{i64 2154942585}
!188 = !{i64 2154944456}
!189 = !{i64 2154950575}
!190 = !{i64 2154955725}
!191 = !{i64 2154956131}
!192 = !{i64 2154958786}
!193 = !{i64 2154959363}
!194 = !{i64 2154959927}
!195 = !{i64 2154961175}
!196 = !{i64 2154962954}
!197 = !{i64 2154963437}
!198 = !{i64 2154963693}
!199 = !{i64 2154964103}
!200 = !{i64 2154964524}
!201 = !{i64 2154964741}
!202 = !{i64 2154962057}
!203 = !{i64 2154965676}
!204 = !{i64 2148518470, i64 2148518475, i64 2148518488, i64 2148518532, i64 2148518566, i64 2148518587}
!205 = !{i64 2154924245}
!206 = !{i64 2154924475}
!207 = !{i64 2154924705}
!208 = !{i64 2154927595}
!209 = !{i64 2154927825}
!210 = !{i64 2154909196}
!211 = !{i64 2154909674}
!212 = !{i64 2154910152}
!213 = !{i64 2154913559}
!214 = !{i64 2154914042}
!215 = !{i64 2154914525}
!216 = !{i64 2154917898}
!217 = !{i64 2154918381}
!218 = !{i64 2154918864}
!219 = !{i64 2155009865}
!220 = !{i64 2155010169}
!221 = !{i64 2155003653}
!222 = !{i64 2155004058}
!223 = !{i64 2155004722}
!224 = !{i64 2155005275}
!225 = !{i64 2155005940}
!226 = !{i64 2155006165}
!227 = !{i64 2155006584}
!228 = !{i64 2155007058}
!229 = !{i64 2155007532}
!230 = !{i64 2155008009}
!231 = !{i64 2155008483}
!232 = !{i64 2155008958}

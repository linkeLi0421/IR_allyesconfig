; ModuleID = '/llk/IR_all_yes/drivers/mtd/devices/bcm47xxsflash.c_pt.bc'
source_filename = "../drivers/mtd/devices/bcm47xxsflash.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.bcm47xxsflash = type { ptr, ptr, ptr, i32, ptr, i32, i16, i32, %struct.mtd_info }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.74 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.74 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.bcma_device = type { ptr, %struct.bcma_device_id, %struct.device, ptr, i32, i8, i8, i8, i32, [8 x i32], i32, ptr, ptr, ptr, %struct.list_head }
%struct.bcma_device_id = type { i16, i16, i8, i8 }
%struct.bcma_drv_cc = type { ptr, i32, i32, i32, i8, i16, %struct.bcma_chipcommon_pmu, %struct.bcma_pflash, %struct.bcma_sflash, %struct.bcma_nflash, i32, [4 x %struct.bcma_serial_port], i32, ptr, %struct.spinlock, %struct.gpio_chip }
%struct.bcma_chipcommon_pmu = type { ptr, i8, i32 }
%struct.bcma_pflash = type { i8 }
%struct.bcma_sflash = type { i8, i32, i16, i32 }
%struct.bcma_nflash = type { i8, i8 }
%struct.bcma_serial_port = type { ptr, i32, i32, i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.75, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.75 = type { ptr }
%struct.bcma_bus = type { ptr, ptr, ptr, i32, i8, ptr, %struct.bcma_chipinfo, %struct.bcma_boardinfo, ptr, %struct.list_head, i8, i8, %struct.bcma_drv_cc, %struct.bcma_drv_cc_b, [2 x %struct.bcma_drv_pci], %struct.bcma_drv_pcie2, %struct.bcma_drv_mips, %struct.bcma_drv_gmac_cmn, %struct.ssb_sprom }
%struct.bcma_chipinfo = type { i16, i8, i8 }
%struct.bcma_boardinfo = type { i16, i16 }
%struct.bcma_drv_cc_b = type { ptr, i8, ptr }
%struct.bcma_drv_pci = type { ptr, i8 }
%struct.bcma_drv_pcie2 = type { ptr, i16 }
%struct.bcma_drv_mips = type { ptr, i8 }
%struct.bcma_drv_gmac_cmn = type { ptr, %struct.mutex }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.77, %struct.anon.78, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.77 = type { i8, i8, i8, i8 }
%struct.anon.78 = type { %struct.anon.79, %struct.anon.80 }
%struct.anon.79 = type { i8, i8, i8, i8, i8 }
%struct.anon.80 = type { i8, i8, i8, i8, i8 }
%struct.bcma_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_file238 = internal constant [53 x i8] c"bcm47xxsflash.file=drivers/mtd/devices/bcm47xxsflash\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [26 x i8] c"bcm47xxsflash.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [59 x i8] c"bcm47xxsflash.description=Serial flash driver for BCMA bus\00", section ".modinfo", align 1
@__initcall__kmod_bcm47xxsflash__243_382_bcma_sflash_driver_init6 = internal global ptr @bcma_sflash_driver_init, section ".initcall6.init", align 4
@bcma_sflash_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bcm47xxsflash_bcma_probe, ptr @bcm47xxsflash_bcma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bcma_sflash_driver_exit = internal global ptr @bcma_sflash_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bcma_sflash\00", [20 x i8] zeroinitializer }, align 32
@bcm47xxsflash_bcma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 299, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"invalid resource\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bcm47xxsflash_bcma_probe\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/mtd/devices/bcm47xxsflash.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm47xxsflash_bcma_probe._entry_ptr = internal global ptr @bcm47xxsflash_bcma_probe._entry, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@bcm47xxsflash_bcma_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 304, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"can't request region for resource %pR\0A\00", [57 x i8] zeroinitializer }, align 32
@bcm47xxsflash_bcma_probe._entry_ptr.8 = internal global ptr @bcm47xxsflash_bcma_probe._entry.6, section ".printk_index", align 4
@bcm47xxsflash_bcma_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 327, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ioremap failed for resource %pR\0A\00", [63 x i8] zeroinitializer }, align 32
@bcm47xxsflash_bcma_probe._entry_ptr.11 = internal global ptr @bcm47xxsflash_bcma_probe._entry.9, section ".printk_index", align 4
@probes = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.27, ptr null], [24 x i8] zeroinitializer }, align 32
@bcm47xxsflash_bcma_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013Failed to register MTD device: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@bcm47xxsflash_bcma_probe._entry_ptr.14 = internal global ptr @bcm47xxsflash_bcma_probe._entry.12, section ".printk_index", align 4
@bcm47xxsflash_bcma_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\014Serial flash busy\0A\00", [43 x i8] zeroinitializer }, align 32
@bcm47xxsflash_bcma_probe._entry_ptr.17 = internal global ptr @bcm47xxsflash_bcma_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bcm47xxsflash\00", [18 x i8] zeroinitializer }, align 32
@bcm47xxsflash_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 33, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013Control command failed (timeout)!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bcm47xxsflash_cmd\00", [46 x i8] zeroinitializer }, align 32
@bcm47xxsflash_cmd._entry_ptr = internal global ptr @bcm47xxsflash_cmd._entry, section ".printk_index", align 4
@bcm47xxsflash_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Error writing at offset 0x%llX\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bcm47xxsflash_write\00", [44 x i8] zeroinitializer }, align 32
@bcm47xxsflash_write._entry_ptr = internal global ptr @bcm47xxsflash_write._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@bcm47xxsflash_write_st._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013Flash rejected dropping CSA\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bcm47xxsflash_write_st\00", [41 x i8] zeroinitializer }, align 32
@bcm47xxsflash_write_st._entry_ptr = internal global ptr @bcm47xxsflash_write_st._entry, section ".printk_index", align 4
@bcm47xxsflash_write_at._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013Timeout reading page 0x%X info buffer\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bcm47xxsflash_write_at\00", [41 x i8] zeroinitializer }, align 32
@bcm47xxsflash_write_at._entry_ptr = internal global ptr @bcm47xxsflash_write_at._entry, section ".printk_index", align 4
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bcm47xxpart\00", [20 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@bcm47xxsflash_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013Timeout waiting for flash to be ready!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bcm47xxsflash_poll\00", [45 x i8] zeroinitializer }, align 32
@bcm47xxsflash_poll._entry_ptr = internal global ptr @bcm47xxsflash_poll._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 256, i64 512]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.33 = private unnamed_addr constant [19 x i8] c"bcma_sflash_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 370, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 374, i32 11 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 299, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 304, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 327, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [7 x i8] c"probes\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 16, i32 27 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 349, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 355, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 256, i32 14 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 33, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 237, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 168, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 191, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 16, i32 40 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.133 = private constant [39 x i8] c"../drivers/mtd/devices/bcm47xxsflash.c\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 60, i32 2 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__exitcall_bcma_sflash_driver_exit, ptr @__initcall__kmod_bcm47xxsflash__243_382_bcma_sflash_driver_init6, ptr @bcm47xxsflash_bcma_probe._entry, ptr @bcm47xxsflash_bcma_probe._entry.12, ptr @bcm47xxsflash_bcma_probe._entry.15, ptr @bcm47xxsflash_bcma_probe._entry.6, ptr @bcm47xxsflash_bcma_probe._entry.9, ptr @bcm47xxsflash_bcma_probe._entry_ptr, ptr @bcm47xxsflash_bcma_probe._entry_ptr.11, ptr @bcm47xxsflash_bcma_probe._entry_ptr.14, ptr @bcm47xxsflash_bcma_probe._entry_ptr.17, ptr @bcm47xxsflash_bcma_probe._entry_ptr.8, ptr @bcm47xxsflash_cmd._entry, ptr @bcm47xxsflash_cmd._entry_ptr, ptr @bcm47xxsflash_poll._entry, ptr @bcm47xxsflash_poll._entry_ptr, ptr @bcm47xxsflash_write._entry, ptr @bcm47xxsflash_write._entry_ptr, ptr @bcm47xxsflash_write_at._entry, ptr @bcm47xxsflash_write_at._entry_ptr, ptr @bcm47xxsflash_write_st._entry, ptr @bcm47xxsflash_write_st._entry_ptr, ptr @bcma_sflash_driver_exit, ptr @bcma_sflash_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @probes, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_sflash_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xxsflash_bcma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xxsflash_bcma_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xxsflash_bcma_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xxsflash_bcma_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xxsflash_bcma_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xxsflash_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xxsflash_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xxsflash_write_st._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xxsflash_write_at._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xxsflash_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcma_sflash_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcma_sflash_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcma_sflash_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcma_sflash_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm47xxsflash_bcma_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1440, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call3, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call3, i32 0, i32 1
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %3
  %add.i = add i32 %sub.i, %5
  %name = getelementptr inbounds %struct.resource, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %call8 = tail call ptr @__devm_request_region(ptr noundef %dev1, ptr noundef nonnull @iomem_resource, i32 noundef %3, i32 noundef %add.i, ptr noundef %7) #5
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.end13, label %if.end14

do.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, ptr noundef nonnull %call3) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %add.ptr = getelementptr i8, ptr %1, i32 -36
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr, ptr %call.i, align 8
  %cc_read = getelementptr inbounds %struct.bcm47xxsflash, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %cc_read to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @bcm47xxsflash_bcma_cc_read, ptr %cc_read, align 4
  %cc_write = getelementptr inbounds %struct.bcm47xxsflash, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %cc_write to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @bcm47xxsflash_bcma_cc_write, ptr %cc_write, align 8
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  %rev = getelementptr inbounds %struct.bcma_device, ptr %12, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 54, i8 %14)
  %cmp = icmp eq i8 %14, 54
  %15 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call3, align 4
  %17 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %end.i, align 4
  %sub.i104 = sub i32 1, %16
  %add.i105 = add i32 %sub.i104, %18
  br i1 %cmp, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %call20 = tail call ptr @ioremap(i32 noundef %16, i32 noundef %add.i105) #5
  br label %if.end25

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %call23 = tail call ptr @ioremap_cache(i32 noundef %16, i32 noundef %add.i105) #5
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then17
  %call23.sink = phi ptr [ %call20, %if.then17 ], [ %call23, %if.else ]
  %19 = getelementptr inbounds %struct.bcm47xxsflash, ptr %call.i, i32 0, i32 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call23.sink, ptr %19, align 8
  %tobool27.not = icmp eq ptr %call23.sink, null
  br i1 %tobool27.not, label %do.end31, label %if.end32

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, ptr noundef nonnull %call3) #8
  br label %cleanup

if.end32:                                         ; preds = %if.end25
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 8
  %capabilities = getelementptr inbounds %struct.bcma_drv_cc, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %capabilities, align 4
  %and = and i32 %24, 1792
  %25 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %if.end32.sw.epilog_crit_edge [
    i32 256, label %if.end32.sw.epilog.sink.split_crit_edge
    i32 512, label %sw.bb34
  ]

if.end32.sw.epilog.sink.split_crit_edge:          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

if.end32.sw.epilog_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb34, %if.end32.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 0, %sw.bb34 ], [ 1, %if.end32.sw.epilog.sink.split_crit_edge ]
  %type35 = getelementptr inbounds %struct.bcm47xxsflash, ptr %call.i, i32 0, i32 3
  %26 = ptrtoint ptr %type35 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink, ptr %type35, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end32.sw.epilog_crit_edge
  %blocksize = getelementptr inbounds %struct.bcma_sflash, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %blocksize to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %blocksize, align 4
  %blocksize36 = getelementptr inbounds %struct.bcm47xxsflash, ptr %call.i, i32 0, i32 5
  %29 = ptrtoint ptr %blocksize36 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %blocksize36, align 4
  %numblocks = getelementptr inbounds %struct.bcma_sflash, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %numblocks to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %numblocks, align 4
  %numblocks37 = getelementptr inbounds %struct.bcm47xxsflash, ptr %call.i, i32 0, i32 6
  %32 = ptrtoint ptr %numblocks37 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %numblocks37, align 8
  %size = getelementptr inbounds %struct.bcma_sflash, ptr %1, i32 0, i32 3
  %33 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size, align 4
  %size38 = getelementptr inbounds %struct.bcm47xxsflash, ptr %call.i, i32 0, i32 7
  %35 = ptrtoint ptr %size38 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %size38, align 4
  %mtd1.i = getelementptr inbounds %struct.bcm47xxsflash, ptr %call.i, i32 0, i32 8
  %priv.i = getelementptr inbounds %struct.bcm47xxsflash, ptr %call.i, i32 0, i32 8, i32 54
  %36 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %priv.i, align 8
  %parent.i = getelementptr inbounds %struct.bcm47xxsflash, ptr %call.i, i32 0, i32 8, i32 56, i32 1
  %37 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %dev1, ptr %parent.i, align 8
  %name.i = getelementptr inbounds %struct.bcm47xxsflash, ptr %call.i, i32 0, i32 8, i32 13
  %38 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.18, ptr %name.i, align 8
  %39 = ptrtoint ptr %mtd1.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 3, ptr %mtd1.i, align 8
  %flags.i = getelementptr inbounds %struct.bcm47xxsflash, ptr %call.i, i32 0, i32 8, i32 1
  %40 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 3072, ptr %flags.i, align 4
  %conv.i = zext i32 %34 to i64
  %size3.i = getelementptr inbounds %struct.bcm47xxsflash, ptr %call.i, i32 0, i32 8, i32 2
  %41 = ptrtoint ptr %size3.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %conv.i, ptr %size3.i, align 8
  %erasesize.i = getelementptr inbounds %struct.bcm47xxsflash, ptr %call.i, i32 0, i32 8, i32 3
  %42 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %28, ptr %erasesize.i, align 8
  %writesize.i = getelementptr inbounds %struct.bcm47xxsflash, ptr %call.i, i32 0, i32 8, i32 4
  %43 = ptrtoint ptr %writesize.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %writesize.i, align 4
  %writebufsize.i = getelementptr inbounds %struct.bcm47xxsflash, ptr %call.i, i32 0, i32 8, i32 5
  %44 = ptrtoint ptr %writebufsize.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %writebufsize.i, align 8
  %_erase.i = getelementptr inbounds %struct.bcm47xxsflash, ptr %call.i, i32 0, i32 8, i32 21
  %45 = ptrtoint ptr %_erase.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @bcm47xxsflash_erase, ptr %_erase.i, align 8
  %_read.i = getelementptr inbounds %struct.bcm47xxsflash, ptr %call.i, i32 0, i32 8, i32 24
  %46 = ptrtoint ptr %_read.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @bcm47xxsflash_read, ptr %_read.i, align 4
  %_write.i = getelementptr inbounds %struct.bcm47xxsflash, ptr %call.i, i32 0, i32 8, i32 25
  %47 = ptrtoint ptr %_write.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @bcm47xxsflash_write, ptr %_write.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %48 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call40 = tail call i32 @mtd_device_parse_register(ptr noundef %mtd1.i, ptr noundef nonnull @probes, ptr noundef null, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end49, label %do.end45

do.end45:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call40) #8
  %49 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %19, align 8
  tail call void @iounmap(ptr noundef %50) #5
  br label %cleanup

if.end49:                                         ; preds = %sw.epilog
  %call50 = tail call fastcc i32 @bcm47xxsflash_poll(ptr noundef nonnull %call.i, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end49.cleanup_crit_edge, label %do.end55

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end55:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end55, %if.end49.cleanup_crit_edge, %do.end45, %do.end31, %do.end13, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call40, %do.end45 ], [ -12, %do.end31 ], [ -16, %do.end13 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %do.end55 ], [ 0, %if.end49.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm47xxsflash_bcma_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mtd = getelementptr inbounds %struct.bcm47xxsflash, ptr %1, i32 0, i32 8
  %call1 = tail call i32 @mtd_device_unregister(ptr noundef %mtd) #5
  %window = getelementptr inbounds %struct.bcm47xxsflash, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %window to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %window, align 8
  tail call void @iounmap(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm47xxsflash_bcma_cc_read(ptr nocapture noundef readonly %b47s, i16 noundef zeroext %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %b47s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b47s, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %9(ptr noundef %3, i16 noundef zeroext %offset) #5
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm47xxsflash_bcma_cc_write(ptr nocapture noundef readonly %b47s, i16 noundef zeroext %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %b47s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b47s, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %write32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write32.i, align 4
  tail call void %9(ptr noundef %3, i16 noundef zeroext %offset, i32 noundef %value) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_cache(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm47xxsflash_poll(ptr noundef %b47s, i32 noundef %timeout) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %type = getelementptr inbounds %struct.bcm47xxsflash, ptr %b47s, i32 0, i32 3
  %cc_write.i27 = getelementptr inbounds %struct.bcm47xxsflash, ptr %b47s, i32 0, i32 2
  %cc_read.i28 = getelementptr inbounds %struct.bcm47xxsflash, ptr %b47s, i32 0, i32 1
  %1 = add i32 %0, %timeout
  br label %do.body

do.body:                                          ; preds = %do.end.do.body_crit_edge, %entry
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %3, label %do.body.do.end_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
  ]

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

sw.bb:                                            ; preds = %do.body
  %5 = ptrtoint ptr %cc_write.i27 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cc_write.i27, align 8
  tail call void %6(ptr noundef %b47s, i16 noundef zeroext 64, i32 noundef -2147483387) #5
  br label %for.body.i

for.body.i:                                       ; preds = %do.end.i.for.body.i_crit_edge, %sw.bb
  %i.015.i = phi i32 [ 0, %sw.bb ], [ %inc.i, %do.end.i.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %cc_read.i28 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cc_read.i28, align 4
  %call.i = tail call i32 %8(ptr noundef %b47s, i16 noundef zeroext 64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not.i = icmp sgt i32 %call.i, -1
  br i1 %tobool.not.i, label %for.body.i.bcm47xxsflash_cmd.exit_crit_edge, label %do.end.i

for.body.i.bcm47xxsflash_cmd.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bcm47xxsflash_cmd.exit

do.end.i:                                         ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !76
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !77
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %do.end9.i, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

do.end9.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #8
  br label %bcm47xxsflash_cmd.exit

bcm47xxsflash_cmd.exit:                           ; preds = %do.end9.i, %for.body.i.bcm47xxsflash_cmd.exit_crit_edge
  %9 = ptrtoint ptr %cc_read.i28 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cc_read.i28, align 4
  %call = tail call i32 %10(ptr noundef %b47s, i16 noundef zeroext 72) #5
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %bcm47xxsflash_cmd.exit.cleanup_crit_edge, label %bcm47xxsflash_cmd.exit.do.end_crit_edge

bcm47xxsflash_cmd.exit.do.end_crit_edge:          ; preds = %bcm47xxsflash_cmd.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

bcm47xxsflash_cmd.exit.cleanup_crit_edge:         ; preds = %bcm47xxsflash_cmd.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %do.body
  %11 = ptrtoint ptr %cc_write.i27 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cc_write.i27, align 8
  tail call void %12(ptr noundef %b47s, i16 noundef zeroext 64, i32 noundef -2147483177) #5
  br label %for.body.i32

for.body.i32:                                     ; preds = %do.end.i35.for.body.i32_crit_edge, %sw.bb1
  %i.015.i29 = phi i32 [ 0, %sw.bb1 ], [ %inc.i33, %do.end.i35.for.body.i32_crit_edge ]
  %13 = ptrtoint ptr %cc_read.i28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cc_read.i28, align 4
  %call.i30 = tail call i32 %14(ptr noundef %b47s, i16 noundef zeroext 64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i30)
  %tobool.not.i31 = icmp sgt i32 %call.i30, -1
  br i1 %tobool.not.i31, label %for.body.i32.bcm47xxsflash_cmd.exit38_crit_edge, label %do.end.i35

for.body.i32.bcm47xxsflash_cmd.exit38_crit_edge:  ; preds = %for.body.i32
  call void @__sanitizer_cov_trace_pc() #7
  br label %bcm47xxsflash_cmd.exit38

do.end.i35:                                       ; preds = %for.body.i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !76
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !77
  %inc.i33 = add nuw nsw i32 %i.015.i29, 1
  %exitcond.not.i34 = icmp eq i32 %inc.i33, 1000
  br i1 %exitcond.not.i34, label %do.end9.i37, label %do.end.i35.for.body.i32_crit_edge

do.end.i35.for.body.i32_crit_edge:                ; preds = %do.end.i35
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i32

do.end9.i37:                                      ; preds = %do.end.i35
  call void @__sanitizer_cov_trace_pc() #7
  %call10.i36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #8
  br label %bcm47xxsflash_cmd.exit38

bcm47xxsflash_cmd.exit38:                         ; preds = %do.end9.i37, %for.body.i32.bcm47xxsflash_cmd.exit38_crit_edge
  %15 = ptrtoint ptr %cc_read.i28 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cc_read.i28, align 4
  %call3 = tail call i32 %16(ptr noundef %b47s, i16 noundef zeroext 72) #5
  %and4 = and i32 %call3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %bcm47xxsflash_cmd.exit38.do.end_crit_edge, label %bcm47xxsflash_cmd.exit38.cleanup_crit_edge

bcm47xxsflash_cmd.exit38.cleanup_crit_edge:       ; preds = %bcm47xxsflash_cmd.exit38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

bcm47xxsflash_cmd.exit38.do.end_crit_edge:        ; preds = %bcm47xxsflash_cmd.exit38
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %bcm47xxsflash_cmd.exit38.do.end_crit_edge, %bcm47xxsflash_cmd.exit.do.end_crit_edge, %do.body.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %18, %1
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.end.do.body_crit_edge, label %do.end19

do.end.do.body_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end19:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %bcm47xxsflash_cmd.exit38.cleanup_crit_edge, %bcm47xxsflash_cmd.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end19 ], [ 0, %bcm47xxsflash_cmd.exit.cleanup_crit_edge ], [ 0, %bcm47xxsflash_cmd.exit38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm47xxsflash_erase(ptr nocapture noundef readonly %mtd, ptr nocapture noundef readonly %erase) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %type = getelementptr inbounds %struct.bcm47xxsflash, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %cc_write.i = getelementptr inbounds %struct.bcm47xxsflash, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %cc_write.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cc_write.i, align 8
  tail call void %6(ptr noundef %1, i16 noundef zeroext 64, i32 noundef -2147483642) #5
  %cc_read.i = getelementptr inbounds %struct.bcm47xxsflash, ptr %1, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %do.end.i.for.body.i_crit_edge, %sw.bb
  %i.015.i = phi i32 [ 0, %sw.bb ], [ %inc.i, %do.end.i.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %cc_read.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cc_read.i, align 4
  %call.i = tail call i32 %8(ptr noundef %1, i16 noundef zeroext 64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not.i = icmp sgt i32 %call.i, -1
  br i1 %tobool.not.i, label %for.body.i.bcm47xxsflash_cmd.exit_crit_edge, label %do.end.i

for.body.i.bcm47xxsflash_cmd.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bcm47xxsflash_cmd.exit

do.end.i:                                         ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !76
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !77
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %do.end9.i, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

do.end9.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #8
  br label %bcm47xxsflash_cmd.exit

bcm47xxsflash_cmd.exit:                           ; preds = %do.end9.i, %for.body.i.bcm47xxsflash_cmd.exit_crit_edge
  %9 = ptrtoint ptr %cc_write.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cc_write.i, align 8
  %11 = ptrtoint ptr %erase to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %erase, align 8
  %conv = trunc i64 %12 to i32
  tail call void %10(ptr noundef %1, i16 noundef zeroext 68, i32 noundef %conv) #5
  %blocksize = getelementptr inbounds %struct.bcm47xxsflash, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %blocksize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %blocksize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %14)
  %cmp = icmp ult i32 %14, 65536
  %15 = ptrtoint ptr %cc_write.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cc_write.i, align 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %bcm47xxsflash_cmd.exit
  tail call void %16(ptr noundef %1, i16 noundef zeroext 64, i32 noundef -2147483104) #5
  br label %for.body.i22

for.body.i22:                                     ; preds = %do.end.i25.for.body.i22_crit_edge, %if.then
  %i.015.i19 = phi i32 [ 0, %if.then ], [ %inc.i23, %do.end.i25.for.body.i22_crit_edge ]
  %17 = ptrtoint ptr %cc_read.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cc_read.i, align 4
  %call.i20 = tail call i32 %18(ptr noundef %1, i16 noundef zeroext 64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i20)
  %tobool.not.i21 = icmp sgt i32 %call.i20, -1
  br i1 %tobool.not.i21, label %for.body.i22.sw.epilog_crit_edge, label %do.end.i25

for.body.i22.sw.epilog_crit_edge:                 ; preds = %for.body.i22
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end.i25:                                       ; preds = %for.body.i22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !76
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !77
  %inc.i23 = add nuw nsw i32 %i.015.i19, 1
  %exitcond.not.i24 = icmp eq i32 %inc.i23, 1000
  br i1 %exitcond.not.i24, label %do.end.i25.sw.epilog.sink.split_crit_edge, label %do.end.i25.for.body.i22_crit_edge

do.end.i25.for.body.i22_crit_edge:                ; preds = %do.end.i25
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i22

do.end.i25.sw.epilog.sink.split_crit_edge:        ; preds = %do.end.i25
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

if.else:                                          ; preds = %bcm47xxsflash_cmd.exit
  tail call void %16(ptr noundef %1, i16 noundef zeroext 64, i32 noundef -2147482920) #5
  br label %for.body.i34

for.body.i34:                                     ; preds = %do.end.i37.for.body.i34_crit_edge, %if.else
  %i.015.i31 = phi i32 [ 0, %if.else ], [ %inc.i35, %do.end.i37.for.body.i34_crit_edge ]
  %19 = ptrtoint ptr %cc_read.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cc_read.i, align 4
  %call.i32 = tail call i32 %20(ptr noundef %1, i16 noundef zeroext 64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i32)
  %tobool.not.i33 = icmp sgt i32 %call.i32, -1
  br i1 %tobool.not.i33, label %for.body.i34.sw.epilog_crit_edge, label %do.end.i37

for.body.i34.sw.epilog_crit_edge:                 ; preds = %for.body.i34
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end.i37:                                       ; preds = %for.body.i34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !76
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !77
  %inc.i35 = add nuw nsw i32 %i.015.i31, 1
  %exitcond.not.i36 = icmp eq i32 %inc.i35, 1000
  br i1 %exitcond.not.i36, label %do.end.i37.sw.epilog.sink.split_crit_edge, label %do.end.i37.for.body.i34_crit_edge

do.end.i37.for.body.i34_crit_edge:                ; preds = %do.end.i37
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i34

do.end.i37.sw.epilog.sink.split_crit_edge:        ; preds = %do.end.i37
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.bb2:                                           ; preds = %entry
  %cc_write3 = getelementptr inbounds %struct.bcm47xxsflash, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %cc_write3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cc_write3, align 8
  %23 = ptrtoint ptr %erase to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %erase, align 8
  %.tr = trunc i64 %24 to i32
  %conv5 = shl i32 %.tr, 1
  tail call void %22(ptr noundef %1, i16 noundef zeroext 68, i32 noundef %conv5) #5
  %25 = ptrtoint ptr %cc_write3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cc_write3, align 8
  tail call void %26(ptr noundef %1, i16 noundef zeroext 64, i32 noundef -2147483007) #5
  %cc_read.i42 = getelementptr inbounds %struct.bcm47xxsflash, ptr %1, i32 0, i32 1
  br label %for.body.i46

for.body.i46:                                     ; preds = %do.end.i49.for.body.i46_crit_edge, %sw.bb2
  %i.015.i43 = phi i32 [ 0, %sw.bb2 ], [ %inc.i47, %do.end.i49.for.body.i46_crit_edge ]
  %27 = ptrtoint ptr %cc_read.i42 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cc_read.i42, align 4
  %call.i44 = tail call i32 %28(ptr noundef %1, i16 noundef zeroext 64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i44)
  %tobool.not.i45 = icmp sgt i32 %call.i44, -1
  br i1 %tobool.not.i45, label %for.body.i46.sw.epilog_crit_edge, label %do.end.i49

for.body.i46.sw.epilog_crit_edge:                 ; preds = %for.body.i46
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end.i49:                                       ; preds = %for.body.i46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !76
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !77
  %inc.i47 = add nuw nsw i32 %i.015.i43, 1
  %exitcond.not.i48 = icmp eq i32 %inc.i47, 1000
  br i1 %exitcond.not.i48, label %do.end.i49.sw.epilog.sink.split_crit_edge, label %do.end.i49.for.body.i46_crit_edge

do.end.i49.for.body.i46_crit_edge:                ; preds = %do.end.i49
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i46

do.end.i49.sw.epilog.sink.split_crit_edge:        ; preds = %do.end.i49
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %do.end.i49.sw.epilog.sink.split_crit_edge, %do.end.i37.sw.epilog.sink.split_crit_edge, %do.end.i25.sw.epilog.sink.split_crit_edge
  %call10.i50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %for.body.i46.sw.epilog_crit_edge, %for.body.i34.sw.epilog_crit_edge, %for.body.i22.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %call = tail call fastcc i32 @bcm47xxsflash_poll(ptr noundef %1, i32 noundef 100)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm47xxsflash_read(ptr nocapture noundef readonly %mtd, i64 noundef %from, i32 noundef %len, ptr nocapture noundef writeonly %retlen, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %from
  %size = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %3)
  %cmp = icmp ugt i64 %add, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 16777216, i64 %from)
  %cmp2 = icmp slt i64 %from, 16777216
  br i1 %cmp2, label %if.then4, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = trunc i64 %from to i32
  %conv5 = sub i32 16777216, %4
  %5 = tail call i32 @llvm.umin.i32(i32 %conv5, i32 %len)
  %window = getelementptr inbounds %struct.bcm47xxsflash, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %window to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %window, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 %4
  tail call void @mmiocpy(ptr noundef %buf, ptr noundef %add.ptr, i32 noundef %5) #5
  %conv8 = zext i32 %5 to i64
  %add9 = add nsw i64 %conv8, %from
  %sub10 = sub i32 %len, %5
  %add.ptr11 = getelementptr i8, ptr %buf, i32 %5
  br label %if.end12

if.end12:                                         ; preds = %if.then4, %if.end.if.end12_crit_edge
  %len.addr.0 = phi i32 [ %sub10, %if.then4 ], [ %len, %if.end.if.end12_crit_edge ]
  %from.addr.0 = phi i64 [ %add9, %if.then4 ], [ %from, %if.end.if.end12_crit_edge ]
  %buf.addr.0 = phi ptr [ %add.ptr11, %if.then4 ], [ %buf, %if.end.if.end12_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0)
  %tobool.not40 = icmp eq i32 %len.addr.0, 0
  br i1 %tobool.not40, label %if.end12.for.end_crit_edge, label %for.body.lr.ph

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end12
  %cc_write = getelementptr inbounds %struct.bcm47xxsflash, ptr %1, i32 0, i32 2
  %cc_read.i = getelementptr inbounds %struct.bcm47xxsflash, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %bcm47xxsflash_cmd.exit.for.body_crit_edge, %for.body.lr.ph
  %buf.addr.143 = phi ptr [ %buf.addr.0, %for.body.lr.ph ], [ %incdec.ptr, %bcm47xxsflash_cmd.exit.for.body_crit_edge ]
  %from.addr.142 = phi i64 [ %from.addr.0, %for.body.lr.ph ], [ %inc, %bcm47xxsflash_cmd.exit.for.body_crit_edge ]
  %len.addr.141 = phi i32 [ %len.addr.0, %for.body.lr.ph ], [ %dec, %bcm47xxsflash_cmd.exit.for.body_crit_edge ]
  %8 = ptrtoint ptr %cc_write to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cc_write, align 8
  %inc = add i64 %from.addr.142, 1
  %conv13 = trunc i64 %from.addr.142 to i32
  tail call void %9(ptr noundef %1, i16 noundef zeroext 68, i32 noundef %conv13) #5
  %10 = ptrtoint ptr %cc_write to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cc_write, align 8
  tail call void %11(ptr noundef %1, i16 noundef zeroext 64, i32 noundef -2147458285) #5
  br label %for.body.i

for.body.i:                                       ; preds = %do.end.i.for.body.i_crit_edge, %for.body
  %i.015.i = phi i32 [ 0, %for.body ], [ %inc.i, %do.end.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %cc_read.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cc_read.i, align 4
  %call.i = tail call i32 %13(ptr noundef %1, i16 noundef zeroext 64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not.i = icmp sgt i32 %call.i, -1
  br i1 %tobool.not.i, label %for.body.i.bcm47xxsflash_cmd.exit_crit_edge, label %do.end.i

for.body.i.bcm47xxsflash_cmd.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bcm47xxsflash_cmd.exit

do.end.i:                                         ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !76
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !77
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %do.end9.i, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

do.end9.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #8
  br label %bcm47xxsflash_cmd.exit

bcm47xxsflash_cmd.exit:                           ; preds = %do.end9.i, %for.body.i.bcm47xxsflash_cmd.exit_crit_edge
  %14 = ptrtoint ptr %cc_read.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cc_read.i, align 4
  %call = tail call i32 %15(ptr noundef %1, i16 noundef zeroext 72) #5
  %conv14 = trunc i32 %call to i8
  %incdec.ptr = getelementptr i8, ptr %buf.addr.143, i32 1
  %16 = ptrtoint ptr %buf.addr.143 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv14, ptr %buf.addr.143, align 1
  %dec = add i32 %len.addr.141, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %bcm47xxsflash_cmd.exit.for.end_crit_edge, label %bcm47xxsflash_cmd.exit.for.body_crit_edge

bcm47xxsflash_cmd.exit.for.body_crit_edge:        ; preds = %bcm47xxsflash_cmd.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

bcm47xxsflash_cmd.exit.for.end_crit_edge:         ; preds = %bcm47xxsflash_cmd.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %bcm47xxsflash_cmd.exit.for.end_crit_edge, %if.end12.for.end_crit_edge
  %17 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %len, ptr %retlen, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %for.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm47xxsflash_write(ptr nocapture noundef readonly %mtd, i64 noundef %to, i32 noundef %len, ptr nocapture noundef %retlen, ptr nocapture noundef readonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp.not60 = icmp eq i32 %len, 0
  br i1 %cmp.not60, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %type = getelementptr inbounds %struct.bcm47xxsflash, ptr %1, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %buf.addr.068 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr, %if.end.while.body_crit_edge ]
  %to.addr.066 = phi i64 [ %to, %while.body.lr.ph ], [ %add, %if.end.while.body_crit_edge ]
  %len.addr.061 = phi i32 [ %len, %while.body.lr.ph ], [ %sub, %if.end.while.body_crit_edge ]
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %3, label %do.body4 [
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
  ]

sw.bb:                                            ; preds = %while.body
  %conv = trunc i64 %to.addr.066 to i32
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 8
  %cc_write.i.i = getelementptr inbounds %struct.bcm47xxsflash, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %cc_write.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cc_write.i.i, align 8
  tail call void %8(ptr noundef %6, i16 noundef zeroext 64, i32 noundef -2147483642) #5
  %cc_read.i.i = getelementptr inbounds %struct.bcm47xxsflash, ptr %6, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %do.end.i.i.for.body.i.i_crit_edge, %sw.bb
  %i.015.i.i = phi i32 [ 0, %sw.bb ], [ %inc.i.i, %do.end.i.i.for.body.i.i_crit_edge ]
  %9 = ptrtoint ptr %cc_read.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cc_read.i.i, align 4
  %call.i.i = tail call i32 %10(ptr noundef %6, i16 noundef zeroext 64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not.i.i = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not.i.i, label %for.body.i.i.bcm47xxsflash_cmd.exit.i_crit_edge, label %do.end.i.i

for.body.i.i.bcm47xxsflash_cmd.exit.i_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bcm47xxsflash_cmd.exit.i

do.end.i.i:                                       ; preds = %for.body.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !76
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !77
  %inc.i.i = add nuw nsw i32 %i.015.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 1000
  br i1 %exitcond.not.i.i, label %do.end9.i.i, label %do.end.i.i.for.body.i.i_crit_edge

do.end.i.i.for.body.i.i_crit_edge:                ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

do.end9.i.i:                                      ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call10.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #8
  br label %bcm47xxsflash_cmd.exit.i

bcm47xxsflash_cmd.exit.i:                         ; preds = %do.end9.i.i, %for.body.i.i.bcm47xxsflash_cmd.exit.i_crit_edge
  %11 = ptrtoint ptr %cc_write.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cc_write.i.i, align 8
  tail call void %12(ptr noundef %6, i16 noundef zeroext 68, i32 noundef %conv) #5
  %13 = ptrtoint ptr %cc_write.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cc_write.i.i, align 8
  %15 = ptrtoint ptr %buf.addr.068 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %buf.addr.068, align 1
  %conv.i = zext i8 %16 to i32
  tail call void %14(ptr noundef %6, i16 noundef zeroext 72, i32 noundef %conv.i) #5
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %6, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %rev.i = getelementptr inbounds %struct.bcma_device, ptr %20, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %22)
  %cmp.i = icmp ult i8 %22, 20
  %23 = ptrtoint ptr %cc_write.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cc_write.i.i, align 8
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %bcm47xxsflash_cmd.exit.i
  tail call void %24(ptr noundef %6, i16 noundef zeroext 64, i32 noundef -2147482878) #5
  br label %for.body.i45.i

for.body.i45.i:                                   ; preds = %do.end.i48.i.for.body.i45.i_crit_edge, %if.then.i
  %i.015.i42.i = phi i32 [ 0, %if.then.i ], [ %inc.i46.i, %do.end.i48.i.for.body.i45.i_crit_edge ]
  %25 = ptrtoint ptr %cc_read.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cc_read.i.i, align 4
  %call.i43.i = tail call i32 %26(ptr noundef %6, i16 noundef zeroext 64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i43.i)
  %tobool.not.i44.i = icmp sgt i32 %call.i43.i, -1
  br i1 %tobool.not.i44.i, label %for.body.i45.i.if.end_crit_edge, label %do.end.i48.i

for.body.i45.i.if.end_crit_edge:                  ; preds = %for.body.i45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end.i48.i:                                     ; preds = %for.body.i45.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !76
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !77
  %inc.i46.i = add nuw nsw i32 %i.015.i42.i, 1
  %exitcond.not.i47.i = icmp eq i32 %inc.i46.i, 1000
  br i1 %exitcond.not.i47.i, label %do.end.i48.i.cleanup.sink.split.i_crit_edge, label %do.end.i48.i.for.body.i45.i_crit_edge

do.end.i48.i.for.body.i45.i_crit_edge:            ; preds = %do.end.i48.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i45.i

do.end.i48.i.cleanup.sink.split.i_crit_edge:      ; preds = %do.end.i48.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %bcm47xxsflash_cmd.exit.i
  tail call void %24(ptr noundef %6, i16 noundef zeroext 64, i32 noundef -2147478782) #5
  br label %for.body.i57.i

for.body.i57.i:                                   ; preds = %do.end.i60.i.for.body.i57.i_crit_edge, %if.end.i
  %i.015.i54.i = phi i32 [ 0, %if.end.i ], [ %inc.i58.i, %do.end.i60.i.for.body.i57.i_crit_edge ]
  %27 = ptrtoint ptr %cc_read.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cc_read.i.i, align 4
  %call.i55.i = tail call i32 %28(ptr noundef %6, i16 noundef zeroext 64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i55.i)
  %tobool.not.i56.i = icmp sgt i32 %call.i55.i, -1
  br i1 %tobool.not.i56.i, label %for.body.i57.i.bcm47xxsflash_cmd.exit63.i_crit_edge, label %do.end.i60.i

for.body.i57.i.bcm47xxsflash_cmd.exit63.i_crit_edge: ; preds = %for.body.i57.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bcm47xxsflash_cmd.exit63.i

do.end.i60.i:                                     ; preds = %for.body.i57.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !76
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !77
  %inc.i58.i = add nuw nsw i32 %i.015.i54.i, 1
  %exitcond.not.i59.i = icmp eq i32 %inc.i58.i, 1000
  br i1 %exitcond.not.i59.i, label %do.end9.i62.i, label %do.end.i60.i.for.body.i57.i_crit_edge

do.end.i60.i.for.body.i57.i_crit_edge:            ; preds = %do.end.i60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i57.i

do.end9.i62.i:                                    ; preds = %do.end.i60.i
  call void @__sanitizer_cov_trace_pc() #7
  %call10.i61.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #8
  br label %bcm47xxsflash_cmd.exit63.i

bcm47xxsflash_cmd.exit63.i:                       ; preds = %do.end9.i62.i, %for.body.i57.i.bcm47xxsflash_cmd.exit63.i_crit_edge
  %len.addr.077.i = add i32 %len.addr.061, -1
  %offset.addr.078.i = add i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.077.i)
  %cmp5.not79.i = icmp eq i32 %len.addr.077.i, 0
  %and80.i = and i32 %offset.addr.078.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.i)
  %cmp781.i = icmp eq i32 %and80.i, 0
  %or.cond82.i = or i1 %cmp5.not79.i, %cmp781.i
  br i1 %or.cond82.i, label %bcm47xxsflash_cmd.exit63.i.while.end.i_crit_edge, label %bcm47xxsflash_cmd.exit63.i.if.end10.i_crit_edge

bcm47xxsflash_cmd.exit63.i.if.end10.i_crit_edge:  ; preds = %bcm47xxsflash_cmd.exit63.i
  br label %if.end10.i

bcm47xxsflash_cmd.exit63.i.while.end.i_crit_edge: ; preds = %bcm47xxsflash_cmd.exit63.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

if.end10.i:                                       ; preds = %bcm47xxsflash_cmd.exit75.i.if.end10.i_crit_edge, %bcm47xxsflash_cmd.exit63.i.if.end10.i_crit_edge
  %offset.addr.086.i = phi i32 [ %offset.addr.0.i, %bcm47xxsflash_cmd.exit75.i.if.end10.i_crit_edge ], [ %offset.addr.078.i, %bcm47xxsflash_cmd.exit63.i.if.end10.i_crit_edge ]
  %len.addr.085.i = phi i32 [ %len.addr.0.i, %bcm47xxsflash_cmd.exit75.i.if.end10.i_crit_edge ], [ %len.addr.077.i, %bcm47xxsflash_cmd.exit63.i.if.end10.i_crit_edge ]
  %buf.addr.084.pn.i = phi ptr [ %buf.addr.084.i, %bcm47xxsflash_cmd.exit75.i.if.end10.i_crit_edge ], [ %buf.addr.068, %bcm47xxsflash_cmd.exit63.i.if.end10.i_crit_edge ]
  %written.083.i = phi i32 [ %inc15.i, %bcm47xxsflash_cmd.exit75.i.if.end10.i_crit_edge ], [ 1, %bcm47xxsflash_cmd.exit63.i.if.end10.i_crit_edge ]
  %buf.addr.084.i = getelementptr i8, ptr %buf.addr.084.pn.i, i32 1
  %29 = ptrtoint ptr %buf.addr.084.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %buf.addr.084.i, align 1
  %conv12.i = zext i8 %30 to i32
  %31 = ptrtoint ptr %cc_write.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cc_write.i.i, align 8
  %or.i.i = or i32 %conv12.i, -2147479552
  tail call void %32(ptr noundef %6, i16 noundef zeroext 64, i32 noundef %or.i.i) #5
  br label %for.body.i69.i

for.body.i69.i:                                   ; preds = %do.end.i72.i.for.body.i69.i_crit_edge, %if.end10.i
  %i.015.i66.i = phi i32 [ 0, %if.end10.i ], [ %inc.i70.i, %do.end.i72.i.for.body.i69.i_crit_edge ]
  %33 = ptrtoint ptr %cc_read.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cc_read.i.i, align 4
  %call.i67.i = tail call i32 %34(ptr noundef %6, i16 noundef zeroext 64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i67.i)
  %tobool.not.i68.i = icmp sgt i32 %call.i67.i, -1
  br i1 %tobool.not.i68.i, label %for.body.i69.i.bcm47xxsflash_cmd.exit75.i_crit_edge, label %do.end.i72.i

for.body.i69.i.bcm47xxsflash_cmd.exit75.i_crit_edge: ; preds = %for.body.i69.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bcm47xxsflash_cmd.exit75.i

do.end.i72.i:                                     ; preds = %for.body.i69.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !76
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !77
  %inc.i70.i = add nuw nsw i32 %i.015.i66.i, 1
  %exitcond.not.i71.i = icmp eq i32 %inc.i70.i, 1000
  br i1 %exitcond.not.i71.i, label %do.end9.i74.i, label %do.end.i72.i.for.body.i69.i_crit_edge

do.end.i72.i.for.body.i69.i_crit_edge:            ; preds = %do.end.i72.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i69.i

do.end9.i74.i:                                    ; preds = %do.end.i72.i
  call void @__sanitizer_cov_trace_pc() #7
  %call10.i73.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #8
  br label %bcm47xxsflash_cmd.exit75.i

bcm47xxsflash_cmd.exit75.i:                       ; preds = %do.end9.i74.i, %for.body.i69.i.bcm47xxsflash_cmd.exit75.i_crit_edge
  %inc15.i = add nuw nsw i32 %written.083.i, 1
  %len.addr.0.i = add i32 %len.addr.085.i, -1
  %offset.addr.0.i = add i32 %offset.addr.086.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.i)
  %cmp5.not.i = icmp eq i32 %len.addr.0.i, 0
  %and.i = and i32 %offset.addr.0.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp7.i = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %cmp5.not.i, i1 true, i1 %cmp7.i
  br i1 %or.cond.i, label %bcm47xxsflash_cmd.exit75.i.while.end.i_crit_edge, label %bcm47xxsflash_cmd.exit75.i.if.end10.i_crit_edge

bcm47xxsflash_cmd.exit75.i.if.end10.i_crit_edge:  ; preds = %bcm47xxsflash_cmd.exit75.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

bcm47xxsflash_cmd.exit75.i.while.end.i_crit_edge: ; preds = %bcm47xxsflash_cmd.exit75.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.end.i:                                      ; preds = %bcm47xxsflash_cmd.exit75.i.while.end.i_crit_edge, %bcm47xxsflash_cmd.exit63.i.while.end.i_crit_edge
  %written.0.lcssa.i = phi i32 [ 1, %bcm47xxsflash_cmd.exit63.i.while.end.i_crit_edge ], [ %inc15.i, %bcm47xxsflash_cmd.exit75.i.while.end.i_crit_edge ]
  %35 = ptrtoint ptr %cc_write.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cc_write.i.i, align 8
  tail call void %36(ptr noundef %6, i16 noundef zeroext 64, i32 noundef 0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748) #5
  %call.i = tail call fastcc i32 @bcm47xxsflash_poll(ptr noundef %6, i32 noundef 10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.end.i.if.end_crit_edge, label %while.end.i.cleanup.sink.split.i_crit_edge

while.end.i.cleanup.sink.split.i_crit_edge:       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

while.end.i.if.end_crit_edge:                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

cleanup.sink.split.i:                             ; preds = %while.end.i.cleanup.sink.split.i_crit_edge, %do.end.i48.i.cleanup.sink.split.i_crit_edge
  %.str.19.sink.i = phi ptr [ @.str.23, %while.end.i.cleanup.sink.split.i_crit_edge ], [ @.str.19, %do.end.i48.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ %written.0.lcssa.i, %while.end.i.cleanup.sink.split.i_crit_edge ], [ 1, %do.end.i48.i.cleanup.sink.split.i_crit_edge ]
  %call10.i49.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.19.sink.i) #8
  br label %if.end

sw.bb1:                                           ; preds = %while.body
  %conv2 = trunc i64 %to.addr.066 to i32
  %38 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv, align 8
  %blocksize.i = getelementptr inbounds %struct.bcm47xxsflash, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %blocksize.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %blocksize.i, align 4
  %sub.i = add i32 %41, -1
  %neg.i = sub i32 0, %41
  %and.i35 = and i32 %neg.i, %conv2
  %shl.i = shl i32 %and.i35, 1
  %and1.i = and i32 %sub.i, %conv2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i36 = icmp ne i32 %and1.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %len.addr.061)
  %cmp.i37 = icmp ugt i32 %41, %len.addr.061
  %or.cond.i38 = select i1 %tobool.not.i36, i1 true, i1 %cmp.i37
  br i1 %or.cond.i38, label %if.then.i40, label %sw.bb1.while.body.lr.ph.i_crit_edge

sw.bb1.while.body.lr.ph.i_crit_edge:              ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.lr.ph.i

if.then.i40:                                      ; preds = %sw.bb1
  %cc_write.i = getelementptr inbounds %struct.bcm47xxsflash, ptr %39, i32 0, i32 2
  %42 = ptrtoint ptr %cc_write.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cc_write.i, align 8
  tail call void %43(ptr noundef %39, i16 noundef zeroext 68, i32 noundef %shl.i) #5
  %44 = ptrtoint ptr %cc_write.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cc_write.i, align 8
  tail call void %45(ptr noundef %39, i16 noundef zeroext 64, i32 noundef -2147483053) #5
  %cc_read.i.i39 = getelementptr inbounds %struct.bcm47xxsflash, ptr %39, i32 0, i32 1
  br label %for.body.i.i44

for.body.i.i44:                                   ; preds = %do.end.i.i47.for.body.i.i44_crit_edge, %if.then.i40
  %i.015.i.i41 = phi i32 [ 0, %if.then.i40 ], [ %inc.i.i45, %do.end.i.i47.for.body.i.i44_crit_edge ]
  %46 = ptrtoint ptr %cc_read.i.i39 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cc_read.i.i39, align 4
  %call.i.i42 = tail call i32 %47(ptr noundef %39, i16 noundef zeroext 64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i42)
  %tobool.not.i.i43 = icmp sgt i32 %call.i.i42, -1
  br i1 %tobool.not.i.i43, label %for.body.i.i44.bcm47xxsflash_cmd.exit.i51_crit_edge, label %do.end.i.i47

for.body.i.i44.bcm47xxsflash_cmd.exit.i51_crit_edge: ; preds = %for.body.i.i44
  call void @__sanitizer_cov_trace_pc() #7
  br label %bcm47xxsflash_cmd.exit.i51

do.end.i.i47:                                     ; preds = %for.body.i.i44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !76
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !77
  %inc.i.i45 = add nuw nsw i32 %i.015.i.i41, 1
  %exitcond.not.i.i46 = icmp eq i32 %inc.i.i45, 1000
  br i1 %exitcond.not.i.i46, label %do.end9.i.i49, label %do.end.i.i47.for.body.i.i44_crit_edge

do.end.i.i47.for.body.i.i44_crit_edge:            ; preds = %do.end.i.i47
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i44

do.end9.i.i49:                                    ; preds = %do.end.i.i47
  call void @__sanitizer_cov_trace_pc() #7
  %call10.i.i48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #8
  br label %bcm47xxsflash_cmd.exit.i51

bcm47xxsflash_cmd.exit.i51:                       ; preds = %do.end9.i.i49, %for.body.i.i44.bcm47xxsflash_cmd.exit.i51_crit_edge
  %call.i50 = tail call fastcc i32 @bcm47xxsflash_poll(ptr noundef %39, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %tobool3.not.i = icmp eq i32 %call.i50, 0
  br i1 %tobool3.not.i, label %bcm47xxsflash_cmd.exit.i51.while.body.lr.ph.i_crit_edge, label %do.end.i

bcm47xxsflash_cmd.exit.i51.while.body.lr.ph.i_crit_edge: ; preds = %bcm47xxsflash_cmd.exit.i51
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.lr.ph.i

do.end.i:                                         ; preds = %bcm47xxsflash_cmd.exit.i51
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %shl.i) #8
  br label %sw.epilog

while.body.lr.ph.i:                               ; preds = %bcm47xxsflash_cmd.exit.i51.while.body.lr.ph.i_crit_edge, %sw.bb1.while.body.lr.ph.i_crit_edge
  %cc_write12.i = getelementptr inbounds %struct.bcm47xxsflash, ptr %39, i32 0, i32 2
  %cc_read.i46.i = getelementptr inbounds %struct.bcm47xxsflash, ptr %39, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %bcm47xxsflash_cmd.exit56.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %written.073.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc14.i, %bcm47xxsflash_cmd.exit56.i.while.body.i_crit_edge ]
  %byte.072.i = phi i32 [ %and1.i, %while.body.lr.ph.i ], [ %inc.i, %bcm47xxsflash_cmd.exit56.i.while.body.i_crit_edge ]
  %len.addr.071.i = phi i32 [ %len.addr.061, %while.body.lr.ph.i ], [ %dec.i, %bcm47xxsflash_cmd.exit56.i.while.body.i_crit_edge ]
  %buf.addr.070.i = phi ptr [ %buf.addr.068, %while.body.lr.ph.i ], [ %incdec.ptr.i, %bcm47xxsflash_cmd.exit56.i.while.body.i_crit_edge ]
  %48 = ptrtoint ptr %blocksize.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %blocksize.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %byte.072.i, i32 %49)
  %cmp9.i = icmp eq i32 %byte.072.i, %49
  br i1 %cmp9.i, label %while.body.i.while.end.i54_crit_edge, label %if.end11.i

while.body.i.while.end.i54_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i54

if.end11.i:                                       ; preds = %while.body.i
  %50 = ptrtoint ptr %cc_write12.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cc_write12.i, align 8
  %inc.i = add i32 %byte.072.i, 1
  tail call void %51(ptr noundef %39, i16 noundef zeroext 68, i32 noundef %byte.072.i) #5
  %52 = ptrtoint ptr %cc_write12.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cc_write12.i, align 8
  %incdec.ptr.i = getelementptr i8, ptr %buf.addr.070.i, i32 1
  %54 = ptrtoint ptr %buf.addr.070.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %buf.addr.070.i, align 1
  %conv.i52 = zext i8 %55 to i32
  tail call void %53(ptr noundef %39, i16 noundef zeroext 72, i32 noundef %conv.i52) #5
  %56 = ptrtoint ptr %cc_write12.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cc_write12.i, align 8
  tail call void %57(ptr noundef %39, i16 noundef zeroext 64, i32 noundef -2147482748) #5
  br label %for.body.i50.i

for.body.i50.i:                                   ; preds = %do.end.i53.i.for.body.i50.i_crit_edge, %if.end11.i
  %i.015.i47.i = phi i32 [ 0, %if.end11.i ], [ %inc.i51.i, %do.end.i53.i.for.body.i50.i_crit_edge ]
  %58 = ptrtoint ptr %cc_read.i46.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cc_read.i46.i, align 4
  %call.i48.i = tail call i32 %59(ptr noundef %39, i16 noundef zeroext 64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i48.i)
  %tobool.not.i49.i = icmp sgt i32 %call.i48.i, -1
  br i1 %tobool.not.i49.i, label %for.body.i50.i.bcm47xxsflash_cmd.exit56.i_crit_edge, label %do.end.i53.i

for.body.i50.i.bcm47xxsflash_cmd.exit56.i_crit_edge: ; preds = %for.body.i50.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bcm47xxsflash_cmd.exit56.i

do.end.i53.i:                                     ; preds = %for.body.i50.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !76
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !77
  %inc.i51.i = add nuw nsw i32 %i.015.i47.i, 1
  %exitcond.not.i52.i = icmp eq i32 %inc.i51.i, 1000
  br i1 %exitcond.not.i52.i, label %do.end9.i55.i, label %do.end.i53.i.for.body.i50.i_crit_edge

do.end.i53.i.for.body.i50.i_crit_edge:            ; preds = %do.end.i53.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i50.i

do.end9.i55.i:                                    ; preds = %do.end.i53.i
  call void @__sanitizer_cov_trace_pc() #7
  %call10.i54.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #8
  br label %bcm47xxsflash_cmd.exit56.i

bcm47xxsflash_cmd.exit56.i:                       ; preds = %do.end9.i55.i, %for.body.i50.i.bcm47xxsflash_cmd.exit56.i_crit_edge
  %dec.i = add i32 %len.addr.071.i, -1
  %inc14.i = add nuw i32 %written.073.i, 1
  %cmp7.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp7.not.i, label %bcm47xxsflash_cmd.exit56.i.while.end.i54_crit_edge, label %bcm47xxsflash_cmd.exit56.i.while.body.i_crit_edge

bcm47xxsflash_cmd.exit56.i.while.body.i_crit_edge: ; preds = %bcm47xxsflash_cmd.exit56.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

bcm47xxsflash_cmd.exit56.i.while.end.i54_crit_edge: ; preds = %bcm47xxsflash_cmd.exit56.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i54

while.end.i54:                                    ; preds = %bcm47xxsflash_cmd.exit56.i.while.end.i54_crit_edge, %while.body.i.while.end.i54_crit_edge
  %written.0.lcssa.i53 = phi i32 [ %written.073.i, %while.body.i.while.end.i54_crit_edge ], [ %len.addr.061, %bcm47xxsflash_cmd.exit56.i.while.end.i54_crit_edge ]
  %60 = ptrtoint ptr %cc_write12.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cc_write12.i, align 8
  tail call void %61(ptr noundef %39, i16 noundef zeroext 68, i32 noundef %shl.i) #5
  %62 = ptrtoint ptr %cc_write12.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cc_write12.i, align 8
  tail call void %63(ptr noundef %39, i16 noundef zeroext 64, i32 noundef -2147483000) #5
  br label %for.body.i62.i

for.body.i62.i:                                   ; preds = %do.end.i65.i.for.body.i62.i_crit_edge, %while.end.i54
  %i.015.i59.i = phi i32 [ 0, %while.end.i54 ], [ %inc.i63.i, %do.end.i65.i.for.body.i62.i_crit_edge ]
  %64 = ptrtoint ptr %cc_read.i46.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cc_read.i46.i, align 4
  %call.i60.i = tail call i32 %65(ptr noundef %39, i16 noundef zeroext 64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i60.i)
  %tobool.not.i61.i = icmp sgt i32 %call.i60.i, -1
  br i1 %tobool.not.i61.i, label %for.body.i62.i.sw.epilog_crit_edge, label %do.end.i65.i

for.body.i62.i.sw.epilog_crit_edge:               ; preds = %for.body.i62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end.i65.i:                                     ; preds = %for.body.i62.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !76
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !77
  %inc.i63.i = add nuw nsw i32 %i.015.i59.i, 1
  %exitcond.not.i64.i = icmp eq i32 %inc.i63.i, 1000
  br i1 %exitcond.not.i64.i, label %do.end9.i67.i, label %do.end.i65.i.for.body.i62.i_crit_edge

do.end.i65.i.for.body.i62.i_crit_edge:            ; preds = %do.end.i65.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i62.i

do.end9.i67.i:                                    ; preds = %do.end.i65.i
  call void @__sanitizer_cov_trace_pc() #7
  %call10.i66.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #8
  br label %sw.epilog

do.body4:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/devices/bcm47xxsflash.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 234, 0\0A.popsection", ""() #5, !srcloc !80
  unreachable

sw.epilog:                                        ; preds = %do.end9.i67.i, %for.body.i62.i.sw.epilog_crit_edge, %do.end.i
  %written.0 = phi i32 [ %call.i50, %do.end.i ], [ %written.0.lcssa.i53, %do.end9.i67.i ], [ %written.0.lcssa.i53, %for.body.i62.i.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %written.0)
  %cmp10 = icmp slt i32 %written.0, 0
  br i1 %cmp10, label %do.end14, label %sw.epilog.if.end_crit_edge

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end14:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i64 noundef %to.addr.066) #8
  br label %cleanup

if.end:                                           ; preds = %sw.epilog.if.end_crit_edge, %cleanup.sink.split.i, %while.end.i.if.end_crit_edge, %for.body.i45.i.if.end_crit_edge
  %written.057 = phi i32 [ %written.0, %sw.epilog.if.end_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ], [ %written.0.lcssa.i, %while.end.i.if.end_crit_edge ], [ 1, %for.body.i45.i.if.end_crit_edge ]
  %conv16 = sext i32 %written.057 to i64
  %add = add i64 %to.addr.066, %conv16
  %sub = sub i32 %len.addr.061, %written.057
  %66 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %retlen, align 4
  %add17 = add i32 %67, %written.057
  store i32 %add17, ptr %retlen, align 4
  %add.ptr = getelementptr i8, ptr %buf.addr.068, i32 %written.057
  %cmp.not = icmp eq i32 %sub, 0
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %do.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %written.0, %do.end14 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !62, !64, !65, !66}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__UNIQUE_ID_file238, !1, !"__UNIQUE_ID_file238", i1 false, i1 false}
!1 = !{!"../drivers/mtd/devices/bcm47xxsflash.c", i32 13, i32 1}
!2 = !{ptr @__UNIQUE_ID_license239, !1, !"__UNIQUE_ID_license239", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description240, !4, !"__UNIQUE_ID_description240", i1 false, i1 false}
!4 = !{!"../drivers/mtd/devices/bcm47xxsflash.c", i32 14, i32 1}
!5 = !{ptr @__initcall__kmod_bcm47xxsflash__243_382_bcma_sflash_driver_init6, !6, !"__initcall__kmod_bcm47xxsflash__243_382_bcma_sflash_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/mtd/devices/bcm47xxsflash.c", i32 382, i32 1}
!7 = !{ptr @__exitcall_bcma_sflash_driver_exit, !6, !"__exitcall_bcma_sflash_driver_exit", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mtd/devices/bcm47xxsflash.c", i32 374, i32 11}
!10 = !{ptr @bcma_sflash_driver, !11, !"bcma_sflash_driver", i1 false, i1 false}
!11 = !{!"../drivers/mtd/devices/bcm47xxsflash.c", i32 370, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/devices/bcm47xxsflash.c", i32 299, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @bcm47xxsflash_bcma_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @bcm47xxsflash_bcma_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mtd/devices/bcm47xxsflash.c", i32 304, i32 3}
!22 = !{ptr @bcm47xxsflash_bcma_probe._entry.6, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @bcm47xxsflash_bcma_probe._entry_ptr.8, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mtd/devices/bcm47xxsflash.c", i32 327, i32 3}
!26 = !{ptr @bcm47xxsflash_bcma_probe._entry.9, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @bcm47xxsflash_bcma_probe._entry_ptr.11, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mtd/devices/bcm47xxsflash.c", i32 349, i32 3}
!30 = !{ptr @bcm47xxsflash_bcma_probe._entry.12, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @bcm47xxsflash_bcma_probe._entry_ptr.14, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mtd/devices/bcm47xxsflash.c", i32 355, i32 3}
!34 = !{ptr @bcm47xxsflash_bcma_probe._entry.15, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @bcm47xxsflash_bcma_probe._entry_ptr.17, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mtd/devices/bcm47xxsflash.c", i32 256, i32 14}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mtd/devices/bcm47xxsflash.c", i32 33, i32 2}
!40 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @bcm47xxsflash_cmd._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @bcm47xxsflash_cmd._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mtd/devices/bcm47xxsflash.c", i32 237, i32 4}
!45 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @bcm47xxsflash_write._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @bcm47xxsflash_write._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mtd/devices/bcm47xxsflash.c", i32 168, i32 3}
!50 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @bcm47xxsflash_write_st._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @bcm47xxsflash_write_st._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mtd/devices/bcm47xxsflash.c", i32 191, i32 4}
!55 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @bcm47xxsflash_write_at._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @bcm47xxsflash_write_at._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mtd/devices/bcm47xxsflash.c", i32 16, i32 40}
!60 = !{ptr @probes, !61, !"probes", i1 false, i1 false}
!61 = !{!"../drivers/mtd/devices/bcm47xxsflash.c", i32 16, i32 27}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mtd/devices/bcm47xxsflash.c", i32 60, i32 2}
!64 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @bcm47xxsflash_poll._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @bcm47xxsflash_poll._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{i64 2154941884}
!77 = !{i64 2154941726}
!78 = !{i64 2154943806}
!79 = !{i64 2154943648}
!80 = !{i64 2154956398, i64 2154956898, i64 2154956435, i64 2154956491, i64 2154956525, i64 2154956549, i64 2154956590, i64 2154956611, i64 2154956639, i64 2154956673}

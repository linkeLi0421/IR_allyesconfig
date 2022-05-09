; ModuleID = '/llk/IR_all_yes/drivers/bcma/driver_chipcommon_sflash.c_pt.bc'
source_filename = "../drivers/bcma/driver_chipcommon_sflash.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.bcma_sflash_tbl_e = type { ptr, i32, i32, i16 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bcma_drv_cc = type { ptr, i32, i32, i32, i8, i16, %struct.bcma_chipcommon_pmu, %struct.bcma_pflash, %struct.bcma_sflash, %struct.bcma_nflash, i32, [4 x %struct.bcma_serial_port], i32, ptr, %struct.spinlock, %struct.gpio_chip }
%struct.bcma_chipcommon_pmu = type { ptr, i8, i32 }
%struct.bcma_pflash = type { i8 }
%struct.bcma_sflash = type { i8, i32, i16, i32 }
%struct.bcma_nflash = type { i8, i8 }
%struct.bcma_serial_port = type { ptr, i32, i32, i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.71, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.71 = type { ptr }
%struct.bcma_bus = type { ptr, ptr, ptr, i32, i8, ptr, %struct.bcma_chipinfo, %struct.bcma_boardinfo, ptr, %struct.list_head, i8, i8, %struct.bcma_drv_cc, %struct.bcma_drv_cc_b, [2 x %struct.bcma_drv_pci], %struct.bcma_drv_pcie2, %struct.bcma_drv_mips, %struct.bcma_drv_gmac_cmn, %struct.ssb_sprom }
%struct.bcma_chipinfo = type { i16, i8, i8 }
%struct.bcma_boardinfo = type { i16, i16 }
%struct.bcma_drv_cc_b = type { ptr, i8, ptr }
%struct.bcma_drv_pci = type { ptr, i8 }
%struct.bcma_drv_pcie2 = type { ptr, i16 }
%struct.bcma_drv_mips = type { ptr, i8 }
%struct.bcma_drv_gmac_cmn = type { ptr, %struct.mutex }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.73, %struct.anon.74, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.73 = type { i8, i8, i8, i8 }
%struct.anon.74 = type { %struct.anon.75, %struct.anon.76 }
%struct.anon.75 = type { i8, i8, i8, i8, i8 }
%struct.anon.76 = type { i8, i8, i8, i8, i8 }
%struct.bcma_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bcma_sflash\00", [20 x i8] zeroinitializer }, align 32
@bcma_sflash_resource = internal global { %struct.resource, [32 x i8] } { %struct.resource { i32 469762048, i32 0, ptr @.str, i32 16896, i32 0, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@bcma_sflash_dev = dso_local global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str, i32 0, i8 0, %struct.device zeroinitializer, i64 0, %struct.device_dma_parameters zeroinitializer, i32 1, ptr @bcma_sflash_resource, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@bcma_sflash_sst_tbl = internal constant { [15 x %struct.bcma_sflash_tbl_e], [48 x i8] } { [15 x %struct.bcma_sflash_tbl_e] [%struct.bcma_sflash_tbl_e { ptr @.str.18, i32 1, i32 4096, i16 16 }, %struct.bcma_sflash_tbl_e { ptr @.str.19, i32 72, i32 4096, i16 16 }, %struct.bcma_sflash_tbl_e { ptr @.str.20, i32 2, i32 4096, i16 32 }, %struct.bcma_sflash_tbl_e { ptr @.str.21, i32 73, i32 4096, i16 32 }, %struct.bcma_sflash_tbl_e { ptr @.str.22, i32 3, i32 4096, i16 64 }, %struct.bcma_sflash_tbl_e { ptr @.str.23, i32 67, i32 4096, i16 64 }, %struct.bcma_sflash_tbl_e { ptr @.str.24, i32 4, i32 4096, i16 128 }, %struct.bcma_sflash_tbl_e { ptr @.str.25, i32 68, i32 4096, i16 128 }, %struct.bcma_sflash_tbl_e { ptr @.str.26, i32 141, i32 4096, i16 128 }, %struct.bcma_sflash_tbl_e { ptr @.str.27, i32 5, i32 4096, i16 256 }, %struct.bcma_sflash_tbl_e { ptr @.str.28, i32 142, i32 4096, i16 256 }, %struct.bcma_sflash_tbl_e { ptr @.str.29, i32 65, i32 4096, i16 512 }, %struct.bcma_sflash_tbl_e { ptr @.str.30, i32 74, i32 4096, i16 1024 }, %struct.bcma_sflash_tbl_e { ptr @.str.31, i32 75, i32 4096, i16 2048 }, %struct.bcma_sflash_tbl_e zeroinitializer], [48 x i8] zeroinitializer }, align 32
@bcma_sflash_st_tbl = internal constant { [8 x %struct.bcma_sflash_tbl_e], [32 x i8] } { [8 x %struct.bcma_sflash_tbl_e] [%struct.bcma_sflash_tbl_e { ptr @.str.32, i32 17, i32 65536, i16 4 }, %struct.bcma_sflash_tbl_e { ptr @.str.33, i32 18, i32 65536, i16 8 }, %struct.bcma_sflash_tbl_e { ptr @.str.34, i32 20, i32 65536, i16 32 }, %struct.bcma_sflash_tbl_e { ptr @.str.35, i32 21, i32 65536, i16 64 }, %struct.bcma_sflash_tbl_e { ptr @.str.36, i32 22, i32 65536, i16 128 }, %struct.bcma_sflash_tbl_e { ptr @.str.37, i32 23, i32 65536, i16 256 }, %struct.bcma_sflash_tbl_e { ptr @.str.38, i32 24, i32 65536, i16 512 }, %struct.bcma_sflash_tbl_e zeroinitializer], [32 x i8] zeroinitializer }, align 32
@bcma_sflash_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 125, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"bus%d: Unsupported ST serial flash (id: 0x%X, id2: 0x%X)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bcma_sflash_init\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/bcma/driver_chipcommon_sflash.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcma_sflash_init._entry_ptr = internal global ptr @bcma_sflash_init._entry, section ".printk_index", align 4
@bcma_sflash_at_tbl = internal constant { [8 x %struct.bcma_sflash_tbl_e], [32 x i8] } { [8 x %struct.bcma_sflash_tbl_e] [%struct.bcma_sflash_tbl_e { ptr @.str.39, i32 12, i32 256, i16 512 }, %struct.bcma_sflash_tbl_e { ptr @.str.40, i32 20, i32 256, i16 1024 }, %struct.bcma_sflash_tbl_e { ptr @.str.41, i32 28, i32 256, i16 2048 }, %struct.bcma_sflash_tbl_e { ptr @.str.42, i32 36, i32 256, i16 4096 }, %struct.bcma_sflash_tbl_e { ptr @.str.43, i32 44, i32 512, i16 4096 }, %struct.bcma_sflash_tbl_e { ptr @.str.44, i32 52, i32 512, i16 8192 }, %struct.bcma_sflash_tbl_e { ptr @.str.45, i32 60, i32 1024, i16 8192 }, %struct.bcma_sflash_tbl_e zeroinitializer], [32 x i8] zeroinitializer }, align 32
@bcma_sflash_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 139, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"bus%d: Unsupported Atmel serial flash (id: 0x%X)\0A\00", [46 x i8] zeroinitializer }, align 32
@bcma_sflash_init._entry_ptr.8 = internal global ptr @bcma_sflash_init._entry.6, section ".printk_index", align 4
@bcma_sflash_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 145, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bus%d: Unsupported flash type\0A\00", [33 x i8] zeroinitializer }, align 32
@bcma_sflash_init._entry_ptr.11 = internal global ptr @bcma_sflash_init._entry.9, section ".printk_index", align 4
@bcma_sflash_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 156, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"bus%d: Found %s serial flash (size: %dKiB, blocksize: 0x%X, blocks: %d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@bcma_sflash_init._entry_ptr.15 = internal global ptr @bcma_sflash_init._entry.12, section ".printk_index", align 4
@bcma_sflash_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 85, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"bus%d: SFLASH control command failed (timeout)!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bcma_sflash_cmd\00", [16 x i8] zeroinitializer }, align 32
@bcma_sflash_cmd._entry_ptr = internal global ptr @bcma_sflash_cmd._entry, section ".printk_index", align 4
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SST25WF512\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SST25VF512\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SST25WF010\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SST25VF010\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SST25WF020\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SST25VF020\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SST25WF040\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SST25VF040\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SST25VF040B\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SST25WF080\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SST25VF080B\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SST25VF016\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SST25VF032\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SST25VF064\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"M25P20\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"M25P40\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"M25P16\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"M25P32\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"M25P64\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"M25FL128\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MX25L25635F\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AT45DB011\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AT45DB021\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AT45DB041\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AT45DB081\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AT45DB161\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AT45DB321\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AT45DB642\00", [22 x i8] zeroinitializer }, align 32
@switch.table.bcma_sflash_init = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @bcma_sflash_at_tbl, ptr getelementptr inbounds ([8 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_at_tbl, i32 0, i32 1), ptr getelementptr inbounds ([8 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_at_tbl, i32 0, i32 2), ptr getelementptr inbounds ([8 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_at_tbl, i32 0, i32 3), ptr getelementptr inbounds ([8 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_at_tbl, i32 0, i32 4), ptr getelementptr inbounds ([8 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_at_tbl, i32 0, i32 5), ptr getelementptr inbounds ([8 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_at_tbl, i32 0, i32 6)], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 256, i64 512]
@__sancov_gen_cov_switch_values.46 = internal global [11 x i64] [i64 9, i64 32, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 191]
@__sancov_gen_cov_switch_values.47 = internal global [16 x i64] [i64 14, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 65, i64 67, i64 68, i64 72, i64 73, i64 74, i64 75, i64 141, i64 142]
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 21, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant [21 x i8] c"bcma_sflash_resource\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 13, i32 24 }
@___asan_gen_.54 = private unnamed_addr constant [16 x i8] c"bcma_sflash_dev\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 20, i32 24 }
@___asan_gen_.57 = private unnamed_addr constant [20 x i8] c"bcma_sflash_sst_tbl\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 45, i32 39 }
@___asan_gen_.60 = private unnamed_addr constant [19 x i8] c"bcma_sflash_st_tbl\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 33, i32 39 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 125, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant [19 x i8] c"bcma_sflash_at_tbl\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 63, i32 39 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 139, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 145, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 154, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 85, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 46, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 47, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 48, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 49, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 50, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 51, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 52, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 53, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 54, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 55, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 56, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 57, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 58, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 59, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 34, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 35, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 37, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 38, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 39, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 40, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 41, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 64, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 65, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 66, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 67, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 68, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 69, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.196 = private constant [43 x i8] c"../drivers/bcma/driver_chipcommon_sflash.c\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 70, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant [30 x i8] c"switch.table.bcma_sflash_init\00", align 1
@llvm.compiler.used = appending global [56 x ptr] [ptr @bcma_sflash_cmd._entry, ptr @bcma_sflash_cmd._entry_ptr, ptr @bcma_sflash_init._entry, ptr @bcma_sflash_init._entry.12, ptr @bcma_sflash_init._entry.6, ptr @bcma_sflash_init._entry.9, ptr @bcma_sflash_init._entry_ptr, ptr @bcma_sflash_init._entry_ptr.11, ptr @bcma_sflash_init._entry_ptr.15, ptr @bcma_sflash_init._entry_ptr.8, ptr @.str, ptr @bcma_sflash_resource, ptr @bcma_sflash_dev, ptr @bcma_sflash_sst_tbl, ptr @bcma_sflash_st_tbl, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @bcma_sflash_at_tbl, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @switch.table.bcma_sflash_init], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_sflash_resource to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_sflash_dev to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_sflash_sst_tbl to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_sflash_st_tbl to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_sflash_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_sflash_at_tbl to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_sflash_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_sflash_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_sflash_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_sflash_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bcma_sflash_init to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcma_sflash_init(ptr noundef %cc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %sflash2 = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 8
  %capabilities = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 2
  %4 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %capabilities, align 4
  %and = and i32 %5, 1792
  %6 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %do.end55 [
    i32 256, label %sw.bb
    i32 512, label %sw.bb26
  ]

sw.bb:                                            ; preds = %entry
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i.i, align 4
  %write32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write32.i.i, align 4
  tail call void %10(ptr noundef %1, i16 noundef zeroext 64, i32 noundef -2147483463) #3
  br label %for.body.i

for.body.i:                                       ; preds = %do.end.i.for.body.i_crit_edge, %sw.bb
  %i.019.i = phi i32 [ 0, %sw.bb ], [ %inc.i, %do.end.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cc, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %ops.i18.i = getelementptr inbounds %struct.bcma_bus, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %ops.i18.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i18.i, align 4
  %read32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %18(ptr noundef %12, i16 noundef zeroext 64) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not.i, label %for.body.i.bcma_sflash_cmd.exit_crit_edge, label %do.end.i

for.body.i.bcma_sflash_cmd.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %bcma_sflash_cmd.exit

do.end.i:                                         ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !103
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #3, !srcloc !104
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %do.end10.i, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

do.end10.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cc, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %num.i = getelementptr inbounds %struct.bcma_bus, ptr %22, i32 0, i32 11
  %25 = ptrtoint ptr %num.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %num.i, align 1
  %conv.i = zext i8 %26 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.16, i32 noundef %conv.i) #6
  br label %bcma_sflash_cmd.exit

bcma_sflash_cmd.exit:                             ; preds = %do.end10.i, %for.body.i.bcma_sflash_cmd.exit_crit_edge
  %27 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cc, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i, align 4
  %write32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write32.i, align 4
  tail call void %34(ptr noundef %28, i16 noundef zeroext 68, i32 noundef 0) #3
  %35 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cc, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  %ops.i.i129 = getelementptr inbounds %struct.bcma_bus, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %ops.i.i129 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i.i129, align 4
  %write32.i.i130 = getelementptr inbounds %struct.bcma_host_ops, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %write32.i.i130 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write32.i.i130, align 4
  tail call void %42(ptr noundef %36, i16 noundef zeroext 64, i32 noundef -2147482709) #3
  br label %for.body.i136

for.body.i136:                                    ; preds = %do.end.i139.for.body.i136_crit_edge, %bcma_sflash_cmd.exit
  %i.019.i131 = phi i32 [ 0, %bcma_sflash_cmd.exit ], [ %inc.i137, %do.end.i139.for.body.i136_crit_edge ]
  %43 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cc, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 8
  %ops.i18.i132 = getelementptr inbounds %struct.bcma_bus, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %ops.i18.i132 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops.i18.i132, align 4
  %read32.i.i133 = getelementptr inbounds %struct.bcma_host_ops, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %read32.i.i133 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read32.i.i133, align 4
  %call.i.i134 = tail call i32 %50(ptr noundef %44, i16 noundef zeroext 64) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i134)
  %tobool.not.i135 = icmp sgt i32 %call.i.i134, -1
  br i1 %tobool.not.i135, label %for.body.i136.bcma_sflash_cmd.exit143_crit_edge, label %do.end.i139

for.body.i136.bcma_sflash_cmd.exit143_crit_edge:  ; preds = %for.body.i136
  call void @__sanitizer_cov_trace_pc() #5
  br label %bcma_sflash_cmd.exit143

do.end.i139:                                      ; preds = %for.body.i136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !103
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #3, !srcloc !104
  %inc.i137 = add nuw nsw i32 %i.019.i131, 1
  %exitcond.not.i138 = icmp eq i32 %inc.i137, 1000
  br i1 %exitcond.not.i138, label %do.end10.i142, label %do.end.i139.for.body.i136_crit_edge

do.end.i139.for.body.i136_crit_edge:              ; preds = %do.end.i139
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i136

do.end10.i142:                                    ; preds = %do.end.i139
  call void @__sanitizer_cov_trace_pc() #5
  %51 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cc, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %num.i140 = getelementptr inbounds %struct.bcma_bus, ptr %54, i32 0, i32 11
  %57 = ptrtoint ptr %num.i140 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %num.i140, align 1
  %conv.i141 = zext i8 %58 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.16, i32 noundef %conv.i141) #6
  br label %bcma_sflash_cmd.exit143

bcma_sflash_cmd.exit143:                          ; preds = %do.end10.i142, %for.body.i136.bcma_sflash_cmd.exit143_crit_edge
  %59 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cc, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 8
  %ops.i144 = getelementptr inbounds %struct.bcma_bus, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %ops.i144 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ops.i144, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %66(ptr noundef %60, i16 noundef zeroext 72) #3
  %67 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cc, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 8
  %ops.i145 = getelementptr inbounds %struct.bcma_bus, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %ops.i145 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ops.i145, align 4
  %write32.i146 = getelementptr inbounds %struct.bcma_host_ops, ptr %72, i32 0, i32 5
  %73 = ptrtoint ptr %write32.i146 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %write32.i146, align 4
  tail call void %74(ptr noundef %68, i16 noundef zeroext 68, i32 noundef 1) #3
  %75 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cc, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 8
  %ops.i.i147 = getelementptr inbounds %struct.bcma_bus, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %ops.i.i147 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ops.i.i147, align 4
  %write32.i.i148 = getelementptr inbounds %struct.bcma_host_ops, ptr %80, i32 0, i32 5
  %81 = ptrtoint ptr %write32.i.i148 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %write32.i.i148, align 4
  tail call void %82(ptr noundef %76, i16 noundef zeroext 64, i32 noundef -2147482709) #3
  br label %for.body.i154

for.body.i154:                                    ; preds = %do.end.i157.for.body.i154_crit_edge, %bcma_sflash_cmd.exit143
  %i.019.i149 = phi i32 [ 0, %bcma_sflash_cmd.exit143 ], [ %inc.i155, %do.end.i157.for.body.i154_crit_edge ]
  %83 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cc, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 8
  %ops.i18.i150 = getelementptr inbounds %struct.bcma_bus, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %ops.i18.i150 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ops.i18.i150, align 4
  %read32.i.i151 = getelementptr inbounds %struct.bcma_host_ops, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %read32.i.i151 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %read32.i.i151, align 4
  %call.i.i152 = tail call i32 %90(ptr noundef %84, i16 noundef zeroext 64) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i152)
  %tobool.not.i153 = icmp sgt i32 %call.i.i152, -1
  br i1 %tobool.not.i153, label %for.body.i154.bcma_sflash_cmd.exit161_crit_edge, label %do.end.i157

for.body.i154.bcma_sflash_cmd.exit161_crit_edge:  ; preds = %for.body.i154
  call void @__sanitizer_cov_trace_pc() #5
  br label %bcma_sflash_cmd.exit161

do.end.i157:                                      ; preds = %for.body.i154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !103
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #3, !srcloc !104
  %inc.i155 = add nuw nsw i32 %i.019.i149, 1
  %exitcond.not.i156 = icmp eq i32 %inc.i155, 1000
  br i1 %exitcond.not.i156, label %do.end10.i160, label %do.end.i157.for.body.i154_crit_edge

do.end.i157.for.body.i154_crit_edge:              ; preds = %do.end.i157
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i154

do.end10.i160:                                    ; preds = %do.end.i157
  call void @__sanitizer_cov_trace_pc() #5
  %91 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cc, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 8
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 4
  %num.i158 = getelementptr inbounds %struct.bcma_bus, ptr %94, i32 0, i32 11
  %97 = ptrtoint ptr %num.i158 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %num.i158, align 1
  %conv.i159 = zext i8 %98 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.16, i32 noundef %conv.i159) #6
  br label %bcma_sflash_cmd.exit161

bcma_sflash_cmd.exit161:                          ; preds = %do.end10.i160, %for.body.i154.bcma_sflash_cmd.exit161_crit_edge
  %99 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %cc, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 8
  %ops.i162 = getelementptr inbounds %struct.bcma_bus, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %ops.i162 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ops.i162, align 4
  %read32.i163 = getelementptr inbounds %struct.bcma_host_ops, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %read32.i163 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %read32.i163, align 4
  %call.i164 = tail call i32 %106(ptr noundef %100, i16 noundef zeroext 72) #3
  %107 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %call.i, label %bcma_sflash_cmd.exit161.do.end_crit_edge [
    i32 191, label %for.body.preheader
    i32 19, label %bcma_sflash_cmd.exit161.cleanup_crit_edge
    i32 17, label %bcma_sflash_cmd.exit161.sw.epilog_crit_edge
    i32 18, label %sw.epilog.fold.split211
    i32 20, label %sw.epilog.fold.split212
    i32 21, label %sw.epilog.fold.split213
    i32 22, label %sw.epilog.fold.split214
    i32 23, label %sw.epilog.fold.split215
    i32 24, label %sw.epilog.fold.split216
  ]

bcma_sflash_cmd.exit161.sw.epilog_crit_edge:      ; preds = %bcma_sflash_cmd.exit161
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

bcma_sflash_cmd.exit161.cleanup_crit_edge:        ; preds = %bcma_sflash_cmd.exit161
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

bcma_sflash_cmd.exit161.do.end_crit_edge:         ; preds = %bcma_sflash_cmd.exit161
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

for.body.preheader:                               ; preds = %bcma_sflash_cmd.exit161
  %108 = zext i32 %call.i164 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %call.i164, label %for.body.preheader.do.end_crit_edge [
    i32 1, label %for.body.preheader.sw.epilog_crit_edge
    i32 72, label %sw.epilog.fold.split
    i32 2, label %sw.epilog.fold.split199
    i32 73, label %sw.epilog.fold.split200
    i32 3, label %sw.epilog.fold.split201
    i32 67, label %sw.epilog.fold.split202
    i32 4, label %sw.epilog.fold.split203
    i32 68, label %sw.epilog.fold.split204
    i32 141, label %sw.epilog.fold.split205
    i32 5, label %sw.epilog.fold.split206
    i32 142, label %sw.epilog.fold.split207
    i32 65, label %sw.epilog.fold.split208
    i32 74, label %sw.epilog.fold.split209
    i32 75, label %sw.epilog.fold.split210
  ]

for.body.preheader.sw.epilog_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

for.body.preheader.do.end_crit_edge:              ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

sw.epilog.fold.split:                             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog.fold.split199:                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog.fold.split200:                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog.fold.split201:                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog.fold.split202:                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog.fold.split203:                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog.fold.split204:                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog.fold.split205:                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog.fold.split206:                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog.fold.split207:                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog.fold.split208:                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog.fold.split209:                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog.fold.split210:                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog.fold.split211:                          ; preds = %bcma_sflash_cmd.exit161
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog.fold.split212:                          ; preds = %bcma_sflash_cmd.exit161
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog.fold.split213:                          ; preds = %bcma_sflash_cmd.exit161
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog.fold.split214:                          ; preds = %bcma_sflash_cmd.exit161
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog.fold.split215:                          ; preds = %bcma_sflash_cmd.exit161
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog.fold.split216:                          ; preds = %bcma_sflash_cmd.exit161
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.fold.split216, %sw.epilog.fold.split215, %sw.epilog.fold.split214, %sw.epilog.fold.split213, %sw.epilog.fold.split212, %sw.epilog.fold.split211, %sw.epilog.fold.split210, %sw.epilog.fold.split209, %sw.epilog.fold.split208, %sw.epilog.fold.split207, %sw.epilog.fold.split206, %sw.epilog.fold.split205, %sw.epilog.fold.split204, %sw.epilog.fold.split203, %sw.epilog.fold.split202, %sw.epilog.fold.split201, %sw.epilog.fold.split200, %sw.epilog.fold.split199, %sw.epilog.fold.split, %for.body.preheader.sw.epilog_crit_edge, %bcma_sflash_cmd.exit161.sw.epilog_crit_edge
  %e.2.ph = phi ptr [ @bcma_sflash_sst_tbl, %for.body.preheader.sw.epilog_crit_edge ], [ @bcma_sflash_st_tbl, %bcma_sflash_cmd.exit161.sw.epilog_crit_edge ], [ getelementptr inbounds ([15 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_sst_tbl, i32 0, i32 1), %sw.epilog.fold.split ], [ getelementptr inbounds ([15 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_sst_tbl, i32 0, i32 2), %sw.epilog.fold.split199 ], [ getelementptr inbounds ([15 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_sst_tbl, i32 0, i32 3), %sw.epilog.fold.split200 ], [ getelementptr inbounds ([15 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_sst_tbl, i32 0, i32 4), %sw.epilog.fold.split201 ], [ getelementptr inbounds ([15 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_sst_tbl, i32 0, i32 5), %sw.epilog.fold.split202 ], [ getelementptr inbounds ([15 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_sst_tbl, i32 0, i32 6), %sw.epilog.fold.split203 ], [ getelementptr inbounds ([15 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_sst_tbl, i32 0, i32 7), %sw.epilog.fold.split204 ], [ getelementptr inbounds ([15 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_sst_tbl, i32 0, i32 8), %sw.epilog.fold.split205 ], [ getelementptr inbounds ([15 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_sst_tbl, i32 0, i32 9), %sw.epilog.fold.split206 ], [ getelementptr inbounds ([15 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_sst_tbl, i32 0, i32 10), %sw.epilog.fold.split207 ], [ getelementptr inbounds ([15 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_sst_tbl, i32 0, i32 11), %sw.epilog.fold.split208 ], [ getelementptr inbounds ([15 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_sst_tbl, i32 0, i32 12), %sw.epilog.fold.split209 ], [ getelementptr inbounds ([15 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_sst_tbl, i32 0, i32 13), %sw.epilog.fold.split210 ], [ getelementptr inbounds ([8 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_st_tbl, i32 0, i32 1), %sw.epilog.fold.split211 ], [ getelementptr inbounds ([8 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_st_tbl, i32 0, i32 2), %sw.epilog.fold.split212 ], [ getelementptr inbounds ([8 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_st_tbl, i32 0, i32 3), %sw.epilog.fold.split213 ], [ getelementptr inbounds ([8 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_st_tbl, i32 0, i32 4), %sw.epilog.fold.split214 ], [ getelementptr inbounds ([8 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_st_tbl, i32 0, i32 5), %sw.epilog.fold.split215 ], [ getelementptr inbounds ([8 x %struct.bcma_sflash_tbl_e], ptr @bcma_sflash_st_tbl, i32 0, i32 6), %sw.epilog.fold.split216 ]
  %109 = ptrtoint ptr %e.2.ph to i32
  call void @__asan_load4_noabort(i32 %109)
  %.pr = load ptr, ptr %e.2.ph, align 4
  %tobool23.not = icmp eq ptr %.pr, null
  br i1 %tobool23.not, label %sw.epilog.do.end_crit_edge, label %sw.epilog.sw.epilog59_crit_edge

sw.epilog.sw.epilog59_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog59

sw.epilog.do.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

do.end:                                           ; preds = %sw.epilog.do.end_crit_edge, %for.body.preheader.do.end_crit_edge, %bcma_sflash_cmd.exit161.do.end_crit_edge
  %110 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %3, align 4
  %num = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 11
  %112 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %num, align 1
  %conv = zext i8 %113 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.1, i32 noundef %conv, i32 noundef %call.i, i32 noundef %call.i164) #6
  br label %cleanup

sw.bb26:                                          ; preds = %entry
  %ops.i.i165 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 2
  %114 = ptrtoint ptr %ops.i.i165 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ops.i.i165, align 4
  %write32.i.i166 = getelementptr inbounds %struct.bcma_host_ops, ptr %115, i32 0, i32 5
  %116 = ptrtoint ptr %write32.i.i166 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %write32.i.i166, align 4
  tail call void %117(ptr noundef %1, i16 noundef zeroext 64, i32 noundef -2147483177) #3
  br label %for.body.i172

for.body.i172:                                    ; preds = %do.end.i175.for.body.i172_crit_edge, %sw.bb26
  %i.019.i167 = phi i32 [ 0, %sw.bb26 ], [ %inc.i173, %do.end.i175.for.body.i172_crit_edge ]
  %118 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %cc, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 8
  %ops.i18.i168 = getelementptr inbounds %struct.bcma_bus, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %ops.i18.i168 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ops.i18.i168, align 4
  %read32.i.i169 = getelementptr inbounds %struct.bcma_host_ops, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %read32.i.i169 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %read32.i.i169, align 4
  %call.i.i170 = tail call i32 %125(ptr noundef %119, i16 noundef zeroext 64) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i170)
  %tobool.not.i171 = icmp sgt i32 %call.i.i170, -1
  br i1 %tobool.not.i171, label %for.body.i172.bcma_sflash_cmd.exit179_crit_edge, label %do.end.i175

for.body.i172.bcma_sflash_cmd.exit179_crit_edge:  ; preds = %for.body.i172
  call void @__sanitizer_cov_trace_pc() #5
  br label %bcma_sflash_cmd.exit179

do.end.i175:                                      ; preds = %for.body.i172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !103
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #3, !srcloc !104
  %inc.i173 = add nuw nsw i32 %i.019.i167, 1
  %exitcond.not.i174 = icmp eq i32 %inc.i173, 1000
  br i1 %exitcond.not.i174, label %do.end10.i178, label %do.end.i175.for.body.i172_crit_edge

do.end.i175.for.body.i172_crit_edge:              ; preds = %do.end.i175
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i172

do.end10.i178:                                    ; preds = %do.end.i175
  call void @__sanitizer_cov_trace_pc() #5
  %126 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %cc, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %127, align 8
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %129, align 4
  %num.i176 = getelementptr inbounds %struct.bcma_bus, ptr %129, i32 0, i32 11
  %132 = ptrtoint ptr %num.i176 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %num.i176, align 1
  %conv.i177 = zext i8 %133 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %131, ptr noundef nonnull @.str.16, i32 noundef %conv.i177) #6
  br label %bcma_sflash_cmd.exit179

bcma_sflash_cmd.exit179:                          ; preds = %do.end10.i178, %for.body.i172.bcma_sflash_cmd.exit179_crit_edge
  %134 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %cc, align 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %135, align 8
  %ops.i180 = getelementptr inbounds %struct.bcma_bus, ptr %137, i32 0, i32 2
  %138 = ptrtoint ptr %ops.i180 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ops.i180, align 4
  %read32.i181 = getelementptr inbounds %struct.bcma_host_ops, ptr %139, i32 0, i32 2
  %140 = ptrtoint ptr %read32.i181 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %read32.i181, align 4
  %call.i182 = tail call i32 %141(ptr noundef %135, i16 noundef zeroext 72) #3
  %and29 = and i32 %call.i182, 60
  %142 = add nsw i32 %and29, -12
  %143 = call i32 @llvm.fshl.i32(i32 %142, i32 %142, i32 29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %143)
  %144 = icmp ult i32 %143, 7
  br i1 %144, label %switch.lookup, label %for.inc39.6

for.inc39.6:                                      ; preds = %bcma_sflash_cmd.exit179
  call void @__sanitizer_cov_trace_pc() #5
  %145 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %3, align 4
  %num49 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 11
  %147 = ptrtoint ptr %num49 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %num49, align 1
  %conv50 = zext i8 %148 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %146, ptr noundef nonnull @.str.7, i32 noundef %conv50, i32 noundef %and29) #6
  br label %cleanup

do.end55:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %149 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %3, align 4
  %num57 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 11
  %151 = ptrtoint ptr %num57 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %num57, align 1
  %conv58 = zext i8 %152 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %150, ptr noundef nonnull @.str.10, i32 noundef %conv58) #6
  br label %cleanup

switch.lookup:                                    ; preds = %bcma_sflash_cmd.exit179
  call void @__sanitizer_cov_trace_pc() #5
  %switch.gep = getelementptr inbounds [7 x ptr], ptr @switch.table.bcma_sflash_init, i32 0, i32 %143
  %153 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %153)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog59

sw.epilog59:                                      ; preds = %switch.lookup, %sw.epilog.sw.epilog59_crit_edge
  %e.4 = phi ptr [ %e.2.ph, %sw.epilog.sw.epilog59_crit_edge ], [ %switch.load, %switch.lookup ]
  %blocksize = getelementptr inbounds %struct.bcma_sflash_tbl_e, ptr %e.4, i32 0, i32 2
  %154 = ptrtoint ptr %blocksize to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %blocksize, align 4
  %blocksize60 = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 8, i32 1
  %156 = ptrtoint ptr %blocksize60 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %blocksize60, align 4
  %numblocks = getelementptr inbounds %struct.bcma_sflash_tbl_e, ptr %e.4, i32 0, i32 3
  %157 = ptrtoint ptr %numblocks to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %numblocks, align 4
  %numblocks61 = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 8, i32 2
  %159 = ptrtoint ptr %numblocks61 to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %158, ptr %numblocks61, align 4
  %conv64 = zext i16 %158 to i32
  %mul = mul i32 %155, %conv64
  %size = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 8, i32 3
  %160 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %mul, ptr %size, align 4
  %161 = ptrtoint ptr %sflash2 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 1, ptr %sflash2, align 4
  %162 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %3, align 4
  %num69 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 11
  %164 = ptrtoint ptr %num69 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %num69, align 1
  %conv70 = zext i8 %165 to i32
  %166 = ptrtoint ptr %e.4 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %e.4, align 4
  %div128 = lshr i32 %mul, 10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %163, ptr noundef nonnull @.str.13, i32 noundef %conv70, ptr noundef %167, i32 noundef %div128, i32 noundef %155, i32 noundef %conv64) #6
  %168 = load ptr, ptr getelementptr inbounds (%struct.platform_device, ptr @bcma_sflash_dev, i32 0, i32 7), align 8
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %168, align 4
  %171 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %size, align 4
  %add = add i32 %172, %170
  %end = getelementptr inbounds %struct.resource, ptr %168, i32 0, i32 1
  %173 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %add, ptr %end, align 4
  store ptr %sflash2, ptr getelementptr inbounds (%struct.platform_device, ptr @bcma_sflash_dev, i32 0, i32 3, i32 7), align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog59, %do.end55, %for.inc39.6, %do.end, %bcma_sflash_cmd.exit161.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %do.end55 ], [ 0, %sw.epilog59 ], [ -524, %for.inc39.6 ], [ -524, %do.end ], [ -524, %bcma_sflash_cmd.exit161.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

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
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !27, !29, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/bcma/driver_chipcommon_sflash.c", i32 21, i32 11}
!2 = !{ptr @bcma_sflash_dev, !3, !"bcma_sflash_dev", i1 false, i1 false}
!3 = !{!"../drivers/bcma/driver_chipcommon_sflash.c", i32 20, i32 24}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/bcma/driver_chipcommon_sflash.c", i32 125, i32 4}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @bcma_sflash_init._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @bcma_sflash_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/bcma/driver_chipcommon_sflash.c", i32 139, i32 4}
!14 = !{ptr @bcma_sflash_init._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @bcma_sflash_init._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/bcma/driver_chipcommon_sflash.c", i32 145, i32 3}
!18 = !{ptr @bcma_sflash_init._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @bcma_sflash_init._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/bcma/driver_chipcommon_sflash.c", i32 154, i32 2}
!22 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @bcma_sflash_init._entry.12, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @bcma_sflash_init._entry_ptr.15, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @bcma_sflash_resource, !26, !"bcma_sflash_resource", i1 false, i1 false}
!26 = !{!"../drivers/bcma/driver_chipcommon_sflash.c", i32 13, i32 24}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/bcma/driver_chipcommon_sflash.c", i32 85, i32 2}
!29 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @bcma_sflash_cmd._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @bcma_sflash_cmd._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/bcma/driver_chipcommon_sflash.c", i32 46, i32 4}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/bcma/driver_chipcommon_sflash.c", i32 47, i32 4}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/bcma/driver_chipcommon_sflash.c", i32 48, i32 4}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/bcma/driver_chipcommon_sflash.c", i32 49, i32 4}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/bcma/driver_chipcommon_sflash.c", i32 50, i32 4}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/bcma/driver_chipcommon_sflash.c", i32 51, i32 4}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/bcma/driver_chipcommon_sflash.c", i32 52, i32 4}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/bcma/driver_chipcommon_sflash.c", i32 53, i32 4}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/bcma/driver_chipcommon_sflash.c", i32 54, i32 4}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/bcma/driver_chipcommon_sflash.c", i32 55, i32 4}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/bcma/driver_chipcommon_sflash.c", i32 56, i32 4}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/bcma/driver_chipcommon_sflash.c", i32 57, i32 4}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/bcma/driver_chipcommon_sflash.c", i32 58, i32 4}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/bcma/driver_chipcommon_sflash.c", i32 59, i32 4}
!60 = !{ptr @bcma_sflash_sst_tbl, !61, !"bcma_sflash_sst_tbl", i1 false, i1 false}
!61 = !{!"../drivers/bcma/driver_chipcommon_sflash.c", i32 45, i32 39}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/bcma/driver_chipcommon_sflash.c", i32 34, i32 4}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/bcma/driver_chipcommon_sflash.c", i32 35, i32 4}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/bcma/driver_chipcommon_sflash.c", i32 37, i32 4}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/bcma/driver_chipcommon_sflash.c", i32 38, i32 4}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/bcma/driver_chipcommon_sflash.c", i32 39, i32 4}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/bcma/driver_chipcommon_sflash.c", i32 40, i32 4}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/bcma/driver_chipcommon_sflash.c", i32 41, i32 4}
!76 = !{ptr @bcma_sflash_st_tbl, !77, !"bcma_sflash_st_tbl", i1 false, i1 false}
!77 = !{!"../drivers/bcma/driver_chipcommon_sflash.c", i32 33, i32 39}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/bcma/driver_chipcommon_sflash.c", i32 64, i32 4}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/bcma/driver_chipcommon_sflash.c", i32 65, i32 4}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/bcma/driver_chipcommon_sflash.c", i32 66, i32 4}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/bcma/driver_chipcommon_sflash.c", i32 67, i32 4}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/bcma/driver_chipcommon_sflash.c", i32 68, i32 4}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/bcma/driver_chipcommon_sflash.c", i32 69, i32 4}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/bcma/driver_chipcommon_sflash.c", i32 70, i32 4}
!92 = !{ptr @bcma_sflash_at_tbl, !93, !"bcma_sflash_at_tbl", i1 false, i1 false}
!93 = !{!"../drivers/bcma/driver_chipcommon_sflash.c", i32 63, i32 39}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{i64 2154863931}
!104 = !{i64 2154863773}

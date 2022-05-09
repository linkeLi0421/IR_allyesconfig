; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.bcm47xxnflash = type { ptr, %struct.nand_chip, i32, i32, i32, [8 x i8] }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.77, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.71 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
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
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.71 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.nand_memory_organization = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc = type { %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_context, ptr, ptr }
%struct.nand_ecc_props = type { i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc_context = type { %struct.nand_ecc_props, i32, i32, ptr }
%struct.nand_row_converter = type { i32, i32 }
%struct.nand_bbt = type { ptr }
%struct.nand_id = type { [8 x i8], i32 }
%struct.nand_parameters = type { ptr, i8, [8 x i32], [8 x i32], ptr }
%struct.nand_manufacturer = type { ptr, ptr }
%struct.nand_chip_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_legacy = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.nand_controller }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.anon.77 = type { i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bcma_bus = type { ptr, ptr, ptr, i32, i8, ptr, %struct.bcma_chipinfo, %struct.bcma_boardinfo, ptr, %struct.list_head, i8, i8, %struct.bcma_drv_cc, %struct.bcma_drv_cc_b, [2 x %struct.bcma_drv_pci], %struct.bcma_drv_pcie2, %struct.bcma_drv_mips, %struct.bcma_drv_gmac_cmn, %struct.ssb_sprom }
%struct.bcma_chipinfo = type { i16, i8, i8 }
%struct.bcma_boardinfo = type { i16, i16 }
%struct.bcma_drv_cc = type { ptr, i32, i32, i32, i8, i16, %struct.bcma_chipcommon_pmu, %struct.bcma_pflash, %struct.bcma_sflash, %struct.bcma_nflash, i32, [4 x %struct.bcma_serial_port], i32, ptr, %struct.spinlock, %struct.gpio_chip }
%struct.bcma_chipcommon_pmu = type { ptr, i8, i32 }
%struct.bcma_pflash = type { i8 }
%struct.bcma_sflash = type { i8, i32, i16, i32 }
%struct.bcma_nflash = type { i8, i8 }
%struct.bcma_serial_port = type { ptr, i32, i32, i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.70, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.70 = type { ptr }
%struct.bcma_drv_cc_b = type { ptr, i8, ptr }
%struct.bcma_drv_pci = type { ptr, i8 }
%struct.bcma_drv_pcie2 = type { ptr, i16 }
%struct.bcma_drv_mips = type { ptr, i8 }
%struct.bcma_drv_gmac_cmn = type { ptr, %struct.mutex }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.83, %struct.anon.84, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.83 = type { i8, i8, i8, i8 }
%struct.anon.84 = type { %struct.anon.85, %struct.anon.86 }
%struct.anon.85 = type { i8, i8, i8, i8, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8 }
%struct.bcma_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@bcm47xxnflash_ops_bcm4706_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013bcm47xxnflash: Could not scan NAND flash: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bcm47xxnflash_ops_bcm4706_init\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c\00", [47 x i8] zeroinitializer }, align 32
@bcm47xxnflash_ops_bcm4706_init._entry_ptr = internal global ptr @bcm47xxnflash_ops_bcm4706_init._entry, section ".printk_index", align 4
@bcm47xxnflash_ops_bcm4706_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013bcm47xxnflash: Invalid flash size: 0x%lX\0A\00", [52 x i8] zeroinitializer }, align 32
@bcm47xxnflash_ops_bcm4706_init._entry_ptr.5 = internal global ptr @bcm47xxnflash_ops_bcm4706_init._entry.3, section ".printk_index", align 4
@bcm47xxnflash_ops_bcm4706_ctl_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013bcm47xxnflash: NFLASH control command not ready!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bcm47xxnflash_ops_bcm4706_ctl_cmd\00", [62 x i8] zeroinitializer }, align 32
@bcm47xxnflash_ops_bcm4706_ctl_cmd._entry_ptr = internal global ptr @bcm47xxnflash_ops_bcm4706_ctl_cmd._entry, section ".printk_index", align 4
@bcm47xxnflash_ops_bcm4706_cmdfunc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013bcm47xxnflash: READID error\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bcm47xxnflash_ops_bcm4706_cmdfunc\00", [62 x i8] zeroinitializer }, align 32
@bcm47xxnflash_ops_bcm4706_cmdfunc._entry_ptr = internal global ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry, section ".printk_index", align 4
@bcm47xxnflash_ops_bcm4706_cmdfunc._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bcm47xxnflash_ops_bcm4706_cmdfunc._entry_ptr.11 = internal global ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry.10, section ".printk_index", align 4
@bcm47xxnflash_ops_bcm4706_cmdfunc._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.9, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013bcm47xxnflash: STATUS command error\0A\00", [57 x i8] zeroinitializer }, align 32
@bcm47xxnflash_ops_bcm4706_cmdfunc._entry_ptr.14 = internal global ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry.12, section ".printk_index", align 4
@bcm47xxnflash_ops_bcm4706_cmdfunc._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.9, ptr @.str.2, i32 276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013bcm47xxnflash: ERASE1 failed\0A\00", [32 x i8] zeroinitializer }, align 32
@bcm47xxnflash_ops_bcm4706_cmdfunc._entry_ptr.17 = internal global ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry.15, section ".printk_index", align 4
@bcm47xxnflash_ops_bcm4706_cmdfunc._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.9, ptr @.str.2, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013bcm47xxnflash: SEQIN failed\0A\00", [33 x i8] zeroinitializer }, align 32
@bcm47xxnflash_ops_bcm4706_cmdfunc._entry_ptr.20 = internal global ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry.18, section ".printk_index", align 4
@bcm47xxnflash_ops_bcm4706_cmdfunc._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.9, ptr @.str.2, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013bcm47xxnflash: PAGEPROG failed\0A\00", [62 x i8] zeroinitializer }, align 32
@bcm47xxnflash_ops_bcm4706_cmdfunc._entry_ptr.23 = internal global ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry.21, section ".printk_index", align 4
@bcm47xxnflash_ops_bcm4706_cmdfunc._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.9, ptr @.str.2, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013bcm47xxnflash: PAGEPROG not ready\0A\00", [59 x i8] zeroinitializer }, align 32
@bcm47xxnflash_ops_bcm4706_cmdfunc._entry_ptr.26 = internal global ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry.24, section ".printk_index", align 4
@bcm47xxnflash_ops_bcm4706_cmdfunc._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.9, ptr @.str.2, i32 301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013bcm47xxnflash: Command 0x%X unsupported\0A\00", [53 x i8] zeroinitializer }, align 32
@bcm47xxnflash_ops_bcm4706_cmdfunc._entry_ptr.29 = internal global ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry.27, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@bcm47xxnflash_ops_bcm4706_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013bcm47xxnflash: Error on polling\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bcm47xxnflash_ops_bcm4706_poll\00", [33 x i8] zeroinitializer }, align 32
@bcm47xxnflash_ops_bcm4706_poll._entry_ptr = internal global ptr @bcm47xxnflash_ops_bcm4706_poll._entry, section ".printk_index", align 4
@bcm47xxnflash_ops_bcm4706_poll._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013bcm47xxnflash: Polling timeout!\0A\00", [61 x i8] zeroinitializer }, align 32
@bcm47xxnflash_ops_bcm4706_poll._entry_ptr.34 = internal global ptr @bcm47xxnflash_ops_bcm4706_poll._entry.32, section ".printk_index", align 4
@bcm47xxnflash_ops_bcm4706_read_byte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013bcm47xxnflash: Requested invalid id_data: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bcm47xxnflash_ops_bcm4706_read_byte\00", [60 x i8] zeroinitializer }, align 32
@bcm47xxnflash_ops_bcm4706_read_byte._entry_ptr = internal global ptr @bcm47xxnflash_ops_bcm4706_read_byte._entry, section ".printk_index", align 4
@bcm47xxnflash_ops_bcm4706_read_byte._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013bcm47xxnflash: Invalid command for byte read: 0x%X\0A\00", [42 x i8] zeroinitializer }, align 32
@bcm47xxnflash_ops_bcm4706_read_byte._entry_ptr.39 = internal global ptr @bcm47xxnflash_ops_bcm4706_read_byte._entry.37, section ".printk_index", align 4
@bcm47xxnflash_ops_bcm4706_read_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013bcm47xxnflash: Invalid command for buf read: 0x%X\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"bcm47xxnflash_ops_bcm4706_read_buf\00", [61 x i8] zeroinitializer }, align 32
@bcm47xxnflash_ops_bcm4706_read_buf._entry_ptr = internal global ptr @bcm47xxnflash_ops_bcm4706_read_buf._entry, section ".printk_index", align 4
@bcm47xxnflash_ops_bcm4706_write_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013bcm47xxnflash: Invalid command for buf write: 0x%X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bcm47xxnflash_ops_bcm4706_write_buf\00", [60 x i8] zeroinitializer }, align 32
@bcm47xxnflash_ops_bcm4706_write_buf._entry_ptr = internal global ptr @bcm47xxnflash_ops_bcm4706_write_buf._entry, section ".printk_index", align 4
@bcm47xxnflash_ops_bcm4706_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013bcm47xxnflash: %s ctl_cmd didn't work!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bcm47xxnflash_ops_bcm4706_write\00", [32 x i8] zeroinitializer }, align 32
@bcm47xxnflash_ops_bcm4706_write._entry_ptr = internal global ptr @bcm47xxnflash_ops_bcm4706_write._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 16, i64 80, i64 96, i64 112, i64 128, i64 144, i64 208, i64 255]
@__sancov_gen_cov_switch_values.46 = internal global [5 x i64] [i64 3, i64 32, i64 80, i64 112, i64 144]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 80]
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 423, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 431, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 55, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 235, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 250, i32 5 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 262, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 276, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 291, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 296, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 298, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 301, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 69, i32 5 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 77, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 317, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 331, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 348, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 363, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.178 = private constant [52 x i8] c"../drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 157, i32 4 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry, ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry.10, ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry.12, ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry.15, ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry.18, ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry.21, ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry.24, ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry.27, ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry_ptr, ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry_ptr.11, ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry_ptr.14, ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry_ptr.17, ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry_ptr.20, ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry_ptr.23, ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry_ptr.26, ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry_ptr.29, ptr @bcm47xxnflash_ops_bcm4706_ctl_cmd._entry, ptr @bcm47xxnflash_ops_bcm4706_ctl_cmd._entry_ptr, ptr @bcm47xxnflash_ops_bcm4706_init._entry, ptr @bcm47xxnflash_ops_bcm4706_init._entry.3, ptr @bcm47xxnflash_ops_bcm4706_init._entry_ptr, ptr @bcm47xxnflash_ops_bcm4706_init._entry_ptr.5, ptr @bcm47xxnflash_ops_bcm4706_poll._entry, ptr @bcm47xxnflash_ops_bcm4706_poll._entry.32, ptr @bcm47xxnflash_ops_bcm4706_poll._entry_ptr, ptr @bcm47xxnflash_ops_bcm4706_poll._entry_ptr.34, ptr @bcm47xxnflash_ops_bcm4706_read_buf._entry, ptr @bcm47xxnflash_ops_bcm4706_read_buf._entry_ptr, ptr @bcm47xxnflash_ops_bcm4706_read_byte._entry, ptr @bcm47xxnflash_ops_bcm4706_read_byte._entry.37, ptr @bcm47xxnflash_ops_bcm4706_read_byte._entry_ptr, ptr @bcm47xxnflash_ops_bcm4706_read_byte._entry_ptr.39, ptr @bcm47xxnflash_ops_bcm4706_write._entry, ptr @bcm47xxnflash_ops_bcm4706_write._entry_ptr, ptr @bcm47xxnflash_ops_bcm4706_write_buf._entry, ptr @bcm47xxnflash_ops_bcm4706_write_buf._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xxnflash_ops_bcm4706_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xxnflash_ops_bcm4706_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xxnflash_ops_bcm4706_ctl_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xxnflash_ops_bcm4706_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xxnflash_ops_bcm4706_poll._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xxnflash_ops_bcm4706_read_byte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xxnflash_ops_bcm4706_read_byte._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xxnflash_ops_bcm4706_read_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xxnflash_ops_bcm4706_write_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xxnflash_ops_bcm4706_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm47xxnflash_ops_bcm4706_init(ptr noundef %b47n) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nand_chip1 = getelementptr inbounds %struct.bcm47xxnflash, ptr %b47n, i32 0, i32 1
  %select_chip = getelementptr inbounds %struct.bcm47xxnflash, ptr %b47n, i32 0, i32 1, i32 5, i32 2
  %0 = ptrtoint ptr %select_chip to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @bcm47xxnflash_ops_bcm4706_select_chip, ptr %select_chip, align 8
  %cmd_ctrl = getelementptr inbounds %struct.bcm47xxnflash, ptr %b47n, i32 0, i32 1, i32 5, i32 7
  %1 = ptrtoint ptr %cmd_ctrl to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bcm47xxnflash_ops_bcm4706_cmd_ctrl, ptr %cmd_ctrl, align 4
  %dev_ready = getelementptr inbounds %struct.bcm47xxnflash, ptr %b47n, i32 0, i32 1, i32 5, i32 9
  %2 = ptrtoint ptr %dev_ready to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @bcm47xxnflash_ops_bcm4706_dev_ready, ptr %dev_ready, align 4
  %cmdfunc = getelementptr inbounds %struct.bcm47xxnflash, ptr %b47n, i32 0, i32 1, i32 5, i32 8
  %3 = ptrtoint ptr %cmdfunc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @bcm47xxnflash_ops_bcm4706_cmdfunc, ptr %cmdfunc, align 8
  %read_byte = getelementptr inbounds %struct.bcm47xxnflash, ptr %b47n, i32 0, i32 1, i32 5, i32 3
  %4 = ptrtoint ptr %read_byte to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @bcm47xxnflash_ops_bcm4706_read_byte, ptr %read_byte, align 4
  %read_buf = getelementptr inbounds %struct.bcm47xxnflash, ptr %b47n, i32 0, i32 1, i32 5, i32 6
  %5 = ptrtoint ptr %read_buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @bcm47xxnflash_ops_bcm4706_read_buf, ptr %read_buf, align 8
  %write_buf = getelementptr inbounds %struct.bcm47xxnflash, ptr %b47n, i32 0, i32 1, i32 5, i32 5
  %6 = ptrtoint ptr %write_buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @bcm47xxnflash_ops_bcm4706_write_buf, ptr %write_buf, align 4
  %set_features = getelementptr inbounds %struct.bcm47xxnflash, ptr %b47n, i32 0, i32 1, i32 5, i32 13
  %7 = ptrtoint ptr %set_features to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @nand_get_set_features_notsupp, ptr %set_features, align 4
  %get_features = getelementptr inbounds %struct.bcm47xxnflash, ptr %b47n, i32 0, i32 1, i32 5, i32 14
  %8 = ptrtoint ptr %get_features to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @nand_get_set_features_notsupp, ptr %get_features, align 8
  %chip_delay = getelementptr inbounds %struct.bcm47xxnflash, ptr %b47n, i32 0, i32 1, i32 5, i32 15
  %9 = ptrtoint ptr %chip_delay to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 50, ptr %chip_delay, align 4
  %bbt_options = getelementptr inbounds %struct.bcm47xxnflash, ptr %b47n, i32 0, i32 1, i32 10
  %10 = ptrtoint ptr %bbt_options to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 131072, ptr %bbt_options, align 8
  %ecc = getelementptr inbounds %struct.bcm47xxnflash, ptr %b47n, i32 0, i32 1, i32 33
  %11 = ptrtoint ptr %ecc to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %ecc, align 8
  %12 = ptrtoint ptr %b47n to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b47n, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %21(ptr noundef %15, i16 noundef zeroext 396) #6
  %or = or i32 %call.i, 8
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %15, align 8
  %ops.i145 = getelementptr inbounds %struct.bcma_bus, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %ops.i145 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i145, align 4
  %write32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write32.i, align 4
  tail call void %27(ptr noundef %15, i16 noundef zeroext 396, i32 noundef %or) #6
  %28 = ptrtoint ptr %b47n to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %b47n, align 8
  %status = getelementptr inbounds %struct.bcma_drv_cc, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %status, align 4
  %and = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call23 = tail call i32 @bcma_chipco_pll_read(ptr noundef %29, i32 noundef 4) #6
  %and24 = lshr i32 %call23, 3
  %shr = and i32 %and24, 511
  %mul = mul i32 %shr, 25000000
  %phi.bo = udiv i32 %mul, 8000000
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %freq.0 = phi i32 [ %phi.bo, %if.else ], [ 100, %entry.if.end_crit_edge ]
  %mul2.i = mul nuw nsw i32 %freq.0, 15000
  %div.i176 = udiv i32 %mul2.i, 1000000
  %conv3.i = add nuw nsw i32 %div.i176, 1
  %div.i148177.lhs.trunc = trunc i32 %freq.0 to i16
  %div.i148177181 = udiv i16 %div.i148177.lhs.trunc, 50
  %div.i152178.lhs.trunc = trunc i32 %freq.0 to i16
  %div.i152178182 = udiv i16 %div.i152178.lhs.trunc, 100
  %narrow = add nuw nsw i16 %div.i152178182, 1
  %conv3.i153 = zext i16 %narrow to i32
  %div.i160179.lhs.trunc = trunc i32 %freq.0 to i16
  %div.i160179183 = udiv i16 %div.i160179.lhs.trunc, 10
  %div.i160179.zext = zext i16 %div.i160179183 to i32
  %32 = ptrtoint ptr %b47n to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %b47n, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %conv3.i161 = shl nuw nsw i32 %div.i160179.zext, 24
  %shl = add nuw nsw i32 %conv3.i161, 16777216
  %shl36 = shl nuw nsw i32 %conv3.i153, 18
  %or37 = or i32 %shl, %shl36
  %shl39 = shl nuw nsw i32 %conv3.i153, 12
  %or40 = or i32 %or37, %shl39
  %36 = shl nuw nsw i16 %div.i148177181, 6
  %narrow184 = add nuw nsw i16 %36, 64
  %shl42 = zext i16 %narrow184 to i32
  %or43 = or i32 %or40, %shl42
  %or45 = or i32 %or43, %conv3.i
  %37 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %35, align 8
  %ops.i162 = getelementptr inbounds %struct.bcma_bus, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %ops.i162 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i162, align 4
  %write32.i163 = getelementptr inbounds %struct.bcma_host_ops, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %write32.i163 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write32.i163, align 4
  tail call void %42(ptr noundef %35, i16 noundef zeroext 436, i32 noundef %or45) #6
  %call.i164 = tail call i32 @nand_scan_with_ids(ptr noundef %nand_chip1, i32 noundef 1, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i164)
  %tobool48.not = icmp eq i32 %call.i164, 0
  br i1 %tobool48.not, label %if.end51, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call.i164) #9
  br label %if.then96

if.end51:                                         ; preds = %if.end
  %luns_per_target.i = getelementptr inbounds %struct.bcm47xxnflash, ptr %b47n, i32 0, i32 1, i32 0, i32 1, i32 7
  %43 = ptrtoint ptr %luns_per_target.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %luns_per_target.i, align 4
  %conv.i = zext i32 %44 to i64
  %eraseblocks_per_lun.i = getelementptr inbounds %struct.bcm47xxnflash, ptr %b47n, i32 0, i32 1, i32 0, i32 1, i32 4
  %45 = ptrtoint ptr %eraseblocks_per_lun.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %eraseblocks_per_lun.i, align 8
  %conv2.i = zext i32 %46 to i64
  %mul.i = mul nuw i64 %conv2.i, %conv.i
  %pages_per_eraseblock.i = getelementptr inbounds %struct.bcm47xxnflash, ptr %b47n, i32 0, i32 1, i32 0, i32 1, i32 3
  %47 = ptrtoint ptr %pages_per_eraseblock.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pages_per_eraseblock.i, align 4
  %conv4.i = zext i32 %48 to i64
  %mul5.i = mul i64 %mul.i, %conv4.i
  %pagesize.i = getelementptr inbounds %struct.bcm47xxnflash, ptr %b47n, i32 0, i32 1, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %pagesize.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pagesize.i, align 4
  %conv7.i = zext i32 %50 to i64
  %mul8.i = mul i64 %mul5.i, %conv7.i
  %shr54 = lshr i64 %mul8.i, 20
  %conv55 = trunc i64 %shr54 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv55)
  %iszero = icmp eq i32 %conv55, 0
  br i1 %iszero, label %if.end51.do.end64_crit_edge, label %lor.lhs.false

if.end51.do.end64_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end64

lor.lhs.false:                                    ; preds = %if.end51
  %51 = tail call i32 @llvm.cttz.i32(i32 %conv55, i1 true), !range !89
  %52 = add nuw nsw i32 %51, 1
  %53 = tail call i32 @llvm.ctlz.i32(i32 %conv55, i1 true) #6, !range !89
  %sub.i = sub nuw nsw i32 32, %53
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %sub.i)
  %cmp.not = icmp eq i32 %52, %sub.i
  br i1 %cmp.not, label %exit, label %lor.lhs.false.do.end64_crit_edge

lor.lhs.false.do.end64_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end64

do.end64:                                         ; preds = %lor.lhs.false.do.end64_crit_edge, %if.end51.do.end64_crit_edge
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv55) #9
  br label %if.then96

exit:                                             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %conv69 = add nuw nsw i32 %51, 20
  %page_shift = getelementptr inbounds %struct.bcm47xxnflash, ptr %b47n, i32 0, i32 1, i32 17
  %54 = ptrtoint ptr %page_shift to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %page_shift, align 4
  %conv72.neg = xor i32 %55, -1
  %sub = add i32 %conv69, %conv72.neg
  %conv80 = shl i32 %sub, 3
  %conv81 = add i32 %conv80, 8
  %add82 = and i32 %conv81, 2040
  %56 = add nuw nsw i32 %add82, 56
  %sub86 = and i32 %56, 4032
  %shl87 = add nsw i32 %sub86, -64
  %conv72 = shl i32 %55, 1
  %conv73 = add i32 %conv72, 2
  %add74 = and i32 %conv73, 510
  %57 = add nuw nsw i32 %add74, 14
  %sub89 = and i32 %57, 1008
  %shl90 = add nsw i32 %sub89, -16
  %or91 = or i32 %shl90, %shl87
  %or92 = or i32 %or91, 2
  %58 = ptrtoint ptr %b47n to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %b47n, align 8
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 8
  %ops.i165 = getelementptr inbounds %struct.bcma_bus, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %ops.i165 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops.i165, align 4
  %write32.i166 = getelementptr inbounds %struct.bcma_host_ops, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %write32.i166 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write32.i166, align 4
  tail call void %67(ptr noundef %61, i16 noundef zeroext 420, i32 noundef %or92) #6
  br label %if.end103

if.then96:                                        ; preds = %do.end64, %do.end
  %err.0.ph = phi i32 [ -524, %do.end64 ], [ %call.i164, %do.end ]
  %68 = ptrtoint ptr %b47n to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %b47n, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 8
  %ops.i167 = getelementptr inbounds %struct.bcma_bus, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %ops.i167 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ops.i167, align 4
  %read32.i168 = getelementptr inbounds %struct.bcma_host_ops, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %read32.i168 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %read32.i168, align 4
  %call.i169 = tail call i32 %77(ptr noundef %71, i16 noundef zeroext 396) #6
  %and102 = and i32 %call.i169, -9
  %78 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %71, align 8
  %ops.i170 = getelementptr inbounds %struct.bcma_bus, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %ops.i170 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ops.i170, align 4
  %write32.i171 = getelementptr inbounds %struct.bcma_host_ops, ptr %81, i32 0, i32 5
  %82 = ptrtoint ptr %write32.i171 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %write32.i171, align 4
  tail call void %83(ptr noundef %71, i16 noundef zeroext 396, i32 noundef %and102) #6
  br label %if.end103

if.end103:                                        ; preds = %if.then96, %exit
  %err.0175 = phi i32 [ %err.0.ph, %if.then96 ], [ 0, %exit ]
  ret i32 %err.0175
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bcm47xxnflash_ops_bcm4706_select_chip(ptr nocapture noundef %chip, i32 noundef %cs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm47xxnflash_ops_bcm4706_cmd_ctrl(ptr nocapture noundef readonly %nand_chip, i32 noundef %cmd, i32 noundef %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cmd)
  %cmp = icmp eq i32 %cmd, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %nand_chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %and = and i32 %cmd, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or = or i32 %cmd, 65536
  %spec.select = select i1 %tobool.not, i32 0, i32 %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %cmd)
  %cmp3.not = icmp eq i32 %cmd, 255
  %or5 = or i32 %spec.select, 1073741824
  %code.1 = select i1 %cmp3.not, i32 %spec.select, i32 %or5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %or.i = or i32 %code.1, -2147483648
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i.i, align 4
  %write32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write32.i.i, align 4
  tail call void %11(ptr noundef %5, i16 noundef zeroext 416, i32 noundef %or.i) #6
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10000
  br i1 %exitcond.not.i, label %do.end.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end
  %i.012.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %ops.i9.i = getelementptr inbounds %struct.bcma_bus, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %ops.i9.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i9.i, align 4
  %read32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %19(ptr noundef %13, i16 noundef zeroext 416) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not.i, label %for.body.i.cleanup_crit_edge, label %for.cond.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i:                                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %for.body.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm47xxnflash_ops_bcm4706_dev_ready(ptr nocapture noundef readonly %nand_chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %nand_chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %11(ptr noundef %5, i16 noundef zeroext 416) #6
  %and = lshr i32 %call.i, 26
  %and.lobit = and i32 %and, 1
  ret i32 %and.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm47xxnflash_ops_bcm4706_cmdfunc(ptr noundef %nand_chip, i32 noundef %command, i32 noundef %column, i32 noundef %page_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %nand_chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %column)
  %cmp.not = icmp eq i32 %column, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %curr_column = getelementptr inbounds %struct.bcm47xxnflash, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %curr_column to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %column, ptr %curr_column, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %page_addr)
  %cmp3.not = icmp eq i32 %page_addr, -1
  br i1 %cmp3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %curr_page_addr = getelementptr inbounds %struct.bcm47xxnflash, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %curr_page_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %page_addr, ptr %curr_page_addr, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %6 = zext i32 %command to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %command, label %do.end93 [
    i32 255, label %sw.bb
    i32 144, label %sw.bb6
    i32 112, label %sw.bb29
    i32 0, label %if.end5.sw.epilog_crit_edge
    i32 80, label %sw.bb39
    i32 96, label %sw.bb45
    i32 208, label %if.end5.sw.epilog_crit_edge253
    i32 128, label %sw.bb57
    i32 16, label %sw.bb72
  ]

if.end5.sw.epilog_crit_edge253:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %cmd_ctrl = getelementptr inbounds %struct.nand_chip, ptr %nand_chip, i32 0, i32 5, i32 7
  %7 = ptrtoint ptr %cmd_ctrl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cmd_ctrl, align 4
  tail call void %8(ptr noundef %nand_chip, i32 noundef 255, i32 noundef 3) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #6
  tail call void @nand_wait_ready(ptr noundef %nand_chip) #6
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end5
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i.i, align 4
  %write32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write32.i.i, align 4
  tail call void %17(ptr noundef %11, i16 noundef zeroext 416, i32 noundef -1056374640) #6
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10000
  br i1 %exitcond.not.i, label %do.end, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %sw.bb6
  %i.012.i = phi i32 [ 0, %sw.bb6 ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %ops.i9.i = getelementptr inbounds %struct.bcma_bus, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %ops.i9.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i9.i, align 4
  %read32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %25(ptr noundef %19, i16 noundef zeroext 416) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not.i, label %for.body.i.for.body_crit_edge, label %for.cond.i

for.body.i.for.body_crit_edge:                    ; preds = %for.body.i
  br label %for.body

do.end:                                           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #9
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #9
  br label %sw.epilog

for.body:                                         ; preds = %if.end25.for.body_crit_edge, %for.body.i.for.body_crit_edge
  %i.0240 = phi i32 [ %inc, %if.end25.for.body_crit_edge ], [ 0, %for.body.i.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.0240)
  %cmp13 = icmp eq i32 %i.0240, 7
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %or.i = select i1 %cmp13, i32 -2146435072, i32 -1072693248
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  %ops.i.i134 = getelementptr inbounds %struct.bcma_bus, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %ops.i.i134 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i.i134, align 4
  %write32.i.i135 = getelementptr inbounds %struct.bcma_host_ops, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %write32.i.i135 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write32.i.i135, align 4
  tail call void %35(ptr noundef %29, i16 noundef zeroext 416, i32 noundef %or.i) #6
  br label %for.body.i144

for.cond.i138:                                    ; preds = %for.body.i144
  %inc.i136 = add nuw nsw i32 %i.012.i139, 1
  %exitcond.not.i137 = icmp eq i32 %inc.i136, 10000
  br i1 %exitcond.not.i137, label %do.end22, label %for.cond.i138.for.body.i144_crit_edge

for.cond.i138.for.body.i144_crit_edge:            ; preds = %for.cond.i138
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i144

for.body.i144:                                    ; preds = %for.cond.i138.for.body.i144_crit_edge, %for.body
  %i.012.i139 = phi i32 [ 0, %for.body ], [ %inc.i136, %for.cond.i138.for.body.i144_crit_edge ]
  %36 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %27, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  %ops.i9.i140 = getelementptr inbounds %struct.bcma_bus, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %ops.i9.i140 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops.i9.i140, align 4
  %read32.i.i141 = getelementptr inbounds %struct.bcma_host_ops, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %read32.i.i141 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read32.i.i141, align 4
  %call.i.i142 = tail call i32 %43(ptr noundef %37, i16 noundef zeroext 416) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i142)
  %tobool.not.i143 = icmp sgt i32 %call.i.i142, -1
  br i1 %tobool.not.i143, label %if.end25, label %for.cond.i138

do.end22:                                         ; preds = %for.cond.i138
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #9
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #9
  br label %sw.epilog

if.end25:                                         ; preds = %for.body.i144
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops.i, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %53(ptr noundef %47, i16 noundef zeroext 432) #6
  %conv = trunc i32 %call.i to i8
  %arrayidx = getelementptr %struct.bcm47xxnflash, ptr %1, i32 0, i32 5, i32 %i.0240
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.0240, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %if.end25.sw.epilog_crit_edge, label %if.end25.for.body_crit_edge

if.end25.for.body_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end25.sw.epilog_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end5
  %55 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %3, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 8
  %ops.i.i149 = getelementptr inbounds %struct.bcma_bus, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %ops.i.i149 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops.i.i149, align 4
  %write32.i.i150 = getelementptr inbounds %struct.bcma_host_ops, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %write32.i.i150 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write32.i.i150, align 4
  tail call void %62(ptr noundef %56, i16 noundef zeroext 416, i32 noundef -1073676176) #6
  br label %for.body.i159

for.cond.i153:                                    ; preds = %for.body.i159
  %inc.i151 = add nuw nsw i32 %i.012.i154, 1
  %exitcond.not.i152 = icmp eq i32 %inc.i151, 10000
  br i1 %exitcond.not.i152, label %do.end35, label %for.cond.i153.for.body.i159_crit_edge

for.cond.i153.for.body.i159_crit_edge:            ; preds = %for.cond.i153
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i159

for.body.i159:                                    ; preds = %for.cond.i153.for.body.i159_crit_edge, %sw.bb29
  %i.012.i154 = phi i32 [ 0, %sw.bb29 ], [ %inc.i151, %for.cond.i153.for.body.i159_crit_edge ]
  %63 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %3, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 8
  %ops.i9.i155 = getelementptr inbounds %struct.bcma_bus, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %ops.i9.i155 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ops.i9.i155, align 4
  %read32.i.i156 = getelementptr inbounds %struct.bcma_host_ops, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %read32.i.i156 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %read32.i.i156, align 4
  %call.i.i157 = tail call i32 %70(ptr noundef %64, i16 noundef zeroext 416) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i157)
  %tobool.not.i158 = icmp sgt i32 %call.i.i157, -1
  br i1 %tobool.not.i158, label %for.body.i159.sw.epilog_crit_edge, label %for.cond.i153

for.body.i159.sw.epilog_crit_edge:                ; preds = %for.body.i159
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end35:                                         ; preds = %for.cond.i153
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i160 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #9
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #9
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end5
  br i1 %cmp3.not, label %sw.bb39.sw.epilog_crit_edge, label %if.then42

sw.bb39.sw.epilog_crit_edge:                      ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then42:                                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #8
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %nand_chip, i32 0, i32 4
  %71 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %writesize, align 4
  %curr_column43 = getelementptr inbounds %struct.bcm47xxnflash, ptr %1, i32 0, i32 4
  %73 = ptrtoint ptr %curr_column43 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %curr_column43, align 8
  %add = add i32 %74, %72
  store i32 %add, ptr %curr_column43, align 8
  br label %sw.epilog

sw.bb45:                                          ; preds = %if.end5
  %75 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %3, align 4
  %curr_page_addr47 = getelementptr inbounds %struct.bcm47xxnflash, ptr %1, i32 0, i32 3
  %77 = ptrtoint ptr %curr_page_addr47 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %curr_page_addr47, align 4
  %79 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %76, align 8
  %ops.i164 = getelementptr inbounds %struct.bcma_bus, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %ops.i164 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ops.i164, align 4
  %write32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %82, i32 0, i32 5
  %83 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %write32.i, align 4
  tail call void %84(ptr noundef %76, i16 noundef zeroext 428, i32 noundef %78) #6
  %85 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %3, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 8
  %ops.i.i165 = getelementptr inbounds %struct.bcma_bus, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %ops.i.i165 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ops.i.i165, align 4
  %write32.i.i166 = getelementptr inbounds %struct.bcma_host_ops, ptr %90, i32 0, i32 5
  %91 = ptrtoint ptr %write32.i.i166 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %write32.i.i166, align 4
  tail call void %92(ptr noundef %86, i16 noundef zeroext 416, i32 noundef -2146578336) #6
  br label %for.body.i175

for.cond.i169:                                    ; preds = %for.body.i175
  %inc.i167 = add nuw nsw i32 %i.012.i170, 1
  %exitcond.not.i168 = icmp eq i32 %inc.i167, 10000
  br i1 %exitcond.not.i168, label %do.end53, label %for.cond.i169.for.body.i175_crit_edge

for.cond.i169.for.body.i175_crit_edge:            ; preds = %for.cond.i169
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i175

for.body.i175:                                    ; preds = %for.cond.i169.for.body.i175_crit_edge, %sw.bb45
  %i.012.i170 = phi i32 [ 0, %sw.bb45 ], [ %inc.i167, %for.cond.i169.for.body.i175_crit_edge ]
  %93 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %3, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 8
  %ops.i9.i171 = getelementptr inbounds %struct.bcma_bus, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %ops.i9.i171 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ops.i9.i171, align 4
  %read32.i.i172 = getelementptr inbounds %struct.bcma_host_ops, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %read32.i.i172 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %read32.i.i172, align 4
  %call.i.i173 = tail call i32 %100(ptr noundef %94, i16 noundef zeroext 416) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i173)
  %tobool.not.i174 = icmp sgt i32 %call.i.i173, -1
  br i1 %tobool.not.i174, label %for.body.i175.sw.epilog_crit_edge, label %for.cond.i169

for.body.i175.sw.epilog_crit_edge:                ; preds = %for.body.i175
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end53:                                         ; preds = %for.cond.i169
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i176 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #9
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #9
  br label %sw.epilog

sw.bb57:                                          ; preds = %if.end5
  %101 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %3, align 4
  %curr_column59 = getelementptr inbounds %struct.bcm47xxnflash, ptr %1, i32 0, i32 4
  %103 = ptrtoint ptr %curr_column59 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %curr_column59, align 8
  %105 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %102, align 8
  %ops.i180 = getelementptr inbounds %struct.bcma_bus, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %ops.i180 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ops.i180, align 4
  %write32.i181 = getelementptr inbounds %struct.bcma_host_ops, ptr %108, i32 0, i32 5
  %109 = ptrtoint ptr %write32.i181 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %write32.i181, align 4
  tail call void %110(ptr noundef %102, i16 noundef zeroext 424, i32 noundef %104) #6
  %111 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %3, align 4
  %curr_page_addr61 = getelementptr inbounds %struct.bcm47xxnflash, ptr %1, i32 0, i32 3
  %113 = ptrtoint ptr %curr_page_addr61 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %curr_page_addr61, align 4
  %115 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %112, align 8
  %ops.i182 = getelementptr inbounds %struct.bcma_bus, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %ops.i182 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ops.i182, align 4
  %write32.i183 = getelementptr inbounds %struct.bcma_host_ops, ptr %118, i32 0, i32 5
  %119 = ptrtoint ptr %write32.i183 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %write32.i183, align 4
  tail call void %120(ptr noundef %112, i16 noundef zeroext 428, i32 noundef %114) #6
  %121 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %3, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %122, align 8
  %ops.i.i184 = getelementptr inbounds %struct.bcma_bus, ptr %124, i32 0, i32 2
  %125 = ptrtoint ptr %ops.i.i184 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ops.i.i184, align 4
  %write32.i.i185 = getelementptr inbounds %struct.bcma_host_ops, ptr %126, i32 0, i32 5
  %127 = ptrtoint ptr %write32.i.i185 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %write32.i.i185, align 4
  tail call void %128(ptr noundef %122, i16 noundef zeroext 416, i32 noundef -1073282944) #6
  br label %for.body.i194

for.cond.i188:                                    ; preds = %for.body.i194
  %inc.i186 = add nuw nsw i32 %i.012.i189, 1
  %exitcond.not.i187 = icmp eq i32 %inc.i186, 10000
  br i1 %exitcond.not.i187, label %do.end68, label %for.cond.i188.for.body.i194_crit_edge

for.cond.i188.for.body.i194_crit_edge:            ; preds = %for.cond.i188
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i194

for.body.i194:                                    ; preds = %for.cond.i188.for.body.i194_crit_edge, %sw.bb57
  %i.012.i189 = phi i32 [ 0, %sw.bb57 ], [ %inc.i186, %for.cond.i188.for.body.i194_crit_edge ]
  %129 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %3, align 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %130, align 8
  %ops.i9.i190 = getelementptr inbounds %struct.bcma_bus, ptr %132, i32 0, i32 2
  %133 = ptrtoint ptr %ops.i9.i190 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ops.i9.i190, align 4
  %read32.i.i191 = getelementptr inbounds %struct.bcma_host_ops, ptr %134, i32 0, i32 2
  %135 = ptrtoint ptr %read32.i.i191 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %read32.i.i191, align 4
  %call.i.i192 = tail call i32 %136(ptr noundef %130, i16 noundef zeroext 416) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i192)
  %tobool.not.i193 = icmp sgt i32 %call.i.i192, -1
  br i1 %tobool.not.i193, label %for.body.i194.sw.epilog_crit_edge, label %for.cond.i188

for.body.i194.sw.epilog_crit_edge:                ; preds = %for.body.i194
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end68:                                         ; preds = %for.cond.i188
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i195 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #9
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #9
  br label %sw.epilog

sw.bb72:                                          ; preds = %if.end5
  %137 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %3, align 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %138, align 8
  %ops.i.i199 = getelementptr inbounds %struct.bcma_bus, ptr %140, i32 0, i32 2
  %141 = ptrtoint ptr %ops.i.i199 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %ops.i.i199, align 4
  %write32.i.i200 = getelementptr inbounds %struct.bcma_host_ops, ptr %142, i32 0, i32 5
  %143 = ptrtoint ptr %write32.i.i200 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %write32.i.i200, align 4
  tail call void %144(ptr noundef %138, i16 noundef zeroext 416, i32 noundef -2147418096) #6
  br label %for.body.i209

for.cond.i203:                                    ; preds = %for.body.i209
  %inc.i201 = add nuw nsw i32 %i.012.i204, 1
  %exitcond.not.i202 = icmp eq i32 %inc.i201, 10000
  br i1 %exitcond.not.i202, label %do.end78, label %for.cond.i203.for.body.i209_crit_edge

for.cond.i203.for.body.i209_crit_edge:            ; preds = %for.cond.i203
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i209

for.body.i209:                                    ; preds = %for.cond.i203.for.body.i209_crit_edge, %sw.bb72
  %i.012.i204 = phi i32 [ 0, %sw.bb72 ], [ %inc.i201, %for.cond.i203.for.body.i209_crit_edge ]
  %145 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %3, align 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %146, align 8
  %ops.i9.i205 = getelementptr inbounds %struct.bcma_bus, ptr %148, i32 0, i32 2
  %149 = ptrtoint ptr %ops.i9.i205 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %ops.i9.i205, align 4
  %read32.i.i206 = getelementptr inbounds %struct.bcma_host_ops, ptr %150, i32 0, i32 2
  %151 = ptrtoint ptr %read32.i.i206 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %read32.i.i206, align 4
  %call.i.i207 = tail call i32 %152(ptr noundef %146, i16 noundef zeroext 416) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i207)
  %tobool.not.i208 = icmp sgt i32 %call.i.i207, -1
  br i1 %tobool.not.i208, label %for.body.i209.for.body.i221.preheader_crit_edge, label %for.cond.i203

for.body.i209.for.body.i221.preheader_crit_edge:  ; preds = %for.body.i209
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i221.preheader

do.end78:                                         ; preds = %for.cond.i203
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i210 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #9
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #9
  br label %for.body.i221.preheader

for.body.i221.preheader:                          ; preds = %do.end78, %for.body.i209.for.body.i221.preheader_crit_edge
  br label %for.body.i221

for.cond.i216:                                    ; preds = %for.body.i221
  %inc.i214 = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i215 = icmp eq i32 %inc.i214, 10000
  br i1 %exitcond.not.i215, label %for.cond.i216.do.end87_crit_edge, label %for.cond.i216.for.body.i221_crit_edge

for.cond.i216.for.body.i221_crit_edge:            ; preds = %for.cond.i216
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i221

for.cond.i216.do.end87_crit_edge:                 ; preds = %for.cond.i216
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end87

for.body.i221:                                    ; preds = %for.cond.i216.for.body.i221_crit_edge, %for.body.i221.preheader
  %i.017.i = phi i32 [ %inc.i214, %for.cond.i216.for.body.i221_crit_edge ], [ 0, %for.body.i221.preheader ]
  %153 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %3, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %154, align 8
  %ops.i.i217 = getelementptr inbounds %struct.bcma_bus, ptr %156, i32 0, i32 2
  %157 = ptrtoint ptr %ops.i.i217 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %ops.i.i217, align 4
  %read32.i.i218 = getelementptr inbounds %struct.bcma_host_ops, ptr %158, i32 0, i32 2
  %159 = ptrtoint ptr %read32.i.i218 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %read32.i.i218, align 4
  %call.i.i219 = tail call i32 %160(ptr noundef %154, i16 noundef zeroext 416) #6
  %and.i = and i32 %call.i.i219, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i220 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i220, label %for.cond.i216, label %if.then.i

if.then.i:                                        ; preds = %for.body.i221
  %161 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %3, align 4
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %162, align 8
  %ops.i14.i = getelementptr inbounds %struct.bcma_bus, ptr %164, i32 0, i32 2
  %165 = ptrtoint ptr %ops.i14.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %ops.i14.i, align 4
  %read32.i15.i = getelementptr inbounds %struct.bcma_host_ops, ptr %166, i32 0, i32 2
  %167 = ptrtoint ptr %read32.i15.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %read32.i15.i, align 4
  %call.i16.i = tail call i32 %168(ptr noundef %162, i16 noundef zeroext 416) #6
  %and3.i = and i32 %call.i16.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.then.i.sw.epilog_crit_edge, label %if.then.i.do.end87_crit_edge

if.then.i.do.end87_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end87

if.then.i.sw.epilog_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end87:                                         ; preds = %if.then.i.do.end87_crit_edge, %for.cond.i216.do.end87_crit_edge
  %.str.33.sink.i = phi ptr [ @.str.30, %if.then.i.do.end87_crit_edge ], [ @.str.33, %for.cond.i216.do.end87_crit_edge ]
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.33.sink.i) #9
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #9
  br label %sw.epilog

do.end93:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %command) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end93, %do.end87, %if.then.i.sw.epilog_crit_edge, %do.end68, %for.body.i194.sw.epilog_crit_edge, %do.end53, %for.body.i175.sw.epilog_crit_edge, %if.then42, %sw.bb39.sw.epilog_crit_edge, %do.end35, %for.body.i159.sw.epilog_crit_edge, %if.end25.sw.epilog_crit_edge, %do.end22, %do.end, %sw.bb, %if.end5.sw.epilog_crit_edge, %if.end5.sw.epilog_crit_edge253
  %curr_command = getelementptr inbounds %struct.bcm47xxnflash, ptr %1, i32 0, i32 2
  %169 = ptrtoint ptr %curr_command to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %command, ptr %curr_command, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @bcm47xxnflash_ops_bcm4706_read_byte(ptr nocapture noundef readonly %nand_chip) #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %nand_chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #6
  %4 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %tmp, align 4
  %curr_command = getelementptr inbounds %struct.bcm47xxnflash, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %curr_command to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %curr_command, align 8
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %6, label %do.end17 [
    i32 144, label %sw.bb
    i32 112, label %sw.bb7
    i32 80, label %sw.bb12
  ]

sw.bb:                                            ; preds = %entry
  %curr_column = getelementptr inbounds %struct.bcm47xxnflash, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %curr_column to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %curr_column, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %9)
  %cmp = icmp ugt i32 %9, 7
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %9) #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add nuw nsw i32 %9, 1
  %10 = ptrtoint ptr %curr_column to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %inc, ptr %curr_column, align 8
  %arrayidx = getelementptr %struct.bcm47xxnflash, ptr %1, i32 0, i32 5, i32 %9
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i.i, align 4
  %write32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write32.i.i, align 4
  tail call void %20(ptr noundef %14, i16 noundef zeroext 416, i32 noundef -2146435072) #6
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10000
  br i1 %exitcond.not.i, label %bcm47xxnflash_ops_bcm4706_ctl_cmd.exit, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %sw.bb7
  %i.012.i = phi i32 [ 0, %sw.bb7 ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %ops.i9.i = getelementptr inbounds %struct.bcma_bus, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %ops.i9.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i9.i, align 4
  %read32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %28(ptr noundef %22, i16 noundef zeroext 416) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not.i, label %if.end10, label %for.cond.i

bcm47xxnflash_ops_bcm4706_ctl_cmd.exit:           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.end10:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %3, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %36(ptr noundef %30, i16 noundef zeroext 432) #6
  %conv = trunc i32 %call.i to i8
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @bcm47xxnflash_ops_bcm4706_read(ptr noundef %nand_chip, ptr noundef nonnull %tmp, i32 noundef 4)
  %37 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tmp, align 4
  %conv14 = trunc i32 %38 to i8
  br label %cleanup

do.end17:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %6) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %sw.bb12, %if.end10, %bcm47xxnflash_ops_bcm4706_ctl_cmd.exit, %if.end, %do.end
  %retval.0 = phi i8 [ 0, %do.end17 ], [ %conv14, %sw.bb12 ], [ %conv, %if.end10 ], [ 0, %do.end ], [ %12, %if.end ], [ 0, %bcm47xxnflash_ops_bcm4706_ctl_cmd.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #6
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm47xxnflash_ops_bcm4706_read_buf(ptr nocapture noundef readonly %nand_chip, ptr nocapture noundef writeonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %nand_chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %curr_command = getelementptr inbounds %struct.bcm47xxnflash, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %curr_command to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %curr_command, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %3, label %do.end [
    i32 0, label %entry.sw.bb_crit_edge
    i32 80, label %entry.sw.bb_crit_edge6
  ]

entry.sw.bb_crit_edge6:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge6
  tail call fastcc void @bcm47xxnflash_ops_bcm4706_read(ptr noundef %nand_chip, ptr noundef %buf, i32 noundef %len)
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %3) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm47xxnflash_ops_bcm4706_write_buf(ptr nocapture noundef readonly %nand_chip, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %nand_chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %curr_command = getelementptr inbounds %struct.bcm47xxnflash, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %curr_command to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %curr_command, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %3)
  %cond = icmp eq i32 %3, 128
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %curr_page_addr.i = getelementptr inbounds %struct.bcm47xxnflash, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %curr_page_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %curr_page_addr.i, align 4
  %pagemask.i = getelementptr inbounds %struct.nand_chip, ptr %nand_chip, i32 0, i32 20
  %8 = ptrtoint ptr %pagemask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pagemask.i, align 8
  %neg.i = xor i32 %9, -1
  %and.i = and i32 %7, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %do.body5.i, !prof !90

for.cond.preheader.i:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp41.i = icmp sgt i32 %len, 0
  br i1 %cmp41.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %sub.i = add nsw i32 %len, -4
  br label %for.body.i

do.body5.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 146, 0\0A.popsection", ""() #6, !srcloc !91
  unreachable

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.043.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.inc.i.for.body.i_crit_edge ]
  %data.042.i = phi ptr [ %buf, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %12 = ptrtoint ptr %data.042.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data.042.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i.i, align 4
  %write32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write32.i.i, align 4
  tail call void %19(ptr noundef %11, i16 noundef zeroext 432, i32 noundef %13) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %i.043.i, i32 %sub.i)
  %cmp11.i = icmp eq i32 %i.043.i, %sub.i
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4
  %or.i.i = select i1 %cmp11.i, i32 -1340080128, i32 -266338304
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %ops.i.i.i = getelementptr inbounds %struct.bcma_bus, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i.i.i, align 4
  %write32.i.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %27(ptr noundef %21, i16 noundef zeroext 416, i32 noundef %or.i.i) #6
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.012.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 10000
  br i1 %exitcond.not.i.i, label %do.end20.i, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.i
  %i.012.i.i = phi i32 [ 0, %for.body.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %5, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  %ops.i9.i.i = getelementptr inbounds %struct.bcma_bus, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %ops.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i9.i.i, align 4
  %read32.i.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %35(ptr noundef %29, i16 noundef zeroext 416) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i.i, label %for.inc.i, label %for.cond.i.i

do.end20.i:                                       ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #9
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45) #9
  br label %cleanup

for.inc.i:                                        ; preds = %for.body.i.i
  %add.i = add i32 %i.043.i, 4
  %incdec.ptr.i = getelementptr i32, ptr %data.042.i, i32 1
  %cmp.i = icmp slt i32 %add.i, %len
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %curr_column.i = getelementptr inbounds %struct.bcm47xxnflash, ptr %1, i32 0, i32 4
  %36 = ptrtoint ptr %curr_column.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %curr_column.i, align 8
  %add23.i = add i32 %37, %len
  store i32 %add23.i, ptr %curr_column.i, align 8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %3) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.end.i, %do.end20.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_get_set_features_notsupp(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_chipco_pll_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_wait_ready(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm47xxnflash_ops_bcm4706_read(ptr nocapture noundef readonly %mtd, ptr nocapture noundef writeonly %buf, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %curr_page_addr = getelementptr inbounds %struct.bcm47xxnflash, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %curr_page_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %curr_page_addr, align 4
  %pagemask = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 20
  %4 = ptrtoint ptr %pagemask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pagemask, align 8
  %neg = xor i32 %5, -1
  %and = and i32 %3, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.cond.preheader, label %do.body4, !prof !90

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool10.not106 = icmp eq i32 %len, 0
  br i1 %tobool10.not106, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %curr_column = getelementptr inbounds %struct.bcm47xxnflash, ptr %1, i32 0, i32 4
  br label %while.body

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 96, 0\0A.popsection", ""() #6, !srcloc !92
  unreachable

while.body:                                       ; preds = %for.end.while.body_crit_edge, %while.body.lr.ph
  %len.addr.0108 = phi i32 [ %len, %while.body.lr.ph ], [ %sub39, %for.end.while.body_crit_edge ]
  %dest.0107 = phi ptr [ %buf, %while.body.lr.ph ], [ %dest.1.lcssa, %for.end.while.body_crit_edge ]
  %6 = tail call i32 @llvm.smin.i32(i32 %len.addr.0108, i32 512)
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %11 = ptrtoint ptr %curr_column to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %curr_column, align 8
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %write32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write32.i, align 4
  tail call void %18(ptr noundef %10, i16 noundef zeroext 424, i32 noundef %12) #6
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %23 = ptrtoint ptr %curr_page_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %curr_page_addr, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %22, align 8
  %ops.i68 = getelementptr inbounds %struct.bcma_bus, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %ops.i68 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops.i68, align 4
  %write32.i69 = getelementptr inbounds %struct.bcma_host_ops, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %write32.i69 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write32.i69, align 4
  tail call void %30(ptr noundef %22, i16 noundef zeroext 428, i32 noundef %24) #6
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops.i.i, align 4
  %write32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write32.i.i, align 4
  tail call void %40(ptr noundef %34, i16 noundef zeroext 416, i32 noundef -1072746496) #6
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10000
  br i1 %exitcond.not.i, label %for.cond.i.cleanup.sink.split_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.cleanup.sink.split_crit_edge:          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %while.body
  %i.012.i = phi i32 [ 0, %while.body ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %41 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %32, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 8
  %ops.i9.i = getelementptr inbounds %struct.bcma_bus, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %ops.i9.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops.i9.i, align 4
  %read32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %48(ptr noundef %42, i16 noundef zeroext 416) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not.i, label %if.end18, label %for.cond.i

if.end18:                                         ; preds = %for.body.i
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 8
  br label %for.body.i77

for.cond.i72:                                     ; preds = %for.body.i77
  %inc.i70 = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i71 = icmp eq i32 %inc.i70, 10000
  br i1 %exitcond.not.i71, label %for.cond.i72.cleanup.sink.split_crit_edge, label %for.cond.i72.for.body.i77_crit_edge

for.cond.i72.for.body.i77_crit_edge:              ; preds = %for.cond.i72
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i77

for.cond.i72.cleanup.sink.split_crit_edge:        ; preds = %for.cond.i72
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

for.body.i77:                                     ; preds = %for.cond.i72.for.body.i77_crit_edge, %if.end18
  %i.017.i = phi i32 [ 0, %if.end18 ], [ %inc.i70, %for.cond.i72.for.body.i77_crit_edge ]
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 8
  %ops.i.i73 = getelementptr inbounds %struct.bcma_bus, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %ops.i.i73 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ops.i.i73, align 4
  %read32.i.i74 = getelementptr inbounds %struct.bcma_host_ops, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %read32.i.i74 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %read32.i.i74, align 4
  %call.i.i75 = tail call i32 %58(ptr noundef %52, i16 noundef zeroext 416) #6
  %and.i = and i32 %call.i.i75, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i76 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i76, label %for.cond.i72, label %if.then.i

if.then.i:                                        ; preds = %for.body.i77
  %59 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %50, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 8
  %ops.i14.i = getelementptr inbounds %struct.bcma_bus, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %ops.i14.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ops.i14.i, align 4
  %read32.i15.i = getelementptr inbounds %struct.bcma_host_ops, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %read32.i15.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %read32.i15.i, align 4
  %call.i16.i = tail call i32 %66(ptr noundef %60, i16 noundef zeroext 416) #6
  %and3.i = and i32 %call.i16.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %for.cond.preheader, label %if.then.i.cleanup.sink.split_crit_edge

if.then.i.cleanup.sink.split_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

for.cond.preheader:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0108)
  %cmp24103 = icmp sgt i32 %len.addr.0108, 0
  br i1 %cmp24103, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sub = add i32 %6, -4
  br label %for.body

for.body:                                         ; preds = %if.end33.for.body_crit_edge, %for.body.lr.ph
  %i.0105 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %if.end33.for.body_crit_edge ]
  %dest.1104 = phi ptr [ %dest.0107, %for.body.lr.ph ], [ %incdec.ptr, %if.end33.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0105, i32 %sub)
  %cmp25 = icmp eq i32 %i.0105, %sub
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 8
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %or.i = select i1 %cmp25, i32 -1341128704, i32 -267386880
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 8
  %ops.i.i79 = getelementptr inbounds %struct.bcma_bus, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %ops.i.i79 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ops.i.i79, align 4
  %write32.i.i80 = getelementptr inbounds %struct.bcma_host_ops, ptr %74, i32 0, i32 5
  %75 = ptrtoint ptr %write32.i.i80 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write32.i.i80, align 4
  tail call void %76(ptr noundef %70, i16 noundef zeroext 416, i32 noundef %or.i) #6
  br label %for.body.i89

for.cond.i83:                                     ; preds = %for.body.i89
  %inc.i81 = add nuw nsw i32 %i.012.i84, 1
  %exitcond.not.i82 = icmp eq i32 %inc.i81, 10000
  br i1 %exitcond.not.i82, label %for.cond.i83.cleanup.sink.split_crit_edge, label %for.cond.i83.for.body.i89_crit_edge

for.cond.i83.for.body.i89_crit_edge:              ; preds = %for.cond.i83
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i89

for.cond.i83.cleanup.sink.split_crit_edge:        ; preds = %for.cond.i83
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

for.body.i89:                                     ; preds = %for.cond.i83.for.body.i89_crit_edge, %for.body
  %i.012.i84 = phi i32 [ 0, %for.body ], [ %inc.i81, %for.cond.i83.for.body.i89_crit_edge ]
  %77 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %68, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 8
  %ops.i9.i85 = getelementptr inbounds %struct.bcma_bus, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %ops.i9.i85 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ops.i9.i85, align 4
  %read32.i.i86 = getelementptr inbounds %struct.bcma_host_ops, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %read32.i.i86 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %read32.i.i86, align 4
  %call.i.i87 = tail call i32 %84(ptr noundef %78, i16 noundef zeroext 416) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i87)
  %tobool.not.i88 = icmp sgt i32 %call.i.i87, -1
  br i1 %tobool.not.i88, label %if.end33, label %for.cond.i83

if.end33:                                         ; preds = %for.body.i89
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %1, align 8
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 8
  %ops.i94 = getelementptr inbounds %struct.bcma_bus, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %ops.i94 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ops.i94, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %94(ptr noundef %88, i16 noundef zeroext 432) #6
  %95 = ptrtoint ptr %dest.1104 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %call.i, ptr %dest.1104, align 4
  %add = add nuw nsw i32 %i.0105, 4
  %incdec.ptr = getelementptr i32, ptr %dest.1104, i32 1
  %cmp24 = icmp slt i32 %add, %6
  br i1 %cmp24, label %if.end33.for.body_crit_edge, label %if.end33.for.end_crit_edge

if.end33.for.end_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end33.for.body_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end33.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %dest.1.lcssa = phi ptr [ %dest.0107, %for.cond.preheader.for.end_crit_edge ], [ %incdec.ptr, %if.end33.for.end_crit_edge ]
  %96 = ptrtoint ptr %curr_column to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %curr_column, align 8
  %add38 = add i32 %97, %6
  store i32 %add38, ptr %curr_column, align 8
  %sub39 = sub i32 %len.addr.0108, %6
  %tobool10.not = icmp eq i32 %sub39, 0
  br i1 %tobool10.not, label %for.end.cleanup_crit_edge, label %for.end.while.body_crit_edge

for.end.while.body_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %for.cond.i83.cleanup.sink.split_crit_edge, %if.then.i.cleanup.sink.split_crit_edge, %for.cond.i72.cleanup.sink.split_crit_edge, %for.cond.i.cleanup.sink.split_crit_edge
  %.str.6.sink = phi ptr [ @.str.6, %for.cond.i83.cleanup.sink.split_crit_edge ], [ @.str.33, %for.cond.i72.cleanup.sink.split_crit_edge ], [ @.str.6, %for.cond.i.cleanup.sink.split_crit_edge ], [ @.str.30, %if.then.i.cleanup.sink.split_crit_edge ]
  %call4.i90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.6.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.end.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c", i32 423, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @bcm47xxnflash_ops_bcm4706_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @bcm47xxnflash_ops_bcm4706_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c", i32 431, i32 3}
!8 = !{ptr @bcm47xxnflash_ops_bcm4706_init._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @bcm47xxnflash_ops_bcm4706_init._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c", i32 55, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @bcm47xxnflash_ops_bcm4706_ctl_cmd._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @bcm47xxnflash_ops_bcm4706_ctl_cmd._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c", i32 235, i32 4}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry.10, !21, !"_entry", i1 false, i1 false}
!21 = !{!"../drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c", i32 250, i32 5}
!22 = !{ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry_ptr.11, !21, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c", i32 262, i32 4}
!25 = !{ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry.12, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry_ptr.14, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c", i32 276, i32 4}
!29 = !{ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry.15, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry_ptr.17, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c", i32 291, i32 4}
!33 = !{ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry.18, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry_ptr.20, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c", i32 296, i32 4}
!37 = !{ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry.21, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry_ptr.23, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c", i32 298, i32 4}
!41 = !{ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry.24, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry_ptr.26, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.28, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c", i32 301, i32 3}
!45 = !{ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry.27, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @bcm47xxnflash_ops_bcm4706_cmdfunc._entry_ptr.29, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.30, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c", i32 69, i32 5}
!49 = !{ptr @.str.31, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @bcm47xxnflash_ops_bcm4706_poll._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @bcm47xxnflash_ops_bcm4706_poll._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.33, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c", i32 77, i32 2}
!54 = !{ptr @bcm47xxnflash_ops_bcm4706_poll._entry.32, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @bcm47xxnflash_ops_bcm4706_poll._entry_ptr.34, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.35, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c", i32 317, i32 4}
!58 = !{ptr @.str.36, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @bcm47xxnflash_ops_bcm4706_read_byte._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @bcm47xxnflash_ops_bcm4706_read_byte._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.38, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c", i32 331, i32 2}
!63 = !{ptr @bcm47xxnflash_ops_bcm4706_read_byte._entry.37, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @bcm47xxnflash_ops_bcm4706_read_byte._entry_ptr.39, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.40, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c", i32 348, i32 2}
!67 = !{ptr @.str.41, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @bcm47xxnflash_ops_bcm4706_read_buf._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @bcm47xxnflash_ops_bcm4706_read_buf._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.42, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c", i32 363, i32 2}
!72 = !{ptr @.str.43, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @bcm47xxnflash_ops_bcm4706_write_buf._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @bcm47xxnflash_ops_bcm4706_write_buf._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.44, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c", i32 157, i32 4}
!77 = !{ptr @.str.45, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @bcm47xxnflash_ops_bcm4706_write._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @bcm47xxnflash_ops_bcm4706_write._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{i32 0, i32 33}
!90 = !{!"branch_weights", i32 2000, i32 1}
!91 = !{i64 2155134980, i64 2155135493, i64 2155135017, i64 2155135073, i64 2155135107, i64 2155135131, i64 2155135172, i64 2155135193, i64 2155135221, i64 2155135255}
!92 = !{i64 2155131663, i64 2155132175, i64 2155131700, i64 2155131756, i64 2155131790, i64 2155131814, i64 2155131855, i64 2155131876, i64 2155131904, i64 2155131938}

; ModuleID = '/llk/IR_all_yes/drivers/scsi/mvsas/mv_64xx.c_pt.bc'
source_filename = "../drivers/scsi/mvsas/mv_64xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mvs_dispatch = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mvs_info = type { i32, %struct.spinlock, ptr, ptr, ptr, ptr, [8 x i8], ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, i32, ptr, i32, i32, ptr, i32, ptr, [8 x %struct.mvs_phy], [8 x %struct.mvs_port], i32, i64, ptr, %struct.list_head, %struct.list_head, i32, i16, i32, i32, ptr, %struct.hba_info_page, [1024 x %struct.mvs_device], ptr, i32, ptr, i32, ptr, [0 x %struct.mvs_slot_info] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mvs_phy = type { ptr, ptr, %struct.asd_sas_phy, %struct.sas_identify, ptr, %struct.timer_list, i64, i64, i32, i32, i32, i32, i32, i32, [32 x i8], i8, i8, [2 x i8], i32, i32, i32 }
%struct.asd_sas_phy = type { %struct.atomic_t, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [8 x i8], %struct.spinlock, ptr, i32, %struct.spinlock, i32, %struct.list_head, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.sas_identify = type { i32, i32, i32, i64, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mvs_port = type { %struct.asd_sas_port, i8, i8, %struct.list_head }
%struct.asd_sas_port = type { %struct.sas_discovery, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.sas_work, i32, i32, i32, [8 x i8], [8 x i8], i32, i32, i32, %struct.spinlock, %struct.list_head, i32, i32, ptr, ptr, ptr }
%struct.sas_discovery = type { [4 x %struct.sas_discovery_event], i32, [8 x i8], [8 x i8], [8 x i8], i32 }
%struct.sas_discovery_event = type { %struct.sas_work, ptr }
%struct.sas_work = type { %struct.list_head, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.hba_info_page = type { [4 x i8], [13 x i32], [8 x i64], [8 x %struct.ffe_control], [12 x i32], [8 x i8], [8 x %struct.phy_tuning], [10 x i32] }
%struct.ffe_control = type { i8 }
%struct.phy_tuning = type { i16, [2 x i8] }
%struct.mvs_device = type { %struct.list_head, i32, ptr, ptr, i32, i32, i32, i8, i8, i16 }
%struct.mvs_slot_info = type { %struct.list_head, %union.anon.95, i32, i32, i32, ptr, i32, ptr, ptr, ptr, ptr }
%union.anon.95 = type { ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%union.anon.78 = type { ptr }
%struct.mvs_chip_info = type { i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.mvs_prd = type { i64, i32, i32 }
%struct.sas_phy_linkrates = type { i32, i32 }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mv64xx\00", [25 x i8] zeroinitializer }, align 32
@mvs_64xx_dispatch = dso_local constant { %struct.mvs_dispatch, [48 x i8] } { %struct.mvs_dispatch { ptr @.str, ptr @mvs_64xx_init, ptr null, ptr @mvs_64xx_ioremap, ptr @mvs_64xx_iounmap, ptr @mvs_64xx_isr, ptr @mvs_64xx_isr_status, ptr @mvs_64xx_interrupt_enable, ptr @mvs_64xx_interrupt_disable, ptr @mvs_read_phy_ctl, ptr @mvs_write_phy_ctl, ptr @mvs_read_port_cfg_data, ptr @mvs_write_port_cfg_data, ptr @mvs_write_port_cfg_addr, ptr @mvs_read_port_vsr_data, ptr @mvs_write_port_vsr_data, ptr @mvs_write_port_vsr_addr, ptr @mvs_read_port_irq_stat, ptr @mvs_write_port_irq_stat, ptr @mvs_read_port_irq_mask, ptr @mvs_write_port_irq_mask, ptr @mvs_64xx_command_active, ptr @mvs_64xx_clear_srs_irq, ptr @mvs_64xx_issue_stop, ptr @mvs_start_delivery, ptr @mvs_rx_update, ptr @mvs_int_full, ptr @mvs_64xx_assign_reg_set, ptr @mvs_64xx_free_reg_set, ptr @mvs_get_prd_size, ptr @mvs_get_prd_count, ptr @mvs_64xx_make_prd, ptr @mvs_64xx_detect_porttype, ptr @mvs_64xx_oob_done, ptr @mvs_64xx_fix_phy_info, ptr @mvs_64xx_phy_work_around, ptr @mvs_64xx_phy_set_link_rate, ptr @mvs_hw_max_link_rate, ptr @mvs_64xx_phy_disable, ptr @mvs_64xx_phy_enable, ptr @mvs_64xx_phy_reset, ptr @mvs_64xx_stp_reset, ptr @mvs_64xx_clear_active_cmds, ptr @mvs_64xx_spi_read_data, ptr @mvs_64xx_spi_write_data, ptr @mvs_64xx_spi_buildcmd, ptr @mvs_64xx_spi_issuecmd, ptr @mvs_64xx_spi_waitdataready, ptr @mvs_64xx_fix_dma, ptr @mvs_64xx_tune_interrupt, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@interrupt_coalescing = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UnKnown\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.5\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"5.0\00", [28 x i8] zeroinitializer }, align 32
@__const.mvs_show_pcie_usage.spd = private unnamed_addr constant [3 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3], align 4
@mvs_show_pcie_usage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 245, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"mvsas: PCI-E x%u, Bandwidth Usage: %s Gbps\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mvs_show_pcie_usage\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/scsi/mvsas/mv_chips.h\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mvs_show_pcie_usage._entry_ptr = internal global ptr @mvs_show_pcie_usage._entry, section ".printk_index", align 4
@mvs_64xx_chip_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 188, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HBA reset failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mvs_64xx_chip_reset\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/scsi/mvsas/mv_64xx.c\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mvs_64xx_chip_reset._entry_ptr = internal global ptr @mvs_64xx_chip_reset._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mvs_64xx_clear_srs_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.11, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017check SRS 0 %08X.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mvs_64xx_clear_srs_irq\00", [41 x i8] zeroinitializer }, align 32
@mvs_64xx_clear_srs_irq._entry_ptr = internal global ptr @mvs_64xx_clear_srs_irq._entry, section ".printk_index", align 4
@mvs_64xx_clear_srs_irq._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.11, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017register set 0x%x was stopped.\0A\00", [62 x i8] zeroinitializer }, align 32
@mvs_64xx_clear_srs_irq._entry_ptr.17 = internal global ptr @mvs_64xx_clear_srs_irq._entry.15, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 762, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [18 x i8] c"mvs_64xx_dispatch\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 761, i32 27 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 231, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 232, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 233, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [33 x i8] c"../drivers/scsi/mvsas/mv_chips.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 242, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 188, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 131, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [32 x i8] c"../drivers/scsi/mvsas/mv_64xx.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 137, i32 4 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @mvs_64xx_chip_reset._entry, ptr @mvs_64xx_chip_reset._entry_ptr, ptr @mvs_64xx_clear_srs_irq._entry, ptr @mvs_64xx_clear_srs_irq._entry.15, ptr @mvs_64xx_clear_srs_irq._entry_ptr, ptr @mvs_64xx_clear_srs_irq._entry_ptr.17, ptr @mvs_show_pcie_usage._entry, ptr @mvs_show_pcie_usage._entry_ptr, ptr @.str, ptr @mvs_64xx_dispatch, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_64xx_dispatch to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_show_pcie_usage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_64xx_chip_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_64xx_clear_srs_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_64xx_clear_srs_irq._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvs_64xx_init(ptr noundef %mvi) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  %link_stat.i = alloca i16, align 2
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #9
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp, align 4, !annotation !43
  %pdev = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 2
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %revision = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 12
  %5 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp = icmp eq i8 %6, 0
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %mvi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mvi, align 8
  %or = or i32 %8, 2
  store i32 %or, ptr %mvi, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %mvi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mvi, align 8
  %and = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %lor.lhs.false.i, label %if.else

lor.lhs.false.i:                                  ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %link_stat.i) #9
  %11 = ptrtoint ptr %link_stat.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %link_stat.i, align 2, !annotation !43
  %id.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 25
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not.i = icmp eq i32 %13, 0
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false.i.mvs_show_pcie_usage.exit_crit_edge

lor.lhs.false.i.mvs_show_pcie_usage.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mvs_show_pcie_usage.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call i32 @pci_read_config_word(ptr noundef %4, i32 noundef 242, ptr noundef nonnull %link_stat.i) #9
  %14 = ptrtoint ptr %link_stat.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %link_stat.i, align 2
  %and1.i = and i16 %15, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %and1.i)
  %cmp4.i = icmp ugt i16 %and1.i, 2
  %spec.store.select.i = select i1 %cmp4.i, i16 0, i16 %and1.i
  %dev.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 3
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %18 = lshr i16 %15, 4
  %19 = and i16 %18, 63
  %20 = zext i16 %19 to i32
  %idxprom.i = zext i16 %spec.store.select.i to i32
  %arrayidx.i = getelementptr [3 x ptr], ptr @__const.mvs_show_pcie_usage.spd, i32 0, i32 %idxprom.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %17, ptr noundef nonnull @.str.4, i32 noundef %20, ptr noundef %22) #12
  br label %mvs_show_pcie_usage.exit

mvs_show_pcie_usage.exit:                         ; preds = %if.end.i, %lor.lhs.false.i.mvs_show_pcie_usage.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %link_stat.i) #9
  %23 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !44
  call void @arm_heavy_mb() #9
  %add.ptr.i = getelementptr i8, ptr %24, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !45
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !46
  %26 = call i32 @llvm.bswap.i32(i32 %25) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !47
  %27 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %tmp.i, align 4
  %and.i391 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i391)
  %tobool.not.i392 = icmp eq i32 %and.i391, 0
  br i1 %tobool.not.i392, label %if.then.i, label %mvs_show_pcie_usage.exit.do.body19.i_crit_edge

mvs_show_pcie_usage.exit.do.body19.i_crit_edge:   ; preds = %mvs_show_pcie_usage.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body19.i

if.then.i:                                        ; preds = %mvs_show_pcie_usage.exit
  %28 = ptrtoint ptr %mvi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mvi, align 8
  %and5.i = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.then.i.do.body19.i_crit_edge, label %if.then7.i

if.then.i.do.body19.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body19.i

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev, align 8
  %call8.i = call i32 @pci_read_config_dword(ptr noundef %31, i32 noundef 64, ptr noundef nonnull %tmp.i) #9
  %32 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tmp.i, align 4
  %and9.i = and i32 %33, -251719681
  %or.i = or i32 %and9.i, 61440
  store i32 %or.i, ptr %tmp.i, align 4
  %34 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev, align 8
  %call11.i = call i32 @pci_write_config_dword(ptr noundef %35, i32 noundef 64, i32 noundef %or.i) #9
  %36 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev, align 8
  %call13.i = call i32 @pci_read_config_dword(ptr noundef %37, i32 noundef 144, ptr noundef nonnull %tmp.i) #9
  %38 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tmp.i, align 4
  %and14.i = and i32 %39, -251719681
  %or15.i = or i32 %and14.i, 61440
  store i32 %or15.i, ptr %tmp.i, align 4
  %40 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev, align 8
  %call17.i = call i32 @pci_write_config_dword(ptr noundef %41, i32 noundef 144, i32 noundef %or15.i) #9
  br label %do.body19.i

do.body19.i:                                      ; preds = %if.then7.i, %if.then.i.do.body19.i_crit_edge, %mvs_show_pcie_usage.exit.do.body19.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !48
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !45
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !46
  %43 = call i32 @llvm.bswap.i32(i32 %42) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !49
  %44 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %tmp.i, align 4
  %and29.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %do.body33.i, label %do.body19.i.while.cond.i.preheader_crit_edge

do.body19.i.while.cond.i.preheader_crit_edge:     ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.preheader

do.body33.i:                                      ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !50
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #9, !srcloc !45
  %45 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  br label %while.cond.i.preheader

while.cond.i.preheader:                           ; preds = %do.body33.i, %do.body19.i.while.cond.i.preheader_crit_edge
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %while.cond.i.preheader
  %i.0.i = phi i32 [ %dec.i, %while.body.i.while.cond.i_crit_edge ], [ 1000, %while.cond.i.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i)
  %cmp.not.i394 = icmp eq i32 %i.0.i, 0
  br i1 %cmp.not.i394, label %while.cond.i.while.end.i_crit_edge, label %while.body.i

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %dec.i = add nsw i32 %i.0.i, -1
  call void @msleep(i32 noundef 10) #9
  %46 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  %47 = and i32 %46, 16777216
  %tobool53.not.i = icmp eq i32 %47, 0
  br i1 %tobool53.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %while.cond.i.while.end.i_crit_edge
  %48 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !53
  %49 = and i32 %48, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool63.not.i = icmp eq i32 %49, 0
  br i1 %tobool63.not.i, label %mvs_64xx_chip_reset.exit.thread, label %mvs_64xx_chip_reset.exit

mvs_64xx_chip_reset.exit.thread:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  %50 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %tmp, align 4
  br label %if.end16

mvs_64xx_chip_reset.exit:                         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i395 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 3
  %51 = ptrtoint ptr %dev.i395 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i395, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %52, ptr noundef nonnull @.str.9) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %1, i32 64
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !54
  %54 = and i32 %53, -15728656
  %55 = or i32 %54, 15728640
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  %57 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %tmp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !55
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %55) #9, !srcloc !45
  br label %if.end16

if.end16:                                         ; preds = %if.else, %mvs_64xx_chip_reset.exit.thread
  %add.ptr19 = getelementptr i8, ptr %1, i32 256
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #9, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !56
  %59 = and i32 %58, -65536
  %60 = call i32 @llvm.bswap.i32(i32 %59)
  %and24 = and i32 %60, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %do.body30, label %if.end16.if.end43_crit_edge

if.end16.if.end43_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

do.body30:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !57
  call void @arm_heavy_mb() #9
  %or33 = or i32 %60, 32
  %61 = call i32 @llvm.bswap.i32(i32 %or33)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %61) #9, !srcloc !45
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #9, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !58
  br label %if.end43

if.end43:                                         ; preds = %do.body30, %if.end16.if.end43_crit_edge
  %63 = ptrtoint ptr %mvi to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mvi, align 8
  %and45 = and i32 %64, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.then47, label %if.else66

if.then47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pdev, align 8
  %call49 = call i32 @pci_read_config_dword(ptr noundef %66, i32 noundef 232, ptr noundef nonnull %tmp) #9
  %67 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tmp, align 4
  %and50 = and i32 %68, -28673
  %or51 = or i32 %and50, 16384
  store i32 %or51, ptr %tmp, align 4
  %69 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pdev, align 8
  %call53 = call i32 @pci_write_config_dword(ptr noundef %70, i32 noundef 232, i32 noundef %or51) #9
  %71 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pdev, align 8
  %call55 = call i32 @pci_read_config_dword(ptr noundef %72, i32 noundef 64, ptr noundef nonnull %tmp) #9
  %73 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tmp, align 4
  %and57 = and i32 %74, -251719681
  store i32 %and57, ptr %tmp, align 4
  %75 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pdev, align 8
  %call59 = call i32 @pci_write_config_dword(ptr noundef %76, i32 noundef 64, i32 noundef %and57) #9
  %77 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pdev, align 8
  %call61 = call i32 @pci_read_config_dword(ptr noundef %78, i32 noundef 144, ptr noundef nonnull %tmp) #9
  %79 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tmp, align 4
  %and62 = and i32 %80, 251658240
  store i32 %and62, ptr %tmp, align 4
  %81 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pdev, align 8
  %call65 = call i32 @pci_write_config_dword(ptr noundef %82, i32 noundef 144, i32 noundef %and62) #9
  br label %do.body87

if.else66:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr69 = getelementptr i8, ptr %1, i32 64
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69) #9, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !59
  %84 = and i32 %83, -15793936
  %85 = or i32 %84, 65280
  %86 = call i32 @llvm.bswap.i32(i32 %85)
  %87 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %tmp, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !60
  call void @arm_heavy_mb() #9
  %88 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tmp, align 4
  %90 = call i32 @llvm.bswap.i32(i32 %89)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 %90) #9, !srcloc !45
  call void @msleep(i32 noundef 100) #9
  %91 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tmp, align 4
  %and81 = and i32 %92, -983041
  store i32 %and81, ptr %tmp, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !61
  call void @arm_heavy_mb() #9
  %93 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %tmp, align 4
  %95 = call i32 @llvm.bswap.i32(i32 %94)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 %95) #9, !srcloc !45
  call void @msleep(i32 noundef 100) #9
  br label %do.body87

do.body87:                                        ; preds = %if.else66, %if.then47
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !62
  call void @arm_heavy_mb() #9
  %add.ptr90 = getelementptr i8, ptr %1, i32 260
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90, i32 0) #9, !srcloc !45
  %96 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regs1, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !63
  call void @arm_heavy_mb() #9
  %add.ptr.i.i.i = getelementptr i8, ptr %97, i32 440
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 402718720) #9, !srcloc !45
  %add.ptr2.i.i.i = getelementptr i8, ptr %97, i32 444
  %98 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #9, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !64
  %99 = and i32 %98, -393217
  %100 = or i32 %99, 262144
  %101 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regs1, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !65
  call void @arm_heavy_mb() #9
  %add.ptr.i16.i.i = getelementptr i8, ptr %102, i32 440
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i.i, i32 402718720) #9, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !66
  call void @arm_heavy_mb() #9
  %add.ptr5.i.i.i = getelementptr i8, ptr %102, i32 444
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i.i, i32 %100) #9, !srcloc !45
  %103 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regs1, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !65
  call void @arm_heavy_mb() #9
  %add.ptr.i18.i.i = getelementptr i8, ptr %104, i32 440
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i.i, i32 671154176) #9, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !66
  call void @arm_heavy_mb() #9
  %add.ptr5.i19.i.i = getelementptr i8, ptr %104, i32 444
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i19.i.i, i32 2139029504) #9, !srcloc !45
  %105 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regs1, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !63
  call void @arm_heavy_mb() #9
  %add.ptr.i21.i.i = getelementptr i8, ptr %106, i32 440
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i.i, i32 604045312) #9, !srcloc !45
  %add.ptr2.i22.i.i = getelementptr i8, ptr %106, i32 444
  %107 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i22.i.i) #9, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !64
  %108 = and i32 %107, 65535
  %109 = or i32 %108, -12648448
  %110 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regs1, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !65
  call void @arm_heavy_mb() #9
  %add.ptr.i24.i.i = getelementptr i8, ptr %111, i32 440
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i.i, i32 604045312) #9, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !66
  call void @arm_heavy_mb() #9
  %add.ptr5.i25.i.i = getelementptr i8, ptr %111, i32 444
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i25.i.i, i32 %109) #9, !srcloc !45
  %112 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regs1, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !65
  call void @arm_heavy_mb() #9
  %add.ptr.i27.i.i = getelementptr i8, ptr %113, i32 440
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i, i32 1006698496) #9, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !66
  call void @arm_heavy_mb() #9
  %add.ptr5.i28.i.i = getelementptr i8, ptr %113, i32 444
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i28.i.i, i32 31232) #9, !srcloc !45
  %114 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regs1, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !65
  call void @arm_heavy_mb() #9
  %add.ptr.i30.i.i = getelementptr i8, ptr %115, i32 440
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i.i, i32 -1543438336) #9, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !66
  call void @arm_heavy_mb() #9
  %add.ptr5.i31.i.i = getelementptr i8, ptr %115, i32 444
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i31.i.i, i32 2109730815) #9, !srcloc !45
  %116 = ptrtoint ptr %mvi to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %mvi, align 8
  %and.i397 = and i32 %117, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i397)
  %tobool.not.i398 = icmp eq i32 %and.i397, 0
  br i1 %tobool.not.i398, label %do.body87.do.body.i.i.i_crit_edge, label %do.body.i

do.body87.do.body.i.i.i_crit_edge:                ; preds = %do.body87
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %do.body87.do.body.i.i.i_crit_edge
  %i.0121.i = phi i32 [ %inc.i, %do.body.i.i.i.do.body.i.i.i_crit_edge ], [ 0, %do.body87.do.body.i.i.i_crit_edge ]
  %118 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regs1, align 8
  %add.ptr.i.i31.i = getelementptr i8, ptr %119, i32 480
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  call void @arm_heavy_mb() #9
  %mul.i.i.i = shl nuw nsw i32 %i.0121.i, 3
  %add.ptr5.i.i32.i = getelementptr i8, ptr %add.ptr.i.i31.i, i32 %mul.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i32.i, i32 134217728) #9, !srcloc !45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %120 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %120(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %121 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %121(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %122 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %122(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %123 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %123(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %124 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %124(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %125 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %125(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %126 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %126(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %127 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %127(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %128 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %128(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %129 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %129(i32 noundef 214748000) #9
  %130 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %regs1, align 8
  %add.ptr.i.i35.i = getelementptr i8, ptr %131, i32 484
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  call void @arm_heavy_mb() #9
  %add.ptr5.i.i37.i = getelementptr i8, ptr %add.ptr.i.i35.i, i32 %mul.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i37.i, i32 -268304384) #9, !srcloc !45
  %inc.i = add nuw nsw i32 %i.0121.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %do.body.i.i.i.mvs_64xx_phy_hacks.exit_crit_edge, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i

do.body.i.i.i.mvs_64xx_phy_hacks.exit_crit_edge:  ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mvs_64xx_phy_hacks.exit

do.body.i:                                        ; preds = %do.body87
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !68
  call void @arm_heavy_mb() #9
  %add.ptr.i399 = getelementptr i8, ptr %97, i32 160
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i399, i32 0) #9, !srcloc !45
  %chip.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 20
  %132 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %chip.i, align 4
  %n_phy117.i = getelementptr inbounds %struct.mvs_chip_info, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %n_phy117.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %n_phy117.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %cmp3118.not.i = icmp eq i32 %135, 0
  br i1 %cmp3118.not.i, label %do.body.i.mvs_64xx_phy_hacks.exit_crit_edge, label %do.body.i.for.body4.i_crit_edge

do.body.i.for.body4.i_crit_edge:                  ; preds = %do.body.i
  br label %for.body4.i

do.body.i.mvs_64xx_phy_hacks.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mvs_64xx_phy_hacks.exit

for.body4.i:                                      ; preds = %mvs_write_port_vsr_data.exit115.i.for.body4.i_crit_edge, %do.body.i.for.body4.i_crit_edge
  %i.1119.i = phi i32 [ %inc6.i, %mvs_write_port_vsr_data.exit115.i.for.body4.i_crit_edge ], [ 0, %do.body.i.for.body4.i_crit_edge ]
  %136 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regs1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.1119.i)
  %cmp.i.i45.i = icmp ult i32 %i.1119.i, 4
  br i1 %cmp.i.i45.i, label %do.body.i.i49.i, label %do.body6.i.i54.i

do.body.i.i49.i:                                  ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i46.i = getelementptr i8, ptr %137, i32 480
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  call void @arm_heavy_mb() #9
  %mul.i.i47.i = shl nuw nsw i32 %i.1119.i, 3
  %add.ptr5.i.i48.i = getelementptr i8, ptr %add.ptr.i.i46.i, i32 %mul.i.i47.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i48.i, i32 117440512) #9, !srcloc !45
  br label %mvs_write_port_vsr_addr.exit55.i

do.body6.i.i54.i:                                 ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr4.i.i50.i = getelementptr i8, ptr %137, i32 592
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !69
  call void @arm_heavy_mb() #9
  %sub.i.i51.i = shl i32 %i.1119.i, 3
  %mul9.i.i52.i = add i32 %sub.i.i51.i, -32
  %add.ptr10.i.i53.i = getelementptr i8, ptr %add.ptr4.i.i50.i, i32 %mul9.i.i52.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i53.i, i32 117440512) #9, !srcloc !45
  br label %mvs_write_port_vsr_addr.exit55.i

mvs_write_port_vsr_addr.exit55.i:                 ; preds = %do.body6.i.i54.i, %do.body.i.i49.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %138 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %138(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %139 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %139(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %140 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %140(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %141 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %141(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %142 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %142(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %143 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %143(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %144 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %144(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %145 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %145(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %146 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %146(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %147 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %147(i32 noundef 214748000) #9
  %148 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %regs1, align 8
  br i1 %cmp.i.i45.i, label %do.body.i.i73.i, label %do.body6.i.i78.i

do.body.i.i73.i:                                  ; preds = %mvs_write_port_vsr_addr.exit55.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i58.i = getelementptr i8, ptr %149, i32 484
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  call void @arm_heavy_mb() #9
  %mul.i.i59.i = shl nuw nsw i32 %i.1119.i, 3
  %add.ptr5.i.i60.i = getelementptr i8, ptr %add.ptr.i.i58.i, i32 %mul.i.i59.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i60.i, i32 144) #9, !srcloc !45
  %150 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %regs1, align 8
  %add.ptr.i.i70.i = getelementptr i8, ptr %151, i32 480
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  call void @arm_heavy_mb() #9
  %add.ptr5.i.i72.i = getelementptr i8, ptr %add.ptr.i.i70.i, i32 %mul.i.i59.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i72.i, i32 150994944) #9, !srcloc !45
  br label %mvs_write_port_vsr_addr.exit79.i

do.body6.i.i78.i:                                 ; preds = %mvs_write_port_vsr_addr.exit55.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr4.i.i62.i = getelementptr i8, ptr %149, i32 596
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !69
  call void @arm_heavy_mb() #9
  %sub.i.i63.i = shl i32 %i.1119.i, 3
  %mul9.i.i64.i = add i32 %sub.i.i63.i, -32
  %add.ptr10.i.i65.i = getelementptr i8, ptr %add.ptr4.i.i62.i, i32 %mul9.i.i64.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i65.i, i32 144) #9, !srcloc !45
  %152 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %regs1, align 8
  %add.ptr4.i.i74.i = getelementptr i8, ptr %153, i32 592
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !69
  call void @arm_heavy_mb() #9
  %add.ptr10.i.i77.i = getelementptr i8, ptr %add.ptr4.i.i74.i, i32 %mul9.i.i64.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i77.i, i32 150994944) #9, !srcloc !45
  br label %mvs_write_port_vsr_addr.exit79.i

mvs_write_port_vsr_addr.exit79.i:                 ; preds = %do.body6.i.i78.i, %do.body.i.i73.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %154 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %154(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %155 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %155(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %156 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %156(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %157 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %157(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %158 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %158(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %159 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %159(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %160 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %160(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %161 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %161(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %162 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %162(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %163 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %163(i32 noundef 214748000) #9
  %164 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %regs1, align 8
  br i1 %cmp.i.i45.i, label %do.body.i.i97.i, label %do.body6.i.i102.i

do.body.i.i97.i:                                  ; preds = %mvs_write_port_vsr_addr.exit79.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i82.i = getelementptr i8, ptr %165, i32 484
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  call void @arm_heavy_mb() #9
  %mul.i.i83.i = shl nuw nsw i32 %i.1119.i, 3
  %add.ptr5.i.i84.i = getelementptr i8, ptr %add.ptr.i.i82.i, i32 %mul.i.i83.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i84.i, i32 -229638144) #9, !srcloc !45
  %166 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %regs1, align 8
  %add.ptr.i.i94.i = getelementptr i8, ptr %167, i32 480
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  call void @arm_heavy_mb() #9
  %add.ptr5.i.i96.i = getelementptr i8, ptr %add.ptr.i.i94.i, i32 %mul.i.i83.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i96.i, i32 184549376) #9, !srcloc !45
  br label %mvs_write_port_vsr_addr.exit103.i

do.body6.i.i102.i:                                ; preds = %mvs_write_port_vsr_addr.exit79.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr4.i.i86.i = getelementptr i8, ptr %165, i32 596
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !69
  call void @arm_heavy_mb() #9
  %sub.i.i87.i = shl i32 %i.1119.i, 3
  %mul9.i.i88.i = add i32 %sub.i.i87.i, -32
  %add.ptr10.i.i89.i = getelementptr i8, ptr %add.ptr4.i.i86.i, i32 %mul9.i.i88.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i89.i, i32 -229638144) #9, !srcloc !45
  %168 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %regs1, align 8
  %add.ptr4.i.i98.i = getelementptr i8, ptr %169, i32 592
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !69
  call void @arm_heavy_mb() #9
  %add.ptr10.i.i101.i = getelementptr i8, ptr %add.ptr4.i.i98.i, i32 %mul9.i.i88.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i101.i, i32 184549376) #9, !srcloc !45
  br label %mvs_write_port_vsr_addr.exit103.i

mvs_write_port_vsr_addr.exit103.i:                ; preds = %do.body6.i.i102.i, %do.body.i.i97.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %170 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %170(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %171 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %171(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %172 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %172(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %173 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %173(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %174 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %174(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %175 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %175(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %176 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %176(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %177 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %177(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %178 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %178(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %179 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %179(i32 noundef 214748000) #9
  %180 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %regs1, align 8
  br i1 %cmp.i.i45.i, label %do.body.i.i109.i, label %do.body6.i.i114.i

do.body.i.i109.i:                                 ; preds = %mvs_write_port_vsr_addr.exit103.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i106.i = getelementptr i8, ptr %181, i32 484
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  call void @arm_heavy_mb() #9
  %mul.i.i107.i = shl nuw nsw i32 %i.1119.i, 3
  %add.ptr5.i.i108.i = getelementptr i8, ptr %add.ptr.i.i106.i, i32 %mul.i.i107.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i108.i, i32 234881024) #9, !srcloc !45
  br label %mvs_write_port_vsr_data.exit115.i

do.body6.i.i114.i:                                ; preds = %mvs_write_port_vsr_addr.exit103.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr4.i.i110.i = getelementptr i8, ptr %181, i32 596
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !69
  call void @arm_heavy_mb() #9
  %sub.i.i111.i = shl i32 %i.1119.i, 3
  %mul9.i.i112.i = add i32 %sub.i.i111.i, -32
  %add.ptr10.i.i113.i = getelementptr i8, ptr %add.ptr4.i.i110.i, i32 %mul9.i.i112.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i113.i, i32 234881024) #9, !srcloc !45
  br label %mvs_write_port_vsr_data.exit115.i

mvs_write_port_vsr_data.exit115.i:                ; preds = %do.body6.i.i114.i, %do.body.i.i109.i
  %inc6.i = add nuw i32 %i.1119.i, 1
  %182 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %chip.i, align 4
  %n_phy.i = getelementptr inbounds %struct.mvs_chip_info, ptr %183, i32 0, i32 1
  %184 = ptrtoint ptr %n_phy.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %n_phy.i, align 4
  %cmp3.i = icmp ult i32 %inc6.i, %185
  br i1 %cmp3.i, label %mvs_write_port_vsr_data.exit115.i.for.body4.i_crit_edge, label %mvs_write_port_vsr_data.exit115.i.mvs_64xx_phy_hacks.exit_crit_edge

mvs_write_port_vsr_data.exit115.i.mvs_64xx_phy_hacks.exit_crit_edge: ; preds = %mvs_write_port_vsr_data.exit115.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mvs_64xx_phy_hacks.exit

mvs_write_port_vsr_data.exit115.i.for.body4.i_crit_edge: ; preds = %mvs_write_port_vsr_data.exit115.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body4.i

mvs_64xx_phy_hacks.exit:                          ; preds = %mvs_write_port_vsr_data.exit115.i.mvs_64xx_phy_hacks.exit_crit_edge, %do.body.i.mvs_64xx_phy_hacks.exit_crit_edge, %do.body.i.i.i.mvs_64xx_phy_hacks.exit_crit_edge
  %186 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %regs1, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !63
  call void @arm_heavy_mb() #9
  %add.ptr.i402 = getelementptr i8, ptr %187, i32 440
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i402, i32 -1207894016) #9, !srcloc !45
  %add.ptr2.i = getelementptr i8, ptr %187, i32 444
  %188 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #9, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !64
  %189 = and i32 %188, -65536
  %190 = or i32 %189, 64000
  %191 = call i32 @llvm.bswap.i32(i32 %190)
  %192 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %191, ptr %tmp, align 4
  %193 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %regs1, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !65
  call void @arm_heavy_mb() #9
  %add.ptr.i404 = getelementptr i8, ptr %194, i32 440
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i404, i32 -1207894016) #9, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !66
  call void @arm_heavy_mb() #9
  %add.ptr5.i = getelementptr i8, ptr %194, i32 444
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %190) #9, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !70
  call void @arm_heavy_mb() #9
  %add.ptr97 = getelementptr i8, ptr %1, i32 160
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97, i32 16711680) #9, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !71
  call void @arm_heavy_mb() #9
  %slot_dma = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 18
  %195 = ptrtoint ptr %slot_dma to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %slot_dma, align 4
  %197 = call i32 @llvm.bswap.i32(i32 %196)
  %add.ptr101 = getelementptr i8, ptr %1, i32 264
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr101, i32 %197) #9, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !72
  call void @arm_heavy_mb() #9
  %add.ptr107 = getelementptr i8, ptr %1, i32 268
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr107, i32 0) #9, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !73
  call void @arm_heavy_mb() #9
  %rx_fis_dma = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 16
  %198 = ptrtoint ptr %rx_fis_dma to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %rx_fis_dma, align 4
  %200 = call i32 @llvm.bswap.i32(i32 %199)
  %add.ptr111 = getelementptr i8, ptr %1, i32 272
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111, i32 %200) #9, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !74
  call void @arm_heavy_mb() #9
  %add.ptr118 = getelementptr i8, ptr %1, i32 276
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr118, i32 0) #9, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  call void @arm_heavy_mb() #9
  %chip = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 20
  %201 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %chip, align 4
  %slot_width = getelementptr inbounds %struct.mvs_chip_info, ptr %202, i32 0, i32 6
  %203 = ptrtoint ptr %slot_width to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %slot_width, align 4
  %shl = shl nuw i32 1, %204
  %205 = call i32 @llvm.bswap.i32(i32 %shl)
  %add.ptr122 = getelementptr i8, ptr %1, i32 288
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr122, i32 %205) #9, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !76
  call void @arm_heavy_mb() #9
  %tx_dma = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 10
  %206 = ptrtoint ptr %tx_dma to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %tx_dma, align 4
  %208 = call i32 @llvm.bswap.i32(i32 %207)
  %add.ptr126 = getelementptr i8, ptr %1, i32 292
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr126, i32 %208) #9, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  call void @arm_heavy_mb() #9
  %add.ptr133 = getelementptr i8, ptr %1, i32 296
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr133, i32 0) #9, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !78
  call void @arm_heavy_mb() #9
  %add.ptr137 = getelementptr i8, ptr %1, i32 308
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr137, i32 262144) #9, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !79
  call void @arm_heavy_mb() #9
  %rx_dma = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 13
  %209 = ptrtoint ptr %rx_dma to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %rx_dma, align 8
  %211 = call i32 @llvm.bswap.i32(i32 %210)
  %add.ptr141 = getelementptr i8, ptr %1, i32 312
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr141, i32 %211) #9, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !80
  call void @arm_heavy_mb() #9
  %add.ptr148 = getelementptr i8, ptr %1, i32 316
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr148, i32 0) #9, !srcloc !45
  %212 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %chip, align 4
  %n_phy440 = getelementptr inbounds %struct.mvs_chip_info, ptr %213, i32 0, i32 1
  %214 = ptrtoint ptr %n_phy440 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %n_phy440, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %cmp150441.not = icmp eq i32 %215, 0
  br i1 %cmp150441.not, label %mvs_64xx_phy_hacks.exit.for.end_crit_edge, label %mvs_64xx_phy_hacks.exit.for.body_crit_edge

mvs_64xx_phy_hacks.exit.for.body_crit_edge:       ; preds = %mvs_64xx_phy_hacks.exit
  br label %for.body

mvs_64xx_phy_hacks.exit.for.end_crit_edge:        ; preds = %mvs_64xx_phy_hacks.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %mvs_64xx_phy_hacks.exit.for.body_crit_edge
  %i.0442 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %mvs_64xx_phy_hacks.exit.for.body_crit_edge ]
  %dev_sas_addr = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i.0442, i32 6
  %216 = ptrtoint ptr %dev_sas_addr to i32
  call void @__asan_load8_noabort(i32 %216)
  %217 = load i64, ptr %dev_sas_addr, align 8
  call void @mvs_set_sas_addr(ptr noundef %mvi, i32 noundef %i.0442, i32 noundef 4, i32 noundef 8, i64 noundef %217) #9
  %218 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %regs1, align 8
  %add.ptr.i406 = getelementptr i8, ptr %219, i32 260
  %220 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i406) #9, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !81
  %221 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %chip, align 4
  %n_phy.i408 = getelementptr inbounds %struct.mvs_chip_info, ptr %222, i32 0, i32 1
  %223 = ptrtoint ptr %n_phy.i408 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %n_phy.i408, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %224)
  %cmp.i = icmp ult i32 %224, 5
  %add.pn.v.i = select i1 %cmp.i, i32 12, i32 8
  %add.pn.i = add i32 %add.pn.v.i, %i.0442
  %225 = call i32 @llvm.bswap.i32(i32 %220) #9
  %shl.pn.i = shl nuw i32 1, %add.pn.i
  %tmp.0.i = or i32 %shl.pn.i, %225
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  call void @arm_heavy_mb() #9
  %226 = call i32 @llvm.bswap.i32(i32 %tmp.0.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i406, i32 %226) #9, !srcloc !45
  call void @mvs_64xx_phy_reset(ptr noundef %mvi, i32 noundef %i.0442, i32 noundef 1)
  call void @msleep(i32 noundef 500) #9
  %227 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %regs1, align 8
  %add.ptr.i410 = getelementptr i8, ptr %228, i32 160
  %229 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i410) #9, !srcloc !46
  %230 = lshr i32 %229, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  %phy_type.i = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i.0442, i32 10
  %231 = ptrtoint ptr %phy_type.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %phy_type.i, align 8
  %and.i411 = and i32 %232, -4
  %shl.i = shl nuw i32 1, %i.0442
  %and5.i412 = and i32 %230, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i412)
  %tobool.not.i413 = icmp eq i32 %and5.i412, 0
  %storemerge.v.i = select i1 %tobool.not.i413, i32 1, i32 2
  %storemerge.i = or i32 %storemerge.v.i, %and.i411
  %233 = ptrtoint ptr %phy_type.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %storemerge.i, ptr %phy_type.i, align 8
  %inc = add nuw i32 %i.0442, 1
  %234 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %chip, align 4
  %n_phy = getelementptr inbounds %struct.mvs_chip_info, ptr %235, i32 0, i32 1
  %236 = ptrtoint ptr %n_phy to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %n_phy, align 4
  %cmp150 = icmp ult i32 %inc, %237
  br i1 %cmp150, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %mvs_64xx_phy_hacks.exit.for.end_crit_edge
  %238 = ptrtoint ptr %mvi to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %mvi, align 8
  %and153 = and i32 %239, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp eq i32 %and153, 0
  br i1 %tobool154.not, label %for.end.if.end188_crit_edge, label %do.body156

for.end.if.end188_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end188

do.body156:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !84
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 8388622) #9, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !85
  call void @arm_heavy_mb() #9
  %add.ptr163 = getelementptr i8, ptr %1, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr163, i32 134217817) #9, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !86
  call void @arm_heavy_mb() #9
  %add.ptr167 = getelementptr i8, ptr %1, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr167, i32 536870912) #9, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !87
  call void @arm_heavy_mb() #9
  %add.ptr171 = getelementptr i8, ptr %1, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr171, i32 536870912) #9, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !88
  call void @arm_heavy_mb() #9
  %add.ptr175 = getelementptr i8, ptr %1, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr175, i32 536870912) #9, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !89
  call void @arm_heavy_mb() #9
  %add.ptr179 = getelementptr i8, ptr %1, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr179, i32 536870912) #9, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  call void @arm_heavy_mb() #9
  %add.ptr183 = getelementptr i8, ptr %1, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr183, i32 536870912) #9, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !91
  call void @arm_heavy_mb() #9
  %add.ptr187 = getelementptr i8, ptr %1, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr187, i32 536870912) #9, !srcloc !45
  br label %if.end188

if.end188:                                        ; preds = %do.body156, %for.end.if.end188_crit_edge
  %240 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %chip, align 4
  %n_phy191443 = getelementptr inbounds %struct.mvs_chip_info, ptr %241, i32 0, i32 1
  %242 = ptrtoint ptr %n_phy191443 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %n_phy191443, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %243)
  %cmp192444.not = icmp eq i32 %243, 0
  br i1 %cmp192444.not, label %if.end188.for.end199_crit_edge, label %if.end188.for.body194_crit_edge

if.end188.for.body194_crit_edge:                  ; preds = %if.end188
  br label %for.body194

if.end188.for.end199_crit_edge:                   ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end199

for.body194:                                      ; preds = %mvs_write_port_irq_mask.exit.for.body194_crit_edge, %if.end188.for.body194_crit_edge
  %i.1445 = phi i32 [ %inc198, %mvs_write_port_irq_mask.exit.for.body194_crit_edge ], [ 0, %if.end188.for.body194_crit_edge ]
  %244 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %regs1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.1445)
  %cmp.i.i = icmp ult i32 %i.1445, 4
  br i1 %cmp.i.i, label %do.body.i.i428, label %do.body6.i.i433

do.body.i.i428:                                   ; preds = %for.body194
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i = getelementptr i8, ptr %245, i32 352
  %mul.i.i = shl nuw nsw i32 %i.1445, 3
  %add.ptr5.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %246 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #9, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  %247 = and i32 %246, -257
  %248 = call i32 @llvm.bswap.i32(i32 %247)
  %249 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %248, ptr %tmp, align 4
  %250 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %regs1, align 8
  %add.ptr.i.i416 = getelementptr i8, ptr %251, i32 352
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  call void @arm_heavy_mb() #9
  %add.ptr5.i.i418 = getelementptr i8, ptr %add.ptr.i.i416, i32 %mul.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i418, i32 %247) #9, !srcloc !45
  %252 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 29884677, ptr %tmp, align 4
  %253 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %regs1, align 8
  %add.ptr.i.i425 = getelementptr i8, ptr %254, i32 356
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  call void @arm_heavy_mb() #9
  %add.ptr5.i.i427 = getelementptr i8, ptr %add.ptr.i.i425, i32 %mul.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i427, i32 84002817) #9, !srcloc !45
  br label %mvs_write_port_irq_mask.exit

do.body6.i.i433:                                  ; preds = %for.body194
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr4.i.i = getelementptr i8, ptr %245, i32 512
  %sub.i.i = shl i32 %i.1445, 3
  %mul9.i.i = add i32 %sub.i.i, -32
  %add.ptr10.i.i = getelementptr i8, ptr %add.ptr4.i.i, i32 %mul9.i.i
  %255 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i) #9, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  %256 = and i32 %255, -257
  %257 = call i32 @llvm.bswap.i32(i32 %256)
  %258 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %257, ptr %tmp, align 4
  %259 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %regs1, align 8
  %add.ptr4.i.i419 = getelementptr i8, ptr %260, i32 512
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !69
  call void @arm_heavy_mb() #9
  %add.ptr10.i.i422 = getelementptr i8, ptr %add.ptr4.i.i419, i32 %mul9.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i422, i32 %256) #9, !srcloc !45
  %261 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 29884677, ptr %tmp, align 4
  %262 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %regs1, align 8
  %add.ptr4.i.i429 = getelementptr i8, ptr %263, i32 516
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !69
  call void @arm_heavy_mb() #9
  %add.ptr10.i.i432 = getelementptr i8, ptr %add.ptr4.i.i429, i32 %mul9.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i432, i32 84002817) #9, !srcloc !45
  br label %mvs_write_port_irq_mask.exit

mvs_write_port_irq_mask.exit:                     ; preds = %do.body6.i.i433, %do.body.i.i428
  call void @msleep(i32 noundef 100) #9
  call void @mvs_update_phyinfo(ptr noundef %mvi, i32 noundef %i.1445, i32 noundef 1) #9
  %inc198 = add nuw i32 %i.1445, 1
  %264 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %chip, align 4
  %n_phy191 = getelementptr inbounds %struct.mvs_chip_info, ptr %265, i32 0, i32 1
  %266 = ptrtoint ptr %n_phy191 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %n_phy191, align 4
  %cmp192 = icmp ult i32 %inc198, %267
  br i1 %cmp192, label %mvs_write_port_irq_mask.exit.for.body194_crit_edge, label %mvs_write_port_irq_mask.exit.for.end199_crit_edge

mvs_write_port_irq_mask.exit.for.end199_crit_edge: ; preds = %mvs_write_port_irq_mask.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end199

mvs_write_port_irq_mask.exit.for.body194_crit_edge: ; preds = %mvs_write_port_irq_mask.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body194

for.end199:                                       ; preds = %mvs_write_port_irq_mask.exit.for.end199_crit_edge, %if.end188.for.end199_crit_edge
  %268 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #9, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !94
  %269 = and i32 %268, -251658241
  %270 = or i32 %269, 218103808
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %270) #9, !srcloc !45
  %271 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #9, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  %272 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90) #9, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  %273 = and i32 %272, -570425345
  %274 = or i32 %273, 33554432
  %275 = call i32 @llvm.bswap.i32(i32 %274)
  %276 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %275, ptr %tmp, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !98
  call void @arm_heavy_mb() #9
  %277 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %tmp, align 4
  %279 = call i32 @llvm.bswap.i32(i32 %278)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90, i32 %279) #9, !srcloc !45
  %280 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 0, ptr %tmp, align 4
  %281 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %chip, align 4
  %slot_width236 = getelementptr inbounds %struct.mvs_chip_info, ptr %282, i32 0, i32 6
  %283 = ptrtoint ptr %slot_width236 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %slot_width236, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %284)
  %cmp238 = icmp ugt i32 %284, 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  call void @arm_heavy_mb() #9
  br i1 %cmp238, label %do.body241, label %do.body246

do.body241:                                       ; preds = %for.end199
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr244 = getelementptr i8, ptr %1, i32 328
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr244, i32 -16711424) #9, !srcloc !45
  br label %if.end254

do.body246:                                       ; preds = %for.end199
  call void @__sanitizer_cov_trace_pc() #11
  %285 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %chip, align 4
  %slot_width250 = getelementptr inbounds %struct.mvs_chip_info, ptr %286, i32 0, i32 6
  %287 = ptrtoint ptr %slot_width250 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %slot_width250, align 4
  %shl251 = shl nuw i32 1, %288
  %or252 = or i32 %shl251, 65536
  %289 = call i32 @llvm.bswap.i32(i32 %or252)
  %add.ptr253 = getelementptr i8, ptr %1, i32 328
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr253, i32 %289) #9, !srcloc !45
  br label %if.end254

if.end254:                                        ; preds = %do.body246, %do.body241
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @interrupt_coalescing to i32))
  %290 = load i32, ptr @interrupt_coalescing, align 4
  %or255 = or i32 %290, 65536
  %291 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 %or255, ptr %tmp, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !99
  call void @arm_heavy_mb() #9
  %292 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %tmp, align 4
  %294 = call i32 @llvm.bswap.i32(i32 %293)
  %add.ptr259 = getelementptr i8, ptr %1, i32 332
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr259, i32 %294) #9, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr122, i32 0) #9, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  call void @arm_heavy_mb() #9
  %295 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %chip, align 4
  %slot_width268 = getelementptr inbounds %struct.mvs_chip_info, ptr %296, i32 0, i32 6
  %297 = ptrtoint ptr %slot_width268 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %slot_width268, align 4
  %shl269 = shl nuw i32 1, %298
  %or270 = or i32 %shl269, 65536
  %299 = call i32 @llvm.bswap.i32(i32 %or270)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr122, i32 %299) #9, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr137, i32 262400) #9, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90, i32 419495936) #9, !srcloc !45
  %300 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 201391883, ptr %tmp, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  call void @arm_heavy_mb() #9
  %301 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %tmp, align 4
  %303 = call i32 @llvm.bswap.i32(i32 %302)
  %add.ptr283 = getelementptr i8, ptr %1, i32 340
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr283, i32 %303) #9, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !105
  call void @arm_heavy_mb() #9
  %add.ptr287 = getelementptr i8, ptr %1, i32 348
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr287, i32 -65536) #9, !srcloc !45
  br label %cleanup

cleanup:                                          ; preds = %if.end254, %mvs_64xx_chip_reset.exit
  %retval.0 = phi i32 [ 0, %if.end254 ], [ -16, %mvs_64xx_chip_reset.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvs_64xx_ioremap(ptr noundef %mvi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mvs_ioremap(ptr noundef %mvi, i32 noundef 4, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  %. = sext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_64xx_iounmap(ptr nocapture noundef readonly %mvi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  tail call void @mvs_iounmap(ptr noundef %1) #9
  %regs_ex = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 5
  %2 = ptrtoint ptr %regs_ex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs_ex, align 4
  tail call void @mvs_iounmap(ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvs_64xx_isr(ptr noundef %mvi, i32 noundef %irq, i32 noundef %stat) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !106
  tail call void @arm_heavy_mb() #9
  %add.ptr = getelementptr i8, ptr %1, i32 336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #9, !srcloc !45
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  %lock = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  tail call void @mvs_int_full(ptr noundef %mvi)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvs_64xx_isr_status(ptr nocapture noundef readonly %mvi, i32 noundef %irq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mvi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mvi, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  %regs1 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %2 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs1, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %if.then.if.end5_crit_edge [
    i32 -1, label %if.then.cleanup_crit_edge
    i32 0, label %if.then.cleanup_crit_edge10
  ]

if.then.cleanup_crit_edge10:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %stat.0 = phi i32 [ %5, %if.then.if.end5_crit_edge ], [ 1, %entry.if.end5_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then.cleanup_crit_edge, %if.then.cleanup_crit_edge10
  %retval.0 = phi i32 [ %stat.0, %if.end5 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_64xx_interrupt_enable(ptr nocapture noundef readonly %mvi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  tail call void @arm_heavy_mb() #9
  %3 = or i32 %2, 33554432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #9, !srcloc !45
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_64xx_interrupt_disable(ptr nocapture noundef readonly %mvi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %3 = and i32 %2, -33554433
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #9, !srcloc !45
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvs_read_phy_ctl(ptr nocapture noundef readonly %mvi, i32 noundef %port) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %regs1 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %port)
  %cmp = icmp ult i32 %port, 4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %1, i32 384
  %mul = shl nuw nsw i32 %port, 2
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %mul
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #9, !srcloc !46
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !113
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr6 = getelementptr i8, ptr %1, i32 544
  %sub = shl i32 %port, 2
  %mul7 = add i32 %sub, -16
  %add.ptr8 = getelementptr i8, ptr %add.ptr6, i32 %mul7
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #9, !srcloc !46
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %5, %cond.false ]
  ret i32 %cond
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_write_phy_ctl(ptr nocapture noundef readonly %mvi, i32 noundef %port, i32 noundef %val) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %regs1 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %port)
  %cmp = icmp ult i32 %port, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %2 = tail call i32 @llvm.bswap.i32(i32 %val)
  br i1 %cmp, label %do.body, label %do.body3

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %1, i32 384
  %mul = shl nuw nsw i32 %port, 2
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %2) #9, !srcloc !45
  br label %if.end

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr6 = getelementptr i8, ptr %1, i32 544
  %sub = shl i32 %port, 2
  %mul7 = add i32 %sub, -16
  %add.ptr8 = getelementptr i8, ptr %add.ptr6, i32 %mul7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %2) #9, !srcloc !45
  br label %if.end

if.end:                                           ; preds = %do.body3, %do.body
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvs_read_port_cfg_data(ptr nocapture noundef readonly %mvi, i32 noundef %port) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %regs1.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %port)
  %cmp.i = icmp ult i32 %port, 4
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %1, i32 452
  %mul.i = shl nuw nsw i32 %port, 3
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #9, !srcloc !46
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  br label %mvs_read_port.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr4.i = getelementptr i8, ptr %1, i32 564
  %sub.i = shl i32 %port, 3
  %mul9.i = add i32 %sub.i, -32
  %add.ptr10.i = getelementptr i8, ptr %add.ptr4.i, i32 %mul9.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #9, !srcloc !46
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  br label %mvs_read_port.exit

mvs_read_port.exit:                               ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %3, %cond.true.i ], [ %5, %cond.false.i ]
  ret i32 %cond.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_write_port_cfg_data(ptr nocapture noundef readonly %mvi, i32 noundef %port, i32 noundef %val) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %regs1.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %port)
  %cmp.i = icmp ult i32 %port, 4
  br i1 %cmp.i, label %do.body.i, label %do.body6.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %1, i32 452
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  tail call void @arm_heavy_mb() #9
  %2 = tail call i32 @llvm.bswap.i32(i32 %val) #9
  %mul.i = shl nuw nsw i32 %port, 3
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %2) #9, !srcloc !45
  br label %mvs_write_port.exit

do.body6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr4.i = getelementptr i8, ptr %1, i32 564
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !69
  tail call void @arm_heavy_mb() #9
  %3 = tail call i32 @llvm.bswap.i32(i32 %val) #9
  %sub.i = shl i32 %port, 3
  %mul9.i = add i32 %sub.i, -32
  %add.ptr10.i = getelementptr i8, ptr %add.ptr4.i, i32 %mul9.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %3) #9, !srcloc !45
  br label %mvs_write_port.exit

mvs_write_port.exit:                              ; preds = %do.body6.i, %do.body.i
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_write_port_cfg_addr(ptr nocapture noundef readonly %mvi, i32 noundef %port, i32 noundef %addr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %regs1.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %port)
  %cmp.i = icmp ult i32 %port, 4
  br i1 %cmp.i, label %do.body.i, label %do.body6.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %1, i32 448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  tail call void @arm_heavy_mb() #9
  %2 = tail call i32 @llvm.bswap.i32(i32 %addr) #9
  %mul.i = shl nuw nsw i32 %port, 3
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %2) #9, !srcloc !45
  br label %mvs_write_port.exit

do.body6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr4.i = getelementptr i8, ptr %1, i32 560
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !69
  tail call void @arm_heavy_mb() #9
  %3 = tail call i32 @llvm.bswap.i32(i32 %addr) #9
  %sub.i = shl i32 %port, 3
  %mul9.i = add i32 %sub.i, -32
  %add.ptr10.i = getelementptr i8, ptr %add.ptr4.i, i32 %mul9.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %3) #9, !srcloc !45
  br label %mvs_write_port.exit

mvs_write_port.exit:                              ; preds = %do.body6.i, %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvs_read_port_vsr_data(ptr nocapture noundef readonly %mvi, i32 noundef %port) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %regs1.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %port)
  %cmp.i = icmp ult i32 %port, 4
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %1, i32 484
  %mul.i = shl nuw nsw i32 %port, 3
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #9, !srcloc !46
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  br label %mvs_read_port.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr4.i = getelementptr i8, ptr %1, i32 596
  %sub.i = shl i32 %port, 3
  %mul9.i = add i32 %sub.i, -32
  %add.ptr10.i = getelementptr i8, ptr %add.ptr4.i, i32 %mul9.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #9, !srcloc !46
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  br label %mvs_read_port.exit

mvs_read_port.exit:                               ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %3, %cond.true.i ], [ %5, %cond.false.i ]
  ret i32 %cond.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_write_port_vsr_data(ptr nocapture noundef readonly %mvi, i32 noundef %port, i32 noundef %val) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %regs1.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %port)
  %cmp.i = icmp ult i32 %port, 4
  br i1 %cmp.i, label %do.body.i, label %do.body6.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %1, i32 484
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  tail call void @arm_heavy_mb() #9
  %2 = tail call i32 @llvm.bswap.i32(i32 %val) #9
  %mul.i = shl nuw nsw i32 %port, 3
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %2) #9, !srcloc !45
  br label %mvs_write_port.exit

do.body6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr4.i = getelementptr i8, ptr %1, i32 596
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !69
  tail call void @arm_heavy_mb() #9
  %3 = tail call i32 @llvm.bswap.i32(i32 %val) #9
  %sub.i = shl i32 %port, 3
  %mul9.i = add i32 %sub.i, -32
  %add.ptr10.i = getelementptr i8, ptr %add.ptr4.i, i32 %mul9.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %3) #9, !srcloc !45
  br label %mvs_write_port.exit

mvs_write_port.exit:                              ; preds = %do.body6.i, %do.body.i
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_write_port_vsr_addr(ptr nocapture noundef readonly %mvi, i32 noundef %port, i32 noundef %addr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %regs1.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %port)
  %cmp.i = icmp ult i32 %port, 4
  br i1 %cmp.i, label %do.body.i, label %do.body6.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %1, i32 480
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  tail call void @arm_heavy_mb() #9
  %2 = tail call i32 @llvm.bswap.i32(i32 %addr) #9
  %mul.i = shl nuw nsw i32 %port, 3
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %2) #9, !srcloc !45
  br label %mvs_write_port.exit

do.body6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr4.i = getelementptr i8, ptr %1, i32 592
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !69
  tail call void @arm_heavy_mb() #9
  %3 = tail call i32 @llvm.bswap.i32(i32 %addr) #9
  %sub.i = shl i32 %port, 3
  %mul9.i = add i32 %sub.i, -32
  %add.ptr10.i = getelementptr i8, ptr %add.ptr4.i, i32 %mul9.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %3) #9, !srcloc !45
  br label %mvs_write_port.exit

mvs_write_port.exit:                              ; preds = %do.body6.i, %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvs_read_port_irq_stat(ptr nocapture noundef readonly %mvi, i32 noundef %port) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %regs1.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %port)
  %cmp.i = icmp ult i32 %port, 4
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %1, i32 352
  %mul.i = shl nuw nsw i32 %port, 3
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #9, !srcloc !46
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  br label %mvs_read_port.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr4.i = getelementptr i8, ptr %1, i32 512
  %sub.i = shl i32 %port, 3
  %mul9.i = add i32 %sub.i, -32
  %add.ptr10.i = getelementptr i8, ptr %add.ptr4.i, i32 %mul9.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #9, !srcloc !46
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  br label %mvs_read_port.exit

mvs_read_port.exit:                               ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %3, %cond.true.i ], [ %5, %cond.false.i ]
  ret i32 %cond.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_write_port_irq_stat(ptr nocapture noundef readonly %mvi, i32 noundef %port, i32 noundef %val) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %regs1.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %port)
  %cmp.i = icmp ult i32 %port, 4
  br i1 %cmp.i, label %do.body.i, label %do.body6.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %1, i32 352
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  tail call void @arm_heavy_mb() #9
  %2 = tail call i32 @llvm.bswap.i32(i32 %val) #9
  %mul.i = shl nuw nsw i32 %port, 3
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %2) #9, !srcloc !45
  br label %mvs_write_port.exit

do.body6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr4.i = getelementptr i8, ptr %1, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !69
  tail call void @arm_heavy_mb() #9
  %3 = tail call i32 @llvm.bswap.i32(i32 %val) #9
  %sub.i = shl i32 %port, 3
  %mul9.i = add i32 %sub.i, -32
  %add.ptr10.i = getelementptr i8, ptr %add.ptr4.i, i32 %mul9.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %3) #9, !srcloc !45
  br label %mvs_write_port.exit

mvs_write_port.exit:                              ; preds = %do.body6.i, %do.body.i
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvs_read_port_irq_mask(ptr nocapture noundef readonly %mvi, i32 noundef %port) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %regs1.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %port)
  %cmp.i = icmp ult i32 %port, 4
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %1, i32 356
  %mul.i = shl nuw nsw i32 %port, 3
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #9, !srcloc !46
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  br label %mvs_read_port.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr4.i = getelementptr i8, ptr %1, i32 516
  %sub.i = shl i32 %port, 3
  %mul9.i = add i32 %sub.i, -32
  %add.ptr10.i = getelementptr i8, ptr %add.ptr4.i, i32 %mul9.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #9, !srcloc !46
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  br label %mvs_read_port.exit

mvs_read_port.exit:                               ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %3, %cond.true.i ], [ %5, %cond.false.i ]
  ret i32 %cond.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_write_port_irq_mask(ptr nocapture noundef readonly %mvi, i32 noundef %port, i32 noundef %val) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %regs1.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %port)
  %cmp.i = icmp ult i32 %port, 4
  br i1 %cmp.i, label %do.body.i, label %do.body6.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %1, i32 356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  tail call void @arm_heavy_mb() #9
  %2 = tail call i32 @llvm.bswap.i32(i32 %val) #9
  %mul.i = shl nuw nsw i32 %port, 3
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %2) #9, !srcloc !45
  br label %mvs_write_port.exit

do.body6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr4.i = getelementptr i8, ptr %1, i32 516
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !69
  tail call void @arm_heavy_mb() #9
  %3 = tail call i32 @llvm.bswap.i32(i32 %val) #9
  %sub.i = shl i32 %port, 3
  %mul9.i = add i32 %sub.i, -32
  %add.ptr10.i = getelementptr i8, ptr %add.ptr4.i, i32 %mul9.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %3) #9, !srcloc !45
  br label %mvs_write_port.exit

mvs_write_port.exit:                              ; preds = %do.body6.i, %do.body.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_64xx_command_active(ptr nocapture noundef readonly %mvi, i32 noundef %slot_idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %slot_idx, 3
  %add = add nuw nsw i32 %shr, 64
  %rem = and i32 %slot_idx, 31
  %shl = shl nuw i32 1, %rem
  %regs1.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !65
  tail call void @arm_heavy_mb() #9
  %2 = tail call i32 @llvm.bswap.i32(i32 %add) #9
  %add.ptr.i = getelementptr i8, ptr %1, i32 440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #9, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !66
  tail call void @arm_heavy_mb() #9
  %3 = tail call i32 @llvm.bswap.i32(i32 %shl) #9
  %add.ptr5.i = getelementptr i8, ptr %1, i32 444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %3) #9, !srcloc !45
  %4 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !65
  tail call void @arm_heavy_mb() #9
  %6 = tail call i32 @llvm.bswap.i32(i32 %shr) #9
  %add.ptr.i31 = getelementptr i8, ptr %5, i32 440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %6) #9, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !66
  tail call void @arm_heavy_mb() #9
  %add.ptr5.i32 = getelementptr i8, ptr %5, i32 444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i32, i32 %3) #9, !srcloc !45
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %7 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !63
  tail call void @arm_heavy_mb() #9
  %add.ptr.i34 = getelementptr i8, ptr %8, i32 440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 %6) #9, !srcloc !45
  %add.ptr2.i = getelementptr i8, ptr %8, i32 444
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #9, !srcloc !46
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !64
  %and = and i32 %10, %shl
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.body9_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body.do.body9_crit_edge:                       ; preds = %do.body
  br label %do.body9

do.body9:                                         ; preds = %do.body9.do.body9_crit_edge, %do.body.do.body9_crit_edge
  %11 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !63
  tail call void @arm_heavy_mb() #9
  %add.ptr.i36 = getelementptr i8, ptr %12, i32 440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 %2) #9, !srcloc !45
  %add.ptr2.i37 = getelementptr i8, ptr %12, i32 444
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i37) #9, !srcloc !46
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !64
  %and16 = and i32 %14, %shl
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.end18, label %do.body9.do.body9_crit_edge

do.body9.do.body9_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body9

do.end18:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_64xx_clear_srs_irq(ptr nocapture noundef readonly %mvi, i8 noundef zeroext %reg_set, i8 noundef zeroext %clear_all) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %clear_all)
  %tobool.not = icmp eq i8 %clear_all, 0
  %add.ptr14 = getelementptr i8, ptr %1, i32 344
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #9
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool4.not = icmp eq i32 %2, 0
  br i1 %tobool4.not, label %if.then.if.end34_crit_edge, label %do.end

if.then.if.end34_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %3) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %2) #9, !srcloc !45
  br label %if.end34

if.else:                                          ; preds = %entry
  %4 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !117
  %conv = zext i8 %reg_set to i32
  %rem = and i32 %conv, 31
  %shl = shl nuw i32 1, %rem
  %and = and i32 %4, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.else.if.end34_crit_edge, label %do.end22

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

do.end22:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %conv) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !118
  tail call void @arm_heavy_mb() #9
  %5 = tail call i32 @llvm.bswap.i32(i32 %shl)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %5) #9, !srcloc !45
  br label %if.end34

if.end34:                                         ; preds = %do.end22, %if.else.if.end34_crit_edge, %do.end, %if.then.if.end34_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_64xx_issue_stop(ptr nocapture noundef readonly %mvi, i32 noundef %type, i32 noundef %tfs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp = icmp eq i32 %type, 1
  br i1 %cmp, label %if.then, label %entry.do.body5_crit_edge

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %1, i32 344
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !46
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  %shl = shl nuw i32 1, %tfs
  %or = or i32 %3, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #9, !srcloc !45
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry.do.body5_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  tail call void @arm_heavy_mb() #9
  %add.ptr8 = getelementptr i8, ptr %1, i32 336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 33554432) #9, !srcloc !45
  %add.ptr11 = getelementptr i8, ptr %1, i32 260
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #9, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  %6 = or i32 %5, 16711680
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !123
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %6) #9, !srcloc !45
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_start_delivery(ptr nocapture noundef readonly %mvi, i32 noundef %tx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %regs1 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !124
  tail call void @arm_heavy_mb() #9
  %2 = tail call i32 @llvm.bswap.i32(i32 %tx)
  %add.ptr = getelementptr i8, ptr %1, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #9, !srcloc !45
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvs_rx_update(ptr nocapture noundef readonly %mvi) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %regs1 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 320
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !46
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !125
  ret i32 %3
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_int_full(ptr noundef %mvi) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %regs1 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 336
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !46
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !126
  %call4 = tail call i32 @mvs_int_rx(ptr noundef %mvi, i1 noundef zeroext false) #9
  %chip = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 20
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  %n_phy29 = getelementptr inbounds %struct.mvs_chip_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %n_phy29 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_phy29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp30.not = icmp eq i32 %7, 0
  br i1 %cmp30.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.031 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %shr = lshr i32 %3, %i.031
  %and = and i32 %shr, 65792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mvs_int_port(ptr noundef %mvi, i32 noundef %i.031, i32 noundef %and) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.031, 1
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 4
  %n_phy = getelementptr inbounds %struct.mvs_chip_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %n_phy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_phy, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi ptr [ %5, %entry.for.end_crit_edge ], [ %9, %for.inc.for.end_crit_edge ]
  %and5 = and i32 %3, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %for.end.if.end9_crit_edge, label %if.then7

for.end.if.end9_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %dispatch = getelementptr inbounds %struct.mvs_chip_info, ptr %.lcssa, i32 0, i32 7
  %12 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dispatch, align 4
  %non_spec_ncq_error = getelementptr inbounds %struct.mvs_dispatch, ptr %13, i32 0, i32 50
  %14 = ptrtoint ptr %non_spec_ncq_error to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %non_spec_ncq_error, align 4
  tail call void %15(ptr noundef %mvi) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %for.end.if.end9_crit_edge
  %and10 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.do.body_crit_edge, label %if.then12

if.end9.do.body_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then12:                                        ; preds = %if.end9
  %16 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs1, align 8
  %add.ptr.i = getelementptr i8, ptr %17, i32 344
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %if.then12.mvs_int_sata.exit_crit_edge, label %do.body.i

if.then12.mvs_int_sata.exit_crit_edge:            ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %mvs_int_sata.exit

do.body.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !128
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #9, !srcloc !45
  br label %mvs_int_sata.exit

mvs_int_sata.exit:                                ; preds = %do.body.i, %if.then12.mvs_int_sata.exit_crit_edge
  %19 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip, align 4
  %dispatch.i = getelementptr inbounds %struct.mvs_chip_info, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %dispatch.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dispatch.i, align 4
  %clear_active_cmds.i = getelementptr inbounds %struct.mvs_dispatch, ptr %22, i32 0, i32 42
  %23 = ptrtoint ptr %clear_active_cmds.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clear_active_cmds.i, align 4
  tail call void %24(ptr noundef %mvi) #9
  br label %do.body

do.body:                                          ; preds = %mvs_int_sata.exit, %if.end9.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !129
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #9, !srcloc !45
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @mvs_64xx_assign_reg_set(ptr nocapture noundef readonly %mvi, ptr nocapture noundef %tfs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  %2 = ptrtoint ptr %tfs to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tfs, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %3)
  %cmp.not = icmp eq i8 %3, 127
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 260
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !130
  %chip = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 20
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 4
  %srs_sz69 = getelementptr inbounds %struct.mvs_chip_info, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %srs_sz69 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %srs_sz69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp570.not = icmp eq i32 %8, 0
  br i1 %cmp570.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %9 = tail call i32 @llvm.bswap.i32(i32 %4)
  %add.ptr12 = getelementptr i8, ptr %1, i32 256
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.072 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %tmp.071 = phi i32 [ %9, %for.body.lr.ph ], [ %tmp.1, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %i.072)
  %cmp7 = icmp eq i32 %i.072, 16
  br i1 %cmp7, label %if.then9, label %for.body.if.end16_crit_edge

for.body.if.end16_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #9, !srcloc !46
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !131
  br label %if.end16

if.end16:                                         ; preds = %if.then9, %for.body.if.end16_crit_edge
  %tmp.1 = phi i32 [ %11, %if.then9 ], [ %tmp.071, %for.body.if.end16_crit_edge ]
  %and = and i32 %i.072, 15
  %add = or i32 %and, 16
  %shl = shl nuw i32 1, %add
  %and17 = and i32 %tmp.1, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool.not = icmp eq i32 %and17, 0
  br i1 %tobool.not, label %if.then18, label %for.inc

if.then18:                                        ; preds = %if.end16
  %conv19 = trunc i32 %i.072 to i8
  %12 = ptrtoint ptr %tfs to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv19, ptr %tfs, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %i.072)
  %cmp20 = icmp slt i32 %i.072, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %or = or i32 %tmp.1, %shl
  %13 = tail call i32 @llvm.bswap.i32(i32 %or)
  br i1 %cmp20, label %do.body, label %do.body24

do.body:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %13) #9, !srcloc !45
  br label %if.end29

do.body24:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %13) #9, !srcloc !45
  br label %if.end29

if.end29:                                         ; preds = %do.body24, %do.body
  %add.ptr32 = getelementptr i8, ptr %1, i32 344
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #9, !srcloc !46
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !132
  %shl36 = shl nuw i32 1, %i.072
  %and37 = and i32 %15, %shl36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end29.cleanup_crit_edge, label %do.body40

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body40:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !133
  tail call void @arm_heavy_mb() #9
  %16 = tail call i32 @llvm.bswap.i32(i32 %and37)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %16) #9, !srcloc !45
  br label %cleanup

for.inc:                                          ; preds = %if.end16
  %inc = add nuw i32 %i.072, 1
  %17 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip, align 4
  %srs_sz = getelementptr inbounds %struct.mvs_chip_info, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %srs_sz to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %srs_sz, align 4
  %cmp5 = icmp ult i32 %inc, %20
  br i1 %cmp5, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.body40, %if.end29.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %entry.cleanup_crit_edge ], [ 0, %do.body40 ], [ 0, %if.end29.cleanup_crit_edge ], [ 127, %if.end.cleanup_crit_edge ], [ 127, %for.inc.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_64xx_free_reg_set(ptr nocapture noundef readonly %mvi, ptr nocapture noundef %tfs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  %2 = ptrtoint ptr %tfs to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tfs, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %3)
  %cmp = icmp eq i8 %3, 127
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = and i8 %3, 15
  %5 = or i8 %4, 16
  %add = zext i8 %5 to i32
  %shl = shl nuw i32 1, %add
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %3)
  %cmp5 = icmp ult i8 %3, 16
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %1, i32 260
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !46
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !135
  tail call void @arm_heavy_mb() #9
  %neg = xor i32 %shl, -1
  %and10 = and i32 %7, %neg
  %8 = tail call i32 @llvm.bswap.i32(i32 %and10)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #9, !srcloc !45
  br label %if.end24

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr14 = getelementptr i8, ptr %1, i32 256
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #9, !srcloc !46
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !137
  tail call void @arm_heavy_mb() #9
  %neg21 = xor i32 %shl, -1
  %and22 = and i32 %10, %neg21
  %11 = tail call i32 @llvm.bswap.i32(i32 %and22)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %11) #9, !srcloc !45
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then7
  %add.ptr27 = getelementptr i8, ptr %1, i32 344
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #9, !srcloc !46
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !138
  %14 = ptrtoint ptr %tfs to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tfs, align 1
  %conv31 = zext i8 %15 to i32
  %shl32 = shl nuw i32 1, %conv31
  %and33 = and i32 %shl32, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool.not = icmp eq i32 %and33, 0
  br i1 %tobool.not, label %if.end24.if.end39_crit_edge, label %do.body35

if.end24.if.end39_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

do.body35:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !139
  tail call void @arm_heavy_mb() #9
  %16 = tail call i32 @llvm.bswap.i32(i32 %and33)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %16) #9, !srcloc !45
  br label %if.end39

if.end39:                                         ; preds = %do.body35, %if.end24.if.end39_crit_edge
  %17 = ptrtoint ptr %tfs to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 127, ptr %tfs, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mvs_get_prd_size() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  ret i32 16
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mvs_get_prd_count() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  ret i32 64
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_64xx_make_prd(ptr noundef %scatter, i32 noundef %nr, ptr nocapture noundef writeonly %prd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr)
  %cmp6 = icmp sgt i32 %nr, 0
  br i1 %cmp6, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %buf_prd.09 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %prd, %entry.for.body_crit_edge ]
  %sg.08 = phi ptr [ %call, %for.body.for.body_crit_edge ], [ %scatter, %entry.for.body_crit_edge ]
  %i.07 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.08, i32 0, i32 3
  %0 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_address, align 4
  %conv = zext i32 %1 to i64
  %2 = tail call i64 @llvm.bswap.i64(i64 %conv)
  %3 = ptrtoint ptr %buf_prd.09 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %buf_prd.09, align 8
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.08, i32 0, i32 4
  %4 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_length, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %len = getelementptr inbounds %struct.mvs_prd, ptr %buf_prd.09, i32 0, i32 2
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %len, align 4
  %incdec.ptr = getelementptr %struct.mvs_prd, ptr %buf_prd.09, i32 1
  %inc = add nuw nsw i32 %i.07, 1
  %call = tail call ptr @sg_next(ptr noundef %sg.08) #9
  %exitcond.not = icmp eq i32 %inc, %nr
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_64xx_detect_porttype(ptr nocapture noundef %mvi, i32 noundef %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 160
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !46
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  %phy_type = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 10
  %4 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phy_type, align 8
  %and = and i32 %5, -4
  %shl = shl nuw i32 1, %i
  %and5 = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  %storemerge.v = select i1 %tobool.not, i32 1, i32 2
  %storemerge = or i32 %storemerge.v, %and
  %6 = ptrtoint ptr %phy_type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %storemerge, ptr %phy_type, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvs_64xx_oob_done(ptr nocapture noundef readonly %mvi, i32 noundef %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1.i.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i)
  %cmp.i.i = icmp ult i32 %i, 4
  br i1 %cmp.i.i, label %do.body.i.i, label %do.body6.i.i

do.body.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  tail call void @arm_heavy_mb() #9
  %mul.i.i = shl nuw nsw i32 %i, 3
  %add.ptr5.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 469762048) #9, !srcloc !45
  br label %mvs_write_port_cfg_addr.exit

do.body6.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr4.i.i = getelementptr i8, ptr %1, i32 560
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !69
  tail call void @arm_heavy_mb() #9
  %sub.i.i = shl i32 %i, 3
  %mul9.i.i = add i32 %sub.i.i, -32
  %add.ptr10.i.i = getelementptr i8, ptr %add.ptr4.i.i, i32 %mul9.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i, i32 469762048) #9, !srcloc !45
  br label %mvs_write_port_cfg_addr.exit

mvs_write_port_cfg_addr.exit:                     ; preds = %do.body6.i.i, %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #9
  %12 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs1.i.i, align 8
  br i1 %cmp.i.i, label %cond.true.i.i, label %cond.false.i.i

cond.true.i.i:                                    ; preds = %mvs_write_port_cfg_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i5 = getelementptr i8, ptr %13, i32 452
  %mul.i.i6 = shl nuw nsw i32 %i, 3
  %add.ptr5.i.i7 = getelementptr i8, ptr %add.ptr.i.i5, i32 %mul.i.i6
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i7) #9, !srcloc !46
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  br label %mvs_read_port_cfg_data.exit

cond.false.i.i:                                   ; preds = %mvs_write_port_cfg_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr4.i.i8 = getelementptr i8, ptr %13, i32 564
  %sub.i.i9 = shl i32 %i, 3
  %mul9.i.i10 = add i32 %sub.i.i9, -32
  %add.ptr10.i.i11 = getelementptr i8, ptr %add.ptr4.i.i8, i32 %mul9.i.i10
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i11) #9, !srcloc !46
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  br label %mvs_read_port_cfg_data.exit

mvs_read_port_cfg_data.exit:                      ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i32 [ %15, %cond.true.i.i ], [ %17, %cond.false.i.i ]
  %and = and i32 %cond.i.i, 1
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_64xx_fix_phy_info(ptr nocapture noundef %mvi, i32 noundef %i, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_status = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 11
  %0 = ptrtoint ptr %phy_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_status, align 4
  %and = lshr i32 %1, 16
  %shr = and i32 %and, 15
  %linkrate = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 2, i32 13
  %2 = ptrtoint ptr %linkrate to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %shr, ptr %linkrate, align 4
  %and4 = lshr i32 %1, 8
  %shr5 = and i32 %and4, 15
  %minimum_linkrate = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 19
  %3 = ptrtoint ptr %minimum_linkrate to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shr5, ptr %minimum_linkrate, align 8
  %and7 = lshr i32 %1, 12
  %shr8 = and i32 %and7, 15
  %maximum_linkrate = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 20
  %4 = ptrtoint ptr %maximum_linkrate to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr8, ptr %maximum_linkrate, align 4
  %regs1.i.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %5 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i)
  %cmp.i.i = icmp ult i32 %i, 4
  br i1 %cmp.i.i, label %do.body.i.i, label %do.body6.i.i

do.body.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  tail call void @arm_heavy_mb() #9
  %mul.i.i = shl nuw nsw i32 %i, 3
  %add.ptr5.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 0) #9, !srcloc !45
  br label %mvs_write_port_cfg_addr.exit

do.body6.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr4.i.i = getelementptr i8, ptr %6, i32 560
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !69
  tail call void @arm_heavy_mb() #9
  %sub.i.i = shl i32 %i, 3
  %mul9.i.i = add i32 %sub.i.i, -32
  %add.ptr10.i.i = getelementptr i8, ptr %add.ptr4.i.i, i32 %mul9.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i, i32 0) #9, !srcloc !45
  br label %mvs_write_port_cfg_addr.exit

mvs_write_port_cfg_addr.exit:                     ; preds = %do.body6.i.i, %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #9
  %17 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs1.i.i, align 8
  br i1 %cmp.i.i, label %do.body.i.i57, label %do.body6.i.i62

do.body.i.i57:                                    ; preds = %mvs_write_port_cfg_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i45 = getelementptr i8, ptr %18, i32 452
  %mul.i.i46 = shl nuw nsw i32 %i, 3
  %add.ptr5.i.i47 = getelementptr i8, ptr %add.ptr.i.i45, i32 %mul.i.i46
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i47) #9, !srcloc !46
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  %dev_info128 = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 9
  %21 = ptrtoint ptr %dev_info128 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %dev_info128, align 4
  %22 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs1.i.i, align 8
  %add.ptr.i.i54 = getelementptr i8, ptr %23, i32 448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  tail call void @arm_heavy_mb() #9
  %add.ptr5.i.i56 = getelementptr i8, ptr %add.ptr.i.i54, i32 %mul.i.i46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i56, i32 201326592) #9, !srcloc !45
  br label %mvs_write_port_cfg_addr.exit63

do.body6.i.i62:                                   ; preds = %mvs_write_port_cfg_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr4.i.i48 = getelementptr i8, ptr %18, i32 564
  %sub.i.i49 = shl i32 %i, 3
  %mul9.i.i50 = add i32 %sub.i.i49, -32
  %add.ptr10.i.i51 = getelementptr i8, ptr %add.ptr4.i.i48, i32 %mul9.i.i50
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i51) #9, !srcloc !46
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  %dev_info = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 9
  %26 = ptrtoint ptr %dev_info to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %dev_info, align 4
  %27 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs1.i.i, align 8
  %add.ptr4.i.i58 = getelementptr i8, ptr %28, i32 560
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !69
  tail call void @arm_heavy_mb() #9
  %add.ptr10.i.i61 = getelementptr i8, ptr %add.ptr4.i.i58, i32 %mul9.i.i50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i61, i32 201326592) #9, !srcloc !45
  br label %mvs_write_port_cfg_addr.exit63

mvs_write_port_cfg_addr.exit63:                   ; preds = %do.body6.i.i62, %do.body.i.i57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748000) #9
  %39 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs1.i.i, align 8
  br i1 %cmp.i.i, label %do.body.i.i82, label %do.body6.i.i87

do.body.i.i82:                                    ; preds = %mvs_write_port_cfg_addr.exit63
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i66 = getelementptr i8, ptr %40, i32 452
  %mul.i.i67 = shl nuw nsw i32 %i, 3
  %add.ptr5.i.i68 = getelementptr i8, ptr %add.ptr.i.i66, i32 %mul.i.i67
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i68) #9, !srcloc !46
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  %att_dev_info130 = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 8
  %43 = ptrtoint ptr %att_dev_info130 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %att_dev_info130, align 8
  %44 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs1.i.i, align 8
  %add.ptr.i.i79 = getelementptr i8, ptr %45, i32 448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  tail call void @arm_heavy_mb() #9
  %add.ptr5.i.i81 = getelementptr i8, ptr %add.ptr.i.i79, i32 %mul.i.i67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i81, i32 335544320) #9, !srcloc !45
  br label %mvs_write_port_cfg_addr.exit88

do.body6.i.i87:                                   ; preds = %mvs_write_port_cfg_addr.exit63
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr4.i.i70 = getelementptr i8, ptr %40, i32 564
  %sub.i.i71 = shl i32 %i, 3
  %mul9.i.i72 = add i32 %sub.i.i71, -32
  %add.ptr10.i.i73 = getelementptr i8, ptr %add.ptr4.i.i70, i32 %mul9.i.i72
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i73) #9, !srcloc !46
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  %att_dev_info = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 8
  %48 = ptrtoint ptr %att_dev_info to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %att_dev_info, align 8
  %49 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs1.i.i, align 8
  %add.ptr4.i.i83 = getelementptr i8, ptr %50, i32 560
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !69
  tail call void @arm_heavy_mb() #9
  %add.ptr10.i.i86 = getelementptr i8, ptr %add.ptr4.i.i83, i32 %mul9.i.i72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i86, i32 335544320) #9, !srcloc !45
  br label %mvs_write_port_cfg_addr.exit88

mvs_write_port_cfg_addr.exit88:                   ; preds = %do.body6.i.i87, %do.body.i.i82
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748000) #9
  %61 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs1.i.i, align 8
  br i1 %cmp.i.i, label %do.body.i.i107, label %do.body6.i.i112

do.body.i.i107:                                   ; preds = %mvs_write_port_cfg_addr.exit88
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i91 = getelementptr i8, ptr %62, i32 452
  %mul.i.i92 = shl nuw nsw i32 %i, 3
  %add.ptr5.i.i93 = getelementptr i8, ptr %add.ptr.i.i91, i32 %mul.i.i92
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i93) #9, !srcloc !46
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  %conv132 = zext i32 %64 to i64
  %shl133 = shl nuw i64 %conv132, 32
  %att_dev_sas_addr134 = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 7
  %65 = ptrtoint ptr %att_dev_sas_addr134 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %shl133, ptr %att_dev_sas_addr134, align 8
  %66 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs1.i.i, align 8
  %add.ptr.i.i104 = getelementptr i8, ptr %67, i32 448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  tail call void @arm_heavy_mb() #9
  %add.ptr5.i.i106 = getelementptr i8, ptr %add.ptr.i.i104, i32 %mul.i.i92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i106, i32 268435456) #9, !srcloc !45
  br label %mvs_write_port_cfg_addr.exit113

do.body6.i.i112:                                  ; preds = %mvs_write_port_cfg_addr.exit88
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr4.i.i95 = getelementptr i8, ptr %62, i32 564
  %sub.i.i96 = shl i32 %i, 3
  %mul9.i.i97 = add i32 %sub.i.i96, -32
  %add.ptr10.i.i98 = getelementptr i8, ptr %add.ptr4.i.i95, i32 %mul9.i.i97
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i98) #9, !srcloc !46
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  %conv = zext i32 %69 to i64
  %shl = shl nuw i64 %conv, 32
  %att_dev_sas_addr = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 7
  %70 = ptrtoint ptr %att_dev_sas_addr to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %shl, ptr %att_dev_sas_addr, align 8
  %71 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs1.i.i, align 8
  %add.ptr4.i.i108 = getelementptr i8, ptr %72, i32 560
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !69
  tail call void @arm_heavy_mb() #9
  %add.ptr10.i.i111 = getelementptr i8, ptr %add.ptr4.i.i108, i32 %mul9.i.i97
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i111, i32 268435456) #9, !srcloc !45
  br label %mvs_write_port_cfg_addr.exit113

mvs_write_port_cfg_addr.exit113:                  ; preds = %do.body6.i.i112, %do.body.i.i107
  %att_dev_sas_addr135 = phi ptr [ %att_dev_sas_addr134, %do.body.i.i107 ], [ %att_dev_sas_addr, %do.body6.i.i112 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %77(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %78(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %79(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %80(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %81(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %82(i32 noundef 214748000) #9
  %83 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs1.i.i, align 8
  br i1 %cmp.i.i, label %cond.true.i.i119, label %cond.false.i.i124

cond.true.i.i119:                                 ; preds = %mvs_write_port_cfg_addr.exit113
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i116 = getelementptr i8, ptr %84, i32 452
  %mul.i.i117 = shl nuw nsw i32 %i, 3
  %add.ptr5.i.i118 = getelementptr i8, ptr %add.ptr.i.i116, i32 %mul.i.i117
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i118) #9, !srcloc !46
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  br label %mvs_read_port_cfg_data.exit126

cond.false.i.i124:                                ; preds = %mvs_write_port_cfg_addr.exit113
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr4.i.i120 = getelementptr i8, ptr %84, i32 564
  %sub.i.i121 = shl i32 %i, 3
  %mul9.i.i122 = add i32 %sub.i.i121, -32
  %add.ptr10.i.i123 = getelementptr i8, ptr %add.ptr4.i.i120, i32 %mul9.i.i122
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i123) #9, !srcloc !46
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  br label %mvs_read_port_cfg_data.exit126

mvs_read_port_cfg_data.exit126:                   ; preds = %cond.false.i.i124, %cond.true.i.i119
  %cond.i.i125 = phi i32 [ %86, %cond.true.i.i119 ], [ %88, %cond.false.i.i124 ]
  %conv12 = zext i32 %cond.i.i125 to i64
  %89 = ptrtoint ptr %att_dev_sas_addr135 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %att_dev_sas_addr135, align 8
  %or = or i64 %90, %conv12
  store i64 %or, ptr %att_dev_sas_addr135, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_64xx_phy_work_around(ptr nocapture noundef readonly %mvi, i32 noundef %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1.i.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i)
  %cmp.i.i = icmp ult i32 %i, 4
  br i1 %cmp.i.i, label %do.body.i.i, label %do.body6.i.i

do.body.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 480
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  tail call void @arm_heavy_mb() #9
  %mul.i.i = shl nuw nsw i32 %i, 3
  %add.ptr5.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 100663296) #9, !srcloc !45
  br label %mvs_write_port_vsr_addr.exit

do.body6.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr4.i.i = getelementptr i8, ptr %1, i32 592
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !69
  tail call void @arm_heavy_mb() #9
  %sub.i.i = shl i32 %i, 3
  %mul9.i.i = add i32 %sub.i.i, -32
  %add.ptr10.i.i = getelementptr i8, ptr %add.ptr4.i.i, i32 %mul9.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i, i32 100663296) #9, !srcloc !45
  br label %mvs_write_port_vsr_addr.exit

mvs_write_port_vsr_addr.exit:                     ; preds = %do.body6.i.i, %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #9
  %12 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs1.i.i, align 8
  br i1 %cmp.i.i, label %cond.true.i.i, label %cond.false.i.i

cond.true.i.i:                                    ; preds = %mvs_write_port_vsr_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i13 = getelementptr i8, ptr %13, i32 484
  %mul.i.i14 = shl nuw nsw i32 %i, 3
  %add.ptr5.i.i15 = getelementptr i8, ptr %add.ptr.i.i13, i32 %mul.i.i14
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i15) #9, !srcloc !46
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  br label %mvs_read_port_vsr_data.exit

cond.false.i.i:                                   ; preds = %mvs_write_port_vsr_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr4.i.i16 = getelementptr i8, ptr %13, i32 596
  %sub.i.i17 = shl i32 %i, 3
  %mul9.i.i18 = add i32 %sub.i.i17, -32
  %add.ptr10.i.i19 = getelementptr i8, ptr %add.ptr4.i.i16, i32 %mul9.i.i18
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i19) #9, !srcloc !46
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  br label %mvs_read_port_vsr_data.exit

mvs_read_port_vsr_data.exit:                      ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i32 [ %15, %cond.true.i.i ], [ %17, %cond.false.i.i ]
  %phy_status = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 11
  %18 = ptrtoint ptr %phy_status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %phy_status, align 4
  %20 = and i32 %19, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %20)
  %cmp = icmp eq i32 %20, 524288
  %and2 = and i32 %cond.i.i, -536870913
  %masksel = select i1 %cmp, i32 0, i32 536870912
  %tmp.0 = or i32 %masksel, %and2
  %21 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs1.i.i, align 8
  br i1 %cmp.i.i, label %do.body.i.i25, label %do.body6.i.i30

do.body.i.i25:                                    ; preds = %mvs_read_port_vsr_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i22 = getelementptr i8, ptr %22, i32 484
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  tail call void @arm_heavy_mb() #9
  %23 = tail call i32 @llvm.bswap.i32(i32 %tmp.0) #9
  %mul.i.i23 = shl nuw nsw i32 %i, 3
  %add.ptr5.i.i24 = getelementptr i8, ptr %add.ptr.i.i22, i32 %mul.i.i23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i24, i32 %23) #9, !srcloc !45
  br label %mvs_write_port_vsr_data.exit

do.body6.i.i30:                                   ; preds = %mvs_read_port_vsr_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr4.i.i26 = getelementptr i8, ptr %22, i32 596
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !69
  tail call void @arm_heavy_mb() #9
  %24 = tail call i32 @llvm.bswap.i32(i32 %tmp.0) #9
  %sub.i.i27 = shl i32 %i, 3
  %mul9.i.i28 = add i32 %sub.i.i27, -32
  %add.ptr10.i.i29 = getelementptr i8, ptr %add.ptr4.i.i26, i32 %mul9.i.i28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i29, i32 %24) #9, !srcloc !45
  br label %mvs_write_port_vsr_data.exit

mvs_write_port_vsr_data.exit:                     ; preds = %do.body6.i.i30, %do.body.i.i25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_64xx_phy_set_link_rate(ptr nocapture noundef readonly %mvi, i32 noundef %phy_id, ptr nocapture noundef readonly %rates) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %phy_id)
  %cmp.i = icmp ult i32 %phy_id, 4
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %1, i32 384
  %mul.i = shl nuw nsw i32 %phy_id, 2
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #9, !srcloc !46
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !113
  br label %mvs_read_phy_ctl.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr6.i = getelementptr i8, ptr %1, i32 544
  %sub.i = shl i32 %phy_id, 2
  %mul7.i = add i32 %sub.i, -16
  %add.ptr8.i = getelementptr i8, ptr %add.ptr6.i, i32 %mul7.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #9, !srcloc !46
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  br label %mvs_read_phy_ctl.exit

mvs_read_phy_ctl.exit:                            ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %3, %cond.true.i ], [ %5, %cond.false.i ]
  %minimum_linkrate = getelementptr inbounds %struct.sas_phy_linkrates, ptr %rates, i32 0, i32 1
  %6 = ptrtoint ptr %minimum_linkrate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %minimum_linkrate, align 4
  %shl = shl i32 %7, 8
  %8 = ptrtoint ptr %rates to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rates, align 4
  %shl1 = shl i32 %9, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl)
  %tobool.not = icmp eq i32 %shl, 0
  %and = and i32 %cond.i, -3841
  %or = or i32 %shl, %and
  %tmp.0 = select i1 %tobool.not, i32 %cond.i, i32 %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl1)
  %tobool2.not = icmp eq i32 %shl1, 0
  %and4 = and i32 %tmp.0, -61441
  %or5 = or i32 %and4, %shl1
  %tmp.1 = select i1 %tobool2.not, i32 %tmp.0, i32 %or5
  %10 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %12 = tail call i32 @llvm.bswap.i32(i32 %tmp.1) #9
  br i1 %cmp.i, label %do.body.i, label %do.body3.i

do.body.i:                                        ; preds = %mvs_read_phy_ctl.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i20 = getelementptr i8, ptr %11, i32 384
  %mul.i21 = shl nuw nsw i32 %phy_id, 2
  %add.ptr2.i22 = getelementptr i8, ptr %add.ptr.i20, i32 %mul.i21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i22, i32 %12) #9, !srcloc !45
  br label %mvs_write_phy_ctl.exit

do.body3.i:                                       ; preds = %mvs_read_phy_ctl.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr6.i23 = getelementptr i8, ptr %11, i32 544
  %sub.i24 = shl i32 %phy_id, 2
  %mul7.i25 = add i32 %sub.i24, -16
  %add.ptr8.i26 = getelementptr i8, ptr %add.ptr6.i23, i32 %mul7.i25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i26, i32 %12) #9, !srcloc !45
  br label %mvs_write_phy_ctl.exit

mvs_write_phy_ctl.exit:                           ; preds = %do.body3.i, %do.body.i
  tail call void @mvs_64xx_phy_reset(ptr noundef %mvi, i32 noundef %phy_id, i32 noundef 1)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mvs_hw_max_link_rate() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  ret i32 9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_64xx_phy_disable(ptr nocapture noundef readonly %mvi, i32 noundef %phy_id) #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #9
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp, align 4, !annotation !43
  %3 = ptrtoint ptr %mvi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mvi, align 8
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %phy_id)
  %cmp = icmp ult i32 %phy_id, 4
  %sub = add i32 %phy_id, -4
  %offs.0 = select i1 %cmp, i32 64, i32 144
  %phy_id.addr.0 = select i1 %cmp, i32 %phy_id, i32 %sub
  %pdev = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 2
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %call = call i32 @pci_read_config_dword(ptr noundef %6, i32 noundef %offs.0, ptr noundef nonnull %tmp) #9
  %add = add i32 %phy_id.addr.0, 12
  %shl = shl nuw i32 1, %add
  %7 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tmp, align 4
  %or = or i32 %8, %shl
  store i32 %or, ptr %tmp, align 4
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 8
  %call4 = call i32 @pci_write_config_dword(ptr noundef %10, i32 noundef %offs.0, i32 noundef %or) #9
  br label %if.end13

if.else5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %1, i32 64
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !46
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !140
  %add9 = add i32 %phy_id, 12
  %shl10 = shl nuw i32 1, %add9
  %or11 = or i32 %12, %shl10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !141
  tail call void @arm_heavy_mb() #9
  %13 = tail call i32 @llvm.bswap.i32(i32 %or11)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %13) #9, !srcloc !45
  br label %if.end13

if.end13:                                         ; preds = %if.else5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_64xx_phy_enable(ptr nocapture noundef readonly %mvi, i32 noundef %phy_id) #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #9
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp, align 4, !annotation !43
  %3 = ptrtoint ptr %mvi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mvi, align 8
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %phy_id)
  %cmp = icmp ult i32 %phy_id, 4
  %sub = add i32 %phy_id, -4
  %offs.0 = select i1 %cmp, i32 64, i32 144
  %phy_id.addr.0 = select i1 %cmp, i32 %phy_id, i32 %sub
  %pdev = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 2
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %call = call i32 @pci_read_config_dword(ptr noundef %6, i32 noundef %offs.0, ptr noundef nonnull %tmp) #9
  %add = add i32 %phy_id.addr.0, 12
  %shl = shl nuw i32 1, %add
  %neg = xor i32 %shl, -1
  %7 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tmp, align 4
  %and3 = and i32 %8, %neg
  store i32 %and3, ptr %tmp, align 4
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 8
  %call5 = call i32 @pci_write_config_dword(ptr noundef %10, i32 noundef %offs.0, i32 noundef %and3) #9
  br label %if.end15

if.else6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %1, i32 64
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !46
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !142
  %add10 = add i32 %phy_id, 12
  %shl11 = shl nuw i32 1, %add10
  %neg12 = xor i32 %shl11, -1
  %and13 = and i32 %12, %neg12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !143
  tail call void @arm_heavy_mb() #9
  %13 = tail call i32 @llvm.bswap.i32(i32 %and13)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %13) #9, !srcloc !45
  br label %if.end15

if.end15:                                         ; preds = %if.else6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_64xx_phy_reset(ptr nocapture noundef readonly %mvi, i32 noundef %phy_id, i32 noundef %hard) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1.i.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %phy_id)
  %cmp.i.i = icmp ult i32 %phy_id, 4
  br i1 %cmp.i.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 352
  %mul.i.i = shl nuw nsw i32 %phy_id, 3
  %add.ptr5.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #9, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  %3 = and i32 %2, -16777217
  %4 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs1.i.i, align 8
  %add.ptr.i.i28 = getelementptr i8, ptr %5, i32 352
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  tail call void @arm_heavy_mb() #9
  %add.ptr5.i.i30 = getelementptr i8, ptr %add.ptr.i.i28, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i30, i32 %3) #9, !srcloc !45
  %6 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs1.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 384
  %mul.i = shl nuw nsw i32 %phy_id, 2
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #9, !srcloc !46
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !113
  br label %mvs_read_phy_ctl.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr4.i.i = getelementptr i8, ptr %1, i32 512
  %sub.i.i = shl i32 %phy_id, 3
  %mul9.i.i = add i32 %sub.i.i, -32
  %add.ptr10.i.i = getelementptr i8, ptr %add.ptr4.i.i, i32 %mul9.i.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i) #9, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  %11 = and i32 %10, -16777217
  %12 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs1.i.i, align 8
  %add.ptr4.i.i31 = getelementptr i8, ptr %13, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !69
  tail call void @arm_heavy_mb() #9
  %add.ptr10.i.i34 = getelementptr i8, ptr %add.ptr4.i.i31, i32 %mul9.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i34, i32 %11) #9, !srcloc !45
  %14 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs1.i.i, align 8
  %add.ptr6.i = getelementptr i8, ptr %15, i32 544
  %sub.i = shl i32 %phy_id, 2
  %mul7.i = add i32 %sub.i, -16
  %add.ptr8.i = getelementptr i8, ptr %add.ptr6.i, i32 %mul7.i
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #9, !srcloc !46
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  br label %mvs_read_phy_ctl.exit

mvs_read_phy_ctl.exit:                            ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %9, %cond.true.i ], [ %17, %cond.false.i ]
  %18 = zext i32 %hard to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %hard, label %mvs_read_phy_ctl.exit.if.end5_crit_edge [
    i32 1, label %if.then
    i32 0, label %if.then3
  ]

mvs_read_phy_ctl.exit.if.end5_crit_edge:          ; preds = %mvs_read_phy_ctl.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %mvs_read_phy_ctl.exit
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %cond.i, 2
  br label %if.end5

if.then3:                                         ; preds = %mvs_read_phy_ctl.exit
  call void @__sanitizer_cov_trace_pc() #11
  %or4 = or i32 %cond.i, 1
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then, %mvs_read_phy_ctl.exit.if.end5_crit_edge
  %tmp.0 = phi i32 [ %or, %if.then ], [ %or4, %if.then3 ], [ %cond.i, %mvs_read_phy_ctl.exit.if.end5_crit_edge ]
  %19 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs1.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %21 = tail call i32 @llvm.bswap.i32(i32 %tmp.0) #9
  br i1 %cmp.i.i, label %do.body.i, label %do.body3.i

do.body.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i37 = getelementptr i8, ptr %20, i32 384
  %mul.i38 = shl nuw nsw i32 %phy_id, 2
  %add.ptr2.i39 = getelementptr i8, ptr %add.ptr.i37, i32 %mul.i38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i39, i32 %21) #9, !srcloc !45
  br label %mvs_write_phy_ctl.exit

do.body3.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr6.i40 = getelementptr i8, ptr %20, i32 544
  %sub.i41 = shl i32 %phy_id, 2
  %mul7.i42 = add i32 %sub.i41, -16
  %add.ptr8.i43 = getelementptr i8, ptr %add.ptr6.i40, i32 %mul7.i42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i43, i32 %21) #9, !srcloc !45
  br label %mvs_write_phy_ctl.exit

mvs_write_phy_ctl.exit:                           ; preds = %do.body3.i, %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hard)
  %tobool.not = icmp eq i32 %hard, 0
  br i1 %tobool.not, label %mvs_write_phy_ctl.exit.if.end10_crit_edge, label %do.body.preheader

mvs_write_phy_ctl.exit.if.end10_crit_edge:        ; preds = %mvs_write_phy_ctl.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

do.body.preheader:                                ; preds = %mvs_write_phy_ctl.exit
  %sub.i51 = shl i32 %phy_id, 2
  %mul7.i52 = add i32 %sub.i51, -16
  br label %do.body

do.body:                                          ; preds = %mvs_read_phy_ctl.exit56.do.body_crit_edge, %do.body.preheader
  %22 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs1.i.i, align 8
  br i1 %cmp.i.i, label %cond.true.i49, label %cond.false.i54

cond.true.i49:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i46 = getelementptr i8, ptr %23, i32 384
  %add.ptr2.i48 = getelementptr i8, ptr %add.ptr.i46, i32 %sub.i51
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i48) #9, !srcloc !46
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !113
  br label %mvs_read_phy_ctl.exit56

cond.false.i54:                                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr6.i50 = getelementptr i8, ptr %23, i32 544
  %add.ptr8.i53 = getelementptr i8, ptr %add.ptr6.i50, i32 %mul7.i52
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i53) #9, !srcloc !46
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  br label %mvs_read_phy_ctl.exit56

mvs_read_phy_ctl.exit56:                          ; preds = %cond.false.i54, %cond.true.i49
  %cond.i55 = phi i32 [ %25, %cond.true.i49 ], [ %27, %cond.false.i54 ]
  %and8 = and i32 %cond.i55, 2
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %mvs_read_phy_ctl.exit56.if.end10_crit_edge, label %mvs_read_phy_ctl.exit56.do.body_crit_edge

mvs_read_phy_ctl.exit56.do.body_crit_edge:        ; preds = %mvs_read_phy_ctl.exit56
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

mvs_read_phy_ctl.exit56.if.end10_crit_edge:       ; preds = %mvs_read_phy_ctl.exit56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end10:                                         ; preds = %mvs_read_phy_ctl.exit56.if.end10_crit_edge, %mvs_write_phy_ctl.exit.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_64xx_stp_reset(ptr nocapture noundef readonly %mvi, i32 noundef %phy_id) #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #9
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !43
  %3 = ptrtoint ptr %mvi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mvi, align 8
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %phy_id)
  %cmp = icmp ult i32 %phy_id, 4
  %pdev = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 2
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call = call i32 @pci_read_config_dword(ptr noundef %6, i32 noundef 64, ptr noundef nonnull %reg) #9
  br label %if.end9

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = call i32 @pci_read_config_dword(ptr noundef %6, i32 noundef 144, ptr noundef nonnull %reg) #9
  br label %if.end9

if.else5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %1, i32 64
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !46
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %reg, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else5, %if.else, %if.then2
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %phy_id)
  %cmp10 = icmp ult i32 %phy_id, 4
  %sub = add i32 %phy_id, -4
  %phy_id.pn = select i1 %cmp10, i32 %phy_id, i32 %sub
  %shl12.pn = shl i32 65536, %phy_id.pn
  %tmp.0 = or i32 %11, %shl12.pn
  %12 = ptrtoint ptr %mvi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mvi, align 8
  %and19 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.then21, label %do.body

if.then21:                                        ; preds = %if.end9
  %pdev24 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 2
  %14 = ptrtoint ptr %pdev24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev24, align 8
  br i1 %cmp10, label %if.then23, label %if.else29

if.then23:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %call25 = call i32 @pci_write_config_dword(ptr noundef %15, i32 noundef 64, i32 noundef %tmp.0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %16(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %17(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %18(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %19(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %20(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %23(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %24(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %25(i32 noundef 214748000) #9
  %26 = ptrtoint ptr %pdev24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev24, align 8
  %28 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %reg, align 4
  %call28 = call i32 @pci_write_config_dword(ptr noundef %27, i32 noundef 64, i32 noundef %29) #9
  br label %if.end53

if.else29:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %call31 = call i32 @pci_write_config_dword(ptr noundef %15, i32 noundef 144, i32 noundef %tmp.0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %30(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %31(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %32(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %33(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %34(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %35(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %36(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %37(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %38(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %39(i32 noundef 214748000) #9
  %40 = ptrtoint ptr %pdev24 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev24, align 8
  %42 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %reg, align 4
  %call39 = call i32 @pci_write_config_dword(ptr noundef %41, i32 noundef 144, i32 noundef %43) #9
  br label %if.end53

do.body:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !145
  call void @arm_heavy_mb() #9
  %44 = call i32 @llvm.bswap.i32(i32 %tmp.0)
  %add.ptr42 = getelementptr i8, ptr %1, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %44) #9, !srcloc !45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %45(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %46(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %47(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %48(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %49(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %50(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %51(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %52(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %53(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %54(i32 noundef 214748000) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  call void @arm_heavy_mb() #9
  %55 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %reg, align 4
  %57 = call i32 @llvm.bswap.i32(i32 %56)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %57) #9, !srcloc !45
  br label %if.end53

if.end53:                                         ; preds = %do.body, %if.else29, %if.then23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_64xx_clear_active_cmds(ptr nocapture noundef readonly %mvi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 260
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !148
  tail call void @arm_heavy_mb() #9
  %3 = and i32 %2, -65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #9, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !149
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #9, !srcloc !45
  %add.ptr11 = getelementptr i8, ptr %1, i32 256
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #9, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !151
  tail call void @arm_heavy_mb() #9
  %5 = and i32 %4, -65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %5) #9, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %4) #9, !srcloc !45
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvs_64xx_spi_read_data(ptr nocapture noundef readonly %mvi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_ex = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 5
  %0 = ptrtoint ptr %regs_ex to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_ex, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %2 = ptrtoint ptr %add.ptr to i32
  %and = and i32 %2, 1048575
  %add = or i32 %and, -18874368
  %3 = inttoptr i32 %add to ptr
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %3) #9, !srcloc !46
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_64xx_spi_write_data(ptr nocapture noundef readonly %mvi, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_ex = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 5
  %0 = ptrtoint ptr %regs_ex to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_ex, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @arm_heavy_mb() #9
  %2 = tail call i32 @llvm.bswap.i32(i32 %data)
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %3 = ptrtoint ptr %add.ptr to i32
  %and = and i32 %3, 1048575
  %add = or i32 %and, -18874368
  %4 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %4, i32 %2) #9, !srcloc !45
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mvs_64xx_spi_buildcmd(ptr nocapture noundef readnone %mvi, ptr nocapture noundef writeonly %dwCmd, i8 noundef zeroext %cmd, i8 noundef zeroext %read, i8 noundef zeroext %length, i32 noundef %addr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %cmd to i32
  %shl = shl nuw i32 %conv, 24
  %conv1 = zext i8 %length to i32
  %shl2 = shl nuw nsw i32 %conv1, 19
  %or = or i32 %shl2, %shl
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read)
  %tobool.not = icmp eq i8 %read, 0
  %or3 = or i32 %or, 8388608
  %spec.select = select i1 %tobool.not, i32 %or, i32 %or3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %addr)
  %cmp.not = icmp eq i32 %addr, -1
  %and = and i32 %addr, 262143
  %or6 = or i32 %and, %spec.select
  %or7 = or i32 %or6, 4194304
  %dwTmp.1 = select i1 %cmp.not, i32 %spec.select, i32 %or7
  %0 = ptrtoint ptr %dwCmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %dwTmp.1, ptr %dwCmd, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvs_64xx_spi_issuecmd(ptr nocapture noundef readonly %mvi, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_ex = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 5
  %0 = ptrtoint ptr %regs_ex to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_ex, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !155
  tail call void @arm_heavy_mb() #9
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %2 = ptrtoint ptr %add.ptr to i32
  %and = and i32 %2, 1048575
  %add = or i32 %and, -18874368
  %3 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %3, i32 32) #9, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !156
  tail call void @arm_heavy_mb() #9
  %4 = tail call i32 @llvm.bswap.i32(i32 %cmd)
  %add.ptr4 = getelementptr i8, ptr %1, i32 20
  %5 = ptrtoint ptr %add.ptr4 to i32
  %and5 = and i32 %5, 1048575
  %add6 = or i32 %and5, -18874368
  %6 = inttoptr i32 %add6 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %6, i32 %4) #9, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %3, i32 4128) #9, !srcloc !45
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvs_64xx_spi_waitdataready(ptr nocapture noundef readonly %mvi, i32 noundef %timeout) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_ex = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 5
  %0 = ptrtoint ptr %regs_ex to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_ex, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %2 = ptrtoint ptr %add.ptr to i32
  %and = and i32 %2, 1048575
  %add = or i32 %and, -18874368
  %3 = inttoptr i32 %add to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %cmp6.not = icmp eq i32 %timeout, 0
  br i1 %cmp6.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.07 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %3) #9, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  %5 = and i32 %4, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %for.body
  tail call void @msleep(i32 noundef 10) #9
  %inc = add nuw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, %timeout
  br i1 %exitcond.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_64xx_fix_dma(ptr nocapture noundef readonly %mvi, i32 noundef %phy_mask, i32 noundef %buf_len, i32 noundef %from, ptr nocapture noundef writeonly %prd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = sub i32 64, %from
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp6 = icmp sgt i32 %sub, 0
  br i1 %cmp6, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %add.ptr = getelementptr %struct.mvs_prd, ptr %prd, i32 %from
  %bulk_buffer_dma = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 38
  %0 = ptrtoint ptr %bulk_buffer_dma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bulk_buffer_dma, align 4
  %conv = zext i32 %1 to i64
  %2 = tail call i64 @llvm.bswap.i64(i64 %conv)
  %3 = tail call i32 @llvm.bswap.i32(i32 %buf_len)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %buf_prd.08 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %buf_prd.08 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %2, ptr %buf_prd.08, align 8
  %len = getelementptr inbounds %struct.mvs_prd, ptr %buf_prd.08, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %3, ptr %len, align 4
  %incdec.ptr = getelementptr %struct.mvs_prd, ptr %buf_prd.08, i32 1
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, %sub
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_64xx_tune_interrupt(ptr nocapture noundef readonly %mvi, i32 noundef %time) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %time)
  %cmp = icmp eq i32 %time, 0
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  tail call void @arm_heavy_mb() #9
  %add.ptr = getelementptr i8, ptr %1, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  tail call void @arm_heavy_mb() #9
  %add.ptr5 = getelementptr i8, ptr %1, i32 332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 256) #9, !srcloc !45
  br label %if.end25

if.else:                                          ; preds = %entry
  %chip = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 20
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %slot_width = getelementptr inbounds %struct.mvs_chip_info, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %slot_width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %slot_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp6 = icmp ugt i32 %5, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %cmp6, label %do.body8, label %do.body13

do.body8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr11 = getelementptr i8, ptr %1, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 -16711424) #9, !srcloc !45
  br label %if.end

do.body13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  %slot_width17 = getelementptr inbounds %struct.mvs_chip_info, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %slot_width17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %slot_width17, align 4
  %shl18 = shl nuw i32 1, %9
  %or = or i32 %shl18, 65536
  %10 = tail call i32 @llvm.bswap.i32(i32 %or)
  %add.ptr19 = getelementptr i8, ptr %1, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %10) #9, !srcloc !45
  br label %if.end

if.end:                                           ; preds = %do.body13, %do.body8
  %or20 = or i32 %time, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !161
  tail call void @arm_heavy_mb() #9
  %11 = tail call i32 @llvm.bswap.i32(i32 %or20)
  %add.ptr24 = getelementptr i8, ptr %1, i32 332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %11) #9, !srcloc !45
  br label %if.end25

if.end25:                                         ; preds = %if.end, %do.body
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mvs_set_sas_addr(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mvs_update_phyinfo(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvs_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mvs_iounmap(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #7 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #7 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvs_int_rx(ptr noundef, i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mvs_int_port(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/mvsas/mv_64xx.c", i32 762, i32 2}
!2 = !{ptr @mvs_64xx_dispatch, !3, !"mvs_64xx_dispatch", i1 false, i1 false}
!3 = !{!"../drivers/scsi/mvsas/mv_64xx.c", i32 761, i32 27}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/scsi/mvsas/mv_chips.h", i32 231, i32 3}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/mvsas/mv_chips.h", i32 232, i32 3}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/mvsas/mv_chips.h", i32 233, i32 3}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/mvsas/mv_chips.h", i32 242, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @mvs_show_pcie_usage._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @mvs_show_pcie_usage._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/mvsas/mv_64xx.c", i32 188, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mvs_64xx_chip_reset._entry, !19, !"_entry", i1 false, i1 false}
!24 = !{ptr @mvs_64xx_chip_reset._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/scsi/mvsas/mv_64xx.c", i32 131, i32 4}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mvs_64xx_clear_srs_irq._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @mvs_64xx_clear_srs_irq._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/mvsas/mv_64xx.c", i32 137, i32 4}
!32 = !{ptr @mvs_64xx_clear_srs_irq._entry.15, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @mvs_64xx_clear_srs_irq._entry_ptr.17, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"auto-init"}
!44 = !{i64 2155897819}
!45 = !{i64 6257565}
!46 = !{i64 6257983}
!47 = !{i64 2155898521}
!48 = !{i64 2155898778}
!49 = !{i64 2155899480}
!50 = !{i64 2155899844}
!51 = !{i64 2155900564}
!52 = !{i64 2155901084}
!53 = !{i64 2155901604}
!54 = !{i64 2155905484}
!55 = !{i64 2155905745}
!56 = !{i64 2155906433}
!57 = !{i64 2155906805}
!58 = !{i64 2155907525}
!59 = !{i64 2155908045}
!60 = !{i64 2155908306}
!61 = !{i64 2155908755}
!62 = !{i64 2155909192}
!63 = !{i64 2155868236}
!64 = !{i64 2155868953}
!65 = !{i64 2155869387}
!66 = !{i64 2155869842}
!67 = !{i64 2155874177}
!68 = !{i64 2155887064}
!69 = !{i64 2155874569}
!70 = !{i64 2155909669}
!71 = !{i64 2155910191}
!72 = !{i64 2155910730}
!73 = !{i64 2155911283}
!74 = !{i64 2155911826}
!75 = !{i64 2155912435}
!76 = !{i64 2155912973}
!77 = !{i64 2155913484}
!78 = !{i64 2155914017}
!79 = !{i64 2155914510}
!80 = !{i64 2155915021}
!81 = !{i64 2155886358}
!82 = !{i64 2155886611}
!83 = !{i64 2155885858}
!84 = !{i64 2155915557}
!85 = !{i64 2155915964}
!86 = !{i64 2155916365}
!87 = !{i64 2155916748}
!88 = !{i64 2155917131}
!89 = !{i64 2155917514}
!90 = !{i64 2155917897}
!91 = !{i64 2155918280}
!92 = !{i64 2155873290}
!93 = !{i64 2155873796}
!94 = !{i64 2155918953}
!95 = !{i64 2155919292}
!96 = !{i64 2155919979}
!97 = !{i64 2155920479}
!98 = !{i64 2155920732}
!99 = !{i64 2155922395}
!100 = !{i64 2155922845}
!101 = !{i64 2155923383}
!102 = !{i64 2155923969}
!103 = !{i64 2155924588}
!104 = !{i64 2155925218}
!105 = !{i64 2155925688}
!106 = !{i64 2155928844}
!107 = !{i64 2155929576}
!108 = !{i64 2155928470}
!109 = !{i64 2155926412}
!110 = !{i64 2155926691}
!111 = !{i64 2155927426}
!112 = !{i64 2155927707}
!113 = !{i64 2155870810}
!114 = !{i64 2155871450}
!115 = !{i64 2155893119}
!116 = !{i64 2155894785}
!117 = !{i64 2155895535}
!118 = !{i64 2155897319}
!119 = !{i64 2155930131}
!120 = !{i64 2155930406}
!121 = !{i64 2155930882}
!122 = !{i64 2155931598}
!123 = !{i64 2155931851}
!124 = !{i64 2155882029}
!125 = !{i64 2155882927}
!126 = !{i64 2155881114}
!127 = !{i64 2155879928}
!128 = !{i64 2155880203}
!129 = !{i64 2155881401}
!130 = !{i64 2155935529}
!131 = !{i64 2155936029}
!132 = !{i64 2155937528}
!133 = !{i64 2155937803}
!134 = !{i64 2155932540}
!135 = !{i64 2155932809}
!136 = !{i64 2155933517}
!137 = !{i64 2155933786}
!138 = !{i64 2155934549}
!139 = !{i64 2155934824}
!140 = !{i64 2155903546}
!141 = !{i64 2155903807}
!142 = !{i64 2155904515}
!143 = !{i64 2155904776}
!144 = !{i64 2155887772}
!145 = !{i64 2155890629}
!146 = !{i64 2155892376}
!147 = !{i64 2155939057}
!148 = !{i64 2155939328}
!149 = !{i64 2155939792}
!150 = !{i64 2155940476}
!151 = !{i64 2155940747}
!152 = !{i64 2155941211}
!153 = !{i64 2155942164}
!154 = !{i64 2155942485}
!155 = !{i64 2155943069}
!156 = !{i64 2155943631}
!157 = !{i64 2155944233}
!158 = !{i64 2155945267}
!159 = !{i64 2155945744}
!160 = !{i64 2155946210}
!161 = !{i64 2155947881}

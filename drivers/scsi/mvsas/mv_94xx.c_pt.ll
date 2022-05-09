; ModuleID = '/llk/IR_all_yes/drivers/scsi/mvsas/mv_94xx.c_pt.bc'
source_filename = "../drivers/scsi/mvsas/mv_94xx.c"
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
%struct.mvs_prd = type <{ i64, i32 }>
%struct.sas_identify_frame = type { i8, i8, %union.anon.90, %union.anon.92, [8 x i8], [8 x i8], i8, [7 x i8], i32 }
%union.anon.90 = type { %struct.anon.91 }
%struct.anon.91 = type { i8 }
%union.anon.92 = type { %struct.anon.93 }
%struct.anon.93 = type { i8 }
%struct.mvs_prv_info = type { i8, i8, i8, i8, [2 x ptr], %struct.tasklet_struct }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.94, i32 }
%union.anon.94 = type { ptr }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mv94xx\00", [25 x i8] zeroinitializer }, align 32
@mvs_94xx_dispatch = dso_local constant { %struct.mvs_dispatch, [48 x i8] } { %struct.mvs_dispatch { ptr @.str, ptr @mvs_94xx_init, ptr null, ptr @mvs_94xx_ioremap, ptr @mvs_94xx_iounmap, ptr @mvs_94xx_isr, ptr @mvs_94xx_isr_status, ptr @mvs_94xx_interrupt_enable, ptr @mvs_94xx_interrupt_disable, ptr @mvs_read_phy_ctl, ptr @mvs_write_phy_ctl, ptr @mvs_read_port_cfg_data, ptr @mvs_write_port_cfg_data, ptr @mvs_write_port_cfg_addr, ptr @mvs_read_port_vsr_data, ptr @mvs_write_port_vsr_data, ptr @mvs_write_port_vsr_addr, ptr @mvs_read_port_irq_stat, ptr @mvs_write_port_irq_stat, ptr @mvs_read_port_irq_mask, ptr @mvs_write_port_irq_mask, ptr @mvs_94xx_command_active, ptr @mvs_94xx_clear_srs_irq, ptr @mvs_94xx_issue_stop, ptr @mvs_start_delivery, ptr @mvs_rx_update, ptr @mvs_int_full, ptr @mvs_94xx_assign_reg_set, ptr @mvs_94xx_free_reg_set, ptr @mvs_get_prd_size, ptr @mvs_get_prd_count, ptr @mvs_94xx_make_prd, ptr @mvs_94xx_detect_porttype, ptr @mvs_94xx_oob_done, ptr @mvs_94xx_fix_phy_info, ptr null, ptr @mvs_94xx_phy_set_link_rate, ptr @mvs_hw_max_link_rate, ptr @mvs_94xx_phy_disable, ptr @mvs_94xx_phy_enable, ptr @mvs_94xx_phy_reset, ptr null, ptr @mvs_94xx_clear_active_cmds, ptr @mvs_94xx_spi_read_data, ptr @mvs_94xx_spi_write_data, ptr @mvs_94xx_spi_buildcmd, ptr @mvs_94xx_spi_issuecmd, ptr @mvs_94xx_spi_waitdataready, ptr @mvs_94xx_fix_dma, ptr @mvs_94xx_tune_interrupt, ptr @mvs_94xx_non_spec_ncq_error, ptr @mvs_94xx_gpio_write }, [48 x i8] zeroinitializer }, align 32
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
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mvs_94xx_command_active._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 656, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s %d:command active %08X,  slot [%x].\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mvs_94xx_command_active\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/scsi/mvsas/mv_94xx.c\00", [35 x i8] zeroinitializer }, align 32
@mvs_94xx_command_active._entry_ptr = internal global ptr @mvs_94xx_command_active._entry, section ".printk_index", align 4
@mvs_94xx_clear_srs_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.11, i32 675, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s %d:check SRS 0 %08X.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mvs_94xx_clear_srs_irq\00", [41 x i8] zeroinitializer }, align 32
@mvs_94xx_clear_srs_irq._entry_ptr = internal global ptr @mvs_94xx_clear_srs_irq._entry, section ".printk_index", align 4
@mvs_94xx_clear_srs_irq._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.11, i32 680, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s %d:check SRS 1 %08X.\0A\00", [37 x i8] zeroinitializer }, align 32
@mvs_94xx_clear_srs_irq._entry_ptr.16 = internal global ptr @mvs_94xx_clear_srs_irq._entry.14, section ".printk_index", align 4
@mvs_94xx_clear_srs_irq._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.11, i32 690, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s %d:register set 0x%x was stopped.\0A\00", [56 x i8] zeroinitializer }, align 32
@mvs_94xx_clear_srs_irq._entry_ptr.19 = internal global ptr @mvs_94xx_clear_srs_irq._entry.17, section ".printk_index", align 4
@mvs_94xx_fix_phy_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.11, i32 869, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s %d:get all reg link rate is 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mvs_94xx_fix_phy_info\00", [42 x i8] zeroinitializer }, align 32
@mvs_94xx_fix_phy_info._entry_ptr = internal global ptr @mvs_94xx_fix_phy_info._entry, section ".printk_index", align 4
@mvs_94xx_fix_phy_info._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.11, i32 874, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s %d:get link rate is %d\0A\00", [35 x i8] zeroinitializer }, align 32
@mvs_94xx_fix_phy_info._entry_ptr.24 = internal global ptr @mvs_94xx_fix_phy_info._entry.22, section ".printk_index", align 4
@mvs_94xx_get_att_identify_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.11, i32 832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s %d:94xx phy %d atta frame %d %x.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mvs_94xx_get_att_identify_frame\00", [32 x i8] zeroinitializer }, align 32
@mvs_94xx_get_att_identify_frame._entry_ptr = internal global ptr @mvs_94xx_get_att_identify_frame._entry, section ".printk_index", align 4
@mvs_94xx_phy_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.11, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s %d:phy hard reset failed.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mvs_94xx_phy_reset\00", [45 x i8] zeroinitializer }, align 32
@mvs_94xx_phy_reset._entry_ptr = internal global ptr @mvs_94xx_phy_reset._entry, section ".printk_index", align 4
@mvs_94xx_non_spec_ncq_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.11, i32 723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017%s %d:non specific ncq error err_0:%x,err_1:%x.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mvs_94xx_non_spec_ncq_error\00", [36 x i8] zeroinitializer }, align 32
@mvs_94xx_non_spec_ncq_error._entry_ptr = internal global ptr @mvs_94xx_non_spec_ncq_error._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 160]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 160]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 160]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 160]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 4]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 1129, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [18 x i8] c"mvs_94xx_dispatch\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 1128, i32 27 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 231, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 232, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 233, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [33 x i8] c"../drivers/scsi/mvsas/mv_chips.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 242, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 656, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 675, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 680, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 690, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 869, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 874, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 831, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 278, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.142 = private constant [32 x i8] c"../drivers/scsi/mvsas/mv_94xx.c\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 722, i32 2 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @mvs_94xx_clear_srs_irq._entry, ptr @mvs_94xx_clear_srs_irq._entry.14, ptr @mvs_94xx_clear_srs_irq._entry.17, ptr @mvs_94xx_clear_srs_irq._entry_ptr, ptr @mvs_94xx_clear_srs_irq._entry_ptr.16, ptr @mvs_94xx_clear_srs_irq._entry_ptr.19, ptr @mvs_94xx_command_active._entry, ptr @mvs_94xx_command_active._entry_ptr, ptr @mvs_94xx_fix_phy_info._entry, ptr @mvs_94xx_fix_phy_info._entry.22, ptr @mvs_94xx_fix_phy_info._entry_ptr, ptr @mvs_94xx_fix_phy_info._entry_ptr.24, ptr @mvs_94xx_get_att_identify_frame._entry, ptr @mvs_94xx_get_att_identify_frame._entry_ptr, ptr @mvs_94xx_non_spec_ncq_error._entry, ptr @mvs_94xx_non_spec_ncq_error._entry_ptr, ptr @mvs_94xx_phy_reset._entry, ptr @mvs_94xx_phy_reset._entry_ptr, ptr @mvs_show_pcie_usage._entry, ptr @mvs_show_pcie_usage._entry_ptr, ptr @.str, ptr @mvs_94xx_dispatch, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_94xx_dispatch to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_show_pcie_usage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_94xx_command_active._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_94xx_clear_srs_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_94xx_clear_srs_irq._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_94xx_clear_srs_irq._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_94xx_fix_phy_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_94xx_fix_phy_info._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_94xx_get_att_identify_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_94xx_phy_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvs_94xx_non_spec_ncq_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvs_94xx_init(ptr noundef %mvi) #0 align 64 {
entry:
  %link_stat.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  %pdev = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 2
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %revision2 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %revision2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %revision2, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %link_stat.i) #7
  %6 = ptrtoint ptr %link_stat.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %link_stat.i, align 2, !annotation !70
  %7 = ptrtoint ptr %mvi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mvi, align 8
  %and.i = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.mvs_show_pcie_usage.exit_crit_edge

entry.mvs_show_pcie_usage.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvs_show_pcie_usage.exit

lor.lhs.false.i:                                  ; preds = %entry
  %id.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 25
  %9 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 0
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false.i.mvs_show_pcie_usage.exit_crit_edge

lor.lhs.false.i.mvs_show_pcie_usage.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvs_show_pcie_usage.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call i32 @pci_read_config_word(ptr noundef %3, i32 noundef 130, ptr noundef nonnull %link_stat.i) #7
  %11 = ptrtoint ptr %link_stat.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %link_stat.i, align 2
  %and1.i = and i16 %12, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %and1.i)
  %cmp4.i = icmp ugt i16 %and1.i, 2
  %spec.store.select.i = select i1 %cmp4.i, i16 0, i16 %and1.i
  %dev.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 3
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %15 = lshr i16 %12, 4
  %16 = and i16 %15, 63
  %17 = zext i16 %16 to i32
  %idxprom.i = zext i16 %spec.store.select.i to i32
  %arrayidx.i = getelementptr [3 x ptr], ptr @__const.mvs_show_pcie_usage.spd, i32 0, i32 %idxprom.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %14, ptr noundef nonnull @.str.4, i32 noundef %17, ptr noundef %19) #10
  br label %mvs_show_pcie_usage.exit

mvs_show_pcie_usage.exit:                         ; preds = %if.end.i, %lor.lhs.false.i.mvs_show_pcie_usage.exit_crit_edge, %entry.mvs_show_pcie_usage.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %link_stat.i) #7
  %20 = ptrtoint ptr %mvi to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mvi, align 8
  %and = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %mvs_show_pcie_usage.exit.if.end_crit_edge, label %if.then

mvs_show_pcie_usage.exit.if.end_crit_edge:        ; preds = %mvs_show_pcie_usage.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %mvs_show_pcie_usage.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %1, i32 64
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  %23 = and i32 %22, -15728656
  %24 = or i32 %23, 15728640
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %24) #7, !srcloc !74
  br label %if.end

if.end:                                           ; preds = %if.then, %mvs_show_pcie_usage.exit.if.end_crit_edge
  %add.ptr9 = getelementptr i8, ptr %1, i32 256
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #7, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  %26 = and i32 %25, -65536
  %27 = call i32 @llvm.bswap.i32(i32 %26)
  %and14 = and i32 %27, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %do.body19, label %if.end.if.end32_crit_edge

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

do.body19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  call void @arm_heavy_mb() #7
  %or22 = or i32 %27, 32
  %28 = call i32 @llvm.bswap.i32(i32 %or22)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %28) #7, !srcloc !74
  %29 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #7, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  br label %if.end32

if.end32:                                         ; preds = %do.body19, %if.end.if.end32_crit_edge
  %30 = ptrtoint ptr %mvi to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mvi, align 8
  %and34 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end32.do.body57_crit_edge, label %if.then36

if.end32.do.body57_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body57

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr39 = getelementptr i8, ptr %1, i32 64
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #7, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %33 = and i32 %32, -15793936
  %34 = or i32 %33, 65280
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %34) #7, !srcloc !74
  call void @msleep(i32 noundef 100) #7
  %35 = or i32 %33, 61440
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %35) #7, !srcloc !74
  call void @msleep(i32 noundef 100) #7
  br label %do.body57

do.body57:                                        ; preds = %if.then36, %if.end32.do.body57_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  call void @arm_heavy_mb() #7
  %add.ptr60 = getelementptr i8, ptr %1, i32 156
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 -16777216) #7, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %5)
  %cmp = icmp eq i8 %5, -96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  %add.ptr66 = getelementptr i8, ptr %1, i32 656
  br i1 %cmp, label %do.body72.thread, label %do.body72

do.body72.thread:                                 ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 67174400) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  call void @arm_heavy_mb() #7
  %add.ptr70 = getelementptr i8, ptr %1, i32 660
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 -2139094784) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 134217728) #7, !srcloc !74
  br label %do.body83

do.body72:                                        ; preds = %do.body57
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 134217728) #7, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cond = icmp eq i8 %5, 1
  br i1 %cond, label %do.body72.do.body83_crit_edge, label %do.body88

do.body72.do.body83_crit_edge:                    ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body83

do.body83:                                        ; preds = %do.body72.do.body83_crit_edge, %do.body72.thread
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  call void @arm_heavy_mb() #7
  %add.ptr86 = getelementptr i8, ptr %1, i32 660
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 -19627008) #7, !srcloc !74
  br label %if.end92

do.body88:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  call void @arm_heavy_mb() #7
  %add.ptr91 = getelementptr i8, ptr %1, i32 660
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91, i32 -16808960) #7, !srcloc !74
  br label %if.end92

if.end92:                                         ; preds = %do.body88, %do.body83
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp94 = icmp eq i8 %5, 1
  br i1 %cmp94, label %do.body97, label %if.end92.do.body114_crit_edge

if.end92.do.body114_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body114

do.body97:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 1140916224) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  call void @arm_heavy_mb() #7
  %add.ptr104 = getelementptr i8, ptr %1, i32 660
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104, i32 101711880) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 -1275002880) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104, i32 1601175552) #7, !srcloc !74
  br label %do.body114

do.body114:                                       ; preds = %do.body97, %if.end92.do.body114_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  call void @arm_heavy_mb() #7
  %add.ptr117 = getelementptr i8, ptr %1, i32 260
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr117, i32 0) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  call void @arm_heavy_mb() #7
  %add.ptr121 = getelementptr i8, ptr %1, i32 280
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr121, i32 0) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  call void @arm_heavy_mb() #7
  %add.ptr125 = getelementptr i8, ptr %1, i32 284
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr125, i32 0) #7, !srcloc !74
  %36 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs1, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  call void @arm_heavy_mb() #7
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 368
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 402718720) #7, !srcloc !74
  %add.ptr2.i.i = getelementptr i8, ptr %37, i32 372
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #7, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  %39 = and i32 %38, -393217
  %40 = or i32 %39, 262144
  %41 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs1, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  call void @arm_heavy_mb() #7
  %add.ptr.i16.i = getelementptr i8, ptr %42, i32 368
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 402718720) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  call void @arm_heavy_mb() #7
  %add.ptr5.i.i = getelementptr i8, ptr %42, i32 372
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %40) #7, !srcloc !74
  %43 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs1, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  call void @arm_heavy_mb() #7
  %add.ptr.i18.i = getelementptr i8, ptr %44, i32 368
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 671154176) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  call void @arm_heavy_mb() #7
  %add.ptr5.i19.i = getelementptr i8, ptr %44, i32 372
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i19.i, i32 2139029504) #7, !srcloc !74
  %45 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs1, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  call void @arm_heavy_mb() #7
  %add.ptr.i21.i = getelementptr i8, ptr %46, i32 368
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 604045312) #7, !srcloc !74
  %add.ptr2.i22.i = getelementptr i8, ptr %46, i32 372
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i22.i) #7, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  %48 = and i32 %47, 65535
  %49 = or i32 %48, -12648448
  %50 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs1, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  call void @arm_heavy_mb() #7
  %add.ptr.i24.i = getelementptr i8, ptr %51, i32 368
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 604045312) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  call void @arm_heavy_mb() #7
  %add.ptr5.i25.i = getelementptr i8, ptr %51, i32 372
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i25.i, i32 %49) #7, !srcloc !74
  %52 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs1, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  call void @arm_heavy_mb() #7
  %add.ptr.i27.i = getelementptr i8, ptr %53, i32 368
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 1006698496) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  call void @arm_heavy_mb() #7
  %add.ptr5.i28.i = getelementptr i8, ptr %53, i32 372
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i28.i, i32 31232) #7, !srcloc !74
  %54 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs1, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  call void @arm_heavy_mb() #7
  %add.ptr.i30.i = getelementptr i8, ptr %55, i32 368
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i, i32 -1543438336) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  call void @arm_heavy_mb() #7
  %add.ptr5.i31.i = getelementptr i8, ptr %55, i32 372
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i31.i, i32 2109730815) #7, !srcloc !74
  %56 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs1, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  call void @arm_heavy_mb() #7
  %add.ptr.i = getelementptr i8, ptr %57, i32 368
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 671154176) #7, !srcloc !74
  %add.ptr2.i = getelementptr i8, ptr %57, i32 372
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #7, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  %59 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %do.body114.do.body142_crit_edge [
    i8 -96, label %do.body114.if.then138_crit_edge
    i8 2, label %do.body114.if.then138_crit_edge584
    i8 1, label %do.body114.if.then138_crit_edge585
  ]

do.body114.if.then138_crit_edge585:               ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then138

do.body114.if.then138_crit_edge584:               ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then138

do.body114.if.then138_crit_edge:                  ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then138

do.body114.do.body142_crit_edge:                  ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body142

if.then138:                                       ; preds = %do.body114.if.then138_crit_edge, %do.body114.if.then138_crit_edge584, %do.body114.if.then138_crit_edge585
  %60 = and i32 %58, 65535
  %61 = or i32 %60, 2130706432
  %62 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs1, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  call void @arm_heavy_mb() #7
  %add.ptr.i513 = getelementptr i8, ptr %63, i32 368
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i513, i32 671154176) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  call void @arm_heavy_mb() #7
  %add.ptr5.i = getelementptr i8, ptr %63, i32 372
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %61) #7, !srcloc !74
  br label %do.body142

do.body142:                                       ; preds = %if.then138, %do.body114.do.body142_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 805306368) #7, !srcloc !74
  %add.ptr148 = getelementptr i8, ptr %1, i32 660
  %64 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr148) #7, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  %65 = and i32 %64, -16711681
  %66 = or i32 %65, 3342336
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr148, i32 %66) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  call void @arm_heavy_mb() #7
  %slot_dma = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 18
  %67 = ptrtoint ptr %slot_dma to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %slot_dma, align 4
  %69 = call i32 @llvm.bswap.i32(i32 %68)
  %add.ptr161 = getelementptr i8, ptr %1, i32 264
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr161, i32 %69) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  call void @arm_heavy_mb() #7
  %add.ptr167 = getelementptr i8, ptr %1, i32 268
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr167, i32 0) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  call void @arm_heavy_mb() #7
  %rx_fis_dma = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 16
  %70 = ptrtoint ptr %rx_fis_dma to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rx_fis_dma, align 4
  %72 = call i32 @llvm.bswap.i32(i32 %71)
  %add.ptr171 = getelementptr i8, ptr %1, i32 272
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr171, i32 %72) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  call void @arm_heavy_mb() #7
  %add.ptr178 = getelementptr i8, ptr %1, i32 276
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr178, i32 0) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  call void @arm_heavy_mb() #7
  %chip = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 20
  %73 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %chip, align 4
  %slot_width = getelementptr inbounds %struct.mvs_chip_info, ptr %74, i32 0, i32 6
  %75 = ptrtoint ptr %slot_width to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %slot_width, align 4
  %shl = shl nuw i32 1, %76
  %77 = call i32 @llvm.bswap.i32(i32 %shl)
  %add.ptr182 = getelementptr i8, ptr %1, i32 288
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr182, i32 %77) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  call void @arm_heavy_mb() #7
  %tx_dma = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 10
  %78 = ptrtoint ptr %tx_dma to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tx_dma, align 4
  %80 = call i32 @llvm.bswap.i32(i32 %79)
  %add.ptr186 = getelementptr i8, ptr %1, i32 292
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr186, i32 %80) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  call void @arm_heavy_mb() #7
  %add.ptr193 = getelementptr i8, ptr %1, i32 296
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr193, i32 0) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  call void @arm_heavy_mb() #7
  %add.ptr197 = getelementptr i8, ptr %1, i32 308
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr197, i32 262144) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !108
  call void @arm_heavy_mb() #7
  %rx_dma = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 13
  %81 = ptrtoint ptr %rx_dma to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %rx_dma, align 8
  %83 = call i32 @llvm.bswap.i32(i32 %82)
  %add.ptr201 = getelementptr i8, ptr %1, i32 312
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr201, i32 %83) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  call void @arm_heavy_mb() #7
  %add.ptr208 = getelementptr i8, ptr %1, i32 316
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr208, i32 0) #7, !srcloc !74
  %84 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %chip, align 4
  %n_phy573 = getelementptr inbounds %struct.mvs_chip_info, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %n_phy573 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %n_phy573, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp210574.not = icmp eq i32 %87, 0
  br i1 %cmp210574.not, label %do.body142.for.end_crit_edge, label %do.body142.for.body_crit_edge

do.body142.for.body_crit_edge:                    ; preds = %do.body142
  br label %for.body

do.body142.for.end_crit_edge:                     ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %mvs_94xx_config_reg_from_hba.exit.for.body_crit_edge, %do.body142.for.body_crit_edge
  %i.0575 = phi i32 [ %inc, %mvs_94xx_config_reg_from_hba.exit.for.body_crit_edge ], [ 0, %do.body142.for.body_crit_edge ]
  call void @mvs_94xx_phy_disable(ptr noundef %mvi, i32 noundef %i.0575)
  %dev_sas_addr = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i.0575, i32 6
  %88 = ptrtoint ptr %dev_sas_addr to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %dev_sas_addr, align 8
  %90 = call i64 @llvm.bswap.i64(i64 %89)
  call void @mvs_set_sas_addr(ptr noundef %mvi, i32 noundef %i.0575, i32 noundef 268, i32 noundef 272, i64 noundef %90) #7
  %91 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regs1, align 8
  %add.ptr.i515 = getelementptr i8, ptr %92, i32 260
  %93 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i515) #7, !srcloc !71
  %94 = call i32 @llvm.bswap.i32(i32 %93) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  %add.i = add i32 %i.0575, 8
  %shl.i = shl nuw i32 1, %add.i
  %or.i = or i32 %94, %shl.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  call void @arm_heavy_mb() #7
  %95 = call i32 @llvm.bswap.i32(i32 %or.i) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i515, i32 %95) #7, !srcloc !74
  %arrayidx.i516 = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 35, i32 6, i32 %i.0575
  %96 = ptrtoint ptr %arrayidx.i516 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx.i516, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %97)
  %cmp.i = icmp eq i32 %97, -1
  br i1 %cmp.i, label %if.then.i, label %for.body.if.end.i517_crit_edge

for.body.if.end.i517_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i517

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %98 = ptrtoint ptr %arrayidx.i516 to i32
  call void @__asan_load2_noabort(i32 %98)
  %bf.load.i = load i16, ptr %arrayidx.i516, align 4
  %bf.clear.i = and i16 %bf.load.i, -30975
  %bf.set15.i = or i16 %bf.clear.i, 12502
  store i16 %bf.set15.i, ptr %arrayidx.i516, align 4
  br label %if.end.i517

if.end.i517:                                      ; preds = %if.then.i, %for.body.if.end.i517_crit_edge
  %arrayidx17.i = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 35, i32 3, i32 %i.0575
  %99 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx17.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %100)
  %cmp18.i = icmp eq i8 %100, -1
  br i1 %cmp18.i, label %if.then20.i, label %if.end.i517.if.end47.i_crit_edge

if.end.i517.if.end47.i_crit_edge:                 ; preds = %if.end.i517
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47.i

if.then20.i:                                      ; preds = %if.end.i517
  call void @__sanitizer_cov_trace_pc() #9
  %101 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pdev, align 8
  %revision.i = getelementptr inbounds %struct.pci_dev, ptr %102, i32 0, i32 12
  %103 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %104)
  %switch.selectcmp.case1.i = icmp eq i8 %104, -96
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %104)
  %switch.selectcmp.case2.i = icmp eq i8 %104, 1
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %105 = select i1 %switch.selectcmp.i, i8 127, i8 -49
  %106 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %arrayidx17.i, align 1
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then20.i, %if.end.i517.if.end47.i_crit_edge
  %arrayidx49.i = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 35, i32 5, i32 %i.0575
  %107 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx49.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %108)
  %cmp51.i = icmp eq i8 %108, -1
  br i1 %cmp51.i, label %if.then53.i, label %if.end47.i.if.end57.i_crit_edge

if.end47.i.if.end57.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57.i

if.then53.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  %109 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 2, ptr %arrayidx49.i, align 1
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then53.i, %if.end47.i.if.end57.i_crit_edge
  %110 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pdev, align 8
  %revision.i.i = getelementptr inbounds %struct.pci_dev, ptr %111, i32 0, i32 12
  %112 = ptrtoint ptr %revision.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %revision.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %113)
  %cmp.i.i = icmp eq i8 %113, -96
  br i1 %cmp.i.i, label %if.end57.i.set_phy_tuning.exit.i_crit_edge, label %for.cond.preheader.i.i

if.end57.i.set_phy_tuning.exit.i_crit_edge:       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_phy_tuning.exit.i

for.cond.preheader.i.i:                           ; preds = %if.end57.i
  %114 = ptrtoint ptr %arrayidx.i516 to i32
  call void @__asan_load4_noabort(i32 %114)
  %.unpack.i = load i32, ptr %arrayidx.i516, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0575)
  %cmp.i.i.i.i = icmp ult i32 %i.0575, 4
  %mul.i.i.i.i = shl i32 %i.0575, 3
  %mul9.i.i.i.i = add i32 %mul.i.i.i.i, -32
  %115 = lshr i32 %.unpack.i, 20
  %or.i.i = and i32 %115, 3968
  %116 = lshr i32 %.unpack.i, 18
  %shl19.i.i = and i32 %116, 62
  %or20.i.i = or i32 %or.i.i, %shl19.i.i
  %shl21.i.i = shl nuw nsw i32 %or20.i.i, 16
  %117 = lshr i32 %.unpack.i, 3
  %shl30.i.i = and i32 %117, 49152
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %mvs_write_port_vsr_data.exit101.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i
  %i.0104.i.i = phi i8 [ 0, %for.cond.preheader.i.i ], [ %inc.i.i, %mvs_write_port_vsr_data.exit101.i.i.for.body.i.i_crit_edge ]
  %setting_1.0103.i.i = phi i32 [ 0, %for.cond.preheader.i.i ], [ %setting_1.1.i.i, %mvs_write_port_vsr_data.exit101.i.i.for.body.i.i_crit_edge ]
  %setting_0.0102.i.i = phi i32 [ 0, %for.cond.preheader.i.i ], [ %setting_0.1.i.i, %mvs_write_port_vsr_data.exit101.i.i.for.body.i.i_crit_edge ]
  %trunc.i.i = trunc i8 %i.0104.i.i to i7
  %118 = sext i7 %trunc.i.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %118)
  %119 = icmp ult i7 %trunc.i.i, 3
  %switch.idx.cast = zext i8 %i.0104.i.i to i32
  %switch.idx.mult = shl nuw nsw i32 %switch.idx.cast, 2
  %switch.offset = add nuw nsw i32 %switch.idx.mult, 280
  %switch.idx.cast581 = zext i8 %i.0104.i.i to i32
  %switch.idx.mult582 = shl nuw nsw i32 %switch.idx.cast581, 2
  %switch.offset583 = add nuw nsw i32 %switch.idx.mult582, 284
  %setting_0.1.i.i = select i1 %119, i32 %switch.offset, i32 %setting_0.0102.i.i
  %setting_1.1.i.i = select i1 %119, i32 %switch.offset583, i32 %setting_1.0103.i.i
  %120 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regs1, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %121, i32 592
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  %122 = call i32 @llvm.bswap.i32(i32 %setting_0.1.i.i) #7
  br i1 %cmp.i.i.i.i, label %do.body.i.i.i.i, label %do.body6.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %mul.i.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i.i.i, i32 %122) #7, !srcloc !74
  br label %mvs_write_port_vsr_addr.exit.i.i

do.body6.i.i.i.i:                                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr10.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %mul9.i.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i.i.i, i32 %122) #7, !srcloc !74
  br label %mvs_write_port_vsr_addr.exit.i.i

mvs_write_port_vsr_addr.exit.i.i:                 ; preds = %do.body6.i.i.i.i, %do.body.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %123 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %123(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %124 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %124(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %125 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %125(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %126 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %126(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %127 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %127(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %128 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %128(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %129 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %129(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %130 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %130(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %131 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %131(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %132 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %132(i32 noundef 214748000) #7
  %133 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %regs1, align 8
  %add.ptr.i.i57.i.i = getelementptr i8, ptr %134, i32 596
  br i1 %cmp.i.i.i.i, label %cond.true.i.i.i.i, label %cond.false.i.i.i.i

cond.true.i.i.i.i:                                ; preds = %mvs_write_port_vsr_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i.i59.i.i = getelementptr i8, ptr %add.ptr.i.i57.i.i, i32 %mul.i.i.i.i
  %135 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i59.i.i) #7, !srcloc !71
  %136 = call i32 @llvm.bswap.i32(i32 %135) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  br label %mvs_read_port_vsr_data.exit.i.i

cond.false.i.i.i.i:                               ; preds = %mvs_write_port_vsr_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr10.i.i61.i.i = getelementptr i8, ptr %add.ptr.i.i57.i.i, i32 %mul9.i.i.i.i
  %137 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i61.i.i) #7, !srcloc !71
  %138 = call i32 @llvm.bswap.i32(i32 %137) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  br label %mvs_read_port_vsr_data.exit.i.i

mvs_read_port_vsr_data.exit.i.i:                  ; preds = %cond.false.i.i.i.i, %cond.true.i.i.i.i
  %cond.i.i.i.i = phi i32 [ %136, %cond.true.i.i.i.i ], [ %138, %cond.false.i.i.i.i ]
  %and.i.i = and i32 %cond.i.i.i.i, -264110081
  %or22.i.i = or i32 %and.i.i, %shl21.i.i
  %139 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %regs1, align 8
  %add.ptr.i.i64.i.i = getelementptr i8, ptr %140, i32 596
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  %141 = call i32 @llvm.bswap.i32(i32 %or22.i.i) #7
  br i1 %cmp.i.i.i.i, label %do.body.i.i67.i.i, label %do.body6.i.i70.i.i

do.body.i.i67.i.i:                                ; preds = %mvs_read_port_vsr_data.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i.i66.i.i = getelementptr i8, ptr %add.ptr.i.i64.i.i, i32 %mul.i.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i66.i.i, i32 %141) #7, !srcloc !74
  br label %mvs_write_port_vsr_data.exit.i.i

do.body6.i.i70.i.i:                               ; preds = %mvs_read_port_vsr_data.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr10.i.i69.i.i = getelementptr i8, ptr %add.ptr.i.i64.i.i, i32 %mul9.i.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i69.i.i, i32 %141) #7, !srcloc !74
  br label %mvs_write_port_vsr_data.exit.i.i

mvs_write_port_vsr_data.exit.i.i:                 ; preds = %do.body6.i.i70.i.i, %do.body.i.i67.i.i
  %142 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %regs1, align 8
  %add.ptr.i.i73.i.i = getelementptr i8, ptr %143, i32 592
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  %144 = call i32 @llvm.bswap.i32(i32 %setting_1.1.i.i) #7
  br i1 %cmp.i.i.i.i, label %do.body.i.i76.i.i, label %do.body6.i.i79.i.i

do.body.i.i76.i.i:                                ; preds = %mvs_write_port_vsr_data.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i.i75.i.i = getelementptr i8, ptr %add.ptr.i.i73.i.i, i32 %mul.i.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i75.i.i, i32 %144) #7, !srcloc !74
  br label %mvs_write_port_vsr_addr.exit80.i.i

do.body6.i.i79.i.i:                               ; preds = %mvs_write_port_vsr_data.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr10.i.i78.i.i = getelementptr i8, ptr %add.ptr.i.i73.i.i, i32 %mul9.i.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i78.i.i, i32 %144) #7, !srcloc !74
  br label %mvs_write_port_vsr_addr.exit80.i.i

mvs_write_port_vsr_addr.exit80.i.i:               ; preds = %do.body6.i.i79.i.i, %do.body.i.i76.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %145 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %145(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %146 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %146(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %147 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %147(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %148 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %148(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %149 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %149(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %150 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %150(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %151 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %151(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %152 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %152(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %153 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %153(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %154 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %154(i32 noundef 214748000) #7
  %155 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %regs1, align 8
  %add.ptr.i.i83.i.i = getelementptr i8, ptr %156, i32 596
  br i1 %cmp.i.i.i.i, label %cond.true.i.i86.i.i, label %cond.false.i.i89.i.i

cond.true.i.i86.i.i:                              ; preds = %mvs_write_port_vsr_addr.exit80.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i.i85.i.i = getelementptr i8, ptr %add.ptr.i.i83.i.i, i32 %mul.i.i.i.i
  %157 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i85.i.i) #7, !srcloc !71
  %158 = call i32 @llvm.bswap.i32(i32 %157) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  br label %mvs_read_port_vsr_data.exit91.i.i

cond.false.i.i89.i.i:                             ; preds = %mvs_write_port_vsr_addr.exit80.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr10.i.i88.i.i = getelementptr i8, ptr %add.ptr.i.i83.i.i, i32 %mul9.i.i.i.i
  %159 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i88.i.i) #7, !srcloc !71
  %160 = call i32 @llvm.bswap.i32(i32 %159) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  br label %mvs_read_port_vsr_data.exit91.i.i

mvs_read_port_vsr_data.exit91.i.i:                ; preds = %cond.false.i.i89.i.i, %cond.true.i.i86.i.i
  %cond.i.i90.i.i = phi i32 [ %158, %cond.true.i.i86.i.i ], [ %160, %cond.false.i.i89.i.i ]
  %and24.i.i = and i32 %cond.i.i90.i.i, -49153
  %or31.i.i = or i32 %and24.i.i, %shl30.i.i
  %161 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %regs1, align 8
  %add.ptr.i.i94.i.i = getelementptr i8, ptr %162, i32 596
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  %163 = call i32 @llvm.bswap.i32(i32 %or31.i.i) #7
  br i1 %cmp.i.i.i.i, label %do.body.i.i97.i.i, label %do.body6.i.i100.i.i

do.body.i.i97.i.i:                                ; preds = %mvs_read_port_vsr_data.exit91.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i.i96.i.i = getelementptr i8, ptr %add.ptr.i.i94.i.i, i32 %mul.i.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i96.i.i, i32 %163) #7, !srcloc !74
  br label %mvs_write_port_vsr_data.exit101.i.i

do.body6.i.i100.i.i:                              ; preds = %mvs_read_port_vsr_data.exit91.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr10.i.i99.i.i = getelementptr i8, ptr %add.ptr.i.i94.i.i, i32 %mul9.i.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i99.i.i, i32 %163) #7, !srcloc !74
  br label %mvs_write_port_vsr_data.exit101.i.i

mvs_write_port_vsr_data.exit101.i.i:              ; preds = %do.body6.i.i100.i.i, %do.body.i.i97.i.i
  %inc.i.i = add nuw nsw i8 %i.0104.i.i, 1
  %cmp3.i.i = icmp ult i8 %i.0104.i.i, 2
  br i1 %cmp3.i.i, label %mvs_write_port_vsr_data.exit101.i.i.for.body.i.i_crit_edge, label %mvs_write_port_vsr_data.exit101.i.i.set_phy_tuning.exit.i_crit_edge

mvs_write_port_vsr_data.exit101.i.i.set_phy_tuning.exit.i_crit_edge: ; preds = %mvs_write_port_vsr_data.exit101.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_phy_tuning.exit.i

mvs_write_port_vsr_data.exit101.i.i.for.body.i.i_crit_edge: ; preds = %mvs_write_port_vsr_data.exit101.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

set_phy_tuning.exit.i:                            ; preds = %mvs_write_port_vsr_data.exit101.i.i.set_phy_tuning.exit.i_crit_edge, %if.end57.i.set_phy_tuning.exit.i_crit_edge
  %164 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %coerce.dive.coerce.sroa.0.0.copyload.i = load i8, ptr %arrayidx17.i, align 1
  %coerce.dive.coerce.sroa.0.0.insert.ext.i = zext i8 %coerce.dive.coerce.sroa.0.0.copyload.i to i32
  %165 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %pdev, align 8
  %revision.i103.i = getelementptr inbounds %struct.pci_dev, ptr %166, i32 0, i32 12
  %167 = ptrtoint ptr %revision.i103.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %revision.i103.i, align 4
  %169 = zext i8 %168 to i64
  call void @__sanitizer_cov_trace_switch(i64 %169, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %168, label %if.end.i.i [
    i8 -96, label %set_phy_tuning.exit.i.set_phy_ffe_tuning.exit.i_crit_edge
    i8 1, label %set_phy_tuning.exit.i.set_phy_ffe_tuning.exit.i_crit_edge586
  ]

set_phy_tuning.exit.i.set_phy_ffe_tuning.exit.i_crit_edge586: ; preds = %set_phy_tuning.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_phy_ffe_tuning.exit.i

set_phy_tuning.exit.i.set_phy_ffe_tuning.exit.i_crit_edge: ; preds = %set_phy_tuning.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_phy_ffe_tuning.exit.i

if.end.i.i:                                       ; preds = %set_phy_tuning.exit.i
  %170 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %regs1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0575)
  %cmp.i.i.i105.i = icmp ult i32 %i.0575, 4
  %add.ptr.i.i.i106.i = getelementptr i8, ptr %171, i32 592
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  %mul.i.i.i107.i = shl i32 %i.0575, 3
  br i1 %cmp.i.i.i105.i, label %do.body.i.i.i109.i, label %do.body6.i.i.i112.i

do.body.i.i.i109.i:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i.i.i108.i = getelementptr i8, ptr %add.ptr.i.i.i106.i, i32 %mul.i.i.i107.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i.i108.i, i32 201392128) #7, !srcloc !74
  br label %mvs_write_port_vsr_addr.exit.i113.i

do.body6.i.i.i112.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul9.i.i.i110.i = add i32 %mul.i.i.i107.i, -32
  %add.ptr10.i.i.i111.i = getelementptr i8, ptr %add.ptr.i.i.i106.i, i32 %mul9.i.i.i110.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i.i111.i, i32 201392128) #7, !srcloc !74
  br label %mvs_write_port_vsr_addr.exit.i113.i

mvs_write_port_vsr_addr.exit.i113.i:              ; preds = %do.body6.i.i.i112.i, %do.body.i.i.i109.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %172 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %172(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %173 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %173(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %174 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %174(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %175 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %175(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %176 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %176(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %177 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %177(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %178 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %178(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %179 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %179(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %180 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %180(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %181 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %181(i32 noundef 214748000) #7
  %182 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %regs1, align 8
  %add.ptr.i.i62.i.i = getelementptr i8, ptr %183, i32 596
  br i1 %cmp.i.i.i105.i, label %cond.true.i.i.i114.i, label %cond.false.i.i.i115.i

cond.true.i.i.i114.i:                             ; preds = %mvs_write_port_vsr_addr.exit.i113.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i.i64.i.i = getelementptr i8, ptr %add.ptr.i.i62.i.i, i32 %mul.i.i.i107.i
  %184 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i64.i.i) #7, !srcloc !71
  %185 = call i32 @llvm.bswap.i32(i32 %184) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  br label %mvs_read_port_vsr_data.exit.i119.i

cond.false.i.i.i115.i:                            ; preds = %mvs_write_port_vsr_addr.exit.i113.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul9.i.i65.i.i = add i32 %mul.i.i.i107.i, -32
  %add.ptr10.i.i66.i.i = getelementptr i8, ptr %add.ptr.i.i62.i.i, i32 %mul9.i.i65.i.i
  %186 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i66.i.i) #7, !srcloc !71
  %187 = call i32 @llvm.bswap.i32(i32 %186) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  br label %mvs_read_port_vsr_data.exit.i119.i

mvs_read_port_vsr_data.exit.i119.i:               ; preds = %cond.false.i.i.i115.i, %cond.true.i.i.i114.i
  %cond.i.i.i116.i = phi i32 [ %185, %cond.true.i.i.i114.i ], [ %187, %cond.false.i.i.i115.i ]
  %and.i117.i = and i32 %cond.i.i.i116.i, -256
  %188 = shl nuw nsw i32 %coerce.dive.coerce.sroa.0.0.insert.ext.i, 3
  %shl.i.i = and i32 %188, 112
  %sum.shift.i.i = lshr i32 %coerce.dive.coerce.sroa.0.0.insert.ext.i, 4
  %or.i118.i = or i32 %sum.shift.i.i, %shl.i.i
  %or12.i.i = or i32 %or.i118.i, %and.i117.i
  %or13.i.i = or i32 %or12.i.i, 128
  %189 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %regs1, align 8
  %add.ptr.i.i69.i.i = getelementptr i8, ptr %190, i32 596
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  %191 = call i32 @llvm.bswap.i32(i32 %or13.i.i) #7
  br i1 %cmp.i.i.i105.i, label %do.body.i.i72.i.i, label %do.body6.i.i75.i.i

do.body.i.i72.i.i:                                ; preds = %mvs_read_port_vsr_data.exit.i119.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i.i71.i.i = getelementptr i8, ptr %add.ptr.i.i69.i.i, i32 %mul.i.i.i107.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i71.i.i, i32 %191) #7, !srcloc !74
  br label %mvs_write_port_vsr_data.exit.i120.i

do.body6.i.i75.i.i:                               ; preds = %mvs_read_port_vsr_data.exit.i119.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul9.i.i73.i.i = add i32 %mul.i.i.i107.i, -32
  %add.ptr10.i.i74.i.i = getelementptr i8, ptr %add.ptr.i.i69.i.i, i32 %mul9.i.i73.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i74.i.i, i32 %191) #7, !srcloc !74
  br label %mvs_write_port_vsr_data.exit.i120.i

mvs_write_port_vsr_data.exit.i120.i:              ; preds = %do.body6.i.i75.i.i, %do.body.i.i72.i.i
  %192 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %regs1, align 8
  %add.ptr.i.i78.i.i = getelementptr i8, ptr %193, i32 592
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  br i1 %cmp.i.i.i105.i, label %do.body.i.i81.i.i, label %do.body6.i.i84.i.i

do.body.i.i81.i.i:                                ; preds = %mvs_write_port_vsr_data.exit.i120.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i.i80.i.i = getelementptr i8, ptr %add.ptr.i.i78.i.i, i32 %mul.i.i.i107.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i80.i.i, i32 -1610547200) #7, !srcloc !74
  br label %mvs_write_port_vsr_addr.exit85.i.i

do.body6.i.i84.i.i:                               ; preds = %mvs_write_port_vsr_data.exit.i120.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul9.i.i82.i.i = add i32 %mul.i.i.i107.i, -32
  %add.ptr10.i.i83.i.i = getelementptr i8, ptr %add.ptr.i.i78.i.i, i32 %mul9.i.i82.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i83.i.i, i32 -1610547200) #7, !srcloc !74
  br label %mvs_write_port_vsr_addr.exit85.i.i

mvs_write_port_vsr_addr.exit85.i.i:               ; preds = %do.body6.i.i84.i.i, %do.body.i.i81.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %194 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %194(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %195 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %195(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %196 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %196(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %197 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %197(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %198 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %198(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %199 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %199(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %200 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %200(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %201 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %201(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %202 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %202(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %203 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %203(i32 noundef 214748000) #7
  %204 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %regs1, align 8
  %add.ptr.i.i88.i.i = getelementptr i8, ptr %205, i32 596
  br i1 %cmp.i.i.i105.i, label %cond.true.i.i91.i.i, label %cond.false.i.i94.i.i

cond.true.i.i91.i.i:                              ; preds = %mvs_write_port_vsr_addr.exit85.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i.i90.i.i = getelementptr i8, ptr %add.ptr.i.i88.i.i, i32 %mul.i.i.i107.i
  %206 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i90.i.i) #7, !srcloc !71
  %207 = call i32 @llvm.bswap.i32(i32 %206) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  br label %mvs_read_port_vsr_data.exit96.i.i

cond.false.i.i94.i.i:                             ; preds = %mvs_write_port_vsr_addr.exit85.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul9.i.i92.i.i = add i32 %mul.i.i.i107.i, -32
  %add.ptr10.i.i93.i.i = getelementptr i8, ptr %add.ptr.i.i88.i.i, i32 %mul9.i.i92.i.i
  %208 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i93.i.i) #7, !srcloc !71
  %209 = call i32 @llvm.bswap.i32(i32 %208) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  br label %mvs_read_port_vsr_data.exit96.i.i

mvs_read_port_vsr_data.exit96.i.i:                ; preds = %cond.false.i.i94.i.i, %cond.true.i.i91.i.i
  %cond.i.i95.i.i = phi i32 [ %207, %cond.true.i.i91.i.i ], [ %209, %cond.false.i.i94.i.i ]
  %and15.i.i = and i32 %cond.i.i95.i.i, -262146
  %210 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %regs1, align 8
  %add.ptr.i.i99.i.i = getelementptr i8, ptr %211, i32 596
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  %212 = call i32 @llvm.bswap.i32(i32 %and15.i.i) #7
  br i1 %cmp.i.i.i105.i, label %do.body.i.i102.i.i, label %do.body6.i.i105.i.i

do.body.i.i102.i.i:                               ; preds = %mvs_read_port_vsr_data.exit96.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i.i101.i.i = getelementptr i8, ptr %add.ptr.i.i99.i.i, i32 %mul.i.i.i107.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i101.i.i, i32 %212) #7, !srcloc !74
  br label %mvs_write_port_vsr_data.exit106.i.i

do.body6.i.i105.i.i:                              ; preds = %mvs_read_port_vsr_data.exit96.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul9.i.i103.i.i = add i32 %mul.i.i.i107.i, -32
  %add.ptr10.i.i104.i.i = getelementptr i8, ptr %add.ptr.i.i99.i.i, i32 %mul9.i.i103.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i104.i.i, i32 %212) #7, !srcloc !74
  br label %mvs_write_port_vsr_data.exit106.i.i

mvs_write_port_vsr_data.exit106.i.i:              ; preds = %do.body6.i.i105.i.i, %do.body.i.i102.i.i
  %213 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %regs1, align 8
  %add.ptr.i.i109.i.i = getelementptr i8, ptr %214, i32 592
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  br i1 %cmp.i.i.i105.i, label %do.body.i.i112.i.i, label %do.body6.i.i115.i.i

do.body.i.i112.i.i:                               ; preds = %mvs_write_port_vsr_data.exit106.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i.i111.i.i = getelementptr i8, ptr %add.ptr.i.i109.i.i, i32 %mul.i.i.i107.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i111.i.i, i32 268500992) #7, !srcloc !74
  br label %mvs_write_port_vsr_addr.exit116.i.i

do.body6.i.i115.i.i:                              ; preds = %mvs_write_port_vsr_data.exit106.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul9.i.i113.i.i = add i32 %mul.i.i.i107.i, -32
  %add.ptr10.i.i114.i.i = getelementptr i8, ptr %add.ptr.i.i109.i.i, i32 %mul9.i.i113.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i114.i.i, i32 268500992) #7, !srcloc !74
  br label %mvs_write_port_vsr_addr.exit116.i.i

mvs_write_port_vsr_addr.exit116.i.i:              ; preds = %do.body6.i.i115.i.i, %do.body.i.i112.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %215 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %215(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %216 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %216(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %217 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %217(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %218 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %218(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %219 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %219(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %220 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %220(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %221 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %221(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %222 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %222(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %223 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %223(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %224 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %224(i32 noundef 214748000) #7
  %225 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %regs1, align 8
  %add.ptr.i.i119.i.i = getelementptr i8, ptr %226, i32 596
  br i1 %cmp.i.i.i105.i, label %cond.true.i.i122.i.i, label %cond.false.i.i125.i.i

cond.true.i.i122.i.i:                             ; preds = %mvs_write_port_vsr_addr.exit116.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i.i121.i.i = getelementptr i8, ptr %add.ptr.i.i119.i.i, i32 %mul.i.i.i107.i
  %227 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i121.i.i) #7, !srcloc !71
  %228 = call i32 @llvm.bswap.i32(i32 %227) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  br label %mvs_read_port_vsr_data.exit127.i.i

cond.false.i.i125.i.i:                            ; preds = %mvs_write_port_vsr_addr.exit116.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul9.i.i123.i.i = add i32 %mul.i.i.i107.i, -32
  %add.ptr10.i.i124.i.i = getelementptr i8, ptr %add.ptr.i.i119.i.i, i32 %mul9.i.i123.i.i
  %229 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i124.i.i) #7, !srcloc !71
  %230 = call i32 @llvm.bswap.i32(i32 %229) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  br label %mvs_read_port_vsr_data.exit127.i.i

mvs_read_port_vsr_data.exit127.i.i:               ; preds = %cond.false.i.i125.i.i, %cond.true.i.i122.i.i
  %cond.i.i126.i.i = phi i32 [ %228, %cond.true.i.i122.i.i ], [ %230, %cond.false.i.i125.i.i ]
  %and18.i.i = and i32 %cond.i.i126.i.i, -4096
  %or19.i.i = or i32 %and18.i.i, 4032
  %231 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %regs1, align 8
  %add.ptr.i.i130.i.i = getelementptr i8, ptr %232, i32 596
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  %233 = call i32 @llvm.bswap.i32(i32 %or19.i.i) #7
  br i1 %cmp.i.i.i105.i, label %do.body.i.i133.i.i, label %do.body6.i.i136.i.i

do.body.i.i133.i.i:                               ; preds = %mvs_read_port_vsr_data.exit127.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i.i132.i.i = getelementptr i8, ptr %add.ptr.i.i130.i.i, i32 %mul.i.i.i107.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i132.i.i, i32 %233) #7, !srcloc !74
  br label %mvs_write_port_vsr_data.exit137.i.i

do.body6.i.i136.i.i:                              ; preds = %mvs_read_port_vsr_data.exit127.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul9.i.i134.i.i = add i32 %mul.i.i.i107.i, -32
  %add.ptr10.i.i135.i.i = getelementptr i8, ptr %add.ptr.i.i130.i.i, i32 %mul9.i.i134.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i135.i.i, i32 %233) #7, !srcloc !74
  br label %mvs_write_port_vsr_data.exit137.i.i

mvs_write_port_vsr_data.exit137.i.i:              ; preds = %do.body6.i.i136.i.i, %do.body.i.i133.i.i
  %234 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %regs1, align 8
  %add.ptr.i.i140.i.i = getelementptr i8, ptr %235, i32 592
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  br i1 %cmp.i.i.i105.i, label %do.body.i.i143.i.i, label %do.body6.i.i146.i.i

do.body.i.i143.i.i:                               ; preds = %mvs_write_port_vsr_data.exit137.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i.i142.i.i = getelementptr i8, ptr %add.ptr.i.i140.i.i, i32 %mul.i.i.i107.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i142.i.i, i32 -1610547200) #7, !srcloc !74
  br label %mvs_write_port_vsr_addr.exit147.i.i

do.body6.i.i146.i.i:                              ; preds = %mvs_write_port_vsr_data.exit137.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul9.i.i144.i.i = add i32 %mul.i.i.i107.i, -32
  %add.ptr10.i.i145.i.i = getelementptr i8, ptr %add.ptr.i.i140.i.i, i32 %mul9.i.i144.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i145.i.i, i32 -1610547200) #7, !srcloc !74
  br label %mvs_write_port_vsr_addr.exit147.i.i

mvs_write_port_vsr_addr.exit147.i.i:              ; preds = %do.body6.i.i146.i.i, %do.body.i.i143.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %236 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %236(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %237 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %237(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %238 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %238(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %239 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %239(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %240 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %240(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %241 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %241(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %242 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %242(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %243 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %243(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %244 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %244(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %245 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %245(i32 noundef 214748000) #7
  %246 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %regs1, align 8
  %add.ptr.i.i150.i.i = getelementptr i8, ptr %247, i32 596
  br i1 %cmp.i.i.i105.i, label %cond.true.i.i153.i.i, label %cond.false.i.i156.i.i

cond.true.i.i153.i.i:                             ; preds = %mvs_write_port_vsr_addr.exit147.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i.i152.i.i = getelementptr i8, ptr %add.ptr.i.i150.i.i, i32 %mul.i.i.i107.i
  %248 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i152.i.i) #7, !srcloc !71
  %249 = call i32 @llvm.bswap.i32(i32 %248) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  br label %mvs_read_port_vsr_data.exit158.i.i

cond.false.i.i156.i.i:                            ; preds = %mvs_write_port_vsr_addr.exit147.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul9.i.i154.i.i = add i32 %mul.i.i.i107.i, -32
  %add.ptr10.i.i155.i.i = getelementptr i8, ptr %add.ptr.i.i150.i.i, i32 %mul9.i.i154.i.i
  %250 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i155.i.i) #7, !srcloc !71
  %251 = call i32 @llvm.bswap.i32(i32 %250) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  br label %mvs_read_port_vsr_data.exit158.i.i

mvs_read_port_vsr_data.exit158.i.i:               ; preds = %cond.false.i.i156.i.i, %cond.true.i.i153.i.i
  %cond.i.i157.i.i = phi i32 [ %249, %cond.true.i.i153.i.i ], [ %251, %cond.false.i.i156.i.i ]
  %and21.i.i = and i32 %cond.i.i157.i.i, -9
  %252 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %regs1, align 8
  %add.ptr.i.i161.i.i = getelementptr i8, ptr %253, i32 596
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  %254 = call i32 @llvm.bswap.i32(i32 %and21.i.i) #7
  br i1 %cmp.i.i.i105.i, label %do.body.i.i164.i.i, label %do.body6.i.i167.i.i

do.body.i.i164.i.i:                               ; preds = %mvs_read_port_vsr_data.exit158.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i.i163.i.i = getelementptr i8, ptr %add.ptr.i.i161.i.i, i32 %mul.i.i.i107.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i163.i.i, i32 %254) #7, !srcloc !74
  br label %set_phy_ffe_tuning.exit.i

do.body6.i.i167.i.i:                              ; preds = %mvs_read_port_vsr_data.exit158.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul9.i.i165.i.i = add i32 %mul.i.i.i107.i, -32
  %add.ptr10.i.i166.i.i = getelementptr i8, ptr %add.ptr.i.i161.i.i, i32 %mul9.i.i165.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i166.i.i, i32 %254) #7, !srcloc !74
  br label %set_phy_ffe_tuning.exit.i

set_phy_ffe_tuning.exit.i:                        ; preds = %do.body6.i.i167.i.i, %do.body.i.i164.i.i, %set_phy_tuning.exit.i.set_phy_ffe_tuning.exit.i_crit_edge, %set_phy_tuning.exit.i.set_phy_ffe_tuning.exit.i_crit_edge586
  %255 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %arrayidx49.i, align 1
  %257 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %regs1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0575)
  %cmp.i.i.i122.i = icmp ult i32 %i.0575, 4
  %add.ptr.i.i.i123.i = getelementptr i8, ptr %258, i32 592
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  %mul.i.i.i124.i = shl i32 %i.0575, 3
  br i1 %cmp.i.i.i122.i, label %do.body.i.i.i126.i, label %do.body6.i.i.i129.i

do.body.i.i.i126.i:                               ; preds = %set_phy_ffe_tuning.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i.i.i125.i = getelementptr i8, ptr %add.ptr.i.i.i123.i, i32 %mul.i.i.i124.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i.i125.i, i32 134217728) #7, !srcloc !74
  br label %mvs_write_port_vsr_addr.exit.i130.i

do.body6.i.i.i129.i:                              ; preds = %set_phy_ffe_tuning.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul9.i.i.i127.i = add i32 %mul.i.i.i124.i, -32
  %add.ptr10.i.i.i128.i = getelementptr i8, ptr %add.ptr.i.i.i123.i, i32 %mul9.i.i.i127.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i.i128.i, i32 134217728) #7, !srcloc !74
  br label %mvs_write_port_vsr_addr.exit.i130.i

mvs_write_port_vsr_addr.exit.i130.i:              ; preds = %do.body6.i.i.i129.i, %do.body.i.i.i126.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %259 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %259(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %260 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %260(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %261 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %261(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %262 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %262(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %263 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %263(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %264 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %264(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %265 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %265(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %266 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %266(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %267 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %267(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %268 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %268(i32 noundef 214748000) #7
  %269 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %regs1, align 8
  %add.ptr.i.i72.i.i = getelementptr i8, ptr %270, i32 596
  br i1 %cmp.i.i.i122.i, label %cond.true.i.i.i131.i, label %cond.false.i.i.i132.i

cond.true.i.i.i131.i:                             ; preds = %mvs_write_port_vsr_addr.exit.i130.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i.i74.i.i = getelementptr i8, ptr %add.ptr.i.i72.i.i, i32 %mul.i.i.i124.i
  %271 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i74.i.i) #7, !srcloc !71
  %272 = call i32 @llvm.bswap.i32(i32 %271) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  br label %mvs_read_port_vsr_data.exit.i134.i

cond.false.i.i.i132.i:                            ; preds = %mvs_write_port_vsr_addr.exit.i130.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul9.i.i75.i.i = add i32 %mul.i.i.i124.i, -32
  %add.ptr10.i.i76.i.i = getelementptr i8, ptr %add.ptr.i.i72.i.i, i32 %mul9.i.i75.i.i
  %273 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i76.i.i) #7, !srcloc !71
  %274 = call i32 @llvm.bswap.i32(i32 %273) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  br label %mvs_read_port_vsr_data.exit.i134.i

mvs_read_port_vsr_data.exit.i134.i:               ; preds = %cond.false.i.i.i132.i, %cond.true.i.i.i131.i
  %cond.i.i.i133.i = phi i32 [ %272, %cond.true.i.i.i131.i ], [ %274, %cond.false.i.i.i132.i ]
  %bf.clear.i.i = and i32 %cond.i.i.i133.i, 256
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %256)
  %switch.selectcmp.i.i = icmp eq i8 %256, 1
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 1987641344, i32 2147426304
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %256)
  %switch.selectcmp86.i.i = icmp eq i8 %256, 0
  %switch.select87.i.i = select i1 %switch.selectcmp86.i.i, i32 1927282688, i32 %switch.select.i.i
  %bf.set49.i.i = or i32 %bf.clear.i.i, %switch.select87.i.i
  %275 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %regs1, align 8
  %add.ptr.i.i79.i.i = getelementptr i8, ptr %276, i32 596
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  %277 = call i32 @llvm.bswap.i32(i32 %bf.set49.i.i) #7
  br i1 %cmp.i.i.i122.i, label %do.body.i.i82.i.i, label %do.body6.i.i85.i.i

do.body.i.i82.i.i:                                ; preds = %mvs_read_port_vsr_data.exit.i134.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i.i81.i.i = getelementptr i8, ptr %add.ptr.i.i79.i.i, i32 %mul.i.i.i124.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i81.i.i, i32 %277) #7, !srcloc !74
  br label %mvs_94xx_config_reg_from_hba.exit

do.body6.i.i85.i.i:                               ; preds = %mvs_read_port_vsr_data.exit.i134.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul9.i.i83.i.i = add i32 %mul.i.i.i124.i, -32
  %add.ptr10.i.i84.i.i = getelementptr i8, ptr %add.ptr.i.i79.i.i, i32 %mul9.i.i83.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i84.i.i, i32 %277) #7, !srcloc !74
  br label %mvs_94xx_config_reg_from_hba.exit

mvs_94xx_config_reg_from_hba.exit:                ; preds = %do.body6.i.i85.i.i, %do.body.i.i82.i.i
  call void @mvs_94xx_phy_enable(ptr noundef %mvi, i32 noundef %i.0575)
  call void @mvs_94xx_phy_reset(ptr noundef %mvi, i32 noundef %i.0575, i32 noundef 2)
  call void @msleep(i32 noundef 500) #7
  call void @mvs_94xx_detect_porttype(ptr noundef %mvi, i32 noundef %i.0575)
  %inc = add nuw i32 %i.0575, 1
  %278 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %chip, align 4
  %n_phy = getelementptr inbounds %struct.mvs_chip_info, ptr %279, i32 0, i32 1
  %280 = ptrtoint ptr %n_phy to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %n_phy, align 4
  %cmp210 = icmp ult i32 %inc, %281
  br i1 %cmp210, label %mvs_94xx_config_reg_from_hba.exit.for.body_crit_edge, label %mvs_94xx_config_reg_from_hba.exit.for.end_crit_edge

mvs_94xx_config_reg_from_hba.exit.for.end_crit_edge: ; preds = %mvs_94xx_config_reg_from_hba.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

mvs_94xx_config_reg_from_hba.exit.for.body_crit_edge: ; preds = %mvs_94xx_config_reg_from_hba.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %mvs_94xx_config_reg_from_hba.exit.for.end_crit_edge, %do.body142.for.end_crit_edge
  %282 = ptrtoint ptr %mvi to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %mvi, align 8
  %and213 = and i32 %283, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and213)
  %tobool214.not = icmp eq i32 %and213, 0
  br i1 %tobool214.not, label %for.end.if.end248_crit_edge, label %do.body216

for.end.if.end248_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end248

do.body216:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 8388622) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  call void @arm_heavy_mb() #7
  %add.ptr223 = getelementptr i8, ptr %1, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr223, i32 134217817) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  call void @arm_heavy_mb() #7
  %add.ptr227 = getelementptr i8, ptr %1, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr227, i32 536870912) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  call void @arm_heavy_mb() #7
  %add.ptr231 = getelementptr i8, ptr %1, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr231, i32 536870912) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  call void @arm_heavy_mb() #7
  %add.ptr235 = getelementptr i8, ptr %1, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr235, i32 536870912) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  call void @arm_heavy_mb() #7
  %add.ptr239 = getelementptr i8, ptr %1, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr239, i32 536870912) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  call void @arm_heavy_mb() #7
  %add.ptr243 = getelementptr i8, ptr %1, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr243, i32 536870912) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  call void @arm_heavy_mb() #7
  %add.ptr247 = getelementptr i8, ptr %1, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr247, i32 536870912) #7, !srcloc !74
  br label %if.end248

if.end248:                                        ; preds = %do.body216, %for.end.if.end248_crit_edge
  %284 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %chip, align 4
  %n_phy251577 = getelementptr inbounds %struct.mvs_chip_info, ptr %285, i32 0, i32 1
  %286 = ptrtoint ptr %n_phy251577 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %n_phy251577, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %287)
  %cmp252578.not = icmp eq i32 %287, 0
  br i1 %cmp252578.not, label %if.end248.for.end259_crit_edge, label %if.end248.for.body254_crit_edge

if.end248.for.body254_crit_edge:                  ; preds = %if.end248
  br label %for.body254

if.end248.for.end259_crit_edge:                   ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end259

for.body254:                                      ; preds = %mvs_write_port_irq_mask.exit.for.body254_crit_edge, %if.end248.for.body254_crit_edge
  %i.1579 = phi i32 [ %inc258, %mvs_write_port_irq_mask.exit.for.body254_crit_edge ], [ 0, %if.end248.for.body254_crit_edge ]
  %288 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %regs1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.1579)
  %cmp.i.i520 = icmp ult i32 %i.1579, 4
  br i1 %cmp.i.i520, label %do.body.i.i537, label %do.body6.i.i542

do.body.i.i537:                                   ; preds = %for.body254
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i521 = getelementptr i8, ptr %289, i32 384
  %mul.i.i = shl nuw nsw i32 %i.1579, 3
  %add.ptr5.i.i522 = getelementptr i8, ptr %add.ptr.i.i521, i32 %mul.i.i
  %290 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i522) #7, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  %291 = and i32 %290, -257
  %292 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %regs1, align 8
  %add.ptr.i.i525 = getelementptr i8, ptr %293, i32 384
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  call void @arm_heavy_mb() #7
  %add.ptr5.i.i527 = getelementptr i8, ptr %add.ptr.i.i525, i32 %mul.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i527, i32 %291) #7, !srcloc !74
  %294 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %regs1, align 8
  %add.ptr.i.i534 = getelementptr i8, ptr %295, i32 388
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  call void @arm_heavy_mb() #7
  %add.ptr5.i.i536 = getelementptr i8, ptr %add.ptr.i.i534, i32 %mul.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i536, i32 84000768) #7, !srcloc !74
  br label %mvs_write_port_irq_mask.exit

do.body6.i.i542:                                  ; preds = %for.body254
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr4.i.i = getelementptr i8, ptr %289, i32 416
  %sub.i.i = shl i32 %i.1579, 3
  %mul9.i.i = add i32 %sub.i.i, -32
  %add.ptr10.i.i = getelementptr i8, ptr %add.ptr4.i.i, i32 %mul9.i.i
  %296 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i) #7, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  %297 = and i32 %296, -257
  %298 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %regs1, align 8
  %add.ptr4.i.i528 = getelementptr i8, ptr %299, i32 416
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  call void @arm_heavy_mb() #7
  %add.ptr10.i.i531 = getelementptr i8, ptr %add.ptr4.i.i528, i32 %mul9.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i531, i32 %297) #7, !srcloc !74
  %300 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %regs1, align 8
  %add.ptr4.i.i538 = getelementptr i8, ptr %301, i32 420
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  call void @arm_heavy_mb() #7
  %add.ptr10.i.i541 = getelementptr i8, ptr %add.ptr4.i.i538, i32 %mul9.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i541, i32 84000768) #7, !srcloc !74
  br label %mvs_write_port_irq_mask.exit

mvs_write_port_irq_mask.exit:                     ; preds = %do.body6.i.i542, %do.body.i.i537
  call void @msleep(i32 noundef 100) #7
  call void @mvs_update_phyinfo(ptr noundef %mvi, i32 noundef %i.1579, i32 noundef 1) #7
  %inc258 = add nuw i32 %i.1579, 1
  %302 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %chip, align 4
  %n_phy251 = getelementptr inbounds %struct.mvs_chip_info, ptr %303, i32 0, i32 1
  %304 = ptrtoint ptr %n_phy251 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %n_phy251, align 4
  %cmp252 = icmp ult i32 %inc258, %305
  br i1 %cmp252, label %mvs_write_port_irq_mask.exit.for.body254_crit_edge, label %mvs_write_port_irq_mask.exit.for.end259_crit_edge

mvs_write_port_irq_mask.exit.for.end259_crit_edge: ; preds = %mvs_write_port_irq_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end259

mvs_write_port_irq_mask.exit.for.body254_crit_edge: ; preds = %mvs_write_port_irq_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body254

for.end259:                                       ; preds = %mvs_write_port_irq_mask.exit.for.end259_crit_edge, %if.end248.for.end259_crit_edge
  %306 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #7, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  %307 = and i32 %306, -117440513
  %308 = or i32 %307, 83886080
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %308) #7, !srcloc !74
  %309 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #7, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  %310 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr117) #7, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %311 = and i32 %310, -570425345
  %312 = or i32 %311, 33554432
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr117, i32 %312) #7, !srcloc !74
  %313 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %chip, align 4
  %slot_width295 = getelementptr inbounds %struct.mvs_chip_info, ptr %314, i32 0, i32 6
  %315 = ptrtoint ptr %slot_width295 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %slot_width295, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %316)
  %cmp297 = icmp ugt i32 %316, 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  br i1 %cmp297, label %do.body300, label %do.body305

do.body300:                                       ; preds = %for.end259
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr303 = getelementptr i8, ptr %1, i32 328
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr303, i32 -16711424) #7, !srcloc !74
  br label %if.end313

do.body305:                                       ; preds = %for.end259
  call void @__sanitizer_cov_trace_pc() #9
  %317 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %chip, align 4
  %slot_width309 = getelementptr inbounds %struct.mvs_chip_info, ptr %318, i32 0, i32 6
  %319 = ptrtoint ptr %slot_width309 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %slot_width309, align 4
  %shl310 = shl nuw i32 1, %320
  %or311 = or i32 %shl310, 65536
  %321 = call i32 @llvm.bswap.i32(i32 %or311)
  %add.ptr312 = getelementptr i8, ptr %1, i32 328
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr312, i32 %321) #7, !srcloc !74
  br label %if.end313

if.end313:                                        ; preds = %do.body305, %do.body300
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @interrupt_coalescing to i32))
  %322 = load i32, ptr @interrupt_coalescing, align 4
  %or314 = or i32 %322, 65536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  call void @arm_heavy_mb() #7
  %323 = call i32 @llvm.bswap.i32(i32 %or314)
  %add.ptr318 = getelementptr i8, ptr %1, i32 332
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr318, i32 %323) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr182, i32 0) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  call void @arm_heavy_mb() #7
  %324 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %chip, align 4
  %slot_width327 = getelementptr inbounds %struct.mvs_chip_info, ptr %325, i32 0, i32 6
  %326 = ptrtoint ptr %slot_width327 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %slot_width327, align 4
  %shl328 = shl nuw i32 1, %327
  %or329 = or i32 %shl328, 65536
  %328 = call i32 @llvm.bswap.i32(i32 %or329)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr182, i32 %328) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !132
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr197, i32 262400) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr117, i32 1493172224) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  call void @arm_heavy_mb() #7
  %add.ptr343 = getelementptr i8, ptr %1, i32 340
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr343, i32 -67174386) #7, !srcloc !74
  %329 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %regs1, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  call void @arm_heavy_mb() #7
  %add.ptr.i544 = getelementptr i8, ptr %330, i32 368
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i544, i32 -469696512) #7, !srcloc !74
  %add.ptr2.i545 = getelementptr i8, ptr %330, i32 372
  %331 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i545) #7, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  %332 = or i32 %331, 65535
  %333 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %regs1, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  call void @arm_heavy_mb() #7
  %add.ptr.i547 = getelementptr i8, ptr %334, i32 368
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i547, i32 -469696512) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  call void @arm_heavy_mb() #7
  %add.ptr5.i548 = getelementptr i8, ptr %334, i32 372
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i548, i32 %332) #7, !srcloc !74
  %335 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %regs1, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  call void @arm_heavy_mb() #7
  %add.ptr.i550 = getelementptr i8, ptr %336, i32 368
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i550, i32 939589632) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  call void @arm_heavy_mb() #7
  %add.ptr5.i551 = getelementptr i8, ptr %336, i32 372
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i551, i32 1056980736) #7, !srcloc !74
  %337 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %regs1, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  call void @arm_heavy_mb() #7
  %add.ptr.i553 = getelementptr i8, ptr %338, i32 368
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i553, i32 -536805376) #7, !srcloc !74
  %add.ptr2.i554 = getelementptr i8, ptr %338, i32 372
  %339 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i554) #7, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  %340 = or i32 %339, 2130771967
  %341 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %regs1, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  call void @arm_heavy_mb() #7
  %add.ptr.i556 = getelementptr i8, ptr %342, i32 368
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i556, i32 -536805376) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  call void @arm_heavy_mb() #7
  %add.ptr5.i557 = getelementptr i8, ptr %342, i32 372
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i557, i32 %340) #7, !srcloc !74
  %343 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %regs1, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  call void @arm_heavy_mb() #7
  %add.ptr.i559 = getelementptr i8, ptr %344, i32 368
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i559, i32 -1140785152) #7, !srcloc !74
  %add.ptr2.i560 = getelementptr i8, ptr %344, i32 372
  %345 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i560) #7, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  %346 = and i32 %345, -16973825
  %347 = or i32 %346, 196608
  %348 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %regs1, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  call void @arm_heavy_mb() #7
  %add.ptr.i562 = getelementptr i8, ptr %349, i32 368
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i562, i32 -1140785152) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  call void @arm_heavy_mb() #7
  %add.ptr5.i563 = getelementptr i8, ptr %349, i32 372
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i563, i32 %347) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  call void @arm_heavy_mb() #7
  %add.ptr354 = getelementptr i8, ptr %1, i32 348
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr354, i32 -65536) #7, !srcloc !74
  %regs_ex.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 5
  %350 = ptrtoint ptr %regs_ex.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %regs_ex.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %351, i32 -252
  %352 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #7, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %353 = or i32 %352, 65536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %353) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  call void @arm_heavy_mb() #7
  %add.ptr8.i = getelementptr i8, ptr %351, i32 -16372
  %id.i564 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 25
  %354 = ptrtoint ptr %id.i564 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %id.i564, align 8
  %mul.i = shl i32 %355, 8
  %add.ptr9.i = getelementptr i8, ptr %add.ptr8.i, i32 %mul.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 134217728) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  call void @arm_heavy_mb() #7
  %add.ptr13.i = getelementptr i8, ptr %351, i32 -16380
  %356 = ptrtoint ptr %id.i564 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %id.i564, align 8
  %mul15.i = shl i32 %357, 8
  %add.ptr16.i = getelementptr i8, ptr %add.ptr13.i, i32 %mul15.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 -2008804864) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  call void @arm_heavy_mb() #7
  %add.ptr20.i = getelementptr i8, ptr %351, i32 -16376
  %358 = ptrtoint ptr %id.i564 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %id.i564, align 8
  %mul22.i = shl i32 %359, 8
  %add.ptr23.i = getelementptr i8, ptr %add.ptr20.i, i32 %mul22.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 -1207230460) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  call void @arm_heavy_mb() #7
  %add.ptr27.i = getelementptr i8, ptr %351, i32 -16384
  %360 = ptrtoint ptr %id.i564 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %id.i564, align 8
  %mul29.i = shl i32 %361, 8
  %add.ptr30.i = getelementptr i8, ptr %add.ptr27.i, i32 %mul29.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 117440523) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  call void @arm_heavy_mb() #7
  %add.ptr34.i = getelementptr i8, ptr %351, i32 -16328
  %362 = ptrtoint ptr %id.i564 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %id.i564, align 8
  %mul36.i = shl i32 %363, 8
  %add.ptr37.i = getelementptr i8, ptr %add.ptr34.i, i32 %mul36.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i, i32 -2139062144) #7, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  call void @arm_heavy_mb() #7
  %364 = ptrtoint ptr %id.i564 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %id.i564, align 8
  %mul42.i = shl i32 %365, 2
  %add.i565 = shl i32 %365, 26
  %add45.i = shl i32 %365, 18
  %add50.i = shl i32 %365, 10
  %shl46.i = or i32 %add.i565, %add45.i
  %shl51.i = or i32 %shl46.i, %add50.i
  %or52.i = or i32 %shl51.i, %mul42.i
  %or57.i = or i32 %or52.i, 50462976
  %366 = call i32 @llvm.bswap.i32(i32 %or57.i) #7
  %add.ptr58.i = getelementptr i8, ptr %351, i32 -16352
  %mul60.i = shl i32 %365, 8
  %add.ptr61.i = getelementptr i8, ptr %add.ptr58.i, i32 %mul60.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61.i, i32 %366) #7, !srcloc !74
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvs_94xx_ioremap(ptr noundef %mvi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mvs_ioremap(ptr noundef %mvi, i32 noundef 2, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %entry
  %regs = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 66048
  %regs_ex = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 5
  %2 = ptrtoint ptr %regs_ex to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %regs_ex, align 4
  %add.ptr2 = getelementptr i8, ptr %1, i32 131072
  store ptr %add.ptr2, ptr %regs, align 8
  %id = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 25
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then3, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5 = getelementptr i8, ptr %1, i32 147456
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr5, ptr %regs, align 8
  br label %return

return:                                           ; preds = %if.then3, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 0, %if.then.return_crit_edge ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_94xx_iounmap(ptr nocapture noundef %mvi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -131072
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %regs, align 8
  %id = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 25
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr4 = getelementptr i8, ptr %1, i32 -147456
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr4, ptr %regs, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  tail call void @mvs_iounmap(ptr noundef %7) #7
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvs_94xx_isr(ptr noundef %mvi, i32 noundef %irq, i32 noundef %stat) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  %and = and i32 %stat, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.lor.lhs.false_crit_edge, label %land.lhs.true

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %id = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 25
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.lhs.true.do.body7_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

land.lhs.true.do.body7_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %and2 = and i32 %stat, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %lor.lhs.false.if.end_crit_edge, label %land.lhs.true4

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true4:                                   ; preds = %lor.lhs.false
  %id5 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 25
  %4 = ptrtoint ptr %id5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp6 = icmp eq i32 %5, 1
  br i1 %cmp6, label %land.lhs.true4.do.body7_crit_edge, label %land.lhs.true4.if.end_crit_edge

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true4.do.body7_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7

do.body7:                                         ; preds = %land.lhs.true4.do.body7_crit_edge, %land.lhs.true.do.body7_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  tail call void @arm_heavy_mb() #7
  %add.ptr = getelementptr i8, ptr %1, i32 336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #7, !srcloc !74
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !145
  %lock = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  tail call void @mvs_int_full(ptr noundef %mvi)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  br label %if.end

if.end:                                           ; preds = %do.body7, %land.lhs.true4.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvs_94xx_isr_status(ptr nocapture noundef readonly %mvi, i32 noundef %irq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mvi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mvi, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %entry
  %regs_ex = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 5
  %2 = ptrtoint ptr %regs_ex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs_ex, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !71
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !146
  %and2 = and i32 %5, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %stat.0 = phi i32 [ 0, %entry.if.end5_crit_edge ], [ %5, %if.then.if.end5_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %stat.0, %if.end5 ], [ 0, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_94xx_interrupt_enable(ptr nocapture noundef readonly %mvi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_ex = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 5
  %0 = ptrtoint ptr %regs_ex to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_ex, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  %3 = or i32 %2, 3072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !148
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %3) #7, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  tail call void @arm_heavy_mb() #7
  %add.ptr7 = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %3) #7, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  tail call void @arm_heavy_mb() #7
  %add.ptr11 = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %3) #7, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  %add.ptr15 = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %3) #7, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %add.ptr19 = getelementptr i8, ptr %1, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %3) #7, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !153
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #7, !srcloc !74
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_94xx_interrupt_disable(ptr nocapture noundef readonly %mvi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_ex = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 5
  %0 = ptrtoint ptr %regs_ex to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_ex, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  %3 = and i32 %2, -3073
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %3) #7, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !156
  tail call void @arm_heavy_mb() #7
  %add.ptr7 = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %3) #7, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !157
  tail call void @arm_heavy_mb() #7
  %add.ptr11 = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %3) #7, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  tail call void @arm_heavy_mb() #7
  %add.ptr15 = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %3) #7, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  tail call void @arm_heavy_mb() #7
  %add.ptr19 = getelementptr i8, ptr %1, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %3) #7, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !160
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #7, !srcloc !74
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvs_read_phy_ctl(ptr nocapture noundef readonly %mvi, i32 noundef %port) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %regs1 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %port)
  %cmp = icmp ult i32 %port, 4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %1, i32 464
  %mul = shl nuw nsw i32 %port, 2
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %mul
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #7, !srcloc !71
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr6 = getelementptr i8, ptr %1, i32 480
  %sub = shl i32 %port, 2
  %mul7 = add i32 %sub, -16
  %add.ptr8 = getelementptr i8, ptr %add.ptr6, i32 %mul7
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #7, !srcloc !71
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %5, %cond.false ]
  ret i32 %cond
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_write_phy_ctl(ptr nocapture noundef readonly %mvi, i32 noundef %port, i32 noundef %val) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %regs1 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %port)
  %cmp = icmp ult i32 %port, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %val)
  br i1 %cmp, label %do.body, label %do.body3

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %1, i32 464
  %mul = shl nuw nsw i32 %port, 2
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %2) #7, !srcloc !74
  br label %if.end

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr6 = getelementptr i8, ptr %1, i32 480
  %sub = shl i32 %port, 2
  %mul7 = add i32 %sub, -16
  %add.ptr8 = getelementptr i8, ptr %add.ptr6, i32 %mul7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %2) #7, !srcloc !74
  br label %if.end

if.end:                                           ; preds = %do.body3, %do.body
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvs_read_port_cfg_data(ptr nocapture noundef readonly %mvi, i32 noundef %port) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %regs1.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %port)
  %cmp.i = icmp ult i32 %port, 4
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %1, i32 516
  %mul.i = shl nuw nsw i32 %port, 3
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #7, !srcloc !71
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  br label %mvs_read_port.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr4.i = getelementptr i8, ptr %1, i32 548
  %sub.i = shl i32 %port, 3
  %mul9.i = add i32 %sub.i, -32
  %add.ptr10.i = getelementptr i8, ptr %add.ptr4.i, i32 %mul9.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #7, !srcloc !71
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  br label %mvs_read_port.exit

mvs_read_port.exit:                               ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %3, %cond.true.i ], [ %5, %cond.false.i ]
  ret i32 %cond.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_write_port_cfg_data(ptr nocapture noundef readonly %mvi, i32 noundef %port, i32 noundef %val) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %regs1.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %port)
  %cmp.i = icmp ult i32 %port, 4
  br i1 %cmp.i, label %do.body.i, label %do.body6.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %1, i32 516
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %val) #7
  %mul.i = shl nuw nsw i32 %port, 3
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %2) #7, !srcloc !74
  br label %mvs_write_port.exit

do.body6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr4.i = getelementptr i8, ptr %1, i32 548
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %3 = tail call i32 @llvm.bswap.i32(i32 %val) #7
  %sub.i = shl i32 %port, 3
  %mul9.i = add i32 %sub.i, -32
  %add.ptr10.i = getelementptr i8, ptr %add.ptr4.i, i32 %mul9.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %3) #7, !srcloc !74
  br label %mvs_write_port.exit

mvs_write_port.exit:                              ; preds = %do.body6.i, %do.body.i
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_write_port_cfg_addr(ptr nocapture noundef readonly %mvi, i32 noundef %port, i32 noundef %addr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %regs1.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %port)
  %cmp.i = icmp ult i32 %port, 4
  br i1 %cmp.i, label %do.body.i, label %do.body6.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %1, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %addr) #7
  %mul.i = shl nuw nsw i32 %port, 3
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %2) #7, !srcloc !74
  br label %mvs_write_port.exit

do.body6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr4.i = getelementptr i8, ptr %1, i32 544
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %3 = tail call i32 @llvm.bswap.i32(i32 %addr) #7
  %sub.i = shl i32 %port, 3
  %mul9.i = add i32 %sub.i, -32
  %add.ptr10.i = getelementptr i8, ptr %add.ptr4.i, i32 %mul9.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %3) #7, !srcloc !74
  br label %mvs_write_port.exit

mvs_write_port.exit:                              ; preds = %do.body6.i, %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #7
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvs_read_port_vsr_data(ptr nocapture noundef readonly %mvi, i32 noundef %port) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %regs1.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %port)
  %cmp.i = icmp ult i32 %port, 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 596
  %mul.i = shl i32 %port, 3
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #7, !srcloc !71
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  br label %mvs_read_port.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mul9.i = add i32 %mul.i, -32
  %add.ptr10.i = getelementptr i8, ptr %add.ptr.i, i32 %mul9.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #7, !srcloc !71
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  br label %mvs_read_port.exit

mvs_read_port.exit:                               ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %3, %cond.true.i ], [ %5, %cond.false.i ]
  ret i32 %cond.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_write_port_vsr_data(ptr nocapture noundef readonly %mvi, i32 noundef %port, i32 noundef %val) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %regs1.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %port)
  %cmp.i = icmp ult i32 %port, 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 596
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %val) #7
  %mul.i = shl i32 %port, 3
  br i1 %cmp.i, label %do.body.i, label %do.body6.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %2) #7, !srcloc !74
  br label %mvs_write_port.exit

do.body6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mul9.i = add i32 %mul.i, -32
  %add.ptr10.i = getelementptr i8, ptr %add.ptr.i, i32 %mul9.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %2) #7, !srcloc !74
  br label %mvs_write_port.exit

mvs_write_port.exit:                              ; preds = %do.body6.i, %do.body.i
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_write_port_vsr_addr(ptr nocapture noundef readonly %mvi, i32 noundef %port, i32 noundef %addr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %regs1.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %port)
  %cmp.i = icmp ult i32 %port, 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 592
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %addr) #7
  %mul.i = shl i32 %port, 3
  br i1 %cmp.i, label %do.body.i, label %do.body6.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %2) #7, !srcloc !74
  br label %mvs_write_port.exit

do.body6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mul9.i = add i32 %mul.i, -32
  %add.ptr10.i = getelementptr i8, ptr %add.ptr.i, i32 %mul9.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %2) #7, !srcloc !74
  br label %mvs_write_port.exit

mvs_write_port.exit:                              ; preds = %do.body6.i, %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #7
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvs_read_port_irq_stat(ptr nocapture noundef readonly %mvi, i32 noundef %port) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %regs1.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %port)
  %cmp.i = icmp ult i32 %port, 4
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %1, i32 384
  %mul.i = shl nuw nsw i32 %port, 3
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #7, !srcloc !71
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  br label %mvs_read_port.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr4.i = getelementptr i8, ptr %1, i32 416
  %sub.i = shl i32 %port, 3
  %mul9.i = add i32 %sub.i, -32
  %add.ptr10.i = getelementptr i8, ptr %add.ptr4.i, i32 %mul9.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #7, !srcloc !71
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  br label %mvs_read_port.exit

mvs_read_port.exit:                               ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %3, %cond.true.i ], [ %5, %cond.false.i ]
  ret i32 %cond.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_write_port_irq_stat(ptr nocapture noundef readonly %mvi, i32 noundef %port, i32 noundef %val) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %regs1.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %port)
  %cmp.i = icmp ult i32 %port, 4
  br i1 %cmp.i, label %do.body.i, label %do.body6.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %1, i32 384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %val) #7
  %mul.i = shl nuw nsw i32 %port, 3
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %2) #7, !srcloc !74
  br label %mvs_write_port.exit

do.body6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr4.i = getelementptr i8, ptr %1, i32 416
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %3 = tail call i32 @llvm.bswap.i32(i32 %val) #7
  %sub.i = shl i32 %port, 3
  %mul9.i = add i32 %sub.i, -32
  %add.ptr10.i = getelementptr i8, ptr %add.ptr4.i, i32 %mul9.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %3) #7, !srcloc !74
  br label %mvs_write_port.exit

mvs_write_port.exit:                              ; preds = %do.body6.i, %do.body.i
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvs_read_port_irq_mask(ptr nocapture noundef readonly %mvi, i32 noundef %port) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %regs1.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %port)
  %cmp.i = icmp ult i32 %port, 4
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %1, i32 388
  %mul.i = shl nuw nsw i32 %port, 3
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #7, !srcloc !71
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  br label %mvs_read_port.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr4.i = getelementptr i8, ptr %1, i32 420
  %sub.i = shl i32 %port, 3
  %mul9.i = add i32 %sub.i, -32
  %add.ptr10.i = getelementptr i8, ptr %add.ptr4.i, i32 %mul9.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #7, !srcloc !71
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  br label %mvs_read_port.exit

mvs_read_port.exit:                               ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %3, %cond.true.i ], [ %5, %cond.false.i ]
  ret i32 %cond.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_write_port_irq_mask(ptr nocapture noundef readonly %mvi, i32 noundef %port, i32 noundef %val) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %regs1.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %port)
  %cmp.i = icmp ult i32 %port, 4
  br i1 %cmp.i, label %do.body.i, label %do.body6.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %1, i32 388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %val) #7
  %mul.i = shl nuw nsw i32 %port, 3
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %2) #7, !srcloc !74
  br label %mvs_write_port.exit

do.body6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr4.i = getelementptr i8, ptr %1, i32 420
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %3 = tail call i32 @llvm.bswap.i32(i32 %val) #7
  %sub.i = shl i32 %port, 3
  %mul9.i = add i32 %sub.i, -32
  %add.ptr10.i = getelementptr i8, ptr %add.ptr4.i, i32 %mul9.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %3) #7, !srcloc !74
  br label %mvs_write_port.exit

mvs_write_port.exit:                              ; preds = %do.body6.i, %do.body.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_94xx_command_active(ptr nocapture noundef readonly %mvi, i32 noundef %slot_idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %slot_idx, 3
  %add = add nuw nsw i32 %shr, 768
  %regs1.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %add) #7
  %add.ptr.i = getelementptr i8, ptr %1, i32 368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #7, !srcloc !74
  %add.ptr2.i = getelementptr i8, ptr %1, i32 372
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #7, !srcloc !71
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  %rem = and i32 %slot_idx, 31
  %shl = shl nuw i32 1, %rem
  %and = and i32 %4, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, i32 noundef 656, i32 noundef %4, i32 noundef %slot_idx) #10
  %5 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  tail call void @arm_heavy_mb() #7
  %add.ptr.i28 = getelementptr i8, ptr %6, i32 368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 %2) #7, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  tail call void @arm_heavy_mb() #7
  %7 = tail call i32 @llvm.bswap.i32(i32 %shl) #7
  %add.ptr5.i = getelementptr i8, ptr %6, i32 372
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %7) #7, !srcloc !74
  br label %do.body7

do.body7:                                         ; preds = %do.body7.do.body7_crit_edge, %do.end
  %8 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void @arm_heavy_mb() #7
  %add.ptr.i30 = getelementptr i8, ptr %9, i32 368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %2) #7, !srcloc !74
  %add.ptr2.i31 = getelementptr i8, ptr %9, i32 372
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i31) #7, !srcloc !71
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  %and14 = and i32 %11, %shl
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %do.body7.if.end_crit_edge, label %do.body7.do.body7_crit_edge

do.body7.do.body7_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7

do.body7.if.end_crit_edge:                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body7.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_94xx_clear_srs_irq(ptr nocapture noundef readonly %mvi, i8 noundef zeroext %reg_set, i8 noundef zeroext %clear_all) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %clear_all)
  %tobool.not = icmp eq i8 %clear_all, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 344
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool4.not = icmp eq i32 %2, 0
  br i1 %tobool4.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i32 noundef 675, i32 noundef %3) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !74
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %add.ptr14 = getelementptr i8, ptr %1, i32 352
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !165
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool18.not = icmp eq i32 %4, 0
  br i1 %tobool18.not, label %if.end.if.end76_crit_edge, label %do.end22

if.end.if.end76_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

do.end22:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.11, i32 noundef 680, i32 noundef %5) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !166
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %4) #7, !srcloc !74
  br label %if.end76

if.else:                                          ; preds = %entry
  %conv = zext i8 %reg_set to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %reg_set)
  %cmp = icmp ugt i8 %reg_set, 31
  br i1 %cmp, label %if.then31, label %if.else38

if.then31:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr34 = getelementptr i8, ptr %1, i32 352
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #7, !srcloc !71
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !167
  br label %if.end45

if.else38:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr41 = getelementptr i8, ptr %1, i32 344
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #7, !srcloc !71
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  br label %if.end45

if.end45:                                         ; preds = %if.else38, %if.then31
  %tmp.0 = phi i32 [ %7, %if.then31 ], [ %9, %if.else38 ]
  %rem = and i32 %conv, 31
  %shl = shl nuw i32 1, %rem
  %and = and i32 %tmp.0, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool47.not = icmp eq i32 %and, 0
  br i1 %tobool47.not, label %if.end45.if.end76_crit_edge, label %do.end51

if.end45.if.end76_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

do.end51:                                         ; preds = %if.end45
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.11, i32 noundef 690, i32 noundef %conv) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %10 = tail call i32 @llvm.bswap.i32(i32 %shl)
  br i1 %cmp, label %do.body59, label %do.body67

do.body59:                                        ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr65 = getelementptr i8, ptr %1, i32 352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 %10) #7, !srcloc !74
  br label %if.end76

do.body67:                                        ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr73 = getelementptr i8, ptr %1, i32 344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 %10) #7, !srcloc !74
  br label %if.end76

if.end76:                                         ; preds = %do.body67, %do.body59, %if.end45.if.end76_crit_edge, %do.end22, %if.end.if.end76_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_94xx_issue_stop(ptr nocapture noundef readonly %mvi, i32 noundef %type, i32 noundef %tfs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  tail call void @mvs_94xx_clear_srs_irq(ptr noundef %mvi, i8 noundef zeroext 0, i8 noundef zeroext 1)
  %add.ptr = getelementptr i8, ptr %1, i32 336
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %3 = or i32 %2, 33554432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #7, !srcloc !74
  %add.ptr7 = getelementptr i8, ptr %1, i32 260
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  %5 = or i32 %4, 16711680
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %5) #7, !srcloc !74
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_start_delivery(ptr nocapture noundef readonly %mvi, i32 noundef %tx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %regs1 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %tx)
  %add.ptr = getelementptr i8, ptr %1, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !74
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvs_rx_update(ptr nocapture noundef readonly %mvi) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %regs1 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 320
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !71
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !174
  ret i32 %3
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_int_full(ptr noundef %mvi) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %regs1 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 336
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !71
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !175
  %call4 = tail call i32 @mvs_int_rx(ptr noundef %mvi, i1 noundef zeroext false) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.031 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %shr = lshr i32 %3, %i.031
  %and = and i32 %shr, 65792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mvs_int_port(ptr noundef %mvi, i32 noundef %i.031, i32 noundef %and) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi ptr [ %5, %entry.for.end_crit_edge ], [ %9, %for.inc.for.end_crit_edge ]
  %and5 = and i32 %3, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %for.end.if.end9_crit_edge, label %if.then7

for.end.if.end9_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then7:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %dispatch = getelementptr inbounds %struct.mvs_chip_info, ptr %.lcssa, i32 0, i32 7
  %12 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dispatch, align 4
  %non_spec_ncq_error = getelementptr inbounds %struct.mvs_dispatch, ptr %13, i32 0, i32 50
  %14 = ptrtoint ptr %non_spec_ncq_error to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %non_spec_ncq_error, align 4
  tail call void %15(ptr noundef %mvi) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %for.end.if.end9_crit_edge
  %and10 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.do.body_crit_edge, label %if.then12

if.end9.do.body_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then12:                                        ; preds = %if.end9
  %16 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs1, align 8
  %add.ptr.i = getelementptr i8, ptr %17, i32 344
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %if.then12.mvs_int_sata.exit_crit_edge, label %do.body.i

if.then12.mvs_int_sata.exit_crit_edge:            ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvs_int_sata.exit

do.body.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !177
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #7, !srcloc !74
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
  tail call void %24(ptr noundef %mvi) #7
  br label %do.body

do.body:                                          ; preds = %mvs_int_sata.exit, %if.end9.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !178
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !74
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @mvs_94xx_assign_reg_set(ptr nocapture noundef %mvi, ptr nocapture noundef %tfs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %sata_reg_set = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 26
  %4 = ptrtoint ptr %sata_reg_set to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sata_reg_set, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %5)
  %tobool.not.i = icmp eq i64 %5, -1
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %cond.true.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cond.true.i:                                      ; preds = %if.end
  %neg.i = xor i64 %5, -1
  %conv.i.i = trunc i64 %neg.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %cmp.i.i = icmp eq i32 %conv.i.i, 0
  br i1 %cmp.i.i, label %mv_ffc64.exit.thread, label %if.then21

mv_ffc64.exit.thread:                             ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i.i = lshr i64 %neg.i, 32
  %conv2.i.i = trunc i64 %shr.i.i to i32
  %6 = tail call i32 @llvm.cttz.i32(i32 %conv2.i.i, i1 false) #7, !range !179
  %add.i.i = add nuw nsw i32 %6, 32
  %sh_prom = zext i32 %add.i.i to i64
  %shl = shl nuw i64 1, %sh_prom
  %or = or i64 %shl, %5
  %7 = ptrtoint ptr %sata_reg_set to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %or, ptr %sata_reg_set, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !180
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %sata_reg_set to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %sata_reg_set, align 8
  %shr = lshr i64 %9, 32
  %conv10 = trunc i64 %shr to i32
  %10 = tail call i32 @llvm.bswap.i32(i32 %conv10)
  %add.ptr = getelementptr i8, ptr %1, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #7, !srcloc !74
  br label %cleanup.sink.split

if.then21:                                        ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = tail call i32 @llvm.cttz.i32(i32 %conv.i.i, i1 true) #7, !range !179
  %sh_prom22 = zext i32 %11 to i64
  %shl23 = shl nuw nsw i64 1, %sh_prom22
  %or25 = or i64 %shl23, %5
  %12 = ptrtoint ptr %sata_reg_set to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %or25, ptr %sata_reg_set, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !181
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %sata_reg_set to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %sata_reg_set, align 8
  %conv40 = trunc i64 %14 to i32
  %15 = tail call i32 @llvm.bswap.i32(i32 %conv40)
  %add.ptr41 = getelementptr i8, ptr %1, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %15) #7, !srcloc !74
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then21, %mv_ffc64.exit.thread
  %.sink = phi i32 [ %11, %if.then21 ], [ %add.i.i, %mv_ffc64.exit.thread ]
  %conv43 = trunc i32 %.sink to i8
  %16 = ptrtoint ptr %tfs to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv43, ptr %tfs, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %entry.cleanup_crit_edge ], [ 127, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_94xx_free_reg_set(ptr nocapture noundef %mvi, ptr nocapture noundef %tfs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %sh_prom = zext i8 %3 to i64
  %shl = shl nuw i64 1, %sh_prom
  %neg = xor i64 %shl, -1
  %sata_reg_set = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 26
  %4 = ptrtoint ptr %sata_reg_set to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sata_reg_set, align 8
  %and = and i64 %5, %neg
  store i64 %and, ptr %sata_reg_set, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %3)
  %cmp5 = icmp ult i8 %3, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %sata_reg_set to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sata_reg_set, align 8
  br i1 %cmp5, label %do.body13, label %do.body23

do.body13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv17 = trunc i64 %7 to i32
  %8 = tail call i32 @llvm.bswap.i32(i32 %conv17)
  %add.ptr18 = getelementptr i8, ptr %1, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %8) #7, !srcloc !74
  br label %if.end38

do.body23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %shr = lshr i64 %7, 32
  %conv27 = trunc i64 %shr to i32
  %9 = tail call i32 @llvm.bswap.i32(i32 %conv27)
  %add.ptr28 = getelementptr i8, ptr %1, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %9) #7, !srcloc !74
  br label %if.end38

if.end38:                                         ; preds = %do.body23, %do.body13
  %10 = ptrtoint ptr %tfs to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 127, ptr %tfs, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mvs_get_prd_size() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 12
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mvs_get_prd_count() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 255
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_94xx_make_prd(ptr noundef %scatter, i32 noundef %nr, ptr nocapture noundef writeonly %prd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr)
  %cmp8 = icmp sgt i32 %nr, 0
  br i1 %cmp8, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %im_len.sroa.0.012 = phi i32 [ %bf.set, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %buf_prd.011 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %prd, %entry.for.body_crit_edge ]
  %sg.010 = phi ptr [ %call, %for.body.for.body_crit_edge ], [ %scatter, %entry.for.body_crit_edge ]
  %i.09 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.010, i32 0, i32 3
  %0 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_address, align 4
  %conv = zext i32 %1 to i64
  %2 = tail call i64 @llvm.bswap.i64(i64 %conv)
  %3 = ptrtoint ptr %buf_prd.011 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 %2, ptr %buf_prd.011, align 1
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.010, i32 0, i32 4
  %4 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_length, align 4
  %bf.value = and i32 %5, 4194303
  %bf.clear = and i32 %im_len.sroa.0.012, -4194304
  %bf.set = or i32 %bf.value, %bf.clear
  %6 = tail call i32 @llvm.bswap.i32(i32 %bf.set)
  %im_len1 = getelementptr inbounds %struct.mvs_prd, ptr %buf_prd.011, i32 0, i32 1
  %7 = ptrtoint ptr %im_len1 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %6, ptr %im_len1, align 1
  %incdec.ptr = getelementptr %struct.mvs_prd, ptr %buf_prd.011, i32 1
  %inc = add nuw nsw i32 %i.09, 1
  %call = tail call ptr @sg_next(ptr noundef %sg.010) #7
  %exitcond.not = icmp eq i32 %inc, %nr
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_94xx_detect_porttype(ptr nocapture noundef %mvi, i32 noundef %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1.i.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i)
  %cmp.i.i = icmp ult i32 %i, 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 592
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %mul.i.i = shl i32 %i, 3
  br i1 %cmp.i.i, label %do.body.i.i, label %do.body6.i.i

do.body.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 201326592) #7, !srcloc !74
  br label %mvs_write_port_vsr_addr.exit

do.body6.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mul9.i.i = add i32 %mul.i.i, -32
  %add.ptr10.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul9.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i, i32 201326592) #7, !srcloc !74
  br label %mvs_write_port_vsr_addr.exit

mvs_write_port_vsr_addr.exit:                     ; preds = %do.body6.i.i, %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #7
  %12 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs1.i.i, align 8
  %add.ptr.i.i16 = getelementptr i8, ptr %13, i32 596
  br i1 %cmp.i.i, label %cond.true.i.i, label %cond.false.i.i

cond.true.i.i:                                    ; preds = %mvs_write_port_vsr_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i.i18 = getelementptr i8, ptr %add.ptr.i.i16, i32 %mul.i.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i18) #7, !srcloc !71
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  br label %mvs_read_port_vsr_data.exit

cond.false.i.i:                                   ; preds = %mvs_write_port_vsr_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  %mul9.i.i19 = add i32 %mul.i.i, -32
  %add.ptr10.i.i20 = getelementptr i8, ptr %add.ptr.i.i16, i32 %mul9.i.i19
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i20) #7, !srcloc !71
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  br label %mvs_read_port_vsr_data.exit

mvs_read_port_vsr_data.exit:                      ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i32 [ %15, %cond.true.i.i ], [ %17, %cond.false.i.i ]
  %phy_type = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 10
  %18 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %phy_type, align 8
  %and3 = and i32 %19, -4
  %20 = and i32 %cond.i.i, 4128768
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %20)
  %cond = icmp eq i32 %20, 1048576
  %storemerge.v = select i1 %cond, i32 2, i32 1
  %storemerge = or i32 %storemerge.v, %and3
  %21 = ptrtoint ptr %phy_type to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %storemerge, ptr %phy_type, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvs_94xx_oob_done(ptr nocapture noundef readonly %mvi, i32 noundef %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i)
  %cmp.i = icmp ult i32 %i, 4
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %1, i32 464
  %mul.i = shl nuw nsw i32 %i, 2
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #7, !srcloc !71
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  br label %mvs_read_phy_ctl.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr6.i = getelementptr i8, ptr %1, i32 480
  %sub.i = shl i32 %i, 2
  %mul7.i = add i32 %sub.i, -16
  %add.ptr8.i = getelementptr i8, ptr %add.ptr6.i, i32 %mul7.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #7, !srcloc !71
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  br label %mvs_read_phy_ctl.exit

mvs_read_phy_ctl.exit:                            ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %3, %cond.true.i ], [ %5, %cond.false.i ]
  %and = lshr i32 %cond.i, 20
  %and.lobit = and i32 %and, 1
  ret i32 %and.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_94xx_fix_phy_info(ptr nocapture noundef %mvi, i32 noundef %i, ptr nocapture noundef %id) #0 align 64 {
entry:
  %id_frame.i38 = alloca [7 x i32], align 4
  %id_frame.i = alloca [7 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_status = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 11
  %0 = ptrtoint ptr %phy_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_status, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.11, i32 noundef 869, i32 noundef %1) #10
  %2 = ptrtoint ptr %phy_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_status, align 4
  %and = lshr i32 %3, 16
  %shr = and i32 %and, 3
  %linkrate = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 2, i32 13
  %add = or i32 %shr, 8
  %4 = ptrtoint ptr %linkrate to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %linkrate, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.11, i32 noundef 874, i32 noundef %add) #10
  %minimum_linkrate = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 19
  %5 = ptrtoint ptr %minimum_linkrate to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8, ptr %minimum_linkrate, align 8
  %maximum_linkrate = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 20
  %6 = ptrtoint ptr %maximum_linkrate to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 10, ptr %maximum_linkrate, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %id_frame.i) #7
  %regs1.i.i.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i)
  %cmp.i.i.i = icmp ult i32 %i, 4
  %sub.i.i.i = shl i32 %i, 3
  %mul9.i.i.i = add i32 %sub.i.i.i, -32
  %7 = call ptr @memset(ptr %id_frame.i, i32 255, i32 28)
  br label %for.body.i

for.body.i:                                       ; preds = %mvs_read_port_cfg_data.exit.i.for.body.i_crit_edge, %entry
  %i.015.i = phi i32 [ 0, %entry ], [ %inc.i, %mvs_read_port_cfg_data.exit.i.for.body.i_crit_edge ]
  %mul.i = shl i32 %i.015.i, 2
  %add.i = add nuw nsw i32 %mul.i, 256
  %8 = ptrtoint ptr %regs1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs1.i.i.i, align 8
  br i1 %cmp.i.i.i, label %do.body.i.i.i, label %do.body6.i.i.i

do.body.i.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %10 = tail call i32 @llvm.bswap.i32(i32 %add.i) #7
  %add.ptr5.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %sub.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i.i, i32 %10) #7, !srcloc !74
  br label %mvs_write_port_cfg_addr.exit.i

do.body6.i.i.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr4.i.i.i = getelementptr i8, ptr %9, i32 544
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %11 = tail call i32 @llvm.bswap.i32(i32 %add.i) #7
  %add.ptr10.i.i.i = getelementptr i8, ptr %add.ptr4.i.i.i, i32 %mul9.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i.i, i32 %11) #7, !srcloc !74
  br label %mvs_write_port_cfg_addr.exit.i

mvs_write_port_cfg_addr.exit.i:                   ; preds = %do.body6.i.i.i, %do.body.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #7
  %22 = ptrtoint ptr %regs1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs1.i.i.i, align 8
  br i1 %cmp.i.i.i, label %cond.true.i.i.i, label %cond.false.i.i.i

cond.true.i.i.i:                                  ; preds = %mvs_write_port_cfg_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i8.i = getelementptr i8, ptr %23, i32 516
  %add.ptr5.i.i10.i = getelementptr i8, ptr %add.ptr.i.i8.i, i32 %sub.i.i.i
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i10.i) #7, !srcloc !71
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  br label %mvs_read_port_cfg_data.exit.i

cond.false.i.i.i:                                 ; preds = %mvs_write_port_cfg_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr4.i.i11.i = getelementptr i8, ptr %23, i32 548
  %add.ptr10.i.i14.i = getelementptr i8, ptr %add.ptr4.i.i11.i, i32 %mul9.i.i.i
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i14.i) #7, !srcloc !71
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  br label %mvs_read_port_cfg_data.exit.i

mvs_read_port_cfg_data.exit.i:                    ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %cond.i.i.i = phi i32 [ %25, %cond.true.i.i.i ], [ %27, %cond.false.i.i.i ]
  %28 = tail call i32 @llvm.bswap.i32(i32 %cond.i.i.i) #7
  %arrayidx.i = getelementptr [7 x i32], ptr %id_frame.i, i32 0, i32 %i.015.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 7
  br i1 %exitcond.not.i, label %mvs_94xx_get_dev_identify_frame.exit, label %mvs_read_port_cfg_data.exit.i.for.body.i_crit_edge

mvs_read_port_cfg_data.exit.i.for.body.i_crit_edge: ; preds = %mvs_read_port_cfg_data.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

mvs_94xx_get_dev_identify_frame.exit:             ; preds = %mvs_read_port_cfg_data.exit.i
  %30 = call ptr @memcpy(ptr %id, ptr %id_frame.i, i32 28)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %id_frame.i) #7
  %31 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load.i = load i8, ptr %id, align 1
  %bf.lshr.i = lshr i8 %bf.load.i, 4
  %bf.clear.i = and i8 %bf.lshr.i, 7
  %conv.i = zext i8 %bf.clear.i to i32
  %32 = getelementptr inbounds %struct.sas_identify_frame, ptr %id, i32 0, i32 2
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load1.i = load i8, ptr %32, align 1
  %34 = and i8 %bf.load1.i, 4
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 7
  %37 = or i32 %36, %conv.i
  %38 = and i8 %bf.load1.i, 2
  %39 = zext i8 %38 to i32
  %40 = shl nuw nsw i32 %39, 9
  %41 = or i32 %37, %40
  %42 = and i8 %bf.load1.i, 8
  %43 = zext i8 %42 to i32
  %44 = shl nuw nsw i32 %43, 8
  %45 = or i32 %41, %44
  %46 = getelementptr inbounds %struct.sas_identify_frame, ptr %id, i32 0, i32 3
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load19.i = load i8, ptr %46, align 1
  %48 = and i8 %bf.load19.i, 4
  %49 = zext i8 %48 to i32
  %50 = shl nuw nsw i32 %49, 15
  %51 = or i32 %45, %50
  %52 = and i8 %bf.load19.i, 2
  %53 = zext i8 %52 to i32
  %54 = shl nuw nsw i32 %53, 17
  %55 = or i32 %51, %54
  %56 = and i8 %bf.load19.i, 8
  %57 = zext i8 %56 to i32
  %58 = shl nuw nsw i32 %57, 16
  %phy_id.i = getelementptr inbounds %struct.sas_identify_frame, ptr %id, i32 0, i32 6
  %59 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %phy_id.i, align 1
  %conv40.i = zext i8 %60 to i32
  %shl.i = shl nuw i32 %conv40.i, 24
  %61 = or i32 %shl.i, %58
  %or41.i = or i32 %55, %61
  %dev_info = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 9
  %62 = ptrtoint ptr %dev_info to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or41.i, ptr %dev_info, align 4
  %phy_type = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 10
  %63 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %phy_type, align 8
  %and12 = and i32 %64, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool.not = icmp eq i32 %and12, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %mvs_94xx_get_dev_identify_frame.exit
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %id_frame.i38) #7
  %id1.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 25
  %chip.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 20
  %65 = call ptr @memset(ptr %id_frame.i38, i32 255, i32 28)
  br label %for.body.i45

for.body.i45:                                     ; preds = %mvs_read_port_cfg_data.exit.i59.for.body.i45_crit_edge, %if.then
  %i.025.i = phi i32 [ 0, %if.then ], [ %inc.i57, %mvs_read_port_cfg_data.exit.i59.for.body.i45_crit_edge ]
  %mul.i43 = shl i32 %i.025.i, 2
  %add.i44 = add nuw nsw i32 %mul.i43, 284
  %66 = ptrtoint ptr %regs1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs1.i.i.i, align 8
  br i1 %cmp.i.i.i, label %do.body.i.i.i48, label %do.body6.i.i.i51

do.body.i.i.i48:                                  ; preds = %for.body.i45
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i46 = getelementptr i8, ptr %67, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %68 = tail call i32 @llvm.bswap.i32(i32 %add.i44) #7
  %add.ptr5.i.i.i47 = getelementptr i8, ptr %add.ptr.i.i.i46, i32 %sub.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i.i47, i32 %68) #7, !srcloc !74
  br label %mvs_write_port_cfg_addr.exit.i52

do.body6.i.i.i51:                                 ; preds = %for.body.i45
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr4.i.i.i49 = getelementptr i8, ptr %67, i32 544
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %69 = tail call i32 @llvm.bswap.i32(i32 %add.i44) #7
  %add.ptr10.i.i.i50 = getelementptr i8, ptr %add.ptr4.i.i.i49, i32 %mul9.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i.i50, i32 %69) #7, !srcloc !74
  br label %mvs_write_port_cfg_addr.exit.i52

mvs_write_port_cfg_addr.exit.i52:                 ; preds = %do.body6.i.i.i51, %do.body.i.i.i48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %77(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %78(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %79(i32 noundef 214748000) #7
  %80 = ptrtoint ptr %regs1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regs1.i.i.i, align 8
  br i1 %cmp.i.i.i, label %cond.true.i.i.i53, label %cond.false.i.i.i54

cond.true.i.i.i53:                                ; preds = %mvs_write_port_cfg_addr.exit.i52
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i18.i = getelementptr i8, ptr %81, i32 516
  %add.ptr5.i.i20.i = getelementptr i8, ptr %add.ptr.i.i18.i, i32 %sub.i.i.i
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i20.i) #7, !srcloc !71
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  br label %mvs_read_port_cfg_data.exit.i59

cond.false.i.i.i54:                               ; preds = %mvs_write_port_cfg_addr.exit.i52
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr4.i.i21.i = getelementptr i8, ptr %81, i32 548
  %add.ptr10.i.i24.i = getelementptr i8, ptr %add.ptr4.i.i21.i, i32 %mul9.i.i.i
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i24.i) #7, !srcloc !71
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  br label %mvs_read_port_cfg_data.exit.i59

mvs_read_port_cfg_data.exit.i59:                  ; preds = %cond.false.i.i.i54, %cond.true.i.i.i53
  %cond.i.i.i55 = phi i32 [ %83, %cond.true.i.i.i53 ], [ %85, %cond.false.i.i.i54 ]
  %86 = tail call i32 @llvm.bswap.i32(i32 %cond.i.i.i55) #7
  %arrayidx.i56 = getelementptr [7 x i32], ptr %id_frame.i38, i32 0, i32 %i.025.i
  %87 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %arrayidx.i56, align 4
  %88 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %id1.i, align 8
  %90 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %chip.i, align 4
  %n_phy.i = getelementptr inbounds %struct.mvs_chip_info, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %n_phy.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %n_phy.i, align 4
  %mul2.i = mul i32 %93, %89
  %add3.i = add i32 %mul2.i, %i
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.11, i32 noundef 832, i32 noundef %add3.i, i32 noundef %i.025.i, i32 noundef %86) #10
  %inc.i57 = add nuw nsw i32 %i.025.i, 1
  %exitcond.not.i58 = icmp eq i32 %inc.i57, 7
  br i1 %exitcond.not.i58, label %mvs_94xx_get_att_identify_frame.exit, label %mvs_read_port_cfg_data.exit.i59.for.body.i45_crit_edge

mvs_read_port_cfg_data.exit.i59.for.body.i45_crit_edge: ; preds = %mvs_read_port_cfg_data.exit.i59
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i45

mvs_94xx_get_att_identify_frame.exit:             ; preds = %mvs_read_port_cfg_data.exit.i59
  call void @__sanitizer_cov_trace_pc() #9
  %94 = call ptr @memcpy(ptr %id, ptr %id_frame.i38, i32 28)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %id_frame.i38) #7
  %95 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %95)
  %bf.load.i.i = load i8, ptr %id, align 1
  %bf.lshr.i.i = lshr i8 %bf.load.i.i, 4
  %bf.clear.i.i = and i8 %bf.lshr.i.i, 7
  %conv.i.i = zext i8 %bf.clear.i.i to i32
  %96 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %96)
  %bf.load1.i.i = load i8, ptr %32, align 1
  %97 = and i8 %bf.load1.i.i, 4
  %98 = zext i8 %97 to i32
  %99 = shl nuw nsw i32 %98, 7
  %100 = or i32 %99, %conv.i.i
  %101 = and i8 %bf.load1.i.i, 2
  %102 = zext i8 %101 to i32
  %103 = shl nuw nsw i32 %102, 9
  %104 = or i32 %100, %103
  %105 = and i8 %bf.load1.i.i, 8
  %106 = zext i8 %105 to i32
  %107 = shl nuw nsw i32 %106, 8
  %108 = or i32 %104, %107
  %109 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %109)
  %bf.load19.i.i = load i8, ptr %46, align 1
  %110 = and i8 %bf.load19.i.i, 4
  %111 = zext i8 %110 to i32
  %112 = shl nuw nsw i32 %111, 15
  %113 = or i32 %108, %112
  %114 = and i8 %bf.load19.i.i, 2
  %115 = zext i8 %114 to i32
  %116 = shl nuw nsw i32 %115, 17
  %117 = or i32 %113, %116
  %118 = and i8 %bf.load19.i.i, 8
  %119 = zext i8 %118 to i32
  %120 = shl nuw nsw i32 %119, 16
  %121 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %phy_id.i, align 1
  %conv40.i.i = zext i8 %122 to i32
  %shl.i.i = shl nuw i32 %conv40.i.i, 24
  %123 = or i32 %shl.i.i, %120
  %or41.i.i = or i32 %117, %123
  %att_dev_info = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 8
  %124 = ptrtoint ptr %att_dev_info to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %or41.i.i, ptr %att_dev_info, align 8
  %sas_addr = getelementptr inbounds %struct.sas_identify_frame, ptr %id, i32 0, i32 5
  %125 = ptrtoint ptr %sas_addr to i32
  call void @__asan_loadN_noabort(i32 %125, i32 8)
  %126 = load i64, ptr %sas_addr, align 1
  %att_dev_sas_addr = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 7
  %127 = ptrtoint ptr %att_dev_sas_addr to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 %126, ptr %att_dev_sas_addr, align 8
  br label %if.end

if.else:                                          ; preds = %mvs_94xx_get_dev_identify_frame.exit
  call void @__sanitizer_cov_trace_pc() #9
  %att_dev_info14 = getelementptr %struct.mvs_info, ptr %mvi, i32 0, i32 23, i32 %i, i32 8
  %128 = ptrtoint ptr %att_dev_info14 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 131073, ptr %att_dev_info14, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %mvs_94xx_get_att_identify_frame.exit
  %129 = ptrtoint ptr %regs1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %regs1.i.i.i, align 8
  br i1 %cmp.i.i.i, label %do.body.i.i, label %do.body6.i.i

do.body.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %130, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %add.ptr5.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %sub.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 469762048) #7, !srcloc !74
  br label %mvs_write_port_cfg_addr.exit

do.body6.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr4.i.i = getelementptr i8, ptr %130, i32 544
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %add.ptr10.i.i = getelementptr i8, ptr %add.ptr4.i.i, i32 %mul9.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i, i32 469762048) #7, !srcloc !74
  br label %mvs_write_port_cfg_addr.exit

mvs_write_port_cfg_addr.exit:                     ; preds = %do.body6.i.i, %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %131 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %131(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %132 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %132(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %133 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %133(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %134 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %134(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %135 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %135(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %136 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %136(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %137 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %137(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %138 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %138(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %139 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %139(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %140 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %140(i32 noundef 214748000) #7
  %141 = ptrtoint ptr %regs1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %regs1.i.i.i, align 8
  br i1 %cmp.i.i.i, label %do.body.i.i65, label %do.body6.i.i70

do.body.i.i65:                                    ; preds = %mvs_write_port_cfg_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i62 = getelementptr i8, ptr %142, i32 516
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %add.ptr5.i.i64 = getelementptr i8, ptr %add.ptr.i.i62, i32 %sub.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i64, i32 67108864) #7, !srcloc !74
  br label %mvs_write_port_cfg_data.exit

do.body6.i.i70:                                   ; preds = %mvs_write_port_cfg_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr4.i.i66 = getelementptr i8, ptr %142, i32 548
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %add.ptr10.i.i69 = getelementptr i8, ptr %add.ptr4.i.i66, i32 %mul9.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i69, i32 67108864) #7, !srcloc !74
  br label %mvs_write_port_cfg_data.exit

mvs_write_port_cfg_data.exit:                     ; preds = %do.body6.i.i70, %do.body.i.i65
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_94xx_phy_set_link_rate(ptr nocapture noundef readonly %mvi, i32 noundef %phy_id, ptr nocapture noundef readonly %rates) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %phy_id)
  %cmp.i = icmp ult i32 %phy_id, 4
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %1, i32 464
  %mul.i = shl nuw nsw i32 %phy_id, 2
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #7, !srcloc !71
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  br label %mvs_read_phy_ctl.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr6.i = getelementptr i8, ptr %1, i32 480
  %sub.i = shl i32 %phy_id, 2
  %mul7.i = add i32 %sub.i, -16
  %add.ptr8.i = getelementptr i8, ptr %add.ptr6.i, i32 %mul7.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #7, !srcloc !71
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  br label %mvs_read_phy_ctl.exit

mvs_read_phy_ctl.exit:                            ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %3, %cond.true.i ], [ %5, %cond.false.i ]
  %6 = ptrtoint ptr %rates to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rates, align 4
  %sub = shl i32 %7, 12
  %shl = add i32 %sub, -32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl)
  %tobool.not = icmp eq i32 %shl, 0
  %and = and i32 %cond.i, -12289
  %or = or i32 %shl, %and
  %tmp.0 = select i1 %tobool.not, i32 %cond.i, i32 %or
  %8 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %10 = tail call i32 @llvm.bswap.i32(i32 %tmp.0) #7
  br i1 %cmp.i, label %do.body.i, label %do.body3.i

do.body.i:                                        ; preds = %mvs_read_phy_ctl.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i10 = getelementptr i8, ptr %9, i32 464
  %mul.i11 = shl nuw nsw i32 %phy_id, 2
  %add.ptr2.i12 = getelementptr i8, ptr %add.ptr.i10, i32 %mul.i11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i12, i32 %10) #7, !srcloc !74
  br label %mvs_write_phy_ctl.exit

do.body3.i:                                       ; preds = %mvs_read_phy_ctl.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr6.i13 = getelementptr i8, ptr %9, i32 480
  %sub.i14 = shl i32 %phy_id, 2
  %mul7.i15 = add i32 %sub.i14, -16
  %add.ptr8.i16 = getelementptr i8, ptr %add.ptr6.i13, i32 %mul7.i15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i16, i32 %10) #7, !srcloc !74
  br label %mvs_write_phy_ctl.exit

mvs_write_phy_ctl.exit:                           ; preds = %do.body3.i, %do.body.i
  tail call void @mvs_94xx_phy_reset(ptr noundef %mvi, i32 noundef %phy_id, i32 noundef 2)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mvs_hw_max_link_rate() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_94xx_phy_disable(ptr nocapture noundef readonly %mvi, i32 noundef %phy_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1.i.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %phy_id)
  %cmp.i.i = icmp ult i32 %phy_id, 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 592
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %mul.i.i = shl i32 %phy_id, 3
  br i1 %cmp.i.i, label %do.body.i.i, label %do.body6.i.i

do.body.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 134217728) #7, !srcloc !74
  br label %mvs_write_port_vsr_addr.exit

do.body6.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mul9.i.i = add i32 %mul.i.i, -32
  %add.ptr10.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul9.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i, i32 134217728) #7, !srcloc !74
  br label %mvs_write_port_vsr_addr.exit

mvs_write_port_vsr_addr.exit:                     ; preds = %do.body6.i.i, %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #7
  %12 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs1.i.i, align 8
  %add.ptr.i.i7 = getelementptr i8, ptr %13, i32 596
  br i1 %cmp.i.i, label %cond.true.i.i, label %cond.false.i.i

cond.true.i.i:                                    ; preds = %mvs_write_port_vsr_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i.i9 = getelementptr i8, ptr %add.ptr.i.i7, i32 %mul.i.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i9) #7, !srcloc !71
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  br label %mvs_read_port_vsr_data.exit

cond.false.i.i:                                   ; preds = %mvs_write_port_vsr_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  %mul9.i.i10 = add i32 %mul.i.i, -32
  %add.ptr10.i.i11 = getelementptr i8, ptr %add.ptr.i.i7, i32 %mul9.i.i10
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i11) #7, !srcloc !71
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  br label %mvs_read_port_vsr_data.exit

mvs_read_port_vsr_data.exit:                      ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i32 [ %15, %cond.true.i.i ], [ %17, %cond.false.i.i ]
  %or = or i32 %cond.i.i, 8388608
  %18 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs1.i.i, align 8
  %add.ptr.i.i14 = getelementptr i8, ptr %19, i32 596
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %20 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  br i1 %cmp.i.i, label %do.body.i.i17, label %do.body6.i.i20

do.body.i.i17:                                    ; preds = %mvs_read_port_vsr_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i.i16 = getelementptr i8, ptr %add.ptr.i.i14, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i16, i32 %20) #7, !srcloc !74
  br label %mvs_write_port_vsr_data.exit

do.body6.i.i20:                                   ; preds = %mvs_read_port_vsr_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  %mul9.i.i18 = add i32 %mul.i.i, -32
  %add.ptr10.i.i19 = getelementptr i8, ptr %add.ptr.i.i14, i32 %mul9.i.i18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i19, i32 %20) #7, !srcloc !74
  br label %mvs_write_port_vsr_data.exit

mvs_write_port_vsr_data.exit:                     ; preds = %do.body6.i.i20, %do.body.i.i17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_94xx_phy_enable(ptr nocapture noundef readonly %mvi, i32 noundef %phy_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %revision1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %revision1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %revision1, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %3, label %entry.if.end7_crit_edge [
    i8 -96, label %if.then
    i8 1, label %if.then6
  ]

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = shl i32 %phy_id, 3
  br label %if.end7

if.then:                                          ; preds = %entry
  %regs1.i.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %5 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %phy_id)
  %cmp.i.i = icmp ult i32 %phy_id, 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 592
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %mul.i.i = shl i32 %phy_id, 3
  br i1 %cmp.i.i, label %do.body.i.i, label %do.body6.i.i

do.body.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 -1275002880) #7, !srcloc !74
  br label %mvs_write_port_vsr_addr.exit

do.body6.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %mul9.i.i = add i32 %mul.i.i, -32
  %add.ptr10.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul9.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i, i32 -1275002880) #7, !srcloc !74
  br label %mvs_write_port_vsr_addr.exit

mvs_write_port_vsr_addr.exit:                     ; preds = %do.body6.i.i, %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #7
  %17 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs1.i.i, align 8
  %add.ptr.i.i31 = getelementptr i8, ptr %18, i32 596
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %cmp.i.i, label %do.body.i.i34, label %do.body6.i.i37

do.body.i.i34:                                    ; preds = %mvs_write_port_vsr_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i.i33 = getelementptr i8, ptr %add.ptr.i.i31, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i33, i32 -1040252797) #7, !srcloc !74
  br label %if.end7

do.body6.i.i37:                                   ; preds = %mvs_write_port_vsr_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  %mul9.i.i35 = add i32 %mul.i.i, -32
  %add.ptr10.i.i36 = getelementptr i8, ptr %add.ptr.i.i31, i32 %mul9.i.i35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i36, i32 -1040252797) #7, !srcloc !74
  br label %if.end7

if.then6:                                         ; preds = %entry
  %regs1.i.i38 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %19 = ptrtoint ptr %regs1.i.i38 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs1.i.i38, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %phy_id)
  %cmp.i.i39 = icmp ult i32 %phy_id, 4
  %add.ptr.i.i40 = getelementptr i8, ptr %20, i32 592
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %mul.i.i41 = shl i32 %phy_id, 3
  br i1 %cmp.i.i39, label %do.body.i.i43, label %do.body6.i.i46

do.body.i.i43:                                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i.i42 = getelementptr i8, ptr %add.ptr.i.i40, i32 %mul.i.i41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i42, i32 1140916224) #7, !srcloc !74
  br label %mvs_write_port_vsr_addr.exit47

do.body6.i.i46:                                   ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %mul9.i.i44 = add i32 %mul.i.i41, -32
  %add.ptr10.i.i45 = getelementptr i8, ptr %add.ptr.i.i40, i32 %mul9.i.i44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i45, i32 1140916224) #7, !srcloc !74
  br label %mvs_write_port_vsr_addr.exit47

mvs_write_port_vsr_addr.exit47:                   ; preds = %do.body6.i.i46, %do.body.i.i43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #7
  %31 = ptrtoint ptr %regs1.i.i38 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs1.i.i38, align 8
  %add.ptr.i.i50 = getelementptr i8, ptr %32, i32 596
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %cmp.i.i39, label %do.body.i.i53, label %do.body6.i.i56

do.body.i.i53:                                    ; preds = %mvs_write_port_vsr_addr.exit47
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i.i52 = getelementptr i8, ptr %add.ptr.i.i50, i32 %mul.i.i41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i52, i32 101711880) #7, !srcloc !74
  br label %mvs_write_port_vsr_data.exit57

do.body6.i.i56:                                   ; preds = %mvs_write_port_vsr_addr.exit47
  call void @__sanitizer_cov_trace_pc() #9
  %mul9.i.i54 = add i32 %mul.i.i41, -32
  %add.ptr10.i.i55 = getelementptr i8, ptr %add.ptr.i.i50, i32 %mul9.i.i54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i55, i32 101711880) #7, !srcloc !74
  br label %mvs_write_port_vsr_data.exit57

mvs_write_port_vsr_data.exit57:                   ; preds = %do.body6.i.i56, %do.body.i.i53
  %33 = ptrtoint ptr %regs1.i.i38 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs1.i.i38, align 8
  %add.ptr.i.i60 = getelementptr i8, ptr %34, i32 592
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %cmp.i.i39, label %do.body.i.i63, label %do.body6.i.i66

do.body.i.i63:                                    ; preds = %mvs_write_port_vsr_data.exit57
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i.i62 = getelementptr i8, ptr %add.ptr.i.i60, i32 %mul.i.i41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i62, i32 -1275002880) #7, !srcloc !74
  br label %mvs_write_port_vsr_addr.exit67

do.body6.i.i66:                                   ; preds = %mvs_write_port_vsr_data.exit57
  call void @__sanitizer_cov_trace_pc() #9
  %mul9.i.i64 = add i32 %mul.i.i41, -32
  %add.ptr10.i.i65 = getelementptr i8, ptr %add.ptr.i.i60, i32 %mul9.i.i64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i65, i32 -1275002880) #7, !srcloc !74
  br label %mvs_write_port_vsr_addr.exit67

mvs_write_port_vsr_addr.exit67:                   ; preds = %do.body6.i.i66, %do.body.i.i63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #7
  %45 = ptrtoint ptr %regs1.i.i38 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs1.i.i38, align 8
  %add.ptr.i.i70 = getelementptr i8, ptr %46, i32 596
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %cmp.i.i39, label %do.body.i.i73, label %do.body6.i.i76

do.body.i.i73:                                    ; preds = %mvs_write_port_vsr_addr.exit67
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i.i72 = getelementptr i8, ptr %add.ptr.i.i70, i32 %mul.i.i41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i72, i32 1601175552) #7, !srcloc !74
  br label %if.end7

do.body6.i.i76:                                   ; preds = %mvs_write_port_vsr_addr.exit67
  call void @__sanitizer_cov_trace_pc() #9
  %mul9.i.i74 = add i32 %mul.i.i41, -32
  %add.ptr10.i.i75 = getelementptr i8, ptr %add.ptr.i.i70, i32 %mul9.i.i74
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i75, i32 1601175552) #7, !srcloc !74
  br label %if.end7

if.end7:                                          ; preds = %do.body6.i.i76, %do.body.i.i73, %do.body6.i.i37, %do.body.i.i34, %entry.if.end7_crit_edge
  %mul.i.i81.pre-phi = phi i32 [ %.pre, %entry.if.end7_crit_edge ], [ %mul.i.i41, %do.body6.i.i76 ], [ %mul.i.i41, %do.body.i.i73 ], [ %mul.i.i, %do.body6.i.i37 ], [ %mul.i.i, %do.body.i.i34 ]
  %regs1.i.i78 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %47 = ptrtoint ptr %regs1.i.i78 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs1.i.i78, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %phy_id)
  %cmp.i.i79 = icmp ult i32 %phy_id, 4
  %add.ptr.i.i80 = getelementptr i8, ptr %48, i32 592
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %cmp.i.i79, label %do.body.i.i83, label %do.body6.i.i86

do.body.i.i83:                                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i.i82 = getelementptr i8, ptr %add.ptr.i.i80, i32 %mul.i.i81.pre-phi
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i82, i32 134217728) #7, !srcloc !74
  br label %mvs_write_port_vsr_addr.exit87

do.body6.i.i86:                                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %mul9.i.i84 = add i32 %mul.i.i81.pre-phi, -32
  %add.ptr10.i.i85 = getelementptr i8, ptr %add.ptr.i.i80, i32 %mul9.i.i84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i85, i32 134217728) #7, !srcloc !74
  br label %mvs_write_port_vsr_addr.exit87

mvs_write_port_vsr_addr.exit87:                   ; preds = %do.body6.i.i86, %do.body.i.i83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748000) #7
  %59 = ptrtoint ptr %regs1.i.i78 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs1.i.i78, align 8
  %add.ptr.i.i90 = getelementptr i8, ptr %60, i32 596
  br i1 %cmp.i.i79, label %cond.true.i.i, label %cond.false.i.i

cond.true.i.i:                                    ; preds = %mvs_write_port_vsr_addr.exit87
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i.i92 = getelementptr i8, ptr %add.ptr.i.i90, i32 %mul.i.i81.pre-phi
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i92) #7, !srcloc !71
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  br label %mvs_read_port_vsr_data.exit

cond.false.i.i:                                   ; preds = %mvs_write_port_vsr_addr.exit87
  call void @__sanitizer_cov_trace_pc() #9
  %mul9.i.i93 = add i32 %mul.i.i81.pre-phi, -32
  %add.ptr10.i.i94 = getelementptr i8, ptr %add.ptr.i.i90, i32 %mul9.i.i93
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i94) #7, !srcloc !71
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  br label %mvs_read_port_vsr_data.exit

mvs_read_port_vsr_data.exit:                      ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i32 [ %62, %cond.true.i.i ], [ %64, %cond.false.i.i ]
  %65 = and i32 %cond.i.i, -41943042
  %and = or i32 %65, 1
  %66 = ptrtoint ptr %regs1.i.i78 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs1.i.i78, align 8
  %add.ptr.i.i97 = getelementptr i8, ptr %67, i32 596
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %68 = tail call i32 @llvm.bswap.i32(i32 %and) #7
  br i1 %cmp.i.i79, label %do.body.i.i100, label %do.body6.i.i103

do.body.i.i100:                                   ; preds = %mvs_read_port_vsr_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i.i99 = getelementptr i8, ptr %add.ptr.i.i97, i32 %mul.i.i81.pre-phi
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i99, i32 %68) #7, !srcloc !74
  br label %mvs_write_port_vsr_data.exit104

do.body6.i.i103:                                  ; preds = %mvs_read_port_vsr_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  %mul9.i.i101 = add i32 %mul.i.i81.pre-phi, -32
  %add.ptr10.i.i102 = getelementptr i8, ptr %add.ptr.i.i97, i32 %mul9.i.i101
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i102, i32 %68) #7, !srcloc !74
  br label %mvs_write_port_vsr_data.exit104

mvs_write_port_vsr_data.exit104:                  ; preds = %do.body6.i.i103, %do.body.i.i100
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_94xx_phy_reset(ptr nocapture noundef readonly %mvi, i32 noundef %phy_id, i32 noundef %hard) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %hard)
  %cmp = icmp eq i32 %hard, 2
  %regs1.i.i = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %phy_id)
  %cmp.i.i = icmp ult i32 %phy_id, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br i1 %cmp.i.i, label %do.body.i.i, label %do.body6.i.i

do.body.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %mul.i.i = shl nuw nsw i32 %phy_id, 3
  %add.ptr5.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 402653184) #7, !srcloc !74
  br label %mvs_write_port_cfg_addr.exit

do.body6.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr4.i.i = getelementptr i8, ptr %1, i32 544
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %sub.i.i = shl i32 %phy_id, 3
  %mul9.i.i = add i32 %sub.i.i, -32
  %add.ptr10.i.i = getelementptr i8, ptr %add.ptr4.i.i, i32 %mul9.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i, i32 402653184) #7, !srcloc !74
  br label %mvs_write_port_cfg_addr.exit

mvs_write_port_cfg_addr.exit:                     ; preds = %do.body6.i.i, %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #7
  %12 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs1.i.i, align 8
  br i1 %cmp.i.i, label %do.body.i.i78, label %do.body6.i.i83

do.body.i.i78:                                    ; preds = %mvs_write_port_cfg_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i55 = getelementptr i8, ptr %13, i32 516
  %mul.i.i56 = shl nuw nsw i32 %phy_id, 3
  %add.ptr5.i.i57 = getelementptr i8, ptr %add.ptr.i.i55, i32 %mul.i.i56
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i57) #7, !srcloc !71
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  %or156 = or i32 %15, 536870912
  %16 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs1.i.i, align 8
  %add.ptr.i.i64 = getelementptr i8, ptr %17, i32 516
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %18 = tail call i32 @llvm.bswap.i32(i32 %or156) #7
  %add.ptr5.i.i66 = getelementptr i8, ptr %add.ptr.i.i64, i32 %mul.i.i56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i66, i32 %18) #7, !srcloc !74
  %or1161 = or i32 %15, 1048576
  %19 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs1.i.i, align 8
  %add.ptr.i.i75 = getelementptr i8, ptr %20, i32 516
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %21 = tail call i32 @llvm.bswap.i32(i32 %or1161) #7
  %add.ptr5.i.i77 = getelementptr i8, ptr %add.ptr.i.i75, i32 %mul.i.i56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i77, i32 %21) #7, !srcloc !74
  br label %cleanup

do.body6.i.i83:                                   ; preds = %mvs_write_port_cfg_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr4.i.i58 = getelementptr i8, ptr %13, i32 548
  %sub.i.i59 = shl i32 %phy_id, 3
  %mul9.i.i60 = add i32 %sub.i.i59, -32
  %add.ptr10.i.i61 = getelementptr i8, ptr %add.ptr4.i.i58, i32 %mul9.i.i60
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i61) #7, !srcloc !71
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  %or = or i32 %23, 536870912
  %24 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs1.i.i, align 8
  %add.ptr4.i.i68 = getelementptr i8, ptr %25, i32 548
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %26 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %add.ptr10.i.i71 = getelementptr i8, ptr %add.ptr4.i.i68, i32 %mul9.i.i60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i71, i32 %26) #7, !srcloc !74
  %or1 = or i32 %23, 1048576
  %27 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs1.i.i, align 8
  %add.ptr4.i.i79 = getelementptr i8, ptr %28, i32 548
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %29 = tail call i32 @llvm.bswap.i32(i32 %or1) #7
  %add.ptr10.i.i82 = getelementptr i8, ptr %add.ptr4.i.i79, i32 %mul9.i.i60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i82, i32 %29) #7, !srcloc !74
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %cmp.i.i, label %mvs_write_port_irq_stat.exit, label %mvs_write_port_irq_stat.exit.thread

mvs_write_port_irq_stat.exit:                     ; preds = %if.end
  %add.ptr.i.i87 = getelementptr i8, ptr %1, i32 384
  %mul.i.i88 = shl nuw nsw i32 %phy_id, 3
  %add.ptr5.i.i89 = getelementptr i8, ptr %add.ptr.i.i87, i32 %mul.i.i88
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i89) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  %31 = and i32 %30, -16777217
  %32 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs1.i.i, align 8
  %add.ptr.i.i99 = getelementptr i8, ptr %33, i32 384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %add.ptr5.i.i101 = getelementptr i8, ptr %add.ptr.i.i99, i32 %mul.i.i88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i101, i32 %31) #7, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hard)
  %tobool.not = icmp eq i32 %hard, 0
  %34 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs1.i.i, align 8
  %add.ptr.i132 = getelementptr i8, ptr %35, i32 464
  %mul.i133 = shl nuw nsw i32 %phy_id, 2
  %add.ptr2.i134 = getelementptr i8, ptr %add.ptr.i132, i32 %mul.i133
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i134) #7
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %tobool.not, label %mvs_write_port_irq_stat.exit.mvs_read_phy_ctl.exit142_crit_edge, label %mvs_write_port_irq_stat.exit.mvs_read_phy_ctl.exit_crit_edge

mvs_write_port_irq_stat.exit.mvs_read_phy_ctl.exit_crit_edge: ; preds = %mvs_write_port_irq_stat.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvs_read_phy_ctl.exit

mvs_write_port_irq_stat.exit.mvs_read_phy_ctl.exit142_crit_edge: ; preds = %mvs_write_port_irq_stat.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvs_read_phy_ctl.exit142

mvs_write_port_irq_stat.exit.thread:              ; preds = %if.end
  %add.ptr4.i.i91 = getelementptr i8, ptr %1, i32 416
  %sub.i.i92 = shl i32 %phy_id, 3
  %mul9.i.i93 = add i32 %sub.i.i92, -32
  %add.ptr10.i.i94 = getelementptr i8, ptr %add.ptr4.i.i91, i32 %mul9.i.i93
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i94) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  %39 = and i32 %38, -16777217
  %40 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs1.i.i, align 8
  %add.ptr4.i.i103 = getelementptr i8, ptr %41, i32 416
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %add.ptr10.i.i106 = getelementptr i8, ptr %add.ptr4.i.i103, i32 %mul9.i.i93
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i106, i32 %39) #7, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hard)
  %tobool.not166 = icmp eq i32 %hard, 0
  %42 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs1.i.i, align 8
  %add.ptr6.i136 = getelementptr i8, ptr %43, i32 480
  %sub.i137 = shl i32 %phy_id, 2
  %mul7.i138 = add i32 %sub.i137, -16
  %add.ptr8.i139 = getelementptr i8, ptr %add.ptr6.i136, i32 %mul7.i138
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i139) #7
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %tobool.not166, label %mvs_write_port_irq_stat.exit.thread.mvs_read_phy_ctl.exit142_crit_edge, label %mvs_write_port_irq_stat.exit.thread.mvs_read_phy_ctl.exit_crit_edge

mvs_write_port_irq_stat.exit.thread.mvs_read_phy_ctl.exit_crit_edge: ; preds = %mvs_write_port_irq_stat.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvs_read_phy_ctl.exit

mvs_write_port_irq_stat.exit.thread.mvs_read_phy_ctl.exit142_crit_edge: ; preds = %mvs_write_port_irq_stat.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %mvs_read_phy_ctl.exit142

mvs_read_phy_ctl.exit:                            ; preds = %mvs_write_port_irq_stat.exit.thread.mvs_read_phy_ctl.exit_crit_edge, %mvs_write_port_irq_stat.exit.mvs_read_phy_ctl.exit_crit_edge
  %cond.i = phi i32 [ %37, %mvs_write_port_irq_stat.exit.mvs_read_phy_ctl.exit_crit_edge ], [ %45, %mvs_write_port_irq_stat.exit.thread.mvs_read_phy_ctl.exit_crit_edge ]
  %or5 = or i32 %cond.i, 2
  %46 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs1.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %48 = tail call i32 @llvm.bswap.i32(i32 %or5) #7
  br i1 %cmp.i.i, label %do.body.i, label %do.body3.i

do.body.i:                                        ; preds = %mvs_read_phy_ctl.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i110 = getelementptr i8, ptr %47, i32 464
  %mul.i111 = shl nuw nsw i32 %phy_id, 2
  %add.ptr2.i112 = getelementptr i8, ptr %add.ptr.i110, i32 %mul.i111
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i112, i32 %48) #7, !srcloc !74
  %.pre = add nuw nsw i32 %mul.i111, -16
  br label %mvs_write_phy_ctl.exit

do.body3.i:                                       ; preds = %mvs_read_phy_ctl.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr6.i113 = getelementptr i8, ptr %47, i32 480
  %sub.i114 = shl i32 %phy_id, 2
  %mul7.i115 = add i32 %sub.i114, -16
  %add.ptr8.i116 = getelementptr i8, ptr %add.ptr6.i113, i32 %mul7.i115
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i116, i32 %48) #7, !srcloc !74
  br label %mvs_write_phy_ctl.exit

mvs_write_phy_ctl.exit:                           ; preds = %do.body3.i, %do.body.i
  %mul7.i125.pre-phi = phi i32 [ %.pre, %do.body.i ], [ %mul7.i115, %do.body3.i ]
  %sub.i124.pre-phi = phi i32 [ %mul.i111, %do.body.i ], [ %sub.i114, %do.body3.i ]
  br label %do.body

do.body:                                          ; preds = %mvs_read_phy_ctl.exit129.do.body_crit_edge, %mvs_write_phy_ctl.exit
  %delay.0 = phi i32 [ 5000, %mvs_write_phy_ctl.exit ], [ %dec, %mvs_read_phy_ctl.exit129.do.body_crit_edge ]
  %49 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs1.i.i, align 8
  br i1 %cmp.i.i, label %cond.true.i122, label %cond.false.i127

cond.true.i122:                                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i119 = getelementptr i8, ptr %50, i32 464
  %add.ptr2.i121 = getelementptr i8, ptr %add.ptr.i119, i32 %sub.i124.pre-phi
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i121) #7, !srcloc !71
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  br label %mvs_read_phy_ctl.exit129

cond.false.i127:                                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr6.i123 = getelementptr i8, ptr %50, i32 480
  %add.ptr8.i126 = getelementptr i8, ptr %add.ptr6.i123, i32 %mul7.i125.pre-phi
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i126) #7, !srcloc !71
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  br label %mvs_read_phy_ctl.exit129

mvs_read_phy_ctl.exit129:                         ; preds = %cond.false.i127, %cond.true.i122
  %cond.i128 = phi i32 [ %52, %cond.true.i122 ], [ %54, %cond.false.i127 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 2147480) #7
  %dec = add nsw i32 %delay.0, -1
  %and7 = and i32 %cond.i128, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool9.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool8.not, i1 true, i1 %tobool9.not
  br i1 %or.cond, label %do.end, label %mvs_read_phy_ctl.exit129.do.body_crit_edge

mvs_read_phy_ctl.exit129.do.body_crit_edge:       ; preds = %mvs_read_phy_ctl.exit129
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end:                                           ; preds = %mvs_read_phy_ctl.exit129
  br i1 %tobool9.not, label %do.end14, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end14:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.11, i32 noundef 278) #10
  br label %cleanup

mvs_read_phy_ctl.exit142:                         ; preds = %mvs_write_port_irq_stat.exit.thread.mvs_read_phy_ctl.exit142_crit_edge, %mvs_write_port_irq_stat.exit.mvs_read_phy_ctl.exit142_crit_edge
  %cond.i141 = phi i32 [ %37, %mvs_write_port_irq_stat.exit.mvs_read_phy_ctl.exit142_crit_edge ], [ %45, %mvs_write_port_irq_stat.exit.thread.mvs_read_phy_ctl.exit142_crit_edge ]
  %or19 = or i32 %cond.i141, 1
  %56 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs1.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %58 = tail call i32 @llvm.bswap.i32(i32 %or19) #7
  br i1 %cmp.i.i, label %do.body.i148, label %do.body3.i153

do.body.i148:                                     ; preds = %mvs_read_phy_ctl.exit142
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i145 = getelementptr i8, ptr %57, i32 464
  %mul.i146 = shl nuw nsw i32 %phy_id, 2
  %add.ptr2.i147 = getelementptr i8, ptr %add.ptr.i145, i32 %mul.i146
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i147, i32 %58) #7, !srcloc !74
  br label %cleanup

do.body3.i153:                                    ; preds = %mvs_read_phy_ctl.exit142
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr6.i149 = getelementptr i8, ptr %57, i32 480
  %sub.i150 = shl i32 %phy_id, 2
  %mul7.i151 = add i32 %sub.i150, -16
  %add.ptr8.i152 = getelementptr i8, ptr %add.ptr6.i149, i32 %mul7.i151
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i152, i32 %58) #7, !srcloc !74
  br label %cleanup

cleanup:                                          ; preds = %do.body3.i153, %do.body.i148, %do.end14, %do.end.cleanup_crit_edge, %do.body6.i.i83, %do.body.i.i78
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_94xx_clear_active_cmds(ptr nocapture noundef readonly %mvi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 280
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !183
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !184
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !74
  %add.ptr11 = getelementptr i8, ptr %1, i32 284
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 0) #7, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !187
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %3) #7, !srcloc !74
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvs_94xx_spi_read_data(ptr nocapture noundef readonly %mvi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_ex = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 5
  %0 = ptrtoint ptr %regs_ex to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_ex, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 -14836
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !71
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !188
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_94xx_spi_write_data(ptr nocapture noundef readonly %mvi, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_ex = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 5
  %0 = ptrtoint ptr %regs_ex to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_ex, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %data)
  %add.ptr1 = getelementptr i8, ptr %1, i32 -14836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %2) #7, !srcloc !74
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvs_94xx_spi_buildcmd(ptr nocapture noundef readonly %mvi, ptr nocapture noundef writeonly %dwCmd, i8 noundef zeroext %cmd, i8 noundef zeroext %read, i8 noundef zeroext %length, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %cmd to i32
  %shl = shl nuw nsw i32 %conv, 8
  %conv1 = zext i8 %length to i32
  %shl2 = shl nuw nsw i32 %conv1, 4
  %or = or i32 %shl2, %shl
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read)
  %tobool.not = icmp eq i8 %read, 0
  %or3 = or i32 %or, 4
  %spec.select = select i1 %tobool.not, i32 %or, i32 %or3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %addr)
  %cmp.not = icmp eq i32 %addr, -1
  br i1 %cmp.not, label %entry.if.end8_crit_edge, label %do.body

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %regs_ex = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 5
  %0 = ptrtoint ptr %regs_ex to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_ex, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  tail call void @arm_heavy_mb() #7
  %and = and i32 %addr, 262143
  %2 = tail call i32 @llvm.bswap.i32(i32 %and)
  %add.ptr6 = getelementptr i8, ptr %1, i32 -14844
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %2) #7, !srcloc !74
  %or7 = or i32 %spec.select, 2
  br label %if.end8

if.end8:                                          ; preds = %do.body, %entry.if.end8_crit_edge
  %dwTmp.1 = phi i32 [ %or7, %do.body ], [ %spec.select, %entry.if.end8_crit_edge ]
  %3 = ptrtoint ptr %dwCmd to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %dwTmp.1, ptr %dwCmd, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvs_94xx_spi_issuecmd(ptr nocapture noundef readonly %mvi, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_ex = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 5
  %0 = ptrtoint ptr %regs_ex to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_ex, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !191
  tail call void @arm_heavy_mb() #7
  %or = or i32 %cmd, 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  %add.ptr1 = getelementptr i8, ptr %1, i32 -14848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %2) #7, !srcloc !74
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvs_94xx_spi_waitdataready(ptr nocapture noundef readonly %mvi, i32 noundef %timeout) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_ex = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 5
  %0 = ptrtoint ptr %regs_ex to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_ex, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 -14848
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %cmp6.not = icmp eq i32 %timeout, 0
  br i1 %cmp6.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.07 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.body
  tail call void @msleep(i32 noundef 10) #7
  %inc = add nuw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, %timeout
  br i1 %exitcond.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_94xx_fix_dma(ptr nocapture noundef readonly %mvi, i32 noundef %phy_mask, i32 noundef %buf_len, i32 noundef %from, ptr noundef %prd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %revision = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %revision, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %3, label %entry.cleanup_crit_edge [
    i8 -96, label %entry.if.then_crit_edge
    i8 1, label %entry.if.then_crit_edge60
  ]

entry.if.then_crit_edge60:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge60
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %from)
  %cmp944 = icmp slt i32 %from, 255
  br i1 %cmp944, label %for.body.lr.ph, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %phy_mask)
  %cmp7 = icmp ult i32 %phy_mask, 9
  %bulk_buffer_dma = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 38
  %bulk_buffer_dma1 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 40
  %cond.in = select i1 %cmp7, ptr %bulk_buffer_dma, ptr %bulk_buffer_dma1
  %5 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %cond = load i32, ptr %cond.in, align 4
  %add.ptr = getelementptr %struct.mvs_prd, ptr %prd, i32 %from
  %conv20 = zext i32 %cond to i64
  %6 = tail call i64 @llvm.bswap.i64(i64 %conv20)
  %bf.value = and i32 %buf_len, 4194303
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %from)
  %cmp1154 = icmp eq i32 %from, 254
  br i1 %cmp1154, label %for.body.lr.ph.cleanup.loopexit_crit_edge, label %for.body.lr.ph.if.end25_crit_edge

for.body.lr.ph.if.end25_crit_edge:                ; preds = %for.body.lr.ph
  br label %if.end25

for.body.lr.ph.cleanup.loopexit_crit_edge:        ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.loopexit

if.end25:                                         ; preds = %if.end25.if.end25_crit_edge, %for.body.lr.ph.if.end25_crit_edge
  %i.04557 = phi i32 [ %inc, %if.end25.if.end25_crit_edge ], [ %from, %for.body.lr.ph.if.end25_crit_edge ]
  %buf_prd.04656 = phi ptr [ %incdec.ptr, %if.end25.if.end25_crit_edge ], [ %add.ptr, %for.body.lr.ph.if.end25_crit_edge ]
  %im_len.sroa.0.04855 = phi i32 [ %bf.set24, %if.end25.if.end25_crit_edge ], [ 0, %for.body.lr.ph.if.end25_crit_edge ]
  %7 = ptrtoint ptr %buf_prd.04656 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %6, ptr %buf_prd.04656, align 1
  %bf.clear23 = and i32 %im_len.sroa.0.04855, -4194304
  %bf.set24 = or i32 %bf.clear23, %bf.value
  %8 = tail call i32 @llvm.bswap.i32(i32 %bf.set24)
  %im_len26 = getelementptr inbounds %struct.mvs_prd, ptr %buf_prd.04656, i32 0, i32 1
  %9 = ptrtoint ptr %im_len26 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %im_len26, align 1
  %inc = add i32 %i.04557, 1
  %incdec.ptr = getelementptr %struct.mvs_prd, ptr %buf_prd.04656, i32 1
  %cmp11 = icmp eq i32 %inc, 254
  br i1 %cmp11, label %for.body.cleanup.loopexit_crit_edge, label %if.end25.if.end25_crit_edge

if.end25.if.end25_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

for.body.cleanup.loopexit_crit_edge:              ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %phi.bo = and i32 %im_len.sroa.0.04855, -255852544
  %phi.bo59 = or i32 %phi.bo, 16777218
  br label %cleanup.loopexit

cleanup.loopexit:                                 ; preds = %for.body.cleanup.loopexit_crit_edge, %for.body.lr.ph.cleanup.loopexit_crit_edge
  %im_len.sroa.0.048.lcssa = phi i32 [ %phi.bo59, %for.body.cleanup.loopexit_crit_edge ], [ 16777218, %for.body.lr.ph.cleanup.loopexit_crit_edge ]
  %buf_prd.046.lcssa = phi ptr [ %incdec.ptr, %for.body.cleanup.loopexit_crit_edge ], [ %add.ptr, %for.body.lr.ph.cleanup.loopexit_crit_edge ]
  %add.ptr14 = getelementptr %struct.mvs_prd, ptr %buf_prd.046.lcssa, i32 -1
  %10 = ptrtoint ptr %add.ptr14 to i32
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %10) #7
  %conv15 = zext i32 %call.i to i64
  %11 = tail call i64 @llvm.bswap.i64(i64 %conv15)
  %12 = ptrtoint ptr %buf_prd.046.lcssa to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %11, ptr %buf_prd.046.lcssa, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %im_len.sroa.0.048.lcssa)
  %im_len2650 = getelementptr inbounds %struct.mvs_prd, ptr %buf_prd.046.lcssa, i32 0, i32 1
  %14 = ptrtoint ptr %im_len2650 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %im_len2650, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_94xx_tune_interrupt(ptr nocapture noundef readonly %mvi, i32 noundef %time) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %time)
  %cmp = icmp eq i32 %time, 0
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  %add.ptr = getelementptr i8, ptr %1, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !194
  tail call void @arm_heavy_mb() #7
  %add.ptr5 = getelementptr i8, ptr %1, i32 332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 256) #7, !srcloc !74
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %cmp6, label %do.body8, label %do.body13

do.body8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr11 = getelementptr i8, ptr %1, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 -16711424) #7, !srcloc !74
  br label %if.end

do.body13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %10) #7, !srcloc !74
  br label %if.end

if.end:                                           ; preds = %do.body13, %do.body8
  %or20 = or i32 %time, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !195
  tail call void @arm_heavy_mb() #7
  %11 = tail call i32 @llvm.bswap.i32(i32 %or20)
  %add.ptr24 = getelementptr i8, ptr %1, i32 332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %11) #7, !srcloc !74
  br label %if.end25

if.end25:                                         ; preds = %if.end, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvs_94xx_non_spec_ncq_error(ptr noundef %mvi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.mvs_info, ptr %mvi, i32 0, i32 4
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 360
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !71
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !196
  %add.ptr5 = getelementptr i8, ptr %1, i32 364
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #7, !srcloc !71
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.11, i32 noundef 723, i32 noundef %3, i32 noundef %5) #10
  %conv12 = zext i32 %3 to i64
  %conv18 = zext i32 %5 to i64
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.060 = phi i8 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %sh_prom = zext i8 %i.060 to i64
  %shl = shl nuw nsw i64 1, %sh_prom
  %and = and i64 %shl, %conv12
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %for.body.if.end17_crit_edge, label %if.then

for.body.if.end17_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then:                                          ; preds = %for.body
  %call14 = tail call ptr @mvs_find_dev_by_reg_set(ptr noundef %mvi, i8 noundef zeroext %i.060) #7
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.then.if.end17_crit_edge, label %if.then16

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then16:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %sas_device = getelementptr inbounds %struct.mvs_device, ptr %call14, i32 0, i32 3
  %6 = ptrtoint ptr %sas_device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sas_device, align 4
  tail call void @mvs_release_task(ptr noundef %mvi, ptr noundef %7) #7
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.then.if.end17_crit_edge, %for.body.if.end17_crit_edge
  %and22 = and i64 %shl, %conv18
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and22)
  %tobool23.not = icmp eq i64 %and22, 0
  br i1 %tobool23.not, label %if.end17.for.inc_crit_edge, label %if.then24

if.end17.for.inc_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then24:                                        ; preds = %if.end17
  %add = add nuw nsw i8 %i.060, 32
  %call27 = tail call ptr @mvs_find_dev_by_reg_set(ptr noundef %mvi, i8 noundef zeroext %add) #7
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.then24.for.inc_crit_edge, label %if.then29

if.then24.for.inc_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then29:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %sas_device30 = getelementptr inbounds %struct.mvs_device, ptr %call27, i32 0, i32 3
  %8 = ptrtoint ptr %sas_device30 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sas_device30, align 4
  tail call void @mvs_release_task(ptr noundef %mvi, ptr noundef %9) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then29, %if.then24.for.inc_crit_edge, %if.end17.for.inc_crit_edge
  %inc = add nuw nsw i8 %i.060, 1
  %cmp = icmp ult i8 %i.060, 31
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %do.body33

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.body33:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !198
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !199
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %4) #7, !srcloc !74
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvs_94xx_gpio_write(ptr nocapture noundef readonly %mvs_prv, i8 noundef zeroext %reg_type, i8 noundef zeroext %reg_index, i8 noundef zeroext %reg_count, ptr nocapture noundef readonly %write_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %reg_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.34)
  switch i8 %reg_type, label %entry.cleanup_crit_edge [
    i8 4, label %sw.bb
    i8 3, label %sw.bb47
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %reg_index)
  %cmp = icmp eq i8 %reg_index, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %reg_count)
  %cmp4 = icmp ugt i8 %reg_count, 1
  %or.cond = or i1 %cmp, %cmp4
  br i1 %or.cond, label %sw.bb.cleanup_crit_edge, label %if.end7

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %reg_count)
  %cmp9 = icmp eq i8 %reg_count, 0
  br i1 %cmp9, label %if.end7.cleanup_crit_edge, label %for.cond.preheader

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7
  %1 = ptrtoint ptr %mvs_prv to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %mvs_prv, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp15123.not = icmp eq i8 %2, 0
  br i1 %cmp15123.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %do.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0124 = phi i32 [ %inc, %do.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %div = udiv i32 %i.0124, 12
  %arrayidx = getelementptr %struct.mvs_prv_info, ptr %mvs_prv, i32 0, i32 4, i32 %div
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %regs_ex = getelementptr inbounds %struct.mvs_info, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %regs_ex to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs_ex, align 4
  %i.0124.frozen = freeze i32 %i.0124
  %div18 = udiv i32 %i.0124.frozen, 3
  %and = shl i32 %div18, 3
  %mul19 = and i32 %and, 24
  %add.ptr20 = getelementptr i8, ptr %6, i32 -16328
  %id = getelementptr inbounds %struct.mvs_info, ptr %4, i32 0, i32 25
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 8
  %mul21 = shl i32 %8, 8
  %add.ptr22 = getelementptr i8, ptr %add.ptr20, i32 %mul21
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !200
  %10 = ptrtoint ptr %write_data to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %write_data, align 1
  %shl = shl nuw i32 1, %i.0124
  %and24 = and i32 %11, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool.not = icmp eq i32 %and24, 0
  %shl25 = shl nuw nsw i32 1, %mul19
  %spec.select = select i1 %tobool.not, i32 0, i32 %shl25
  %12 = mul i32 %div18, 3
  %rem.decomposed = sub i32 %i.0124.frozen, %12
  %13 = zext i32 %rem.decomposed to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %rem.decomposed, label %for.body.do.body_crit_edge [
    i32 0, label %sw.bb26
    i32 1, label %sw.bb30
    i32 2, label %sw.bb36
  ]

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

sw.bb26:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %shl27 = shl nuw i32 224, %mul19
  %neg = xor i32 %shl27, -1
  %and28 = and i32 %9, %neg
  %add = or i32 %mul19, 5
  %shl29 = shl i32 4, %add
  %or = or i32 %and28, %shl29
  br label %do.body

sw.bb30:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %shl31 = shl nuw nsw i32 24, %mul19
  %neg32 = xor i32 %shl31, -1
  %and33 = and i32 %9, %neg32
  %shl34 = shl nuw nsw i32 %spec.select, 3
  %or35 = or i32 %shl34, %and33
  br label %do.body

sw.bb36:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %shl37 = shl nuw nsw i32 7, %mul19
  %neg38 = xor i32 %shl37, -1
  %and39 = and i32 %9, %neg38
  %or41 = or i32 %spec.select, %and39
  br label %do.body

do.body:                                          ; preds = %sw.bb36, %sw.bb30, %sw.bb26, %for.body.do.body_crit_edge
  %block.0 = phi i32 [ %9, %for.body.do.body_crit_edge ], [ %or41, %sw.bb36 ], [ %or35, %sw.bb30 ], [ %or, %sw.bb26 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 8
  %mul44 = shl i32 %15, 8
  %add.ptr45 = getelementptr i8, ptr %add.ptr20, i32 %mul44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %block.0) #7, !srcloc !74
  %inc = add nuw nsw i32 %i.0124, 1
  %16 = ptrtoint ptr %mvs_prv to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mvs_prv, align 4
  %conv13 = zext i8 %17 to i32
  %mul14 = mul nuw nsw i32 %conv13, 12
  %cmp15 = icmp ult i32 %inc, %mul14
  br i1 %cmp15, label %do.body.for.body_crit_edge, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body.for.body_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

sw.bb47:                                          ; preds = %entry
  %conv48 = zext i8 %reg_index to i32
  %conv49 = zext i8 %reg_count to i32
  %add50 = add nuw nsw i32 %conv49, %conv48
  %18 = ptrtoint ptr %mvs_prv to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mvs_prv, align 4
  %conv52 = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add50, i32 %conv52)
  %cmp53 = icmp ugt i32 %add50, %conv52
  br i1 %cmp53, label %sw.bb47.cleanup_crit_edge, label %for.cond57.preheader

sw.bb47.cleanup_crit_edge:                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond57.preheader:                             ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %reg_count)
  %cmp59119.not = icmp eq i8 %reg_count, 0
  br i1 %cmp59119.not, label %for.cond57.preheader.cleanup_crit_edge, label %for.cond57.preheader.for.body61_crit_edge

for.cond57.preheader.for.body61_crit_edge:        ; preds = %for.cond57.preheader
  br label %for.body61

for.cond57.preheader.cleanup_crit_edge:           ; preds = %for.cond57.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body61:                                       ; preds = %for.body61.for.body61_crit_edge, %for.cond57.preheader.for.body61_crit_edge
  %i.1120 = phi i32 [ %inc79, %for.body61.for.body61_crit_edge ], [ 0, %for.cond57.preheader.for.body61_crit_edge ]
  %add65 = add nuw nsw i32 %i.1120, %conv48
  %arrayidx66 = getelementptr %struct.mvs_prv_info, ptr %mvs_prv, i32 0, i32 4, i32 %add65
  %20 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx66, align 4
  %regs_ex68 = getelementptr inbounds %struct.mvs_info, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %regs_ex68 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs_ex68, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !202
  tail call void @arm_heavy_mb() #7
  %arrayidx73 = getelementptr i32, ptr %write_data, i32 %i.1120
  %24 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx73, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %add.ptr74 = getelementptr i8, ptr %23, i32 -16328
  %id75 = getelementptr inbounds %struct.mvs_info, ptr %21, i32 0, i32 25
  %27 = ptrtoint ptr %id75 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id75, align 8
  %mul76 = shl i32 %28, 8
  %add.ptr77 = getelementptr i8, ptr %add.ptr74, i32 %mul76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 %26) #7, !srcloc !74
  %inc79 = add nuw nsw i32 %i.1120, 1
  %exitcond.not = icmp eq i32 %inc79, %conv49
  br i1 %exitcond.not, label %for.body61.cleanup_crit_edge, label %for.body61.for.body61_crit_edge

for.body61.for.body61_crit_edge:                  ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body61

for.body61.cleanup_crit_edge:                     ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body61.cleanup_crit_edge, %for.cond57.preheader.cleanup_crit_edge, %sw.bb47.cleanup_crit_edge, %do.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ -22, %sw.bb47.cleanup_crit_edge ], [ -38, %entry.cleanup_crit_edge ], [ 1, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.cond57.preheader.cleanup_crit_edge ], [ 1, %do.body.cleanup_crit_edge ], [ %conv49, %for.body61.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mvs_set_sas_addr(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mvs_update_phyinfo(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvs_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mvs_iounmap(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvs_int_rx(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mvs_int_port(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mvs_find_dev_by_reg_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mvs_release_task(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/mvsas/mv_94xx.c", i32 1129, i32 2}
!2 = !{ptr @mvs_94xx_dispatch, !3, !"mvs_94xx_dispatch", i1 false, i1 false}
!3 = !{!"../drivers/scsi/mvsas/mv_94xx.c", i32 1128, i32 27}
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
!19 = !{!"../drivers/scsi/mvsas/mv_94xx.c", i32 656, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mvs_94xx_command_active._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @mvs_94xx_command_active._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/mvsas/mv_94xx.c", i32 675, i32 4}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @mvs_94xx_clear_srs_irq._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @mvs_94xx_clear_srs_irq._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/scsi/mvsas/mv_94xx.c", i32 680, i32 4}
!31 = !{ptr @mvs_94xx_clear_srs_irq._entry.14, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @mvs_94xx_clear_srs_irq._entry_ptr.16, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/mvsas/mv_94xx.c", i32 690, i32 4}
!35 = !{ptr @mvs_94xx_clear_srs_irq._entry.17, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @mvs_94xx_clear_srs_irq._entry_ptr.19, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/mvsas/mv_94xx.c", i32 869, i32 2}
!39 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @mvs_94xx_fix_phy_info._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @mvs_94xx_fix_phy_info._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/mvsas/mv_94xx.c", i32 874, i32 2}
!44 = !{ptr @mvs_94xx_fix_phy_info._entry.22, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @mvs_94xx_fix_phy_info._entry_ptr.24, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/mvsas/mv_94xx.c", i32 831, i32 3}
!48 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @mvs_94xx_get_att_identify_frame._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @mvs_94xx_get_att_identify_frame._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/mvsas/mv_94xx.c", i32 278, i32 4}
!53 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @mvs_94xx_phy_reset._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @mvs_94xx_phy_reset._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/mvsas/mv_94xx.c", i32 722, i32 2}
!58 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @mvs_94xx_non_spec_ncq_error._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @mvs_94xx_non_spec_ncq_error._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{!"auto-init"}
!71 = !{i64 6268398}
!72 = !{i64 2155914645}
!73 = !{i64 2155914906}
!74 = !{i64 6267980}
!75 = !{i64 2155915594}
!76 = !{i64 2155915966}
!77 = !{i64 2155916686}
!78 = !{i64 2155917206}
!79 = !{i64 2155917467}
!80 = !{i64 2155917916}
!81 = !{i64 2155918371}
!82 = !{i64 2155919373}
!83 = !{i64 2155919875}
!84 = !{i64 2155920380}
!85 = !{i64 2155920876}
!86 = !{i64 2155921382}
!87 = !{i64 2155921893}
!88 = !{i64 2155922401}
!89 = !{i64 2155922915}
!90 = !{i64 2155923377}
!91 = !{i64 2155923824}
!92 = !{i64 2155924281}
!93 = !{i64 2155884722}
!94 = !{i64 2155885439}
!95 = !{i64 2155885873}
!96 = !{i64 2155886328}
!97 = !{i64 2155924762}
!98 = !{i64 2155925530}
!99 = !{i64 2155925799}
!100 = !{i64 2155926280}
!101 = !{i64 2155926819}
!102 = !{i64 2155927372}
!103 = !{i64 2155927915}
!104 = !{i64 2155928524}
!105 = !{i64 2155929062}
!106 = !{i64 2155929573}
!107 = !{i64 2155930106}
!108 = !{i64 2155930599}
!109 = !{i64 2155931110}
!110 = !{i64 2155902295}
!111 = !{i64 2155902548}
!112 = !{i64 2155889776}
!113 = !{i64 2155890282}
!114 = !{i64 2155931715}
!115 = !{i64 2155932122}
!116 = !{i64 2155932523}
!117 = !{i64 2155932906}
!118 = !{i64 2155933289}
!119 = !{i64 2155933672}
!120 = !{i64 2155934055}
!121 = !{i64 2155934438}
!122 = !{i64 2155890663}
!123 = !{i64 2155891055}
!124 = !{i64 2155935111}
!125 = !{i64 2155935450}
!126 = !{i64 2155936137}
!127 = !{i64 2155936637}
!128 = !{i64 2155936890}
!129 = !{i64 2155938553}
!130 = !{i64 2155939003}
!131 = !{i64 2155939541}
!132 = !{i64 2155940127}
!133 = !{i64 2155940750}
!134 = !{i64 2155941386}
!135 = !{i64 2155941856}
!136 = !{i64 2155905479}
!137 = !{i64 2155905756}
!138 = !{i64 2155906391}
!139 = !{i64 2155907529}
!140 = !{i64 2155908912}
!141 = !{i64 2155910049}
!142 = !{i64 2155911866}
!143 = !{i64 2155913504}
!144 = !{i64 2155948861}
!145 = !{i64 2155949593}
!146 = !{i64 2155948487}
!147 = !{i64 2155942580}
!148 = !{i64 2155942851}
!149 = !{i64 2155943252}
!150 = !{i64 2155943629}
!151 = !{i64 2155944006}
!152 = !{i64 2155944383}
!153 = !{i64 2155944813}
!154 = !{i64 2155945521}
!155 = !{i64 2155945792}
!156 = !{i64 2155946193}
!157 = !{i64 2155946570}
!158 = !{i64 2155946947}
!159 = !{i64 2155947324}
!160 = !{i64 2155947754}
!161 = !{i64 2155887296}
!162 = !{i64 2155887936}
!163 = !{i64 2155951888}
!164 = !{i64 2155953771}
!165 = !{i64 2155954521}
!166 = !{i64 2155956404}
!167 = !{i64 2155957154}
!168 = !{i64 2155957709}
!169 = !{i64 2155961045}
!170 = !{i64 2155961338}
!171 = !{i64 2155962072}
!172 = !{i64 2155962325}
!173 = !{i64 2155898515}
!174 = !{i64 2155899413}
!175 = !{i64 2155897600}
!176 = !{i64 2155896414}
!177 = !{i64 2155896689}
!178 = !{i64 2155897887}
!179 = !{i32 0, i32 33}
!180 = !{i64 2155969528}
!181 = !{i64 2155971420}
!182 = !{i64 2155978166}
!183 = !{i64 2155978435}
!184 = !{i64 2155978896}
!185 = !{i64 2155979640}
!186 = !{i64 2155979909}
!187 = !{i64 2155980370}
!188 = !{i64 2155981066}
!189 = !{i64 2155981326}
!190 = !{i64 2155981825}
!191 = !{i64 2155982361}
!192 = !{i64 2155983082}
!193 = !{i64 2155983740}
!194 = !{i64 2155984206}
!195 = !{i64 2155985877}
!196 = !{i64 2155963059}
!197 = !{i64 2155963609}
!198 = !{i64 2155965721}
!199 = !{i64 2155966198}
!200 = !{i64 2155986464}
!201 = !{i64 2155986750}
!202 = !{i64 2155987192}

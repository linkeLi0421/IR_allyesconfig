; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/cxgb3/t3_hw.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.adapter_info = type { i8, i8, i8, i32, [2 x i8], i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.port_type_info = type { ptr }
%struct.mdio_ops = type { ptr, ptr, i32 }
%struct.intr_info = type { i32, ptr, i16, i16 }
%struct.mc7_timing_params = type { i8, i8, i8, [5 x i8], i8, i8, i8 }
%struct.adapter = type { %struct.t3cdev, %struct.list_head, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.adapter_params, i32, [3 x i32], i32, [9 x %struct.anon.120], [40 x i8], %struct.sge, %struct.mc7, %struct.mc7, %struct.mc7, %struct.mc5, [2 x ptr], i32, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, ptr, %struct.mutex, %struct.spinlock, %struct.spinlock, ptr, [56 x i8] }
%struct.t3cdev = type { [16 x i8], i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.adapter_params = type { %struct.sge_params, %struct.mc5_params, %struct.tp_params, %struct.vpd_params, %struct.pci_params, ptr, [16 x i16], [32 x i16], [32 x i16], i32, i32, i32, i32, i32, i32 }
%struct.sge_params = type { i32, [8 x %struct.qset_params] }
%struct.qset_params = type { i32, i32, i32, i32, i32, [3 x i32], i32, i32 }
%struct.mc5_params = type { i32, i32, i32, i32 }
%struct.tp_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vpd_params = type { i32, i32, i32, i32, i32, [17 x i8], [6 x i8], [2 x i8], [2 x i16] }
%struct.pci_params = type { i32, i16, i8, i8 }
%struct.anon.120 = type { i16, [22 x i8] }
%struct.sge = type { [8 x %struct.sge_qset], %struct.spinlock, [84 x i8] }
%struct.sge_qset = type { ptr, %struct.napi_struct, %struct.sge_rspq, [2 x %struct.sge_fl], [3 x %struct.sge_txq], i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.timer_list, [5 x i32], [40 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.sge_rspq = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.sk_buff_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.40, i32, %struct.spinlock }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr }
%struct.sge_fl = type { i32, i32, i32, i32, i32, i32, i32, %struct.fl_pg_chunk, i32, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.fl_pg_chunk = type { ptr, ptr, i32, ptr, i32 }
%struct.sge_txq = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.spinlock, i32, i32, %struct.sk_buff_head, %struct.work_struct, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mc7 = type { ptr, i32, i32, i32, ptr, %struct.mc7_stats }
%struct.mc7_stats = type { i32, i32, i32, i32 }
%struct.mc5 = type { ptr, i32, i8, i8, i8, %struct.mc5_stats }
%struct.mc5_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.23 }
%union.anon.23 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.22 }
%union.anon.22 = type { %struct.raw_spinlock }
%struct.addr_val_pair = type { i32, i32 }
%struct.cphy = type { i8, i16, i32, ptr, ptr, i32, ptr, %struct.mdio_if_info, [1628 x i16] }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.119, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.119 = type { ptr }
%struct.cphy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.link_config = type { i32, i32, i16, i16, i8, i8, i8, i8, i8, i32 }
%struct.trace_params = type { i32, i32, i32, i32, i16, i16, i16, i16, i32, i8, i8 }
%struct.t3_vpd = type { i8, [2 x i8], [16 x i8], i8, [2 x i8], [2 x i8], i8, [16 x i8], [2 x i8], i8, [16 x i8], [2 x i8], i8, [16 x i8], [2 x i8], i8, [12 x i8], [2 x i8], i8, [6 x i8], [2 x i8], i8, [6 x i8], [2 x i8], i8, [6 x i8], [2 x i8], i8, [6 x i8], [2 x i8], i8, [2 x i8], [2 x i8], i8, [6 x i8], [2 x i8], i8, [6 x i8], [2 x i8], i8, [2 x i8], [2 x i8], i8, [2 x i8], [2 x i8], i8, [2 x i8], [2 x i8], i8, [2 x i8], [2 x i8], i8, [1 x i8], i32 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@t3_mc7_bd_read.shift = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 0, i32 16, i32 24], [16 x i8] zeroinitializer }, align 32
@t3_mc7_bd_read.step = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 32, i32 16, i32 8], [16 x i8] zeroinitializer }, align 32
@t3_adap_info = internal constant { [8 x %struct.adapter_info], [32 x i8] } { [8 x %struct.adapter_info] [%struct.adapter_info { i8 1, i8 1, i8 0, i32 1310740, [2 x i8] c"\03\05", i32 0, ptr @mi1_mdio_ops, ptr @.str.26 }, %struct.adapter_info { i8 1, i8 1, i8 0, i32 1310740, [2 x i8] c"\03\05", i32 0, ptr @mi1_mdio_ops, ptr @.str.27 }, %struct.adapter_info { i8 1, i8 0, i8 0, i32 214041666, [2 x i8] zeroinitializer, i32 4352, ptr @mi1_mdio_ext_ops, ptr @.str.28 }, %struct.adapter_info { i8 1, i8 1, i8 0, i32 217449570, [2 x i8] c"\09\03", i32 4352, ptr @mi1_mdio_ext_ops, ptr @.str.29 }, %struct.adapter_info zeroinitializer, %struct.adapter_info zeroinitializer, %struct.adapter_info { i8 1, i8 0, i8 0, i32 81134658, [2 x i8] c"\09\00", i32 4352, ptr @mi1_mdio_ext_ops, ptr @.str.28 }, %struct.adapter_info { i8 1, i8 0, i8 0, i32 12714050, [2 x i8] c"\09\00", i32 4352, ptr @mi1_mdio_ext_ops, ptr @.str.30 }], [32 x i8] zeroinitializer }, align 32
@t3_check_tpsram_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 937, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"found wrong TP version (%u.%u), driver compiled for version %d.%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"t3_check_tpsram_version\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/chelsio/cxgb3/t3_hw.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@t3_check_tpsram_version._entry_ptr = internal global ptr @t3_check_tpsram_version._entry, section ".printk_index", align 4
@t3_check_tpsram._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 964, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"corrupted protocol SRAM image, checksum %u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"t3_check_tpsram\00", [16 x i8] zeroinitializer }, align 32
@t3_check_tpsram._entry_ptr = internal global ptr @t3_check_tpsram._entry, section ".printk_index", align 4
@t3_check_fw_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 1015, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"found old FW minor version(%u.%u), driver compiled for version %u.%u\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"t3_check_fw_version\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@t3_check_fw_version._entry_ptr = internal global ptr @t3_check_fw_version._entry, section ".printk_index", align 4
@t3_check_fw_version._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.2, i32 1019, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"found newer FW version(%u.%u), driver compiled for version %u.%u\0A\00", [62 x i8] zeroinitializer }, align 32
@t3_check_fw_version._entry_ptr.12 = internal global ptr @t3_check_fw_version._entry.10, section ".printk_index", align 4
@t3_load_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 1075, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"corrupted firmware image, checksum %u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"t3_load_fw\00", [21 x i8] zeroinitializer }, align 32
@t3_load_fw._entry_ptr = internal global ptr @t3_load_fw._entry, section ".printk_index", align 4
@t3_load_fw._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 1099, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"firmware download failed, error %d\0A\00", [60 x i8] zeroinitializer }, align 32
@t3_load_fw._entry_ptr.17 = internal global ptr @t3_load_fw._entry.15, section ".printk_index", align 4
@t3_intr_clear.cause_reg_addr = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 92, i32 76, i32 132, i32 380, i32 508, i32 636, i32 668, i32 1140, i32 1860, i32 1288, i32 1416, i32 1620, i32 1532, i32 1500, i32 1568, i32 220], [32 x i8] zeroinitializer }, align 32
@t3_load_mtus.avg_pkts = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 2, i32 6, i32 10, i32 14, i32 20, i32 28, i32 40, i32 56, i32 80, i32 112, i32 160, i32 224, i32 320, i32 448, i32 640, i32 896, i32 1281, i32 1792, i32 2560, i32 3584, i32 5120, i32 7168, i32 10240, i32 14336, i32 20480, i32 28672, i32 40960, i32 57344, i32 81920, i32 114688, i32 163840, i32 229376], [32 x i8] zeroinitializer }, align 32
@t3_init_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 3374, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"uP initialization timed out\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"t3_init_hw\00", [21 x i8] zeroinitializer }, align 32
@t3_init_hw._entry_ptr = internal global ptr @t3_init_hw._entry, section ".printk_index", align 4
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PMRX\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PMTX\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CM\00", [29 x i8] zeroinitializer }, align 32
@port_types = internal constant { [11 x %struct.port_type_info], [52 x i8] } { [11 x %struct.port_type_info] [%struct.port_type_info zeroinitializer, %struct.port_type_info { ptr @t3_ael1002_phy_prep }, %struct.port_type_info { ptr @t3_vsc8211_phy_prep }, %struct.port_type_info zeroinitializer, %struct.port_type_info { ptr @t3_xaui_direct_phy_prep }, %struct.port_type_info { ptr @t3_ael2005_phy_prep }, %struct.port_type_info { ptr @t3_qt2045_phy_prep }, %struct.port_type_info { ptr @t3_ael1006_phy_prep }, %struct.port_type_info zeroinitializer, %struct.port_type_info { ptr @t3_aq100x_phy_prep }, %struct.port_type_info { ptr @t3_ael2020_phy_prep }], [52 x i8] zeroinitializer }, align 32
@t3_prep_adapter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 3679, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid port type index %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"t3_prep_adapter\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\011\00", [29 x i8] zeroinitializer }, align 32
@t3_prep_adapter._entry_ptr = internal global ptr @t3_prep_adapter._entry, section ".printk_index", align 4
@mi1_mdio_ops = internal constant { %struct.mdio_ops, [20 x i8] } { %struct.mdio_ops { ptr @t3_mi1_read, ptr @t3_mi1_write, i32 1 }, [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Chelsio PE9000\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Chelsio T302\00", [19 x i8] zeroinitializer }, align 32
@mi1_mdio_ext_ops = internal constant { %struct.mdio_ops, [20 x i8] } { %struct.mdio_ops { ptr @mi1_ext_read, ptr @mi1_ext_write, i32 6 }, [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Chelsio T310\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Chelsio T320\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Chelsio N320E-G2\00", [47 x i8] zeroinitializer }, align 32
@pcie_intr_handler.pcie_intr_info = internal constant { [14 x %struct.intr_info], [56 x i8] } { [14 x %struct.intr_info] [%struct.intr_info { i32 1, ptr @.str.31, i16 -1, i16 1 }, %struct.intr_info { i32 64, ptr @.str.32, i16 -1, i16 1 }, %struct.intr_info { i32 128, ptr @.str.33, i16 -1, i16 1 }, %struct.intr_info { i32 256, ptr @.str.34, i16 -1, i16 1 }, %struct.intr_info { i32 512, ptr @.str.35, i16 -1, i16 1 }, %struct.intr_info { i32 1024, ptr @.str.36, i16 -1, i16 1 }, %struct.intr_info { i32 2048, ptr @.str.37, i16 -1, i16 1 }, %struct.intr_info { i32 28672, ptr @.str.38, i16 -1, i16 1 }, %struct.intr_info { i32 32768, ptr @.str.39, i16 -1, i16 1 }, %struct.intr_info { i32 65536, ptr @.str.40, i16 -1, i16 1 }, %struct.intr_info { i32 131072, ptr @.str.41, i16 -1, i16 1 }, %struct.intr_info { i32 262144, ptr @.str.42, i16 -1, i16 1 }, %struct.intr_info { i32 8355840, ptr @.str.43, i16 -1, i16 1 }, %struct.intr_info zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PCI PEX error\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"PCI unexpected split completion DMA read error\00", [49 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"PCI unexpected split completion DMA command error\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PCI PIO FIFO parity error\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PCI write FIFO parity error\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PCI read FIFO parity error\00", [37 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"PCI command FIFO parity error\00", [34 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"PCI MSI-X table/PBA parity error\00", [63 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"PCI retry buffer parity error\00", [34 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PCI retry LUT parity error\00", [37 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCI Rx parity error\00", [44 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCI Tx parity error\00", [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PCI BIST error\00", [17 x i8] zeroinitializer }, align 32
@pcie_intr_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 1515, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PEX error code 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pcie_intr_handler\00", [46 x i8] zeroinitializer }, align 32
@pcie_intr_handler._entry_ptr = internal global ptr @pcie_intr_handler._entry, section ".printk_index", align 4
@t3_handle_intr_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 1381, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s (0x%x)\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"t3_handle_intr_status\00", [42 x i8] zeroinitializer }, align 32
@t3_handle_intr_status._entry_ptr = internal global ptr @t3_handle_intr_status._entry, section ".printk_index", align 4
@t3_handle_intr_status._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 1385, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@t3_handle_intr_status._entry_ptr.49 = internal global ptr @t3_handle_intr_status._entry.48, section ".printk_index", align 4
@pci_intr_handler.pcix1_intr_info = internal constant { [17 x %struct.intr_info], [52 x i8] } { [17 x %struct.intr_info] [%struct.intr_info { i32 1, ptr @.str.50, i16 -1, i16 1 }, %struct.intr_info { i32 2, ptr @.str.51, i16 -1, i16 1 }, %struct.intr_info { i32 4, ptr @.str.52, i16 -1, i16 1 }, %struct.intr_info { i32 8, ptr @.str.53, i16 -1, i16 1 }, %struct.intr_info { i32 16, ptr @.str.54, i16 -1, i16 1 }, %struct.intr_info { i32 32, ptr @.str.55, i16 -1, i16 1 }, %struct.intr_info { i32 64, ptr @.str.56, i16 -1, i16 1 }, %struct.intr_info { i32 128, ptr @.str.57, i16 -1, i16 1 }, %struct.intr_info { i32 256, ptr @.str.58, i16 -1, i16 1 }, %struct.intr_info { i32 512, ptr @.str.59, i16 2, i16 0 }, %struct.intr_info { i32 1024, ptr @.str.60, i16 -1, i16 1 }, %struct.intr_info { i32 2048, ptr @.str.34, i16 -1, i16 1 }, %struct.intr_info { i32 12288, ptr @.str.35, i16 -1, i16 1 }, %struct.intr_info { i32 245760, ptr @.str.36, i16 -1, i16 1 }, %struct.intr_info { i32 3932160, ptr @.str.37, i16 -1, i16 1 }, %struct.intr_info { i32 29360128, ptr @.str.38, i16 -1, i16 1 }, %struct.intr_info zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"PCI master detected parity error\00", [63 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PCI signaled target abort\00", [38 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PCI received target abort\00", [38 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PCI received master abort\00", [38 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PCI signaled system error\00", [38 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PCI detected parity error\00", [38 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"PCI split completion discarded\00", [33 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"PCI unexpected split completion error\00", [58 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"PCI received split completion error\00", [60 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PCI correctable ECC error\00", [38 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PCI uncorrectable ECC error\00", [36 x i8] zeroinitializer }, align 32
@mc7_intr_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 1738, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s MC7 correctable error at addr 0x%x, data 0x%x 0x%x 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mc7_intr_handler\00", [47 x i8] zeroinitializer }, align 32
@mc7_intr_handler._entry_ptr = internal global ptr @mc7_intr_handler._entry, section ".printk_index", align 4
@mc7_intr_handler._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.2, i32 1748, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s MC7 uncorrectable error at addr 0x%x, data 0x%x 0x%x 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@mc7_intr_handler._entry_ptr.65 = internal global ptr @mc7_intr_handler._entry.63, section ".printk_index", align 4
@mc7_intr_handler._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.2, i32 1754, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s MC7 parity error 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@mc7_intr_handler._entry_ptr.68 = internal global ptr @mc7_intr_handler._entry.66, section ".printk_index", align 4
@mc7_intr_handler._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.62, ptr @.str.2, i32 1765, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s MC7 address error: 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@mc7_intr_handler._entry_ptr.71 = internal global ptr @mc7_intr_handler._entry.69, section ".printk_index", align 4
@cim_intr_handler.cim_intr_info = internal constant { [25 x %struct.intr_info], [84 x i8] } { [25 x %struct.intr_info] [%struct.intr_info { i32 1, ptr @.str.72, i16 -1, i16 1 }, %struct.intr_info { i32 2, ptr @.str.73, i16 -1, i16 1 }, %struct.intr_info { i32 4, ptr @.str.74, i16 -1, i16 1 }, %struct.intr_info { i32 16, ptr @.str.75, i16 -1, i16 1 }, %struct.intr_info { i32 32, ptr @.str.76, i16 -1, i16 1 }, %struct.intr_info { i32 64, ptr @.str.77, i16 -1, i16 1 }, %struct.intr_info { i32 128, ptr @.str.78, i16 -1, i16 1 }, %struct.intr_info { i32 256, ptr @.str.79, i16 -1, i16 1 }, %struct.intr_info { i32 512, ptr @.str.80, i16 -1, i16 1 }, %struct.intr_info { i32 1024, ptr @.str.81, i16 -1, i16 1 }, %struct.intr_info { i32 2048, ptr @.str.82, i16 -1, i16 1 }, %struct.intr_info { i32 4096, ptr @.str.83, i16 -1, i16 1 }, %struct.intr_info { i32 131072, ptr @.str.84, i16 -1, i16 1 }, %struct.intr_info { i32 262144, ptr @.str.85, i16 -1, i16 1 }, %struct.intr_info { i32 524288, ptr @.str.86, i16 -1, i16 1 }, %struct.intr_info { i32 1048576, ptr @.str.87, i16 -1, i16 1 }, %struct.intr_info { i32 2097152, ptr @.str.88, i16 -1, i16 1 }, %struct.intr_info { i32 4194304, ptr @.str.89, i16 -1, i16 1 }, %struct.intr_info { i32 8388608, ptr @.str.90, i16 -1, i16 1 }, %struct.intr_info { i32 16777216, ptr @.str.91, i16 -1, i16 1 }, %struct.intr_info { i32 33554432, ptr @.str.92, i16 -1, i16 1 }, %struct.intr_info { i32 67108864, ptr @.str.93, i16 -1, i16 1 }, %struct.intr_info { i32 134217728, ptr @.str.94, i16 -1, i16 1 }, %struct.intr_info { i32 268435456, ptr @.str.95, i16 -1, i16 1 }, %struct.intr_info zeroinitializer], [84 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CIM reserved space write\00", [39 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CIM SDRAM address out of range\00", [33 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CIM flash address out of range\00", [33 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CIM block write to boot space\00", [34 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CIM write to cached flash space\00", [32 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CIM single write to flash space\00", [32 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CIM block read from flash space\00", [32 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CIM block write to flash space\00", [33 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CIM block read from CTL space\00", [34 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CIM block write to CTL space\00", [35 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CIM block read from PL space\00", [35 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CIM block write to PL space\00", [36 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CIM DRAM parity error\00", [42 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CIM icache parity error\00", [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CIM dcache parity error\00", [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CIM OBQ SGE parity error\00", [39 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CIM OBQ ULPHI parity error\00", [37 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CIM OBQ ULPLO parity error\00", [37 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CIM IBQ SGELO parity error\00", [37 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CIM IBQ SGEHI parity error\00", [37 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CIM IBQ ULP parity error\00", [39 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CIM IBQ TP parity error\00", [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CIM itag parity error\00", [42 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CIM dtag parity error\00", [42 x i8] zeroinitializer }, align 32
@tp_intr_handler.tp_intr_info = internal constant { [4 x %struct.intr_info], [48 x i8] } { [4 x %struct.intr_info] [%struct.intr_info { i32 16777215, ptr @.str.96, i16 -1, i16 1 }, %struct.intr_info { i32 16777216, ptr @.str.97, i16 -1, i16 1 }, %struct.intr_info { i32 33554432, ptr @.str.98, i16 -1, i16 1 }, %struct.intr_info zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TP parity error\00", [16 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TP out of Rx pages\00", [45 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TP out of Tx pages\00", [45 x i8] zeroinitializer }, align 32
@tp_intr_handler.tp_intr_info_t3c = internal constant { [4 x %struct.intr_info], [48 x i8] } { [4 x %struct.intr_info] [%struct.intr_info { i32 536870911, ptr @.str.96, i16 -1, i16 1 }, %struct.intr_info { i32 536870912, ptr @.str.97, i16 -1, i16 1 }, %struct.intr_info { i32 1073741824, ptr @.str.98, i16 -1, i16 1 }, %struct.intr_info zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ulprx_intr_handler.ulprx_intr_info = internal constant { [9 x %struct.intr_info], [52 x i8] } { [9 x %struct.intr_info] [%struct.intr_info { i32 1, ptr @.str.99, i16 -1, i16 1 }, %struct.intr_info { i32 2, ptr @.str.100, i16 -1, i16 1 }, %struct.intr_info { i32 4, ptr @.str.101, i16 -1, i16 1 }, %struct.intr_info { i32 8, ptr @.str.102, i16 -1, i16 1 }, %struct.intr_info { i32 16, ptr @.str.103, i16 -1, i16 1 }, %struct.intr_info { i32 32, ptr @.str.104, i16 -1, i16 1 }, %struct.intr_info { i32 64, ptr @.str.105, i16 -1, i16 1 }, %struct.intr_info { i32 128, ptr @.str.105, i16 -1, i16 1 }, %struct.intr_info zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ULP RX data parity error\00", [39 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ULP RX command parity error\00", [36 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ULP RX ArbPF1 parity error\00", [37 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ULP RX ArbPF0 parity error\00", [37 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ULP RX ArbF parity error\00", [39 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ULP RX PCMDMUX parity error\00", [36 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ULP RX frame error\00", [45 x i8] zeroinitializer }, align 32
@ulptx_intr_handler.ulptx_intr_info = internal constant { [4 x %struct.intr_info], [48 x i8] } { [4 x %struct.intr_info] [%struct.intr_info { i32 1, ptr @.str.106, i16 0, i16 0 }, %struct.intr_info { i32 2, ptr @.str.107, i16 1, i16 0 }, %struct.intr_info { i32 252, ptr @.str.108, i16 -1, i16 1 }, %struct.intr_info zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ULP TX channel 0 PBL out of bounds\00", [61 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ULP TX channel 1 PBL out of bounds\00", [61 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ULP TX parity error\00", [44 x i8] zeroinitializer }, align 32
@pmrx_intr_handler.pmrx_intr_info = internal constant { [6 x %struct.intr_info], [56 x i8] } { [6 x %struct.intr_info] [%struct.intr_info { i32 262144, ptr @.str.109, i16 -1, i16 1 }, %struct.intr_info { i32 258048, ptr @.str.110, i16 -1, i16 1 }, %struct.intr_info { i32 4032, ptr @.str.111, i16 -1, i16 1 }, %struct.intr_info { i32 56, ptr @.str.112, i16 -1, i16 1 }, %struct.intr_info { i32 7, ptr @.str.113, i16 -1, i16 1 }, %struct.intr_info zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PMRX 0-length pcmd\00", [45 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PMRX ispi framing error\00", [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PMRX ospi framing error\00", [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"PMRX ispi parity error\00", [41 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"PMRX ospi parity error\00", [41 x i8] zeroinitializer }, align 32
@pmtx_intr_handler.pmtx_intr_info = internal constant { [6 x %struct.intr_info], [56 x i8] } { [6 x %struct.intr_info] [%struct.intr_info { i32 262144, ptr @.str.114, i16 -1, i16 1 }, %struct.intr_info { i32 258048, ptr @.str.115, i16 -1, i16 1 }, %struct.intr_info { i32 4032, ptr @.str.116, i16 -1, i16 1 }, %struct.intr_info { i32 56, ptr @.str.117, i16 -1, i16 1 }, %struct.intr_info { i32 7, ptr @.str.118, i16 -1, i16 1 }, %struct.intr_info zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PMTX 0-length pcmd\00", [45 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PMTX ispi framing error\00", [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PMTX ospi framing error\00", [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"PMTX ispi parity error\00", [41 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"PMTX ospi parity error\00", [41 x i8] zeroinitializer }, align 32
@cplsw_intr_handler.cplsw_intr_info = internal constant { [7 x %struct.intr_info], [44 x i8] } { [7 x %struct.intr_info] [%struct.intr_info { i32 32, ptr @.str.119, i16 -1, i16 1 }, %struct.intr_info { i32 16, ptr @.str.120, i16 -1, i16 1 }, %struct.intr_info { i32 8, ptr @.str.121, i16 -1, i16 1 }, %struct.intr_info { i32 4, ptr @.str.122, i16 -1, i16 1 }, %struct.intr_info { i32 2, ptr @.str.123, i16 -1, i16 1 }, %struct.intr_info { i32 1, ptr @.str.124, i16 -1, i16 1 }, %struct.intr_info zeroinitializer], [44 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CPL switch CIM parity error\00", [36 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CPL switch CIM overflow\00", [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CPL switch TP framing error\00", [36 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CPL switch SGE framing error\00", [35 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CPL switch CIM framing error\00", [35 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CPL switch no-switch error\00", [37 x i8] zeroinitializer }, align 32
@mps_intr_handler.mps_intr_info = internal constant { [2 x %struct.intr_info], [40 x i8] } { [2 x %struct.intr_info] [%struct.intr_info { i32 511, ptr @.str.125, i16 -1, i16 1 }, %struct.intr_info zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MPS parity error\00", [47 x i8] zeroinitializer }, align 32
@mac_intr_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.2, i32 1793, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"port%d: MAC TX FIFO parity error\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mac_intr_handler\00", [47 x i8] zeroinitializer }, align 32
@mac_intr_handler._entry_ptr = internal global ptr @mac_intr_handler._entry, section ".printk_index", align 4
@mac_intr_handler._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.127, ptr @.str.2, i32 1797, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"port%d: MAC RX FIFO parity error\0A\00", [62 x i8] zeroinitializer }, align 32
@mac_intr_handler._entry_ptr.130 = internal global ptr @mac_intr_handler._entry.128, section ".printk_index", align 4
@calibrate_xgm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.2, i32 3079, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MAC calibration failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"calibrate_xgm\00", [18 x i8] zeroinitializer }, align 32
@calibrate_xgm._entry_ptr = internal global ptr @calibrate_xgm._entry, section ".printk_index", align 4
@mc7_init.mc7_mode = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1586, i32 1602, i32 1618, i32 1074, i32 1090], [44 x i8] zeroinitializer }, align 32
@mc7_init.mc7_timings = internal constant { [5 x %struct.mc7_timing_params], [41 x i8] } { [5 x %struct.mc7_timing_params] [%struct.mc7_timing_params { i8 12, i8 3, i8 4, [5 x i8] c"\14\1C\224\00", i8 15, i8 6, i8 4 }, %struct.mc7_timing_params { i8 12, i8 4, i8 5, [5 x i8] c"\14\1C\224\00", i8 16, i8 7, i8 4 }, %struct.mc7_timing_params { i8 12, i8 5, i8 6, [5 x i8] c"\14\1C\224\00", i8 17, i8 8, i8 4 }, %struct.mc7_timing_params { i8 9, i8 3, i8 4, [5 x i8] c"\0F\15\1A'\00", i8 12, i8 6, i8 4 }, %struct.mc7_timing_params { i8 9, i8 4, i8 5, [5 x i8] c"\0F\15\1A'\00", i8 13, i8 7, i8 4 }], [41 x i8] zeroinitializer }, align 32
@mc7_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.2, i32 3167, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s MC7 calibration timed out\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mc7_init\00", [23 x i8] zeroinitializer }, align 32
@mc7_init._entry_ptr = internal global ptr @mc7_init._entry, section ".printk_index", align 4
@mc7_init._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.134, ptr @.str.2, i32 3231, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s MC7 BIST timed out\0A\00", [41 x i8] zeroinitializer }, align 32
@mc7_init._entry_ptr.137 = internal global ptr @mc7_init._entry.135, section ".printk_index", align 4
@wrreg_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.2, i32 3126, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"write to MC7 register 0x%x timed out\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wrreg_wait\00", [21 x i8] zeroinitializer }, align 32
@wrreg_wait._entry_ptr = internal global ptr @wrreg_wait._entry, section ".printk_index", align 4
@tp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.141, ptr @.str.2, i32 3021, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"TP initialization timed out\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tp_init\00", [24 x i8] zeroinitializer }, align 32
@tp_init._entry_ptr = internal global ptr @tp_init._entry, section ".printk_index", align 4
@config_pcie.ack_lat = internal constant { [4 x [6 x i16]], [48 x i8] } { [4 x [6 x i16]] [[6 x i16] [i16 237, i16 416, i16 559, i16 1071, i16 2095, i16 4143], [6 x i16] [i16 128, i16 217, i16 289, i16 545, i16 1057, i16 2081], [6 x i16] [i16 73, i16 118, i16 154, i16 282, i16 538, i16 1050], [6 x i16] [i16 67, i16 107, i16 86, i16 150, i16 278, i16 534]], [48 x i8] zeroinitializer }, align 32
@config_pcie.rpl_tmr = internal constant { [4 x [6 x i16]], [48 x i8] } { [4 x [6 x i16]] [[6 x i16] [i16 711, i16 1248, i16 1677, i16 3213, i16 6285, i16 12429], [6 x i16] [i16 384, i16 651, i16 867, i16 1635, i16 3171, i16 6243], [6 x i16] [i16 219, i16 354, i16 462, i16 846, i16 1614, i16 3150], [6 x i16] [i16 201, i16 321, i16 258, i16 450, i16 834, i16 1602]], [48 x i8] zeroinitializer }, align 32
@get_pci_mode.speed_map = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 33, i16 66, i16 100, i16 133], [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.142 = internal global [4 x i64] [i64 2, i64 32, i64 100, i64 1000]
@___asan_gen_.143 = private unnamed_addr constant [6 x i8] c"shift\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 149, i32 19 }
@___asan_gen_.146 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 150, i32 19 }
@___asan_gen_.149 = private unnamed_addr constant [13 x i8] c"t3_adap_info\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 505, i32 34 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 935, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 963, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1013, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1017, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1074, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1099, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant [15 x i8] c"cause_reg_addr\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1994, i32 28 }
@___asan_gen_.215 = private unnamed_addr constant [9 x i8] c"avg_pkts\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 2836, i32 28 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 3374, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 3630, i32 57 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 3631, i32 57 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 3632, i32 53 }
@___asan_gen_.236 = private unnamed_addr constant [11 x i8] c"port_types\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 553, i32 36 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 3678, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant [13 x i8] c"mi1_mdio_ops\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 247, i32 30 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 509, i32 18 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 513, i32 18 }
@___asan_gen_.260 = private unnamed_addr constant [17 x i8] c"mi1_mdio_ext_ops\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 312, i32 30 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 518, i32 22 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 524, i32 22 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 536, i32 22 }
@___asan_gen_.272 = private unnamed_addr constant [15 x i8] c"pcie_intr_info\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1493, i32 32 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1494, i32 14 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1496, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1498, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1499, i32 22 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1500, i32 21 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1501, i32 21 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1502, i32 21 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1504, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1505, i32 22 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1506, i32 22 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1507, i32 16 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1508, i32 16 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1509, i32 26 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1514, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1380, i32 4 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1384, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant [16 x i8] c"pcix1_intr_info\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1457, i32 32 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1458, i32 20 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1459, i32 17 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1460, i32 17 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1461, i32 17 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1462, i32 17 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1463, i32 17 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1464, i32 17 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1465, i32 17 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1466, i32 20 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1468, i32 20 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1470, i32 20 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1733, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1743, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1753, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1764, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant [14 x i8] c"cim_intr_info\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1552, i32 32 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1553, i32 20 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1554, i32 21 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1555, i32 21 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1556, i32 20 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1557, i32 21 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1558, i32 21 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1559, i32 21 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1560, i32 21 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1561, i32 19 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1562, i32 19 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1563, i32 18 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1564, i32 18 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1565, i32 18 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1566, i32 20 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1567, i32 20 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1568, i32 20 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1569, i32 22 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1570, i32 22 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1571, i32 22 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1572, i32 22 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1573, i32 20 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1574, i32 19 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1575, i32 18 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1576, i32 18 }
@___asan_gen_.473 = private unnamed_addr constant [13 x i8] c"tp_intr_info\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1527, i32 32 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1528, i32 14 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1529, i32 15 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1530, i32 15 }
@___asan_gen_.485 = private unnamed_addr constant [17 x i8] c"tp_intr_info_t3c\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1534, i32 32 }
@___asan_gen_.488 = private unnamed_addr constant [16 x i8] c"ulprx_intr_info\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1590, i32 32 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1591, i32 18 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1592, i32 18 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1593, i32 18 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1594, i32 18 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1595, i32 16 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1596, i32 19 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1597, i32 24 }
@___asan_gen_.512 = private unnamed_addr constant [16 x i8] c"ulptx_intr_info\00", align 1
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1612, i32 32 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1613, i32 25 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1615, i32 25 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1617, i32 10 }
@___asan_gen_.524 = private unnamed_addr constant [15 x i8] c"pmrx_intr_info\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1670, i32 32 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1671, i32 24 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1672, i32 19 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1673, i32 19 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1675, i32 4 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1677, i32 4 }
@___asan_gen_.542 = private unnamed_addr constant [15 x i8] c"pmtx_intr_info\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1640, i32 32 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1641, i32 24 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1642, i32 19 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1643, i32 19 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1645, i32 4 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1647, i32 4 }
@___asan_gen_.560 = private unnamed_addr constant [16 x i8] c"cplsw_intr_info\00", align 1
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1691, i32 32 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1692, i32 23 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1693, i32 22 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1694, i32 24 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1695, i32 25 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1696, i32 25 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1697, i32 25 }
@___asan_gen_.581 = private unnamed_addr constant [14 x i8] c"mps_intr_info\00", align 1
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1711, i32 32 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1712, i32 11 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1793, i32 3 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 1797, i32 3 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 3079, i32 3 }
@___asan_gen_.611 = private unnamed_addr constant [9 x i8] c"mc7_mode\00", align 1
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 3132, i32 28 }
@___asan_gen_.614 = private unnamed_addr constant [12 x i8] c"mc7_timings\00", align 1
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 3135, i32 40 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 3166, i32 4 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 3231, i32 3 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 3126, i32 2 }
@___asan_gen_.641 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.647 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 3021, i32 4 }
@___asan_gen_.650 = private unnamed_addr constant [8 x i8] c"ack_lat\00", align 1
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 3245, i32 19 }
@___asan_gen_.653 = private unnamed_addr constant [8 x i8] c"rpl_tmr\00", align 1
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 3251, i32 19 }
@___asan_gen_.656 = private unnamed_addr constant [10 x i8] c"speed_map\00", align 1
@___asan_gen_.657 = private constant [46 x i8] c"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c\00", align 1
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 3393, i32 24 }
@llvm.compiler.used = appending global [194 x ptr] [ptr @calibrate_xgm._entry, ptr @calibrate_xgm._entry_ptr, ptr @mac_intr_handler._entry, ptr @mac_intr_handler._entry.128, ptr @mac_intr_handler._entry_ptr, ptr @mac_intr_handler._entry_ptr.130, ptr @mc7_init._entry, ptr @mc7_init._entry.135, ptr @mc7_init._entry_ptr, ptr @mc7_init._entry_ptr.137, ptr @mc7_intr_handler._entry, ptr @mc7_intr_handler._entry.63, ptr @mc7_intr_handler._entry.66, ptr @mc7_intr_handler._entry.69, ptr @mc7_intr_handler._entry_ptr, ptr @mc7_intr_handler._entry_ptr.65, ptr @mc7_intr_handler._entry_ptr.68, ptr @mc7_intr_handler._entry_ptr.71, ptr @pcie_intr_handler._entry, ptr @pcie_intr_handler._entry_ptr, ptr @t3_check_fw_version._entry, ptr @t3_check_fw_version._entry.10, ptr @t3_check_fw_version._entry_ptr, ptr @t3_check_fw_version._entry_ptr.12, ptr @t3_check_tpsram._entry, ptr @t3_check_tpsram._entry_ptr, ptr @t3_check_tpsram_version._entry, ptr @t3_check_tpsram_version._entry_ptr, ptr @t3_handle_intr_status._entry, ptr @t3_handle_intr_status._entry.48, ptr @t3_handle_intr_status._entry_ptr, ptr @t3_handle_intr_status._entry_ptr.49, ptr @t3_init_hw._entry, ptr @t3_init_hw._entry_ptr, ptr @t3_load_fw._entry, ptr @t3_load_fw._entry.15, ptr @t3_load_fw._entry_ptr, ptr @t3_load_fw._entry_ptr.17, ptr @t3_prep_adapter._entry, ptr @t3_prep_adapter._entry_ptr, ptr @tp_init._entry, ptr @tp_init._entry_ptr, ptr @wrreg_wait._entry, ptr @wrreg_wait._entry_ptr, ptr @t3_mc7_bd_read.shift, ptr @t3_mc7_bd_read.step, ptr @t3_adap_info, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @t3_intr_clear.cause_reg_addr, ptr @t3_load_mtus.avg_pkts, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @port_types, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @mi1_mdio_ops, ptr @.str.26, ptr @.str.27, ptr @mi1_mdio_ext_ops, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @pcie_intr_handler.pcie_intr_info, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @pci_intr_handler.pcix1_intr_info, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @cim_intr_handler.cim_intr_info, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @tp_intr_handler.tp_intr_info, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @tp_intr_handler.tp_intr_info_t3c, ptr @ulprx_intr_handler.ulprx_intr_info, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @ulptx_intr_handler.ulptx_intr_info, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @pmrx_intr_handler.pmrx_intr_info, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @pmtx_intr_handler.pmtx_intr_info, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @cplsw_intr_handler.cplsw_intr_info, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @mps_intr_handler.mps_intr_info, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.129, ptr @.str.131, ptr @.str.132, ptr @mc7_init.mc7_mode, ptr @mc7_init.mc7_timings, ptr @.str.133, ptr @.str.134, ptr @.str.136, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @config_pcie.ack_lat, ptr @config_pcie.rpl_tmr, ptr @get_pci_mode.speed_map], section "llvm.metadata"
@0 = internal global [172 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_mc7_bd_read.shift to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_mc7_bd_read.step to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_adap_info to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_check_tpsram_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_check_tpsram._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_check_fw_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_check_fw_version._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_load_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_load_fw._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_intr_clear.cause_reg_addr to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_load_mtus.avg_pkts to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_init_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_types to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_prep_adapter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi1_mdio_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi1_mdio_ext_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_intr_handler.pcie_intr_info to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_intr_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_handle_intr_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_handle_intr_status._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_intr_handler.pcix1_intr_info to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc7_intr_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc7_intr_handler._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc7_intr_handler._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc7_intr_handler._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cim_intr_handler.cim_intr_info to i32), i32 300, i32 384, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tp_intr_handler.tp_intr_info to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tp_intr_handler.tp_intr_info_t3c to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulprx_intr_handler.ulprx_intr_info to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulptx_intr_handler.ulptx_intr_info to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmrx_intr_handler.pmrx_intr_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmtx_intr_handler.pmtx_intr_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cplsw_intr_handler.cplsw_intr_info to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mps_intr_handler.mps_intr_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_intr_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_intr_handler._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calibrate_xgm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc7_init.mc7_mode to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc7_init.mc7_timings to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc7_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc7_init._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wrreg_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config_pcie.ack_lat to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config_pcie.rpl_tmr to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_pci_mode.speed_map to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_wait_op_done_val(ptr nocapture noundef readonly %adapter, i32 noundef %reg, i32 noundef %mask, i32 noundef %polarity, i32 noundef %attempts, i32 noundef %delay, ptr noundef writeonly %valp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27) #7, !srcloc !337
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %and28 = and i32 %3, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29 = icmp ne i32 %and28, 0
  %lnot.ext30 = zext i1 %tobool29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %lnot.ext30, i32 %polarity)
  %cmp31 = icmp eq i32 %lnot.ext30, %polarity
  br i1 %cmp31, label %entry.if.then_crit_edge, label %if.end4.lr.ph

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end4.lr.ph:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delay)
  %tobool8.not = icmp eq i32 %delay, 0
  br label %if.end4

if.then:                                          ; preds = %cleanup.if.then_crit_edge, %entry.if.then_crit_edge
  %.lcssa = phi i32 [ %3, %entry.if.then_crit_edge ], [ %9, %cleanup.if.then_crit_edge ]
  %tobool2.not = icmp eq ptr %valp, null
  br i1 %tobool2.not, label %if.then.return_crit_edge, label %if.then3

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %valp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.lcssa, ptr %valp, align 4
  br label %return

if.end4:                                          ; preds = %cleanup.if.end4_crit_edge, %if.end4.lr.ph
  %attempts.addr.032 = phi i32 [ %attempts, %if.end4.lr.ph ], [ %dec, %cleanup.if.end4_crit_edge ]
  %dec = add i32 %attempts.addr.032, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp5 = icmp eq i32 %dec, 0
  br i1 %cmp5, label %if.end4.return_crit_edge, label %if.end7

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end7:                                          ; preds = %if.end4
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %cond.false12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cond.false12:                                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %5(i32 noundef %delay) #7
  br label %cleanup

cleanup:                                          ; preds = %cond.false12, %if.end7.cleanup_crit_edge
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %reg
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !337
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %and = and i32 %9, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %lnot.ext = zext i1 %tobool to i32
  %cmp = icmp eq i32 %lnot.ext, %polarity
  br i1 %cmp, label %cleanup.if.then_crit_edge, label %cleanup.if.end4_crit_edge

cleanup.if.end4_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

cleanup.if.then_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

return:                                           ; preds = %if.end4.return_crit_edge, %if.then3, %if.then.return_crit_edge
  %retval.1.ph = phi i32 [ 0, %if.then.return_crit_edge ], [ 0, %if.then3 ], [ -11, %if.end4.return_crit_edge ]
  ret i32 %retval.1.ph
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t3_write_regs(ptr nocapture noundef readonly %adapter, ptr nocapture noundef readonly %p, i32 noundef %n, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %tobool.not3 = icmp eq i32 %n, 0
  br i1 %tobool.not3, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %p.addr.05 = phi ptr [ %p, %while.body.lr.ph ], [ %incdec.ptr, %while.body.while.body_crit_edge ]
  %n.addr.04 = phi i32 [ %n, %while.body.lr.ph ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add i32 %n.addr.04, -1
  %0 = ptrtoint ptr %p.addr.05 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p.addr.05, align 4
  %add = add i32 %1, %offset
  %val = getelementptr inbounds %struct.addr_val_pair, ptr %p.addr.05, i32 0, i32 1
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #7
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #7, !srcloc !340
  %incdec.ptr = getelementptr %struct.addr_val_pair, ptr %p.addr.05, i32 1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t3_set_reg_field(ptr nocapture noundef readonly %adapter, i32 noundef %addr, i32 noundef %mask, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %addr
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !337
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %neg = xor i32 %mask, -1
  %and = and i32 %3, %neg
  %or = or i32 %and, %val
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %6, i32 %addr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 %4) #7, !srcloc !340
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %8, i32 %addr
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_mc7_bd_read(ptr nocapture noundef readonly %mc7, i32 noundef %start, i32 noundef %n, ptr nocapture noundef writeonly %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.mc7, ptr %mc7, i32 0, i32 1
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  %div90 = lshr i32 %1, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div90, i32 %start)
  %cmp.not = icmp ule i32 %div90, %start
  %add = add i32 %n, %start
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %div90)
  %cmp1 = icmp ugt i32 %add, %div90
  %or.cond = or i1 %cmp.not, %cmp1
  br i1 %or.cond, label %entry.cleanup54_crit_edge, label %if.end

entry.cleanup54_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup54

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %mc7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mc7, align 4
  %width = getelementptr inbounds %struct.mc7, ptr %mc7, i32 0, i32 2
  %offset = getelementptr inbounds %struct.mc7, ptr %mc7, i32 0, i32 3
  %regs.i = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %tobool.not134 = icmp eq i32 %n, 0
  br i1 %tobool.not134, label %if.end.cleanup54_crit_edge, label %for.body.preheader.lr.ph

if.end.cleanup54_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup54

for.body.preheader.lr.ph:                         ; preds = %if.end
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 4
  %shl = shl i32 8, %5
  %mul = mul i32 %shl, %start
  br label %for.body.preheader

for.body.preheader:                               ; preds = %cleanup49.for.body.preheader_crit_edge, %for.body.preheader.lr.ph
  %dec137.in = phi i32 [ %n, %for.body.preheader.lr.ph ], [ %dec137, %cleanup49.for.body.preheader_crit_edge ]
  %buf.addr.0136 = phi ptr [ %buf, %for.body.preheader.lr.ph ], [ %incdec.ptr, %cleanup49.for.body.preheader_crit_edge ]
  %start.addr.0135 = phi i32 [ %mul, %for.body.preheader.lr.ph ], [ %add46, %cleanup49.for.body.preheader_crit_edge ]
  %dec137 = add i32 %dec137.in, -1
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %width, align 4
  %notmask = shl nsw i32 -1, %7
  %sub = xor i32 %notmask, -1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %val64.0117 = phi i64 [ %val64.1, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %i.0116 = phi i32 [ %dec48, %for.inc.for.body_crit_edge ], [ %sub, %for.body.preheader ]
  %start.addr.1115 = phi i32 [ %add46, %for.inc.for.body_crit_edge ], [ %start.addr.0135, %for.body.preheader ]
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 4
  %add5 = add i32 %9, 340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %10 = tail call i32 @llvm.bswap.i32(i32 %start.addr.1115) #7
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 %add5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #7, !srcloc !340
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset, align 4
  %add7 = add i32 %14, 356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %add.ptr.i93 = getelementptr i8, ptr %16, i32 %add7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93, i32 0) #7, !srcloc !340
  %17 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset, align 4
  %add9 = add i32 %18, 356
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 4
  %add.ptr.i95 = getelementptr i8, ptr %20, i32 %add9
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i95) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %.mask = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool11.not111 = icmp eq i32 %.mask, 0
  br i1 %tobool11.not111, label %for.body.if.end21_crit_edge, label %for.body.while.body14_crit_edge

for.body.while.body14_crit_edge:                  ; preds = %for.body
  br label %while.body14

for.body.if.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

while.body14:                                     ; preds = %while.body14.while.body14_crit_edge, %for.body.while.body14_crit_edge
  %attempts.0113 = phi i32 [ %dec12, %while.body14.while.body14_crit_edge ], [ 10, %for.body.while.body14_crit_edge ]
  %dec12 = add nsw i32 %attempts.0113, -1
  %22 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset, align 4
  %add16 = add i32 %23, 356
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %add.ptr.i97 = getelementptr i8, ptr %25, i32 %add16
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i97) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %.mask122 = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask122)
  %tobool11.not = icmp eq i32 %.mask122, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec12)
  %tobool13.not = icmp eq i32 %dec12, 0
  %or.cond91 = select i1 %tobool11.not, i1 true, i1 %tobool13.not
  br i1 %or.cond91, label %while.end, label %while.body14.while.body14_crit_edge

while.body14.while.body14_crit_edge:              ; preds = %while.body14
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body14

while.end:                                        ; preds = %while.body14
  br i1 %tobool11.not, label %while.end.if.end21_crit_edge, label %while.end.cleanup54_crit_edge

while.end.cleanup54_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup54

while.end.if.end21_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.end21:                                         ; preds = %while.end.if.end21_crit_edge, %for.body.if.end21_crit_edge
  %27 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %offset, align 4
  %add23 = add i32 %28, 348
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  %add.ptr.i99 = getelementptr i8, ptr %30, i32 %add23
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i99) #7, !srcloc !337
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %33 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %width, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i32 %34, label %if.then36 [
    i32 0, label %if.then27
    i32 1, label %if.end21.if.end38_crit_edge
  ]

if.end21.if.end38_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %offset, align 4
  %add29 = add i32 %37, 344
  %38 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i, align 4
  %add.ptr.i101 = getelementptr i8, ptr %39, i32 %add29
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i101) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %41 = zext i32 %31 to i64
  %42 = zext i32 %40 to i64
  %43 = shl nuw i64 %42, 32
  %44 = or i64 %43, %41
  %45 = tail call i64 @llvm.bswap.i64(i64 %44)
  br label %for.inc

if.then36:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [4 x i32], ptr @t3_mc7_bd_read.shift, i32 0, i32 %34
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx, align 4
  %shr = lshr i32 %32, %47
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end21.if.end38_crit_edge
  %val.1 = phi i32 [ %shr, %if.then36 ], [ %32, %if.end21.if.end38_crit_edge ]
  %conv39 = zext i32 %val.1 to i64
  %arrayidx41 = getelementptr [4 x i32], ptr @t3_mc7_bd_read.step, i32 0, i32 %34
  %48 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx41, align 4
  %mul42 = mul i32 %49, %i.0116
  %sh_prom = zext i32 %mul42 to i64
  %shl43 = shl i64 %conv39, %sh_prom
  %or44 = or i64 %shl43, %val64.0117
  br label %for.inc

for.inc:                                          ; preds = %if.end38, %if.then27
  %val64.1 = phi i64 [ %45, %if.then27 ], [ %or44, %if.end38 ]
  %add46 = add i32 %start.addr.1115, 8
  %dec48 = add i32 %i.0116, -1
  %cmp4 = icmp sgt i32 %dec48, -1
  br i1 %cmp4, label %for.inc.for.body_crit_edge, label %cleanup49

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup49:                                        ; preds = %for.inc
  %incdec.ptr = getelementptr i64, ptr %buf.addr.0136, i32 1
  %50 = ptrtoint ptr %buf.addr.0136 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %val64.1, ptr %buf.addr.0136, align 8
  %tobool.not = icmp eq i32 %dec137, 0
  br i1 %tobool.not, label %cleanup49.cleanup54_crit_edge, label %cleanup49.for.body.preheader_crit_edge

cleanup49.for.body.preheader_crit_edge:           ; preds = %cleanup49
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

cleanup49.cleanup54_crit_edge:                    ; preds = %cleanup49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup54

cleanup54:                                        ; preds = %cleanup49.cleanup54_crit_edge, %while.end.cleanup54_crit_edge, %if.end.cleanup54_crit_edge, %entry.cleanup54_crit_edge
  %retval.4 = phi i32 [ -22, %entry.cleanup54_crit_edge ], [ 0, %if.end.cleanup54_crit_edge ], [ -5, %while.end.cleanup54_crit_edge ], [ 0, %cleanup49.cleanup54_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_mdio_change_bits(ptr nocapture noundef readonly %phy, i32 noundef %mmd, i32 noundef %reg, i32 noundef %clear, i32 noundef %set) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %mdio_read.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 4
  %0 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i, align 4
  %dev.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i, align 4
  %conv.i = trunc i32 %reg to i16
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef %mmd, i16 noundef zeroext %conv.i) #7
  %6 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not = icmp sgt i32 %call.i, -1
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %neg = xor i32 %clear, -1
  %and = and i32 %call.i, %neg
  %or = or i32 %and, %set
  %mdio_write.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 5
  %7 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdio_write.i, align 4
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %11 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mdio.i, align 4
  %conv3.i = trunc i32 %or to i16
  %call.i9 = tail call i32 %8(ptr noundef %10, i32 noundef %12, i32 noundef %mmd, i16 noundef zeroext %conv.i, i16 noundef zeroext %conv3.i) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %6, %entry.if.end_crit_edge ], [ %call.i9, %if.then ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_phy_reset(ptr nocapture noundef readonly %phy, i32 noundef %mmd, i32 noundef %wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %mdio_read.i.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 4
  %0 = ptrtoint ptr %mdio_read.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i, align 4
  %4 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i.i, align 4
  %call.i.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef %mmd, i16 noundef zeroext 0) #7
  %6 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not.i, label %if.then.i, label %entry.t3_mdio_change_bits.exit_crit_edge

entry.t3_mdio_change_bits.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %t3_mdio_change_bits.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mdio_write.i.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 5
  %7 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdio_write.i.i, align 4
  %9 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i.i, align 4
  %11 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mdio.i.i, align 4
  %13 = trunc i32 %call.i.i to i16
  %14 = and i16 %13, 30719
  %conv3.i.i = or i16 %14, -32768
  %call.i9.i = tail call i32 %8(ptr noundef %10, i32 noundef %12, i32 noundef %mmd, i16 noundef zeroext 0, i16 noundef zeroext %conv3.i.i) #7
  br label %t3_mdio_change_bits.exit

t3_mdio_change_bits.exit:                         ; preds = %if.then.i, %entry.t3_mdio_change_bits.exit_crit_edge
  %ret.0.i = phi i32 [ %6, %entry.t3_mdio_change_bits.exit_crit_edge ], [ %call.i9.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool.not = icmp ne i32 %ret.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait)
  %tobool1.not = icmp eq i32 %wait, 0
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %t3_mdio_change_bits.exit.cleanup_crit_edge, label %t3_mdio_change_bits.exit.do.body_crit_edge

t3_mdio_change_bits.exit.do.body_crit_edge:       ; preds = %t3_mdio_change_bits.exit
  br label %do.body

t3_mdio_change_bits.exit.cleanup_crit_edge:       ; preds = %t3_mdio_change_bits.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %t3_mdio_change_bits.exit.do.body_crit_edge
  %wait.addr.0 = phi i32 [ %dec, %do.cond.do.body_crit_edge ], [ %wait, %t3_mdio_change_bits.exit.do.body_crit_edge ]
  %15 = ptrtoint ptr %mdio_read.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mdio_read.i.i, align 4
  %17 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i.i, align 4
  %19 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mdio.i.i, align 4
  %call.i = tail call i32 %16(ptr noundef %18, i32 noundef %20, i32 noundef %mmd, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool3.not = icmp sgt i32 %call.i, -1
  br i1 %tobool3.not, label %if.end5, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %do.body
  %and = and i32 %call.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end5.do.end_crit_edge, label %do.cond

if.end5.do.end_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.cond:                                          ; preds = %if.end5
  tail call void @msleep(i32 noundef 1) #7
  %dec = add i32 %wait.addr.0, -1
  %tobool10.not = icmp eq i32 %dec, 0
  br i1 %tobool10.not, label %do.cond.do.end_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %if.end5.do.end_crit_edge
  %21 = shl nuw i32 %and, 16
  %sext = ashr exact i32 %21, 31
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %t3_mdio_change_bits.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %sext, %do.end ], [ %ret.0.i, %t3_mdio_change_bits.exit.cleanup_crit_edge ], [ %call.i, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_phy_advertise(ptr nocapture noundef readonly %phy, i32 noundef %advert) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %mdio_read.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 4
  %0 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i, align 4
  %dev.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef -1, i16 noundef zeroext 9) #7
  %6 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not = icmp sgt i32 %call.i, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call.i, 64767
  %and1 = shl i32 %advert, 4
  %7 = and i32 %and1, 768
  %8 = or i32 %7, %and
  %mdio_write.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 5
  %9 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mdio_write.i, align 4
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %13 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mdio.i, align 4
  %conv3.i = trunc i32 %8 to i16
  %call.i62 = tail call i32 %10(ptr noundef %12, i32 noundef %14, i32 noundef -1, i16 noundef zeroext 9, i16 noundef zeroext %conv3.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool11.not = icmp eq i32 %call.i62, 0
  br i1 %tobool11.not, label %if.end13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %and14 = and i32 %advert, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %spec.select59 = select i1 %tobool15.not, i32 1, i32 33
  %and19 = shl i32 %advert, 5
  %and34 = lshr i32 %advert, 3
  %15 = and i32 %and34, 1024
  %16 = and i32 %and34, 2048
  %17 = and i32 %and19, 448
  %18 = or i32 %17, %15
  %19 = or i32 %18, %16
  %20 = or i32 %19, %spec.select59
  %21 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mdio_write.i, align 4
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  %25 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mdio.i, align 4
  %conv3.i66 = trunc i32 %20 to i16
  %call.i67 = tail call i32 %22(ptr noundef %24, i32 noundef %26, i32 noundef -1, i16 noundef zeroext 4, i16 noundef zeroext %conv3.i66) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i67, %if.end13 ], [ %6, %entry.cleanup_crit_edge ], [ %call.i62, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_phy_advertise_fiber(ptr nocapture noundef readonly %phy, i32 noundef %advert) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = shl i32 %advert, 2
  %0 = and i32 %and, 64
  %and1 = and i32 %advert, 32
  %1 = or i32 %0, %and1
  %and6 = lshr i32 %advert, 6
  %2 = and i32 %and6, 128
  %3 = or i32 %1, %2
  %4 = and i32 %and6, 256
  %5 = or i32 %3, %4
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %mdio_write.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 5
  %6 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdio_write.i, align 4
  %dev.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 3
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %10 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mdio.i, align 4
  %conv3.i = trunc i32 %5 to i16
  %call.i = tail call i32 %7(ptr noundef %9, i32 noundef %11, i32 noundef -1, i16 noundef zeroext 4, i16 noundef zeroext %conv3.i) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_set_phy_speed_duplex(ptr nocapture noundef readonly %phy, i32 noundef %speed, i32 noundef %duplex) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %mdio_read.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 4
  %0 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i, align 4
  %dev.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef -1, i16 noundef zeroext 0) #7
  %6 = tail call i32 @llvm.smax.i32(i32 %call.i, i32 -1) #7
  %7 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not = icmp sgt i32 %call.i, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %speed)
  %cmp = icmp sgt i32 %speed, -1
  br i1 %cmp, label %if.then1, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then1:                                         ; preds = %if.end
  %and = and i32 %6, -12353
  %8 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %speed, label %if.then1.if.end9_crit_edge [
    i32 100, label %if.then3
    i32 1000, label %if.then5
  ]

if.then1.if.end9_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then3:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %and, 8192
  br label %if.end9

if.then5:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  %or6 = or i32 %and, 64
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.then3, %if.then1.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %ctl.0 = phi i32 [ %and, %if.then1.if.end9_crit_edge ], [ %or6, %if.then5 ], [ %or, %if.then3 ], [ %6, %if.end.if.end9_crit_edge ]
  %and12 = and i32 %ctl.0, -4353
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %duplex)
  %cmp13 = icmp eq i32 %duplex, 1
  %or15 = or i32 %and12, 256
  %spec.select = select i1 %cmp13, i32 %or15, i32 %and12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %duplex)
  %cmp1037 = icmp slt i32 %duplex, 0
  %ctl.1 = select i1 %cmp1037, i32 %ctl.0, i32 %spec.select
  %and18 = shl i32 %ctl.1, 6
  %9 = and i32 %and18, 4096
  %10 = or i32 %9, %ctl.1
  %mdio_write.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 5
  %11 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mdio_write.i, align 4
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %15 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mdio.i, align 4
  %conv3.i = trunc i32 %10 to i16
  %call.i32 = tail call i32 %12(ptr noundef %14, i32 noundef %16, i32 noundef -1, i16 noundef zeroext 0, i16 noundef zeroext %conv3.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i32, %if.end9 ], [ %7, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_phy_lasi_intr_enable(ptr nocapture noundef readonly %phy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %mdio_write.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 5
  %0 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_write.i, align 4
  %dev.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 1, i16 noundef zeroext -28670, i16 noundef zeroext 1) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_phy_lasi_intr_disable(ptr nocapture noundef readonly %phy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %mdio_write.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 5
  %0 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_write.i, align 4
  %dev.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 1, i16 noundef zeroext -28670, i16 noundef zeroext 0) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_phy_lasi_intr_clear(ptr nocapture noundef readonly %phy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %mdio_read.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 4
  %0 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i, align 4
  %dev.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 1, i16 noundef zeroext -28667) #7
  %6 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #7
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_phy_lasi_intr_handler(ptr nocapture noundef readonly %phy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %mdio_read.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 4
  %0 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i, align 4
  %dev.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 1, i16 noundef zeroext -28667) #7
  %6 = tail call i32 @llvm.smax.i32(i32 %call.i, i32 -1) #7
  %7 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #7
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not4 = icmp slt i32 %call.i, 0
  %retval.0 = select i1 %tobool.not4, i32 %7, i32 %and
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @t3_get_adapter_info(i32 noundef %id) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %id)
  %cmp = icmp ult i32 %id, 8
  %arrayidx = getelementptr [8 x %struct.adapter_info], ptr @t3_adap_info, i32 0, i32 %id
  %spec.select = select i1 %cmp, ptr %arrayidx, ptr null
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_seeprom_wp(ptr nocapture noundef readonly %adapter, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %cond = select i1 %tobool.not, i32 0, i32 12
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %cond, ptr %data, align 4
  %pdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 8
  %call = call i32 @pci_write_vpd_any(ptr noundef %2, i64 noundef 16384, i32 noundef 4, ptr noundef nonnull %data) #7
  %3 = call i32 @llvm.smin.i32(i32 %call, i32 0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #7
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_vpd_any(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_get_tp_version(ptr nocapture noundef readonly %adapter, ptr nocapture noundef writeonly %vers) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !340
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %3, i32 1256
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool29.i.i.not = icmp eq i32 %5, 0
  br i1 %tobool29.i.i.not, label %if.end4.i.i.preheader, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end4.i.i.preheader:                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #7
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 1256
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.i.not = icmp eq i32 %10, 0
  br i1 %tobool.i.i.not, label %if.end4.i.i.1, label %if.end4.i.i.preheader.if.end_crit_edge

if.end4.i.i.preheader.if.end_crit_edge:           ; preds = %if.end4.i.i.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end4.i.i.1:                                    ; preds = %if.end4.i.i.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #7
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i.i.1 = getelementptr i8, ptr %13, i32 1256
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.1) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.i.not.1 = icmp eq i32 %15, 0
  br i1 %tobool.i.i.not.1, label %if.end4.i.i.2, label %if.end4.i.i.1.if.end_crit_edge

if.end4.i.i.1.if.end_crit_edge:                   ; preds = %if.end4.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end4.i.i.2:                                    ; preds = %if.end4.i.i.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #7
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i.i.2 = getelementptr i8, ptr %18, i32 1256
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.2) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %20 = and i32 %19, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.i.not.2 = icmp eq i32 %20, 0
  br i1 %tobool.i.i.not.2, label %if.end4.i.i.3, label %if.end4.i.i.2.if.end_crit_edge

if.end4.i.i.2.if.end_crit_edge:                   ; preds = %if.end4.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end4.i.i.3:                                    ; preds = %if.end4.i.i.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #7
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i.i.3 = getelementptr i8, ptr %23, i32 1256
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.3) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %25 = and i32 %24, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i.i.not.3 = icmp eq i32 %25, 0
  br i1 %tobool.i.i.not.3, label %if.end4.i.i.3.cleanup_crit_edge, label %if.end4.i.i.3.if.end_crit_edge

if.end4.i.i.3.if.end_crit_edge:                   ; preds = %if.end4.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end4.i.i.3.cleanup_crit_edge:                  ; preds = %if.end4.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.end4.i.i.3.if.end_crit_edge, %if.end4.i.i.2.if.end_crit_edge, %if.end4.i.i.1.if.end_crit_edge, %if.end4.i.i.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %27, i32 1260
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #7, !srcloc !337
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %30 = ptrtoint ptr %vers to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %vers, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end4.i.i.3.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -11, %if.end4.i.i.3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_check_tpsram_version(ptr nocapture noundef readonly %adapter) local_unnamed_addr #0 align 64 {
entry:
  %vers = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vers) #7
  %0 = ptrtoint ptr %vers to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %vers, align 4, !annotation !341
  %rev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 13
  %1 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @t3_get_tp_version(ptr noundef %adapter, ptr noundef nonnull %vers)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %3 = ptrtoint ptr %vers to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vers, align 4
  %shr = lshr i32 %4, 16
  %and = and i32 %shr, 255
  %shr3 = lshr i32 %4, 8
  %and4 = and i32 %shr3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp5 = icmp eq i32 %and, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and4)
  %cmp6 = icmp eq i32 %and4, 1
  %or.cond = select i1 %cmp5, i1 %cmp6, i1 false
  br i1 %or.cond, label %if.end2.cleanup_crit_edge, label %do.end

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %and, i32 noundef %and4, i32 noundef 1, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %if.end2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vers) #7
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_check_tpsram(ptr nocapture noundef readonly %adapter, ptr nocapture noundef readonly %tp_sram, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp9.not = icmp ult i32 %size, 4
  br i1 %cmp9.not, label %entry.do.end_crit_edge, label %for.body.preheader

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.body.preheader:                               ; preds = %entry
  %div8 = lshr i32 %size, 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.011 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %csum.010 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i32, ptr %tp_sram, i32 %i.011
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, %csum.010
  %inc = add nuw nsw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, %div8
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add)
  %cmp1.not = icmp eq i32 %add, -1
  br i1 %cmp1.not, label %for.end.cleanup_crit_edge, label %for.end.do.end_crit_edge

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %for.end.do.end_crit_edge, %entry.do.end_crit_edge
  %csum.0.lcssa14 = phi i32 [ %add, %for.end.do.end_crit_edge ], [ 0, %entry.do.end_crit_edge ]
  %pdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %csum.0.lcssa14) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_get_fw_version(ptr nocapture noundef readonly %adapter, ptr nocapture noundef writeonly %vers) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @sf1_write(ptr noundef %adapter, i32 noundef 4, i32 noundef 1, i32 noundef -50395381) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp1.not.i, label %lor.lhs.false2.i, label %entry.t3_read_flash.exit_crit_edge

entry.t3_read_flash.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %t3_read_flash.exit

lor.lhs.false2.i:                                 ; preds = %entry
  %call3.i = tail call fastcc i32 @sf1_read(ptr noundef %adapter, i32 noundef 1, i32 noundef 1, ptr noundef %vers) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.not.i = icmp eq i32 %call3.i, 0
  br i1 %cmp4.not.i, label %for.body.i.preheader, label %lor.lhs.false2.i.t3_read_flash.exit_crit_edge

lor.lhs.false2.i.t3_read_flash.exit_crit_edge:    ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %t3_read_flash.exit

for.body.i.preheader:                             ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #9
  %call9.i = tail call fastcc i32 @sf1_read(ptr noundef %adapter, i32 noundef 4, i32 noundef 0, ptr noundef %vers) #7
  br label %t3_read_flash.exit

t3_read_flash.exit:                               ; preds = %for.body.i.preheader, %lor.lhs.false2.i.t3_read_flash.exit_crit_edge, %entry.t3_read_flash.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.t3_read_flash.exit_crit_edge ], [ %call3.i, %lor.lhs.false2.i.t3_read_flash.exit_crit_edge ], [ %call9.i, %for.body.i.preheader ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @t3_read_flash(ptr nocapture noundef readonly %adapter, i32 noundef %addr, i32 noundef %nwords, ptr nocapture noundef writeonly %data, i32 noundef %byte_oriented) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %nwords, 2
  %add = add i32 %mul, %addr
  call void @__sanitizer_cov_trace_const_cmp4(i32 524289, i32 %add)
  %cmp = icmp ult i32 %add, 524289
  %and = and i32 %addr, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = and i1 %tobool.not, %cmp
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = or i32 %addr, 184549376
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  %call = tail call fastcc i32 @sf1_write(ptr noundef %adapter, i32 noundef 4, i32 noundef 1, i32 noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1.not = icmp eq i32 %call, 0
  br i1 %cmp1.not, label %lor.lhs.false2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false2:                                   ; preds = %if.end
  %call3 = tail call fastcc i32 @sf1_read(ptr noundef %adapter, i32 noundef 1, i32 noundef 1, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not, label %for.cond.preheader, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nwords)
  %tobool7.not30 = icmp eq i32 %nwords, 0
  br i1 %tobool7.not30, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %if.end12.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %data.addr.032 = phi ptr [ %incdec.ptr, %if.end12.for.body_crit_edge ], [ %data, %for.cond.preheader.for.body_crit_edge ]
  %nwords.addr.031 = phi i32 [ %dec, %if.end12.for.body_crit_edge ], [ %nwords, %for.cond.preheader.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nwords.addr.031)
  %cmp8 = icmp ne i32 %nwords.addr.031, 1
  %conv = zext i1 %cmp8 to i32
  %call9 = tail call fastcc i32 @sf1_read(ptr noundef %adapter, i32 noundef 4, i32 noundef %conv, ptr noundef %data.addr.032)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %for.body
  %dec = add i32 %nwords.addr.031, -1
  %incdec.ptr = getelementptr i32, ptr %data.addr.032, i32 1
  %tobool7.not = icmp eq i32 %dec, 0
  br i1 %tobool7.not, label %if.end12.cleanup_crit_edge, label %if.end12.for.body_crit_edge

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end12.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call3, %lor.lhs.false2.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %call9, %for.body.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_check_fw_version(ptr nocapture noundef readonly %adapter) local_unnamed_addr #0 align 64 {
entry:
  %vers = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vers) #7
  %0 = ptrtoint ptr %vers to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %vers, align 4, !annotation !341
  %call.i.i = tail call fastcc i32 @sf1_write(ptr noundef %adapter, i32 noundef 4, i32 noundef 1, i32 noundef -50395381) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp1.not.i.i, label %lor.lhs.false2.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false2.i.i:                               ; preds = %entry
  %call3.i.i = call fastcc i32 @sf1_read(ptr noundef %adapter, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %vers) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %cmp4.not.i.i, label %t3_get_fw_version.exit, label %lor.lhs.false2.i.i.cleanup_crit_edge

lor.lhs.false2.i.i.cleanup_crit_edge:             ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

t3_get_fw_version.exit:                           ; preds = %lor.lhs.false2.i.i
  %call9.i.i = call fastcc i32 @sf1_read(ptr noundef %adapter, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %vers) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool.not = icmp eq i32 %call9.i.i, 0
  br i1 %tobool.not, label %if.end, label %t3_get_fw_version.exit.cleanup_crit_edge

t3_get_fw_version.exit.cleanup_crit_edge:         ; preds = %t3_get_fw_version.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %t3_get_fw_version.exit
  %1 = ptrtoint ptr %vers to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vers, align 4
  %shr1 = lshr i32 %2, 16
  %and2 = and i32 %shr1, 4095
  %shr3 = lshr i32 %2, 8
  %and4 = and i32 %shr3, 255
  %shr.mask = and i32 %2, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %shr.mask)
  %cmp = icmp eq i32 %shr.mask, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and2)
  %cmp5 = icmp eq i32 %and2, 7
  %or.cond = select i1 %cmp, i1 %cmp5, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %and4)
  %cmp7 = icmp eq i32 %and4, 12
  %or.cond33 = select i1 %or.cond, i1 %cmp7, i1 false
  br i1 %or.cond33, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and2)
  %cmp9.not = icmp ne i32 %and2, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %and4)
  %cmp10 = icmp ult i32 %and4, 12
  %or.cond34 = select i1 %cmp9.not, i1 true, i1 %cmp10
  %pdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  br i1 %or.cond34, label %do.end, label %do.end15

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %and2, i32 noundef %and4, i32 noundef 7, i32 noundef 12) #10
  br label %cleanup

do.end15:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef 7, i32 noundef %and4, i32 noundef 7, i32 noundef 12) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %do.end, %if.end.cleanup_crit_edge, %t3_get_fw_version.exit.cleanup_crit_edge, %lor.lhs.false2.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end15 ], [ %call9.i.i, %t3_get_fw_version.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call3.i.i, %lor.lhs.false2.i.i.cleanup_crit_edge ], [ %call.i.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vers) #7
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_load_fw(ptr nocapture noundef readonly %adapter, ptr nocapture noundef readonly %fw_data, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %size, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size)
  %cmp = icmp ult i32 %size, 8
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.cleanup31_crit_edge, label %if.end

entry.cleanup31_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup31

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 65540, i32 %size)
  %cmp1 = icmp ugt i32 %size, 65540
  br i1 %cmp1, label %if.end.cleanup31_crit_edge, label %for.body.preheader

if.end.cleanup31_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup31

for.body.preheader:                               ; preds = %if.end
  %div66 = lshr i32 %size, 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.079 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %csum.078 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i32, ptr %fw_data, i32 %i.079
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, %csum.078
  %inc = add nuw nsw i32 %i.079, 1
  %exitcond.not = icmp eq i32 %inc, %div66
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add)
  %cmp5.not = icmp eq i32 %add, -1
  br i1 %cmp5.not, label %if.end7, label %do.end

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %add) #10
  br label %cleanup31

if.end7:                                          ; preds = %for.end
  %call.i = tail call fastcc i32 @sf1_write(ptr noundef %adapter, i32 noundef 1, i32 noundef 0, i32 noundef 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp1.not.i, label %lor.lhs.false.i, label %if.end7.do.end27_crit_edge

if.end7.do.end27_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27

lor.lhs.false.i:                                  ; preds = %if.end7
  %call2.i = tail call fastcc i32 @sf1_write(ptr noundef %adapter, i32 noundef 4, i32 noundef 0, i32 noundef 2008) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.not.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.not.i, label %t3_flash_erase_sectors.exit, label %lor.lhs.false.i.do.end27_crit_edge

lor.lhs.false.i.do.end27_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27

t3_flash_erase_sectors.exit:                      ; preds = %lor.lhs.false.i
  %call5.i = tail call fastcc i32 @flash_wait_op(ptr noundef %adapter, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool8.not = icmp eq i32 %call5.i, 0
  br i1 %tobool8.not, label %if.end10, label %t3_flash_erase_sectors.exit.do.end27_crit_edge

t3_flash_erase_sectors.exit.do.end27_crit_edge:   ; preds = %t3_flash_erase_sectors.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27

if.end10:                                         ; preds = %t3_flash_erase_sectors.exit
  %sub = add i32 %size, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool12.not80 = icmp eq i32 %sub, 0
  br i1 %tobool12.not80, label %if.end10.out_crit_edge, label %if.end10.for.body13_crit_edge

if.end10.for.body13_crit_edge:                    ; preds = %if.end10
  br label %for.body13

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.body13:                                       ; preds = %cleanup.for.body13_crit_edge, %if.end10.for.body13_crit_edge
  %addr.083 = phi i32 [ %add19, %cleanup.for.body13_crit_edge ], [ 458752, %if.end10.for.body13_crit_edge ]
  %size.addr.082 = phi i32 [ %sub20, %cleanup.for.body13_crit_edge ], [ %sub, %if.end10.for.body13_crit_edge ]
  %fw_data.addr.081 = phi ptr [ %add.ptr, %cleanup.for.body13_crit_edge ], [ %fw_data, %if.end10.for.body13_crit_edge ]
  %4 = tail call i32 @llvm.umin.i32(i32 %size.addr.082, i32 256)
  %call15 = tail call fastcc i32 @t3_write_flash(ptr noundef %adapter, i32 noundef %addr.083, i32 noundef %4, ptr noundef %fw_data.addr.081)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %cleanup, label %for.body13.do.end27_crit_edge

for.body13.do.end27_crit_edge:                    ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27

cleanup:                                          ; preds = %for.body13
  %add19 = add i32 %addr.083, %4
  %add.ptr = getelementptr i8, ptr %fw_data.addr.081, i32 %4
  %sub20 = sub i32 %size.addr.082, %4
  %tobool12.not = icmp eq i32 %sub20, 0
  br i1 %tobool12.not, label %cleanup.out_crit_edge, label %cleanup.for.body13_crit_edge

cleanup.for.body13_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body13

cleanup.out_crit_edge:                            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

out:                                              ; preds = %cleanup.out_crit_edge, %if.end10.out_crit_edge
  %fw_data.addr.0.lcssa = phi ptr [ %fw_data, %if.end10.out_crit_edge ], [ %add.ptr, %cleanup.out_crit_edge ]
  %call22 = tail call fastcc i32 @t3_write_flash(ptr noundef %adapter, i32 noundef 524284, i32 noundef 4, ptr noundef %fw_data.addr.0.lcssa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %out.cleanup31_crit_edge, label %out.do.end27_crit_edge

out.do.end27_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27

out.cleanup31_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup31

do.end27:                                         ; preds = %out.do.end27_crit_edge, %for.body13.do.end27_crit_edge, %t3_flash_erase_sectors.exit.do.end27_crit_edge, %lor.lhs.false.i.do.end27_crit_edge, %if.end7.do.end27_crit_edge
  %ret.075 = phi i32 [ %call22, %out.do.end27_crit_edge ], [ %call5.i, %t3_flash_erase_sectors.exit.do.end27_crit_edge ], [ %call.i, %if.end7.do.end27_crit_edge ], [ %call2.i, %lor.lhs.false.i.do.end27_crit_edge ], [ %call15, %for.body13.do.end27_crit_edge ]
  %pdev28 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %5 = ptrtoint ptr %pdev28 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev28, align 8
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29, ptr noundef nonnull @.str.16, i32 noundef %ret.075) #10
  br label %cleanup31

cleanup31:                                        ; preds = %do.end27, %out.cleanup31_crit_edge, %do.end, %if.end.cleanup31_crit_edge, %entry.cleanup31_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %entry.cleanup31_crit_edge ], [ -27, %if.end.cleanup31_crit_edge ], [ %ret.075, %do.end27 ], [ 0, %out.cleanup31_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @t3_write_flash(ptr nocapture noundef readonly %adapter, i32 noundef %addr, i32 noundef %n, ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [64 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #7
  %0 = call ptr @memset(ptr %buf, i32 255, i32 256)
  %and = and i32 %addr, 255
  %add = add i32 %n, %addr
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %add)
  %cmp = icmp ugt i32 %add, 524288
  %add1 = add i32 %and, %n
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add1)
  %cmp2 = icmp ugt i32 %add1, 256
  %or.cond = or i1 %cmp, %cmp2
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @sf1_write(ptr noundef %adapter, i32 noundef 1, i32 noundef 0, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3.not = icmp eq i32 %call, 0
  br i1 %cmp3.not, label %lor.lhs.false4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false4:                                   ; preds = %if.end
  %1 = or i32 %addr, 33554432
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %call5 = tail call fastcc i32 @sf1_write(ptr noundef %adapter, i32 noundef 4, i32 noundef 1, i32 noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 0
  br i1 %cmp6.not, label %for.cond.preheader, label %lor.lhs.false4.cleanup_crit_edge

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %tobool.not79 = icmp eq i32 %n, 0
  br i1 %tobool.not79, label %for.cond.preheader.for.end21_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end21_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end21

for.cond:                                         ; preds = %for.end.loopexit
  %uglygep = getelementptr i8, ptr %data.addr.080, i32 %3
  %sub = sub i32 %left.081, %3
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %for.cond.for.end21_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.for.end21_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end21

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %left.081 = phi i32 [ %sub, %for.cond.for.body_crit_edge ], [ %n, %for.cond.preheader.for.body_crit_edge ]
  %data.addr.080 = phi ptr [ %uglygep, %for.cond.for.body_crit_edge ], [ %data, %for.cond.preheader.for.body_crit_edge ]
  %3 = tail call i32 @llvm.umin.i32(i32 %left.081, i32 4)
  br label %for.body12

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %for.body
  %val.077 = phi i32 [ %add13, %for.body12.for.body12_crit_edge ], [ 0, %for.body ]
  %i.076 = phi i32 [ %inc, %for.body12.for.body12_crit_edge ], [ 0, %for.body ]
  %data.addr.175 = phi ptr [ %incdec.ptr, %for.body12.for.body12_crit_edge ], [ %data.addr.080, %for.body ]
  %shl = shl i32 %val.077, 8
  %incdec.ptr = getelementptr i8, ptr %data.addr.175, i32 1
  %4 = ptrtoint ptr %data.addr.175 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data.addr.175, align 1
  %conv = zext i8 %5 to i32
  %add13 = or i32 %shl, %conv
  %inc = add nuw nsw i32 %i.076, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body12.for.body12_crit_edge

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body12

for.end.loopexit:                                 ; preds = %for.body12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %left.081)
  %cmp14 = icmp ugt i32 %left.081, 4
  %conv15 = zext i1 %cmp14 to i32
  %call16 = tail call fastcc i32 @sf1_write(ptr noundef %adapter, i32 noundef %3, i32 noundef %conv15, i32 noundef %add13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %for.cond, label %for.end.loopexit.cleanup_crit_edge

for.end.loopexit.cleanup_crit_edge:               ; preds = %for.end.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end21:                                        ; preds = %for.cond.for.end21_crit_edge, %for.cond.preheader.for.end21_crit_edge
  %data.addr.0.lcssa = phi ptr [ %data, %for.cond.preheader.for.end21_crit_edge ], [ %uglygep, %for.cond.for.end21_crit_edge ]
  %call22 = tail call fastcc i32 @flash_wait_op(ptr noundef %adapter, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23.not = icmp eq i32 %call22, 0
  br i1 %cmp23.not, label %if.end26, label %for.end21.cleanup_crit_edge

for.end21.cleanup_crit_edge:                      ; preds = %for.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %for.end21
  %and27 = and i32 %addr, -256
  %call28 = call fastcc i32 @t3_read_flash(ptr noundef %adapter, i32 noundef %and27, i32 noundef 64, ptr noundef nonnull %buf, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %idx.neg = sub i32 0, %n
  %add.ptr = getelementptr i8, ptr %data.addr.0.lcssa, i32 %idx.neg
  %add.ptr33 = getelementptr i8, ptr %buf, i32 %and
  %bcmp = call i32 @bcmp(ptr %add.ptr, ptr %add.ptr33, i32 %n) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool35.not = icmp eq i32 %bcmp, 0
  %. = select i1 %tobool35.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end26.cleanup_crit_edge, %for.end21.cleanup_crit_edge, %for.end.loopexit.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call5, %lor.lhs.false4.cleanup_crit_edge ], [ %call22, %for.end21.cleanup_crit_edge ], [ %call28, %if.end26.cleanup_crit_edge ], [ %., %if.end31 ], [ %call16, %for.end.loopexit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_cim_ctl_blk_read(ptr nocapture noundef readonly %adap, i32 noundef %addr, i32 noundef %n, ptr nocapture noundef writeonly %valp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 688
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %3 = and i32 %2, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %land.rhs.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.rhs.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %tobool2.not32 = icmp eq i32 %n, 0
  br i1 %tobool2.not32, label %land.rhs.preheader.cleanup_crit_edge, label %land.rhs.preheader.for.body_crit_edge

land.rhs.preheader.for.body_crit_edge:            ; preds = %land.rhs.preheader
  br label %for.body

land.rhs.preheader.cleanup_crit_edge:             ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %land.rhs.preheader.for.body_crit_edge
  %dec35.in = phi i32 [ %dec35, %for.inc.for.body_crit_edge ], [ %n, %land.rhs.preheader.for.body_crit_edge ]
  %addr.addr.02334 = phi i32 [ %add8, %for.inc.for.body_crit_edge ], [ %addr, %land.rhs.preheader.for.body_crit_edge ]
  %valp.addr.02533 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %valp, %land.rhs.preheader.for.body_crit_edge ]
  %dec35 = add i32 %dec35.in, -1
  %add = add i32 %addr.addr.02334, 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %add) #7
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %6, i32 688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %4) #7, !srcloc !340
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %8, i32 688
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %10 = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp31.i.i = icmp eq i32 %10, 0
  br i1 %cmp31.i.i, label %for.body.for.inc_crit_edge, label %if.end4.i.i.preheader

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end4.i.i.preheader:                            ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 429496) #7
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 688
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %15 = and i32 %14, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i.i = icmp eq i32 %15, 0
  br i1 %cmp.i.i, label %if.end4.i.i.preheader.for.inc_crit_edge, label %if.end4.i.i.1

if.end4.i.i.preheader.for.inc_crit_edge:          ; preds = %if.end4.i.i.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end4.i.i.1:                                    ; preds = %if.end4.i.i.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 429496) #7
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i.i.1 = getelementptr i8, ptr %18, i32 688
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.1) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %20 = and i32 %19, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i.i.1 = icmp eq i32 %20, 0
  br i1 %cmp.i.i.1, label %if.end4.i.i.1.for.inc_crit_edge, label %if.end4.i.i.2

if.end4.i.i.1.for.inc_crit_edge:                  ; preds = %if.end4.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end4.i.i.2:                                    ; preds = %if.end4.i.i.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 429496) #7
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i.i.2 = getelementptr i8, ptr %23, i32 688
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.2) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %25 = and i32 %24, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i.i.2 = icmp eq i32 %25, 0
  br i1 %cmp.i.i.2, label %if.end4.i.i.2.for.inc_crit_edge, label %if.end4.i.i.3

if.end4.i.i.2.for.inc_crit_edge:                  ; preds = %if.end4.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end4.i.i.3:                                    ; preds = %if.end4.i.i.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 429496) #7
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i.i.3 = getelementptr i8, ptr %28, i32 688
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.3) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %30 = and i32 %29, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i.i.3 = icmp eq i32 %30, 0
  br i1 %cmp.i.i.3, label %if.end4.i.i.3.for.inc_crit_edge, label %if.end4.i.i.3.cleanup_crit_edge

if.end4.i.i.3.cleanup_crit_edge:                  ; preds = %if.end4.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4.i.i.3.for.inc_crit_edge:                  ; preds = %if.end4.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %if.end4.i.i.3.for.inc_crit_edge, %if.end4.i.i.2.for.inc_crit_edge, %if.end4.i.i.1.for.inc_crit_edge, %if.end4.i.i.preheader.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %32, i32 692
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18) #7, !srcloc !337
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %incdec.ptr = getelementptr i32, ptr %valp.addr.02533, i32 1
  %35 = ptrtoint ptr %valp.addr.02533 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %valp.addr.02533, align 4
  %add8 = add i32 %addr.addr.02334, 4
  %tobool2.not = icmp eq i32 %dec35, 0
  br i1 %tobool2.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end4.i.i.3.cleanup_crit_edge, %land.rhs.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ 0, %land.rhs.preheader.cleanup_crit_edge ], [ -11, %if.end4.i.i.3.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t3_link_changed(ptr noundef %adapter, i32 noundef %port_id) local_unnamed_addr #0 align 64 {
entry:
  %link_ok = alloca i32, align 4
  %speed = alloca i32, align 4
  %duplex = alloca i32, align 4
  %fc = alloca i32, align 4
  %rx_cfg = alloca i32, align 4
  %rx_hash_high = alloca i32, align 4
  %rx_hash_low = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link_ok) #7
  %0 = ptrtoint ptr %link_ok to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %link_ok, align 4, !annotation !341
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %speed) #7
  %1 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %speed, align 4, !annotation !341
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %duplex) #7
  %2 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %duplex, align 4, !annotation !341
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fc) #7
  %3 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %fc, align 4, !annotation !341
  %arrayidx.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 21, i32 %port_id
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %phy1 = getelementptr i8, ptr %5, i32 2316
  %mac2 = getelementptr i8, ptr %5, i32 5624
  %ops = getelementptr i8, ptr %5, i32 2336
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %get_link_status = getelementptr inbounds %struct.cphy_ops, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %get_link_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_link_status, align 4
  %call3 = call i32 %9(ptr noundef %phy1, ptr noundef nonnull %link_ok, ptr noundef nonnull %speed, ptr noundef nonnull %duplex, ptr noundef nonnull %fc) #7
  %link_ok4 = getelementptr i8, ptr %5, i32 6116
  %10 = ptrtoint ptr %link_ok4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %link_ok4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

land.lhs.true:                                    ; preds = %entry
  %12 = ptrtoint ptr %link_ok to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %link_ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool5.not = icmp eq i32 %13, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end12_crit_edge, label %if.then

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_cfg) #7
  %14 = ptrtoint ptr %rx_cfg to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %rx_cfg, align 4, !annotation !341
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_hash_high) #7
  %15 = ptrtoint ptr %rx_hash_high to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %rx_hash_high, align 4, !annotation !341
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_hash_low) #7
  %16 = ptrtoint ptr %rx_hash_low to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %rx_hash_low, align 4, !annotation !341
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %offset.i = getelementptr i8, ptr %18, i32 5628
  %19 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset.i, align 4
  %add.i = add i32 %20, 2164
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  call void @arm_heavy_mb() #7
  %regs.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %21 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i135 = getelementptr i8, ptr %22, i32 %add.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i135, i32 131072) #7, !srcloc !340
  call fastcc void @t3_gate_rx_traffic(ptr noundef %mac2, ptr noundef nonnull %rx_cfg, ptr noundef nonnull %rx_hash_high, ptr noundef nonnull %rx_hash_low)
  %offset = getelementptr i8, ptr %5, i32 5628
  %23 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset, align 4
  %add = add i32 %24, 2060
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  call void @arm_heavy_mb() #7
  %25 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !340
  %call6 = call i32 @t3_mac_enable(ptr noundef %mac2, i32 noundef 1) #7
  %27 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %offset, align 4
  %add8 = add i32 %28, 2156
  %29 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i137 = getelementptr i8, ptr %30, i32 %add8
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i137) #7, !srcloc !337
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %32 = and i32 %31, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool10.not = icmp eq i32 %32, 0
  br i1 %tobool10.not, label %if.then.if.end_crit_edge, label %if.then11

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %link_faults = getelementptr i8, ptr %5, i32 6092
  %33 = ptrtoint ptr %link_faults to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %link_faults, align 4
  %inc = add i32 %34, 1
  store i32 %inc, ptr %link_faults, align 4
  %link_fault = getelementptr i8, ptr %5, i32 6148
  %35 = ptrtoint ptr %link_fault to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %link_fault, align 4
  br label %if.end

if.end:                                           ; preds = %if.then11, %if.then.if.end_crit_edge
  %36 = ptrtoint ptr %rx_cfg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rx_cfg, align 4
  %38 = ptrtoint ptr %rx_hash_high to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rx_hash_high, align 4
  %40 = ptrtoint ptr %rx_hash_low to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_hash_low, align 4
  call void @t3_mac_enable_exact_filters(ptr noundef %mac2) #7
  %42 = ptrtoint ptr %mac2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mac2, align 8
  %regs.i.i.i = getelementptr inbounds %struct.adapter, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %45, i32 2064
  %46 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !337
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %47 = and i32 %46, -117440513
  %48 = call i32 @llvm.bswap.i32(i32 %47) #7
  %or.i.i = or i32 %48, %37
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  call void @arm_heavy_mb() #7
  %49 = call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  %50 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %51, i32 2064
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i, i32 %49) #7, !srcloc !340
  %52 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i9.i.i = getelementptr i8, ptr %53, i32 2064
  %54 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i.i) #7, !srcloc !337
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %55 = ptrtoint ptr %mac2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mac2, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  call void @arm_heavy_mb() #7
  %57 = call i32 @llvm.bswap.i32(i32 %39) #7
  %regs.i.i138 = getelementptr inbounds %struct.adapter, ptr %56, i32 0, i32 2
  %58 = ptrtoint ptr %regs.i.i138 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i.i138, align 4
  %add.ptr.i.i139 = getelementptr i8, ptr %59, i32 2072
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i139, i32 %57) #7, !srcloc !340
  %60 = ptrtoint ptr %mac2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mac2, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  call void @arm_heavy_mb() #7
  %62 = call i32 @llvm.bswap.i32(i32 %41) #7
  %regs.i6.i = getelementptr inbounds %struct.adapter, ptr %61, i32 0, i32 2
  %63 = ptrtoint ptr %regs.i6.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs.i6.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %64, i32 2068
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %62) #7, !srcloc !340
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_hash_low) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_hash_high) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_cfg) #7
  br label %if.end12

if.end12:                                         ; preds = %if.end, %land.lhs.true.if.end12_crit_edge, %entry.if.end12_crit_edge
  %requested_fc = getelementptr i8, ptr %5, i32 6110
  %65 = ptrtoint ptr %requested_fc to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %requested_fc, align 2
  %conv = zext i8 %66 to i32
  %and13 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %fc to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %fc, align 4
  %and18 = and i32 %68, %conv
  br label %if.end22

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %and21 = and i32 %conv, 3
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then15
  %storemerge = phi i32 [ %and21, %if.else ], [ %and18, %if.then15 ]
  %69 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %storemerge, ptr %fc, align 4
  %70 = ptrtoint ptr %link_ok to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %link_ok, align 4
  %72 = ptrtoint ptr %link_ok4 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %link_ok4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %73)
  %cmp = icmp eq i32 %71, %73
  br i1 %cmp, label %land.lhs.true25, label %land.lhs.true45

land.lhs.true25:                                  ; preds = %if.end22
  %74 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %speed, align 4
  %speed26 = getelementptr i8, ptr %5, i32 6106
  %76 = ptrtoint ptr %speed26 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %speed26, align 2
  %conv27 = zext i16 %77 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %conv27)
  %cmp28 = icmp eq i32 %75, %conv27
  br i1 %cmp28, label %land.lhs.true30, label %land.lhs.true25.if.end58_crit_edge

land.lhs.true25.if.end58_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

land.lhs.true30:                                  ; preds = %land.lhs.true25
  %78 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %duplex, align 4
  %duplex31 = getelementptr i8, ptr %5, i32 6109
  %80 = ptrtoint ptr %duplex31 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %duplex31, align 1
  %conv32 = zext i8 %81 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %conv32)
  %cmp33 = icmp eq i32 %79, %conv32
  br i1 %cmp33, label %land.lhs.true35, label %land.lhs.true30.if.end58_crit_edge

land.lhs.true30.if.end58_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

land.lhs.true35:                                  ; preds = %land.lhs.true30
  %fc36 = getelementptr i8, ptr %5, i32 6111
  %82 = ptrtoint ptr %fc36 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %fc36, align 1
  %conv37 = zext i8 %83 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge, i32 %conv37)
  %cmp38 = icmp eq i32 %storemerge, %conv37
  br i1 %cmp38, label %land.lhs.true35.cleanup_crit_edge, label %land.lhs.true35.if.end58_crit_edge

land.lhs.true35.if.end58_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

land.lhs.true35.cleanup_crit_edge:                ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true45:                                  ; preds = %if.end22
  %rev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 13
  %84 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp46.not = icmp eq i32 %85, 0
  br i1 %cmp46.not, label %land.lhs.true45.if.end58_crit_edge, label %land.lhs.true48

land.lhs.true45.if.end58_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

land.lhs.true48:                                  ; preds = %land.lhs.true45
  %info.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 5
  %86 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %info.i, align 4
  %caps.i = getelementptr inbounds %struct.adapter_info, ptr %87, i32 0, i32 5
  %88 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %caps.i, align 4
  %and.i = and i32 %89, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool50.not = icmp eq i32 %and.i, 0
  br i1 %tobool50.not, label %land.lhs.true48.if.end58_crit_edge, label %if.then51

land.lhs.true48.if.end58_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then51:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool52.not = icmp eq i32 %71, 0
  br i1 %tobool52.not, label %if.then51.if.end54_crit_edge, label %if.then53

if.then51.if.end54_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then53:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  call void @t3b_pcs_reset(ptr noundef %mac2) #7
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.then51.if.end54_crit_edge
  %offset55 = getelementptr i8, ptr %5, i32 5628
  %90 = ptrtoint ptr %offset55 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %offset55, align 4
  %add56 = add i32 %91, 2268
  %92 = ptrtoint ptr %link_ok to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %link_ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool57.not = icmp eq i32 %93, 0
  %cond = select i1 %tobool57.not, i32 0, i32 50331648
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  call void @arm_heavy_mb() #7
  %regs.i140 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %94 = ptrtoint ptr %regs.i140 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs.i140, align 4
  %add.ptr.i141 = getelementptr i8, ptr %95, i32 %add56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i141, i32 %cond) #7, !srcloc !340
  br label %if.end58

if.end58:                                         ; preds = %if.end54, %land.lhs.true48.if.end58_crit_edge, %land.lhs.true45.if.end58_crit_edge, %land.lhs.true35.if.end58_crit_edge, %land.lhs.true30.if.end58_crit_edge, %land.lhs.true25.if.end58_crit_edge
  %96 = ptrtoint ptr %link_ok to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %link_ok, align 4
  %98 = ptrtoint ptr %link_ok4 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %link_ok4, align 4
  %99 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp60 = icmp slt i32 %100, 0
  %phi.cast = trunc i32 %100 to i16
  %spec.select = select i1 %cmp60, i16 -1, i16 %phi.cast
  %speed64 = getelementptr i8, ptr %5, i32 6106
  %101 = ptrtoint ptr %speed64 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %spec.select, ptr %speed64, align 2
  %102 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp65 = icmp slt i32 %103, 0
  %phi.cast133 = trunc i32 %103 to i8
  %cond70 = select i1 %cmp65, i8 -1, i8 %phi.cast133
  %duplex72 = getelementptr i8, ptr %5, i32 6109
  %104 = ptrtoint ptr %duplex72 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %cond70, ptr %duplex72, align 1
  %105 = ptrtoint ptr %link_ok to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %link_ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool73.not = icmp eq i32 %106, 0
  br i1 %tobool73.not, label %if.end58.land.end_crit_edge, label %land.lhs.true74

if.end58.land.end_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.lhs.true74:                                  ; preds = %if.end58
  %107 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %108)
  %cmp75 = icmp sgt i32 %108, -1
  br i1 %cmp75, label %land.lhs.true77, label %land.lhs.true74.land.rhs_crit_edge

land.lhs.true74.land.rhs_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

land.lhs.true77:                                  ; preds = %land.lhs.true74
  %autoneg = getelementptr i8, ptr %5, i32 6112
  %109 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %110)
  %cmp79 = icmp eq i8 %110, 1
  br i1 %cmp79, label %if.then81, label %land.lhs.true77.if.end85_crit_edge

land.lhs.true77.if.end85_crit_edge:               ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.then81:                                        ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #9
  %111 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %duplex, align 4
  %113 = ptrtoint ptr %fc to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %fc, align 4
  %call82 = call i32 @t3_mac_set_speed_duplex_fc(ptr noundef %mac2, i32 noundef %108, i32 noundef %112, i32 noundef %114) #7
  %115 = ptrtoint ptr %fc to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %fc, align 4
  %conv83 = trunc i32 %116 to i8
  %fc84 = getelementptr i8, ptr %5, i32 6111
  %117 = ptrtoint ptr %fc84 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv83, ptr %fc84, align 1
  br label %if.end85

if.end85:                                         ; preds = %if.then81, %land.lhs.true77.if.end85_crit_edge
  %118 = ptrtoint ptr %link_ok to i32
  call void @__asan_load4_noabort(i32 %118)
  %.pr = load i32, ptr %link_ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool86.not = icmp eq i32 %.pr, 0
  br i1 %tobool86.not, label %if.end85.land.end_crit_edge, label %if.end85.land.rhs_crit_edge

if.end85.land.rhs_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

if.end85.land.end_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %if.end85.land.rhs_crit_edge, %land.lhs.true74.land.rhs_crit_edge
  %link_fault87 = getelementptr i8, ptr %5, i32 6148
  %119 = ptrtoint ptr %link_fault87 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %link_fault87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool88.not = icmp eq i32 %120, 0
  %phi.cast134 = zext i1 %tobool88.not to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end85.land.end_crit_edge, %if.end58.land.end_crit_edge
  %121 = phi i32 [ 0, %if.end85.land.end_crit_edge ], [ %phi.cast134, %land.rhs ], [ 0, %if.end58.land.end_crit_edge ]
  %122 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %speed, align 4
  %124 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %duplex, align 4
  %126 = ptrtoint ptr %fc to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %fc, align 4
  call void @t3_os_link_changed(ptr noundef %adapter, i32 noundef %port_id, i32 noundef %121, i32 noundef %123, i32 noundef %125, i32 noundef %127) #7
  br label %cleanup

cleanup:                                          ; preds = %land.end, %land.lhs.true35.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fc) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %duplex) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %speed) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_ok) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t3_xgm_intr_enable(ptr nocapture noundef readonly %adapter, i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 21, i32 %idx
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %offset = getelementptr i8, ptr %1, i32 5628
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %add = add i32 %3, 2164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 131072) #7, !srcloc !340
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @t3_gate_rx_traffic(ptr noundef %mac, ptr nocapture noundef writeonly %rx_cfg, ptr nocapture noundef writeonly %rx_hash_high, ptr nocapture noundef writeonly %rx_hash_low) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @t3_mac_disable_exact_filters(ptr noundef %mac) #7
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac, align 8
  %regs.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 2064
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !337
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %6 = ptrtoint ptr %rx_cfg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %rx_cfg, align 4
  %7 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mac, align 8
  %regs.i.i = getelementptr inbounds %struct.adapter, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 2064
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %12 = and i32 %11, -117440513
  %13 = or i32 %12, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %15, i32 2064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %13) #7, !srcloc !340
  %16 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %17, i32 2064
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %19 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mac, align 8
  %regs.i14 = getelementptr inbounds %struct.adapter, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %regs.i14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i14, align 4
  %add.ptr.i15 = getelementptr i8, ptr %22, i32 2072
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15) #7, !srcloc !337
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %25 = ptrtoint ptr %rx_hash_high to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %rx_hash_high, align 4
  %26 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mac, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %regs.i16 = getelementptr inbounds %struct.adapter, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %regs.i16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i16, align 4
  %add.ptr.i17 = getelementptr i8, ptr %29, i32 2072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 0) #7, !srcloc !340
  %30 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mac, align 8
  %regs.i18 = getelementptr inbounds %struct.adapter, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %regs.i18 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i18, align 4
  %add.ptr.i19 = getelementptr i8, ptr %33, i32 2068
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #7, !srcloc !337
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %36 = ptrtoint ptr %rx_hash_low to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %rx_hash_low, align 4
  %37 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mac, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %regs.i20 = getelementptr inbounds %struct.adapter, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %regs.i20 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i20, align 4
  %add.ptr.i21 = getelementptr i8, ptr %40, i32 2068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 0) #7, !srcloc !340
  tail call void @msleep(i32 noundef 1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_mac_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3b_pcs_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_mac_set_speed_duplex_fc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_os_link_changed(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t3_link_fault(ptr noundef %adapter, i32 noundef %port_id) local_unnamed_addr #0 align 64 {
entry:
  %link_ok = alloca i32, align 4
  %speed = alloca i32, align 4
  %duplex = alloca i32, align 4
  %fc = alloca i32, align 4
  %rx_cfg = alloca i32, align 4
  %rx_hash_high = alloca i32, align 4
  %rx_hash_low = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 21, i32 %port_id
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %mac1 = getelementptr i8, ptr %1, i32 5624
  %phy2 = getelementptr i8, ptr %1, i32 2316
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link_ok) #7
  %2 = ptrtoint ptr %link_ok to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %link_ok, align 4, !annotation !341
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %speed) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %duplex) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fc) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_cfg) #7
  %3 = ptrtoint ptr %rx_cfg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %rx_cfg, align 4, !annotation !341
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_hash_high) #7
  %4 = ptrtoint ptr %rx_hash_high to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %rx_hash_high, align 4, !annotation !341
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_hash_low) #7
  %5 = ptrtoint ptr %rx_hash_low to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %rx_hash_low, align 4, !annotation !341
  call fastcc void @t3_gate_rx_traffic(ptr noundef %mac1, ptr noundef nonnull %rx_cfg, ptr noundef nonnull %rx_hash_high, ptr noundef nonnull %rx_hash_low)
  %rev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 13
  %6 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %info.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 5
  %8 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info.i, align 4
  %caps.i = getelementptr inbounds %struct.adapter_info, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %caps.i, align 4
  %and.i = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %offset = getelementptr i8, ptr %1, i32 5628
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset, align 4
  %add = add i32 %13, 2268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !340
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %offset4 = getelementptr i8, ptr %1, i32 5628
  %16 = ptrtoint ptr %offset4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset4, align 4
  %add5 = add i32 %17, 2060
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %regs.i80 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %18 = ptrtoint ptr %regs.i80 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i80, align 4
  %add.ptr.i81 = getelementptr i8, ptr %19, i32 %add5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81, i32 0) #7, !srcloc !340
  %call6 = tail call i32 @t3_mac_enable(ptr noundef %mac1, i32 noundef 1) #7
  %20 = ptrtoint ptr %rx_cfg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_cfg, align 4
  %22 = ptrtoint ptr %rx_hash_high to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_hash_high, align 4
  %24 = ptrtoint ptr %rx_hash_low to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_hash_low, align 4
  tail call void @t3_mac_enable_exact_filters(ptr noundef %mac1) #7
  %26 = ptrtoint ptr %mac1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mac1, align 8
  %regs.i.i.i = getelementptr inbounds %struct.adapter, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %29, i32 2064
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %31 = and i32 %30, -117440513
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #7
  %or.i.i = or i32 %32, %21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %33 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  %34 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %35, i32 2064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i, i32 %33) #7, !srcloc !340
  %36 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i9.i.i = getelementptr i8, ptr %37, i32 2064
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %39 = ptrtoint ptr %mac1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mac1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %41 = tail call i32 @llvm.bswap.i32(i32 %23) #7
  %regs.i.i = getelementptr inbounds %struct.adapter, ptr %40, i32 0, i32 2
  %42 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i82 = getelementptr i8, ptr %43, i32 2072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i82, i32 %41) #7, !srcloc !340
  %44 = ptrtoint ptr %mac1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mac1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %46 = tail call i32 @llvm.bswap.i32(i32 %25) #7
  %regs.i6.i = getelementptr inbounds %struct.adapter, ptr %45, i32 0, i32 2
  %47 = ptrtoint ptr %regs.i6.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i6.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %48, i32 2068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %46) #7, !srcloc !340
  %49 = ptrtoint ptr %offset4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %offset4, align 4
  %add8 = add i32 %50, 2156
  %51 = ptrtoint ptr %regs.i80 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i80, align 4
  %add.ptr.i84 = getelementptr i8, ptr %52, i32 %add8
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i84) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %link_ok10 = getelementptr i8, ptr %1, i32 6116
  %54 = ptrtoint ptr %link_ok10 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %link_ok10, align 4
  %56 = ptrtoint ptr %link_ok to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %link_ok, align 4
  %speed11 = getelementptr i8, ptr %1, i32 6106
  %57 = ptrtoint ptr %speed11 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %speed11, align 2
  %conv = zext i16 %58 to i32
  %59 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv, ptr %speed, align 4
  %duplex12 = getelementptr i8, ptr %1, i32 6109
  %60 = ptrtoint ptr %duplex12 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %duplex12, align 1
  %conv13 = zext i8 %61 to i32
  %62 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %conv13, ptr %duplex, align 4
  %fc14 = getelementptr i8, ptr %1, i32 6111
  %63 = ptrtoint ptr %fc14 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %fc14, align 1
  %conv15 = zext i8 %64 to i32
  %65 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv15, ptr %fc, align 4
  %ops = getelementptr i8, ptr %1, i32 2336
  %66 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops, align 4
  %get_link_status = getelementptr inbounds %struct.cphy_ops, ptr %67, i32 0, i32 10
  %68 = ptrtoint ptr %get_link_status to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %get_link_status, align 4
  %call16 = call i32 %69(ptr noundef %phy2, ptr noundef nonnull %link_ok, ptr noundef nonnull %speed, ptr noundef nonnull %duplex, ptr noundef nonnull %fc) #7
  %70 = and i32 %53, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool17.not = icmp eq i32 %70, 0
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end
  %71 = ptrtoint ptr %link_ok10 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %link_ok10, align 4
  %72 = ptrtoint ptr %speed11 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 -1, ptr %speed11, align 2
  %73 = ptrtoint ptr %duplex12 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 -1, ptr %duplex12, align 1
  call void @t3_os_link_fault(ptr noundef %adapter, i32 noundef %port_id, i32 noundef 0) #7
  %74 = ptrtoint ptr %link_ok to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %link_ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool22.not = icmp eq i32 %75, 0
  br i1 %tobool22.not, label %if.then18.if.end46_crit_edge, label %if.then23

if.then18.if.end46_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then23:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  %link_faults = getelementptr i8, ptr %1, i32 6092
  %76 = ptrtoint ptr %link_faults to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %link_faults, align 4
  %inc = add i32 %77, 1
  store i32 %inc, ptr %link_faults, align 4
  br label %if.end46

if.else:                                          ; preds = %if.end
  %78 = ptrtoint ptr %link_ok to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %link_ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool25.not = icmp eq i32 %79, 0
  br i1 %tobool25.not, label %if.else.if.end29_crit_edge, label %if.then26

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %offset4 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %offset4, align 4
  %add28 = add i32 %81, 2268
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  call void @arm_heavy_mb() #7
  %82 = ptrtoint ptr %regs.i80 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regs.i80, align 4
  %add.ptr.i86 = getelementptr i8, ptr %83, i32 %add28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86, i32 50331648) #7, !srcloc !340
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.else.if.end29_crit_edge
  %link_fault30 = getelementptr i8, ptr %1, i32 6148
  %84 = ptrtoint ptr %link_fault30 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %link_fault30, align 4
  %85 = ptrtoint ptr %link_ok to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %link_ok, align 4
  %conv32 = and i32 %86, 255
  %87 = ptrtoint ptr %link_ok10 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %conv32, ptr %link_ok10, align 4
  %88 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp34 = icmp slt i32 %89, 0
  %phi.cast = trunc i32 %89 to i16
  %spec.select = select i1 %cmp34, i16 -1, i16 %phi.cast
  %90 = ptrtoint ptr %speed11 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %spec.select, ptr %speed11, align 2
  %91 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp38 = icmp slt i32 %92, 0
  %phi.cast79 = trunc i32 %92 to i8
  %cond43 = select i1 %cmp38, i8 -1, i8 %phi.cast79
  %93 = ptrtoint ptr %duplex12 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %cond43, ptr %duplex12, align 1
  %94 = ptrtoint ptr %link_ok to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %link_ok, align 4
  call void @t3_os_link_fault(ptr noundef %adapter, i32 noundef %port_id, i32 noundef %95) #7
  br label %if.end46

if.end46:                                         ; preds = %if.end29, %if.then23, %if.then18.if.end46_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_hash_low) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_hash_high) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_cfg) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fc) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %duplex) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %speed) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_ok) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_os_link_fault(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_link_start(ptr noundef %phy, ptr noundef %mac, ptr nocapture noundef %lc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %requested_fc = getelementptr inbounds %struct.link_config, ptr %lc, i32 0, i32 6
  %0 = ptrtoint ptr %requested_fc to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %requested_fc, align 2
  %2 = and i8 %1, 3
  %and = zext i8 %2 to i32
  %link_ok = getelementptr inbounds %struct.link_config, ptr %lc, i32 0, i32 9
  %3 = ptrtoint ptr %link_ok to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %link_ok, align 4
  %4 = ptrtoint ptr %lc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lc, align 4
  %and1 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.else32, label %if.then

if.then:                                          ; preds = %entry
  %advertising = getelementptr inbounds %struct.link_config, ptr %lc, i32 0, i32 1
  %6 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %advertising, align 4
  %and2 = and i32 %7, -24577
  store i32 %and2, ptr %advertising, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool3.not = icmp eq i8 %2, 0
  br i1 %tobool3.not, label %if.then.if.end11_crit_edge, label %if.then4

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then4:                                         ; preds = %if.then
  %or = or i32 %and2, 16384
  %8 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %advertising, align 4
  %and6 = and i32 %and, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.then4.if.end11_crit_edge, label %if.then8

if.then4.if.end11_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then8:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %or10 = or i32 %7, 24576
  %9 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or10, ptr %advertising, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.then4.if.end11_crit_edge, %if.then.if.end11_crit_edge
  %ops = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 6
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %advertise = getelementptr inbounds %struct.cphy_ops, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %advertise to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %advertise, align 4
  %14 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %advertising, align 4
  %call = tail call i32 %13(ptr noundef %phy, i32 noundef %15) #7
  %autoneg = getelementptr inbounds %struct.link_config, ptr %lc, i32 0, i32 8
  %16 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp = icmp eq i8 %17, 0
  br i1 %cmp, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %requested_speed = getelementptr inbounds %struct.link_config, ptr %lc, i32 0, i32 2
  %18 = ptrtoint ptr %requested_speed to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %requested_speed, align 4
  %speed = getelementptr inbounds %struct.link_config, ptr %lc, i32 0, i32 3
  %20 = ptrtoint ptr %speed to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %speed, align 2
  %requested_duplex = getelementptr inbounds %struct.link_config, ptr %lc, i32 0, i32 4
  %21 = ptrtoint ptr %requested_duplex to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %requested_duplex, align 4
  %duplex = getelementptr inbounds %struct.link_config, ptr %lc, i32 0, i32 5
  %23 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %duplex, align 1
  %fc17 = getelementptr inbounds %struct.link_config, ptr %lc, i32 0, i32 7
  %24 = ptrtoint ptr %fc17 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %2, ptr %fc17, align 1
  %conv19 = zext i16 %19 to i32
  %conv21 = zext i8 %22 to i32
  %call22 = tail call i32 @t3_mac_set_speed_duplex_fc(ptr noundef %mac, i32 noundef %conv19, i32 noundef %conv21, i32 noundef %and) #7
  %25 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops, align 4
  %set_speed_duplex = getelementptr inbounds %struct.cphy_ops, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %set_speed_duplex to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_speed_duplex, align 4
  %29 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %speed, align 2
  %conv25 = zext i16 %30 to i32
  %31 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %duplex, align 1
  %conv27 = zext i8 %32 to i32
  %call28 = tail call i32 %28(ptr noundef %phy, i32 noundef %conv25, i32 noundef %conv27) #7
  br label %if.end38

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops, align 4
  %autoneg_enable = getelementptr inbounds %struct.cphy_ops, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %autoneg_enable to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %autoneg_enable, align 4
  %call30 = tail call i32 %36(ptr noundef %phy) #7
  br label %if.end38

if.else32:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call33 = tail call i32 @t3_mac_set_speed_duplex_fc(ptr noundef %mac, i32 noundef -1, i32 noundef -1, i32 noundef %and) #7
  %fc35 = getelementptr inbounds %struct.link_config, ptr %lc, i32 0, i32 7
  %37 = ptrtoint ptr %fc35 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %2, ptr %fc35, align 1
  %ops36 = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 6
  %38 = ptrtoint ptr %ops36 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops36, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %call37 = tail call i32 %41(ptr noundef %phy, i32 noundef 0) #7
  br label %if.end38

if.end38:                                         ; preds = %if.else32, %if.else, %if.then15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t3_set_vlan_accel(ptr nocapture noundef readonly %adapter, i32 noundef %ports, i32 noundef %on) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %ports, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 %shl
  %regs.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 772
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !337
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %neg.i = xor i32 %shl, -1
  %and.i = and i32 %3, %neg.i
  %or.i = or i32 %and.i, %spec.select
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %5 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %6, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %4) #7, !srcloc !340
  %7 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %8, i32 772
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_phy_intr_handler(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 220
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !337
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %nports = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 9
  %4 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp45.not = icmp eq i32 %5, 0
  br i1 %cmp45.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %info = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 5
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.046 = phi i32 [ 0, %for.body.lr.ph ], [ %inc23, %cleanup.for.body_crit_edge ]
  %arrayidx.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 21, i32 %i.046
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %phy = getelementptr i8, ptr %7, i32 2316
  %caps = getelementptr i8, ptr %7, i32 2320
  %8 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %caps, align 4
  %and = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.body
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 4
  %arrayidx = getelementptr %struct.adapter_info, ptr %11, i32 0, i32 4, i32 %i.046
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %13 to i32
  %shl = shl nuw i32 1, %conv
  %and3 = and i32 %shl, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5:                                         ; preds = %if.end
  %ops = getelementptr i8, ptr %7, i32 2336
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %intr_handler = getelementptr inbounds %struct.cphy_ops, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %intr_handler to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %intr_handler, align 4
  %call8 = tail call i32 %17(ptr noundef %phy) #7
  %and9 = and i32 %call8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.then5.if.end12_crit_edge, label %if.then11

if.then5.if.end12_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then11:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @t3_link_changed(ptr noundef %adapter, i32 noundef %i.046)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.then5.if.end12_crit_edge
  %and13 = and i32 %call8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end17_crit_edge, label %if.then15

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %fifo_errors = getelementptr i8, ptr %7, i32 2332
  %18 = ptrtoint ptr %fifo_errors to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fifo_errors, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %fifo_errors, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end12.if.end17_crit_edge
  %and18 = and i32 %call8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %if.then20

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @t3_os_phymod_changed(ptr noundef %adapter, i32 noundef %i.046) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc23 = add nuw i32 %i.046, 1
  %20 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nports, align 4
  %cmp = icmp ult i32 %inc23, %21
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %23, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 %2) #7, !srcloc !340
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_os_phymod_changed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_slow_intr_handler(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1764
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !337
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %slow_intr_mask = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 11
  %4 = ptrtoint ptr %slow_intr_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %slow_intr_mask, align 4
  %and = and i32 %5, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %and1 = and i32 %and, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %variant.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 4, i32 3
  %6 = ptrtoint ptr %variant.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %variant.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %7)
  %cmp.i.not = icmp eq i8 %7, 4
  br i1 %cmp.i.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then3
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 132
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.then6.if.end.i_crit_edge, label %do.end.i

if.then6.if.end.i_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %pdev.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %12 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %15, i32 164
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #7, !srcloc !337
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev.i, ptr noundef nonnull @.str.44, i32 noundef %17) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then6.if.end.i_crit_edge
  %irq_stats.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12
  %call2.i = tail call fastcc i32 @t3_handle_intr_status(ptr noundef %adapter, i32 noundef 132, i32 noundef 8359872, ptr noundef nonnull @pcie_intr_handler.pcie_intr_info, ptr noundef %irq_stats.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end8_crit_edge, label %if.end.i.if.end8.sink.split_crit_edge

if.end.i.if.end8.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.sink.split

if.end.i.if.end8_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.else:                                          ; preds = %if.then3
  %irq_stats.i117 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12
  %call.i = tail call fastcc i32 @t3_handle_intr_status(ptr noundef %adapter, i32 noundef 132, i32 noundef 4194303, ptr noundef nonnull @pci_intr_handler.pcix1_intr_info, ptr noundef %irq_stats.i117) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i118 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i118, label %if.else.if.end8_crit_edge, label %if.else.if.end8.sink.split_crit_edge

if.else.if.end8.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.sink.split

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end8.sink.split:                               ; preds = %if.else.if.end8.sink.split_crit_edge, %if.end.i.if.end8.sink.split_crit_edge
  tail call void @t3_fatal_err(ptr noundef %adapter) #7
  br label %if.end8

if.end8:                                          ; preds = %if.end8.sink.split, %if.else.if.end8_crit_edge, %if.end.i.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %and9 = and i32 %and, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end12_crit_edge, label %if.then11

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @t3_sge_err_intr_handler(ptr noundef %adapter) #7
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end8.if.end12_crit_edge
  %and13 = and i32 %and, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end16_crit_edge, label %if.then15

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %pmrx = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 17
  tail call fastcc void @mc7_intr_handler(ptr noundef %pmrx)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end12.if.end16_crit_edge
  %and17 = and i32 %and, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end16.if.end20_crit_edge, label %if.then19

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %pmtx = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 18
  tail call fastcc void @mc7_intr_handler(ptr noundef %pmtx)
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end16.if.end20_crit_edge
  %and21 = and i32 %and, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end24_crit_edge, label %if.then23

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %cm = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 19
  tail call fastcc void @mc7_intr_handler(ptr noundef %cm)
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end20.if.end24_crit_edge
  %and25 = and i32 %and, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end28_crit_edge, label %if.then27

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then27:                                        ; preds = %if.end24
  %call.i120 = tail call fastcc i32 @t3_handle_intr_status(ptr noundef %adapter, i32 noundef 668, i32 noundef -1, ptr noundef nonnull @cim_intr_handler.cim_intr_info, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %tobool.not.i121 = icmp eq i32 %call.i120, 0
  br i1 %tobool.not.i121, label %if.then27.if.end28_crit_edge, label %if.then.i122

if.then27.if.end28_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then.i122:                                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @t3_fatal_err(ptr noundef %adapter) #7
  br label %if.end28

if.end28:                                         ; preds = %if.then.i122, %if.then27.if.end28_crit_edge, %if.end24.if.end28_crit_edge
  %and29 = and i32 %and, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end28.if.end32_crit_edge, label %if.then31

if.end28.if.end32_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then31:                                        ; preds = %if.end28
  %rev.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 13
  %18 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %cmp.i124 = icmp ult i32 %19, 4
  %cond.i = select i1 %cmp.i124, ptr @tp_intr_handler.tp_intr_info, ptr @tp_intr_handler.tp_intr_info_t3c
  %call.i125 = tail call fastcc i32 @t3_handle_intr_status(ptr noundef %adapter, i32 noundef 1140, i32 noundef -1, ptr noundef nonnull %cond.i, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125)
  %tobool.not.i126 = icmp eq i32 %call.i125, 0
  br i1 %tobool.not.i126, label %if.then31.if.end32_crit_edge, label %if.then.i127

if.then31.if.end32_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then.i127:                                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @t3_fatal_err(ptr noundef %adapter) #7
  br label %if.end32

if.end32:                                         ; preds = %if.then.i127, %if.then31.if.end32_crit_edge, %if.end28.if.end32_crit_edge
  %and33 = and i32 %and, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end32.if.end36_crit_edge, label %if.then35

if.end32.if.end36_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then35:                                        ; preds = %if.end32
  %call.i129 = tail call fastcc i32 @t3_handle_intr_status(ptr noundef %adapter, i32 noundef 1288, i32 noundef -1, ptr noundef nonnull @ulprx_intr_handler.ulprx_intr_info, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129)
  %tobool.not.i130 = icmp eq i32 %call.i129, 0
  br i1 %tobool.not.i130, label %if.then35.if.end36_crit_edge, label %if.then.i131

if.then35.if.end36_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then.i131:                                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @t3_fatal_err(ptr noundef %adapter) #7
  br label %if.end36

if.end36:                                         ; preds = %if.then.i131, %if.then35.if.end36_crit_edge, %if.end32.if.end36_crit_edge
  %and37 = and i32 %and, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end40_crit_edge, label %if.then39

if.end36.if.end40_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then39:                                        ; preds = %if.end36
  %irq_stats.i133 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12
  %call.i134 = tail call fastcc i32 @t3_handle_intr_status(ptr noundef %adapter, i32 noundef 1416, i32 noundef -1, ptr noundef nonnull @ulptx_intr_handler.ulptx_intr_info, ptr noundef %irq_stats.i133) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134)
  %tobool.not.i135 = icmp eq i32 %call.i134, 0
  br i1 %tobool.not.i135, label %if.then39.if.end40_crit_edge, label %if.then.i136

if.then39.if.end40_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then.i136:                                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @t3_fatal_err(ptr noundef %adapter) #7
  br label %if.end40

if.end40:                                         ; preds = %if.then.i136, %if.then39.if.end40_crit_edge, %if.end36.if.end40_crit_edge
  %and41 = and i32 %and, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end40.if.end44_crit_edge, label %if.then43

if.end40.if.end44_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then43:                                        ; preds = %if.end40
  %call.i138 = tail call fastcc i32 @t3_handle_intr_status(ptr noundef %adapter, i32 noundef 1500, i32 noundef -1, ptr noundef nonnull @pmrx_intr_handler.pmrx_intr_info, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %tobool.not.i139 = icmp eq i32 %call.i138, 0
  br i1 %tobool.not.i139, label %if.then43.if.end44_crit_edge, label %if.then.i140

if.then43.if.end44_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then.i140:                                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @t3_fatal_err(ptr noundef %adapter) #7
  br label %if.end44

if.end44:                                         ; preds = %if.then.i140, %if.then43.if.end44_crit_edge, %if.end40.if.end44_crit_edge
  %and45 = and i32 %and, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end44.if.end48_crit_edge, label %if.then47

if.end44.if.end48_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then47:                                        ; preds = %if.end44
  %call.i142 = tail call fastcc i32 @t3_handle_intr_status(ptr noundef %adapter, i32 noundef 1532, i32 noundef -1, ptr noundef nonnull @pmtx_intr_handler.pmtx_intr_info, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142)
  %tobool.not.i143 = icmp eq i32 %call.i142, 0
  br i1 %tobool.not.i143, label %if.then47.if.end48_crit_edge, label %if.then.i144

if.then47.if.end48_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then.i144:                                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @t3_fatal_err(ptr noundef %adapter) #7
  br label %if.end48

if.end48:                                         ; preds = %if.then.i144, %if.then47.if.end48_crit_edge, %if.end44.if.end48_crit_edge
  %and49 = and i32 %and, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end48.if.end52_crit_edge, label %if.then51

if.end48.if.end52_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then51:                                        ; preds = %if.end48
  %call.i146 = tail call fastcc i32 @t3_handle_intr_status(ptr noundef %adapter, i32 noundef 1620, i32 noundef -1, ptr noundef nonnull @cplsw_intr_handler.cplsw_intr_info, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %tobool.not.i147 = icmp eq i32 %call.i146, 0
  br i1 %tobool.not.i147, label %if.then51.if.end52_crit_edge, label %if.then.i148

if.then51.if.end52_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then.i148:                                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @t3_fatal_err(ptr noundef %adapter) #7
  br label %if.end52

if.end52:                                         ; preds = %if.then.i148, %if.then51.if.end52_crit_edge, %if.end48.if.end52_crit_edge
  %and53 = and i32 %and, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end52.if.end56_crit_edge, label %if.then55

if.end52.if.end56_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then55:                                        ; preds = %if.end52
  %call.i150 = tail call fastcc i32 @t3_handle_intr_status(ptr noundef %adapter, i32 noundef 1568, i32 noundef -1, ptr noundef nonnull @mps_intr_handler.mps_intr_info, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i150)
  %tobool.not.i151 = icmp eq i32 %call.i150, 0
  br i1 %tobool.not.i151, label %if.then55.if.end56_crit_edge, label %if.then.i152

if.then55.if.end56_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then.i152:                                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @t3_fatal_err(ptr noundef %adapter) #7
  br label %if.end56

if.end56:                                         ; preds = %if.then.i152, %if.then55.if.end56_crit_edge, %if.end52.if.end56_crit_edge
  %and57 = and i32 %and, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end56.if.end60_crit_edge, label %if.then59

if.end56.if.end60_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  %mc5 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 20
  tail call void @t3_mc5_intr_handler(ptr noundef %mc5) #7
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %if.end56.if.end60_crit_edge
  %and61 = and i32 %and, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end60.if.end65_crit_edge, label %if.then63

if.end60.if.end65_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @mac_intr_handler(ptr noundef %adapter, i32 noundef 0)
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.end60.if.end65_crit_edge
  %and66 = and i32 %and, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end65.if.end70_crit_edge, label %if.then68

if.end65.if.end70_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @mac_intr_handler(ptr noundef %adapter, i32 noundef 1)
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.end65.if.end70_crit_edge
  %and71 = and i32 %and, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.end70.if.end74_crit_edge, label %if.then73

if.end70.if.end74_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.then73:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @t3_os_ext_intr_handler(ptr noundef %adapter) #7
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %if.end70.if.end74_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %20 = tail call i32 @llvm.bswap.i32(i32 %and) #7
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  %add.ptr.i155 = getelementptr i8, ptr %22, i32 1764
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i155, i32 %20) #7, !srcloc !340
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 4
  %add.ptr.i157 = getelementptr i8, ptr %24, i32 1764
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i157) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end74 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_sge_err_intr_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mc7_intr_handler(ptr nocapture noundef %mc7) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mc7 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc7, align 4
  %offset = getelementptr inbounds %struct.mc7, ptr %mc7, i32 0, i32 3
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %add = add i32 %3, 380
  %regs.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !337
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %stats = getelementptr inbounds %struct.mc7, ptr %mc7, i32 0, i32 5
  %8 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stats, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %stats, align 4
  %pdev = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %name = getelementptr inbounds %struct.mc7, ptr %mc7, i32 0, i32 4
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 4
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset, align 4
  %add3 = add i32 %15, 308
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %add.ptr.i117 = getelementptr i8, ptr %17, i32 %add3
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i117) #7, !srcloc !337
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %20 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset, align 4
  %add6 = add i32 %21, 312
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %add.ptr.i119 = getelementptr i8, ptr %23, i32 %add6
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i119) #7, !srcloc !337
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %26 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offset, align 4
  %add9 = add i32 %27, 316
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  %add.ptr.i121 = getelementptr i8, ptr %29, i32 %add9
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i121) #7, !srcloc !337
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %32 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %offset, align 4
  %add12 = add i32 %33, 320
  %34 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i, align 4
  %add.ptr.i123 = getelementptr i8, ptr %35, i32 %add12
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i123) #7, !srcloc !337
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.61, ptr noundef %13, i32 noundef %19, i32 noundef %25, i32 noundef %31, i32 noundef %37) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and14 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end.if.end37_crit_edge, label %if.then16

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %uncorr_err = getelementptr inbounds %struct.mc7, ptr %mc7, i32 0, i32 5, i32 1
  %38 = ptrtoint ptr %uncorr_err to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %uncorr_err, align 4
  %inc18 = add i32 %39, 1
  store i32 %inc18, ptr %uncorr_err, align 4
  %pdev22 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %40 = ptrtoint ptr %pdev22 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev22, align 8
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %name24 = getelementptr inbounds %struct.mc7, ptr %mc7, i32 0, i32 4
  %42 = ptrtoint ptr %name24 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %name24, align 4
  %44 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %offset, align 4
  %add26 = add i32 %45, 324
  %46 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i, align 4
  %add.ptr.i125 = getelementptr i8, ptr %47, i32 %add26
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i125) #7, !srcloc !337
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %50 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %offset, align 4
  %add29 = add i32 %51, 328
  %52 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i, align 4
  %add.ptr.i127 = getelementptr i8, ptr %53, i32 %add29
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i127) #7, !srcloc !337
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %56 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %offset, align 4
  %add32 = add i32 %57, 332
  %58 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i, align 4
  %add.ptr.i129 = getelementptr i8, ptr %59, i32 %add32
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i129) #7, !srcloc !337
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %62 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %offset, align 4
  %add35 = add i32 %63, 336
  %64 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i, align 4
  %add.ptr.i131 = getelementptr i8, ptr %65, i32 %add35
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i131) #7, !srcloc !337
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev23, ptr noundef nonnull @.str.64, ptr noundef %43, i32 noundef %49, i32 noundef %55, i32 noundef %61, i32 noundef %67) #10
  br label %if.end37

if.end37:                                         ; preds = %if.then16, %if.end.if.end37_crit_edge
  %shr = lshr i32 %7, 2
  %and38 = and i32 %shr, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end37.if.end51_crit_edge, label %if.then40

if.end37.if.end51_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %parity_err = getelementptr inbounds %struct.mc7, ptr %mc7, i32 0, i32 5, i32 2
  %68 = ptrtoint ptr %parity_err to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %parity_err, align 4
  %inc42 = add i32 %69, 1
  store i32 %inc42, ptr %parity_err, align 4
  %pdev46 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %70 = ptrtoint ptr %pdev46 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pdev46, align 8
  %dev47 = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 44
  %name48 = getelementptr inbounds %struct.mc7, ptr %mc7, i32 0, i32 4
  %72 = ptrtoint ptr %name48 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %name48, align 4
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev47, ptr noundef nonnull @.str.67, ptr noundef %73, i32 noundef %and38) #10
  br label %if.end51

if.end51:                                         ; preds = %if.then40, %if.end37.if.end51_crit_edge
  %and52 = and i32 %7, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end51.if.end68_crit_edge, label %if.then54

if.end51.if.end68_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.then54:                                        ; preds = %if.end51
  %rev = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 13
  %74 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp.not = icmp eq i32 %75, 0
  br i1 %cmp.not, label %if.then54.if.end59_crit_edge, label %if.then55

if.then54.if.end59_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then55:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %offset, align 4
  %add57 = add i32 %77, 300
  %78 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs.i, align 4
  %add.ptr.i133 = getelementptr i8, ptr %79, i32 %add57
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i133) #7, !srcloc !337
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  br label %if.end59

if.end59:                                         ; preds = %if.then55, %if.then54.if.end59_crit_edge
  %addr.0 = phi i32 [ %81, %if.then55 ], [ 0, %if.then54.if.end59_crit_edge ]
  %addr_err = getelementptr inbounds %struct.mc7, ptr %mc7, i32 0, i32 5, i32 3
  %82 = ptrtoint ptr %addr_err to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %addr_err, align 4
  %inc61 = add i32 %83, 1
  store i32 %inc61, ptr %addr_err, align 4
  %pdev65 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %84 = ptrtoint ptr %pdev65 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pdev65, align 8
  %dev66 = getelementptr inbounds %struct.pci_dev, ptr %85, i32 0, i32 44
  %name67 = getelementptr inbounds %struct.mc7, ptr %mc7, i32 0, i32 4
  %86 = ptrtoint ptr %name67 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %name67, align 4
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev66, ptr noundef nonnull @.str.70, ptr noundef %87, i32 noundef %addr.0) #10
  br label %if.end68

if.end68:                                         ; preds = %if.end59, %if.end51.if.end68_crit_edge
  %and69 = and i32 %7, 262142
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.end68.if.end72_crit_edge, label %if.then71

if.end68.if.end72_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.then71:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @t3_fatal_err(ptr noundef %1) #7
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.end68.if.end72_crit_edge
  %88 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %offset, align 4
  %add74 = add i32 %89, 380
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %90 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs.i, align 4
  %add.ptr.i135 = getelementptr i8, ptr %91, i32 %add74
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i135, i32 %6) #7, !srcloc !340
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_mc5_intr_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mac_intr_handler(ptr noundef %adap, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 21, i32 %idx
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %offset = getelementptr i8, ptr %1, i32 5628
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %add = add i32 %3, 2264
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 2
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !337
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %and3 = and i32 %7, 917504
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tx_fifo_parity_err = getelementptr i8, ptr %1, i32 6056
  %8 = ptrtoint ptr %tx_fifo_parity_err to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_fifo_parity_err, align 8
  %inc = add i32 %9, 1
  store i32 %inc, ptr %tx_fifo_parity_err, align 8
  %pdev = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 3
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev, ptr noundef nonnull @.str.126, i32 noundef %idx) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and4 = and i32 %7, 114688
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end14_crit_edge, label %if.then6

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %rx_fifo_parity_err = getelementptr i8, ptr %1, i32 6060
  %12 = ptrtoint ptr %rx_fifo_parity_err to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_fifo_parity_err, align 4
  %inc8 = add i32 %13, 1
  store i32 %inc8, ptr %rx_fifo_parity_err, align 4
  %pdev12 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 3
  %14 = ptrtoint ptr %pdev12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev12, align 8
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev13, ptr noundef nonnull @.str.129, i32 noundef %idx) #10
  br label %if.end14

if.end14:                                         ; preds = %if.then6, %if.end.if.end14_crit_edge
  %and15 = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end26_crit_edge, label %if.then17

if.end14.if.end26_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %tx_fifo_urun = getelementptr i8, ptr %1, i32 6064
  %16 = ptrtoint ptr %tx_fifo_urun to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_fifo_urun, align 8
  %inc19 = add i32 %17, 1
  store i32 %inc19, ptr %tx_fifo_urun, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then17, %if.end14.if.end26_crit_edge
  %and27 = and i32 %7, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.if.end32_crit_edge, label %if.then29

if.end26.if.end32_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %serdes_signal_loss = getelementptr i8, ptr %1, i32 6072
  %18 = ptrtoint ptr %serdes_signal_loss to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %serdes_signal_loss, align 8
  %inc31 = add i32 %19, 1
  store i32 %inc31, ptr %serdes_signal_loss, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end26.if.end32_crit_edge
  %and33 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end32.if.end38_crit_edge, label %if.then35

if.end32.if.end38_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %xaui_pcs_ctc_err = getelementptr i8, ptr %1, i32 6076
  %20 = ptrtoint ptr %xaui_pcs_ctc_err to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %xaui_pcs_ctc_err, align 4
  %inc37 = add i32 %21, 1
  store i32 %inc37, ptr %xaui_pcs_ctc_err, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end32.if.end38_crit_edge
  %and39 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end38.if.end44_crit_edge, label %if.then41

if.end38.if.end44_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %xaui_pcs_align_change = getelementptr i8, ptr %1, i32 6080
  %22 = ptrtoint ptr %xaui_pcs_align_change to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %xaui_pcs_align_change, align 8
  %inc43 = add i32 %23, 1
  store i32 %inc43, ptr %xaui_pcs_align_change, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.end38.if.end44_crit_edge
  %and45 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end44.if.end52_crit_edge, label %if.then47

if.end44.if.end52_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset, align 4
  %add49 = add i32 %25, 2260
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i1 = getelementptr i8, ptr %27, i32 %add49
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i1) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %29 = and i32 %28, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %30 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %31, i32 %add49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %29) #7, !srcloc !340
  %32 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %33, i32 %add49
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %link_faults = getelementptr i8, ptr %1, i32 6092
  %35 = ptrtoint ptr %link_faults to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %link_faults, align 4
  %inc51 = add i32 %36, 1
  store i32 %inc51, ptr %link_faults, align 4
  tail call void @t3_os_link_fault_handler(ptr noundef %adap, i32 noundef %idx) #7
  br label %if.end52

if.end52:                                         ; preds = %if.then47, %if.end44.if.end52_crit_edge
  %and53 = and i32 %7, 1032192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end52.if.end56_crit_edge, label %if.then55

if.end52.if.end56_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @t3_fatal_err(ptr noundef %adap) #7
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end52.if.end56_crit_edge
  %and = and i32 %7, -4097
  %37 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %offset, align 4
  %add58 = add i32 %38, 2264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %39 = tail call i32 @llvm.bswap.i32(i32 %and) #7
  %40 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i, align 4
  %add.ptr.i3 = getelementptr i8, ptr %41, i32 %add58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 %39) #7, !srcloc !340
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_os_ext_intr_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t3_intr_enable(ptr nocapture noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %slow_intr_mask = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 11
  %0 = ptrtoint ptr %slow_intr_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 10231807, ptr %slow_intr_mask, align 4
  %regs.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %1 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -120782849) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %3 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.1 = getelementptr i8, ptr %4, i32 376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.1, i32 -64768) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %5 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.2 = getelementptr i8, ptr %6, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.2, i32 -64768) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.3 = getelementptr i8, ptr %8, i32 632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.3, i32 -64768) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.4 = getelementptr i8, ptr %10, i32 1856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.4, i32 -1065285888) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.5 = getelementptr i8, ptr %12, i32 1284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.5, i32 -16777216) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.6 = getelementptr i8, ptr %14, i32 1528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.6, i32 -63744) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %15 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.7 = getelementptr i8, ptr %16, i32 1496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.7, i32 -63744) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.8 = getelementptr i8, ptr %18, i32 664
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.8, i32 -148898273) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %19 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.9 = getelementptr i8, ptr %20, i32 1564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.9, i32 -16711680) #7, !srcloc !340
  %rev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 13
  %21 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %cmp = icmp ugt i32 %22, 3
  %cond = select i1 %cmp, i32 46137343, i32 62914559
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %23 = tail call i32 @llvm.bswap.i32(i32 %cond) #7
  %24 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 1136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %23) #7, !srcloc !340
  %26 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp3.not = icmp eq i32 %27, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %28 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %29, i32 1616
  br i1 %cmp3.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 1056964608) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %30 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %31, i32 1412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 -16777216) #7, !srcloc !340
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 788529152) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %32 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %33, i32 1412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 -67108864) #7, !srcloc !340
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %nports.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 9
  %34 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp16.not.i = icmp eq i32 %35, 0
  br i1 %cmp16.not.i, label %if.end.calc_gpio_intr.exit_crit_edge, label %for.body.lr.ph.i

if.end.calc_gpio_intr.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %calc_gpio_intr.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %info.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %gpi_intr.019.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %gpi_intr.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.017.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 21, i32 %i.017.i
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i.i, align 4
  %caps.i = getelementptr i8, ptr %37, i32 2320
  %38 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %caps.i, align 4
  %and.i = and i32 %39, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i34 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i34, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %40 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %info.i, align 4
  %arrayidx.i = getelementptr %struct.adapter_info, ptr %41, i32 0, i32 4, i32 %i.017.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool2.not.i = icmp eq i8 %43, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i8 %43 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %or.i = or i32 %shl.i, %gpi_intr.019.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %gpi_intr.1.i = phi i32 [ %or.i, %if.then.i ], [ %gpi_intr.019.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %gpi_intr.019.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %35
  br i1 %exitcond.not.i, label %for.inc.i.calc_gpio_intr.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.calc_gpio_intr.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %calc_gpio_intr.exit

calc_gpio_intr.exit:                              ; preds = %for.inc.i.calc_gpio_intr.exit_crit_edge, %if.end.calc_gpio_intr.exit_crit_edge
  %gpi_intr.0.lcssa.i = phi i32 [ 0, %if.end.calc_gpio_intr.exit_crit_edge ], [ %gpi_intr.1.i, %for.inc.i.calc_gpio_intr.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %44 = tail call i32 @llvm.bswap.i32(i32 %gpi_intr.0.lcssa.i) #7
  %45 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i36 = getelementptr i8, ptr %46, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 %44) #7, !srcloc !340
  %variant.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 4, i32 3
  %47 = ptrtoint ptr %variant.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %variant.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %48)
  %cmp.i.not = icmp eq i8 %48, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %49 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %50, i32 128
  br i1 %cmp.i.not, label %if.then5, label %if.else6

if.then5:                                         ; preds = %calc_gpio_intr.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 -1064337664) #7, !srcloc !340
  br label %if.end7

if.else6:                                         ; preds = %calc_gpio_intr.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 -49408) #7, !srcloc !340
  br label %if.end7

if.end7:                                          ; preds = %if.else6, %if.then5
  %51 = ptrtoint ptr %slow_intr_mask to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %slow_intr_mask, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #7
  %54 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %55, i32 1760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 %53) #7, !srcloc !340
  %56 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %57, i32 1760
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t3_intr_disable(ptr nocapture noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !340
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %3, i32 1760
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %slow_intr_mask = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 11
  %5 = ptrtoint ptr %slow_intr_mask to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %slow_intr_mask, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t3_intr_clear(ptr nocapture noundef readonly %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nports = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 9
  %0 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp25.not = icmp eq i32 %1, 0
  br i1 %cmp25.not, label %entry.for.cond1.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond1.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond1.preheader

for.body.lr.ph:                                   ; preds = %entry
  %regs.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  br label %for.body

for.cond1.preheader:                              ; preds = %for.body.for.cond1.preheader_crit_edge, %entry.for.cond1.preheader_crit_edge
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  br label %for.body3

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.026 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 21, i32 %i.026
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i, align 4
  %phy1.i = getelementptr i8, ptr %3, i32 2316
  %mul.i = shl i32 %i.026, 9
  %add.i = add i32 %mul.i, 2264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1) #7, !srcloc !340
  %6 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %7, i32 %add.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %ops.i = getelementptr i8, ptr %3, i32 2336
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %intr_clear.i = getelementptr inbounds %struct.cphy_ops, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %intr_clear.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %intr_clear.i, align 4
  %call5.i = tail call i32 %12(ptr noundef %phy1.i) #7
  %inc = add nuw i32 %i.026, 1
  %13 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nports, align 4
  %cmp = icmp ult i32 %inc, %14
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond1.preheader_crit_edge

for.body.for.cond1.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond1.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %for.cond1.preheader
  %i.127 = phi i32 [ 0, %for.cond1.preheader ], [ %inc5, %for.body3.for.body3_crit_edge ]
  %arrayidx = getelementptr [16 x i32], ptr @t3_intr_clear.cause_reg_addr, i32 0, i32 %i.127
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #7, !srcloc !340
  %inc5 = add nuw nsw i32 %i.127, 1
  %exitcond.not = icmp eq i32 %inc5, 16
  br i1 %exitcond.not, label %for.end6, label %for.body3.for.body3_crit_edge

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3

for.end6:                                         ; preds = %for.body3
  %variant.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 4, i32 3
  %19 = ptrtoint ptr %variant.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %variant.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %20)
  %cmp.i.not = icmp eq i8 %20, 4
  br i1 %cmp.i.not, label %if.then, label %for.end6.if.end_crit_edge

for.end6.if.end_crit_edge:                        ; preds = %for.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %22, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 -1) #7, !srcloc !340
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end6.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %24, i32 1764
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 -1) #7, !srcloc !340
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %26, i32 1764
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t3_xgm_intr_disable(ptr nocapture noundef readonly %adapter, i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 21, i32 %idx
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %offset = getelementptr i8, ptr %1, i32 5628
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %add = add i32 %3, 2168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -16318464) #7, !srcloc !340
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t3_port_intr_enable(ptr nocapture noundef readonly %adapter, i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 21, i32 %idx
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %phy1 = getelementptr i8, ptr %1, i32 2316
  %mul = shl i32 %idx, 9
  %add = add i32 %mul, 2260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 14683904) #7, !srcloc !340
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %ops = getelementptr i8, ptr %1, i32 2336
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %intr_enable = getelementptr inbounds %struct.cphy_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %intr_enable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %intr_enable, align 4
  %call5 = tail call i32 %10(ptr noundef %phy1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t3_port_intr_disable(ptr nocapture noundef readonly %adapter, i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 21, i32 %idx
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %phy1 = getelementptr i8, ptr %1, i32 2316
  %mul = shl i32 %idx, 9
  %add = add i32 %mul, 2260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !340
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %ops = getelementptr i8, ptr %1, i32 2336
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %intr_disable = getelementptr inbounds %struct.cphy_ops, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %intr_disable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %intr_disable, align 4
  %call5 = tail call i32 %10(ptr noundef %phy1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_sge_init_ecntxt(ptr nocapture noundef readonly %adapter, i32 noundef %id, i32 noundef %gts_enable, i32 noundef %type, i32 noundef %respq, i64 noundef %base_addr, i32 noundef %size, i32 noundef %token, i32 noundef %gen, i32 noundef %cidx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %type)
  %cmp = icmp eq i32 %type, 4
  %cond = select i1 %cmp, i32 0, i32 16
  %and = and i64 %base_addr, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %3 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl i32 %cidx, 16
  %or = or i32 %shl, %cond
  %shl6 = shl i32 %gts_enable, 15
  %or7 = or i32 %or, %shl6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %or7) #7
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 %4) #7, !srcloc !340
  %base_addr.tr = trunc i64 %base_addr to i32
  %7 = shl i32 %base_addr.tr, 4
  %8 = and i32 %7, -65536
  %conv12 = or i32 %8, %size
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %conv12) #7
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %11, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %9) #7, !srcloc !340
  %shr13 = lshr i64 %base_addr, 28
  %conv14 = trunc i64 %shr13 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %conv14) #7
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %add.ptr.i52 = getelementptr i8, ptr %14, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 %12) #7, !srcloc !340
  %shr15 = lshr i64 %base_addr, 60
  %shl18 = shl i32 %respq, 4
  %shl21 = shl i32 %type, 7
  %shl24 = shl i32 %gen, 10
  %shl27 = shl i32 %token, 11
  %15 = trunc i64 %shr15 to i32
  %16 = or i32 %shl18, %15
  %17 = or i32 %shl21, %16
  %18 = or i32 %17, %shl27
  %19 = or i32 %18, %shl24
  %conv31 = or i32 %19, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %20 = tail call i32 @llvm.bswap.i32(i32 %conv31) #7
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  %add.ptr.i54 = getelementptr i8, ptr %22, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 %20) #7, !srcloc !340
  %call32 = tail call fastcc i32 @t3_sge_write_context(ptr noundef %adapter, i32 noundef %id, i32 noundef 131072)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call32, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @t3_sge_write_context(ptr nocapture noundef readonly %adapter, i32 noundef %id, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %type)
  %cmp = icmp eq i32 %type, 262144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %3, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 -1) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %5, i32 40
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 -233) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %7, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 -1) #7, !srcloc !340
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 -1) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %9, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 -1) #7, !srcloc !340
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %or = or i32 %id, %type
  %or1 = or i32 %or, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %10 = tail call i32 @llvm.bswap.i32(i32 %or1) #7
  %regs.i26 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %11 = ptrtoint ptr %regs.i26 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i26, align 4
  %add.ptr.i27 = getelementptr i8, ptr %12, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %10) #7, !srcloc !340
  %13 = ptrtoint ptr %regs.i26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i26, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %14, i32 12
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %16 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp31.i.i = icmp eq i32 %16, 0
  br i1 %cmp31.i.i, label %if.end.t3_wait_op_done.exit_crit_edge, label %if.end.if.end4.i.i_crit_edge

if.end.if.end4.i.i_crit_edge:                     ; preds = %if.end
  br label %if.end4.i.i

if.end.t3_wait_op_done.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %t3_wait_op_done.exit

if.end4.i.i:                                      ; preds = %if.end7.i.i.if.end4.i.i_crit_edge, %if.end.if.end4.i.i_crit_edge
  %attempts.addr.032.i.i = phi i32 [ %dec.i.i, %if.end7.i.i.if.end4.i.i_crit_edge ], [ 100, %if.end.if.end4.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %attempts.addr.032.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp5.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp5.i.i, label %if.end4.i.i.t3_wait_op_done.exit_crit_edge, label %if.end7.i.i

if.end4.i.i.t3_wait_op_done.exit_crit_edge:       ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %t3_wait_op_done.exit

if.end7.i.i:                                      ; preds = %if.end4.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #7
  %18 = ptrtoint ptr %regs.i26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i26, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 12
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %21 = and i32 %20, 8
  %cmp.i.i = icmp eq i32 %21, 0
  br i1 %cmp.i.i, label %if.end7.i.i.t3_wait_op_done.exit_crit_edge, label %if.end7.i.i.if.end4.i.i_crit_edge

if.end7.i.i.if.end4.i.i_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i

if.end7.i.i.t3_wait_op_done.exit_crit_edge:       ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %t3_wait_op_done.exit

t3_wait_op_done.exit:                             ; preds = %if.end7.i.i.t3_wait_op_done.exit_crit_edge, %if.end4.i.i.t3_wait_op_done.exit_crit_edge, %if.end.t3_wait_op_done.exit_crit_edge
  %retval.1.ph.i.i = phi i32 [ 0, %if.end.t3_wait_op_done.exit_crit_edge ], [ -11, %if.end4.i.i.t3_wait_op_done.exit_crit_edge ], [ 0, %if.end7.i.i.t3_wait_op_done.exit_crit_edge ]
  ret i32 %retval.1.ph.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_sge_init_flcntxt(ptr nocapture noundef readonly %adapter, i32 noundef %id, i32 noundef %gts_enable, i64 noundef %base_addr, i32 noundef %size, i32 noundef %bsize, i32 noundef %cong_thres, i32 noundef %gen, i32 noundef %cidx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i64 %base_addr, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %3 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %shr = lshr i64 %base_addr, 12
  %conv = trunc i64 %shr to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %conv) #7
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 %4) #7, !srcloc !340
  %shr5 = lshr i64 %base_addr, 44
  %conv6 = trunc i64 %shr5 to i32
  %shl8 = shl i32 %cidx, 20
  %or = or i32 %shl8, %conv6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %7 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %9, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 %7) #7, !srcloc !340
  %shl9 = shl i32 %size, 4
  %shl10 = shl i32 %gen, 20
  %shr12 = lshr i32 %cidx, 12
  %shl16 = shl i32 %bsize, 21
  %or11 = or i32 %shl16, %shl9
  %or14 = or i32 %or11, %shl10
  %or17 = or i32 %or14, %shr12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %10 = tail call i32 @llvm.bswap.i32(i32 %or17) #7
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr.i41 = getelementptr i8, ptr %12, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 %10) #7, !srcloc !340
  %or21 = tail call i32 @llvm.fshl.i32(i32 %cong_thres, i32 %bsize, i32 21)
  %shl22 = shl i32 %gts_enable, 31
  %or23 = or i32 %or21, %shl22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %or23) #7
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %add.ptr.i43 = getelementptr i8, ptr %15, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 %13) #7, !srcloc !340
  %call24 = tail call fastcc i32 @t3_sge_write_context(ptr noundef %adapter, i32 noundef %id, i32 noundef 65536)
  br label %return

return:                                           ; preds = %if.end4, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call24, %if.end4 ], [ -22, %entry.return_crit_edge ], [ -16, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_sge_init_rspcntxt(ptr nocapture noundef readonly %adapter, i32 noundef %id, i32 noundef %irq_vec_idx, i64 noundef %base_addr, i32 noundef %size, i32 noundef %fl_thres, i32 noundef %gen, i32 noundef %cidx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i64 %base_addr, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %3 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %shr = lshr i64 %base_addr, 12
  %shl = shl i32 %size, 16
  %or = or i32 %shl, %cidx
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 %4) #7, !srcloc !340
  %conv = trunc i64 %shr to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %7 = tail call i32 @llvm.bswap.i32(i32 %conv) #7
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %9, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %7) #7, !srcloc !340
  %shr6 = lshr i64 %base_addr, 44
  %shl9 = shl i32 %irq_vec_idx, 20
  %or10 = or i32 %shl9, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq_vec_idx)
  %cmp.inv = icmp slt i32 %irq_vec_idx, 0
  %intr.0 = select i1 %cmp.inv, i32 0, i32 %or10
  %conv12 = trunc i64 %shr6 to i32
  %or14 = or i32 %intr.0, %conv12
  %shl15 = shl i32 %gen, 28
  %or16 = or i32 %or14, %shl15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %10 = tail call i32 @llvm.bswap.i32(i32 %or16) #7
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %12, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %10) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %fl_thres) #7
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %15, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %13) #7, !srcloc !340
  %call17 = tail call fastcc i32 @t3_sge_write_context(ptr noundef %adapter, i32 noundef %id, i32 noundef 262144)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_sge_init_cqcntxt(ptr nocapture noundef readonly %adapter, i32 noundef %id, i64 noundef %base_addr, i32 noundef %size, i32 noundef %rspq, i32 noundef %ovfl_mode, i32 noundef %credits, i32 noundef %credit_thres) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i64 %base_addr, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %3 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %shr = lshr i64 %base_addr, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %size)
  %5 = lshr i32 %4, 16
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 %5) #7, !srcloc !340
  %conv = trunc i64 %shr to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %conv) #7
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %10, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %8) #7, !srcloc !340
  %shr5 = lshr i64 %base_addr, 44
  %conv6 = trunc i64 %shr5 to i32
  %shl8 = shl i32 %rspq, 20
  %or = or i32 %shl8, %conv6
  %shl10 = shl i32 %ovfl_mode, 31
  %shl12 = shl i32 %ovfl_mode, 30
  %or9 = or i32 %shl10, %or
  %or11 = or i32 %or9, %shl12
  %or13 = or i32 %or11, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %11 = tail call i32 @llvm.bswap.i32(i32 %or13) #7
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %13, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %11) #7, !srcloc !340
  %shl15 = shl i32 %credit_thres, 16
  %or16 = or i32 %shl15, %credits
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %or16) #7
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %16, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %14) #7, !srcloc !340
  %call17 = tail call fastcc i32 @t3_sge_write_context(ptr noundef %adapter, i32 noundef %id, i32 noundef 524288)
  br label %return

return:                                           ; preds = %if.end4, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end4 ], [ -22, %entry.return_crit_edge ], [ -16, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_sge_enable_ecntxt(ptr nocapture noundef readonly %adapter, i32 noundef %id, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %3 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 0) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %7, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 0) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %9, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 0) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %11, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 128) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %12 = shl i32 %enable, 7
  %13 = and i32 %12, 128
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %15, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %13) #7, !srcloc !340
  %or = or i32 %id, 268566528
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %16 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %18, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %16) #7, !srcloc !340
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %20, i32 12
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %22 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp31.i.i = icmp eq i32 %22, 0
  br i1 %cmp31.i.i, label %if.end.return_crit_edge, label %if.end.if.end4.i.i_crit_edge

if.end.if.end4.i.i_crit_edge:                     ; preds = %if.end
  br label %if.end4.i.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end4.i.i:                                      ; preds = %if.end7.i.i.if.end4.i.i_crit_edge, %if.end.if.end4.i.i_crit_edge
  %attempts.addr.032.i.i = phi i32 [ %dec.i.i, %if.end7.i.i.if.end4.i.i_crit_edge ], [ 100, %if.end.if.end4.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %attempts.addr.032.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp5.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp5.i.i, label %if.end4.i.i.return_crit_edge, label %if.end7.i.i

if.end4.i.i.return_crit_edge:                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end7.i.i:                                      ; preds = %if.end4.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #7
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %25, i32 12
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %27 = and i32 %26, 8
  %cmp.i.i = icmp eq i32 %27, 0
  br i1 %cmp.i.i, label %if.end7.i.i.return_crit_edge, label %if.end7.i.i.if.end4.i.i_crit_edge

if.end7.i.i.if.end4.i.i_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i

if.end7.i.i.return_crit_edge:                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %if.end7.i.i.return_crit_edge, %if.end4.i.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -16, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ -11, %if.end4.i.i.return_crit_edge ], [ 0, %if.end7.i.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_sge_disable_fl(ptr nocapture noundef readonly %adapter, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %3 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 0) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %7, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 0) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %9, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 -251719936) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %11, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 0) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %13, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 0) #7, !srcloc !340
  %or = or i32 %id, 268500992
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %16, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %14) #7, !srcloc !340
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %18, i32 12
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %20 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp31.i.i = icmp eq i32 %20, 0
  br i1 %cmp31.i.i, label %if.end.return_crit_edge, label %if.end.if.end4.i.i_crit_edge

if.end.if.end4.i.i_crit_edge:                     ; preds = %if.end
  br label %if.end4.i.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end4.i.i:                                      ; preds = %if.end7.i.i.if.end4.i.i_crit_edge, %if.end.if.end4.i.i_crit_edge
  %attempts.addr.032.i.i = phi i32 [ %dec.i.i, %if.end7.i.i.if.end4.i.i_crit_edge ], [ 100, %if.end.if.end4.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %attempts.addr.032.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp5.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp5.i.i, label %if.end4.i.i.return_crit_edge, label %if.end7.i.i

if.end4.i.i.return_crit_edge:                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end7.i.i:                                      ; preds = %if.end4.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #7
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %23, i32 12
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %25 = and i32 %24, 8
  %cmp.i.i = icmp eq i32 %25, 0
  br i1 %cmp.i.i, label %if.end7.i.i.return_crit_edge, label %if.end7.i.i.if.end4.i.i_crit_edge

if.end7.i.i.if.end4.i.i_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i

if.end7.i.i.return_crit_edge:                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %if.end7.i.i.return_crit_edge, %if.end4.i.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -16, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ -11, %if.end4.i.i.return_crit_edge ], [ 0, %if.end7.i.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_sge_disable_rspcntxt(ptr nocapture noundef readonly %adapter, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %3 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 65535) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %7, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 0) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %9, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 0) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %11, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 0) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 0) #7, !srcloc !340
  %or = or i32 %id, 268697600
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %16, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %14) #7, !srcloc !340
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %18, i32 12
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %20 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp31.i.i = icmp eq i32 %20, 0
  br i1 %cmp31.i.i, label %if.end.return_crit_edge, label %if.end.if.end4.i.i_crit_edge

if.end.if.end4.i.i_crit_edge:                     ; preds = %if.end
  br label %if.end4.i.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end4.i.i:                                      ; preds = %if.end7.i.i.if.end4.i.i_crit_edge, %if.end.if.end4.i.i_crit_edge
  %attempts.addr.032.i.i = phi i32 [ %dec.i.i, %if.end7.i.i.if.end4.i.i_crit_edge ], [ 100, %if.end.if.end4.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %attempts.addr.032.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp5.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp5.i.i, label %if.end4.i.i.return_crit_edge, label %if.end7.i.i

if.end4.i.i.return_crit_edge:                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end7.i.i:                                      ; preds = %if.end4.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #7
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %23, i32 12
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %25 = and i32 %24, 8
  %cmp.i.i = icmp eq i32 %25, 0
  br i1 %cmp.i.i, label %if.end7.i.i.return_crit_edge, label %if.end7.i.i.if.end4.i.i_crit_edge

if.end7.i.i.if.end4.i.i_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i

if.end7.i.i.return_crit_edge:                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %if.end7.i.i.return_crit_edge, %if.end4.i.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -16, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ -11, %if.end4.i.i.return_crit_edge ], [ 0, %if.end7.i.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_sge_disable_cqcntxt(ptr nocapture noundef readonly %adapter, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %3 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 65535) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %7, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 0) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %9, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 0) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %11, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 0) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 0) #7, !srcloc !340
  %or = or i32 %id, 268959744
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %16, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %14) #7, !srcloc !340
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %18, i32 12
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %20 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp31.i.i = icmp eq i32 %20, 0
  br i1 %cmp31.i.i, label %if.end.return_crit_edge, label %if.end.if.end4.i.i_crit_edge

if.end.if.end4.i.i_crit_edge:                     ; preds = %if.end
  br label %if.end4.i.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end4.i.i:                                      ; preds = %if.end7.i.i.if.end4.i.i_crit_edge, %if.end.if.end4.i.i_crit_edge
  %attempts.addr.032.i.i = phi i32 [ %dec.i.i, %if.end7.i.i.if.end4.i.i_crit_edge ], [ 100, %if.end.if.end4.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %attempts.addr.032.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp5.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp5.i.i, label %if.end4.i.i.return_crit_edge, label %if.end7.i.i

if.end4.i.i.return_crit_edge:                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end7.i.i:                                      ; preds = %if.end4.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #7
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %23, i32 12
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %25 = and i32 %24, 8
  %cmp.i.i = icmp eq i32 %25, 0
  br i1 %cmp.i.i, label %if.end7.i.i.return_crit_edge, label %if.end7.i.i.if.end4.i.i_crit_edge

if.end7.i.i.if.end4.i.i_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i

if.end7.i.i.return_crit_edge:                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %if.end7.i.i.return_crit_edge, %if.end4.i.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -16, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ -11, %if.end4.i.i.return_crit_edge ], [ 0, %if.end7.i.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_sge_cqcntxt_op(ptr nocapture noundef readonly %adapter, i32 noundef %id, i32 noundef %op, i32 noundef %credits) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %3 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %credits)
  %5 = lshr i32 %4, 16
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %5) #7, !srcloc !340
  %shl1 = shl i32 %op, 28
  %or = or i32 %shl1, %id
  %or3 = or i32 %or, 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %or3) #7
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %10, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 %8) #7, !srcloc !340
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %12, i32 12
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i) #7, !srcloc !337
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %15 = and i32 %14, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp31.i = icmp eq i32 %15, 0
  br i1 %cmp31.i, label %if.end.if.end7_crit_edge, label %if.end.if.end4.i_crit_edge

if.end.if.end4.i_crit_edge:                       ; preds = %if.end
  br label %if.end4.i

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end4.i:                                        ; preds = %if.end7.i.if.end4.i_crit_edge, %if.end.if.end4.i_crit_edge
  %attempts.addr.032.i = phi i32 [ %dec.i, %if.end7.i.if.end4.i_crit_edge ], [ 100, %if.end.if.end4.i_crit_edge ]
  %dec.i = add nsw i32 %attempts.addr.032.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp5.i = icmp eq i32 %dec.i, 0
  br i1 %cmp5.i, label %if.end4.i.cleanup_crit_edge, label %if.end7.i

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.i:                                        ; preds = %if.end4.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #7
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 12
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !337
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %21 = and i32 %20, 134217728
  %cmp.i = icmp eq i32 %21, 0
  br i1 %cmp.i, label %if.end7.i.if.end7_crit_edge, label %if.end7.i.if.end4.i_crit_edge

if.end7.i.if.end4.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.end7.i.if.end7_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end7:                                          ; preds = %if.end7.i.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %val.0.ph = phi i32 [ %14, %if.end.if.end7_crit_edge ], [ %20, %if.end7.i.if.end7_crit_edge ]
  %22 = add i32 %op, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %22)
  %23 = icmp ult i32 %22, 5
  br i1 %23, label %if.then9, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then9:                                         ; preds = %if.end7
  %rev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 13
  %24 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp10.not = icmp eq i32 %25, 0
  br i1 %cmp10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %and12 = and i32 %val.0.ph, 65535
  br label %cleanup

if.end13:                                         ; preds = %if.then9
  %or15 = or i32 %id, 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %26 = tail call i32 @llvm.bswap.i32(i32 %or15) #7
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %28, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 %26) #7, !srcloc !340
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %30, i32 12
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %32 = and i32 %31, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp31.i.i = icmp eq i32 %32, 0
  br i1 %cmp31.i.i, label %if.end13.if.end19_crit_edge, label %if.end13.if.end4.i.i_crit_edge

if.end13.if.end4.i.i_crit_edge:                   ; preds = %if.end13
  br label %if.end4.i.i

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.end4.i.i:                                      ; preds = %if.end7.i.i.if.end4.i.i_crit_edge, %if.end13.if.end4.i.i_crit_edge
  %attempts.addr.032.i.i = phi i32 [ %dec.i.i, %if.end7.i.i.if.end4.i.i_crit_edge ], [ 100, %if.end13.if.end4.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %attempts.addr.032.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp5.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp5.i.i, label %if.end4.i.i.cleanup_crit_edge, label %if.end7.i.i

if.end4.i.i.cleanup_crit_edge:                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end4.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748) #7
  %34 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %35, i32 12
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %37 = and i32 %36, 8
  %cmp.i.i = icmp eq i32 %37, 0
  br i1 %cmp.i.i, label %if.end7.i.i.if.end19_crit_edge, label %if.end7.i.i.if.end4.i.i_crit_edge

if.end7.i.i.if.end4.i.i_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i

if.end7.i.i.if.end19_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.end19:                                         ; preds = %if.end7.i.i.if.end19_crit_edge, %if.end13.if.end19_crit_edge
  %38 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i, align 4
  %add.ptr.i41 = getelementptr i8, ptr %39, i32 16
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %41 = and i32 %40, -65536
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end4.i.i.cleanup_crit_edge, %if.then11, %if.end7.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and12, %if.then11 ], [ %42, %if.end19 ], [ -16, %entry.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ -5, %if.end4.i.i.cleanup_crit_edge ], [ -5, %if.end4.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t3_config_rss(ptr nocapture noundef readonly %adapter, i32 noundef %rss_config, ptr noundef readonly %cpus, ptr noundef readonly %rspq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cpus, null
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %for.cond.preheader

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

for.cond.preheader:                               ; preds = %entry
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %cpu_idx.061 = phi i32 [ 0, %for.cond.preheader ], [ %spec.store.select.1, %for.body.for.body_crit_edge ]
  %i.060 = phi i32 [ 0, %for.cond.preheader ], [ %inc12, %for.body.for.body_crit_edge ]
  %shl = shl i32 %i.060, 16
  %inc = add i32 %cpu_idx.061, 1
  %arrayidx = getelementptr i8, ptr %cpus, i32 %cpu_idx.061
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = and i8 %1, 63
  %and = zext i8 %2 to i32
  %or = or i32 %shl, %and
  %arrayidx5 = getelementptr i8, ptr %cpus, i32 %inc
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %4)
  %cmp7 = icmp eq i8 %4, -1
  %spec.store.select = select i1 %cmp7, i32 0, i32 %inc
  %inc.1 = add i32 %spec.store.select, 1
  %arrayidx.1 = getelementptr i8, ptr %cpus, i32 %spec.store.select
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.1, align 1
  %7 = and i8 %6, 63
  %and.1 = zext i8 %7 to i32
  %shl4.1 = shl nuw nsw i32 %and.1, 8
  %or.1 = or i32 %shl4.1, %or
  %arrayidx5.1 = getelementptr i8, ptr %cpus, i32 %inc.1
  %8 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx5.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %cmp7.1 = icmp eq i8 %9, -1
  %spec.store.select.1 = select i1 %cmp7.1, i32 0, i32 %inc.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.1) #7
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #7, !srcloc !340
  %inc12 = add nuw nsw i32 %i.060, 1
  %exitcond.not = icmp eq i32 %inc12, 64
  br i1 %exitcond.not, label %for.body.if.end14_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.if.end14_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.end14:                                         ; preds = %for.body.if.end14_crit_edge, %entry.if.end14_crit_edge
  %tobool15.not = icmp eq ptr %rspq, null
  br i1 %tobool15.not, label %if.end14.if.end35_crit_edge, label %for.cond17.preheader

if.end14.if.end35_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

for.cond17.preheader:                             ; preds = %if.end14
  %regs.i53 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  br label %for.body20

for.body20:                                       ; preds = %for.body20.for.body20_crit_edge, %for.cond17.preheader
  %q_idx.063 = phi i32 [ 0, %for.cond17.preheader ], [ %spec.store.select36, %for.body20.for.body20_crit_edge ]
  %i.162 = phi i32 [ 0, %for.cond17.preheader ], [ %inc33, %for.body20.for.body20_crit_edge ]
  %shl21 = shl i32 %i.162, 16
  %inc22 = add i32 %q_idx.063, 1
  %arrayidx23 = getelementptr i16, ptr %rspq, i32 %q_idx.063
  %13 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx23, align 2
  %conv24 = zext i16 %14 to i32
  %or25 = or i32 %shl21, %conv24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %15 = tail call i32 @llvm.bswap.i32(i32 %or25) #7
  %16 = ptrtoint ptr %regs.i53 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i53, align 4
  %add.ptr.i54 = getelementptr i8, ptr %17, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 %15) #7, !srcloc !340
  %arrayidx26 = getelementptr i16, ptr %rspq, i32 %inc22
  %18 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx26, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %19)
  %cmp28 = icmp eq i16 %19, -1
  %spec.store.select36 = select i1 %cmp28, i32 0, i32 %inc22
  %inc33 = add nuw nsw i32 %i.162, 1
  %exitcond64.not = icmp eq i32 %inc33, 64
  br i1 %exitcond64.not, label %for.body20.if.end35_crit_edge, label %for.body20.for.body20_crit_edge

for.body20.for.body20_crit_edge:                  ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body20

for.body20.if.end35_crit_edge:                    ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.end35:                                         ; preds = %for.body20.if.end35_crit_edge, %if.end14.if.end35_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %20 = tail call i32 @llvm.bswap.i32(i32 %rss_config) #7
  %regs.i55 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %21 = ptrtoint ptr %regs.i55 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i55, align 4
  %add.ptr.i56 = getelementptr i8, ptr %22, i32 1008
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %20) #7, !srcloc !340
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t3_tp_set_offload_mode(ptr nocapture noundef readonly %adap, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %offload.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 10, i32 14
  %0 = ptrtoint ptr %offload.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offload.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp ne i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool1.not = icmp eq i32 %enable, 0
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %shl = select i1 %tobool1.not, i32 16384, i32 0
  %regs.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 2
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 768
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %5 = and i32 %4, -4194305
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %or.i = or i32 %6, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %7 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %9, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %7) #7, !srcloc !340
  %10 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %11, i32 768
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t3_load_mtus(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %mtus, ptr nocapture noundef readonly %alpha, ptr nocapture noundef readonly %beta, i16 noundef zeroext %mtu_cap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry
  %i.057 = phi i32 [ 0, %entry ], [ %inc33, %for.end.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %mtus, i32 %i.057
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  %2 = tail call i16 @llvm.umin.i16(i16 %1, i16 %mtu_cap)
  %cond = zext i16 %2 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not.i = icmp eq i16 %2, 0
  %3 = tail call i32 @llvm.ctlz.i32(i32 %cond, i1 true) #7, !range !342
  %sub.i = sub nuw nsw i32 32, %3
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %shl = shl nuw i32 1, %cond.i
  %4 = lshr i32 %shl, 2
  %and = and i32 %4, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %dec = sext i1 %tobool.not to i32
  %log2.0 = add nsw i32 %cond.i, %dec
  %shl6 = shl nuw nsw i32 %i.057, 24
  %shl7 = shl nsw i32 %log2.0, 16
  %or = or i32 %shl6, %cond
  %or8 = or i32 %or, %shl7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %or8) #7
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 996
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #7, !srcloc !340
  %sub = add nsw i32 %cond, -40
  %shl23 = shl i32 %i.057, 21
  br label %for.body12

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %for.body
  %w.056 = phi i32 [ 0, %for.body ], [ %inc31, %for.body12.for.body12_crit_edge ]
  %arrayidx13 = getelementptr i16, ptr %alpha, i32 %w.056
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx13, align 2
  %conv14 = zext i16 %9 to i32
  %mul = mul i32 %sub, %conv14
  %arrayidx15 = getelementptr [32 x i32], ptr @t3_load_mtus.avg_pkts, i32 0, i32 %w.056
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx15, align 4
  %div = udiv i32 %mul, %11
  %12 = tail call i32 @llvm.umax.i32(i32 %div, i32 2)
  %shl24 = shl nuw nsw i32 %w.056, 16
  %or25 = or i32 %shl24, %shl23
  %arrayidx26 = getelementptr i16, ptr %beta, i32 %w.056
  %13 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx26, align 2
  %conv27 = zext i16 %14 to i32
  %shl28 = shl nuw nsw i32 %conv27, 13
  %or29 = or i32 %or25, %12
  %or30 = or i32 %or29, %shl28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %15 = tail call i32 @llvm.bswap.i32(i32 %or30) #7
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %add.ptr.i55 = getelementptr i8, ptr %17, i32 988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 %15) #7, !srcloc !340
  %inc31 = add nuw nsw i32 %w.056, 1
  %exitcond.not = icmp eq i32 %inc31, 32
  br i1 %exitcond.not, label %for.end, label %for.body12.for.body12_crit_edge

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body12

for.end:                                          ; preds = %for.body12
  %inc33 = add nuw nsw i32 %i.057, 1
  %exitcond58.not = icmp eq i32 %inc33, 16
  br i1 %exitcond58.not, label %for.end34, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end34:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t3_tp_get_mib_stats(ptr nocapture noundef readonly %adap, ptr nocapture noundef writeonly %tps) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry
  %start_idx.addr.05.i = phi i32 [ 0, %entry ], [ %inc.i, %while.body.i.while.body.i_crit_edge ]
  %nregs.addr.04.i = phi i32 [ 46, %entry ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %vals.addr.03.i = phi ptr [ %tps, %entry ], [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %nregs.addr.04.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %0 = tail call i32 @llvm.bswap.i32(i32 %start_idx.addr.05.i) #7
  %1 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 1104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %0) #7, !srcloc !340
  %3 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %4, i32 1108
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i) #7, !srcloc !337
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %incdec.ptr.i = getelementptr i32, ptr %vals.addr.03.i, i32 1
  %7 = ptrtoint ptr %vals.addr.03.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %vals.addr.03.i, align 4
  %inc.i = add nuw nsw i32 %start_idx.addr.05.i, 1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %t3_read_indirect.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

t3_read_indirect.exit:                            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_set_proto_sram(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %buf.034 = phi ptr [ %data, %entry ], [ %incdec.ptr4, %for.inc.for.body_crit_edge ]
  %i.033 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %incdec.ptr = getelementptr i32, ptr %buf.034, i32 1
  %0 = ptrtoint ptr %buf.034 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buf.034, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #7
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 1276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #7, !srcloc !340
  %incdec.ptr1 = getelementptr i32, ptr %buf.034, i32 2
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %incdec.ptr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %9, i32 1272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %7) #7, !srcloc !340
  %incdec.ptr2 = getelementptr i32, ptr %buf.034, i32 3
  %10 = ptrtoint ptr %incdec.ptr1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %incdec.ptr1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %14, i32 1268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %12) #7, !srcloc !340
  %incdec.ptr3 = getelementptr i32, ptr %buf.034, i32 4
  %15 = ptrtoint ptr %incdec.ptr2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %incdec.ptr2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #7
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %19, i32 1264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 %17) #7, !srcloc !340
  %20 = ptrtoint ptr %incdec.ptr3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %incdec.ptr3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #7
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %24, i32 1260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 %22) #7, !srcloc !340
  %shl = shl nuw i32 %i.033, 1
  %or = or i32 %shl, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %25 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %add.ptr.i28 = getelementptr i8, ptr %27, i32 1256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 %25) #7, !srcloc !340
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %29, i32 1256
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %31 = and i32 %30, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool29.i.i.not = icmp eq i32 %31, 0
  br i1 %tobool29.i.i.not, label %if.end4.i.i.preheader, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end4.i.i.preheader:                            ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748) #7
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %34, i32 1256
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %36 = and i32 %35, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.i.i.not = icmp eq i32 %36, 0
  br i1 %tobool.i.i.not, label %if.end4.i.i.1, label %if.end4.i.i.preheader.for.inc_crit_edge

if.end4.i.i.preheader.for.inc_crit_edge:          ; preds = %if.end4.i.i.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end4.i.i.1:                                    ; preds = %if.end4.i.i.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748) #7
  %38 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i.i.1 = getelementptr i8, ptr %39, i32 1256
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.1) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %41 = and i32 %40, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.i.i.not.1 = icmp eq i32 %41, 0
  br i1 %tobool.i.i.not.1, label %if.end4.i.i.2, label %if.end4.i.i.1.for.inc_crit_edge

if.end4.i.i.1.for.inc_crit_edge:                  ; preds = %if.end4.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end4.i.i.2:                                    ; preds = %if.end4.i.i.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748) #7
  %43 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i.i.2 = getelementptr i8, ptr %44, i32 1256
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.2) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %46 = and i32 %45, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.i.i.not.2 = icmp eq i32 %46, 0
  br i1 %tobool.i.i.not.2, label %if.end4.i.i.3, label %if.end4.i.i.2.for.inc_crit_edge

if.end4.i.i.2.for.inc_crit_edge:                  ; preds = %if.end4.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end4.i.i.3:                                    ; preds = %if.end4.i.i.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748) #7
  %48 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i.i.3 = getelementptr i8, ptr %49, i32 1256
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.3) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %51 = and i32 %50, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.i.i.not.3 = icmp eq i32 %51, 0
  br i1 %tobool.i.i.not.3, label %if.end4.i.i.3.cleanup_crit_edge, label %if.end4.i.i.3.for.inc_crit_edge

if.end4.i.i.3.for.inc_crit_edge:                  ; preds = %if.end4.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end4.i.i.3.cleanup_crit_edge:                  ; preds = %if.end4.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %if.end4.i.i.3.for.inc_crit_edge, %if.end4.i.i.2.for.inc_crit_edge, %if.end4.i.i.1.for.inc_crit_edge, %if.end4.i.i.preheader.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr4 = getelementptr i32, ptr %buf.034, i32 5
  %inc = add nuw nsw i32 %i.033, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %52 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %53, i32 1256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 0) #7, !srcloc !340
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end4.i.i.3.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -5, %if.end4.i.i.3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t3_config_trace_filter(ptr nocapture noundef readonly %adapter, ptr nocapture noundef readonly %tp, i32 noundef %filter_index, i32 noundef %invert, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sport = getelementptr inbounds %struct.trace_params, ptr %tp, i32 0, i32 4
  %0 = ptrtoint ptr %sport to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sport, align 4
  %2 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tp, align 4
  %dport = getelementptr inbounds %struct.trace_params, ptr %tp, i32 0, i32 6
  %4 = ptrtoint ptr %dport to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dport, align 4
  %dip = getelementptr inbounds %struct.trace_params, ptr %tp, i32 0, i32 2
  %6 = ptrtoint ptr %dip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dip, align 4
  %proto = getelementptr inbounds %struct.trace_params, ptr %tp, i32 0, i32 9
  %8 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %proto, align 4
  %conv7 = zext i8 %9 to i32
  %vlan = getelementptr inbounds %struct.trace_params, ptr %tp, i32 0, i32 8
  %10 = ptrtoint ptr %vlan to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load = load i32, ptr %vlan, align 4
  %11 = lshr i32 %bf.load, 12
  %shl8 = and i32 %11, 1048320
  %or9 = or i32 %shl8, %conv7
  %12 = shl i32 %bf.load, 16
  %shl12 = and i32 %12, 15728640
  %or13 = or i32 %or9, %shl12
  %sport_mask = getelementptr inbounds %struct.trace_params, ptr %tp, i32 0, i32 5
  %13 = ptrtoint ptr %sport_mask to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %sport_mask, align 2
  %sip_mask = getelementptr inbounds %struct.trace_params, ptr %tp, i32 0, i32 1
  %15 = ptrtoint ptr %sip_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sip_mask, align 4
  %dport_mask = getelementptr inbounds %struct.trace_params, ptr %tp, i32 0, i32 7
  %17 = ptrtoint ptr %dport_mask to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %dport_mask, align 2
  %dip_mask = getelementptr inbounds %struct.trace_params, ptr %tp, i32 0, i32 3
  %19 = ptrtoint ptr %dip_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dip_mask, align 4
  %proto_mask = getelementptr inbounds %struct.trace_params, ptr %tp, i32 0, i32 10
  %21 = ptrtoint ptr %proto_mask to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %proto_mask, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %invert)
  %tobool.not = icmp eq i32 %invert, 0
  %or38 = or i32 %or13, 536870912
  %spec.select = select i1 %tobool.not, i32 %or13, i32 %or38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool39.not = icmp eq i32 %enable, 0
  %or42 = or i32 %spec.select, 268435456
  %key.sroa.11.1 = select i1 %tobool39.not, i32 %spec.select, i32 %or42
  %bf.clear29 = and i32 %bf.load, 1048320
  %conv26 = zext i8 %22 to i32
  %bf.clear33 = shl i32 %bf.load, 20
  %shl34 = and i32 %bf.clear33, 15728640
  %or31 = or i32 %shl34, %bf.clear29
  %or35 = or i32 %or31, %conv26
  %conv21 = zext i16 %18 to i32
  %or23 = tail call i32 @llvm.fshl.i32(i32 %conv21, i32 %16, i32 16)
  %conv15 = zext i16 %14 to i32
  %shl16 = shl i32 %16, 16
  %or17 = or i32 %shl16, %conv15
  %conv2 = zext i16 %5 to i32
  %or4 = tail call i32 @llvm.fshl.i32(i32 %conv2, i32 %3, i32 16)
  %conv = zext i16 %1 to i32
  %shl = shl i32 %3, 16
  %or = or i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %filter_index)
  %tobool44.not = icmp eq i32 %filter_index, 0
  %cond = select i1 %tobool44.not, i32 32, i32 288
  %inc = or i32 %cond, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %23 = tail call i32 @llvm.bswap.i32(i32 %cond) #7
  %regs.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %24 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %23) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %26 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %27 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %28, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %26) #7, !srcloc !340
  %inc46 = or i32 %cond, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %29 = tail call i32 @llvm.bswap.i32(i32 %inc) #7
  %30 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i92 = getelementptr i8, ptr %31, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i92, i32 %29) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %32 = tail call i32 @llvm.bswap.i32(i32 %or17) #7
  %33 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i3.i93 = getelementptr i8, ptr %34, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i93, i32 %32) #7, !srcloc !340
  %inc48 = or i32 %cond, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %35 = tail call i32 @llvm.bswap.i32(i32 %inc46) #7
  %36 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i95 = getelementptr i8, ptr %37, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i95, i32 %35) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %38 = tail call i32 @llvm.bswap.i32(i32 %or4) #7
  %39 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i3.i96 = getelementptr i8, ptr %40, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i96, i32 %38) #7, !srcloc !340
  %inc50 = or i32 %cond, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %41 = tail call i32 @llvm.bswap.i32(i32 %inc48) #7
  %42 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i98 = getelementptr i8, ptr %43, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i98, i32 %41) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %44 = tail call i32 @llvm.bswap.i32(i32 %or23) #7
  %45 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i3.i99 = getelementptr i8, ptr %46, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i99, i32 %44) #7, !srcloc !340
  %inc52 = or i32 %cond, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %47 = tail call i32 @llvm.bswap.i32(i32 %inc50) #7
  %48 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i101 = getelementptr i8, ptr %49, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i101, i32 %47) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %50 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  %51 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i3.i102 = getelementptr i8, ptr %52, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i102, i32 %50) #7, !srcloc !340
  %inc54 = or i32 %cond, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %53 = tail call i32 @llvm.bswap.i32(i32 %inc52) #7
  %54 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i104 = getelementptr i8, ptr %55, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i104, i32 %53) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %56 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  %57 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i3.i105 = getelementptr i8, ptr %58, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i105, i32 %56) #7, !srcloc !340
  %inc56 = or i32 %cond, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %59 = tail call i32 @llvm.bswap.i32(i32 %inc54) #7
  %60 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i107 = getelementptr i8, ptr %61, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i107, i32 %59) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %62 = tail call i32 @llvm.bswap.i32(i32 %key.sroa.11.1) #7
  %63 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i3.i108 = getelementptr i8, ptr %64, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i108, i32 %62) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %65 = tail call i32 @llvm.bswap.i32(i32 %inc56) #7
  %66 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i110 = getelementptr i8, ptr %67, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i110, i32 %65) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %68 = tail call i32 @llvm.bswap.i32(i32 %or35) #7
  %69 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i3.i111 = getelementptr i8, ptr %70, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i111, i32 %68) #7, !srcloc !340
  %71 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %72, i32 1092
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_config_sched(ptr nocapture noundef readonly %adap, i32 noundef %kbps, i32 noundef %sched) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vpd = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 10, i32 3
  %0 = ptrtoint ptr %vpd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vpd, align 4
  %mul = mul i32 %1, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %kbps)
  %cmp.not = icmp eq i32 %kbps, 0
  br i1 %cmp.not, label %entry.if.end19_crit_edge, label %if.then

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then:                                          ; preds = %entry
  %mul1 = mul i32 %kbps, 125
  br label %for.body.outer

for.body.outer:                                   ; preds = %if.then7.for.body.outer_crit_edge, %if.then
  %selected_bpt.080.ph = phi i32 [ %selected_bpt.1, %if.then7.for.body.outer_crit_edge ], [ 0, %if.then ]
  %selected_cpt.079.ph = phi i32 [ %selected_cpt.1, %if.then7.for.body.outer_crit_edge ], [ 0, %if.then ]
  %mindelta.078.ph = phi i32 [ %2, %if.then7.for.body.outer_crit_edge ], [ -1, %if.then ]
  %cpt.076.ph = phi i32 [ %inc, %if.then7.for.body.outer_crit_edge ], [ 1, %if.then ]
  br label %for.body

for.body:                                         ; preds = %for.inc.thread.for.body_crit_edge, %for.body.outer
  %selected_cpt.079 = phi i32 [ 0, %for.inc.thread.for.body_crit_edge ], [ %selected_cpt.079.ph, %for.body.outer ]
  %cpt.076 = phi i32 [ %inc86, %for.inc.thread.for.body_crit_edge ], [ %cpt.076.ph, %for.body.outer ]
  %div = udiv i32 %mul, %cpt.076
  %div368 = lshr i32 %div, 1
  %add = add i32 %div368, %mul1
  %div4 = udiv i32 %add, %div
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %add)
  %cmp5.not = icmp ule i32 %div, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %div4)
  %cmp6 = icmp ult i32 %div4, 256
  %or.cond = and i1 %cmp6, %cmp5.not
  br i1 %or.cond, label %if.then7, label %if.else

if.then7:                                         ; preds = %for.body
  %mul8 = mul i32 %div4, %div
  call void @__sanitizer_cov_trace_cmp4(i32 %mul8, i32 %mul1)
  %cmp9.not = icmp ult i32 %mul8, %mul1
  %sub = sub i32 %mul8, %mul1
  %sub10 = sub i32 %mul1, %mul8
  %cond = select i1 %cmp9.not, i32 %sub10, i32 %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %mindelta.078.ph)
  %cmp11.not = icmp ugt i32 %cond, %mindelta.078.ph
  %2 = call i32 @llvm.umin.i32(i32 %cond, i32 %mindelta.078.ph)
  %selected_cpt.1 = select i1 %cmp11.not, i32 %selected_cpt.079, i32 %cpt.076
  %selected_bpt.1 = select i1 %cmp11.not, i32 %selected_bpt.080.ph, i32 %div4
  %inc = add nuw nsw i32 %cpt.076, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %if.then7.for.body.outer_crit_edge

if.then7.for.body.outer_crit_edge:                ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.outer

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %selected_cpt.079)
  %cond69 = icmp eq i32 %selected_cpt.079, 0
  br i1 %cond69, label %for.inc.thread, label %if.else.if.end19_crit_edge

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

for.inc.thread:                                   ; preds = %if.else
  %inc86 = add nuw nsw i32 %cpt.076, 1
  %exitcond.not87 = icmp eq i32 %inc86, 256
  br i1 %exitcond.not87, label %for.inc.thread.cleanup_crit_edge, label %for.inc.thread.for.body_crit_edge

for.inc.thread.for.body_crit_edge:                ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.thread.cleanup_crit_edge:                 ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %selected_cpt.1)
  %tobool16.not = icmp eq i32 %selected_cpt.1, 0
  br i1 %tobool16.not, label %for.end.cleanup_crit_edge, label %for.end.if.end19_crit_edge

for.end.if.end19_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %for.end.if.end19_crit_edge, %if.else.if.end19_crit_edge, %entry.if.end19_crit_edge
  %selected_cpt.2 = phi i32 [ %selected_cpt.1, %for.end.if.end19_crit_edge ], [ 0, %entry.if.end19_crit_edge ], [ %selected_cpt.079, %if.else.if.end19_crit_edge ]
  %selected_bpt.2 = phi i32 [ %selected_bpt.1, %for.end.if.end19_crit_edge ], [ 0, %entry.if.end19_crit_edge ], [ %selected_bpt.080.ph, %if.else.if.end19_crit_edge ]
  %div20.neg = sdiv i32 %sched, -2
  %sub21 = add nsw i32 %div20.neg, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %3 = tail call i32 @llvm.bswap.i32(i32 %sub21) #7
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 2
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #7, !srcloc !340
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i71 = getelementptr i8, ptr %7, i32 1052
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i71) #7, !srcloc !337
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %and = and i32 %sched, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.else27, label %if.then23

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %and24 = and i32 %9, 65535
  %shl = shl i32 %selected_cpt.2, 16
  %or = or i32 %and24, %shl
  %shl25 = shl i32 %selected_bpt.2, 24
  %or26 = or i32 %or, %shl25
  br label %if.end32

if.else27:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %and28 = and i32 %9, -65536
  %shl30 = shl i32 %selected_bpt.2, 8
  %or29 = or i32 %shl30, %selected_cpt.2
  %or31 = or i32 %or29, %and28
  br label %if.end32

if.end32:                                         ; preds = %if.else27, %if.then23
  %v.0 = phi i32 [ %or26, %if.then23 ], [ %or31, %if.else27 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %10 = tail call i32 @llvm.bswap.i32(i32 %v.0) #7
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr.i73 = getelementptr i8, ptr %12, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73, i32 %10) #7, !srcloc !340
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %for.end.cleanup_crit_edge, %for.inc.thread.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end32 ], [ -22, %for.end.cleanup_crit_edge ], [ -22, %for.inc.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_init_hw(ptr noundef %adapter, i32 noundef %fw_params) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i16, align 2
  %devid.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10
  %rev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 13
  %0 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  %info.i.i137 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 5
  %2 = ptrtoint ptr %info.i.i137 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info.i.i137, align 4
  %caps.i.i138 = getelementptr inbounds %struct.adapter_info, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %caps.i.i138 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps.i.i138, align 4
  %and.i.i139 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i139)
  %tobool.not.i140 = icmp eq i32 %and.i.i139, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i140, label %if.then.i, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %regs.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %6 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 2204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1828651008) #7, !srcloc !340
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 2204
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %11 = and i32 %10, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %13, i32 2204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i, i32 %11) #7, !srcloc !340
  %14 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i9.i.i = getelementptr i8, ptr %15, i32 2204
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %17 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i9.i = getelementptr i8, ptr %18, i32 2204
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %20 = or i32 %19, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %21 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i7.i10.i = getelementptr i8, ptr %22, i32 2204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i10.i, i32 %20) #7, !srcloc !340
  %23 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i9.i11.i = getelementptr i8, ptr %24, i32 2204
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i11.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %26 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i13.i = getelementptr i8, ptr %27, i32 2204
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i13.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %29 = and i32 %28, -1073741825
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %30 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i7.i15.i = getelementptr i8, ptr %31, i32 2204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i15.i, i32 %29) #7, !srcloc !340
  %32 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i9.i16.i = getelementptr i8, ptr %33, i32 2204
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i16.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %35 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i18.i = getelementptr i8, ptr %36, i32 2204
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i18.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %38 = and i32 %37, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %39 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i7.i20.i = getelementptr i8, ptr %40, i32 2204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i20.i, i32 %38) #7, !srcloc !340
  %41 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i9.i21.i = getelementptr i8, ptr %42, i32 2204
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i21.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %44 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i23.i = getelementptr i8, ptr %45, i32 2204
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i23.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %47 = or i32 %46, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %48 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i7.i25.i = getelementptr i8, ptr %49, i32 2204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i25.i, i32 %47) #7, !srcloc !340
  %50 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i9.i26.i = getelementptr i8, ptr %51, i32 2204
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i26.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  br label %if.end4

if.else:                                          ; preds = %entry
  br i1 %tobool.not.i140, label %if.else.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.else
  %regs.i.i141 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %53 = ptrtoint ptr %regs.i.i141 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i.i141, align 4
  %add.ptr.i.i142 = getelementptr i8, ptr %54, i32 2208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i142, i32 0) #7, !srcloc !340
  %55 = ptrtoint ptr %regs.i.i141 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs.i.i141, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %56, i32 2208
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  tail call void @msleep(i32 noundef 1) #7
  %58 = ptrtoint ptr %regs.i.i141 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i.i141, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %59, i32 2208
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21.i) #7, !srcloc !337
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %and.i = and i32 %61, -1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %for.cond.preheader.i.if.then4.i_crit_edge, label %for.cond.i

for.cond.preheader.i.if.then4.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i

for.cond.i:                                       ; preds = %for.cond.preheader.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %62 = ptrtoint ptr %regs.i.i141 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs.i.i141, align 4
  %add.ptr.i.1.i = getelementptr i8, ptr %63, i32 2208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1.i, i32 0) #7, !srcloc !340
  %64 = ptrtoint ptr %regs.i.i141 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i.i141, align 4
  %add.ptr.i19.1.i = getelementptr i8, ptr %65, i32 2208
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.1.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  tail call void @msleep(i32 noundef 1) #7
  %67 = ptrtoint ptr %regs.i.i141 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs.i.i141, align 4
  %add.ptr.i21.1.i = getelementptr i8, ptr %68, i32 2208
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21.1.i) #7, !srcloc !337
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %and.1.i = and i32 %70, -1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool3.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool3.not.1.i, label %for.cond.i.if.then4.i_crit_edge, label %for.cond.1.i

for.cond.i.if.then4.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i

for.cond.1.i:                                     ; preds = %for.cond.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %71 = ptrtoint ptr %regs.i.i141 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs.i.i141, align 4
  %add.ptr.i.2.i = getelementptr i8, ptr %72, i32 2208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2.i, i32 0) #7, !srcloc !340
  %73 = ptrtoint ptr %regs.i.i141 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs.i.i141, align 4
  %add.ptr.i19.2.i = getelementptr i8, ptr %74, i32 2208
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.2.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  tail call void @msleep(i32 noundef 1) #7
  %76 = ptrtoint ptr %regs.i.i141 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs.i.i141, align 4
  %add.ptr.i21.2.i = getelementptr i8, ptr %77, i32 2208
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21.2.i) #7, !srcloc !337
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %and.2.i = and i32 %79, -1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool3.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool3.not.2.i, label %for.cond.1.i.if.then4.i_crit_edge, label %for.cond.2.i

for.cond.1.i.if.then4.i_crit_edge:                ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i

for.cond.2.i:                                     ; preds = %for.cond.1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %80 = ptrtoint ptr %regs.i.i141 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regs.i.i141, align 4
  %add.ptr.i.3.i = getelementptr i8, ptr %81, i32 2208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3.i, i32 0) #7, !srcloc !340
  %82 = ptrtoint ptr %regs.i.i141 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regs.i.i141, align 4
  %add.ptr.i19.3.i = getelementptr i8, ptr %83, i32 2208
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.3.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  tail call void @msleep(i32 noundef 1) #7
  %85 = ptrtoint ptr %regs.i.i141 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regs.i.i141, align 4
  %add.ptr.i21.3.i = getelementptr i8, ptr %86, i32 2208
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21.3.i) #7, !srcloc !337
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %and.3.i = and i32 %88, -1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool3.not.3.i = icmp eq i32 %and.3.i, 0
  br i1 %tobool3.not.3.i, label %for.cond.2.i.if.then4.i_crit_edge, label %for.cond.3.i

for.cond.2.i.if.then4.i_crit_edge:                ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i

for.cond.3.i:                                     ; preds = %for.cond.2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %89 = ptrtoint ptr %regs.i.i141 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs.i.i141, align 4
  %add.ptr.i.4.i = getelementptr i8, ptr %90, i32 2208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.4.i, i32 0) #7, !srcloc !340
  %91 = ptrtoint ptr %regs.i.i141 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regs.i.i141, align 4
  %add.ptr.i19.4.i = getelementptr i8, ptr %92, i32 2208
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.4.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  tail call void @msleep(i32 noundef 1) #7
  %94 = ptrtoint ptr %regs.i.i141 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs.i.i141, align 4
  %add.ptr.i21.4.i = getelementptr i8, ptr %95, i32 2208
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21.4.i) #7, !srcloc !337
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %and.4.i = and i32 %97, -1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i)
  %tobool3.not.4.i = icmp eq i32 %and.4.i, 0
  br i1 %tobool3.not.4.i, label %for.cond.3.i.if.then4.i_crit_edge, label %calibrate_xgm.exit

for.cond.3.i.if.then4.i_crit_edge:                ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i

if.then4.i:                                       ; preds = %for.cond.3.i.if.then4.i_crit_edge, %for.cond.2.i.if.then4.i_crit_edge, %for.cond.1.i.if.then4.i_crit_edge, %for.cond.i.if.then4.i_crit_edge, %for.cond.preheader.i.if.then4.i_crit_edge
  %.lcssa.i = phi i32 [ %61, %for.cond.preheader.i.if.then4.i_crit_edge ], [ %70, %for.cond.i.if.then4.i_crit_edge ], [ %79, %for.cond.1.i.if.then4.i_crit_edge ], [ %88, %for.cond.2.i.if.then4.i_crit_edge ], [ %97, %for.cond.3.i.if.then4.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %98 = lshr i32 %.lcssa.i, 2
  %99 = and i32 %98, 117440512
  %100 = ptrtoint ptr %regs.i.i141 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regs.i.i141, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %101, i32 2208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 %99) #7, !srcloc !340
  br label %if.end4

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %regs.i24.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %102 = ptrtoint ptr %regs.i24.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regs.i24.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %103, i32 2204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 318767104) #7, !srcloc !340
  %104 = ptrtoint ptr %regs.i24.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regs.i24.i, align 4
  %add.ptr.i.i.i143 = getelementptr i8, ptr %105, i32 2204
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i143) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %107 = or i32 %106, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %108 = ptrtoint ptr %regs.i24.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regs.i24.i, align 4
  %add.ptr.i7.i.i144 = getelementptr i8, ptr %109, i32 2204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i144, i32 %107) #7, !srcloc !340
  %110 = ptrtoint ptr %regs.i24.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regs.i24.i, align 4
  %add.ptr.i9.i.i145 = getelementptr i8, ptr %111, i32 2204
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i.i145) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  br label %if.end4

calibrate_xgm.exit:                               ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #9
  %pdev.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %113 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %114, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.131) #10
  br label %out_err

if.end4:                                          ; preds = %if.else.i, %if.then4.i, %if.then.i, %if.then.if.end4_crit_edge
  %mclk = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 3, i32 1
  %115 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %mclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool5.not = icmp eq i32 %116, 0
  br i1 %tobool5.not, label %if.end4.if.end36_crit_edge, label %if.then6

if.end4.if.end36_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then6:                                         ; preds = %if.end4
  %tcam_size.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 20, i32 1
  %117 = ptrtoint ptr %tcam_size.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %tcam_size.i.i, align 4
  %119 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp.not.i = icmp eq i32 %120, 0
  br i1 %cmp.not.i, label %if.then6.if.end10.i_crit_edge, label %if.then.i146

if.then6.if.end10.i_crit_edge:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then.i146:                                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %118)
  %cmp1.i = icmp ult i32 %118, 16385
  br i1 %cmp1.i, label %if.then.i146.if.end10.i_crit_edge, label %if.else.i147

if.then.i146.if.end10.i_crit_edge:                ; preds = %if.then.i146
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.else.i147:                                     ; preds = %if.then.i146
  call void @__sanitizer_cov_trace_const_cmp4(i32 65537, i32 %118)
  %cmp3.i = icmp ult i32 %118, 65537
  br i1 %cmp3.i, label %if.else.i147.if.end10.i_crit_edge, label %if.else5.i

if.else.i147.if.end10.i_crit_edge:                ; preds = %if.else.i147
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.else5.i:                                       ; preds = %if.else.i147
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 262145, i32 %118)
  %cmp6.i = icmp ult i32 %118, 262145
  %spec.select.i = select i1 %cmp6.i, i32 805306368, i32 0
  %spec.select129.i = select i1 %cmp6.i, i32 20, i32 22
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else5.i, %if.else.i147.if.end10.i_crit_edge, %if.then.i146.if.end10.i_crit_edge, %if.then6.if.end10.i_crit_edge
  %timers.0.i = phi i32 [ 0, %if.then6.if.end10.i_crit_edge ], [ 268435456, %if.then.i146.if.end10.i_crit_edge ], [ 536870912, %if.else.i147.if.end10.i_crit_edge ], [ %spec.select.i, %if.else5.i ]
  %timers_shift.0.i = phi i32 [ 22, %if.then6.if.end10.i_crit_edge ], [ 16, %if.then.i146.if.end10.i_crit_edge ], [ 18, %if.else.i147.if.end10.i_crit_edge ], [ %spec.select129.i, %if.else5.i ]
  %chan_rx_size.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 2, i32 4
  %121 = ptrtoint ptr %chan_rx_size.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %chan_rx_size.i, align 4
  %chan_tx_size.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 2, i32 5
  %123 = ptrtoint ptr %chan_tx_size.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %chan_tx_size.i, align 4
  %shr.i = lshr i32 %124, 16
  %or.i = or i32 %shr.i, %122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %125 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %regs.i.i148 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %126 = ptrtoint ptr %regs.i.i148 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %regs.i.i148, align 4
  %add.ptr.i.i149 = getelementptr i8, ptr %127, i32 796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i149, i32 %125) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %128 = ptrtoint ptr %regs.i.i148 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %regs.i.i148, align 4
  %add.ptr.i131.i = getelementptr i8, ptr %129, i32 800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i131.i, i32 0) #7, !srcloc !340
  %tx_pg_size.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 2, i32 7
  %130 = ptrtoint ptr %tx_pg_size.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %tx_pg_size.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %132 = tail call i32 @llvm.bswap.i32(i32 %131) #7
  %133 = ptrtoint ptr %regs.i.i148 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %regs.i.i148, align 4
  %add.ptr.i133.i = getelementptr i8, ptr %134, i32 820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i133.i, i32 %132) #7, !srcloc !340
  %tx_num_pgs.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 2, i32 9
  %135 = ptrtoint ptr %tx_num_pgs.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %tx_num_pgs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %137 = tail call i32 @llvm.bswap.i32(i32 %136) #7
  %138 = ptrtoint ptr %regs.i.i148 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %regs.i.i148, align 4
  %add.ptr.i135.i = getelementptr i8, ptr %139, i32 824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i135.i, i32 %137) #7, !srcloc !340
  %140 = ptrtoint ptr %tx_pg_size.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %tx_pg_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool.not.i.i = icmp eq i32 %141, 0
  %142 = tail call i32 @llvm.ctlz.i32(i32 %141, i1 true) #7, !range !342
  %.neg.i = mul nsw i32 %142, -65536
  %sub.i.op.op.i = add nsw i32 %.neg.i, 1310720
  %shl.i = select i1 %tobool.not.i.i, i32 -786432, i32 %sub.i.op.op.i
  %143 = ptrtoint ptr %regs.i.i148 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %regs.i.i148, align 4
  %add.ptr.i.i.i150 = getelementptr i8, ptr %144, i32 876
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i150) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %146 = and i32 %145, -3841
  %147 = tail call i32 @llvm.bswap.i32(i32 %146) #7
  %or.i.i = or i32 %147, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %148 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  %149 = ptrtoint ptr %regs.i.i148 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %regs.i.i148, align 4
  %add.ptr.i7.i.i151 = getelementptr i8, ptr %150, i32 876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i151, i32 %148) #7, !srcloc !340
  %151 = ptrtoint ptr %regs.i.i148 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %regs.i.i148, align 4
  %add.ptr.i9.i.i152 = getelementptr i8, ptr %152, i32 876
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i.i152) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %154 = ptrtoint ptr %regs.i.i148 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %regs.i.i148, align 4
  %add.ptr.i137.i = getelementptr i8, ptr %155, i32 808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i137.i, i32 0) #7, !srcloc !340
  %rx_pg_size.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 2, i32 6
  %156 = ptrtoint ptr %rx_pg_size.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %rx_pg_size.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %158 = tail call i32 @llvm.bswap.i32(i32 %157) #7
  %159 = ptrtoint ptr %regs.i.i148 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %regs.i.i148, align 4
  %add.ptr.i139.i = getelementptr i8, ptr %160, i32 812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139.i, i32 %158) #7, !srcloc !340
  %rx_num_pgs.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 2, i32 8
  %161 = ptrtoint ptr %rx_num_pgs.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %rx_num_pgs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %163 = tail call i32 @llvm.bswap.i32(i32 %162) #7
  %164 = ptrtoint ptr %regs.i.i148 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %regs.i.i148, align 4
  %add.ptr.i141.i = getelementptr i8, ptr %165, i32 816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i141.i, i32 %163) #7, !srcloc !340
  %166 = ptrtoint ptr %rx_num_pgs.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %rx_num_pgs.i, align 4
  %168 = ptrtoint ptr %tx_num_pgs.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %tx_num_pgs.i, align 4
  %add.i = add i32 %167, 48
  %add15.i = add i32 %add.i, %169
  %add15.i.frozen = freeze i32 %add15.i
  %div.i = udiv i32 %add15.i.frozen, 24
  %170 = mul i32 %div.i, 24
  %rem.i.decomposed = sub i32 %add15.i.frozen, %170
  %sub16.i = sub i32 %add15.i, %rem.i.decomposed
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %171 = tail call i32 @llvm.bswap.i32(i32 %sub16.i) #7
  %172 = ptrtoint ptr %regs.i.i148 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %regs.i.i148, align 4
  %add.ptr.i143.i = getelementptr i8, ptr %173, i32 1132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143.i, i32 %171) #7, !srcloc !340
  %mul.i = shl i32 %118, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %174 = tail call i32 @llvm.bswap.i32(i32 %mul.i) #7
  %175 = ptrtoint ptr %regs.i.i148 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %regs.i.i148, align 4
  %add.ptr.i145.i = getelementptr i8, ptr %176, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i145.i, i32 %174) #7, !srcloc !340
  %add17.i = add i32 %mul.i, 4194304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %177 = tail call i32 @llvm.bswap.i32(i32 %add17.i) #7
  %178 = ptrtoint ptr %regs.i.i148 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %regs.i.i148, align 4
  %add.ptr.i147.i = getelementptr i8, ptr %179, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i147.i, i32 %177) #7, !srcloc !340
  %add18.i = add i32 %mul.i, 8388608
  %or20.i = or i32 %timers.0.i, %add18.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %180 = tail call i32 @llvm.bswap.i32(i32 %or20.i) #7
  %181 = ptrtoint ptr %regs.i.i148 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %regs.i.i148, align 4
  %add.ptr.i149.i = getelementptr i8, ptr %182, i32 792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i149.i, i32 %180) #7, !srcloc !340
  %ntimer_qs.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 2, i32 10
  %183 = ptrtoint ptr %ntimer_qs.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %ntimer_qs.i, align 4
  %sub21.i = add i32 %184, -1
  %shl22.i = shl i32 %sub21.i, %timers_shift.0.i
  %add23.i = add i32 %mul.i, 12582912
  %add24.i = add i32 %add23.i, %shl22.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %185 = tail call i32 @llvm.bswap.i32(i32 %add24.i) #7
  %186 = ptrtoint ptr %regs.i.i148 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %regs.i.i148, align 4
  %add.ptr.i151.i = getelementptr i8, ptr %187, i32 788
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i151.i, i32 %185) #7, !srcloc !340
  %mul25.i = shl i32 %sub16.i, 6
  %add26.i = add i32 %add24.i, %mul25.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %188 = tail call i32 @llvm.bswap.i32(i32 %add26.i) #7
  %189 = ptrtoint ptr %regs.i.i148 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %regs.i.i148, align 4
  %add.ptr.i153.i = getelementptr i8, ptr %190, i32 1128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i153.i, i32 %188) #7, !srcloc !340
  %mul27.i = shl i32 %div.i, 6
  %add28.i = add i32 %add26.i, %mul27.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %191 = tail call i32 @llvm.bswap.i32(i32 %add28.i) #7
  %192 = ptrtoint ptr %regs.i.i148 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %regs.i.i148, align 4
  %add.ptr.i155.i = getelementptr i8, ptr %193, i32 1120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i155.i, i32 %191) #7, !srcloc !340
  %194 = ptrtoint ptr %rx_num_pgs.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %rx_num_pgs.i, align 4
  %div30.i = udiv i32 %195, 24
  %mul31.i = shl i32 %div30.i, 6
  %add32.i = add i32 %mul31.i, %add28.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %196 = tail call i32 @llvm.bswap.i32(i32 %add32.i) #7
  %197 = ptrtoint ptr %regs.i.i148 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %regs.i.i148, align 4
  %add.ptr.i157.i = getelementptr i8, ptr %198, i32 1124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i157.i, i32 %196) #7, !srcloc !340
  %199 = ptrtoint ptr %tx_num_pgs.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %tx_num_pgs.i, align 4
  %div34.i = udiv i32 %200, 24
  %mul35.i = shl i32 %div34.i, 6
  %add36.i = add i32 %add32.i, 4095
  %add37.i = add i32 %add36.i, %mul35.i
  %and.i153 = and i32 %add37.i, -4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %201 = tail call i32 @llvm.bswap.i32(i32 %and.i153) #7
  %202 = ptrtoint ptr %regs.i.i148 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %regs.i.i148, align 4
  %add.ptr.i159.i = getelementptr i8, ptr %203, i32 652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i159.i, i32 %201) #7, !srcloc !340
  %cm_size.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 2, i32 3
  %204 = ptrtoint ptr %cm_size.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %cm_size.i, align 4
  %sub38.i = sub i32 %205, %and.i153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %206 = tail call i32 @llvm.bswap.i32(i32 %sub38.i) #7
  %207 = ptrtoint ptr %regs.i.i148 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %regs.i.i148, align 4
  %add.ptr.i161.i = getelementptr i8, ptr %208, i32 656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i161.i, i32 %206) #7, !srcloc !340
  %209 = ptrtoint ptr %cm_size.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %cm_size.i, align 4
  %sub40.i = sub i32 -3145728, %and.i153
  %sub41.i = add i32 %sub40.i, %210
  %div42.i = udiv i32 %sub41.i, 3072
  %sub43.i = add nsw i32 %div42.i, -32
  %211 = ptrtoint ptr %tcam_size.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %tcam_size.i.i, align 4
  %nservers.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 1, i32 1
  %213 = ptrtoint ptr %nservers.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %nservers.i, align 4
  %nfilters.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 1, i32 2
  %215 = ptrtoint ptr %nfilters.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %nfilters.i, align 4
  %nroutes.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 1, i32 3
  %217 = ptrtoint ptr %nroutes.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %nroutes.i, align 4
  %219 = add i32 %214, %216
  %220 = add i32 %219, %218
  %sub54.i = sub i32 %212, %220
  call void @__sanitizer_cov_trace_cmp4(i32 %sub54.i, i32 %sub43.i)
  %cmp55.i = icmp ugt i32 %sub54.i, %sub43.i
  br i1 %cmp55.i, label %if.then56.i, label %if.end10.i.partition_mem.exit_crit_edge

if.end10.i.partition_mem.exit_crit_edge:          ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %partition_mem.exit

if.then56.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub43.neg.i = sub nsw i32 32, %div42.i
  %sub57.i = add i32 %sub43.neg.i, %214
  %add61.i = add i32 %sub57.i, %sub54.i
  %221 = ptrtoint ptr %nservers.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %add61.i, ptr %nservers.i, align 4
  br label %partition_mem.exit

partition_mem.exit:                               ; preds = %if.then56.i, %if.end10.i.partition_mem.exit_crit_edge
  %pmrx = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 17
  %222 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %mclk, align 4
  %mem_timing = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 3, i32 4
  %224 = ptrtoint ptr %mem_timing to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %mem_timing, align 4
  %call9 = tail call fastcc i32 @mc7_init(ptr noundef %pmrx, i32 noundef %223, i32 noundef %225)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %lor.lhs.false, label %partition_mem.exit.out_err_crit_edge

partition_mem.exit.out_err_crit_edge:             ; preds = %partition_mem.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err

lor.lhs.false:                                    ; preds = %partition_mem.exit
  %pmtx = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 18
  %226 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %mclk, align 4
  %228 = ptrtoint ptr %mem_timing to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %mem_timing, align 4
  %call13 = tail call fastcc i32 @mc7_init(ptr noundef %pmtx, i32 noundef %227, i32 noundef %229)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %lor.lhs.false15, label %lor.lhs.false.out_err_crit_edge

lor.lhs.false.out_err_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %cm = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 19
  %230 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %mclk, align 4
  %232 = ptrtoint ptr %mem_timing to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %mem_timing, align 4
  %call18 = tail call fastcc i32 @mc7_init(ptr noundef %cm, i32 noundef %231, i32 noundef %233)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %lor.lhs.false20, label %lor.lhs.false15.out_err_crit_edge

lor.lhs.false15.out_err_crit_edge:                ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err

lor.lhs.false20:                                  ; preds = %lor.lhs.false15
  %mc5 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 20
  %234 = ptrtoint ptr %nservers.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %nservers.i, align 4
  %236 = ptrtoint ptr %nfilters.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %nfilters.i, align 4
  %238 = ptrtoint ptr %nroutes.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %nroutes.i, align 4
  %call27 = tail call i32 @t3_mc5_init(ptr noundef %mc5, i32 noundef %235, i32 noundef %237, i32 noundef %239) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %lor.lhs.false20.for.body_crit_edge, label %lor.lhs.false20.out_err_crit_edge

lor.lhs.false20.out_err_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err

lor.lhs.false20.for.body_crit_edge:               ; preds = %lor.lhs.false20
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0246, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.cond.if.end36_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.if.end36_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %lor.lhs.false20.for.body_crit_edge
  %i.0246 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %lor.lhs.false20.for.body_crit_edge ]
  %call32 = tail call fastcc i32 @clear_sge_ctxt(ptr noundef %adapter, i32 noundef %i.0246, i32 noundef 524288)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %for.cond, label %for.body.out_err_crit_edge

for.body.out_err_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err

if.end36:                                         ; preds = %for.cond.if.end36_crit_edge, %if.end4.if.end36_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %regs.i.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %240 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i154 = getelementptr i8, ptr %241, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i154, i32 1085800449) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %242 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %243, i32 832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 352665602) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %244 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %245, i32 836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 387976528) #7, !srcloc !340
  %246 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %247, i32 768
  %248 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %249 = and i32 %248, -12582916
  %250 = or i32 %249, 12582912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %251 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i7.i.i.i = getelementptr i8, ptr %252, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i.i, i32 %250) #7, !srcloc !340
  %253 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i9.i.i.i = getelementptr i8, ptr %254, i32 768
  %255 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %256 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %257, i32 1060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 337122328) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %258 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %259, i32 880
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 83952901) #7, !srcloc !340
  %260 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %261)
  %cmp.not.i.i = icmp eq i32 %261, 0
  %cond.i.i = select i1 %cmp.not.i.i, i32 8192, i32 2048
  %262 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i10.i.i = getelementptr i8, ptr %263, i32 888
  %264 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10.i.i) #7, !srcloc !337
  %265 = tail call i32 @llvm.bswap.i32(i32 %264) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %or.i11.i.i = or i32 %265, %cond.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %266 = tail call i32 @llvm.bswap.i32(i32 %or.i11.i.i) #7
  %267 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i7.i12.i.i = getelementptr i8, ptr %268, i32 888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i12.i.i, i32 %266) #7, !srcloc !340
  %269 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i9.i13.i.i = getelementptr i8, ptr %270, i32 888
  %271 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i13.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %272 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i15.i.i = getelementptr i8, ptr %273, i32 840
  %274 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i15.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %275 = and i32 %274, -8427841
  %276 = or i32 %275, 8395072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %277 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i7.i18.i.i = getelementptr i8, ptr %278, i32 840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i18.i.i, i32 %276) #7, !srcloc !340
  %279 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i9.i19.i.i = getelementptr i8, ptr %280, i32 840
  %281 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i19.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %282 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i21.i.i = getelementptr i8, ptr %283, i32 844
  %284 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i21.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %285 = and i32 %284, -280494081
  %286 = or i32 %285, 12058624
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %287 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i7.i24.i.i = getelementptr i8, ptr %288, i32 844
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i24.i.i, i32 %286) #7, !srcloc !340
  %289 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i9.i25.i.i = getelementptr i8, ptr %290, i32 844
  %291 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i25.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %292 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %293, i32 1200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i, i32 939786240) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %294 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %295, i32 1200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i, i32 -402456576) #7, !srcloc !340
  %296 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %297)
  %cmp3.not.i.i = icmp eq i32 %297, 0
  br i1 %cmp3.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %298 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i31.i.i = getelementptr i8, ptr %299, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i31.i.i, i32 1157693440) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %300 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i3.i.i.i = getelementptr i8, ptr %301, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i.i.i, i32 16777216) #7, !srcloc !340
  %302 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i33.i.i = getelementptr i8, ptr %303, i32 876
  %304 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i33.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %305 = or i32 %304, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %306 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i7.i36.i.i = getelementptr i8, ptr %307, i32 876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i36.i.i, i32 %305) #7, !srcloc !340
  %308 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i9.i37.i.i = getelementptr i8, ptr %309, i32 876
  %310 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i37.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %311 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i39.i.i = getelementptr i8, ptr %312, i32 840
  %313 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i39.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %314 = or i32 %313, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %315 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i7.i42.i.i = getelementptr i8, ptr %316, i32 840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i42.i.i, i32 %314) #7, !srcloc !340
  %317 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i9.i43.i.i = getelementptr i8, ptr %318, i32 840
  %319 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i43.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %320 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i45.i.i = getelementptr i8, ptr %321, i32 876
  %322 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i45.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %323 = or i32 %322, 262144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %324 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i7.i47.i.i = getelementptr i8, ptr %325, i32 876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i47.i.i, i32 %323) #7, !srcloc !340
  %326 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i9.i48.i.i = getelementptr i8, ptr %327, i32 876
  %328 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i48.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %329 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i50.i.i = getelementptr i8, ptr %330, i32 876
  %331 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i50.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %332 = or i32 %331, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %333 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i7.i52.i.i = getelementptr i8, ptr %334, i32 876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i52.i.i, i32 %332) #7, !srcloc !340
  %335 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i9.i53.i.i = getelementptr i8, ptr %336, i32 876
  %337 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i53.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %338 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %339)
  %cmp6.i.i = icmp eq i32 %339, 4
  br i1 %cmp6.i.i, label %if.then7.i.i, label %if.end.i.i.tp_config.exit.i_crit_edge

if.end.i.i.tp_config.exit.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tp_config.exit.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %340 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i55.i.i = getelementptr i8, ptr %341, i32 840
  %342 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i55.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %343 = and i32 %342, -251658241
  %344 = or i32 %343, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %345 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i7.i58.i.i = getelementptr i8, ptr %346, i32 840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i58.i.i, i32 %344) #7, !srcloc !340
  %347 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i9.i59.i.i = getelementptr i8, ptr %348, i32 840
  %349 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i59.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  br label %tp_config.exit.i

tp_config.exit.i:                                 ; preds = %if.then7.i.i, %if.end.i.i.tp_config.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %350 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i61.i.i = getelementptr i8, ptr %351, i32 1068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.i.i, i32 0) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %352 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i63.i.i = getelementptr i8, ptr %353, i32 1072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63.i.i, i32 0) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %354 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i65.i.i = getelementptr i8, ptr %355, i32 1076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65.i.i, i32 0) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %356 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i67.i.i = getelementptr i8, ptr %357, i32 1080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67.i.i, i32 8434) #7, !srcloc !340
  %358 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i1.i = getelementptr i8, ptr %359, i32 772
  %360 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i1.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %361 = and i32 %360, -3145729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %362 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i7.i.i2.i = getelementptr i8, ptr %363, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i2.i, i32 %361) #7, !srcloc !340
  %364 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i9.i.i3.i = getelementptr i8, ptr %365, i32 772
  %366 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i.i3.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %offload.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 14
  %367 = ptrtoint ptr %offload.i.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %offload.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %368)
  %tobool.not.i155 = icmp eq i32 %368, 0
  br i1 %tobool.not.i155, label %tp_config.exit.i.if.end42_crit_edge, label %if.then.i159

tp_config.exit.i.if.end42_crit_edge:              ; preds = %tp_config.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then.i159:                                     ; preds = %tp_config.exit.i
  %vpd.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 3
  %369 = ptrtoint ptr %vpd.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %vpd.i, align 4
  %mul.i156 = mul i32 %370, 1000
  %div.i.i = udiv i32 %mul.i156, 20000
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %mul.i156)
  %371 = icmp ult i32 %mul.i156, 20000
  %372 = tail call i32 @llvm.ctlz.i32(i32 %div.i.i, i1 true) #7, !range !342
  %sub.i.op.i.i = xor i32 %372, 31
  %sub.i.i = select i1 %371, i32 -1, i32 %sub.i.op.i.i
  %div1.i.i = udiv i32 %mul.i156, 5000
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000, i32 %mul.i156)
  %373 = icmp ult i32 %mul.i156, 5000
  %374 = tail call i32 @llvm.ctlz.i32(i32 %div1.i.i, i1 true) #7, !range !342
  %sub.i51.op.i.i = xor i32 %374, 31
  %sub3.i.i = select i1 %373, i32 -1, i32 %sub.i51.op.i.i
  %div4.i.i = udiv i32 %mul.i156, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %mul.i156)
  %375 = icmp ult i32 %mul.i156, 1000
  %376 = tail call i32 @llvm.ctlz.i32(i32 %div4.i.i, i1 true) #7, !range !342
  %shr.i.i = lshr i32 %mul.i156, %sub.i.i
  %shl.i.i = shl nsw i32 %sub.i.i, 16
  %or.i.i157 = or i32 %shl.i.i, %sub3.i.i
  %.neg.i.i = mul nsw i32 %376, -256
  %sub.i54.op.i.i = add nsw i32 %.neg.i.i, 8192
  %shl7.i.i = select i1 %375, i32 0, i32 %sub.i54.op.i.i
  %or8.i.i = or i32 %or.i.i157, %shl7.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %377 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i) #7
  %378 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i5.i = getelementptr i8, ptr %379, i32 912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i5.i, i32 %377) #7, !srcloc !340
  %shr9.i.i = lshr i32 %mul.i156, %sub3.i.i
  %div10.i.i = udiv i32 %shr9.i.i, 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %380 = tail call i32 @llvm.bswap.i32(i32 %div10.i.i) #7
  %381 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i57.i.i = getelementptr i8, ptr %382, i32 948
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57.i.i, i32 %380) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %383 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i59.i.i = getelementptr i8, ptr %384, i32 848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59.i.i, i32 66051) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %385 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i61.i6.i = getelementptr i8, ptr %386, i32 852
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.i6.i, i32 67438087) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %387 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i63.i7.i = getelementptr i8, ptr %388, i32 856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63.i7.i, i32 134810123) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %389 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i65.i8.i = getelementptr i8, ptr %390, i32 860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65.i8.i, i32 202182159) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %391 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i67.i9.i = getelementptr i8, ptr %392, i32 960
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67.i9.i, i32 159928070) #7, !srcloc !340
  %393 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %394)
  %cmp.not.i11.i = icmp eq i32 %394, 0
  %mul.i.i = shl i32 %shr.i.i, 1
  %spec.select.i.i = select i1 %cmp.not.i11.i, i32 %mul.i.i, i32 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %395 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i.i) #7
  %396 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i69.i.i = getelementptr i8, ptr %397, i32 916
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69.i.i, i32 %395) #7, !srcloc !340
  %div1149.i.i = lshr i32 %shr.i.i, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %398 = tail call i32 @llvm.bswap.i32(i32 %div1149.i.i) #7
  %399 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i71.i.i = getelementptr i8, ptr %400, i32 920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71.i.i, i32 %398) #7, !srcloc !340
  %mul12.i.i = shl i32 %shr.i.i, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %401 = tail call i32 @llvm.bswap.i32(i32 %mul12.i.i) #7
  %402 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i73.i.i = getelementptr i8, ptr %403, i32 924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73.i.i, i32 %401) #7, !srcloc !340
  %mul13.i.i = mul i32 %shr.i.i, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %404 = tail call i32 @llvm.bswap.i32(i32 %mul13.i.i) #7
  %405 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i75.i.i = getelementptr i8, ptr %406, i32 928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75.i.i, i32 %404) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %407 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i77.i.i = getelementptr i8, ptr %408, i32 932
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77.i.i, i32 %401) #7, !srcloc !340
  %mul15.i.i = mul i32 %shr.i.i, 7200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %409 = tail call i32 @llvm.bswap.i32(i32 %mul15.i.i) #7
  %410 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i79.i.i = getelementptr i8, ptr %411, i32 936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79.i.i, i32 %409) #7, !srcloc !340
  %mul16.i.i = mul i32 %shr.i.i, 75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %412 = tail call i32 @llvm.bswap.i32(i32 %mul16.i.i) #7
  %413 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i81.i.i = getelementptr i8, ptr %414, i32 940
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81.i.i, i32 %412) #7, !srcloc !340
  %mul17.i.i = mul i32 %shr.i.i, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %415 = tail call i32 @llvm.bswap.i32(i32 %mul17.i.i) #7
  %416 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i83.i.i = getelementptr i8, ptr %417, i32 944
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83.i.i, i32 %415) #7, !srcloc !340
  %mul18.i.i = mul i32 %shr.i.i, 600
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %418 = tail call i32 @llvm.bswap.i32(i32 %mul18.i.i) #7
  %419 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i85.i.i = getelementptr i8, ptr %420, i32 952
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85.i.i, i32 %418) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %421 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i158 = getelementptr i8, ptr %422, i32 1100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i158, i32 33554432) #7, !srcloc !340
  %423 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i27.i.i.i = getelementptr i8, ptr %424, i32 1100
  %425 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %426 = and i32 %425, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %426)
  %cmp31.i.i.i = icmp eq i32 %426, 0
  br i1 %cmp31.i.i.i, label %if.then.i159.if.end42_crit_edge, label %if.then.i159.if.end4.i.i.i_crit_edge

if.then.i159.if.end4.i.i.i_crit_edge:             ; preds = %if.then.i159
  br label %if.end4.i.i.i

if.then.i159.if.end42_crit_edge:                  ; preds = %if.then.i159
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.end4.i.i.i:                                    ; preds = %if.end7.i.i.i.if.end4.i.i.i_crit_edge, %if.then.i159.if.end4.i.i.i_crit_edge
  %attempts.addr.032.i.i.i = phi i32 [ %dec.i.i.i, %if.end7.i.i.i.if.end4.i.i.i_crit_edge ], [ 1000, %if.then.i159.if.end4.i.i.i_crit_edge ]
  %dec.i.i.i = add nsw i32 %attempts.addr.032.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %cmp5.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %cmp5.i.i.i, label %tp_init.exit, label %if.end7.i.i.i

if.end7.i.i.i:                                    ; preds = %if.end4.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %427 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %427(i32 noundef 1073740) #7
  %428 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i13.i = getelementptr i8, ptr %429, i32 1100
  %430 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i13.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %431 = and i32 %430, 33554432
  %cmp.i.i.i = icmp eq i32 %431, 0
  br i1 %cmp.i.i.i, label %if.end7.i.i.i.if.end42_crit_edge, label %if.end7.i.i.i.if.end4.i.i.i_crit_edge

if.end7.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i

if.end7.i.i.i.if.end42_crit_edge:                 ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

tp_init.exit:                                     ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %pdev.i160 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %432 = ptrtoint ptr %pdev.i160 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %pdev.i160, align 8
  %dev.i161 = getelementptr inbounds %struct.pci_dev, ptr %433, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i161, ptr noundef nonnull @.str.140) #10
  br label %out_err

if.end42:                                         ; preds = %if.end7.i.i.i.if.end42_crit_edge, %if.then.i159.if.end42_crit_edge, %tp_config.exit.i.if.end42_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %434 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %435, i32 1100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 16777216) #7, !srcloc !340
  %436 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %params, align 4
  %438 = tail call i32 @llvm.umin.i32(i32 %437, i32 12288)
  %439 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i163 = getelementptr i8, ptr %440, i32 876
  %441 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i163) #7, !srcloc !337
  %442 = tail call i32 @llvm.bswap.i32(i32 %441) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %and.i164 = and i32 %442, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %438)
  %tobool.not.i165 = icmp eq i32 %438, 0
  br i1 %tobool.not.i165, label %if.end42.t3_tp_set_coalescing_size.exit_crit_edge, label %if.then3.i

if.end42.t3_tp_set_coalescing_size.exit_crit_edge: ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %t3_tp_set_coalescing_size.exit

if.then3.i:                                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %or4.i = or i32 %442, 3
  %or7.i = or i32 %438, 805306368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %443 = tail call i32 @llvm.bswap.i32(i32 %or7.i) #7
  %444 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %445, i32 872
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %443) #7, !srcloc !340
  br label %t3_tp_set_coalescing_size.exit

t3_tp_set_coalescing_size.exit:                   ; preds = %if.then3.i, %if.end42.t3_tp_set_coalescing_size.exit_crit_edge
  %val.1.i = phi i32 [ %or4.i, %if.then3.i ], [ %and.i164, %if.end42.t3_tp_set_coalescing_size.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %446 = tail call i32 @llvm.bswap.i32(i32 %val.1.i) #7
  %447 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %448, i32 876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %446) #7, !srcloc !340
  %449 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load i32, ptr %params, align 4
  %451 = tail call i32 @llvm.umin.i32(i32 %450, i32 16384)
  %or.i166 = mul nuw nsw i32 %451, 65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %452 = tail call i32 @llvm.bswap.i32(i32 %or.i166) #7
  %453 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i168 = getelementptr i8, ptr %454, i32 892
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i168, i32 %452) #7, !srcloc !340
  %chan_rx_size.i169 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 2, i32 4
  %455 = ptrtoint ptr %chan_rx_size.i169 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %chan_rx_size.i169, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %457 = tail call i32 @llvm.bswap.i32(i32 %456) #7
  %458 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i171 = getelementptr i8, ptr %459, i32 1292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i171, i32 %457) #7, !srcloc !340
  %460 = ptrtoint ptr %chan_rx_size.i169 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load i32, ptr %chan_rx_size.i169, align 4
  %div85.i = lshr i32 %461, 3
  %add.i172 = add i32 %456, -1
  %sub.i = add i32 %add.i172, %div85.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %462 = tail call i32 @llvm.bswap.i32(i32 %sub.i) #7
  %463 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i97.i = getelementptr i8, ptr %464, i32 1296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i97.i, i32 %462) #7, !srcloc !340
  %465 = ptrtoint ptr %chan_rx_size.i169 to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %chan_rx_size.i169, align 4
  %div386.i = lshr i32 %466, 3
  %add4.i = add i32 %div386.i, %456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %467 = tail call i32 @llvm.bswap.i32(i32 %add4.i) #7
  %468 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i99.i = getelementptr i8, ptr %469, i32 1308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99.i, i32 %467) #7, !srcloc !340
  %470 = ptrtoint ptr %chan_rx_size.i169 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load i32, ptr %chan_rx_size.i169, align 4
  %div687.i = lshr i32 %471, 3
  %add7.i = add i32 %add4.i, -1
  %sub8.i = add i32 %add7.i, %div687.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %472 = tail call i32 @llvm.bswap.i32(i32 %sub8.i) #7
  %473 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i101.i = getelementptr i8, ptr %474, i32 1312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101.i, i32 %472) #7, !srcloc !340
  %475 = ptrtoint ptr %chan_rx_size.i169 to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load i32, ptr %chan_rx_size.i169, align 4
  %div1088.i = lshr i32 %476, 3
  %add11.i = add i32 %div1088.i, %add4.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %477 = tail call i32 @llvm.bswap.i32(i32 %add11.i) #7
  %478 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i103.i = getelementptr i8, ptr %479, i32 1420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103.i, i32 %477) #7, !srcloc !340
  %480 = ptrtoint ptr %chan_rx_size.i169 to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load i32, ptr %chan_rx_size.i169, align 4
  %div1389.i = lshr i32 %481, 2
  %add14.i = add i32 %add11.i, -1
  %sub15.i = add i32 %div1389.i, %add14.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %482 = tail call i32 @llvm.bswap.i32(i32 %sub15.i) #7
  %483 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i105.i = getelementptr i8, ptr %484, i32 1424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105.i, i32 %482) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %485 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i107.i = getelementptr i8, ptr %486, i32 1324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107.i, i32 %477) #7, !srcloc !340
  %487 = ptrtoint ptr %chan_rx_size.i169 to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load i32, ptr %chan_rx_size.i169, align 4
  %div1790.i = lshr i32 %488, 2
  %sub19.i = add i32 %div1790.i, %add14.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %489 = tail call i32 @llvm.bswap.i32(i32 %sub19.i) #7
  %490 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i109.i = getelementptr i8, ptr %491, i32 1328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109.i, i32 %489) #7, !srcloc !340
  %492 = ptrtoint ptr %chan_rx_size.i169 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %chan_rx_size.i169, align 4
  %div2191.i = lshr i32 %493, 2
  %add22.i = add i32 %div2191.i, %add11.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %494 = tail call i32 @llvm.bswap.i32(i32 %add22.i) #7
  %495 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i111.i = getelementptr i8, ptr %496, i32 1332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111.i, i32 %494) #7, !srcloc !340
  %497 = ptrtoint ptr %chan_rx_size.i169 to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load i32, ptr %chan_rx_size.i169, align 4
  %div2492.i = lshr i32 %498, 2
  %add25.i = add i32 %add22.i, -1
  %sub26.i = add i32 %add25.i, %div2492.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %499 = tail call i32 @llvm.bswap.i32(i32 %sub26.i) #7
  %500 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i113.i = getelementptr i8, ptr %501, i32 1336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113.i, i32 %499) #7, !srcloc !340
  %502 = ptrtoint ptr %chan_rx_size.i169 to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load i32, ptr %chan_rx_size.i169, align 4
  %div2893.i = lshr i32 %503, 2
  %add29.i = add i32 %div2893.i, %add22.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %504 = tail call i32 @llvm.bswap.i32(i32 %add29.i) #7
  %505 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i115.i = getelementptr i8, ptr %506, i32 1428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115.i, i32 %504) #7, !srcloc !340
  %507 = ptrtoint ptr %chan_rx_size.i169 to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load i32, ptr %chan_rx_size.i169, align 4
  %div3194.i = lshr i32 %508, 2
  %add32.i173 = add i32 %add29.i, -1
  %sub33.i = add i32 %div3194.i, %add32.i173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %509 = tail call i32 @llvm.bswap.i32(i32 %sub33.i) #7
  %510 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i117.i = getelementptr i8, ptr %511, i32 1432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117.i, i32 %509) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %512 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i119.i = getelementptr i8, ptr %513, i32 1340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119.i, i32 %504) #7, !srcloc !340
  %514 = ptrtoint ptr %chan_rx_size.i169 to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load i32, ptr %chan_rx_size.i169, align 4
  %div3595.i = lshr i32 %515, 2
  %sub37.i = add i32 %div3595.i, %add32.i173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %516 = tail call i32 @llvm.bswap.i32(i32 %sub37.i) #7
  %517 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i121.i = getelementptr i8, ptr %518, i32 1344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i121.i, i32 %516) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %519 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i123.i = getelementptr i8, ptr %520, i32 1316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123.i, i32 -1) #7, !srcloc !340
  %variant.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 4, i32 3
  %521 = ptrtoint ptr %variant.i to i32
  call void @__asan_load1_noabort(i32 %521)
  %522 = load i8, ptr %variant.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %522)
  %cmp.i.not = icmp eq i8 %522, 4
  br i1 %cmp.i.not, label %if.then59, label %if.else60

if.then59:                                        ; preds = %t3_tp_set_coalescing_size.exit
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #7
  %523 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %523)
  store i16 -1, ptr %val.i, align 2, !annotation !341
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %devid.i) #7
  %524 = ptrtoint ptr %devid.i to i32
  call void @__asan_store2_noabort(i32 %524)
  store i16 -1, ptr %devid.i, align 2, !annotation !341
  %pdev.i174 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %525 = ptrtoint ptr %pdev.i174 to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %pdev.i174, align 8
  %call.i = call i32 @pcie_capability_read_word(ptr noundef %526, i32 noundef 8, ptr noundef nonnull %val.i) #7
  %527 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %527)
  %528 = load i16, ptr %val.i, align 2
  %529 = lshr i16 %528, 5
  %530 = and i16 %529, 7
  %531 = zext i16 %530 to i32
  %532 = ptrtoint ptr %pdev.i174 to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %pdev.i174, align 8
  %call2.i = call i32 @pci_read_config_word(ptr noundef %533, i32 noundef 2, ptr noundef nonnull %devid.i) #7
  %534 = ptrtoint ptr %devid.i to i32
  call void @__asan_load2_noabort(i32 %534)
  %535 = load i16, ptr %devid.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 55, i16 %535)
  %cmp.i175 = icmp eq i16 %535, 55
  br i1 %cmp.i175, label %if.then.i176, label %if.then59.if.end.i_crit_edge

if.then59.if.end.i_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i176:                                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  %536 = ptrtoint ptr %pdev.i174 to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %pdev.i174, align 8
  %538 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %538)
  %539 = load i16, ptr %val.i, align 2
  %540 = and i16 %539, -28897
  %call10.i = call i32 @pcie_capability_write_word(ptr noundef %537, i32 noundef 8, i16 noundef zeroext %540) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i176, %if.then59.if.end.i_crit_edge
  %pldsize.0.i = phi i32 [ 0, %if.then.i176 ], [ %531, %if.then59.if.end.i_crit_edge ]
  %541 = ptrtoint ptr %pdev.i174 to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load ptr, ptr %pdev.i174, align 8
  %call12.i = call i32 @pcie_capability_read_word(ptr noundef %542, i32 noundef 16, ptr noundef nonnull %val.i) #7
  %543 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i178 = getelementptr i8, ptr %544, i32 152
  %545 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i178) #7, !srcloc !337
  %546 = call i32 @llvm.bswap.i32(i32 %545) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %shr14.i = lshr i32 %546, 22
  %and15.i = and i32 %shr14.i, 255
  %547 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %548)
  %cmp16.i = icmp eq i32 %548, 0
  br i1 %cmp16.i, label %if.end.i.cond.end.i_crit_edge, label %cond.false.i

if.end.i.cond.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %549 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i62.i = getelementptr i8, ptr %550, i32 140
  %551 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i62.i) #7, !srcloc !337
  %552 = call i32 @llvm.bswap.i32(i32 %551) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %shr19.i = lshr i32 %552, 10
  %and20.i = and i32 %shr19.i, 255
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %and20.i, %cond.false.i ], [ %and15.i, %if.end.i.cond.end.i_crit_edge ]
  %width.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 4, i32 2
  %553 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %553)
  %554 = load i8, ptr %width.i, align 2
  %conv22.i = zext i8 %554 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %554)
  %tobool.not.i.i180 = icmp eq i8 %554, 0
  %555 = call i32 @llvm.ctlz.i32(i32 %conv22.i, i1 true) #7, !range !342
  %sub.i.op.i = xor i32 %555, 31
  %sub.i181 = select i1 %tobool.not.i.i180, i32 -1, i32 %sub.i.op.i
  %arrayidx24.i = getelementptr [4 x [6 x i16]], ptr @config_pcie.ack_lat, i32 0, i32 %sub.i181, i32 %pldsize.0.i
  %556 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load2_noabort(i32 %556)
  %557 = load i16, ptr %arrayidx24.i, align 2
  %conv25.i = zext i16 %557 to i32
  %558 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %558)
  %559 = load i16, ptr %val.i, align 2
  %560 = and i16 %559, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %560)
  %tobool.not.i182 = icmp eq i16 %560, 0
  %mul.i183 = shl nuw nsw i32 %and15.i, 2
  %add.i184 = select i1 %tobool.not.i182, i32 0, i32 %mul.i183
  %acklat.0.i = add nuw nsw i32 %add.i184, %conv25.i
  %arrayidx31.i = getelementptr [4 x [6 x i16]], ptr @config_pcie.rpl_tmr, i32 0, i32 %sub.i181, i32 %pldsize.0.i
  %561 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load2_noabort(i32 %561)
  %562 = load i16, ptr %arrayidx31.i, align 2
  %563 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %564)
  %cmp37.i = icmp eq i32 %564, 0
  %565 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i185 = getelementptr i8, ptr %566, i32 156
  %567 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i185) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %cmp37.i, label %if.then39.i, label %if.else.i189

if.then39.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %568 = and i32 %567, 16318463
  %569 = call i32 @llvm.bswap.i32(i32 %568) #7
  %or.i.i186 = or i32 %569, %acklat.0.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  call void @arm_heavy_mb() #7
  %570 = call i32 @llvm.bswap.i32(i32 %or.i.i186) #7
  %571 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i7.i.i187 = getelementptr i8, ptr %572, i32 156
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i187, i32 %570) #7, !srcloc !340
  %573 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i9.i.i188 = getelementptr i8, ptr %574, i32 156
  %575 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i.i188) #7, !srcloc !337
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  br label %config_pcie.exit

if.else.i189:                                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %576 = and i32 %567, 14745599
  %577 = call i32 @llvm.bswap.i32(i32 %576) #7
  %or.i66.i = or i32 %577, %acklat.0.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  call void @arm_heavy_mb() #7
  %578 = call i32 @llvm.bswap.i32(i32 %or.i66.i) #7
  %579 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i7.i67.i = getelementptr i8, ptr %580, i32 156
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i67.i, i32 %578) #7, !srcloc !340
  %581 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i9.i68.i = getelementptr i8, ptr %582, i32 156
  %583 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i68.i) #7, !srcloc !337
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  br label %config_pcie.exit

config_pcie.exit:                                 ; preds = %if.else.i189, %if.then39.i
  %conv32.i = zext i16 %562 to i32
  %mul33.i = shl nuw nsw i32 %cond.i, 2
  %add34.i = add nuw nsw i32 %mul33.i, %conv32.i
  %shl42.i = shl nuw nsw i32 %add34.i, 2
  %584 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i70.i = getelementptr i8, ptr %585, i32 152
  %586 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i70.i) #7, !srcloc !337
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %587 = and i32 %586, 50381055
  %588 = call i32 @llvm.bswap.i32(i32 %587) #7
  %or.i72.i = or i32 %588, %shl42.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  call void @arm_heavy_mb() #7
  %589 = call i32 @llvm.bswap.i32(i32 %or.i72.i) #7
  %590 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i7.i73.i = getelementptr i8, ptr %591, i32 152
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i73.i, i32 %589) #7, !srcloc !340
  %592 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i9.i74.i = getelementptr i8, ptr %593, i32 152
  %594 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i74.i) #7, !srcloc !337
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  call void @arm_heavy_mb() #7
  %595 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i76.i = getelementptr i8, ptr %596, i32 164
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76.i, i32 -1) #7, !srcloc !340
  %597 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i78.i = getelementptr i8, ptr %598, i32 136
  %599 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i78.i) #7, !srcloc !337
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %600 = or i32 %599, 12545
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  call void @arm_heavy_mb() #7
  %601 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i7.i80.i = getelementptr i8, ptr %602, i32 136
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i80.i, i32 %600) #7, !srcloc !340
  %603 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i9.i81.i = getelementptr i8, ptr %604, i32 136
  %605 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i81.i) #7, !srcloc !337
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %devid.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #7
  br label %if.end61

if.else60:                                        ; preds = %t3_tp_set_coalescing_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  %606 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i191 = getelementptr i8, ptr %607, i32 136
  %608 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i191) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %609 = or i32 %608, 3072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %610 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %611, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %609) #7, !srcloc !340
  %612 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %613, i32 136
  %614 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  br label %if.end61

if.end61:                                         ; preds = %if.else60, %config_pcie.exit
  %615 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %616)
  %cmp64 = icmp eq i32 %616, 4
  br i1 %cmp64, label %if.then65, label %if.end61.if.end66_crit_edge

if.end61.if.end66_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.then65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %617 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i194 = getelementptr i8, ptr %618, i32 1408
  %619 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i194) #7, !srcloc !337
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %620 = or i32 %619, 33554432
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  call void @arm_heavy_mb() #7
  %621 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i7.i196 = getelementptr i8, ptr %622, i32 1408
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i196, i32 %620) #7, !srcloc !340
  %623 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i9.i197 = getelementptr i8, ptr %624, i32 1408
  %625 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i197) #7, !srcloc !337
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.end61.if.end66_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  call void @arm_heavy_mb() #7
  %626 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %627, i32 1472
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #7, !srcloc !340
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  call void @arm_heavy_mb() #7
  %628 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i199 = getelementptr i8, ptr %629, i32 1476
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i199, i32 0) #7, !srcloc !340
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  call void @arm_heavy_mb() #7
  %630 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i201 = getelementptr i8, ptr %631, i32 1508
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i201, i32 0) #7, !srcloc !340
  %chan_map = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 10
  %632 = ptrtoint ptr %chan_map to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load i32, ptr %chan_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %633)
  %cmp.not.i202 = icmp eq i32 %633, 3
  %634 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i29.i = getelementptr i8, ptr %635, i32 1280
  %636 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i29.i) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %cmp.not.i202, label %if.else.i209, label %if.then.i208

if.then.i208:                                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  %637 = and i32 %636, -268435457
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  call void @arm_heavy_mb() #7
  %638 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i7.i.i203 = getelementptr i8, ptr %639, i32 1280
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i203, i32 %637) #7, !srcloc !340
  %640 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i9.i.i204 = getelementptr i8, ptr %641, i32 1280
  %642 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i.i204) #7, !srcloc !337
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %643 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %643)
  %644 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i22.i = getelementptr i8, ptr %644, i32 1408
  %645 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i22.i) #7, !srcloc !337
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %646 = and i32 %645, -16777217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  call void @arm_heavy_mb() #7
  %647 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i7.i24.i = getelementptr i8, ptr %648, i32 1408
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i24.i, i32 %646) #7, !srcloc !340
  %649 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i9.i25.i = getelementptr i8, ptr %650, i32 1408
  %651 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i25.i) #7, !srcloc !337
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %633)
  %cmp1.i205 = icmp eq i32 %633, 1
  %or.i206 = select i1 %cmp1.i205, i32 2069, i32 2074
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  call void @arm_heavy_mb() #7
  %652 = call i32 @llvm.bswap.i32(i32 %or.i206) #7
  %653 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i207 = getelementptr i8, ptr %654, i32 1536
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i207, i32 %652) #7, !srcloc !340
  %cond3.i = sext i1 %cmp1.i205 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  call void @arm_heavy_mb() #7
  %655 = call i32 @llvm.bswap.i32(i32 %cond3.i) #7
  %656 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %657, i32 1504
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 %655) #7, !srcloc !340
  br label %chan_init_hw.exit

if.else.i209:                                     ; preds = %if.end66
  %658 = or i32 %636, 268435456
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  call void @arm_heavy_mb() #7
  %659 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i7.i30.i = getelementptr i8, ptr %660, i32 1280
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i30.i, i32 %658) #7, !srcloc !340
  %661 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i9.i31.i = getelementptr i8, ptr %662, i32 1280
  %663 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i31.i) #7, !srcloc !337
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %664 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i33.i = getelementptr i8, ptr %665, i32 1408
  %666 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i33.i) #7, !srcloc !337
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %667 = or i32 %666, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  call void @arm_heavy_mb() #7
  %668 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i7.i35.i = getelementptr i8, ptr %669, i32 1408
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i35.i, i32 %667) #7, !srcloc !340
  %670 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i9.i36.i = getelementptr i8, ptr %671, i32 1408
  %672 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i36.i) #7, !srcloc !337
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  call void @arm_heavy_mb() #7
  %673 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i38.i = getelementptr i8, ptr %674, i32 1452
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38.i, i32 268439552) #7, !srcloc !340
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  call void @arm_heavy_mb() #7
  %675 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i40.i = getelementptr i8, ptr %676, i32 1536
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40.i, i32 520617984) #7, !srcloc !340
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  call void @arm_heavy_mb() #7
  %677 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i42.i = getelementptr i8, ptr %678, i32 1504
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42.i, i32 8388736) #7, !srcloc !340
  %679 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %679)
  %680 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i44.i = getelementptr i8, ptr %680, i32 840
  %681 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i44.i) #7, !srcloc !337
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %682 = or i32 %681, 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  call void @arm_heavy_mb() #7
  %683 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %683)
  %684 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i7.i46.i = getelementptr i8, ptr %684, i32 840
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i46.i, i32 %682) #7, !srcloc !340
  %685 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %685)
  %686 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i9.i47.i = getelementptr i8, ptr %686, i32 840
  %687 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i47.i) #7, !srcloc !337
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  call void @arm_heavy_mb() #7
  %688 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i49.i = getelementptr i8, ptr %689, i32 1064
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49.i, i32 -1442840576) #7, !srcloc !340
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.else.i209
  %i.052.i = phi i32 [ 0, %if.else.i209 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %shl.i210 = shl i32 %i.052.i, 16
  %or5.i = or i32 %shl.i210, 4112
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  call void @arm_heavy_mb() #7
  %690 = call i32 @llvm.bswap.i32(i32 %or5.i) #7
  %691 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %691)
  %692 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i51.i = getelementptr i8, ptr %692, i32 1056
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51.i, i32 %690) #7, !srcloc !340
  %inc.i = add nuw nsw i32 %i.052.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.body.i.chan_init_hw.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.chan_init_hw.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %chan_init_hw.exit

chan_init_hw.exit:                                ; preds = %for.body.i.chan_init_hw.exit_crit_edge, %if.then.i208
  call void @t3_sge_init(ptr noundef %adapter, ptr noundef %params) #7
  %693 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %693)
  %694 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i213 = getelementptr i8, ptr %694, i32 1776
  %695 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i213) #7, !srcloc !337
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %696 = or i32 %695, 268435456
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  call void @arm_heavy_mb() #7
  %697 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %697)
  %698 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i7.i215 = getelementptr i8, ptr %698, i32 1776
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i215, i32 %696) #7, !srcloc !340
  %699 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i9.i216 = getelementptr i8, ptr %700, i32 1776
  %701 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i216) #7, !srcloc !337
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %nports.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 9
  %702 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %702)
  %703 = load i32, ptr %nports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %703)
  %cmp16.not.i = icmp eq i32 %703, 0
  br i1 %cmp16.not.i, label %chan_init_hw.exit.calc_gpio_intr.exit_crit_edge, label %for.body.lr.ph.i

chan_init_hw.exit.calc_gpio_intr.exit_crit_edge:  ; preds = %chan_init_hw.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %calc_gpio_intr.exit

for.body.lr.ph.i:                                 ; preds = %chan_init_hw.exit
  %info.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 5
  br label %for.body.i219

for.body.i219:                                    ; preds = %for.inc.i.for.body.i219_crit_edge, %for.body.lr.ph.i
  %gpi_intr.019.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %gpi_intr.1.i, %for.inc.i.for.body.i219_crit_edge ]
  %i.017.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i223, %for.inc.i.for.body.i219_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 21, i32 %i.017.i
  %704 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %704)
  %705 = load ptr, ptr %arrayidx.i.i, align 4
  %caps.i = getelementptr i8, ptr %705, i32 2320
  %706 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %706)
  %707 = load i32, ptr %caps.i, align 4
  %and.i217 = and i32 %707, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i217)
  %tobool.not.i218 = icmp eq i32 %and.i217, 0
  br i1 %tobool.not.i218, label %for.body.i219.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i219.for.inc.i_crit_edge:                ; preds = %for.body.i219
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i219
  %708 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %708)
  %709 = load ptr, ptr %info.i, align 4
  %arrayidx.i = getelementptr %struct.adapter_info, ptr %709, i32 0, i32 4, i32 %i.017.i
  %710 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %710)
  %711 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %711)
  %tobool2.not.i = icmp eq i8 %711, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then.i222

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i222:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i8 %711 to i32
  %shl.i220 = shl nuw i32 1, %conv.i
  %or.i221 = or i32 %shl.i220, %gpi_intr.019.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i222, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i219.for.inc.i_crit_edge
  %gpi_intr.1.i = phi i32 [ %or.i221, %if.then.i222 ], [ %gpi_intr.019.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %gpi_intr.019.i, %for.body.i219.for.inc.i_crit_edge ]
  %inc.i223 = add nuw i32 %i.017.i, 1
  %exitcond.not.i224 = icmp eq i32 %inc.i223, %703
  br i1 %exitcond.not.i224, label %for.inc.i.calc_gpio_intr.exit_crit_edge, label %for.inc.i.for.body.i219_crit_edge

for.inc.i.for.body.i219_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i219

for.inc.i.calc_gpio_intr.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %calc_gpio_intr.exit

calc_gpio_intr.exit:                              ; preds = %for.inc.i.calc_gpio_intr.exit_crit_edge, %chan_init_hw.exit.calc_gpio_intr.exit_crit_edge
  %gpi_intr.0.lcssa.i = phi i32 [ 0, %chan_init_hw.exit.calc_gpio_intr.exit_crit_edge ], [ %gpi_intr.1.i, %for.inc.i.calc_gpio_intr.exit_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  call void @arm_heavy_mb() #7
  %712 = call i32 @llvm.bswap.i32(i32 %gpi_intr.0.lcssa.i) #7
  %713 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i226 = getelementptr i8, ptr %714, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i226, i32 %712) #7, !srcloc !340
  %uclk = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 3, i32 2
  %715 = ptrtoint ptr %uclk to i32
  call void @__asan_load4_noabort(i32 %715)
  %716 = load i32, ptr %uclk, align 4
  %or = or i32 %716, %fw_params
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  call void @arm_heavy_mb() #7
  %717 = call i32 @llvm.bswap.i32(i32 %or) #7
  %718 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i228 = getelementptr i8, ptr %719, i32 692
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i228, i32 %717) #7, !srcloc !340
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  call void @arm_heavy_mb() #7
  %720 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %720)
  %721 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i230 = getelementptr i8, ptr %721, i32 640
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i230, i32 1792) #7, !srcloc !340
  %722 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %722)
  %723 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i232 = getelementptr i8, ptr %723, i32 640
  %724 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i232) #7, !srcloc !337
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %calc_gpio_intr.exit
  %attempts.0 = phi i32 [ 100, %calc_gpio_intr.exit ], [ %dec, %land.rhs.do.body_crit_edge ]
  call void @msleep(i32 noundef 20) #7
  %725 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %725)
  %726 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i234 = getelementptr i8, ptr %726, i32 692
  %727 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i234) #7, !srcloc !337
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %727)
  %tobool73.not = icmp eq i32 %727, 0
  br i1 %tobool73.not, label %do.body.out_err_crit_edge, label %land.rhs

do.body.out_err_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err

land.rhs:                                         ; preds = %do.body
  %dec = add nsw i32 %attempts.0, -1
  %tobool74.not = icmp eq i32 %dec, 0
  br i1 %tobool74.not, label %do.end79, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end79:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %728 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %728)
  %729 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %729, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #10
  br label %out_err

out_err:                                          ; preds = %do.end79, %do.body.out_err_crit_edge, %tp_init.exit, %for.body.out_err_crit_edge, %lor.lhs.false20.out_err_crit_edge, %lor.lhs.false15.out_err_crit_edge, %lor.lhs.false.out_err_crit_edge, %partition_mem.exit.out_err_crit_edge, %calibrate_xgm.exit
  %err.0 = phi i32 [ -5, %partition_mem.exit.out_err_crit_edge ], [ -5, %lor.lhs.false.out_err_crit_edge ], [ -5, %lor.lhs.false15.out_err_crit_edge ], [ -5, %lor.lhs.false20.out_err_crit_edge ], [ -5, %tp_init.exit ], [ -5, %do.end79 ], [ -5, %calibrate_xgm.exit ], [ 0, %do.body.out_err_crit_edge ], [ -5, %for.body.out_err_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mc7_init(ptr noundef readonly %mc7, i32 noundef %mc7_clock, i32 noundef %mem_type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mc7 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc7, align 4
  %arrayidx = getelementptr [5 x %struct.mc7_timing_params], ptr @mc7_init.mc7_timings, i32 0, i32 %mem_type
  %size = getelementptr inbounds %struct.mc7, ptr %mc7, i32 0, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %offset = getelementptr inbounds %struct.mc7, ptr %mc7, i32 0, i32 3
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %add = add i32 %5, 256
  %regs.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !337
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %and = and i32 %9, 1024
  %shr = lshr i32 %9, 8
  %and2 = and i32 %shr, 3
  %shr3 = lshr i32 %9, 2
  %and4 = and i32 %shr3, 7
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %add6 = add i32 %11, 256
  %or = or i32 %9, 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %add.ptr.i263 = getelementptr i8, ptr %14, i32 %add6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i263, i32 %12) #7, !srcloc !340
  %15 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset, align 4
  %add8 = add i32 %16, 256
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr.i265 = getelementptr i8, ptr %18, i32 %add8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i265) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  tail call void @msleep(i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.then11, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then11:                                        ; preds = %if.end
  %20 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset, align 4
  %add13 = add i32 %21, 296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %add.ptr.i267 = getelementptr i8, ptr %23, i32 %add13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i267, i32 4096) #7, !srcloc !340
  %24 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset, align 4
  %add15 = add i32 %25, 296
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %add.ptr.i269 = getelementptr i8, ptr %27, i32 %add15
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i269) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  tail call void @msleep(i32 noundef 1) #7
  %29 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %offset, align 4
  %add18 = add i32 %30, 296
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  %add.ptr.i271 = getelementptr i8, ptr %32, i32 %add18
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i271) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %34 = and i32 %33, 4288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool21.not = icmp eq i32 %34, 0
  br i1 %tobool21.not, label %if.then11.if.end24_crit_edge, label %do.end

if.then11.if.end24_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

do.end:                                           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %35 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %name = getelementptr inbounds %struct.mc7, ptr %mc7, i32 0, i32 4
  %37 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.133, ptr noundef %38) #10
  br label %cleanup

if.end24:                                         ; preds = %if.then11.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %39 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %offset, align 4
  %add26 = add i32 %40, 288
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %42 to i32
  %shl = shl i32 %conv, 26
  %ActToRdWrDly = getelementptr [5 x %struct.mc7_timing_params], ptr @mc7_init.mc7_timings, i32 0, i32 %mem_type, i32 1
  %43 = ptrtoint ptr %ActToRdWrDly to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ActToRdWrDly, align 1
  %conv27 = zext i8 %44 to i32
  %shl28 = shl nuw nsw i32 %conv27, 23
  %or29 = or i32 %shl28, %shl
  %PreCyc = getelementptr [5 x %struct.mc7_timing_params], ptr @mc7_init.mc7_timings, i32 0, i32 %mem_type, i32 2
  %45 = ptrtoint ptr %PreCyc to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %PreCyc, align 1
  %conv30 = zext i8 %46 to i32
  %shl31 = shl nuw nsw i32 %conv30, 20
  %or32 = or i32 %or29, %shl31
  %arrayidx33 = getelementptr [5 x %struct.mc7_timing_params], ptr @mc7_init.mc7_timings, i32 0, i32 %mem_type, i32 3, i32 %and4
  %47 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %48 to i32
  %shl35 = shl nuw nsw i32 %conv34, 13
  %or36 = or i32 %or32, %shl35
  %BkCyc = getelementptr [5 x %struct.mc7_timing_params], ptr @mc7_init.mc7_timings, i32 0, i32 %mem_type, i32 4
  %49 = ptrtoint ptr %BkCyc to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %BkCyc, align 1
  %conv37 = zext i8 %50 to i32
  %shl38 = shl nuw nsw i32 %conv37, 8
  %or39 = or i32 %or36, %shl38
  %WrToRdDly = getelementptr [5 x %struct.mc7_timing_params], ptr @mc7_init.mc7_timings, i32 0, i32 %mem_type, i32 5
  %51 = ptrtoint ptr %WrToRdDly to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %WrToRdDly, align 1
  %conv40 = zext i8 %52 to i32
  %shl41 = shl nuw nsw i32 %conv40, 4
  %or42 = or i32 %or39, %shl41
  %RdToWrDly = getelementptr [5 x %struct.mc7_timing_params], ptr @mc7_init.mc7_timings, i32 0, i32 %mem_type, i32 6
  %53 = ptrtoint ptr %RdToWrDly to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %RdToWrDly, align 1
  %conv43 = zext i8 %54 to i32
  %or45 = or i32 %or42, %conv43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %55 = tail call i32 @llvm.bswap.i32(i32 %or45) #7
  %56 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs.i, align 4
  %add.ptr.i273 = getelementptr i8, ptr %57, i32 %add26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i273, i32 %55) #7, !srcloc !340
  %58 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %offset, align 4
  %add47 = add i32 %59, 256
  %60 = or i32 %19, 17301504
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %61 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs.i, align 4
  %add.ptr.i275 = getelementptr i8, ptr %62, i32 %add47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i275, i32 %60) #7, !srcloc !340
  %63 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %offset, align 4
  %add51 = add i32 %64, 256
  %65 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs.i, align 4
  %add.ptr.i277 = getelementptr i8, ptr %66, i32 %add51
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i277) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  br i1 %tobool10.not, label %if.then54, label %if.end24.if.end57_crit_edge

if.end24.if.end57_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then54:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %offset, align 4
  %add56 = add i32 %69, 284
  %70 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %71, i32 %add56
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %73 = or i32 %72, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %74 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %75, i32 %add56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %73) #7, !srcloc !340
  %76 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %77, i32 %add56
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %if.end24.if.end57_crit_edge
  %cond = phi i32 [ 6, %if.then54 ], [ 3, %if.end24.if.end57_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %79(i32 noundef 214748) #7
  %80 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %offset, align 4
  %add60 = add i32 %81, 276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %82 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i279 = getelementptr i8, ptr %83, i32 %add60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i279, i32 0) #7, !srcloc !340
  %84 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs.i, align 4
  %add.ptr.i9.i280 = getelementptr i8, ptr %85, i32 %add60
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i280) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %87 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regs.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %88, i32 %add60
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %.mask.i = and i32 %89, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool.not.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false, label %wrreg_wait.exit

wrreg_wait.exit:                                  ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %pdev.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %90 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %91, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.138, i32 noundef %add60) #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end57
  %92 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %offset, align 4
  %add64 = add i32 %93, 268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %94 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i282 = getelementptr i8, ptr %95, i32 %add64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i282, i32 0) #7, !srcloc !340
  %96 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regs.i, align 4
  %add.ptr.i9.i283 = getelementptr i8, ptr %97, i32 %add64
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i283) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %99 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regs.i, align 4
  %add.ptr.i11.i284 = getelementptr i8, ptr %100, i32 %add64
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i284) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %.mask.i285 = and i32 %101, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i285)
  %tobool.not.i286 = icmp eq i32 %.mask.i285, 0
  br i1 %tobool.not.i286, label %lor.lhs.false67, label %wrreg_wait.exit291

wrreg_wait.exit291:                               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %pdev.i287 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %102 = ptrtoint ptr %pdev.i287 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pdev.i287, align 8
  %dev.i288 = getelementptr inbounds %struct.pci_dev, ptr %103, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i288, ptr noundef nonnull @.str.138, i32 noundef %add64) #10
  br label %cleanup

lor.lhs.false67:                                  ; preds = %lor.lhs.false
  %104 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %offset, align 4
  %add69 = add i32 %105, 272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %106 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i293 = getelementptr i8, ptr %107, i32 %add69
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i293, i32 0) #7, !srcloc !340
  %108 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regs.i, align 4
  %add.ptr.i9.i294 = getelementptr i8, ptr %109, i32 %add69
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i294) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %111 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regs.i, align 4
  %add.ptr.i11.i295 = getelementptr i8, ptr %112, i32 %add69
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i295) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %.mask.i296 = and i32 %113, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i296)
  %tobool.not.i297 = icmp eq i32 %.mask.i296, 0
  br i1 %tobool.not.i297, label %lor.lhs.false72, label %wrreg_wait.exit302

wrreg_wait.exit302:                               ; preds = %lor.lhs.false67
  call void @__sanitizer_cov_trace_pc() #9
  %pdev.i298 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %114 = ptrtoint ptr %pdev.i298 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pdev.i298, align 8
  %dev.i299 = getelementptr inbounds %struct.pci_dev, ptr %115, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i299, ptr noundef nonnull @.str.138, i32 noundef %add69) #10
  br label %cleanup

lor.lhs.false72:                                  ; preds = %lor.lhs.false67
  %116 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %offset, align 4
  %add74 = add i32 %117, 264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %118 = shl nuw nsw i32 %cond, 24
  %119 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i304 = getelementptr i8, ptr %120, i32 %add74
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i304, i32 %118) #7, !srcloc !340
  %121 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %regs.i, align 4
  %add.ptr.i9.i305 = getelementptr i8, ptr %122, i32 %add74
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i305) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %124 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regs.i, align 4
  %add.ptr.i11.i306 = getelementptr i8, ptr %125, i32 %add74
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i306) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %.mask.i307 = and i32 %126, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i307)
  %tobool.not.i308 = icmp eq i32 %.mask.i307, 0
  br i1 %tobool.not.i308, label %if.end78, label %wrreg_wait.exit313

wrreg_wait.exit313:                               ; preds = %lor.lhs.false72
  call void @__sanitizer_cov_trace_pc() #9
  %pdev.i309 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %127 = ptrtoint ptr %pdev.i309 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %pdev.i309, align 8
  %dev.i310 = getelementptr inbounds %struct.pci_dev, ptr %128, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i310, ptr noundef nonnull @.str.138, i32 noundef %add74) #10
  br label %cleanup

if.end78:                                         ; preds = %lor.lhs.false72
  br i1 %tobool10.not, label %if.then80, label %if.end78.if.end85_crit_edge

if.end78.if.end85_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.then80:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  %129 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %offset, align 4
  %add82 = add i32 %130, 260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %131 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %regs.i, align 4
  %add.ptr.i315 = getelementptr i8, ptr %132, i32 %add82
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i315, i32 65536) #7, !srcloc !340
  %133 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %offset, align 4
  %add84 = add i32 %134, 284
  tail call void @t3_set_reg_field(ptr noundef %1, i32 noundef %add84, i32 noundef 1, i32 noundef 0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %135 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %135(i32 noundef 1073740) #7
  br label %if.end85

if.end85:                                         ; preds = %if.then80, %if.end78.if.end85_crit_edge
  %136 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %offset, align 4
  %add87 = add i32 %137, 276
  %call88 = tail call fastcc i32 @wrreg_wait(ptr noundef %1, i32 noundef %add87, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %lor.lhs.false90, label %if.end85.cleanup_crit_edge

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false90:                                  ; preds = %if.end85
  %138 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %offset, align 4
  %add92 = add i32 %139, 280
  %call93 = tail call fastcc i32 @wrreg_wait(ptr noundef %1, i32 noundef %add92, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %lor.lhs.false95, label %lor.lhs.false90.cleanup_crit_edge

lor.lhs.false90.cleanup_crit_edge:                ; preds = %lor.lhs.false90
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false95:                                  ; preds = %lor.lhs.false90
  %140 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %offset, align 4
  %add97 = add i32 %141, 280
  %call98 = tail call fastcc i32 @wrreg_wait(ptr noundef %1, i32 noundef %add97, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %lor.lhs.false100, label %lor.lhs.false95.cleanup_crit_edge

lor.lhs.false95.cleanup_crit_edge:                ; preds = %lor.lhs.false95
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false100:                                 ; preds = %lor.lhs.false95
  %142 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %offset, align 4
  %add102 = add i32 %143, 260
  %arrayidx103 = getelementptr [5 x i32], ptr @mc7_init.mc7_mode, i32 0, i32 %mem_type
  %144 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx103, align 4
  %call104 = tail call fastcc i32 @wrreg_wait(ptr noundef %1, i32 noundef %add102, i32 noundef %145)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %lor.lhs.false106, label %lor.lhs.false100.cleanup_crit_edge

lor.lhs.false100.cleanup_crit_edge:               ; preds = %lor.lhs.false100
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false106:                                 ; preds = %lor.lhs.false100
  %146 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %offset, align 4
  %add108 = add i32 %147, 264
  %or109 = or i32 %cond, 896
  %call110 = tail call fastcc i32 @wrreg_wait(ptr noundef %1, i32 noundef %add108, i32 noundef %or109)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %lor.lhs.false112, label %lor.lhs.false106.cleanup_crit_edge

lor.lhs.false106.cleanup_crit_edge:               ; preds = %lor.lhs.false106
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false112:                                 ; preds = %lor.lhs.false106
  %148 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %offset, align 4
  %add114 = add i32 %149, 264
  %call115 = tail call fastcc i32 @wrreg_wait(ptr noundef %1, i32 noundef %add114, i32 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end118, label %lor.lhs.false112.cleanup_crit_edge

lor.lhs.false112.cleanup_crit_edge:               ; preds = %lor.lhs.false112
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end118:                                        ; preds = %lor.lhs.false112
  %mul = mul i32 %mc7_clock, 7812
  %div261 = lshr i32 %mc7_clock, 1
  %add119 = add i32 %mul, %div261
  %div120 = udiv i32 %add119, 1000000
  %150 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %offset, align 4
  %add122 = add i32 %151, 280
  %shl123 = shl nuw nsw i32 %div120, 1
  %or124 = or i32 %shl123, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %152 = tail call i32 @llvm.bswap.i32(i32 %or124) #7
  %153 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %regs.i, align 4
  %add.ptr.i317 = getelementptr i8, ptr %154, i32 %add122
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i317, i32 %152) #7, !srcloc !340
  %155 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %offset, align 4
  %add126 = add i32 %156, 280
  %157 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %regs.i, align 4
  %add.ptr.i319 = getelementptr i8, ptr %158, i32 %add126
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i319) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %160 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %offset, align 4
  %add129 = add i32 %161, 304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %162 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %regs.i, align 4
  %add.ptr.i321 = getelementptr i8, ptr %163, i32 %add129
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i321, i32 50331648) #7, !srcloc !340
  %164 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %offset, align 4
  %add131 = add i32 %165, 368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %166 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %regs.i, align 4
  %add.ptr.i323 = getelementptr i8, ptr %167, i32 %add131
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i323, i32 0) #7, !srcloc !340
  %168 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %offset, align 4
  %add133 = add i32 %169, 360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %170 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %regs.i, align 4
  %add.ptr.i325 = getelementptr i8, ptr %171, i32 %add133
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i325, i32 0) #7, !srcloc !340
  %172 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %offset, align 4
  %add135 = add i32 %173, 364
  %174 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %size, align 4
  %shl137 = shl i32 %175, %and2
  %sub = add i32 %shl137, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %176 = tail call i32 @llvm.bswap.i32(i32 %sub) #7
  %177 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %regs.i, align 4
  %add.ptr.i327 = getelementptr i8, ptr %178, i32 %add135
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i327, i32 %176) #7, !srcloc !340
  %179 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %offset, align 4
  %add139 = add i32 %180, 372
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %181 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %regs.i, align 4
  %add.ptr.i329 = getelementptr i8, ptr %182, i32 %add139
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i329, i32 16777216) #7, !srcloc !340
  %183 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %offset, align 4
  %add141 = add i32 %184, 372
  %185 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %regs.i, align 4
  %add.ptr.i331 = getelementptr i8, ptr %186, i32 %add141
  %187 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i331) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  br label %do.body143

do.body143:                                       ; preds = %do.body143.do.body143_crit_edge, %if.end118
  %attempts.0 = phi i32 [ 50, %if.end118 ], [ %dec, %do.body143.do.body143_crit_edge ]
  tail call void @msleep(i32 noundef 250) #7
  %188 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %offset, align 4
  %add145 = add i32 %189, 372
  %190 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %regs.i, align 4
  %add.ptr.i333 = getelementptr i8, ptr %191, i32 %add145
  %192 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i333) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %.mask = and i32 %192, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool149.not = icmp eq i32 %.mask, 0
  %dec = add nsw i32 %attempts.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool150.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool149.not, i1 true, i1 %tobool150.not
  br i1 %or.cond, label %do.end151, label %do.body143.do.body143_crit_edge

do.body143.do.body143_crit_edge:                  ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body143

do.end151:                                        ; preds = %do.body143
  br i1 %tobool149.not, label %if.end161, label %do.end157

do.end157:                                        ; preds = %do.end151
  call void @__sanitizer_cov_trace_pc() #9
  %pdev158 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %193 = ptrtoint ptr %pdev158 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %pdev158, align 8
  %dev159 = getelementptr inbounds %struct.pci_dev, ptr %194, i32 0, i32 44
  %name160 = getelementptr inbounds %struct.mc7, ptr %mc7, i32 0, i32 4
  %195 = ptrtoint ptr %name160 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %name160, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev159, ptr noundef nonnull @.str.136, ptr noundef %196) #10
  br label %cleanup

if.end161:                                        ; preds = %do.end151
  call void @__sanitizer_cov_trace_pc() #9
  %197 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %offset, align 4
  %add163 = add i32 %198, 256
  tail call void @t3_set_reg_field(ptr noundef %1, i32 noundef %add163, i32 noundef 0, i32 noundef 2)
  br label %cleanup

cleanup:                                          ; preds = %if.end161, %do.end157, %lor.lhs.false112.cleanup_crit_edge, %lor.lhs.false106.cleanup_crit_edge, %lor.lhs.false100.cleanup_crit_edge, %lor.lhs.false95.cleanup_crit_edge, %lor.lhs.false90.cleanup_crit_edge, %if.end85.cleanup_crit_edge, %wrreg_wait.exit313, %wrreg_wait.exit302, %wrreg_wait.exit291, %wrreg_wait.exit, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end161 ], [ 0, %entry.cleanup_crit_edge ], [ -1, %if.end85.cleanup_crit_edge ], [ -1, %lor.lhs.false90.cleanup_crit_edge ], [ -1, %lor.lhs.false95.cleanup_crit_edge ], [ -1, %lor.lhs.false100.cleanup_crit_edge ], [ -1, %lor.lhs.false106.cleanup_crit_edge ], [ -1, %lor.lhs.false112.cleanup_crit_edge ], [ -1, %wrreg_wait.exit ], [ -1, %wrreg_wait.exit291 ], [ -1, %wrreg_wait.exit302 ], [ -1, %wrreg_wait.exit313 ], [ -1, %do.end157 ], [ -1, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_mc5_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clear_sge_ctxt(ptr nocapture noundef readonly %adap, i32 noundef %id, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %3, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 0) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 0) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %7, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 0) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %9, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 -1) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %11, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 -1) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %13, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 -1) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %15, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 -1) #7, !srcloc !340
  %or = or i32 %id, %type
  %or1 = or i32 %or, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %16 = tail call i32 @llvm.bswap.i32(i32 %or1) #7
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %18, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 %16) #7, !srcloc !340
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %20, i32 12
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %22 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp31.i.i = icmp eq i32 %22, 0
  br i1 %cmp31.i.i, label %entry.t3_wait_op_done.exit_crit_edge, label %entry.if.end4.i.i_crit_edge

entry.if.end4.i.i_crit_edge:                      ; preds = %entry
  br label %if.end4.i.i

entry.t3_wait_op_done.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %t3_wait_op_done.exit

if.end4.i.i:                                      ; preds = %if.end7.i.i.if.end4.i.i_crit_edge, %entry.if.end4.i.i_crit_edge
  %attempts.addr.032.i.i = phi i32 [ %dec.i.i, %if.end7.i.i.if.end4.i.i_crit_edge ], [ 100, %entry.if.end4.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %attempts.addr.032.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp5.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp5.i.i, label %if.end4.i.i.t3_wait_op_done.exit_crit_edge, label %if.end7.i.i

if.end4.i.i.t3_wait_op_done.exit_crit_edge:       ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %t3_wait_op_done.exit

if.end7.i.i:                                      ; preds = %if.end4.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #7
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %25, i32 12
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %27 = and i32 %26, 8
  %cmp.i.i = icmp eq i32 %27, 0
  br i1 %cmp.i.i, label %if.end7.i.i.t3_wait_op_done.exit_crit_edge, label %if.end7.i.i.if.end4.i.i_crit_edge

if.end7.i.i.if.end4.i.i_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i

if.end7.i.i.t3_wait_op_done.exit_crit_edge:       ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %t3_wait_op_done.exit

t3_wait_op_done.exit:                             ; preds = %if.end7.i.i.t3_wait_op_done.exit_crit_edge, %if.end4.i.i.t3_wait_op_done.exit_crit_edge, %entry.t3_wait_op_done.exit_crit_edge
  %retval.1.ph.i.i = phi i32 [ 0, %entry.t3_wait_op_done.exit_crit_edge ], [ -11, %if.end4.i.i.t3_wait_op_done.exit_crit_edge ], [ 0, %if.end7.i.i.t3_wait_op_done.exit_crit_edge ]
  ret i32 %retval.1.ph.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_sge_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_reset_adapter(ptr nocapture noundef readonly %adapter) local_unnamed_addr #0 align 64 {
entry:
  %devid = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 13
  %0 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ult i32 %1, 3
  br i1 %cmp, label %land.end, label %land.end.thread

land.end.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %devid) #7
  %2 = ptrtoint ptr %devid to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %devid, align 2
  br label %if.end

land.end:                                         ; preds = %entry
  %variant.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 4, i32 3
  %3 = ptrtoint ptr %variant.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %variant.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %4)
  %cmp.i = icmp eq i8 %4, 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %devid) #7
  %5 = ptrtoint ptr %devid to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %devid, align 2
  br i1 %cmp.i, label %if.then, label %land.end.if.end_crit_edge

land.end.if.end_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %call2 = tail call i32 @pci_save_state(ptr noundef %7) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end.if.end_crit_edge, %land.end.thread
  %8 = phi i1 [ true, %land.end.thread ], [ false, %if.then ], [ true, %land.end.if.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 1776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 50331648) #7, !srcloc !340
  %pdev4 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  call void @msleep(i32 noundef 50) #7
  %11 = ptrtoint ptr %pdev4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev4, align 8
  %call5 = call i32 @pci_read_config_word(ptr noundef %12, i32 noundef 0, ptr noundef nonnull %devid) #7
  %13 = ptrtoint ptr %devid to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %devid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5157, i16 %14)
  %cmp6 = icmp eq i16 %14, 5157
  br i1 %cmp6, label %if.end.for.end_crit_edge, label %for.cond

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond:                                         ; preds = %if.end
  call void @msleep(i32 noundef 50) #7
  %15 = ptrtoint ptr %pdev4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev4, align 8
  %call5.1 = call i32 @pci_read_config_word(ptr noundef %16, i32 noundef 0, ptr noundef nonnull %devid) #7
  %17 = ptrtoint ptr %devid to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %devid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5157, i16 %18)
  %cmp6.1 = icmp eq i16 %18, 5157
  br i1 %cmp6.1, label %for.cond.for.end_crit_edge, label %for.cond.1

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.1:                                       ; preds = %for.cond
  call void @msleep(i32 noundef 50) #7
  %19 = ptrtoint ptr %pdev4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev4, align 8
  %call5.2 = call i32 @pci_read_config_word(ptr noundef %20, i32 noundef 0, ptr noundef nonnull %devid) #7
  %21 = ptrtoint ptr %devid to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %devid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5157, i16 %22)
  %cmp6.2 = icmp eq i16 %22, 5157
  br i1 %cmp6.2, label %for.cond.1.for.end_crit_edge, label %for.cond.2

for.cond.1.for.end_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.2:                                       ; preds = %for.cond.1
  call void @msleep(i32 noundef 50) #7
  %23 = ptrtoint ptr %pdev4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev4, align 8
  %call5.3 = call i32 @pci_read_config_word(ptr noundef %24, i32 noundef 0, ptr noundef nonnull %devid) #7
  %25 = ptrtoint ptr %devid to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %devid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5157, i16 %26)
  %cmp6.3 = icmp eq i16 %26, 5157
  br i1 %cmp6.3, label %for.cond.2.for.end_crit_edge, label %for.cond.3

for.cond.2.for.end_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.3:                                       ; preds = %for.cond.2
  call void @msleep(i32 noundef 50) #7
  %27 = ptrtoint ptr %pdev4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev4, align 8
  %call5.4 = call i32 @pci_read_config_word(ptr noundef %28, i32 noundef 0, ptr noundef nonnull %devid) #7
  %29 = ptrtoint ptr %devid to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %devid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5157, i16 %30)
  %cmp6.4 = icmp eq i16 %30, 5157
  br i1 %cmp6.4, label %for.cond.3.for.end_crit_edge, label %for.cond.4

for.cond.3.for.end_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.4:                                       ; preds = %for.cond.3
  call void @msleep(i32 noundef 50) #7
  %31 = ptrtoint ptr %pdev4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev4, align 8
  %call5.5 = call i32 @pci_read_config_word(ptr noundef %32, i32 noundef 0, ptr noundef nonnull %devid) #7
  %33 = ptrtoint ptr %devid to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %devid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5157, i16 %34)
  %cmp6.5 = icmp eq i16 %34, 5157
  br i1 %cmp6.5, label %for.cond.4.for.end_crit_edge, label %for.cond.5

for.cond.4.for.end_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.5:                                       ; preds = %for.cond.4
  call void @msleep(i32 noundef 50) #7
  %35 = ptrtoint ptr %pdev4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev4, align 8
  %call5.6 = call i32 @pci_read_config_word(ptr noundef %36, i32 noundef 0, ptr noundef nonnull %devid) #7
  %37 = ptrtoint ptr %devid to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %devid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5157, i16 %38)
  %cmp6.6 = icmp eq i16 %38, 5157
  br i1 %cmp6.6, label %for.cond.5.for.end_crit_edge, label %for.cond.6

for.cond.5.for.end_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.6:                                       ; preds = %for.cond.5
  call void @msleep(i32 noundef 50) #7
  %39 = ptrtoint ptr %pdev4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev4, align 8
  %call5.7 = call i32 @pci_read_config_word(ptr noundef %40, i32 noundef 0, ptr noundef nonnull %devid) #7
  %41 = ptrtoint ptr %devid to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %devid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5157, i16 %42)
  %cmp6.7 = icmp eq i16 %42, 5157
  br i1 %cmp6.7, label %for.cond.6.for.end_crit_edge, label %for.cond.7

for.cond.6.for.end_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.7:                                       ; preds = %for.cond.6
  call void @msleep(i32 noundef 50) #7
  %43 = ptrtoint ptr %pdev4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev4, align 8
  %call5.8 = call i32 @pci_read_config_word(ptr noundef %44, i32 noundef 0, ptr noundef nonnull %devid) #7
  %45 = ptrtoint ptr %devid to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %devid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5157, i16 %46)
  %cmp6.8 = icmp eq i16 %46, 5157
  br i1 %cmp6.8, label %for.cond.7.for.end_crit_edge, label %for.cond.8

for.cond.7.for.end_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.8:                                       ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #9
  call void @msleep(i32 noundef 50) #7
  %47 = ptrtoint ptr %pdev4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdev4, align 8
  %call5.9 = call i32 @pci_read_config_word(ptr noundef %48, i32 noundef 0, ptr noundef nonnull %devid) #7
  br label %for.end

for.end:                                          ; preds = %for.cond.8, %for.cond.7.for.end_crit_edge, %for.cond.6.for.end_crit_edge, %for.cond.5.for.end_crit_edge, %for.cond.4.for.end_crit_edge, %for.cond.3.for.end_crit_edge, %for.cond.2.for.end_crit_edge, %for.cond.1.for.end_crit_edge, %for.cond.for.end_crit_edge, %if.end.for.end_crit_edge
  %49 = ptrtoint ptr %devid to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %devid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5157, i16 %50)
  %cmp11.not = icmp ne i16 %50, 5157
  %brmerge = or i1 %8, %cmp11.not
  %.mux = sext i1 %cmp11.not to i32
  br i1 %brmerge, label %for.end.cleanup_crit_edge, label %if.then16

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then16:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %pdev4 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pdev4, align 8
  call void @pci_restore_state(ptr noundef %52) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %.mux, %for.end.cleanup_crit_edge ], [ 0, %if.then16 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %devid) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_prep_adapter(ptr noundef %adapter, ptr noundef %ai, i32 noundef %reset) local_unnamed_addr #0 align 64 {
entry:
  %devid.i = alloca i16, align 2
  %tok.i129.i = alloca [256 x i8], align 1
  %tok.i124.i = alloca [256 x i8], align 1
  %tok.i119.i = alloca [256 x i8], align 1
  %tok.i.i = alloca [256 x i8], align 1
  %vpd.i = alloca %struct.t3_vpd, align 4
  %base_val.i = alloca i8, align 1
  %val.i = alloca i16, align 2
  %hw_addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10
  %pci = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 4
  %pdev.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i, align 8
  %pcie_cap.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %pcie_cap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pcie_cap.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.not.i = icmp eq i8 %3, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #7
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %val.i, align 2, !annotation !341
  %variant.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 4, i32 3
  %5 = ptrtoint ptr %variant.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 4, ptr %variant.i, align 1
  %call2.i = call i32 @pcie_capability_read_word(ptr noundef %1, i32 noundef 18, ptr noundef nonnull %val.i) #7
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %val.i, align 2
  %8 = lshr i16 %7, 4
  %9 = trunc i16 %8 to i8
  %conv3.i = and i8 %9, 63
  %width.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 4, i32 2
  %10 = ptrtoint ptr %width.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv3.i, ptr %width.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #7
  br label %get_pci_mode.exit

if.end.i:                                         ; preds = %entry
  %regs.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %11 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 140
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !337
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %shr5.i = lshr i32 %14, 6
  %and6.i = and i32 %shr5.i, 3
  %arrayidx.i = getelementptr [4 x i16], ptr @get_pci_mode.speed_map, i32 0, i32 %and6.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx.i, align 2
  %speed.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 4, i32 1
  %17 = ptrtoint ptr %speed.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %speed.i, align 4
  %and7.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool.not.i = icmp eq i32 %and7.i, 0
  %conv8.i = select i1 %tobool.not.i, i8 32, i8 64
  %width9.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 4, i32 2
  %18 = ptrtoint ptr %width9.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv8.i, ptr %width9.i, align 2
  %shr10.i = lshr i32 %14, 2
  %and11.i = and i32 %shr10.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %cmp.i = icmp eq i32 %and11.i, 0
  br i1 %cmp.i, label %if.then13.i, label %if.else.i

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %variant14.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 4, i32 3
  %19 = ptrtoint ptr %variant14.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %variant14.i, align 1
  br label %get_pci_mode.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and11.i)
  %cmp15.i = icmp ult i32 %and11.i, 4
  br i1 %cmp15.i, label %if.then17.i, label %if.else19.i

if.then17.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %variant18.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 4, i32 3
  %20 = ptrtoint ptr %variant18.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %variant18.i, align 1
  br label %get_pci_mode.exit

if.else19.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and11.i)
  %cmp20.i = icmp ult i32 %and11.i, 8
  %variant23.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 4, i32 3
  br i1 %cmp20.i, label %if.then22.i, label %if.else24.i

if.then22.i:                                      ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %variant23.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %variant23.i, align 1
  br label %get_pci_mode.exit

if.else24.i:                                      ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %variant23.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 3, ptr %variant23.i, align 1
  br label %get_pci_mode.exit

get_pci_mode.exit:                                ; preds = %if.else24.i, %if.then22.i, %if.then17.i, %if.then13.i, %if.then.i
  %info = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 5
  %23 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %ai, ptr %info, align 4
  %24 = ptrtoint ptr %ai to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ai, align 4
  %conv = zext i8 %25 to i32
  %nports1 = getelementptr inbounds %struct.adapter_info, ptr %ai, i32 0, i32 1
  %26 = ptrtoint ptr %nports1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %nports1, align 1
  %conv2 = zext i8 %27 to i32
  %add = add nuw nsw i32 %conv2, %conv
  %nports = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 9
  %28 = ptrtoint ptr %nports to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add, ptr %nports, align 4
  %29 = load i8, ptr %ai, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool = icmp ne i8 %29, 0
  %lnot.ext = zext i1 %tobool to i32
  %30 = ptrtoint ptr %nports1 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %nports1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool7.not = icmp eq i8 %31, 0
  %shl = select i1 %tobool7.not, i32 0, i32 2
  %or = or i32 %shl, %lnot.ext
  %chan_map = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 10
  %32 = ptrtoint ptr %chan_map to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or, ptr %chan_map, align 4
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %34, i32 1780
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !337
  %36 = call i32 @llvm.bswap.i32(i32 %35) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %rev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 13
  %37 = ptrtoint ptr %rev to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %rev, align 4
  %linkpoll_period = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 12
  %38 = ptrtoint ptr %linkpoll_period to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 10, ptr %linkpoll_period, align 4
  %39 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %info, align 4
  %caps.i = getelementptr inbounds %struct.adapter_info, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %caps.i, align 4
  %and.i = and i32 %42, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool16.not = icmp eq i32 %and.i, 0
  %cond = select i1 %tobool16.not, i32 1800, i32 180
  %stats_update_period = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 11
  %43 = ptrtoint ptr %stats_update_period to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %cond, ptr %stats_update_period, align 4
  %44 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev.i, align 8
  %call18 = call zeroext i8 @pci_find_capability(ptr noundef %45, i32 noundef 3) #7
  %conv19 = zext i8 %call18 to i32
  %46 = ptrtoint ptr %pci to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv19, ptr %pci, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call18)
  %tobool25.not = icmp eq i8 %call18, 0
  br i1 %tobool25.not, label %get_pci_mode.exit.cleanup179_crit_edge, label %if.end

get_pci_mode.exit.cleanup179_crit_edge:           ; preds = %get_pci_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup179

if.end:                                           ; preds = %get_pci_mode.exit
  %vpd = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 3
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %vpd.i) #7
  %47 = call ptr @memset(ptr %vpd.i, i32 255, i32 184)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %base_val.i) #7
  %48 = ptrtoint ptr %base_val.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %base_val.i, align 1
  %49 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pdev.i, align 8
  %call.i = call i32 @pci_read_vpd(ptr noundef %50, i64 noundef 3072, i32 noundef 1, ptr noundef nonnull %base_val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i293 = icmp slt i32 %call.i, 0
  br i1 %cmp.i293, label %if.end.get_vpd_params.exit.thread_crit_edge, label %if.end.i294

if.end.get_vpd_params.exit.thread_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_vpd_params.exit.thread

if.end.i294:                                      ; preds = %if.end
  %51 = ptrtoint ptr %base_val.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %base_val.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %52)
  %cmp1.i = icmp eq i8 %52, -126
  %53 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pdev.i, align 8
  %55 = select i1 %cmp1.i, i64 3072, i64 0
  %call5.i = call i32 @pci_read_vpd(ptr noundef %54, i64 noundef %55, i32 noundef 184, ptr noundef nonnull %vpd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end.i294.get_vpd_params.exit.thread_crit_edge, label %if.end9.i

if.end.i294.get_vpd_params.exit.thread_crit_edge: ; preds = %if.end.i294
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_vpd_params.exit.thread

if.end9.i:                                        ; preds = %if.end.i294
  %cclk_data.i = getelementptr inbounds %struct.t3_vpd, ptr %vpd.i, i32 0, i32 19
  %cclk_len.i = getelementptr inbounds %struct.t3_vpd, ptr %vpd.i, i32 0, i32 18
  %56 = ptrtoint ptr %cclk_len.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %cclk_len.i, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %tok.i.i) #7
  %conv.i.i = zext i8 %57 to i32
  %58 = sub nuw nsw i32 256, %conv.i.i
  %59 = getelementptr i8, ptr %tok.i.i, i32 %conv.i.i
  %60 = call ptr @memset(ptr %59, i32 255, i32 %58)
  %61 = call ptr @memcpy(ptr %tok.i.i, ptr %cclk_data.i, i32 %conv.i.i)
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %59, align 1
  %call.i.i = call ptr @strim(ptr noundef nonnull %tok.i.i) #7
  %call2.i.i = call i32 @kstrtouint(ptr noundef %call.i.i, i32 noundef 10, ptr noundef %vpd) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %tok.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i295 = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i295, label %if.end12.i, label %if.end9.i.get_vpd_params.exit_crit_edge

if.end9.i.get_vpd_params.exit_crit_edge:          ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_vpd_params.exit

if.end12.i:                                       ; preds = %if.end9.i
  %mclk_data.i = getelementptr inbounds %struct.t3_vpd, ptr %vpd.i, i32 0, i32 22
  %mclk_len.i = getelementptr inbounds %struct.t3_vpd, ptr %vpd.i, i32 0, i32 21
  %63 = ptrtoint ptr %mclk_len.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %mclk_len.i, align 1
  %mclk.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 3, i32 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %tok.i119.i) #7
  %conv.i120.i = zext i8 %64 to i32
  %65 = sub nuw nsw i32 256, %conv.i120.i
  %66 = getelementptr i8, ptr %tok.i119.i, i32 %conv.i120.i
  %67 = call ptr @memset(ptr %66, i32 255, i32 %65)
  %68 = call ptr @memcpy(ptr %tok.i119.i, ptr %mclk_data.i, i32 %conv.i120.i)
  %69 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %66, align 1
  %call.i122.i = call ptr @strim(ptr noundef nonnull %tok.i119.i) #7
  %call2.i123.i = call i32 @kstrtouint(ptr noundef %call.i122.i, i32 noundef 10, ptr noundef %mclk.i) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %tok.i119.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i123.i)
  %tobool15.not.i = icmp eq i32 %call2.i123.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.end12.i.get_vpd_params.exit_crit_edge

if.end12.i.get_vpd_params.exit_crit_edge:         ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_vpd_params.exit

if.end17.i:                                       ; preds = %if.end12.i
  %uclk_data.i = getelementptr inbounds %struct.t3_vpd, ptr %vpd.i, i32 0, i32 25
  %uclk_len.i = getelementptr inbounds %struct.t3_vpd, ptr %vpd.i, i32 0, i32 24
  %70 = ptrtoint ptr %uclk_len.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %uclk_len.i, align 2
  %uclk.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 3, i32 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %tok.i124.i) #7
  %conv.i125.i = zext i8 %71 to i32
  %72 = sub nuw nsw i32 256, %conv.i125.i
  %73 = getelementptr i8, ptr %tok.i124.i, i32 %conv.i125.i
  %74 = call ptr @memset(ptr %73, i32 255, i32 %72)
  %75 = call ptr @memcpy(ptr %tok.i124.i, ptr %uclk_data.i, i32 %conv.i125.i)
  %76 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %73, align 1
  %call.i127.i = call ptr @strim(ptr noundef nonnull %tok.i124.i) #7
  %call2.i128.i = call i32 @kstrtouint(ptr noundef %call.i127.i, i32 noundef 10, ptr noundef %uclk.i) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %tok.i124.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i128.i)
  %tobool20.not.i = icmp eq i32 %call2.i128.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %if.end17.i.get_vpd_params.exit_crit_edge

if.end17.i.get_vpd_params.exit_crit_edge:         ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_vpd_params.exit

if.end22.i:                                       ; preds = %if.end17.i
  %mdc_data.i = getelementptr inbounds %struct.t3_vpd, ptr %vpd.i, i32 0, i32 28
  %mdc_len.i = getelementptr inbounds %struct.t3_vpd, ptr %vpd.i, i32 0, i32 27
  %77 = ptrtoint ptr %mdc_len.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %mdc_len.i, align 1
  %mdc.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 3, i32 3
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %tok.i129.i) #7
  %conv.i130.i = zext i8 %78 to i32
  %79 = sub nuw nsw i32 256, %conv.i130.i
  %80 = getelementptr i8, ptr %tok.i129.i, i32 %conv.i130.i
  %81 = call ptr @memset(ptr %80, i32 255, i32 %79)
  %82 = call ptr @memcpy(ptr %tok.i129.i, ptr %mdc_data.i, i32 %conv.i130.i)
  %83 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %80, align 1
  %call.i132.i = call ptr @strim(ptr noundef nonnull %tok.i129.i) #7
  %call2.i133.i = call i32 @kstrtouint(ptr noundef %call.i132.i, i32 noundef 10, ptr noundef %mdc.i) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %tok.i129.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i133.i)
  %tobool25.not.i = icmp eq i32 %call2.i133.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %if.end22.i.get_vpd_params.exit_crit_edge

if.end22.i.get_vpd_params.exit_crit_edge:         ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_vpd_params.exit

if.end27.i:                                       ; preds = %if.end22.i
  %mt_data.i = getelementptr inbounds %struct.t3_vpd, ptr %vpd.i, i32 0, i32 31
  %mt_len.i = getelementptr inbounds %struct.t3_vpd, ptr %vpd.i, i32 0, i32 30
  %84 = ptrtoint ptr %mt_len.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %mt_len.i, align 4
  %mem_timing.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 3, i32 4
  %call29.i = call fastcc i32 @vpdstrtouint(ptr noundef %mt_data.i, i8 noundef zeroext %85, ptr noundef %mem_timing.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end32.i, label %if.end27.i.get_vpd_params.exit_crit_edge

if.end27.i.get_vpd_params.exit_crit_edge:         ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_vpd_params.exit

if.end32.i:                                       ; preds = %if.end27.i
  %sn.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 3, i32 5
  %sn_data.i = getelementptr inbounds %struct.t3_vpd, ptr %vpd.i, i32 0, i32 13
  %86 = call ptr @memcpy(ptr %sn.i, ptr %sn_data.i, i32 16)
  %87 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp35.i = icmp eq i32 %88, 0
  br i1 %cmp35.i, label %land.lhs.true.i, label %if.end32.i.if.else.i296_crit_edge

if.end32.i.if.else.i296_crit_edge:                ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i296

land.lhs.true.i:                                  ; preds = %if.end32.i
  %port0_data.i = getelementptr inbounds %struct.t3_vpd, ptr %vpd.i, i32 0, i32 40
  %89 = ptrtoint ptr %port0_data.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %port0_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool37.not.i = icmp eq i8 %90, 0
  br i1 %tobool37.not.i, label %if.then38.i, label %land.lhs.true.i.if.else.i296_crit_edge

land.lhs.true.i.if.else.i296_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i296

if.then38.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %91 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %info, align 4
  %caps.i.i = getelementptr inbounds %struct.adapter_info, ptr %92, i32 0, i32 5
  %93 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %caps.i.i, align 4
  %and.i.i = and i32 %94, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool40.not.i = icmp eq i32 %and.i.i, 0
  %conv42.i = select i1 %tobool40.not.i, i8 2, i8 1
  %port_type.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 3, i32 7
  %95 = ptrtoint ptr %port_type.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv42.i, ptr %port_type.i, align 1
  %96 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %caps.i.i, align 4
  %and.i136.i = and i32 %97, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i136.i)
  %tobool45.not.i = icmp eq i32 %and.i136.i, 0
  %conv47.i = select i1 %tobool45.not.i, i8 2, i8 6
  %arrayidx49.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 3, i32 7, i32 1
  %98 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv47.i, ptr %arrayidx49.i, align 1
  br label %if.end74.i

if.else.i296:                                     ; preds = %land.lhs.true.i.if.else.i296_crit_edge, %if.end32.i.if.else.i296_crit_edge
  %port0_data50.i = getelementptr inbounds %struct.t3_vpd, ptr %vpd.i, i32 0, i32 40
  %99 = ptrtoint ptr %port0_data50.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %port0_data50.i, align 4
  %call52.i = call i32 @hex_to_bin(i8 noundef zeroext %100) #7
  %conv53.i = trunc i32 %call52.i to i8
  %port_type54.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 3, i32 7
  %101 = ptrtoint ptr %port_type54.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv53.i, ptr %port_type54.i, align 1
  %port1_data.i = getelementptr inbounds %struct.t3_vpd, ptr %vpd.i, i32 0, i32 43
  %102 = ptrtoint ptr %port1_data.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %port1_data.i, align 1
  %call57.i = call i32 @hex_to_bin(i8 noundef zeroext %103) #7
  %conv58.i = trunc i32 %call57.i to i8
  %arrayidx60.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 3, i32 7, i32 1
  %104 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv58.i, ptr %arrayidx60.i, align 1
  %xaui0cfg_data.i = getelementptr inbounds %struct.t3_vpd, ptr %vpd.i, i32 0, i32 34
  %xaui0cfg_len.i = getelementptr inbounds %struct.t3_vpd, ptr %vpd.i, i32 0, i32 33
  %105 = ptrtoint ptr %xaui0cfg_len.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %xaui0cfg_len.i, align 1
  %xauicfg.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 3, i32 8
  %call63.i = call fastcc i32 @vpdstrtou16(ptr noundef %xaui0cfg_data.i, i8 noundef zeroext %106, ptr noundef %xauicfg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %tobool64.not.i = icmp eq i32 %call63.i, 0
  br i1 %tobool64.not.i, label %if.end66.i, label %if.else.i296.get_vpd_params.exit_crit_edge

if.else.i296.get_vpd_params.exit_crit_edge:       ; preds = %if.else.i296
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_vpd_params.exit

if.end66.i:                                       ; preds = %if.else.i296
  %xaui1cfg_data.i = getelementptr inbounds %struct.t3_vpd, ptr %vpd.i, i32 0, i32 37
  %xaui1cfg_len.i = getelementptr inbounds %struct.t3_vpd, ptr %vpd.i, i32 0, i32 36
  %107 = ptrtoint ptr %xaui1cfg_len.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %xaui1cfg_len.i, align 2
  %arrayidx69.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 3, i32 8, i32 1
  %call70.i = call fastcc i32 @vpdstrtou16(ptr noundef %xaui1cfg_data.i, i8 noundef zeroext %108, ptr noundef %arrayidx69.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70.i)
  %tobool71.not.i = icmp eq i32 %call70.i, 0
  br i1 %tobool71.not.i, label %if.end66.i.if.end74.i_crit_edge, label %if.end66.i.get_vpd_params.exit_crit_edge

if.end66.i.get_vpd_params.exit_crit_edge:         ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_vpd_params.exit

if.end66.i.if.end74.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.end66.i.if.end74.i_crit_edge, %if.then38.i
  %eth_base.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 3, i32 6
  %na_data.i = getelementptr inbounds %struct.t3_vpd, ptr %vpd.i, i32 0, i32 16
  %call77.i = call i32 @hex2bin(ptr noundef %eth_base.i, ptr noundef %na_data.i, i32 noundef 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i)
  %cmp78.i = icmp slt i32 %call77.i, 0
  br i1 %cmp78.i, label %if.end74.i.get_vpd_params.exit.thread_crit_edge, label %get_vpd_params.exit.thread402

if.end74.i.get_vpd_params.exit.thread_crit_edge:  ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_vpd_params.exit.thread

get_vpd_params.exit.thread402:                    ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %base_val.i) #7
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %vpd.i) #7
  br label %if.end30

get_vpd_params.exit.thread:                       ; preds = %if.end74.i.get_vpd_params.exit.thread_crit_edge, %if.end.i294.get_vpd_params.exit.thread_crit_edge, %if.end.get_vpd_params.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call5.i, %if.end.i294.get_vpd_params.exit.thread_crit_edge ], [ %call.i, %if.end.get_vpd_params.exit.thread_crit_edge ], [ -22, %if.end74.i.get_vpd_params.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %base_val.i) #7
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %vpd.i) #7
  br label %cleanup179

get_vpd_params.exit:                              ; preds = %if.end66.i.get_vpd_params.exit_crit_edge, %if.else.i296.get_vpd_params.exit_crit_edge, %if.end27.i.get_vpd_params.exit_crit_edge, %if.end22.i.get_vpd_params.exit_crit_edge, %if.end17.i.get_vpd_params.exit_crit_edge, %if.end12.i.get_vpd_params.exit_crit_edge, %if.end9.i.get_vpd_params.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i.i, %if.end9.i.get_vpd_params.exit_crit_edge ], [ %call2.i123.i, %if.end12.i.get_vpd_params.exit_crit_edge ], [ %call2.i128.i, %if.end17.i.get_vpd_params.exit_crit_edge ], [ %call2.i133.i, %if.end22.i.get_vpd_params.exit_crit_edge ], [ %call29.i, %if.end27.i.get_vpd_params.exit_crit_edge ], [ %call63.i, %if.else.i296.get_vpd_params.exit_crit_edge ], [ %call70.i, %if.end66.i.get_vpd_params.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %base_val.i) #7
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %vpd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %get_vpd_params.exit.cleanup179_crit_edge, label %get_vpd_params.exit.if.end30_crit_edge

get_vpd_params.exit.if.end30_crit_edge:           ; preds = %get_vpd_params.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

get_vpd_params.exit.cleanup179_crit_edge:         ; preds = %get_vpd_params.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup179

if.end30:                                         ; preds = %get_vpd_params.exit.if.end30_crit_edge, %get_vpd_params.exit.thread402
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reset)
  %tobool31.not = icmp eq i32 %reset, 0
  br i1 %tobool31.not, label %if.end30.if.end35_crit_edge, label %land.lhs.true

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

land.lhs.true:                                    ; preds = %if.end30
  %call32 = call i32 @t3_reset_adapter(ptr noundef %adapter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.lhs.true.if.end35_crit_edge, label %land.lhs.true.cleanup179_crit_edge

land.lhs.true.cleanup179_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup179

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.end35:                                         ; preds = %land.lhs.true.if.end35_crit_edge, %if.end30.if.end35_crit_edge
  call void @t3_sge_prep(ptr noundef %adapter, ptr noundef %params) #7
  %mclk = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 3, i32 1
  %109 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %mclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool39.not = icmp eq i32 %110, 0
  br i1 %tobool39.not, label %if.end35.if.end74_crit_edge, label %if.then40

if.end35.if.end74_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.then40:                                        ; preds = %if.end35
  %tp = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 2
  %pmrx = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 17
  %111 = ptrtoint ptr %pmrx to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %adapter, ptr %pmrx, align 4
  %name2.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 17, i32 4
  %112 = ptrtoint ptr %name2.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @.str.20, ptr %name2.i, align 4
  %offset.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 17, i32 3
  %113 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %offset.i, align 4
  %114 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i298 = getelementptr i8, ptr %115, i32 256
  %116 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i298) #7, !srcloc !337
  %117 = call i32 @llvm.bswap.i32(i32 %116) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %118 = and i32 %117, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %118)
  %cmp.i299 = icmp eq i32 %118, 28
  %.pre.i = lshr i32 %117, 8
  %.pre15.i = and i32 %.pre.i, 3
  br i1 %cmp.i299, label %if.then40.mc7_prep.exit_crit_edge, label %cond.false.i

if.then40.mc7_prep.exit_crit_edge:                ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %mc7_prep.exit

cond.false.i:                                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  %and1.i.i = lshr i32 %117, 6
  %and1.lobit.i.i = and i32 %and1.i.i, 1
  %add.i.i = add nuw nsw i32 %and1.lobit.i.i, 1
  %and3.i.i = lshr i32 %117, 5
  %and3.lobit.i.i = and i32 %and3.i.i, 1
  %add9.i.i = add nuw nsw i32 %and3.lobit.i.i, 1
  %shr10.i.i = lshr i32 %117, 2
  %and11.i.i = and i32 %shr10.i.i, 7
  %shl.i.i = shl nuw nsw i32 256, %and11.i.i
  %mul.i.i = mul nuw nsw i32 %shl.i.i, %add.i.i
  %shl12.i.i = shl nuw nsw i32 %add9.i.i, %.pre15.i
  %div.i.i = udiv i32 %mul.i.i, %shl12.i.i
  %shl13.i.i = shl i32 %div.i.i, 20
  br label %mc7_prep.exit

mc7_prep.exit:                                    ; preds = %cond.false.i, %if.then40.mc7_prep.exit_crit_edge
  %cond.i = phi i32 [ %shl13.i.i, %cond.false.i ], [ 0, %if.then40.mc7_prep.exit_crit_edge ]
  %size.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 17, i32 1
  %119 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %cond.i, ptr %size.i, align 4
  %width.i300 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 17, i32 2
  %120 = ptrtoint ptr %width.i300 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %.pre15.i, ptr %width.i300, align 4
  %pmtx = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 18
  %121 = ptrtoint ptr %pmtx to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %adapter, ptr %pmtx, align 4
  %name2.i301 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 18, i32 4
  %122 = ptrtoint ptr %name2.i301 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @.str.21, ptr %name2.i301, align 4
  %offset.i302 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 18, i32 3
  %123 = ptrtoint ptr %offset.i302 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 128, ptr %offset.i302, align 4
  %124 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i304 = getelementptr i8, ptr %125, i32 384
  %126 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i304) #7, !srcloc !337
  %127 = call i32 @llvm.bswap.i32(i32 %126) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %128 = and i32 %127, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %128)
  %cmp.i305 = icmp eq i32 %128, 28
  %.pre.i306 = lshr i32 %127, 8
  %.pre15.i307 = and i32 %.pre.i306, 3
  br i1 %cmp.i305, label %mc7_prep.exit.mc7_prep.exit325_crit_edge, label %cond.false.i321

mc7_prep.exit.mc7_prep.exit325_crit_edge:         ; preds = %mc7_prep.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %mc7_prep.exit325

cond.false.i321:                                  ; preds = %mc7_prep.exit
  call void @__sanitizer_cov_trace_pc() #9
  %and1.i.i308 = lshr i32 %127, 6
  %and1.lobit.i.i309 = and i32 %and1.i.i308, 1
  %add.i.i310 = add nuw nsw i32 %and1.lobit.i.i309, 1
  %and3.i.i311 = lshr i32 %127, 5
  %and3.lobit.i.i312 = and i32 %and3.i.i311, 1
  %add9.i.i313 = add nuw nsw i32 %and3.lobit.i.i312, 1
  %shr10.i.i314 = lshr i32 %127, 2
  %and11.i.i315 = and i32 %shr10.i.i314, 7
  %shl.i.i316 = shl nuw nsw i32 256, %and11.i.i315
  %mul.i.i317 = mul nuw nsw i32 %shl.i.i316, %add.i.i310
  %shl12.i.i318 = shl nuw nsw i32 %add9.i.i313, %.pre15.i307
  %div.i.i319 = udiv i32 %mul.i.i317, %shl12.i.i318
  %shl13.i.i320 = shl i32 %div.i.i319, 20
  br label %mc7_prep.exit325

mc7_prep.exit325:                                 ; preds = %cond.false.i321, %mc7_prep.exit.mc7_prep.exit325_crit_edge
  %cond.i322 = phi i32 [ %shl13.i.i320, %cond.false.i321 ], [ 0, %mc7_prep.exit.mc7_prep.exit325_crit_edge ]
  %size.i323 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 18, i32 1
  %129 = ptrtoint ptr %size.i323 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %cond.i322, ptr %size.i323, align 4
  %width.i324 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 18, i32 2
  %130 = ptrtoint ptr %width.i324 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %.pre15.i307, ptr %width.i324, align 4
  %cm = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 19
  %131 = ptrtoint ptr %cm to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %adapter, ptr %cm, align 4
  %name2.i326 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 19, i32 4
  %132 = ptrtoint ptr %name2.i326 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @.str.22, ptr %name2.i326, align 4
  %offset.i327 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 19, i32 3
  %133 = ptrtoint ptr %offset.i327 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 256, ptr %offset.i327, align 4
  %134 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i329 = getelementptr i8, ptr %135, i32 512
  %136 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i329) #7, !srcloc !337
  %137 = call i32 @llvm.bswap.i32(i32 %136) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %138 = and i32 %137, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %138)
  %cmp.i330 = icmp eq i32 %138, 28
  %.pre.i331 = lshr i32 %137, 8
  %.pre15.i332 = and i32 %.pre.i331, 3
  br i1 %cmp.i330, label %mc7_prep.exit325.mc7_prep.exit350_crit_edge, label %cond.false.i346

mc7_prep.exit325.mc7_prep.exit350_crit_edge:      ; preds = %mc7_prep.exit325
  call void @__sanitizer_cov_trace_pc() #9
  br label %mc7_prep.exit350

cond.false.i346:                                  ; preds = %mc7_prep.exit325
  call void @__sanitizer_cov_trace_pc() #9
  %and1.i.i333 = lshr i32 %137, 6
  %and1.lobit.i.i334 = and i32 %and1.i.i333, 1
  %add.i.i335 = add nuw nsw i32 %and1.lobit.i.i334, 1
  %and3.i.i336 = lshr i32 %137, 5
  %and3.lobit.i.i337 = and i32 %and3.i.i336, 1
  %add9.i.i338 = add nuw nsw i32 %and3.lobit.i.i337, 1
  %shr10.i.i339 = lshr i32 %137, 2
  %and11.i.i340 = and i32 %shr10.i.i339, 7
  %shl.i.i341 = shl nuw nsw i32 256, %and11.i.i340
  %mul.i.i342 = mul nuw nsw i32 %shl.i.i341, %add.i.i335
  %shl12.i.i343 = shl nuw nsw i32 %add9.i.i338, %.pre15.i332
  %div.i.i344 = udiv i32 %mul.i.i342, %shl12.i.i343
  %shl13.i.i345 = shl i32 %div.i.i344, 20
  br label %mc7_prep.exit350

mc7_prep.exit350:                                 ; preds = %cond.false.i346, %mc7_prep.exit325.mc7_prep.exit350_crit_edge
  %cond.i347 = phi i32 [ %shl13.i.i345, %cond.false.i346 ], [ 0, %mc7_prep.exit325.mc7_prep.exit350_crit_edge ]
  %size.i348 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 19, i32 1
  %139 = ptrtoint ptr %size.i348 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %cond.i347, ptr %size.i348, align 4
  %width.i349 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 19, i32 2
  %140 = ptrtoint ptr %width.i349 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %.pre15.i332, ptr %width.i349, align 4
  %141 = ptrtoint ptr %chan_map to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %chan_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %142)
  %cmp44 = icmp eq i32 %142, 3
  %cond46 = select i1 %cmp44, i32 2, i32 1
  %143 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %cond46, ptr %tp, align 4
  %144 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %size.i, align 4
  %pmrx_size = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 2, i32 1
  %146 = ptrtoint ptr %pmrx_size to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %145, ptr %pmrx_size, align 4
  %147 = ptrtoint ptr %size.i323 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %size.i323, align 4
  %pmtx_size = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 2, i32 2
  %149 = ptrtoint ptr %pmtx_size to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %pmtx_size, align 4
  %cm_size = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 2, i32 3
  %150 = ptrtoint ptr %cm_size to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %cond.i347, ptr %cm_size, align 4
  %div291 = lshr i32 %145, 1
  %chan_rx_size = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 2, i32 4
  %151 = ptrtoint ptr %chan_rx_size to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %div291, ptr %chan_rx_size, align 4
  %152 = zext i1 %cmp44 to i32
  %div56411 = lshr i32 %148, %152
  %chan_tx_size = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 2, i32 5
  %153 = ptrtoint ptr %chan_tx_size to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %div56411, ptr %chan_tx_size, align 4
  %rx_pg_size = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 2, i32 6
  %154 = ptrtoint ptr %rx_pg_size to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 65536, ptr %rx_pg_size, align 4
  %155 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %info, align 4
  %caps.i355 = getelementptr inbounds %struct.adapter_info, ptr %156, i32 0, i32 5
  %157 = ptrtoint ptr %caps.i355 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %caps.i355, align 4
  %and.i356 = and i32 %158, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i356)
  %tobool58.not = icmp eq i32 %and.i356, 0
  %cond59 = select i1 %tobool58.not, i32 16384, i32 65536
  %tx_pg_size = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 2, i32 7
  %159 = ptrtoint ptr %tx_pg_size to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %cond59, ptr %tx_pg_size, align 4
  %div.i412 = lshr i32 %145, 17
  %rem.i.lhs.trunc = trunc i32 %div.i412 to i16
  %rem.i410 = urem i16 %rem.i.lhs.trunc, 24
  %rem.i.zext = zext i16 %rem.i410 to i32
  %sub.i = sub nsw i32 %div.i412, %rem.i.zext
  %rx_num_pgs = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 2, i32 8
  %160 = ptrtoint ptr %rx_num_pgs to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %sub.i, ptr %rx_num_pgs, align 4
  %161 = select i1 %tobool58.not, i32 14, i32 16
  %div.i357413 = lshr i32 %div56411, %161
  %rem.i358 = urem i32 %div.i357413, 24
  %sub.i359 = sub nsw i32 %div.i357413, %rem.i358
  %tx_num_pgs = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 2, i32 9
  %162 = ptrtoint ptr %tx_num_pgs to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %sub.i359, ptr %tx_num_pgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217727, i32 %cond.i347)
  %cmp67 = icmp ugt i32 %cond.i347, 134217727
  br i1 %cmp67, label %mc7_prep.exit350.lor.end_crit_edge, label %lor.rhs

mc7_prep.exit350.lor.end_crit_edge:               ; preds = %mc7_prep.exit350
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

lor.rhs:                                          ; preds = %mc7_prep.exit350
  call void @__sanitizer_cov_trace_pc() #9
  %163 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %cmp71.not = icmp eq i32 %164, 0
  %phi.sel = select i1 %cmp71.not, i32 6, i32 12
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %mc7_prep.exit350.lor.end_crit_edge
  %165 = phi i32 [ 12, %mc7_prep.exit350.lor.end_crit_edge ], [ %phi.sel, %lor.rhs ]
  %ntimer_qs = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 2, i32 10
  %166 = ptrtoint ptr %ntimer_qs to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %ntimer_qs, align 4
  br label %if.end74

if.end74:                                         ; preds = %lor.end, %if.end35.if.end74_crit_edge
  %size.i360 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 17, i32 1
  %167 = ptrtoint ptr %size.i360 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %size.i360, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %tobool77.not = icmp eq i32 %168, 0
  br i1 %tobool77.not, label %if.end74.land.end.thread_crit_edge, label %land.lhs.true78

if.end74.land.end.thread_crit_edge:               ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end.thread

land.lhs.true78:                                  ; preds = %if.end74
  %size.i361 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 18, i32 1
  %169 = ptrtoint ptr %size.i361 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %size.i361, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool81.not = icmp eq i32 %170, 0
  br i1 %tobool81.not, label %land.lhs.true78.land.end.thread_crit_edge, label %land.end

land.lhs.true78.land.end.thread_crit_edge:        ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end.thread

land.end.thread:                                  ; preds = %land.lhs.true78.land.end.thread_crit_edge, %if.end74.land.end.thread_crit_edge
  %offload405 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 14
  %171 = ptrtoint ptr %offload405 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 0, ptr %offload405, align 4
  br label %if.end105

land.end:                                         ; preds = %land.lhs.true78
  %size.i362 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 19, i32 1
  %172 = ptrtoint ptr %size.i362 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %size.i362, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %tobool84 = icmp ne i32 %173, 0
  %phi.cast = zext i1 %tobool84 to i32
  %offload = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 14
  %174 = ptrtoint ptr %offload to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %phi.cast, ptr %offload, align 4
  br i1 %tobool84, label %if.then88, label %land.end.if.end105_crit_edge

land.end.if.end105_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end105

if.then88:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  %nservers = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 1, i32 1
  %175 = ptrtoint ptr %nservers to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 512, ptr %nservers, align 4
  %176 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %cmp92.not = icmp eq i32 %177, 0
  %cond94 = select i1 %cmp92.not, i32 0, i32 128
  %nfilters = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 1, i32 2
  %178 = ptrtoint ptr %nfilters to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %cond94, ptr %nfilters, align 4
  %nroutes = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 1, i32 3
  %179 = ptrtoint ptr %nroutes to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 0, ptr %nroutes, align 4
  %mc599 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 20
  call void @t3_mc5_prep(ptr noundef %adapter, ptr noundef %mc599, i32 noundef 1) #7
  %mtus = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 6
  %180 = ptrtoint ptr %mtus to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 88, ptr %mtus, align 2
  %arrayidx1.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 6, i32 1
  %181 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 88, ptr %arrayidx1.i, align 2
  %arrayidx2.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 6, i32 2
  %182 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 256, ptr %arrayidx2.i, align 2
  %arrayidx3.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 6, i32 3
  %183 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 512, ptr %arrayidx3.i, align 2
  %arrayidx4.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 6, i32 4
  %184 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 576, ptr %arrayidx4.i, align 2
  %arrayidx5.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 6, i32 5
  %185 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 1024, ptr %arrayidx5.i, align 2
  %arrayidx6.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 6, i32 6
  %186 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 1280, ptr %arrayidx6.i, align 2
  %arrayidx7.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 6, i32 7
  %187 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 1492, ptr %arrayidx7.i, align 2
  %arrayidx8.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 6, i32 8
  %188 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 1500, ptr %arrayidx8.i, align 2
  %arrayidx9.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 6, i32 9
  %189 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 2002, ptr %arrayidx9.i, align 2
  %arrayidx10.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 6, i32 10
  %190 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 2048, ptr %arrayidx10.i, align 2
  %arrayidx11.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 6, i32 11
  %191 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 4096, ptr %arrayidx11.i, align 2
  %arrayidx12.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 6, i32 12
  %192 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 4352, ptr %arrayidx12.i, align 2
  %arrayidx13.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 6, i32 13
  %193 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 8192, ptr %arrayidx13.i, align 2
  %arrayidx14.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 6, i32 14
  %194 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 9000, ptr %arrayidx14.i, align 2
  %arrayidx15.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 6, i32 15
  %195 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 9600, ptr %arrayidx15.i, align 2
  %a_wnd = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 7
  %b_wnd = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 8
  %arrayidx.i363 = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 7, i32 8
  %196 = ptrtoint ptr %arrayidx.i363 to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 1, ptr %arrayidx.i363, align 2
  %arrayidx1.i364 = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 7, i32 7
  %197 = ptrtoint ptr %arrayidx1.i364 to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 1, ptr %arrayidx1.i364, align 2
  %arrayidx2.i365 = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 7, i32 6
  %198 = ptrtoint ptr %arrayidx2.i365 to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 1, ptr %arrayidx2.i365, align 2
  %arrayidx3.i366 = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 7, i32 5
  %199 = ptrtoint ptr %arrayidx3.i366 to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 1, ptr %arrayidx3.i366, align 2
  %arrayidx4.i367 = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 7, i32 4
  %200 = ptrtoint ptr %arrayidx4.i367 to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 1, ptr %arrayidx4.i367, align 2
  %arrayidx5.i368 = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 7, i32 3
  %201 = ptrtoint ptr %arrayidx5.i368 to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 1, ptr %arrayidx5.i368, align 2
  %arrayidx6.i369 = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 7, i32 2
  %202 = ptrtoint ptr %arrayidx6.i369 to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 1, ptr %arrayidx6.i369, align 2
  %arrayidx7.i370 = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 7, i32 1
  %203 = ptrtoint ptr %arrayidx7.i370 to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 1, ptr %arrayidx7.i370, align 2
  %204 = ptrtoint ptr %a_wnd to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 1, ptr %a_wnd, align 2
  %arrayidx9.i371 = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 7, i32 9
  %205 = ptrtoint ptr %arrayidx9.i371 to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 2, ptr %arrayidx9.i371, align 2
  %arrayidx10.i372 = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 7, i32 10
  %206 = ptrtoint ptr %arrayidx10.i372 to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 3, ptr %arrayidx10.i372, align 2
  %arrayidx11.i373 = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 7, i32 11
  %207 = ptrtoint ptr %arrayidx11.i373 to i32
  call void @__asan_store2_noabort(i32 %207)
  store i16 4, ptr %arrayidx11.i373, align 2
  %arrayidx12.i374 = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 7, i32 12
  %208 = ptrtoint ptr %arrayidx12.i374 to i32
  call void @__asan_store2_noabort(i32 %208)
  store i16 5, ptr %arrayidx12.i374, align 2
  %arrayidx13.i375 = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 7, i32 13
  %209 = ptrtoint ptr %arrayidx13.i375 to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 6, ptr %arrayidx13.i375, align 2
  %arrayidx14.i376 = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 7, i32 14
  %210 = ptrtoint ptr %arrayidx14.i376 to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 7, ptr %arrayidx14.i376, align 2
  %arrayidx15.i377 = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 7, i32 15
  %211 = ptrtoint ptr %arrayidx15.i377 to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 8, ptr %arrayidx15.i377, align 2
  %arrayidx16.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 7, i32 16
  %212 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 9, ptr %arrayidx16.i, align 2
  %arrayidx17.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 7, i32 17
  %213 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 10, ptr %arrayidx17.i, align 2
  %arrayidx18.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 7, i32 18
  %214 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 14, ptr %arrayidx18.i, align 2
  %arrayidx19.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 7, i32 19
  %215 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 17, ptr %arrayidx19.i, align 2
  %arrayidx20.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 7, i32 20
  %216 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 21, ptr %arrayidx20.i, align 2
  %arrayidx21.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 7, i32 21
  %217 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 25, ptr %arrayidx21.i, align 2
  %arrayidx22.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 7, i32 22
  %218 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store2_noabort(i32 %218)
  store i16 30, ptr %arrayidx22.i, align 2
  %arrayidx23.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 7, i32 23
  %219 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store2_noabort(i32 %219)
  store i16 35, ptr %arrayidx23.i, align 2
  %arrayidx24.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 7, i32 24
  %220 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 45, ptr %arrayidx24.i, align 2
  %arrayidx25.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 7, i32 25
  %221 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 60, ptr %arrayidx25.i, align 2
  %arrayidx26.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 7, i32 26
  %222 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 80, ptr %arrayidx26.i, align 2
  %arrayidx27.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 7, i32 27
  %223 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 100, ptr %arrayidx27.i, align 2
  %arrayidx28.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 7, i32 28
  %224 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store2_noabort(i32 %224)
  store i16 200, ptr %arrayidx28.i, align 2
  %arrayidx29.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 7, i32 29
  %225 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store2_noabort(i32 %225)
  store i16 300, ptr %arrayidx29.i, align 2
  %arrayidx30.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 7, i32 30
  %226 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 400, ptr %arrayidx30.i, align 2
  %arrayidx31.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 7, i32 31
  %227 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store2_noabort(i32 %227)
  store i16 500, ptr %arrayidx31.i, align 2
  %arrayidx41.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 8, i32 10
  %228 = call ptr @memset(ptr %b_wnd, i32 0, i32 18)
  %229 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store2_noabort(i32 %229)
  store i16 1, ptr %arrayidx41.i, align 2
  %arrayidx42.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 8, i32 9
  %230 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store2_noabort(i32 %230)
  store i16 1, ptr %arrayidx42.i, align 2
  %arrayidx43.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 8, i32 12
  %231 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store2_noabort(i32 %231)
  store i16 2, ptr %arrayidx43.i, align 2
  %arrayidx44.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 8, i32 11
  %232 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store2_noabort(i32 %232)
  store i16 2, ptr %arrayidx44.i, align 2
  %arrayidx45.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 8, i32 16
  %233 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store2_noabort(i32 %233)
  store i16 3, ptr %arrayidx45.i, align 2
  %arrayidx46.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 8, i32 15
  %234 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store2_noabort(i32 %234)
  store i16 3, ptr %arrayidx46.i, align 2
  %arrayidx47.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 8, i32 14
  %235 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store2_noabort(i32 %235)
  store i16 3, ptr %arrayidx47.i, align 2
  %arrayidx48.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 8, i32 13
  %236 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store2_noabort(i32 %236)
  store i16 3, ptr %arrayidx48.i, align 2
  %arrayidx49.i378 = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 8, i32 21
  %237 = ptrtoint ptr %arrayidx49.i378 to i32
  call void @__asan_store2_noabort(i32 %237)
  store i16 4, ptr %arrayidx49.i378, align 2
  %arrayidx50.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 8, i32 20
  %238 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store2_noabort(i32 %238)
  store i16 4, ptr %arrayidx50.i, align 2
  %arrayidx51.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 8, i32 19
  %239 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store2_noabort(i32 %239)
  store i16 4, ptr %arrayidx51.i, align 2
  %arrayidx52.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 8, i32 18
  %240 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store2_noabort(i32 %240)
  store i16 4, ptr %arrayidx52.i, align 2
  %arrayidx53.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 8, i32 17
  %241 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store2_noabort(i32 %241)
  store i16 4, ptr %arrayidx53.i, align 2
  %arrayidx54.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 8, i32 27
  %242 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_store2_noabort(i32 %242)
  store i16 5, ptr %arrayidx54.i, align 2
  %arrayidx55.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 8, i32 26
  %243 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_store2_noabort(i32 %243)
  store i16 5, ptr %arrayidx55.i, align 2
  %arrayidx56.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 8, i32 25
  %244 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store2_noabort(i32 %244)
  store i16 5, ptr %arrayidx56.i, align 2
  %arrayidx57.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 8, i32 24
  %245 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_store2_noabort(i32 %245)
  store i16 5, ptr %arrayidx57.i, align 2
  %arrayidx58.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 8, i32 23
  %246 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_store2_noabort(i32 %246)
  store i16 5, ptr %arrayidx58.i, align 2
  %arrayidx59.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 8, i32 22
  %247 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_store2_noabort(i32 %247)
  store i16 5, ptr %arrayidx59.i, align 2
  %arrayidx60.i379 = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 8, i32 29
  %248 = ptrtoint ptr %arrayidx60.i379 to i32
  call void @__asan_store2_noabort(i32 %248)
  store i16 6, ptr %arrayidx60.i379, align 2
  %arrayidx61.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 8, i32 28
  %249 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_store2_noabort(i32 %249)
  store i16 6, ptr %arrayidx61.i, align 2
  %arrayidx62.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 8, i32 31
  %250 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_store2_noabort(i32 %250)
  store i16 7, ptr %arrayidx62.i, align 2
  %arrayidx63.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 8, i32 30
  %251 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_store2_noabort(i32 %251)
  store i16 7, ptr %arrayidx63.i, align 2
  br label %if.end105

if.end105:                                        ; preds = %if.then88, %land.end.if.end105_crit_edge, %land.end.thread
  call fastcc void @early_hw_init(ptr noundef %adapter, ptr noundef %ai)
  %call106 = call fastcc i32 @init_parity(ptr noundef %adapter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %for.cond.preheader, label %if.end105.cleanup179_crit_edge

if.end105.cleanup179_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup179

for.cond.preheader:                               ; preds = %if.end105
  %252 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %253)
  %cmp112415.not = icmp eq i32 %253, 0
  br i1 %cmp112415.not, label %for.cond.preheader.cleanup179_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup179_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup179

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %254 = getelementptr inbounds [6 x i8], ptr %hw_addr, i32 0, i32 5
  %phy_base_addr = getelementptr inbounds %struct.adapter_info, ptr %ai, i32 0, i32 2
  %mdio_ops = getelementptr inbounds %struct.adapter_info, ptr %ai, i32 0, i32 6
  %arrayidx.i385 = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 3, i32 8, i32 1
  %eth_base = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 3, i32 6
  %arrayidx152 = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 3, i32 6, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %j.0417 = phi i32 [ -1, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %i.0416 = phi i32 [ 0, %for.body.lr.ph ], [ %inc178, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %hw_addr) #7
  %arrayidx.i380 = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 21, i32 %i.0416
  %255 = call ptr @memset(ptr %hw_addr, i32 255, i32 6)
  %256 = ptrtoint ptr %arrayidx.i380 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %arrayidx.i380, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %for.body
  %j.1 = phi i32 [ %j.0417, %for.body ], [ %inc, %while.cond.while.cond_crit_edge ]
  %inc = add i32 %j.1, 1
  %arrayidx = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 3, i32 7, i32 %inc
  %258 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %arrayidx, align 1
  %tobool118.not = icmp eq i8 %259, 0
  br i1 %tobool118.not, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %idxprom = zext i8 %259 to i32
  %arrayidx125 = getelementptr [11 x %struct.port_type_info], ptr @port_types, i32 0, i32 %idxprom
  %260 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %arrayidx125, align 4
  %tobool126.not = icmp eq ptr %261, null
  br i1 %tobool126.not, label %do.end, label %if.end134

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %262 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %pdev.i, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %263, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %idxprom) #10
  br label %cleanup

if.end134:                                        ; preds = %while.end
  %phy = getelementptr i8, ptr %257, i32 2316
  %dev136 = getelementptr i8, ptr %257, i32 2352
  %264 = ptrtoint ptr %dev136 to i32
  call void @__asan_store4_noabort(i32 %264)
  store ptr %257, ptr %dev136, align 4
  %265 = ptrtoint ptr %phy_base_addr to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %phy_base_addr, align 2
  %conv139 = zext i8 %266 to i32
  %add140 = add i32 %inc, %conv139
  %267 = ptrtoint ptr %mdio_ops to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %mdio_ops, align 4
  %call141 = call i32 %261(ptr noundef %phy, ptr noundef %adapter, i32 noundef %add140, ptr noundef %268) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %if.end144, label %if.end134.cleanup_crit_edge

if.end134.cleanup_crit_edge:                      ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end144:                                        ; preds = %if.end134
  %mac = getelementptr i8, ptr %257, i32 5624
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %devid.i) #7
  %269 = ptrtoint ptr %devid.i to i32
  call void @__asan_store2_noabort(i32 %269)
  store i16 -1, ptr %devid.i, align 2, !annotation !341
  %270 = ptrtoint ptr %mac to i32
  call void @__asan_store4_noabort(i32 %270)
  store ptr %adapter, ptr %mac, align 8
  %271 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %pdev.i, align 8
  %call.i383 = call i32 @pci_read_config_word(ptr noundef %272, i32 noundef 2, ptr noundef nonnull %devid.i) #7
  %273 = ptrtoint ptr %devid.i to i32
  call void @__asan_load2_noabort(i32 %273)
  %274 = load i16, ptr %devid.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 55, i16 %274)
  %cmp.i384 = icmp eq i16 %274, 55
  br i1 %cmp.i384, label %land.lhs.true.i387, label %if.end144.if.end.i390_crit_edge

if.end144.if.end.i390_crit_edge:                  ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i390

land.lhs.true.i387:                               ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #9
  %275 = ptrtoint ptr %arrayidx.i385 to i32
  call void @__asan_load2_noabort(i32 %275)
  %276 = load i16, ptr %arrayidx.i385, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %276)
  %tobool.not.i386 = icmp eq i16 %276, 0
  %spec.select.i = select i1 %tobool.not.i386, i32 0, i32 %inc
  br label %if.end.i390

if.end.i390:                                      ; preds = %land.lhs.true.i387, %if.end144.if.end.i390_crit_edge
  %index.addr.0.i = phi i32 [ %inc, %if.end144.if.end.i390_crit_edge ], [ %spec.select.i, %land.lhs.true.i387 ]
  %mul.i = shl i32 %index.addr.0.i, 9
  %offset.i388 = getelementptr i8, ptr %257, i32 5628
  %277 = ptrtoint ptr %offset.i388 to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 %mul.i, ptr %offset.i388, align 4
  %nucast.i = getelementptr i8, ptr %257, i32 5632
  %278 = ptrtoint ptr %nucast.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 1, ptr %nucast.i, align 8
  %279 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %280)
  %cmp4.i = icmp eq i32 %280, 0
  br i1 %cmp4.i, label %land.lhs.true6.i, label %if.end.i390.mac_prep.exit_crit_edge

if.end.i390.mac_prep.exit_crit_edge:              ; preds = %if.end.i390
  call void @__sanitizer_cov_trace_pc() #9
  br label %mac_prep.exit

land.lhs.true6.i:                                 ; preds = %if.end.i390
  %281 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %info, align 4
  %caps.i.i392 = getelementptr inbounds %struct.adapter_info, ptr %282, i32 0, i32 5
  %283 = ptrtoint ptr %caps.i.i392 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %caps.i.i392, align 4
  %and.i.i393 = and i32 %284, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i393)
  %tobool8.not.i = icmp eq i32 %and.i.i393, 0
  br i1 %tobool8.not.i, label %land.lhs.true6.i.mac_prep.exit_crit_edge, label %if.then9.i

land.lhs.true6.i.mac_prep.exit_crit_edge:         ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mac_prep.exit

if.then9.i:                                       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = add i32 %mul.i, 2192
  %and.i29.i = and i32 %284, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i29.i)
  %tobool12.not.i = icmp eq i32 %and.i29.i, 0
  %cond.i394 = select i1 %tobool12.not.i, i32 36707332, i32 42998788
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  call void @arm_heavy_mb() #7
  %285 = call i32 @llvm.bswap.i32(i32 %cond.i394) #7
  %286 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i396 = getelementptr i8, ptr %287, i32 %add.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i396, i32 %285) #7, !srcloc !340
  %288 = ptrtoint ptr %offset.i388 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %offset.i388, align 4
  %add14.i = add i32 %289, 2232
  %290 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %291, i32 %add14.i
  %292 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !337
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %293 = and i32 %292, -16777217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  call void @arm_heavy_mb() #7
  %294 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %regs.i, align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %295, i32 %add14.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i, i32 %293) #7, !srcloc !340
  %296 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %regs.i, align 4
  %add.ptr.i9.i.i = getelementptr i8, ptr %297, i32 %add14.i
  %298 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i.i) #7, !srcloc !337
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  br label %mac_prep.exit

mac_prep.exit:                                    ; preds = %if.then9.i, %land.lhs.true6.i.mac_prep.exit_crit_edge, %if.end.i390.mac_prep.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %devid.i) #7
  %299 = call ptr @memcpy(ptr %hw_addr, ptr %eth_base, i32 5)
  %300 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %arrayidx152, align 1
  %302 = trunc i32 %i.0416 to i8
  %conv155 = add i8 %301, %302
  %303 = ptrtoint ptr %254 to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 %conv155, ptr %254, align 1
  %304 = ptrtoint ptr %arrayidx.i380 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %arrayidx.i380, align 4
  call void @dev_addr_mod(ptr noundef %305, i32 noundef 0, ptr noundef nonnull %hw_addr, i32 noundef 6) #7
  %link_config = getelementptr i8, ptr %257, i32 6096
  %caps = getelementptr i8, ptr %257, i32 2320
  %306 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %caps, align 4
  %308 = ptrtoint ptr %link_config to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 %307, ptr %link_config, align 4
  %requested_speed.i = getelementptr i8, ptr %257, i32 6104
  %fc.i = getelementptr i8, ptr %257, i32 6111
  %309 = call ptr @memset(ptr %requested_speed.i, i32 255, i32 6)
  %310 = ptrtoint ptr %fc.i to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 3, ptr %fc.i, align 1
  %requested_fc.i = getelementptr i8, ptr %257, i32 6110
  %and.i397 = and i32 %307, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i397)
  %tobool.not.i398 = icmp eq i32 %and.i397, 0
  %spec.store.select.i = select i1 %tobool.not.i398, i8 3, i8 7
  %311 = ptrtoint ptr %requested_fc.i to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 %spec.store.select.i, ptr %requested_fc.i, align 2
  %spec.select.i399 = select i1 %tobool.not.i398, i32 0, i32 %307
  %not.tobool.not.i = xor i1 %tobool.not.i398, true
  %spec.select20.i = zext i1 %not.tobool.not.i to i8
  %312 = getelementptr i8, ptr %257, i32 6100
  %313 = ptrtoint ptr %312 to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 %spec.select.i399, ptr %312, align 4
  %314 = getelementptr i8, ptr %257, i32 6112
  %315 = ptrtoint ptr %314 to i32
  call void @__asan_store1_noabort(i32 %315)
  store i8 %spec.select20.i, ptr %314, align 4
  %ops = getelementptr i8, ptr %257, i32 2336
  %316 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %ops, align 4
  %power_down = getelementptr inbounds %struct.cphy_ops, ptr %317, i32 0, i32 11
  %318 = ptrtoint ptr %power_down to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %power_down, align 4
  %call163 = call i32 %319(ptr noundef %phy, i32 noundef 1) #7
  %320 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %caps, align 4
  %and = and i32 %321, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool166.not = icmp eq i32 %and, 0
  br i1 %tobool166.not, label %land.lhs.true167, label %mac_prep.exit.for.inc_crit_edge

mac_prep.exit.for.inc_crit_edge:                  ; preds = %mac_prep.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true167:                                 ; preds = %mac_prep.exit
  %322 = ptrtoint ptr %linkpoll_period to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %linkpoll_period, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %323)
  %cmp170 = icmp ugt i32 %323, 10
  br i1 %cmp170, label %if.then172, label %land.lhs.true167.for.inc_crit_edge

land.lhs.true167.for.inc_crit_edge:               ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then172:                                       ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #9
  %324 = ptrtoint ptr %linkpoll_period to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 10, ptr %linkpoll_period, align 4
  br label %for.inc

cleanup:                                          ; preds = %if.end134.cleanup_crit_edge, %do.end
  %retval.1 = phi i32 [ -22, %do.end ], [ %call141, %if.end134.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %hw_addr) #7
  br label %cleanup179

for.inc:                                          ; preds = %if.then172, %land.lhs.true167.for.inc_crit_edge, %mac_prep.exit.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %hw_addr) #7
  %inc178 = add nuw i32 %i.0416, 1
  %325 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %nports, align 4
  %cmp112 = icmp ult i32 %inc178, %326
  br i1 %cmp112, label %for.inc.for.body_crit_edge, label %for.inc.cleanup179_crit_edge

for.inc.cleanup179_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup179

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup179:                                       ; preds = %for.inc.cleanup179_crit_edge, %cleanup, %for.cond.preheader.cleanup179_crit_edge, %if.end105.cleanup179_crit_edge, %land.lhs.true.cleanup179_crit_edge, %get_vpd_params.exit.cleanup179_crit_edge, %get_vpd_params.exit.thread, %get_pci_mode.exit.cleanup179_crit_edge
  %retval.2 = phi i32 [ %retval.1, %cleanup ], [ -19, %get_pci_mode.exit.cleanup179_crit_edge ], [ %retval.0.i, %get_vpd_params.exit.cleanup179_crit_edge ], [ -1, %land.lhs.true.cleanup179_crit_edge ], [ %call106, %if.end105.cleanup179_crit_edge ], [ %retval.0.i.ph, %get_vpd_params.exit.thread ], [ 0, %for.cond.preheader.cleanup179_crit_edge ], [ 0, %for.inc.cleanup179_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pci_find_capability(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_sge_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_mc5_prep(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @early_hw_init(ptr nocapture noundef readonly %adapter, ptr nocapture noundef readonly %ai) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %info.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 5
  %0 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info.i, align 4
  %caps.i = getelementptr inbounds %struct.adapter_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %caps.i, align 4
  %and.i = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  %cond = select i1 %tobool.not, i32 4, i32 6
  %vpd.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 3
  %4 = ptrtoint ptr %vpd.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vpd.i, align 4
  %mdc.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 3, i32 3
  %6 = ptrtoint ptr %mdc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mdc.i, align 4
  %mul.i = shl i32 %7, 1
  %div.i = udiv i32 %5, %mul.i
  %sub.i = shl i32 %div.i, 5
  %or.i = add i32 %sub.i, -28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %regs.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %9 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 1712
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %8) #7, !srcloc !340
  %11 = ptrtoint ptr %vpd.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vpd.i, align 4
  %div = udiv i32 %12, 80
  %sub = add nsw i32 %div, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %sub) #7
  %14 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 1696
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #7, !srcloc !340
  %gpio_out = getelementptr inbounds %struct.adapter_info, ptr %ai, i32 0, i32 3
  %16 = ptrtoint ptr %gpio_out to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gpio_out, align 4
  %or2 = or i32 %17, 65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %18 = tail call i32 @llvm.bswap.i32(i32 %or2) #7
  %19 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %20, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %18) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %21 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %22, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 0) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %23 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %24, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 65295) #7, !srcloc !340
  %rev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 13
  %25 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp = icmp eq i32 %26, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %27 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %info.i, align 4
  %caps.i37 = getelementptr inbounds %struct.adapter_info, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %caps.i37 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %caps.i37, align 4
  %and.i38 = and i32 %30, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i38)
  %tobool5.not = icmp eq i32 %and.i38, 0
  br i1 %tobool5.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %or6 = or i32 %cond, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %val.0 = phi i32 [ %or6, %if.then ], [ %cond, %lor.lhs.false.if.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %31 = tail call i32 @llvm.bswap.i32(i32 %val.0) #7
  %32 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %33, i32 2232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 %31) #7, !srcloc !340
  %34 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %35, i32 2232
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %or8 = or i32 %val.0, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %37 = tail call i32 @llvm.bswap.i32(i32 %or8) #7
  %38 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %39, i32 2232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 %37) #7, !srcloc !340
  %40 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i46 = getelementptr i8, ptr %41, i32 2232
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %43 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %44, i32 2744
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 %37) #7, !srcloc !340
  %45 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %46, i32 2232
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_parity(ptr nocapture noundef readonly %adap) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %3 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond3.preheader:                              ; preds = %for.body
  br i1 %tobool1.not, label %for.cond3.preheader.for.body8_crit_edge, label %for.cond3.preheader.cleanup_crit_edge

for.cond3.preheader.cleanup_crit_edge:            ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond3.preheader.for.body8_crit_edge:          ; preds = %for.cond3.preheader
  br label %for.body8

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.080 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call2 = tail call fastcc i32 @clear_sge_ctxt(ptr noundef %adap, i32 noundef %i.080, i32 noundef 131072)
  %inc = add nuw nsw i32 %i.080, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool1.not = icmp eq i32 %call2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %i.080)
  %cmp = icmp ult i32 %i.080, 15
  %or.cond = and i1 %tobool1.not, %cmp
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.cond3.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond13.preheader:                             ; preds = %for.body8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool14.not83 = icmp eq i32 %call9, 0
  br i1 %tobool14.not83, label %for.body18, label %for.cond13.preheader.cleanup_crit_edge

for.cond13.preheader.cleanup_crit_edge:           ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body8:                                        ; preds = %for.body8.for.body8_crit_edge, %for.cond3.preheader.for.body8_crit_edge
  %i.182 = phi i32 [ %inc11, %for.body8.for.body8_crit_edge ], [ 65520, %for.cond3.preheader.for.body8_crit_edge ]
  %call9 = tail call fastcc i32 @clear_sge_ctxt(ptr noundef %adap, i32 noundef %i.182, i32 noundef 131072)
  %inc11 = add nuw nsw i32 %i.182, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool4.not = icmp eq i32 %call9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %i.182)
  %cmp6 = icmp ult i32 %i.182, 65535
  %or.cond71 = and i1 %tobool4.not, %cmp6
  br i1 %or.cond71, label %for.body8.for.body8_crit_edge, label %for.cond13.preheader

for.body8.for.body8_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body8

for.body18:                                       ; preds = %for.cond13.preheader
  %call19 = tail call fastcc i32 @clear_sge_ctxt(ptr noundef %adap, i32 noundef 0, i32 noundef 262144)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool14.not = icmp eq i32 %call19, 0
  br i1 %tobool14.not, label %for.body18.1, label %for.body18.for.end22_crit_edge

for.body18.for.end22_crit_edge:                   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end22

for.body18.1:                                     ; preds = %for.body18
  %call19.1 = tail call fastcc i32 @clear_sge_ctxt(ptr noundef %adap, i32 noundef 1, i32 noundef 262144)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.1)
  %tobool14.not.1 = icmp eq i32 %call19.1, 0
  br i1 %tobool14.not.1, label %for.body18.2, label %for.body18.1.for.end22_crit_edge

for.body18.1.for.end22_crit_edge:                 ; preds = %for.body18.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end22

for.body18.2:                                     ; preds = %for.body18.1
  %call19.2 = tail call fastcc i32 @clear_sge_ctxt(ptr noundef %adap, i32 noundef 2, i32 noundef 262144)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.2)
  %tobool14.not.2 = icmp eq i32 %call19.2, 0
  br i1 %tobool14.not.2, label %for.body18.3, label %for.body18.2.for.end22_crit_edge

for.body18.2.for.end22_crit_edge:                 ; preds = %for.body18.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end22

for.body18.3:                                     ; preds = %for.body18.2
  %call19.3 = tail call fastcc i32 @clear_sge_ctxt(ptr noundef %adap, i32 noundef 3, i32 noundef 262144)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.3)
  %tobool14.not.3 = icmp eq i32 %call19.3, 0
  br i1 %tobool14.not.3, label %for.body18.4, label %for.body18.3.for.end22_crit_edge

for.body18.3.for.end22_crit_edge:                 ; preds = %for.body18.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end22

for.body18.4:                                     ; preds = %for.body18.3
  %call19.4 = tail call fastcc i32 @clear_sge_ctxt(ptr noundef %adap, i32 noundef 4, i32 noundef 262144)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.4)
  %tobool14.not.4 = icmp eq i32 %call19.4, 0
  br i1 %tobool14.not.4, label %for.body18.5, label %for.body18.4.for.end22_crit_edge

for.body18.4.for.end22_crit_edge:                 ; preds = %for.body18.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end22

for.body18.5:                                     ; preds = %for.body18.4
  %call19.5 = tail call fastcc i32 @clear_sge_ctxt(ptr noundef %adap, i32 noundef 5, i32 noundef 262144)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.5)
  %tobool14.not.5 = icmp eq i32 %call19.5, 0
  br i1 %tobool14.not.5, label %for.body18.6, label %for.body18.5.for.end22_crit_edge

for.body18.5.for.end22_crit_edge:                 ; preds = %for.body18.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end22

for.body18.6:                                     ; preds = %for.body18.5
  %call19.6 = tail call fastcc i32 @clear_sge_ctxt(ptr noundef %adap, i32 noundef 6, i32 noundef 262144)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.6)
  %tobool14.not.6 = icmp eq i32 %call19.6, 0
  br i1 %tobool14.not.6, label %for.body18.7, label %for.body18.6.for.end22_crit_edge

for.body18.6.for.end22_crit_edge:                 ; preds = %for.body18.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end22

for.body18.7:                                     ; preds = %for.body18.6
  call void @__sanitizer_cov_trace_pc() #9
  %call19.7 = tail call fastcc i32 @clear_sge_ctxt(ptr noundef %adap, i32 noundef 7, i32 noundef 262144)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.7)
  %tobool14.not.7 = icmp eq i32 %call19.7, 0
  br label %for.end22

for.end22:                                        ; preds = %for.body18.7, %for.body18.6.for.end22_crit_edge, %for.body18.5.for.end22_crit_edge, %for.body18.4.for.end22_crit_edge, %for.body18.3.for.end22_crit_edge, %for.body18.2.for.end22_crit_edge, %for.body18.1.for.end22_crit_edge, %for.body18.for.end22_crit_edge
  %call19.lcssa = phi i32 [ %call19, %for.body18.for.end22_crit_edge ], [ %call19.1, %for.body18.1.for.end22_crit_edge ], [ %call19.2, %for.body18.2.for.end22_crit_edge ], [ %call19.3, %for.body18.3.for.end22_crit_edge ], [ %call19.4, %for.body18.4.for.end22_crit_edge ], [ %call19.5, %for.body18.5.for.end22_crit_edge ], [ %call19.6, %for.body18.6.for.end22_crit_edge ], [ %call19.7, %for.body18.7 ]
  %tobool14.not.lcssa = phi i1 [ %tobool14.not, %for.body18.for.end22_crit_edge ], [ %tobool14.not.1, %for.body18.1.for.end22_crit_edge ], [ %tobool14.not.2, %for.body18.2.for.end22_crit_edge ], [ %tobool14.not.3, %for.body18.3.for.end22_crit_edge ], [ %tobool14.not.4, %for.body18.4.for.end22_crit_edge ], [ %tobool14.not.5, %for.body18.5.for.end22_crit_edge ], [ %tobool14.not.6, %for.body18.6.for.end22_crit_edge ], [ %tobool14.not.7, %for.body18.7 ]
  br i1 %tobool14.not.lcssa, label %if.end25, label %for.end22.cleanup_crit_edge

for.end22.cleanup_crit_edge:                      ; preds = %for.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %for.end22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i74 = getelementptr i8, ptr %5, i32 712
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74, i32 0) #7, !srcloc !340
  br label %for.body31

for.body31:                                       ; preds = %for.inc38.for.body31_crit_edge, %if.end25
  %addr.087 = phi i32 [ 0, %if.end25 ], [ %inc39, %for.inc38.for.body31_crit_edge ]
  %shl32 = shl i32 %addr.087, 16
  %or33 = or i32 %shl32, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %or33) #7
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  %add.ptr.i76 = getelementptr i8, ptr %8, i32 704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76, i32 %6) #7, !srcloc !340
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %10, i32 704
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %12 = and i32 %11, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp31.i.i = icmp eq i32 %12, 0
  br i1 %cmp31.i.i, label %for.body31.for.inc38_crit_edge, label %if.end4.i.i.preheader

for.body31.for.inc38_crit_edge:                   ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc38

if.end4.i.i.preheader:                            ; preds = %for.body31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #7
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 704
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %17 = and i32 %16, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i.i = icmp eq i32 %17, 0
  br i1 %cmp.i.i, label %if.end4.i.i.preheader.for.inc38_crit_edge, label %if.end4.i.i.preheader.cleanup_crit_edge

if.end4.i.i.preheader.cleanup_crit_edge:          ; preds = %if.end4.i.i.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4.i.i.preheader.for.inc38_crit_edge:        ; preds = %if.end4.i.i.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc38

for.inc38:                                        ; preds = %if.end4.i.i.preheader.for.inc38_crit_edge, %for.body31.for.inc38_crit_edge
  %inc39 = add nuw nsw i32 %addr.087, 1
  %exitcond.not = icmp eq i32 %inc39, 512
  br i1 %exitcond.not, label %for.inc38.for.body31.1_crit_edge, label %for.inc38.for.body31_crit_edge

for.inc38.for.body31_crit_edge:                   ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body31

for.inc38.for.body31.1_crit_edge:                 ; preds = %for.inc38
  br label %for.body31.1

for.body31.1:                                     ; preds = %for.inc38.1.for.body31.1_crit_edge, %for.inc38.for.body31.1_crit_edge
  %addr.087.1 = phi i32 [ %inc39.1, %for.inc38.1.for.body31.1_crit_edge ], [ 0, %for.inc38.for.body31.1_crit_edge ]
  %shl32.1 = shl i32 %addr.087.1, 16
  %or33.1 = or i32 %shl32.1, 13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %18 = tail call i32 @llvm.bswap.i32(i32 %or33.1) #7
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 4
  %add.ptr.i76.1 = getelementptr i8, ptr %20, i32 704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76.1, i32 %18) #7, !srcloc !340
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  %add.ptr.i27.i.i.1 = getelementptr i8, ptr %22, i32 704
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i.i.1) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %24 = and i32 %23, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp31.i.i.1 = icmp eq i32 %24, 0
  br i1 %cmp31.i.i.1, label %for.body31.1.for.inc38.1_crit_edge, label %if.end4.i.i.preheader.1

for.body31.1.for.inc38.1_crit_edge:               ; preds = %for.body31.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc38.1

if.end4.i.i.preheader.1:                          ; preds = %for.body31.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748) #7
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i.i.1 = getelementptr i8, ptr %27, i32 704
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.1) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %29 = and i32 %28, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i.i.1 = icmp eq i32 %29, 0
  br i1 %cmp.i.i.1, label %if.end4.i.i.preheader.1.for.inc38.1_crit_edge, label %if.end4.i.i.preheader.1.cleanup_crit_edge

if.end4.i.i.preheader.1.cleanup_crit_edge:        ; preds = %if.end4.i.i.preheader.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4.i.i.preheader.1.for.inc38.1_crit_edge:    ; preds = %if.end4.i.i.preheader.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc38.1

for.inc38.1:                                      ; preds = %if.end4.i.i.preheader.1.for.inc38.1_crit_edge, %for.body31.1.for.inc38.1_crit_edge
  %inc39.1 = add nuw nsw i32 %addr.087.1, 1
  %exitcond.not.1 = icmp eq i32 %inc39.1, 512
  br i1 %exitcond.not.1, label %for.inc38.1.for.body31.2_crit_edge, label %for.inc38.1.for.body31.1_crit_edge

for.inc38.1.for.body31.1_crit_edge:               ; preds = %for.inc38.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body31.1

for.inc38.1.for.body31.2_crit_edge:               ; preds = %for.inc38.1
  br label %for.body31.2

for.body31.2:                                     ; preds = %for.inc38.2.for.body31.2_crit_edge, %for.inc38.1.for.body31.2_crit_edge
  %addr.087.2 = phi i32 [ %inc39.2, %for.inc38.2.for.body31.2_crit_edge ], [ 0, %for.inc38.1.for.body31.2_crit_edge ]
  %shl32.2 = shl i32 %addr.087.2, 16
  %or33.2 = or i32 %shl32.2, 21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %30 = tail call i32 @llvm.bswap.i32(i32 %or33.2) #7
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  %add.ptr.i76.2 = getelementptr i8, ptr %32, i32 704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76.2, i32 %30) #7, !srcloc !340
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 4
  %add.ptr.i27.i.i.2 = getelementptr i8, ptr %34, i32 704
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i.i.2) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %36 = and i32 %35, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp31.i.i.2 = icmp eq i32 %36, 0
  br i1 %cmp31.i.i.2, label %for.body31.2.for.inc38.2_crit_edge, label %if.end4.i.i.preheader.2

for.body31.2.for.inc38.2_crit_edge:               ; preds = %for.body31.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc38.2

if.end4.i.i.preheader.2:                          ; preds = %for.body31.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748) #7
  %38 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i.i.2 = getelementptr i8, ptr %39, i32 704
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.2) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %41 = and i32 %40, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.i.i.2 = icmp eq i32 %41, 0
  br i1 %cmp.i.i.2, label %if.end4.i.i.preheader.2.for.inc38.2_crit_edge, label %if.end4.i.i.preheader.2.cleanup_crit_edge

if.end4.i.i.preheader.2.cleanup_crit_edge:        ; preds = %if.end4.i.i.preheader.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4.i.i.preheader.2.for.inc38.2_crit_edge:    ; preds = %if.end4.i.i.preheader.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc38.2

for.inc38.2:                                      ; preds = %if.end4.i.i.preheader.2.for.inc38.2_crit_edge, %for.body31.2.for.inc38.2_crit_edge
  %inc39.2 = add nuw nsw i32 %addr.087.2, 1
  %exitcond.not.2 = icmp eq i32 %inc39.2, 512
  br i1 %exitcond.not.2, label %for.inc38.2.for.body31.3_crit_edge, label %for.inc38.2.for.body31.2_crit_edge

for.inc38.2.for.body31.2_crit_edge:               ; preds = %for.inc38.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body31.2

for.inc38.2.for.body31.3_crit_edge:               ; preds = %for.inc38.2
  br label %for.body31.3

for.body31.3:                                     ; preds = %for.inc38.3.for.body31.3_crit_edge, %for.inc38.2.for.body31.3_crit_edge
  %addr.087.3 = phi i32 [ %inc39.3, %for.inc38.3.for.body31.3_crit_edge ], [ 0, %for.inc38.2.for.body31.3_crit_edge ]
  %shl32.3 = shl i32 %addr.087.3, 16
  %or33.3 = or i32 %shl32.3, 29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %42 = tail call i32 @llvm.bswap.i32(i32 %or33.3) #7
  %43 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i, align 4
  %add.ptr.i76.3 = getelementptr i8, ptr %44, i32 704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76.3, i32 %42) #7, !srcloc !340
  %45 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i, align 4
  %add.ptr.i27.i.i.3 = getelementptr i8, ptr %46, i32 704
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i.i.3) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %48 = and i32 %47, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp31.i.i.3 = icmp eq i32 %48, 0
  br i1 %cmp31.i.i.3, label %for.body31.3.for.inc38.3_crit_edge, label %if.end4.i.i.preheader.3

for.body31.3.for.inc38.3_crit_edge:               ; preds = %for.body31.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc38.3

if.end4.i.i.preheader.3:                          ; preds = %for.body31.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748) #7
  %50 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i.i.3 = getelementptr i8, ptr %51, i32 704
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.3) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %53 = and i32 %52, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp.i.i.3 = icmp eq i32 %53, 0
  br i1 %cmp.i.i.3, label %if.end4.i.i.preheader.3.for.inc38.3_crit_edge, label %if.end4.i.i.preheader.3.cleanup_crit_edge

if.end4.i.i.preheader.3.cleanup_crit_edge:        ; preds = %if.end4.i.i.preheader.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4.i.i.preheader.3.for.inc38.3_crit_edge:    ; preds = %if.end4.i.i.preheader.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc38.3

for.inc38.3:                                      ; preds = %if.end4.i.i.preheader.3.for.inc38.3_crit_edge, %for.body31.3.for.inc38.3_crit_edge
  %inc39.3 = add nuw nsw i32 %addr.087.3, 1
  %exitcond.not.3 = icmp eq i32 %inc39.3, 512
  br i1 %exitcond.not.3, label %for.inc38.3.cleanup_crit_edge, label %for.inc38.3.for.body31.3_crit_edge

for.inc38.3.for.body31.3_crit_edge:               ; preds = %for.inc38.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body31.3

for.inc38.3.cleanup_crit_edge:                    ; preds = %for.inc38.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc38.3.cleanup_crit_edge, %if.end4.i.i.preheader.3.cleanup_crit_edge, %if.end4.i.i.preheader.2.cleanup_crit_edge, %if.end4.i.i.preheader.1.cleanup_crit_edge, %if.end4.i.i.preheader.cleanup_crit_edge, %for.end22.cleanup_crit_edge, %for.cond13.preheader.cleanup_crit_edge, %for.cond3.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ %call19.lcssa, %for.end22.cleanup_crit_edge ], [ %call9, %for.cond13.preheader.cleanup_crit_edge ], [ %call2, %for.cond3.preheader.cleanup_crit_edge ], [ 0, %for.inc38.3.cleanup_crit_edge ], [ -11, %if.end4.i.i.preheader.3.cleanup_crit_edge ], [ -11, %if.end4.i.i.preheader.2.cleanup_crit_edge ], [ -11, %if.end4.i.i.preheader.1.cleanup_crit_edge ], [ -11, %if.end4.i.i.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t3_led_ready(ptr nocapture noundef readonly %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 208
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %3 = or i32 %2, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %5, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %3) #7, !srcloc !340
  %6 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %7, i32 208
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_replay_prep_adapter(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 5
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  tail call fastcc void @early_hw_init(ptr noundef %adapter, ptr noundef %1)
  %call = tail call fastcc i32 @init_parity(ptr noundef %adapter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup20_crit_edge

entry.cleanup20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup20

for.cond.preheader:                               ; preds = %entry
  %nports = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 9
  %2 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp42.not = icmp eq i32 %3, 0
  br i1 %cmp42.not, label %for.cond.preheader.cleanup20_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup20_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup20

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %j.044 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ -1, %for.cond.preheader.for.body_crit_edge ]
  %i.043 = phi i32 [ %inc19, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 21, i32 %i.043
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %for.body
  %j.1 = phi i32 [ %j.044, %for.body ], [ %inc, %while.cond.while.cond_crit_edge ]
  %inc = add i32 %j.1, 1
  %arrayidx = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 10, i32 3, i32 7, i32 %inc
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %idxprom = zext i8 %7 to i32
  %arrayidx9 = getelementptr [11 x %struct.port_type_info], ptr @port_types, i32 0, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx9, align 4
  %phy = getelementptr i8, ptr %5, i32 2316
  %mdio = getelementptr i8, ptr %5, i32 2340
  %10 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mdio, align 4
  %call11 = tail call i32 %9(ptr noundef %phy, ptr noundef %adapter, i32 noundef %11, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %for.inc, label %while.end.cleanup20_crit_edge

while.end.cleanup20_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup20

for.inc:                                          ; preds = %while.end
  %ops = getelementptr i8, ptr %5, i32 2336
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %power_down = getelementptr inbounds %struct.cphy_ops, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %power_down to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %power_down, align 4
  %call17 = tail call i32 %15(ptr noundef %phy, i32 noundef 1) #7
  %inc19 = add nuw i32 %i.043, 1
  %16 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nports, align 4
  %cmp = icmp ult i32 %inc19, %17
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup20_crit_edge

for.inc.cleanup20_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup20

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup20:                                        ; preds = %for.inc.cleanup20_crit_edge, %while.end.cleanup20_crit_edge, %for.cond.preheader.cleanup20_crit_edge, %entry.cleanup20_crit_edge
  %retval.2 = phi i32 [ %call, %entry.cleanup20_crit_edge ], [ 0, %for.cond.preheader.cleanup20_crit_edge ], [ 0, %for.inc.cleanup20_crit_edge ], [ %call11, %while.end.cleanup20_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @t3_mi1_read(ptr nocapture noundef readonly %dev, i32 noundef %phy_addr, i32 noundef %mmd_addr, i16 noundef zeroext %reg_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %conv = zext i16 %reg_addr to i32
  %shl2 = shl i32 %phy_addr, 5
  %or = or i32 %shl2, %conv
  %mdio_lock = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock, i32 noundef 0) #7
  %regs.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 1712
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %5 = and i32 %4, -402653185
  %6 = or i32 %5, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %8, i32 1712
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %6) #7, !srcloc !340
  %9 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %10, i32 1712
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %13 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %14, i32 1716
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %12) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %15 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %16, i32 1724
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 33554432) #7, !srcloc !340
  %17 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %18, i32 1724
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %20 = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp31.i.i = icmp eq i32 %20, 0
  br i1 %cmp31.i.i, label %entry.if.then_crit_edge, label %entry.if.end4.i.i_crit_edge

entry.if.end4.i.i_crit_edge:                      ; preds = %entry
  br label %if.end4.i.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end4.i.i:                                      ; preds = %if.end7.i.i.if.end4.i.i_crit_edge, %entry.if.end4.i.i_crit_edge
  %attempts.addr.032.i.i = phi i32 [ %dec.i.i, %if.end7.i.i.if.end4.i.i_crit_edge ], [ 20, %entry.if.end4.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %attempts.addr.032.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp5.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp5.i.i, label %if.end4.i.i.if.end_crit_edge, label %if.end7.i.i

if.end4.i.i.if.end_crit_edge:                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end7.i.i:                                      ; preds = %if.end4.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 2147480) #7
  %22 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %23, i32 1724
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %25 = and i32 %24, 128
  %cmp.i.i = icmp eq i32 %25, 0
  br i1 %cmp.i.i, label %if.end7.i.i.if.then_crit_edge, label %if.end7.i.i.if.end4.i.i_crit_edge

if.end7.i.i.if.end4.i.i_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i

if.end7.i.i.if.then_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %if.end7.i.i.if.then_crit_edge, %entry.if.then_crit_edge
  %26 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %27, i32 1720
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17) #7, !srcloc !337
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  br label %if.end

if.end:                                           ; preds = %if.then, %if.end4.i.i.if.end_crit_edge
  %ret.0 = phi i32 [ %29, %if.then ], [ -11, %if.end4.i.i.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @t3_mi1_write(ptr nocapture noundef readonly %dev, i32 noundef %phy_addr, i32 noundef %mmd_addr, i16 noundef zeroext %reg_addr, i16 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %conv = zext i16 %reg_addr to i32
  %shl2 = shl i32 %phy_addr, 5
  %or = or i32 %shl2, %conv
  %mdio_lock = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock, i32 noundef 0) #7
  %regs.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 1712
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %5 = and i32 %4, -402653185
  %6 = or i32 %5, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %8, i32 1712
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %6) #7, !srcloc !340
  %9 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %10, i32 1712
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %13 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %14, i32 1716
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %12) #7, !srcloc !340
  %conv3 = zext i16 %val to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %15 = tail call i32 @llvm.bswap.i32(i32 %conv3) #7
  %16 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %17, i32 1720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %15) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %19, i32 1724
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 16777216) #7, !srcloc !340
  %20 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %21, i32 1724
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %23 = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp31.i.i = icmp eq i32 %23, 0
  br i1 %cmp31.i.i, label %entry.t3_wait_op_done.exit_crit_edge, label %entry.if.end4.i.i_crit_edge

entry.if.end4.i.i_crit_edge:                      ; preds = %entry
  br label %if.end4.i.i

entry.t3_wait_op_done.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %t3_wait_op_done.exit

if.end4.i.i:                                      ; preds = %if.end7.i.i.if.end4.i.i_crit_edge, %entry.if.end4.i.i_crit_edge
  %attempts.addr.032.i.i = phi i32 [ %dec.i.i, %if.end7.i.i.if.end4.i.i_crit_edge ], [ 20, %entry.if.end4.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %attempts.addr.032.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp5.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp5.i.i, label %if.end4.i.i.t3_wait_op_done.exit_crit_edge, label %if.end7.i.i

if.end4.i.i.t3_wait_op_done.exit_crit_edge:       ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %t3_wait_op_done.exit

if.end7.i.i:                                      ; preds = %if.end4.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 2147480) #7
  %25 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %26, i32 1724
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %28 = and i32 %27, 128
  %cmp.i.i = icmp eq i32 %28, 0
  br i1 %cmp.i.i, label %if.end7.i.i.t3_wait_op_done.exit_crit_edge, label %if.end7.i.i.if.end4.i.i_crit_edge

if.end7.i.i.if.end4.i.i_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i

if.end7.i.i.t3_wait_op_done.exit_crit_edge:       ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %t3_wait_op_done.exit

t3_wait_op_done.exit:                             ; preds = %if.end7.i.i.t3_wait_op_done.exit_crit_edge, %if.end4.i.i.t3_wait_op_done.exit_crit_edge, %entry.t3_wait_op_done.exit_crit_edge
  %retval.1.ph.i.i = phi i32 [ 0, %entry.t3_wait_op_done.exit_crit_edge ], [ -11, %if.end4.i.i.t3_wait_op_done.exit_crit_edge ], [ 0, %if.end7.i.i.t3_wait_op_done.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock) #7
  ret i32 %retval.1.ph.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mi1_ext_read(ptr nocapture noundef readonly %dev, i32 noundef %phy_addr, i32 noundef %mmd_addr, i16 noundef zeroext %reg_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %mdio_lock = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock, i32 noundef 0) #7
  %conv = zext i16 %reg_addr to i32
  %call2 = tail call fastcc i32 @mi1_wr_addr(ptr noundef %1, i32 noundef %phy_addr, i32 noundef %mmd_addr, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %regs.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %3, i32 1724
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 50331648) #7, !srcloc !340
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %5, i32 1724
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %7 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp31.i.i = icmp eq i32 %7, 0
  br i1 %cmp31.i.i, label %if.then.if.then5_crit_edge, label %if.then.if.end4.i.i_crit_edge

if.then.if.end4.i.i_crit_edge:                    ; preds = %if.then
  br label %if.end4.i.i

if.then.if.then5_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

if.end4.i.i:                                      ; preds = %if.end7.i.i.if.end4.i.i_crit_edge, %if.then.if.end4.i.i_crit_edge
  %attempts.addr.032.i.i = phi i32 [ %dec.i.i, %if.end7.i.i.if.end4.i.i_crit_edge ], [ 20, %if.then.if.end4.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %attempts.addr.032.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp5.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp5.i.i, label %if.end4.i.i.if.end7_crit_edge, label %if.end7.i.i

if.end4.i.i.if.end7_crit_edge:                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end7.i.i:                                      ; preds = %if.end4.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 2147480) #7
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 1724
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %12 = and i32 %11, 128
  %cmp.i.i = icmp eq i32 %12, 0
  br i1 %cmp.i.i, label %if.end7.i.i.if.then5_crit_edge, label %if.end7.i.i.if.end4.i.i_crit_edge

if.end7.i.i.if.end4.i.i_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i

if.end7.i.i.if.then5_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

if.then5:                                         ; preds = %if.end7.i.i.if.then5_crit_edge, %if.then.if.then5_crit_edge
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %14, i32 1720
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18) #7, !srcloc !337
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end4.i.i.if.end7_crit_edge, %entry.if.end7_crit_edge
  %ret.0 = phi i32 [ %call2, %entry.if.end7_crit_edge ], [ %16, %if.then5 ], [ -11, %if.end4.i.i.if.end7_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mi1_ext_write(ptr nocapture noundef readonly %dev, i32 noundef %phy_addr, i32 noundef %mmd_addr, i16 noundef zeroext %reg_addr, i16 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %mdio_lock = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock, i32 noundef 0) #7
  %conv = zext i16 %reg_addr to i32
  %call2 = tail call fastcc i32 @mi1_wr_addr(ptr noundef %1, i32 noundef %phy_addr, i32 noundef %mmd_addr, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %conv3 = zext i16 %val to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv3) #7
  %regs.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %4, i32 1720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %2) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %6, i32 1724
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 16777216) #7, !srcloc !340
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %8, i32 1724
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %10 = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp31.i.i = icmp eq i32 %10, 0
  br i1 %cmp31.i.i, label %if.then.if.end_crit_edge, label %if.then.if.end4.i.i_crit_edge

if.then.if.end4.i.i_crit_edge:                    ; preds = %if.then
  br label %if.end4.i.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end4.i.i:                                      ; preds = %if.end7.i.i.if.end4.i.i_crit_edge, %if.then.if.end4.i.i_crit_edge
  %attempts.addr.032.i.i = phi i32 [ %dec.i.i, %if.end7.i.i.if.end4.i.i_crit_edge ], [ 20, %if.then.if.end4.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %attempts.addr.032.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp5.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp5.i.i, label %if.end4.i.i.if.end_crit_edge, label %if.end7.i.i

if.end4.i.i.if.end_crit_edge:                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end7.i.i:                                      ; preds = %if.end4.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 2147480) #7
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 1724
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %15 = and i32 %14, 128
  %cmp.i.i = icmp eq i32 %15, 0
  br i1 %cmp.i.i, label %if.end7.i.i.if.end_crit_edge, label %if.end7.i.i.if.end4.i.i_crit_edge

if.end7.i.i.if.end4.i.i_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i

if.end7.i.i.if.end_crit_edge:                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %if.end7.i.i.if.end_crit_edge, %if.end4.i.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call2, %entry.if.end_crit_edge ], [ 0, %if.then.if.end_crit_edge ], [ -11, %if.end4.i.i.if.end_crit_edge ], [ 0, %if.end7.i.i.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mi1_wr_addr(ptr nocapture noundef readonly %adapter, i32 noundef %phy_addr, i32 noundef %mmd_addr, i32 noundef %reg_addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shl1 = shl i32 %phy_addr, 5
  %or = or i32 %shl1, %mmd_addr
  %regs.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 1712
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %3 = and i32 %2, -402653185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %5, i32 1712
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %3) #7, !srcloc !340
  %6 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %7, i32 1712
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %10 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 1716
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %reg_addr) #7
  %13 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %14, i32 1720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 %12) #7, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %15 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %16, i32 1724
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 0) #7, !srcloc !340
  %17 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %18, i32 1724
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %20 = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp31.i.i = icmp eq i32 %20, 0
  br i1 %cmp31.i.i, label %entry.t3_wait_op_done.exit_crit_edge, label %entry.if.end4.i.i_crit_edge

entry.if.end4.i.i_crit_edge:                      ; preds = %entry
  br label %if.end4.i.i

entry.t3_wait_op_done.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %t3_wait_op_done.exit

if.end4.i.i:                                      ; preds = %if.end7.i.i.if.end4.i.i_crit_edge, %entry.if.end4.i.i_crit_edge
  %attempts.addr.032.i.i = phi i32 [ %dec.i.i, %if.end7.i.i.if.end4.i.i_crit_edge ], [ 20, %entry.if.end4.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %attempts.addr.032.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp5.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp5.i.i, label %if.end4.i.i.t3_wait_op_done.exit_crit_edge, label %if.end7.i.i

if.end4.i.i.t3_wait_op_done.exit_crit_edge:       ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %t3_wait_op_done.exit

if.end7.i.i:                                      ; preds = %if.end4.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 2147480) #7
  %22 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %23, i32 1724
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %25 = and i32 %24, 128
  %cmp.i.i = icmp eq i32 %25, 0
  br i1 %cmp.i.i, label %if.end7.i.i.t3_wait_op_done.exit_crit_edge, label %if.end7.i.i.if.end4.i.i_crit_edge

if.end7.i.i.if.end4.i.i_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i

if.end7.i.i.t3_wait_op_done.exit_crit_edge:       ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %t3_wait_op_done.exit

t3_wait_op_done.exit:                             ; preds = %if.end7.i.i.t3_wait_op_done.exit_crit_edge, %if.end4.i.i.t3_wait_op_done.exit_crit_edge, %entry.t3_wait_op_done.exit_crit_edge
  %retval.1.ph.i.i = phi i32 [ 0, %entry.t3_wait_op_done.exit_crit_edge ], [ -11, %if.end4.i.i.t3_wait_op_done.exit_crit_edge ], [ 0, %if.end7.i.i.t3_wait_op_done.exit_crit_edge ]
  ret i32 %retval.1.ph.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sf1_write(ptr nocapture noundef readonly %adapter, i32 noundef %byte_cnt, i32 noundef %cont, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %byte_cnt)
  %tobool.not = icmp eq i32 %byte_cnt, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1756
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %.mask = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool1.not = icmp eq i32 %.mask, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end3:                                          ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %3 = tail call i32 @llvm.bswap.i32(i32 %val) #7
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %5, i32 1752
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %3) #7, !srcloc !340
  %shl = shl i32 %cont, 3
  %sub = shl i32 %byte_cnt, 1
  %shl4 = add i32 %sub, -2
  %or = or i32 %shl4, %shl
  %or5 = or i32 %or, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %or5) #7
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %8, i32 1756
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %6) #7, !srcloc !340
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %10, i32 1756
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %12 = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp31.i.i = icmp eq i32 %12, 0
  br i1 %cmp31.i.i, label %if.end3.return_crit_edge, label %if.end4.i.i.preheader

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end4.i.i.preheader:                            ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 2147480) #7
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 1756
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %17 = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i.i = icmp eq i32 %17, 0
  br i1 %cmp.i.i, label %if.end4.i.i.preheader.return_crit_edge, label %if.end4.i.i.1

if.end4.i.i.preheader.return_crit_edge:           ; preds = %if.end4.i.i.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end4.i.i.1:                                    ; preds = %if.end4.i.i.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 2147480) #7
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i.i.1 = getelementptr i8, ptr %20, i32 1756
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.1) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %22 = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i.i.1 = icmp eq i32 %22, 0
  br i1 %cmp.i.i.1, label %if.end4.i.i.1.return_crit_edge, label %if.end4.i.i.2

if.end4.i.i.1.return_crit_edge:                   ; preds = %if.end4.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end4.i.i.2:                                    ; preds = %if.end4.i.i.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 2147480) #7
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i.i.2 = getelementptr i8, ptr %25, i32 1756
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.2) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %27 = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i.i.2 = icmp eq i32 %27, 0
  br i1 %cmp.i.i.2, label %if.end4.i.i.2.return_crit_edge, label %if.end4.i.i.3

if.end4.i.i.2.return_crit_edge:                   ; preds = %if.end4.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end4.i.i.3:                                    ; preds = %if.end4.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 2147480) #7
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i.i.3 = getelementptr i8, ptr %30, i32 1756
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.3) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %32 = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i.i.3 = icmp eq i32 %32, 0
  %spec.select = select i1 %cmp.i.i.3, i32 0, i32 -11
  br label %return

return:                                           ; preds = %if.end4.i.i.3, %if.end4.i.i.2.return_crit_edge, %if.end4.i.i.1.return_crit_edge, %if.end4.i.i.preheader.return_crit_edge, %if.end3.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ -16, %if.end.return_crit_edge ], [ 0, %if.end3.return_crit_edge ], [ 0, %if.end4.i.i.preheader.return_crit_edge ], [ 0, %if.end4.i.i.1.return_crit_edge ], [ 0, %if.end4.i.i.2.return_crit_edge ], [ %spec.select, %if.end4.i.i.3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sf1_read(ptr nocapture noundef readonly %adapter, i32 noundef %byte_cnt, i32 noundef %cont, ptr nocapture noundef writeonly %valp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1756
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %.mask = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool1.not = icmp eq i32 %.mask, 0
  br i1 %tobool1.not, label %if.end3, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %entry
  %shl = shl i32 %cont, 3
  %sub = shl i32 %byte_cnt, 1
  %shl4 = add i32 %sub, -2
  %or = or i32 %shl, %shl4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %3 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %5, i32 1756
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %3) #7, !srcloc !340
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %7, i32 1756
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %9 = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp31.i.i = icmp eq i32 %9, 0
  br i1 %cmp31.i.i, label %if.end3.if.then7_crit_edge, label %if.end4.i.i.preheader

if.end3.if.then7_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.end4.i.i.preheader:                            ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #7
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 1756
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %14 = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.i = icmp eq i32 %14, 0
  br i1 %cmp.i.i, label %if.end4.i.i.preheader.if.then7_crit_edge, label %if.end4.i.i.1

if.end4.i.i.preheader.if.then7_crit_edge:         ; preds = %if.end4.i.i.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.end4.i.i.1:                                    ; preds = %if.end4.i.i.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 2147480) #7
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i.i.1 = getelementptr i8, ptr %17, i32 1756
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.1) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %19 = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i.i.1 = icmp eq i32 %19, 0
  br i1 %cmp.i.i.1, label %if.end4.i.i.1.if.then7_crit_edge, label %if.end4.i.i.2

if.end4.i.i.1.if.then7_crit_edge:                 ; preds = %if.end4.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.end4.i.i.2:                                    ; preds = %if.end4.i.i.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 2147480) #7
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i.i.2 = getelementptr i8, ptr %22, i32 1756
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.2) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %24 = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i.i.2 = icmp eq i32 %24, 0
  br i1 %cmp.i.i.2, label %if.end4.i.i.2.if.then7_crit_edge, label %if.end4.i.i.3

if.end4.i.i.2.if.then7_crit_edge:                 ; preds = %if.end4.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.end4.i.i.3:                                    ; preds = %if.end4.i.i.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 2147480) #7
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i.i.3 = getelementptr i8, ptr %27, i32 1756
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.3) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %29 = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i.i.3 = icmp eq i32 %29, 0
  br i1 %cmp.i.i.3, label %if.end4.i.i.3.if.then7_crit_edge, label %if.end4.i.i.3.cleanup_crit_edge

if.end4.i.i.3.cleanup_crit_edge:                  ; preds = %if.end4.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4.i.i.3.if.then7_crit_edge:                 ; preds = %if.end4.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.then7:                                         ; preds = %if.end4.i.i.3.if.then7_crit_edge, %if.end4.i.i.2.if.then7_crit_edge, %if.end4.i.i.1.if.then7_crit_edge, %if.end4.i.i.preheader.if.then7_crit_edge, %if.end3.if.then7_crit_edge
  %30 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %31, i32 1752
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #7, !srcloc !337
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %34 = ptrtoint ptr %valp to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %valp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end4.i.i.3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ 0, %if.then7 ], [ -11, %if.end4.i.i.3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @flash_wait_op(ptr nocapture noundef readonly %adapter, i32 noundef %delay) unnamed_addr #0 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #7
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !341
  %call2 = tail call fastcc i32 @sf1_write(ptr noundef %adapter, i32 noundef 1, i32 noundef 1, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not3 = icmp eq i32 %call2, 0
  br i1 %cmp.not3, label %lor.lhs.false.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.preheader:                          ; preds = %entry
  %call1 = call fastcc i32 @sf1_read(ptr noundef %adapter, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.preheader.cleanup_crit_edge

lor.lhs.false.preheader.cleanup_crit_edge:        ; preds = %lor.lhs.false.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.preheader
  %1 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %status, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @msleep(i32 noundef %delay) #7
  %call = tail call fastcc i32 @sf1_write(ptr noundef %adapter, i32 noundef 1, i32 noundef 1, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %lor.lhs.false.1, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.1:                                  ; preds = %if.end4
  %call1.1 = call fastcc i32 @sf1_read(ptr noundef %adapter, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1)
  %cmp2.not.1 = icmp eq i32 %call1.1, 0
  br i1 %cmp2.not.1, label %if.end.1, label %lor.lhs.false.1.cleanup_crit_edge

lor.lhs.false.1.cleanup_crit_edge:                ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.1:                                         ; preds = %lor.lhs.false.1
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status, align 4
  %and.1 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %if.end.1.cleanup_crit_edge, label %if.end4.1

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4.1:                                        ; preds = %if.end.1
  tail call void @msleep(i32 noundef %delay) #7
  %call.1 = tail call fastcc i32 @sf1_write(ptr noundef %adapter, i32 noundef 1, i32 noundef 1, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp.not.1 = icmp eq i32 %call.1, 0
  br i1 %cmp.not.1, label %lor.lhs.false.2, label %if.end4.1.cleanup_crit_edge

if.end4.1.cleanup_crit_edge:                      ; preds = %if.end4.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.2:                                  ; preds = %if.end4.1
  %call1.2 = call fastcc i32 @sf1_read(ptr noundef %adapter, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2)
  %cmp2.not.2 = icmp eq i32 %call1.2, 0
  br i1 %cmp2.not.2, label %if.end.2, label %lor.lhs.false.2.cleanup_crit_edge

lor.lhs.false.2.cleanup_crit_edge:                ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.2:                                         ; preds = %lor.lhs.false.2
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %and.2 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %if.end.2.cleanup_crit_edge, label %if.end4.2

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4.2:                                        ; preds = %if.end.2
  tail call void @msleep(i32 noundef %delay) #7
  %call.2 = tail call fastcc i32 @sf1_write(ptr noundef %adapter, i32 noundef 1, i32 noundef 1, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp.not.2 = icmp eq i32 %call.2, 0
  br i1 %cmp.not.2, label %lor.lhs.false.3, label %if.end4.2.cleanup_crit_edge

if.end4.2.cleanup_crit_edge:                      ; preds = %if.end4.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.3:                                  ; preds = %if.end4.2
  %call1.3 = call fastcc i32 @sf1_read(ptr noundef %adapter, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.3)
  %cmp2.not.3 = icmp eq i32 %call1.3, 0
  br i1 %cmp2.not.3, label %if.end.3, label %lor.lhs.false.3.cleanup_crit_edge

lor.lhs.false.3.cleanup_crit_edge:                ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.3:                                         ; preds = %lor.lhs.false.3
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  %and.3 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %if.end.3.cleanup_crit_edge, label %if.end4.3

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4.3:                                        ; preds = %if.end.3
  tail call void @msleep(i32 noundef %delay) #7
  %call.3 = tail call fastcc i32 @sf1_write(ptr noundef %adapter, i32 noundef 1, i32 noundef 1, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %cmp.not.3 = icmp eq i32 %call.3, 0
  br i1 %cmp.not.3, label %lor.lhs.false.4, label %if.end4.3.cleanup_crit_edge

if.end4.3.cleanup_crit_edge:                      ; preds = %if.end4.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.4:                                  ; preds = %if.end4.3
  %call1.4 = call fastcc i32 @sf1_read(ptr noundef %adapter, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.4)
  %cmp2.not.4 = icmp eq i32 %call1.4, 0
  br i1 %cmp2.not.4, label %if.end.4, label %lor.lhs.false.4.cleanup_crit_edge

lor.lhs.false.4.cleanup_crit_edge:                ; preds = %lor.lhs.false.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.4:                                         ; preds = %lor.lhs.false.4
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status, align 4
  %and.4 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  %spec.select = select i1 %tobool.not.4, i32 0, i32 -11
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %lor.lhs.false.4.cleanup_crit_edge, %if.end4.3.cleanup_crit_edge, %if.end.3.cleanup_crit_edge, %lor.lhs.false.3.cleanup_crit_edge, %if.end4.2.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %lor.lhs.false.2.cleanup_crit_edge, %if.end4.1.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %lor.lhs.false.1.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ %call1, %lor.lhs.false.preheader.cleanup_crit_edge ], [ %call, %if.end4.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call1.1, %lor.lhs.false.1.cleanup_crit_edge ], [ 0, %if.end.1.cleanup_crit_edge ], [ %call.1, %if.end4.1.cleanup_crit_edge ], [ %call1.2, %lor.lhs.false.2.cleanup_crit_edge ], [ 0, %if.end.2.cleanup_crit_edge ], [ %call.2, %if.end4.2.cleanup_crit_edge ], [ %call1.3, %lor.lhs.false.3.cleanup_crit_edge ], [ 0, %if.end.3.cleanup_crit_edge ], [ %call.3, %if.end4.3.cleanup_crit_edge ], [ %call1.4, %lor.lhs.false.4.cleanup_crit_edge ], [ %spec.select, %if.end.4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_mac_disable_exact_filters(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_mac_enable_exact_filters(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @t3_handle_intr_status(ptr nocapture noundef readonly %adapter, i32 noundef %reg, i32 noundef %mask, ptr nocapture noundef readonly %acts, ptr nocapture noundef %stats) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !337
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %and = and i32 %3, %mask
  %4 = ptrtoint ptr %acts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %acts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not58 = icmp eq i32 %5, 0
  br i1 %tobool.not58, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %6 = phi i32 [ %5, %for.body.lr.ph ], [ %24, %for.inc.for.body_crit_edge ]
  %status.063 = phi i32 [ %and, %for.body.lr.ph ], [ %status.2, %for.inc.for.body_crit_edge ]
  %fatal.062 = phi i32 [ 0, %for.body.lr.ph ], [ %fatal.2, %for.inc.for.body_crit_edge ]
  %acts.addr.059 = phi ptr [ %acts, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %and3 = and i32 %6, %status.063
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %fatal5 = getelementptr inbounds %struct.intr_info, ptr %acts.addr.059, i32 0, i32 3
  %7 = ptrtoint ptr %fatal5 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %fatal5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool6.not = icmp eq i16 %8, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add i32 %fatal.062, 1
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %msg = getelementptr inbounds %struct.intr_info, ptr %acts.addr.059, i32 0, i32 1
  %11 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %msg, align 4
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev, ptr noundef nonnull @.str.46, ptr noundef %12, i32 noundef %and3) #10
  %13 = ptrtoint ptr %acts.addr.059 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %acts.addr.059, align 4
  %neg = xor i32 %14, -1
  %and11 = and i32 %status.063, %neg
  br label %if.end24

if.else:                                          ; preds = %if.end
  %msg12 = getelementptr inbounds %struct.intr_info, ptr %acts.addr.059, i32 0, i32 1
  %15 = ptrtoint ptr %msg12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %msg12, align 4
  %tobool13.not = icmp eq ptr %16, null
  br i1 %tobool13.not, label %if.else.if.end24_crit_edge, label %do.end17

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

do.end17:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 8
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev19, ptr noundef nonnull @.str.46, ptr noundef nonnull %16, i32 noundef %and3) #10
  br label %if.end24

if.end24:                                         ; preds = %do.end17, %if.else.if.end24_crit_edge, %if.then7
  %fatal.1 = phi i32 [ %inc, %if.then7 ], [ %fatal.062, %do.end17 ], [ %fatal.062, %if.else.if.end24_crit_edge ]
  %status.1 = phi i32 [ %and11, %if.then7 ], [ %status.063, %do.end17 ], [ %status.063, %if.else.if.end24_crit_edge ]
  %stat_idx = getelementptr inbounds %struct.intr_info, ptr %acts.addr.059, i32 0, i32 2
  %19 = ptrtoint ptr %stat_idx to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %stat_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %20)
  %cmp = icmp sgt i16 %20, -1
  br i1 %cmp, label %if.then26, label %if.end24.for.inc_crit_edge

if.end24.for.inc_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %conv57 = zext i16 %20 to i32
  %arrayidx = getelementptr i32, ptr %stats, i32 %conv57
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %inc28 = add i32 %22, 1
  store i32 %inc28, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then26, %if.end24.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %fatal.2 = phi i32 [ %fatal.1, %if.then26 ], [ %fatal.1, %if.end24.for.inc_crit_edge ], [ %fatal.062, %for.body.for.inc_crit_edge ]
  %status.2 = phi i32 [ %status.1, %if.then26 ], [ %status.1, %if.end24.for.inc_crit_edge ], [ %status.063, %for.body.for.inc_crit_edge ]
  %incdec.ptr = getelementptr %struct.intr_info, ptr %acts.addr.059, i32 1
  %23 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %incdec.ptr, align 4
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %fatal.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %fatal.2, %for.inc.for.end_crit_edge ]
  %status.0.lcssa = phi i32 [ %and, %entry.for.end_crit_edge ], [ %status.2, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.lcssa)
  %tobool30.not = icmp eq i32 %status.0.lcssa, 0
  br i1 %tobool30.not, label %for.end.if.end32_crit_edge, label %if.then31

for.end.if.end32_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then31:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %25 = tail call i32 @llvm.bswap.i32(i32 %status.0.lcssa) #7
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %add.ptr.i56 = getelementptr i8, ptr %27, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %25) #7, !srcloc !340
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %for.end.if.end32_crit_edge
  ret i32 %fatal.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_fatal_err(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_os_link_fault_handler(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wrreg_wait(ptr nocapture noundef readonly %adapter, i32 noundef %addr, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %0 = tail call i32 @llvm.bswap.i32(i32 %val) #7
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %1 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 %addr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #7, !srcloc !340
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %4, i32 %addr
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %7, i32 %addr
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11) #7, !srcloc !337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  %.mask = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool.not = icmp eq i32 %.mask, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.138, i32 noundef %addr) #10
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_write_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_vpd(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vpdstrtouint(ptr nocapture noundef readonly %s, i8 noundef zeroext %len, ptr noundef %val) unnamed_addr #0 align 64 {
entry:
  %tok = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %tok) #7
  %conv = zext i8 %len to i32
  %0 = sub nuw nsw i32 256, %conv
  %1 = getelementptr i8, ptr %tok, i32 %conv
  %2 = call ptr @memset(ptr %1, i32 255, i32 %0)
  %3 = call ptr @memcpy(ptr %tok, ptr %s, i32 %conv)
  %arrayidx = getelementptr [256 x i8], ptr %tok, i32 0, i32 %conv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx, align 1
  %call = call ptr @strim(ptr noundef nonnull %tok) #7
  %call2 = call i32 @kstrtouint(ptr noundef %call, i32 noundef 10, ptr noundef %val) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %tok) #7
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_to_bin(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vpdstrtou16(ptr nocapture noundef readonly %s, i8 noundef zeroext %len, ptr noundef %val) unnamed_addr #0 align 64 {
entry:
  %tok = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %tok) #7
  %conv = zext i8 %len to i32
  %0 = sub nuw nsw i32 256, %conv
  %1 = getelementptr i8, ptr %tok, i32 %conv
  %2 = call ptr @memset(ptr %1, i32 255, i32 %0)
  %3 = call ptr @memcpy(ptr %tok, ptr %s, i32 %conv)
  %arrayidx = getelementptr [256 x i8], ptr %tok, i32 0, i32 %conv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx, align 1
  %call = call ptr @strim(ptr noundef nonnull %tok) #7
  %call2 = call i32 @kstrtou16(ptr noundef %call, i32 noundef 16, ptr noundef %val) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %tok) #7
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex2bin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_ael1002_phy_prep(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_vsc8211_phy_prep(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_xaui_direct_phy_prep(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_ael2005_phy_prep(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_qt2045_phy_prep(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_ael1006_phy_prep(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_aq100x_phy_prep(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_ael2020_phy_prep(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 172)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 172)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !40, !42, !44, !45, !46, !47, !49, !51, !53, !55, !56, !57, !58, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !106, !107, !108, !110, !111, !112, !113, !115, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !286, !287, !288, !290, !291, !292, !294, !295, !296, !297, !299, !301, !303, !304, !305, !306, !308, !309, !310, !312, !313, !314, !315, !317, !318, !319, !320, !322, !324, !326}
!llvm.module.flags = !{!328, !329, !330, !331, !332, !333, !334, !335}
!llvm.ident = !{!336}

!0 = !{ptr @t3_mc7_bd_read.shift, !1, !"shift", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 149, i32 19}
!2 = !{ptr @t3_mc7_bd_read.step, !3, !"step", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 150, i32 19}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 935, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @t3_check_tpsram_version._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @t3_check_tpsram_version._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 963, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @t3_check_tpsram._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @t3_check_tpsram._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1013, i32 3}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @t3_check_fw_version._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @t3_check_fw_version._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1017, i32 3}
!25 = !{ptr @t3_check_fw_version._entry.10, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @t3_check_fw_version._entry_ptr.12, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1074, i32 3}
!29 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @t3_load_fw._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @t3_load_fw._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1099, i32 3}
!34 = !{ptr @t3_load_fw._entry.15, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @t3_load_fw._entry_ptr.17, !33, !"_entry_ptr", i1 false, i1 false}
!36 = distinct !{null, !37, !"intr_en_avp", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1930, i32 36}
!38 = !{ptr @t3_intr_clear.cause_reg_addr, !39, !"cause_reg_addr", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1994, i32 28}
!40 = !{ptr @t3_load_mtus.avg_pkts, !41, !"avg_pkts", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 2836, i32 28}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 3374, i32 3}
!44 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @t3_init_hw._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @t3_init_hw._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 3630, i32 57}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 3631, i32 57}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 3632, i32 53}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 3678, i32 4}
!55 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @t3_prep_adapter._entry, !54, !"_entry", i1 false, i1 false}
!58 = !{ptr @t3_prep_adapter._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 509, i32 18}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 513, i32 18}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 518, i32 22}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 524, i32 22}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 536, i32 22}
!69 = !{ptr @t3_adap_info, !70, !"t3_adap_info", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 505, i32 34}
!71 = !{ptr @mi1_mdio_ops, !72, !"mi1_mdio_ops", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 247, i32 30}
!73 = !{ptr @mi1_mdio_ext_ops, !74, !"mi1_mdio_ext_ops", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 312, i32 30}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1494, i32 14}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1496, i32 4}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1498, i32 4}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1499, i32 22}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1500, i32 21}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1501, i32 21}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1502, i32 21}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1504, i32 4}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1505, i32 22}
!93 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1506, i32 22}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1507, i32 16}
!97 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1508, i32 16}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1509, i32 26}
!101 = !{ptr @pcie_intr_handler.pcie_intr_info, !102, !"pcie_intr_info", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1493, i32 32}
!103 = !{ptr @.str.44, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1514, i32 3}
!105 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @pcie_intr_handler._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @pcie_intr_handler._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.46, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1380, i32 4}
!110 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @t3_handle_intr_status._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @t3_handle_intr_status._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @t3_handle_intr_status._entry.48, !114, !"_entry", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1384, i32 4}
!115 = !{ptr @t3_handle_intr_status._entry_ptr.49, !114, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1458, i32 20}
!118 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1459, i32 17}
!120 = !{ptr @.str.52, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1460, i32 17}
!122 = !{ptr @.str.53, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1461, i32 17}
!124 = !{ptr @.str.54, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1462, i32 17}
!126 = !{ptr @.str.55, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1463, i32 17}
!128 = !{ptr @.str.56, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1464, i32 17}
!130 = !{ptr @.str.57, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1465, i32 17}
!132 = !{ptr @.str.58, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1466, i32 20}
!134 = !{ptr @.str.59, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1468, i32 20}
!136 = !{ptr @.str.60, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1470, i32 20}
!138 = !{ptr @pci_intr_handler.pcix1_intr_info, !139, !"pcix1_intr_info", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1457, i32 32}
!140 = !{ptr @.str.61, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1733, i32 3}
!142 = !{ptr @.str.62, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @mc7_intr_handler._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @mc7_intr_handler._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.64, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1743, i32 3}
!147 = !{ptr @mc7_intr_handler._entry.63, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @mc7_intr_handler._entry_ptr.65, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.67, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1753, i32 3}
!151 = !{ptr @mc7_intr_handler._entry.66, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @mc7_intr_handler._entry_ptr.68, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.70, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1764, i32 3}
!155 = !{ptr @mc7_intr_handler._entry.69, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @mc7_intr_handler._entry_ptr.71, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.72, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1553, i32 20}
!159 = !{ptr @.str.73, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1554, i32 21}
!161 = !{ptr @.str.74, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1555, i32 21}
!163 = !{ptr @.str.75, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1556, i32 20}
!165 = !{ptr @.str.76, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1557, i32 21}
!167 = !{ptr @.str.77, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1558, i32 21}
!169 = !{ptr @.str.78, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1559, i32 21}
!171 = !{ptr @.str.79, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1560, i32 21}
!173 = !{ptr @.str.80, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1561, i32 19}
!175 = !{ptr @.str.81, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1562, i32 19}
!177 = !{ptr @.str.82, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1563, i32 18}
!179 = !{ptr @.str.83, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1564, i32 18}
!181 = !{ptr @.str.84, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1565, i32 18}
!183 = !{ptr @.str.85, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1566, i32 20}
!185 = !{ptr @.str.86, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1567, i32 20}
!187 = !{ptr @.str.87, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1568, i32 20}
!189 = !{ptr @.str.88, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1569, i32 22}
!191 = !{ptr @.str.89, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1570, i32 22}
!193 = !{ptr @.str.90, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1571, i32 22}
!195 = !{ptr @.str.91, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1572, i32 22}
!197 = !{ptr @.str.92, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1573, i32 20}
!199 = !{ptr @.str.93, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1574, i32 19}
!201 = !{ptr @.str.94, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1575, i32 18}
!203 = !{ptr @.str.95, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1576, i32 18}
!205 = !{ptr @cim_intr_handler.cim_intr_info, !206, !"cim_intr_info", i1 false, i1 false}
!206 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1552, i32 32}
!207 = !{ptr @.str.96, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1528, i32 14}
!209 = !{ptr @.str.97, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1529, i32 15}
!211 = !{ptr @.str.98, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1530, i32 15}
!213 = !{ptr @tp_intr_handler.tp_intr_info, !214, !"tp_intr_info", i1 false, i1 false}
!214 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1527, i32 32}
!215 = !{ptr @tp_intr_handler.tp_intr_info_t3c, !216, !"tp_intr_info_t3c", i1 false, i1 false}
!216 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1534, i32 32}
!217 = !{ptr @.str.99, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1591, i32 18}
!219 = !{ptr @.str.100, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1592, i32 18}
!221 = !{ptr @.str.101, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1593, i32 18}
!223 = !{ptr @.str.102, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1594, i32 18}
!225 = !{ptr @.str.103, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1595, i32 16}
!227 = !{ptr @.str.104, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1596, i32 19}
!229 = !{ptr @.str.105, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1597, i32 24}
!231 = !{ptr @ulprx_intr_handler.ulprx_intr_info, !232, !"ulprx_intr_info", i1 false, i1 false}
!232 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1590, i32 32}
!233 = !{ptr @.str.106, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1613, i32 25}
!235 = !{ptr @.str.107, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1615, i32 25}
!237 = !{ptr @.str.108, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1617, i32 10}
!239 = !{ptr @ulptx_intr_handler.ulptx_intr_info, !240, !"ulptx_intr_info", i1 false, i1 false}
!240 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1612, i32 32}
!241 = !{ptr @.str.109, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1671, i32 24}
!243 = !{ptr @.str.110, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1672, i32 19}
!245 = !{ptr @.str.111, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1673, i32 19}
!247 = !{ptr @.str.112, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1675, i32 4}
!249 = !{ptr @.str.113, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1677, i32 4}
!251 = !{ptr @pmrx_intr_handler.pmrx_intr_info, !252, !"pmrx_intr_info", i1 false, i1 false}
!252 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1670, i32 32}
!253 = !{ptr @.str.114, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1641, i32 24}
!255 = !{ptr @.str.115, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1642, i32 19}
!257 = !{ptr @.str.116, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1643, i32 19}
!259 = !{ptr @.str.117, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1645, i32 4}
!261 = !{ptr @.str.118, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1647, i32 4}
!263 = !{ptr @pmtx_intr_handler.pmtx_intr_info, !264, !"pmtx_intr_info", i1 false, i1 false}
!264 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1640, i32 32}
!265 = !{ptr @.str.119, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1692, i32 23}
!267 = !{ptr @.str.120, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1693, i32 22}
!269 = !{ptr @.str.121, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1694, i32 24}
!271 = !{ptr @.str.122, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1695, i32 25}
!273 = !{ptr @.str.123, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1696, i32 25}
!275 = !{ptr @.str.124, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1697, i32 25}
!277 = !{ptr @cplsw_intr_handler.cplsw_intr_info, !278, !"cplsw_intr_info", i1 false, i1 false}
!278 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1691, i32 32}
!279 = !{ptr @.str.125, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1712, i32 11}
!281 = !{ptr @mps_intr_handler.mps_intr_info, !282, !"mps_intr_info", i1 false, i1 false}
!282 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1711, i32 32}
!283 = !{ptr @.str.126, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1793, i32 3}
!285 = !{ptr @.str.127, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @mac_intr_handler._entry, !284, !"_entry", i1 false, i1 false}
!287 = !{ptr @mac_intr_handler._entry_ptr, !284, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.129, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 1797, i32 3}
!290 = !{ptr @mac_intr_handler._entry.128, !289, !"_entry", i1 false, i1 false}
!291 = !{ptr @mac_intr_handler._entry_ptr.130, !289, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.131, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 3079, i32 3}
!294 = !{ptr @.str.132, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @calibrate_xgm._entry, !293, !"_entry", i1 false, i1 false}
!296 = !{ptr @calibrate_xgm._entry_ptr, !293, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @mc7_init.mc7_mode, !298, !"mc7_mode", i1 false, i1 false}
!298 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 3132, i32 28}
!299 = !{ptr @mc7_init.mc7_timings, !300, !"mc7_timings", i1 false, i1 false}
!300 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 3135, i32 40}
!301 = !{ptr @.str.133, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 3166, i32 4}
!303 = !{ptr @.str.134, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @mc7_init._entry, !302, !"_entry", i1 false, i1 false}
!305 = !{ptr @mc7_init._entry_ptr, !302, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.136, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 3231, i32 3}
!308 = !{ptr @mc7_init._entry.135, !307, !"_entry", i1 false, i1 false}
!309 = !{ptr @mc7_init._entry_ptr.137, !307, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.138, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 3126, i32 2}
!312 = !{ptr @.str.139, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @wrreg_wait._entry, !311, !"_entry", i1 false, i1 false}
!314 = !{ptr @wrreg_wait._entry_ptr, !311, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.140, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 3021, i32 4}
!317 = !{ptr @.str.141, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @tp_init._entry, !316, !"_entry", i1 false, i1 false}
!319 = !{ptr @tp_init._entry_ptr, !316, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @config_pcie.ack_lat, !321, !"ack_lat", i1 false, i1 false}
!321 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 3245, i32 19}
!322 = !{ptr @config_pcie.rpl_tmr, !323, !"rpl_tmr", i1 false, i1 false}
!323 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 3251, i32 19}
!324 = !{ptr @get_pci_mode.speed_map, !325, !"speed_map", i1 false, i1 false}
!325 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 3393, i32 24}
!326 = !{ptr @port_types, !327, !"port_types", i1 false, i1 false}
!327 = !{!"../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c", i32 553, i32 36}
!328 = !{i32 1, !"wchar_size", i32 2}
!329 = !{i32 1, !"min_enum_size", i32 4}
!330 = !{i32 8, !"branch-target-enforcement", i32 0}
!331 = !{i32 8, !"sign-return-address", i32 0}
!332 = !{i32 8, !"sign-return-address-all", i32 0}
!333 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!334 = !{i32 7, !"uwtable", i32 1}
!335 = !{i32 7, !"frame-pointer", i32 2}
!336 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!337 = !{i64 6156258}
!338 = !{i64 2156989802}
!339 = !{i64 2156990192}
!340 = !{i64 6155840}
!341 = !{!"auto-init"}
!342 = !{i32 0, i32 33}

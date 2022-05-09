; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/cxgb/subr.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/cxgb/subr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.board_info = type { i8, i8, i32, i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.gmac = type { i32, ptr, ptr }
%struct.gphy = type { ptr, ptr }
%struct.mdio_ops = type { ptr, ptr, ptr, i32 }
%struct.adapter = type { ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.adapter_params, ptr, ptr, ptr, %struct.napi_struct, [4 x %struct.port_info], %struct.delayed_work, %struct.timer_list, %struct.spinlock, %struct.spinlock, %struct.spinlock, [80 x i8], %struct.spinlock, i32, i32, i32, [72 x i8] }
%struct.adapter_params = type { %struct.sge_params, %struct.mc5_params, %struct.tp_params, %struct.chelsio_pci_params, ptr, [8 x i16], i32, i32, i16, i8, i8, i8 }
%struct.sge_params = type { [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32 }
%struct.mc5_params = type { i32, i32, i32 }
%struct.tp_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.chelsio_pci_params = type { i16, i8, i8 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.port_info = type { ptr, ptr, ptr, %struct.link_config }
%struct.link_config = type { i32, i32, i16, i16, i8, i8, i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.cphy = type { i32, ptr, %struct.delayed_work, i16, i32, i32, i32, i32, ptr, %struct.mdio_if_info, ptr }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.cphy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.cmac = type { %struct.cmac_statistics, ptr, ptr, ptr }
%struct.cmac_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.cmac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%union.anon.99 = type { ptr }
%struct.chelsio_vpd_t = type { i32, [16 x i8], [6 x i8], [2 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.100, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.117, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.100 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.117 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }

@__t1_tpi_write._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 93, ptr null, ptr null }, align 1
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\011cxgb: %s: TPI write to 0x%x failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__t1_tpi_write\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/chelsio/cxgb/subr.c\00", [55 x i8] zeroinitializer }, align 32
@__t1_tpi_write._entry_ptr = internal global ptr @__t1_tpi_write._entry, section ".printk_index", align 4
@__t1_tpi_read._entry = internal constant %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 121, ptr null, ptr null }, align 1
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\011cxgb: %s: TPI read from 0x%x failed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"__t1_tpi_read\00", [18 x i8] zeroinitializer }, align 32
@__t1_tpi_read._entry_ptr = internal global ptr @__t1_tpi_read._entry, section ".printk_index", align 4
@t1_pci_tbl = dso_local constant { [8 x %struct.pci_device_id], [64 x i8] } { [8 x %struct.pci_device_id] [%struct.pci_device_id { i32 5157, i32 8, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 8, i32 -1, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 7, i32 -1, i32 0, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 5157, i32 10, i32 -1, i32 1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5157, i32 11, i32 -1, i32 1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 5157, i32 14, i32 -1, i32 1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 5157, i32 16, i32 -1, i32 1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@t1_board = internal constant { [6 x %struct.board_info], [72 x i8] } { [6 x %struct.board_info] [%struct.board_info { i8 5, i8 1, i32 4096, i8 1, i8 2, i8 4, i32 125000000, i32 150000000, i32 125000000, i32 1, i32 44, i8 1, i8 1, i8 1, i8 1, ptr @t1_pm3393_ops, ptr @t1_my3126_ops, ptr @mi1_mdio_ext_ops, ptr @.str.32 }, %struct.board_info { i8 0, i8 1, i32 5120, i8 1, i8 2, i8 2, i32 125000000, i32 0, i32 0, i32 1, i32 44, i8 0, i8 0, i8 1, i8 0, ptr @t1_pm3393_ops, ptr @t1_mv88x201x_ops, ptr @mi1_mdio_ext_ops, ptr @.str.33 }, %struct.board_info { i8 1, i8 1, i32 5120, i8 2, i8 2, i8 2, i32 125000000, i32 0, i32 0, i32 1, i32 44, i8 0, i8 0, i8 1, i8 0, ptr @t1_pm3393_ops, ptr @t1_mv88x201x_ops, ptr @mi1_mdio_ext_ops, ptr @.str.34 }, %struct.board_info { i8 6, i8 1, i32 4096, i8 2, i8 2, i8 2, i32 125000000, i32 133000000, i32 125000000, i32 1, i32 44, i8 0, i8 0, i8 1, i8 0, ptr @t1_pm3393_ops, ptr @t1_mv88x201x_ops, ptr @mi1_mdio_ext_ops, ptr @.str.35 }, %struct.board_info { i8 6, i8 1, i32 4096, i8 2, i8 2, i8 4, i32 125000000, i32 133000000, i32 125000000, i32 1, i32 44, i8 1, i8 1, i8 1, i8 1, ptr @t1_pm3393_ops, ptr @t1_my3126_ops, ptr @mi1_mdio_ext_ops, ptr @.str.36 }, %struct.board_info { i8 10, i8 4, i32 8431, i8 2, i8 3, i8 1, i32 100000000, i32 0, i32 0, i32 4, i32 44, i8 0, i8 0, i8 0, i8 4, ptr @t1_vsc7326_ops, ptr @t1_mv88e1xxx_ops, ptr @mi1_mdio_ops, ptr @.str.37 }], [72 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@t1_seeprom_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013cxgb: %s: reading EEPROM address 0x%x failed\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"t1_seeprom_read\00", [16 x i8] zeroinitializer }, align 32
@t1_seeprom_read._entry_ptr = internal global ptr @t1_seeprom_read._entry, section ".printk_index", align 4
@t1_elmer0_ext_intr_handler.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 -70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cxgb\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"t1_elmer0_ext_intr_handler\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"External interrupt cause 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@t1_elmer0_ext_intr_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 758, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"XPAK %s\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@t1_elmer0_ext_intr_handler._entry_ptr = internal global ptr @t1_elmer0_ext_intr_handler._entry, section ".printk_index", align 4
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"removed\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"inserted\00", [23 x i8] zeroinitializer }, align 32
@t1_init_sw_modules._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 1088, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013cxgb: %s: SGE initialization failed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"t1_init_sw_modules\00", [45 x i8] zeroinitializer }, align 32
@t1_init_sw_modules._entry_ptr = internal global ptr @t1_init_sw_modules._entry, section ".printk_index", align 4
@t1_init_sw_modules._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 1094, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013cxgb: %s: ESPI initialization failed\0A\00", [56 x i8] zeroinitializer }, align 32
@t1_init_sw_modules._entry_ptr.19 = internal global ptr @t1_init_sw_modules._entry.17, section ".printk_index", align 4
@t1_init_sw_modules._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.2, i32 1101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013cxgb: %s: TP initialization failed\0A\00", [58 x i8] zeroinitializer }, align 32
@t1_init_sw_modules._entry_ptr.22 = internal global ptr @t1_init_sw_modules._entry.20, section ".printk_index", align 4
@t1_init_sw_modules._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.2, i32 1121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013cxgb: %s: PHY %d initialization failed\0A\00", [54 x i8] zeroinitializer }, align 32
@t1_init_sw_modules._entry_ptr.25 = internal global ptr @t1_init_sw_modules._entry.23, section ".printk_index", align 4
@t1_init_sw_modules._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.16, ptr @.str.2, i32 1128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013cxgb: %s: MAC %d initialization failed\0A\00", [54 x i8] zeroinitializer }, align 32
@t1_init_sw_modules._entry_ptr.28 = internal global ptr @t1_init_sw_modules._entry.26, section ".printk_index", align 4
@t1_init_sw_modules._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.16, ptr @.str.2, i32 1140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013cxgb: %s: could not read MAC address from VPD ROM\0A\00", [43 x i8] zeroinitializer }, align 32
@t1_init_sw_modules._entry_ptr.31 = internal global ptr @t1_init_sw_modules._entry.29, section ".printk_index", align 4
@t1_pm3393_ops = external dso_local constant %struct.gmac, align 4
@t1_my3126_ops = external dso_local constant %struct.gphy, align 4
@mi1_mdio_ext_ops = internal constant { %struct.mdio_ops, [16 x i8] } { %struct.mdio_ops { ptr @mi1_mdio_init, ptr @mi1_mdio_ext_read, ptr @mi1_mdio_ext_write, i32 6 }, [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Chelsio T110 1x10GBase-CX4 TOE\00", [33 x i8] zeroinitializer }, align 32
@t1_mv88x201x_ops = external dso_local constant %struct.gphy, align 4
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Chelsio N110 1x10GBaseX NIC\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Chelsio N210 1x10GBaseX NIC\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Chelsio T210 1x10GBaseX TOE\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Chelsio T210 1x10GBase-CX4 TOE\00", [33 x i8] zeroinitializer }, align 32
@t1_vsc7326_ops = external dso_local constant %struct.gmac, align 4
@t1_mv88e1xxx_ops = external dso_local constant %struct.gphy, align 4
@mi1_mdio_ops = internal constant { %struct.mdio_ops, [16 x i8] } { %struct.mdio_ops { ptr @mi1_mdio_init, ptr @mi1_mdio_read, ptr @mi1_mdio_write, i32 1 }, [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Chelsio N204 4x100/1000BaseT NIC\00", [63 x i8] zeroinitializer }, align 32
@mi1_wait_until_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\011cxgb: %s: MDIO operation timed out\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mi1_wait_until_ready\00", [43 x i8] zeroinitializer }, align 32
@mi1_wait_until_ready._entry_ptr = internal global ptr @mi1_wait_until_ready._entry, section ".printk_index", align 4
@t1_pci_intr_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\011cxgb: %s: PCI error encountered.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"t1_pci_intr_handler\00", [44 x i8] zeroinitializer }, align 32
@t1_pci_intr_handler._entry_ptr = internal global ptr @t1_pci_intr_handler._entry, section ".printk_index", align 4
@get_pci_mode.speed_map = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 33, i16 66, i16 100, i16 133], [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.43 = internal global [13 x i64] [i64 11, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 92, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 120, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [11 x i8] c"t1_pci_tbl\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 537, i32 28 }
@___asan_gen_.62 = private unnamed_addr constant [9 x i8] c"t1_board\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 403, i32 32 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 590, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 744, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 757, i32 5 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1087, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1093, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1100, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1120, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1127, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1139, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"mi1_mdio_ext_ops\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 387, i32 30 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 423, i32 12 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 443, i32 12 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 463, i32 12 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 485, i32 12 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 507, i32 12 }
@___asan_gen_.158 = private unnamed_addr constant [13 x i8] c"mi1_mdio_ops\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 328, i32 30 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 531, i32 12 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 273, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 185, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant [10 x i8] c"speed_map\00", align 1
@___asan_gen_.183 = private constant [44 x i8] c"../drivers/net/ethernet/chelsio/cxgb/subr.c\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1022, i32 30 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__t1_tpi_read._entry, ptr @__t1_tpi_read._entry_ptr, ptr @__t1_tpi_write._entry, ptr @__t1_tpi_write._entry_ptr, ptr @mi1_wait_until_ready._entry, ptr @mi1_wait_until_ready._entry_ptr, ptr @t1_elmer0_ext_intr_handler._entry, ptr @t1_elmer0_ext_intr_handler._entry_ptr, ptr @t1_init_sw_modules._entry, ptr @t1_init_sw_modules._entry.17, ptr @t1_init_sw_modules._entry.20, ptr @t1_init_sw_modules._entry.23, ptr @t1_init_sw_modules._entry.26, ptr @t1_init_sw_modules._entry.29, ptr @t1_init_sw_modules._entry_ptr, ptr @t1_init_sw_modules._entry_ptr.19, ptr @t1_init_sw_modules._entry_ptr.22, ptr @t1_init_sw_modules._entry_ptr.25, ptr @t1_init_sw_modules._entry_ptr.28, ptr @t1_init_sw_modules._entry_ptr.31, ptr @t1_pci_intr_handler._entry, ptr @t1_pci_intr_handler._entry_ptr, ptr @t1_seeprom_read._entry, ptr @t1_seeprom_read._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @t1_pci_tbl, ptr @t1_board, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @mi1_mdio_ext_ops, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @mi1_mdio_ops, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @get_pci_mode.speed_map], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t1_pci_tbl to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t1_board to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t1_seeprom_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t1_elmer0_ext_intr_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t1_init_sw_modules._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t1_init_sw_modules._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t1_init_sw_modules._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t1_init_sw_modules._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t1_init_sw_modules._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t1_init_sw_modules._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi1_mdio_ext_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi1_mdio_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi1_wait_until_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t1_pci_intr_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_pci_mode.speed_map to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__t1_tpi_write(ptr nocapture noundef readonly %adapter, i32 noundef %addr, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  %0 = tail call i32 @llvm.bswap.i32(i32 %addr)
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 128
  %add.ptr = getelementptr i8, ptr %2, i32 640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #6, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %3 = tail call i32 @llvm.bswap.i32(i32 %value)
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 128
  %add.ptr5 = getelementptr i8, ptr %5, i32 644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %3) #6, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 128
  %add.ptr10 = getelementptr i8, ptr %7, i32 652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 16777216) #6, !srcloc !96
  %8 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter, align 128
  %add.ptr6.i = getelementptr i8, ptr %9, i32 652
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %11 = and i32 %10, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not7.i = icmp eq i32 %11, 0
  br i1 %cmp.not7.i, label %entry.if.end.i_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end.i_crit_edge:                         ; preds = %entry
  br label %if.end.i

if.end.i:                                         ; preds = %cleanup.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %attempts.addr.08.i = phi i32 [ %dec.i, %cleanup.i.if.end.i_crit_edge ], [ 50, %entry.if.end.i_crit_edge ]
  %dec.i = add nsw i32 %attempts.addr.08.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp3.i = icmp eq i32 %dec.i, 0
  br i1 %cmp3.i, label %do.end13, label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 644244) #6
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 128
  %add.ptr.i = getelementptr i8, ptr %14, i32 652
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %16 = and i32 %15, 33554432
  %cmp.not.i = icmp eq i32 %16, 0
  br i1 %cmp.not.i, label %cleanup.i.if.end.i_crit_edge, label %cleanup.i.if.end_crit_edge

cleanup.i.if.end_crit_edge:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

cleanup.i.if.end.i_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end13:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 5
  %17 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %18, i32 noundef %addr) #9
  br label %if.end

if.end:                                           ; preds = %do.end13, %cleanup.i.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.1.ph.i23 = phi i32 [ 1, %do.end13 ], [ 0, %entry.if.end_crit_edge ], [ 0, %cleanup.i.if.end_crit_edge ]
  ret i32 %retval.1.ph.i23
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef %addr, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tpi_lock = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %tpi_lock) #6
  %call = tail call i32 @__t1_tpi_write(ptr noundef %adapter, i32 noundef %addr, i32 noundef %value)
  tail call void @_raw_spin_unlock(ptr noundef %tpi_lock) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__t1_tpi_read(ptr nocapture noundef readonly %adapter, i32 noundef %addr, ptr nocapture noundef writeonly %valp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  tail call void @arm_heavy_mb() #6
  %0 = tail call i32 @llvm.bswap.i32(i32 %addr)
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 128
  %add.ptr = getelementptr i8, ptr %2, i32 640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #6, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %3 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter, align 128
  %add.ptr5 = getelementptr i8, ptr %4, i32 652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 0) #6, !srcloc !96
  %5 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter, align 128
  %add.ptr6.i = getelementptr i8, ptr %6, i32 652
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %8 = and i32 %7, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not7.i = icmp eq i32 %8, 0
  br i1 %cmp.not7.i, label %entry.if.end.i_crit_edge, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

entry.if.end.i_crit_edge:                         ; preds = %entry
  br label %if.end.i

if.end.i:                                         ; preds = %cleanup.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %attempts.addr.08.i = phi i32 [ %dec.i, %cleanup.i.if.end.i_crit_edge ], [ 50, %entry.if.end.i_crit_edge ]
  %dec.i = add nsw i32 %attempts.addr.08.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp3.i = icmp eq i32 %dec.i, 0
  br i1 %cmp3.i, label %do.end8, label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 644244) #6
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 128
  %add.ptr.i = getelementptr i8, ptr %11, i32 652
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %13 = and i32 %12, 33554432
  %cmp.not.i = icmp eq i32 %13, 0
  br i1 %cmp.not.i, label %cleanup.i.if.end.i_crit_edge, label %cleanup.i.if.else_crit_edge

cleanup.i.if.else_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

cleanup.i.if.end.i_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end8:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 5
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %15, i32 noundef %addr) #9
  br label %if.end

if.else:                                          ; preds = %cleanup.i.if.else_crit_edge, %entry.if.else_crit_edge
  %16 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter, align 128
  %add.ptr11 = getelementptr i8, ptr %17, i32 648
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #6, !srcloc !99
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  %20 = ptrtoint ptr %valp to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %valp, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end8
  %retval.1.ph.i23 = phi i32 [ 0, %if.else ], [ 1, %do.end8 ]
  ret i32 %retval.1.ph.i23
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t1_tpi_read(ptr noundef %adapter, i32 noundef %addr, ptr nocapture noundef writeonly %valp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tpi_lock = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %tpi_lock) #6
  %call = tail call i32 @__t1_tpi_read(ptr noundef %adapter, i32 noundef %addr, ptr noundef %valp)
  tail call void @_raw_spin_unlock(ptr noundef %tpi_lock) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t1_link_changed(ptr noundef %adapter, i32 noundef %port_id) local_unnamed_addr #0 align 64 {
entry:
  %link_ok = alloca i32, align 4
  %speed = alloca i32, align 4
  %duplex = alloca i32, align 4
  %fc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link_ok) #6
  %0 = ptrtoint ptr %link_ok to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %link_ok, align 4, !annotation !104
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %speed) #6
  %1 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %speed, align 4, !annotation !104
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %duplex) #6
  %2 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %duplex, align 4, !annotation !104
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fc) #6
  %3 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %fc, align 4, !annotation !104
  %phy1 = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 13, i32 %port_id, i32 2
  %4 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy1, align 8
  %ops = getelementptr inbounds %struct.cphy, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %get_link_status = getelementptr inbounds %struct.cphy_ops, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %get_link_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_link_status, align 4
  %call = call i32 %9(ptr noundef %5, ptr noundef nonnull %link_ok, ptr noundef nonnull %speed, ptr noundef nonnull %duplex, ptr noundef nonnull %fc) #6
  %10 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp slt i32 %11, 0
  %phi.cast = trunc i32 %11 to i16
  %spec.select = select i1 %cmp, i16 -1, i16 %phi.cast
  %speed4 = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 13, i32 %port_id, i32 3, i32 3
  %12 = ptrtoint ptr %speed4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %spec.select, ptr %speed4, align 2
  %13 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp5 = icmp slt i32 %14, 0
  %phi.cast48 = trunc i32 %14 to i8
  %cond10 = select i1 %cmp5, i8 -1, i8 %phi.cast48
  %duplex12 = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 13, i32 %port_id, i32 3, i32 5
  %15 = ptrtoint ptr %duplex12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %cond10, ptr %duplex12, align 1
  %requested_fc = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 13, i32 %port_id, i32 3, i32 6
  %16 = ptrtoint ptr %requested_fc to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %requested_fc, align 2
  %conv13 = zext i8 %17 to i32
  %and = and i32 %conv13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and16 = and i32 %conv13, 3
  %18 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and16, ptr %fc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %19 = ptrtoint ptr %link_ok to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %link_ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool17.not = icmp ne i32 %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp18 = icmp sgt i32 %11, -1
  %or.cond = select i1 %tobool17.not, i1 %cmp18, i1 false
  br i1 %or.cond, label %land.lhs.true20, label %if.end.if.end32_crit_edge

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

land.lhs.true20:                                  ; preds = %if.end
  %autoneg = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 13, i32 %port_id, i32 3, i32 8
  %21 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %22)
  %cmp22 = icmp eq i8 %22, 1
  br i1 %cmp22, label %if.then24, label %land.lhs.true20.if.end32_crit_edge

land.lhs.true20.if.end32_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then24:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #8
  %mac27 = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 13, i32 %port_id, i32 1
  %23 = ptrtoint ptr %mac27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mac27, align 4
  %ops28 = getelementptr inbounds %struct.cmac, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %ops28 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops28, align 4
  %set_speed_duplex_fc = getelementptr inbounds %struct.cmac_ops, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %set_speed_duplex_fc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_speed_duplex_fc, align 4
  %29 = ptrtoint ptr %fc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fc, align 4
  %call29 = call i32 %28(ptr noundef %24, i32 noundef %11, i32 noundef %14, i32 noundef %30) #6
  %31 = ptrtoint ptr %fc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fc, align 4
  %conv30 = trunc i32 %32 to i8
  %fc31 = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 13, i32 %port_id, i32 3, i32 7
  %33 = ptrtoint ptr %fc31 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv30, ptr %fc31, align 1
  br label %if.end32

if.end32:                                         ; preds = %if.then24, %land.lhs.true20.if.end32_crit_edge, %if.end.if.end32_crit_edge
  %34 = ptrtoint ptr %link_ok to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %link_ok, align 4
  %36 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %speed, align 4
  %38 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %duplex, align 4
  %40 = ptrtoint ptr %fc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fc, align 4
  call void @t1_link_negotiated(ptr noundef %adapter, i32 noundef %port_id, i32 noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %41) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fc) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %duplex) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %speed) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_ok) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @t1_link_negotiated(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @t1_get_board_info(i32 noundef %board_id) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %board_id)
  %cmp = icmp ult i32 %board_id, 6
  %arrayidx = getelementptr [6 x %struct.board_info], ptr @t1_board, i32 0, i32 %board_id
  %spec.select = select i1 %cmp, ptr %arrayidx, ptr null
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t1_seeprom_read(ptr nocapture noundef readonly %adapter, i32 noundef %addr, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i16, align 2
  %v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !104
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #6
  %1 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %v, align 4, !annotation !104
  %2 = and i32 %addr, -8189
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 1
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %conv = trunc i32 %addr to i16
  %call = tail call i32 @pci_write_config_word(ptr noundef %5, i32 noundef 74, i16 noundef zeroext %conv) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %6(i32 noundef 10737400) #6
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 4
  %call2 = call i32 @pci_read_config_word(ptr noundef %8, i32 noundef 74, ptr noundef nonnull %val) #6
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %val, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool5.not = icmp slt i16 %10, 0
  br i1 %tobool5.not, label %if.end.do.end_crit_edge, label %do.body.1

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.body.1:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %11(i32 noundef 10737400) #6
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 4
  %call2.1 = call i32 @pci_read_config_word(ptr noundef %13, i32 noundef 74, ptr noundef nonnull %val) #6
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %val, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool5.not.1 = icmp slt i16 %15, 0
  br i1 %tobool5.not.1, label %do.body.1.do.end_crit_edge, label %do.body.2

do.body.1.do.end_crit_edge:                       ; preds = %do.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.body.2:                                        ; preds = %do.body.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %16(i32 noundef 10737400) #6
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 4
  %call2.2 = call i32 @pci_read_config_word(ptr noundef %18, i32 noundef 74, ptr noundef nonnull %val) #6
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %val, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool5.not.2 = icmp slt i16 %20, 0
  br i1 %tobool5.not.2, label %do.body.2.do.end_crit_edge, label %do.body.3

do.body.2.do.end_crit_edge:                       ; preds = %do.body.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.body.3:                                        ; preds = %do.body.2
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 10737400) #6
  %22 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev, align 4
  %call2.3 = call i32 @pci_read_config_word(ptr noundef %23, i32 noundef 74, ptr noundef nonnull %val) #6
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %val, align 2
  br label %do.end

do.end:                                           ; preds = %do.body.3, %do.body.2.do.end_crit_edge, %do.body.1.do.end_crit_edge, %if.end.do.end_crit_edge
  %.lcssa = phi i16 [ %10, %if.end.do.end_crit_edge ], [ %15, %do.body.1.do.end_crit_edge ], [ %20, %do.body.2.do.end_crit_edge ], [ %25, %do.body.3 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %.lcssa)
  %tobool9.not = icmp sgt i16 %.lcssa, -1
  br i1 %tobool9.not, label %do.end13, label %if.end15

do.end13:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 5
  %26 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name, align 4
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %27, i32 noundef %addr) #9
  br label %cleanup

if.end15:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev, align 4
  %call17 = call i32 @pci_read_config_dword(ptr noundef %29, i32 noundef 76, ptr noundef nonnull %v) #6
  %30 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %v, align 4
  %32 = call i32 @llvm.bswap.i32(i32 %31)
  %33 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -5, %do.end13 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t1_link_start(ptr noundef %phy, ptr noundef %mac, ptr nocapture noundef %lc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %requested_fc = getelementptr inbounds %struct.link_config, ptr %lc, i32 0, i32 6
  %0 = ptrtoint ptr %requested_fc to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %requested_fc, align 2
  %2 = and i8 %1, 3
  %and = zext i8 %2 to i32
  %3 = ptrtoint ptr %lc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lc, align 4
  %and1 = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.else46, label %if.then

if.then:                                          ; preds = %entry
  %advertising = getelementptr inbounds %struct.link_config, ptr %lc, i32 0, i32 1
  %5 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %advertising, align 4
  %and2 = and i32 %6, -24577
  store i32 %and2, ptr %advertising, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool3.not = icmp eq i8 %2, 0
  br i1 %tobool3.not, label %if.then.if.end19_crit_edge, label %if.then4

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then4:                                         ; preds = %if.then
  %adapter = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 1
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter, align 8
  %nports = getelementptr inbounds %struct.adapter, ptr %8, i32 0, i32 8, i32 6
  %9 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nports, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp = icmp ult i32 %10, 2
  %11 = zext i1 %cmp to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %11)
  %cmp7 = icmp eq i8 %2, %11
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %and2, 8192
  br label %if.end19.sink.split

if.else:                                          ; preds = %if.then4
  %or12 = or i32 %and2, 16384
  %12 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or12, ptr %advertising, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp13 = icmp eq i8 %2, 1
  br i1 %cmp13, label %if.then15, label %if.else.if.end19_crit_edge

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %or17 = or i32 %6, 24576
  br label %if.end19.sink.split

if.end19.sink.split:                              ; preds = %if.then15, %if.then9
  %or.sink = phi i32 [ %or, %if.then9 ], [ %or17, %if.then15 ]
  %13 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or.sink, ptr %advertising, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end19.sink.split, %if.else.if.end19_crit_edge, %if.then.if.end19_crit_edge
  %ops = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 8
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %advertise = getelementptr inbounds %struct.cphy_ops, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %advertise to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %advertise, align 4
  %18 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %advertising, align 4
  %call = tail call i32 %17(ptr noundef %phy, i32 noundef %19) #6
  %autoneg = getelementptr inbounds %struct.link_config, ptr %lc, i32 0, i32 8
  %20 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp22 = icmp eq i8 %21, 0
  br i1 %cmp22, label %if.then24, label %if.else41

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %requested_speed = getelementptr inbounds %struct.link_config, ptr %lc, i32 0, i32 2
  %22 = ptrtoint ptr %requested_speed to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %requested_speed, align 4
  %speed = getelementptr inbounds %struct.link_config, ptr %lc, i32 0, i32 3
  %24 = ptrtoint ptr %speed to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %speed, align 2
  %requested_duplex = getelementptr inbounds %struct.link_config, ptr %lc, i32 0, i32 4
  %25 = ptrtoint ptr %requested_duplex to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %requested_duplex, align 4
  %duplex = getelementptr inbounds %struct.link_config, ptr %lc, i32 0, i32 5
  %27 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %duplex, align 1
  %fc26 = getelementptr inbounds %struct.link_config, ptr %lc, i32 0, i32 7
  %28 = ptrtoint ptr %fc26 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %2, ptr %fc26, align 1
  %ops27 = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 2
  %29 = ptrtoint ptr %ops27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops27, align 4
  %set_speed_duplex_fc = getelementptr inbounds %struct.cmac_ops, ptr %30, i32 0, i32 12
  %31 = ptrtoint ptr %set_speed_duplex_fc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %set_speed_duplex_fc, align 4
  %conv29 = zext i16 %23 to i32
  %conv31 = zext i8 %26 to i32
  %call32 = tail call i32 %32(ptr noundef %mac, i32 noundef %conv29, i32 noundef %conv31, i32 noundef %and) #6
  %33 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %phy, align 4
  %34 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops, align 4
  %set_speed_duplex = getelementptr inbounds %struct.cphy_ops, ptr %35, i32 0, i32 11
  %36 = ptrtoint ptr %set_speed_duplex to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %set_speed_duplex, align 4
  %38 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %speed, align 2
  %conv35 = zext i16 %39 to i32
  %40 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %duplex, align 1
  %conv37 = zext i8 %41 to i32
  %call38 = tail call i32 %37(ptr noundef %phy, i32 noundef %conv35, i32 noundef %conv37) #6
  %42 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops, align 4
  %reset = getelementptr inbounds %struct.cphy_ops, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reset, align 4
  %call40 = tail call i32 %45(ptr noundef %phy, i32 noundef 0) #6
  br label %if.end56

if.else41:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 4, ptr %phy, align 4
  %47 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops, align 4
  %autoneg_enable = getelementptr inbounds %struct.cphy_ops, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %autoneg_enable to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %autoneg_enable, align 4
  %call44 = tail call i32 %50(ptr noundef %phy) #6
  br label %if.end56

if.else46:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 2, ptr %phy, align 4
  %ops48 = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 2
  %52 = ptrtoint ptr %ops48 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops48, align 4
  %set_speed_duplex_fc49 = getelementptr inbounds %struct.cmac_ops, ptr %53, i32 0, i32 12
  %54 = ptrtoint ptr %set_speed_duplex_fc49 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %set_speed_duplex_fc49, align 4
  %call50 = tail call i32 %55(ptr noundef %mac, i32 noundef -1, i32 noundef -1, i32 noundef %and) #6
  %fc52 = getelementptr inbounds %struct.link_config, ptr %lc, i32 0, i32 7
  %56 = ptrtoint ptr %fc52 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %2, ptr %fc52, align 1
  %ops53 = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 8
  %57 = ptrtoint ptr %ops53 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops53, align 4
  %reset54 = getelementptr inbounds %struct.cphy_ops, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %reset54 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reset54, align 4
  %call55 = tail call i32 %60(ptr noundef %phy, i32 noundef 0) #6
  br label %if.end56

if.end56:                                         ; preds = %if.else46, %if.else41, %if.then24
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t1_elmer0_ext_intr_handler(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %cause = alloca i32, align 4
  %mod_detect = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cause) #6
  %0 = ptrtoint ptr %cause to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cause, align 4, !annotation !104
  %tpi_lock.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %tpi_lock.i) #6
  %call.i = call i32 @__t1_tpi_read(ptr noundef %adapter, i32 noundef 1048588, ptr noundef nonnull %cause) #6
  tail call void @_raw_spin_unlock(ptr noundef %tpi_lock.i) #6
  %brd_info = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 4
  %1 = ptrtoint ptr %brd_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %brd_info, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 4
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %4, label %entry.sw.epilog_crit_edge [
    i8 7, label %entry.sw.bb_crit_edge
    i8 9, label %entry.sw.bb_crit_edge148
    i8 10, label %entry.sw.bb_crit_edge149
    i8 8, label %entry.sw.bb_crit_edge150
    i8 4, label %sw.bb9
    i8 2, label %for.cond25.preheader
    i8 6, label %entry.sw.bb44_crit_edge
    i8 1, label %entry.sw.bb44_crit_edge151
    i8 0, label %entry.sw.bb44_crit_edge152
    i8 3, label %entry.sw.bb59_crit_edge
    i8 5, label %entry.sw.bb59_crit_edge153
  ]

entry.sw.bb59_crit_edge153:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb59

entry.sw.bb59_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb59

entry.sw.bb44_crit_edge152:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb44

entry.sw.bb44_crit_edge151:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb44

entry.sw.bb44_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb44

entry.sw.bb_crit_edge150:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge149:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge148:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.cond25.preheader:                             ; preds = %entry
  %nports27 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 6
  %6 = ptrtoint ptr %nports27 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nports27, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp28139.not = icmp eq i32 %7, 0
  br i1 %cmp28139.not, label %for.cond25.preheader.sw.epilog_crit_edge, label %for.cond25.preheader.for.body30_crit_edge

for.cond25.preheader.for.body30_crit_edge:        ; preds = %for.cond25.preheader
  br label %for.body30

for.cond25.preheader.sw.epilog_crit_edge:         ; preds = %for.cond25.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge148, %entry.sw.bb_crit_edge149, %entry.sw.bb_crit_edge150
  %nports = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 6
  %8 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nports, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp142.not = icmp eq i32 %9, 0
  br i1 %cmp142.not, label %sw.bb.sw.epilog_crit_edge, label %for.body.lr.ph

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.body.lr.ph:                                   ; preds = %sw.bb
  %10 = ptrtoint ptr %cause to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cause, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0143 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %add = add nuw i32 %i.0143, 1
  %shl = shl i32 2, %i.0143
  %and = and i32 %11, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %phy3 = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 13, i32 %i.0143, i32 2
  %12 = ptrtoint ptr %phy3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy3, align 8
  %ops = getelementptr inbounds %struct.cphy, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %interrupt_handler = getelementptr inbounds %struct.cphy_ops, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %interrupt_handler to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %interrupt_handler, align 4
  %call4 = tail call i32 %17(ptr noundef %13) #6
  %and5 = and i32 %call4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.for.inc_crit_edge, label %if.then7

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @t1_link_changed(ptr noundef %adapter, i32 noundef %i.0143)
  br label %for.inc

for.inc:                                          ; preds = %if.then7, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %18 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nports, align 8
  %cmp = icmp ult i32 %add, %19
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.sw.epilog_crit_edge

for.inc.sw.epilog_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

sw.bb9:                                           ; preds = %entry
  %20 = ptrtoint ptr %cause to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cause, align 4
  %and10 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %sw.bb9.sw.epilog_crit_edge, label %if.then12

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then12:                                        ; preds = %sw.bb9
  %phy15 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 0, i32 2
  %22 = ptrtoint ptr %phy15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phy15, align 8
  %ops16 = getelementptr inbounds %struct.cphy, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %ops16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops16, align 4
  %interrupt_handler17 = getelementptr inbounds %struct.cphy_ops, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %interrupt_handler17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %interrupt_handler17, align 4
  %call18 = tail call i32 %27(ptr noundef %23) #6
  %and19 = and i32 %call18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.then12.sw.epilog_crit_edge, label %if.then21

if.then12.sw.epilog_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then21:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @t1_link_changed(ptr noundef %adapter, i32 noundef 0)
  br label %sw.epilog

for.body30:                                       ; preds = %for.inc41.for.body30_crit_edge, %for.cond25.preheader.for.body30_crit_edge
  %p.0140 = phi i32 [ %inc42, %for.inc41.for.body30_crit_edge ], [ 0, %for.cond25.preheader.for.body30_crit_edge ]
  %phy33 = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 13, i32 %p.0140, i32 2
  %28 = ptrtoint ptr %phy33 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %phy33, align 8
  %ops34 = getelementptr inbounds %struct.cphy, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %ops34 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops34, align 4
  %interrupt_handler35 = getelementptr inbounds %struct.cphy_ops, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %interrupt_handler35 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %interrupt_handler35, align 4
  %call36 = tail call i32 %33(ptr noundef %29) #6
  %and37 = and i32 %call36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %for.body30.for.inc41_crit_edge, label %if.then39

for.body30.for.inc41_crit_edge:                   ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc41

if.then39:                                        ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @t1_link_changed(ptr noundef %adapter, i32 noundef %p.0140)
  br label %for.inc41

for.inc41:                                        ; preds = %if.then39, %for.body30.for.inc41_crit_edge
  %inc42 = add nuw i32 %p.0140, 1
  %34 = ptrtoint ptr %nports27 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nports27, align 8
  %cmp28 = icmp ult i32 %inc42, %35
  br i1 %cmp28, label %for.inc41.for.body30_crit_edge, label %for.inc41.sw.epilog_crit_edge

for.inc41.sw.epilog_crit_edge:                    ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.inc41.for.body30_crit_edge:                   ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body30

sw.bb44:                                          ; preds = %entry.sw.bb44_crit_edge, %entry.sw.bb44_crit_edge151, %entry.sw.bb44_crit_edge152
  %36 = ptrtoint ptr %cause to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cause, align 4
  %and45 = and i32 %37, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %sw.bb44.sw.epilog_crit_edge, label %if.then47

sw.bb44.sw.epilog_crit_edge:                      ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then47:                                        ; preds = %sw.bb44
  %phy50 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 0, i32 2
  %38 = ptrtoint ptr %phy50 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %phy50, align 8
  %ops51 = getelementptr inbounds %struct.cphy, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %ops51 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops51, align 4
  %interrupt_handler52 = getelementptr inbounds %struct.cphy_ops, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %interrupt_handler52 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %interrupt_handler52, align 4
  %call53 = tail call i32 %43(ptr noundef %39) #6
  %and54 = and i32 %call53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.then47.sw.epilog_crit_edge, label %if.then56

if.then47.sw.epilog_crit_edge:                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then56:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @t1_link_changed(ptr noundef %adapter, i32 noundef 0)
  br label %sw.epilog

sw.bb59:                                          ; preds = %entry.sw.bb59_crit_edge, %entry.sw.bb59_crit_edge153
  %msg_enable = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 6
  %44 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %msg_enable, align 8
  %and60 = and i32 %45, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %sw.bb59.if.end69_crit_edge, label %do.body

sw.bb59.if.end69_crit_edge:                       ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

do.body:                                          ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @t1_elmer0_ext_intr_handler.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@t1_elmer0_ext_intr_handler, %if.then67)) #6
          to label %if.end69 [label %if.then67], !srcloc !105

if.then67:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 1
  %46 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %48 = ptrtoint ptr %cause to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cause, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @t1_elmer0_ext_intr_handler.__UNIQUE_ID_ddebug353, ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %49) #6
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %do.body, %sw.bb59.if.end69_crit_edge
  %50 = ptrtoint ptr %cause to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cause, align 4
  %and70 = and i32 %51, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end69.if.end79_crit_edge, label %if.then72

if.end69.if.end79_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

if.then72:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  %mac75 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 0, i32 1
  %52 = ptrtoint ptr %mac75 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mac75, align 4
  %ops76 = getelementptr inbounds %struct.cmac, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %ops76 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops76, align 4
  %interrupt_handler77 = getelementptr inbounds %struct.cmac_ops, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %interrupt_handler77 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %interrupt_handler77, align 4
  %call78 = tail call i32 %57(ptr noundef %53) #6
  br label %if.end79

if.end79:                                         ; preds = %if.then72, %if.end69.if.end79_crit_edge
  %and80 = and i32 %51, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.end79.sw.epilog_crit_edge, label %if.then82

if.end79.sw.epilog_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then82:                                        ; preds = %if.end79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mod_detect) #6
  %58 = ptrtoint ptr %mod_detect to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -1, ptr %mod_detect, align 4, !annotation !104
  tail call void @_raw_spin_lock(ptr noundef %tpi_lock.i) #6
  %call.i134 = call i32 @__t1_tpi_read(ptr noundef %adapter, i32 noundef 1048596, ptr noundef nonnull %mod_detect) #6
  tail call void @_raw_spin_unlock(ptr noundef %tpi_lock.i) #6
  %59 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %msg_enable, align 8
  %and85 = and i32 %60, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.then82.if.end94_crit_edge, label %do.end90

if.then82.if.end94_crit_edge:                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94

do.end90:                                         ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #8
  %pdev91 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 1
  %61 = ptrtoint ptr %pdev91 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pdev91, align 4
  %dev92 = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  %63 = ptrtoint ptr %mod_detect to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mod_detect, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool93.not = icmp eq i32 %64, 0
  %cond = select i1 %tobool93.not, ptr @.str.14, ptr @.str.13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev92, ptr noundef nonnull @.str.10, ptr noundef nonnull %cond) #9
  br label %if.end94

if.end94:                                         ; preds = %do.end90, %if.then82.if.end94_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mod_detect) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end94, %if.end79.sw.epilog_crit_edge, %if.then56, %if.then47.sw.epilog_crit_edge, %sw.bb44.sw.epilog_crit_edge, %for.inc41.sw.epilog_crit_edge, %if.then21, %if.then12.sw.epilog_crit_edge, %sw.bb9.sw.epilog_crit_edge, %for.inc.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %for.cond25.preheader.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %65 = ptrtoint ptr %cause to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cause, align 4
  tail call void @_raw_spin_lock(ptr noundef %tpi_lock.i) #6
  %call.i136 = tail call i32 @__t1_tpi_write(ptr noundef %adapter, i32 noundef 1048588, i32 noundef %66) #6
  tail call void @_raw_spin_unlock(ptr noundef %tpi_lock.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cause) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t1_interrupts_enable(ptr nocapture noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %slow_intr_mask = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 22
  %0 = ptrtoint ptr %slow_intr_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 65, ptr %slow_intr_mask, align 16
  %sge = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 9
  %1 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sge, align 8
  tail call void @t1_sge_intr_enable(ptr noundef %2) #6
  %tp = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 11
  %3 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tp, align 16
  tail call void @t1_tp_intr_enable(ptr noundef %4) #6
  %espi = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10
  %5 = ptrtoint ptr %espi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %espi, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %slow_intr_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %slow_intr_mask, align 16
  %or = or i32 %8, 256
  store i32 %or, ptr %slow_intr_mask, align 16
  tail call void @t1_espi_intr_enable(ptr noundef nonnull %6) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %nports = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 6
  %9 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nports, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp47.not = icmp eq i32 %10, 0
  br i1 %cmp47.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.048 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %mac = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 13, i32 %i.048, i32 1
  %11 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mac, align 4
  %ops = getelementptr inbounds %struct.cmac, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %interrupt_enable = getelementptr inbounds %struct.cmac_ops, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %interrupt_enable to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %interrupt_enable, align 4
  %call = tail call i32 %16(ptr noundef %12) #6
  %phy = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 13, i32 %i.048, i32 2
  %17 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phy, align 8
  %ops8 = getelementptr inbounds %struct.cphy, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %ops8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops8, align 4
  %interrupt_enable9 = getelementptr inbounds %struct.cphy_ops, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %interrupt_enable9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %interrupt_enable9, align 4
  %call13 = tail call i32 %22(ptr noundef %18) #6
  %inc = add nuw i32 %i.048, 1
  %23 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nports, align 8
  %cmp = icmp ult i32 %inc, %24
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %is_asic.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 10
  %25 = ptrtoint ptr %is_asic.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %is_asic.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool15.not = icmp eq i8 %26, 0
  br i1 %tobool15.not, label %for.end.if.end25_crit_edge, label %if.then16

for.end.if.end25_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then16:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter, align 128
  %add.ptr = getelementptr i8, ptr %28, i32 2560
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  %pdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 1
  %30 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev, align 4
  %call19 = tail call i32 @pci_write_config_dword(ptr noundef %31, i32 noundef 244, i32 noundef -1) #6
  %32 = ptrtoint ptr %slow_intr_mask to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %slow_intr_mask, align 16
  %or21 = or i32 %33, 3072
  store i32 %or21, ptr %slow_intr_mask, align 16
  %34 = or i32 %29, 786432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  tail call void @arm_heavy_mb() #6
  %35 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %adapter, align 128
  %add.ptr24 = getelementptr i8, ptr %36, i32 2560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %34) #6, !srcloc !96
  br label %if.end25

if.end25:                                         ; preds = %if.then16, %for.end.if.end25_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @t1_sge_intr_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t1_tp_intr_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t1_espi_intr_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t1_interrupts_disable(ptr nocapture noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sge = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 9
  %0 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sge, align 8
  tail call void @t1_sge_intr_disable(ptr noundef %1) #6
  %tp = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 11
  %2 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tp, align 16
  tail call void @t1_tp_intr_disable(ptr noundef %3) #6
  %espi = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10
  %4 = ptrtoint ptr %espi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %espi, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @t1_espi_intr_disable(ptr noundef nonnull %5) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %nports = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 6
  %6 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nports, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp35.not = icmp eq i32 %7, 0
  br i1 %cmp35.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.036 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %mac = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 13, i32 %i.036, i32 1
  %8 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mac, align 4
  %ops = getelementptr inbounds %struct.cmac, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %interrupt_disable = getelementptr inbounds %struct.cmac_ops, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %interrupt_disable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %interrupt_disable, align 4
  %call = tail call i32 %13(ptr noundef %9) #6
  %phy = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 13, i32 %i.036, i32 2
  %14 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy, align 8
  %ops7 = getelementptr inbounds %struct.cphy, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %ops7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops7, align 4
  %interrupt_disable8 = getelementptr inbounds %struct.cphy_ops, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %interrupt_disable8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %interrupt_disable8, align 4
  %call12 = tail call i32 %19(ptr noundef %15) #6
  %inc = add nuw i32 %i.036, 1
  %20 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nports, align 8
  %cmp = icmp ult i32 %inc, %21
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %is_asic.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 10
  %22 = ptrtoint ptr %is_asic.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %is_asic.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool14.not = icmp eq i8 %23, 0
  br i1 %tobool14.not, label %for.end.if.end16_crit_edge, label %do.body

for.end.if.end16_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

do.body:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  %24 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter, align 128
  %add.ptr = getelementptr i8, ptr %25, i32 2560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !96
  br label %if.end16

if.end16:                                         ; preds = %do.body, %for.end.if.end16_crit_edge
  %pdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 1
  %26 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev, align 4
  %call17 = tail call i32 @pci_write_config_dword(ptr noundef %27, i32 noundef 244, i32 noundef 0) #6
  %slow_intr_mask = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 22
  %28 = ptrtoint ptr %slow_intr_mask to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %slow_intr_mask, align 16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @t1_sge_intr_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t1_tp_intr_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t1_espi_intr_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t1_interrupts_clear(ptr nocapture noundef readonly %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sge = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 9
  %0 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sge, align 8
  tail call void @t1_sge_intr_clear(ptr noundef %1) #6
  %tp = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 11
  %2 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tp, align 16
  tail call void @t1_tp_intr_clear(ptr noundef %3) #6
  %espi = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10
  %4 = ptrtoint ptr %espi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %espi, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @t1_espi_intr_clear(ptr noundef nonnull %5) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %nports = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 6
  %6 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nports, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp40.not = icmp eq i32 %7, 0
  br i1 %cmp40.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.041 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %mac = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 13, i32 %i.041, i32 1
  %8 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mac, align 4
  %ops = getelementptr inbounds %struct.cmac, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %interrupt_clear = getelementptr inbounds %struct.cmac_ops, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %interrupt_clear to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %interrupt_clear, align 4
  %call = tail call i32 %13(ptr noundef %9) #6
  %phy = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 13, i32 %i.041, i32 2
  %14 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy, align 8
  %ops7 = getelementptr inbounds %struct.cphy, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %ops7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops7, align 4
  %interrupt_clear8 = getelementptr inbounds %struct.cphy_ops, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %interrupt_clear8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %interrupt_clear8, align 4
  %call12 = tail call i32 %19(ptr noundef %15) #6
  %inc = add nuw i32 %i.041, 1
  %20 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nports, align 8
  %cmp = icmp ult i32 %inc, %21
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %is_asic.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 10
  %22 = ptrtoint ptr %is_asic.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %is_asic.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool14.not = icmp eq i8 %23, 0
  br i1 %tobool14.not, label %for.end.if.end21_crit_edge, label %if.then15

for.end.if.end21_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then15:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter, align 128
  %add.ptr = getelementptr i8, ptr %25, i32 2564
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %27 = or i32 %26, 786432
  %28 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adapter, align 128
  %add.ptr20 = getelementptr i8, ptr %29, i32 2564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %27) #6, !srcloc !96
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %for.end.if.end21_crit_edge
  %pdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 1
  %30 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev, align 4
  %call22 = tail call i32 @pci_write_config_dword(ptr noundef %31, i32 noundef 248, i32 noundef -1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @t1_sge_intr_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t1_tp_intr_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t1_espi_intr_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t1_slow_intr_handler(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %pcix_cause.i.i5 = alloca i32, align 4
  %pcix_cause.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %is_asic.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 10
  %0 = ptrtoint ptr %is_asic.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_asic.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 128
  %add.ptr.i = getelementptr i8, ptr %3, i32 2564
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  %5 = and i32 %4, -33554433
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  %and2.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %if.then.if.end5.i_crit_edge, label %if.then.i

if.then.if.end5.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %sge.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 9
  %7 = ptrtoint ptr %sge.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sge.i, align 8
  %call3.i = tail call zeroext i1 @t1_sge_intr_error_handler(ptr noundef %8) #6
  %spec.select.i = select i1 %call3.i, i32 2, i32 0
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then.i, %if.then.if.end5.i_crit_edge
  %ret.0.i = phi i32 [ 0, %if.then.if.end5.i_crit_edge ], [ %spec.select.i, %if.then.i ]
  %and6.i = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end5.i.if.end10.i_crit_edge, label %if.then8.i

if.end5.i.if.end10.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.end5.i
  %9 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adapter, align 128
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 2612
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !99
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  %nports.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 6
  %13 = ptrtoint ptr %nports.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nports.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp1.not.i.i = icmp eq i32 %14, 0
  br i1 %cmp1.not.i.i, label %if.then8.i.fpga_phy_intr_handler.exit.i_crit_edge, label %if.then8.i.for.body.i.i_crit_edge

if.then8.i.for.body.i.i_crit_edge:                ; preds = %if.then8.i
  br label %for.body.i.i

if.then8.i.fpga_phy_intr_handler.exit.i_crit_edge: ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fpga_phy_intr_handler.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then8.i.for.body.i.i_crit_edge
  %p.02.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then8.i.for.body.i.i_crit_edge ]
  %shl.i.i = shl nuw i32 1, %p.02.i.i
  %and.i.i = and i32 %shl.i.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %phy2.i.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 13, i32 %p.02.i.i, i32 2
  %15 = ptrtoint ptr %phy2.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phy2.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.cphy, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i.i, align 4
  %interrupt_handler.i.i = getelementptr inbounds %struct.cphy_ops, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %interrupt_handler.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %interrupt_handler.i.i, align 4
  %call3.i.i = tail call i32 %20(ptr noundef %16) #6
  %and4.i.i = and i32 %call3.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.then.i.i.for.inc.i.i_crit_edge, label %if.then6.i.i

if.then.i.i.for.inc.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.then6.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @t1_link_changed(ptr noundef %adapter, i32 noundef %p.02.i.i) #6
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then6.i.i, %if.then.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %p.02.i.i, 1
  %21 = ptrtoint ptr %nports.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nports.i.i, align 8
  %cmp.i.i = icmp ult i32 %inc.i.i, %22
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.fpga_phy_intr_handler.exit.i_crit_edge

for.inc.i.i.fpga_phy_intr_handler.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fpga_phy_intr_handler.exit.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

fpga_phy_intr_handler.exit.i:                     ; preds = %for.inc.i.i.fpga_phy_intr_handler.exit.i_crit_edge, %if.then8.i.fpga_phy_intr_handler.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %23 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter, align 128
  %add.ptr9.i.i = getelementptr i8, ptr %24, i32 2612
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 %11) #6, !srcloc !96
  br label %if.end10.i

if.end10.i:                                       ; preds = %fpga_phy_intr_handler.exit.i, %if.end5.i.if.end10.i_crit_edge
  %and11.i = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end10.i.if.end23.i_crit_edge, label %if.then13.i

if.end10.i.if.end23.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter, align 128
  %add.ptr17.i = getelementptr i8, ptr %26, i32 2580
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adapter, align 128
  %add.ptr22.i = getelementptr i8, ptr %29, i32 2580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %27) #6, !srcloc !96
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then13.i, %if.end10.i.if.end23.i_crit_edge
  %and24.i = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end23.i.if.end30.i_crit_edge, label %if.then26.i

if.end23.i.if.end30.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30.i

if.then26.i:                                      ; preds = %if.end23.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcix_cause.i.i) #6
  %30 = ptrtoint ptr %pcix_cause.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %pcix_cause.i.i, align 4, !annotation !104
  %pdev.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 1
  %31 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev.i.i, align 4
  %call.i.i = call i32 @pci_read_config_dword(ptr noundef %32, i32 noundef 248, ptr noundef nonnull %pcix_cause.i.i) #6
  %33 = ptrtoint ptr %pcix_cause.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pcix_cause.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i58.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i58.i, label %if.then26.i.t1_pci_intr_handler.exit.i_crit_edge, label %if.then.i60.i

if.then26.i.t1_pci_intr_handler.exit.i_crit_edge: ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %t1_pci_intr_handler.exit.i

if.then.i60.i:                                    ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev.i.i, align 4
  %call2.i.i = call i32 @pci_write_config_dword(ptr noundef %36, i32 noundef 248, i32 noundef %34) #6
  call void @t1_interrupts_disable(ptr noundef %adapter) #6
  %pending_thread_intr.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 21
  %37 = ptrtoint ptr %pending_thread_intr.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pending_thread_intr.i.i, align 4
  %or.i.i = or i32 %38, 1
  store i32 %or.i.i, ptr %pending_thread_intr.i.i, align 4
  %name.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 5
  %39 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %name.i.i, align 4
  %call3.i59.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %40) #9
  br label %t1_pci_intr_handler.exit.i

t1_pci_intr_handler.exit.i:                       ; preds = %if.then.i60.i, %if.then26.i.t1_pci_intr_handler.exit.i_crit_edge
  %spec.select57.i = phi i32 [ %ret.0.i, %if.then26.i.t1_pci_intr_handler.exit.i_crit_edge ], [ 2, %if.then.i60.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcix_cause.i.i) #6
  br label %if.end30.i

if.end30.i:                                       ; preds = %t1_pci_intr_handler.exit.i, %if.end23.i.if.end30.i_crit_edge
  %ret.1.i = phi i32 [ %ret.0.i, %if.end23.i.if.end30.i_crit_edge ], [ %spec.select57.i, %t1_pci_intr_handler.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool31.not.i = icmp eq i32 %5, 0
  br i1 %tobool31.not.i, label %if.end30.i.fpga_slow_intr.exit_crit_edge, label %do.body33.i

if.end30.i.fpga_slow_intr.exit_crit_edge:         ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fpga_slow_intr.exit

do.body33.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  call void @arm_heavy_mb() #6
  %41 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %adapter, align 128
  %add.ptr37.i = getelementptr i8, ptr %42, i32 2564
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i, i32 %5) #6, !srcloc !96
  br label %fpga_slow_intr.exit

fpga_slow_intr.exit:                              ; preds = %do.body33.i, %if.end30.i.fpga_slow_intr.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %cmp.not.i = icmp eq i32 %ret.1.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp41.i = icmp ne i32 %5, 0
  %cond.i = zext i1 %cmp41.i to i32
  %retval.0.i = select i1 %cmp.not.i, i32 %cond.i, i32 %ret.1.i
  br label %return

if.end:                                           ; preds = %entry
  %43 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  %slow_intr_mask.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 22
  %44 = ptrtoint ptr %slow_intr_mask.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %slow_intr_mask.i, align 16
  %and.i = and i32 %45, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i7 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i7, label %if.end.return_crit_edge, label %if.end.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.i:                                         ; preds = %if.end
  %and2.i8 = and i32 %and.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i8)
  %tobool3.not.i = icmp eq i32 %and2.i8, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then4.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %sge.i9 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 9
  %46 = ptrtoint ptr %sge.i9 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sge.i9, align 8
  %call5.i = tail call zeroext i1 @t1_sge_intr_error_handler(ptr noundef %47) #6
  %spec.select.i10 = select i1 %call5.i, i32 2, i32 1
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then4.i, %if.end.i.if.end8.i_crit_edge
  %ret.0.i11 = phi i32 [ 1, %if.end.i.if.end8.i_crit_edge ], [ %spec.select.i10, %if.then4.i ]
  %and9.i = and i32 %and.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end8.i.if.end13.i_crit_edge, label %if.then11.i

if.end8.i.if.end13.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %tp.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 11
  %48 = ptrtoint ptr %tp.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tp.i, align 16
  %call12.i = tail call i32 @t1_tp_intr_handler(ptr noundef %49) #6
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %if.end8.i.if.end13.i_crit_edge
  %and14.i = and i32 %and.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end13.i.if.end18.i_crit_edge, label %if.then16.i

if.end13.i.if.end18.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

if.then16.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %espi.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10
  %50 = ptrtoint ptr %espi.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %espi.i, align 4
  %call17.i = tail call i32 @t1_espi_intr_handler(ptr noundef %51) #6
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then16.i, %if.end13.i.if.end18.i_crit_edge
  %and19.i = and i32 %and.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.end18.i.if.end25.i_crit_edge, label %if.then21.i

if.end18.i.if.end25.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.i

if.then21.i:                                      ; preds = %if.end18.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcix_cause.i.i5) #6
  %52 = ptrtoint ptr %pcix_cause.i.i5 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %pcix_cause.i.i5, align 4, !annotation !104
  %pdev.i.i12 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 1
  %53 = ptrtoint ptr %pdev.i.i12 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pdev.i.i12, align 4
  %call.i.i13 = call i32 @pci_read_config_dword(ptr noundef %54, i32 noundef 248, ptr noundef nonnull %pcix_cause.i.i5) #6
  %55 = ptrtoint ptr %pcix_cause.i.i5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pcix_cause.i.i5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i.i14 = icmp eq i32 %56, 0
  br i1 %tobool.not.i.i14, label %if.then21.i.t1_pci_intr_handler.exit.i21_crit_edge, label %if.then.i.i20

if.then21.i.t1_pci_intr_handler.exit.i21_crit_edge: ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %t1_pci_intr_handler.exit.i21

if.then.i.i20:                                    ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %pdev.i.i12 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pdev.i.i12, align 4
  %call2.i.i15 = call i32 @pci_write_config_dword(ptr noundef %58, i32 noundef 248, i32 noundef %56) #6
  call void @t1_interrupts_disable(ptr noundef %adapter) #6
  %pending_thread_intr.i.i16 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 21
  %59 = ptrtoint ptr %pending_thread_intr.i.i16 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pending_thread_intr.i.i16, align 4
  %or.i.i17 = or i32 %60, 1
  store i32 %or.i.i17, ptr %pending_thread_intr.i.i16, align 4
  %name.i.i18 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 5
  %61 = ptrtoint ptr %name.i.i18 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %name.i.i18, align 4
  %call3.i.i19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %62) #9
  br label %t1_pci_intr_handler.exit.i21

t1_pci_intr_handler.exit.i21:                     ; preds = %if.then.i.i20, %if.then21.i.t1_pci_intr_handler.exit.i21_crit_edge
  %spec.select67.i = phi i32 [ %ret.0.i11, %if.then21.i.t1_pci_intr_handler.exit.i21_crit_edge ], [ 2, %if.then.i.i20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcix_cause.i.i5) #6
  br label %if.end25.i

if.end25.i:                                       ; preds = %t1_pci_intr_handler.exit.i21, %if.end18.i.if.end25.i_crit_edge
  %ret.1.i22 = phi i32 [ %ret.0.i11, %if.end18.i.if.end25.i_crit_edge ], [ %spec.select67.i, %t1_pci_intr_handler.exit.i21 ]
  %and26.i = and i32 %and.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.end25.i.do.body36.i_crit_edge, label %if.then28.i

if.end25.i.do.body36.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body36.i

if.then28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  %pending_thread_intr.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 21
  %63 = ptrtoint ptr %pending_thread_intr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pending_thread_intr.i, align 4
  %or.i = or i32 %64, 2048
  store i32 %or.i, ptr %pending_thread_intr.i, align 4
  %65 = ptrtoint ptr %slow_intr_mask.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %slow_intr_mask.i, align 16
  %and30.i = and i32 %66, -2049
  store i32 %and30.i, ptr %slow_intr_mask.i, align 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  call void @arm_heavy_mb() #6
  %67 = ptrtoint ptr %slow_intr_mask.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %slow_intr_mask.i, align 16
  %or32.i = or i32 %68, 2
  %69 = call i32 @llvm.bswap.i32(i32 %or32.i) #6
  %70 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %adapter, align 128
  %add.ptr34.i = getelementptr i8, ptr %71, i32 2560
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 %69) #6, !srcloc !96
  br label %do.body36.i

do.body36.i:                                      ; preds = %if.then28.i, %if.end25.i.do.body36.i_crit_edge
  %ret.2.i = phi i32 [ 2, %if.then28.i ], [ %ret.1.i22, %if.end25.i.do.body36.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  call void @arm_heavy_mb() #6
  %72 = call i32 @llvm.bswap.i32(i32 %and.i) #6
  %73 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %adapter, align 128
  %add.ptr40.i = getelementptr i8, ptr %74, i32 2564
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i, i32 %72) #6, !srcloc !96
  %75 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %adapter, align 128
  %add.ptr44.i = getelementptr i8, ptr %76, i32 2564
  %77 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44.i) #6, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  br label %return

return:                                           ; preds = %do.body36.i, %if.end.return_crit_edge, %fpga_slow_intr.exit
  %retval.0 = phi i32 [ %retval.0.i, %fpga_slow_intr.exit ], [ %ret.2.i, %do.body36.i ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t1_get_board_rev(ptr nocapture noundef readonly %adapter, ptr nocapture noundef readonly %bi, ptr nocapture noundef writeonly %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_term = getelementptr inbounds %struct.board_info, ptr %bi, i32 0, i32 3
  %0 = ptrtoint ptr %chip_term to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %chip_term, align 4
  %chip_version = getelementptr inbounds %struct.adapter_params, ptr %p, i32 0, i32 9
  %2 = ptrtoint ptr %chip_version to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %chip_version, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp ne i8 %1, 0
  %conv3 = zext i1 %cmp to i8
  %is_asic = getelementptr inbounds %struct.adapter_params, ptr %p, i32 0, i32 10
  %3 = ptrtoint ptr %is_asic to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv3, ptr %is_asic, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %switch38 = icmp ult i8 %1, 3
  br i1 %switch38, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 128
  %add.ptr = getelementptr i8, ptr %5, i32 840
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  %7 = lshr i32 %6, 6
  %shr = and i32 %7, 3
  %8 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %shr, label %if.then.return_crit_edge [
    i32 2, label %if.then.return.sink.split_crit_edge
    i32 3, label %if.then23
  ]

if.then.return.sink.split_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then23:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

return.sink.split:                                ; preds = %if.then23, %if.then.return.sink.split_crit_edge
  %.sink = phi i16 [ 3, %if.then23 ], [ 1, %if.then.return.sink.split_crit_edge ]
  %chip_revision24 = getelementptr inbounds %struct.adapter_params, ptr %p, i32 0, i32 8
  %9 = ptrtoint ptr %chip_revision24 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %.sink, ptr %chip_revision24, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ -1, %entry.return_crit_edge ], [ -1, %if.then.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t1_init_hw_modules(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8
  %brd_info = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 4
  %0 = ptrtoint ptr %brd_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %brd_info, align 4
  %clock_mc4 = getelementptr inbounds %struct.board_info, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %clock_mc4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clock_mc4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 128
  %add.ptr = getelementptr i8, ptr %5, i32 384
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %7 = or i32 %6, 33554434
  %8 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter, align 128
  %add.ptr4 = getelementptr i8, ptr %9, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %7) #6, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 128
  %add.ptr9 = getelementptr i8, ptr %11, i32 3076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 570425344) #6, !srcloc !96
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %espi = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10
  %12 = ptrtoint ptr %espi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %espi, align 4
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %if.end.if.end15_crit_edge, label %land.lhs.true

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %chip_mac = getelementptr inbounds %struct.board_info, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %chip_mac to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %chip_mac, align 1
  %conv = zext i8 %15 to i32
  %espi_nports = getelementptr inbounds %struct.board_info, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %espi_nports to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %espi_nports, align 4
  %call12 = tail call i32 @t1_espi_init(ptr noundef nonnull %13, i32 noundef %conv, i32 noundef %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true.if.end15_crit_edge, label %land.lhs.true.out_err_crit_edge

land.lhs.true.out_err_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %tp = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 11
  %18 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tp, align 16
  %tp17 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 2
  %clock_core = getelementptr inbounds %struct.board_info, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %clock_core to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %clock_core, align 4
  %call18 = tail call i32 @t1_tp_reset(ptr noundef %19, ptr noundef %tp17, i32 noundef %21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end15.out_err_crit_edge

if.end15.out_err_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err

if.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %sge = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 9
  %22 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sge, align 8
  %call24 = tail call i32 @t1_sge_configure(ptr noundef %23, ptr noundef %params) #6
  br label %out_err

out_err:                                          ; preds = %if.end21, %if.end15.out_err_crit_edge, %land.lhs.true.out_err_crit_edge
  %err.0 = phi i32 [ -5, %land.lhs.true.out_err_crit_edge ], [ -5, %if.end15.out_err_crit_edge ], [ %call24, %if.end21 ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t1_espi_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t1_tp_reset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t1_sge_configure(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t1_free_sw_modules(ptr nocapture noundef readonly %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nports = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 6
  %0 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nports, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp41.not = icmp eq i32 %1, 0
  br i1 %cmp41.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %entry.for.body_crit_edge
  %i.042 = phi i32 [ %inc, %if.end9.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mac1 = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 13, i32 %i.042, i32 1
  %2 = ptrtoint ptr %mac1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac1, align 4
  %phy4 = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 13, i32 %i.042, i32 2
  %4 = ptrtoint ptr %phy4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy4, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %ops = getelementptr inbounds %struct.cmac, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void %9(ptr noundef nonnull %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %ops7 = getelementptr inbounds %struct.cphy, ptr %5, i32 0, i32 8
  %10 = ptrtoint ptr %ops7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops7, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  tail call void %13(ptr noundef nonnull %5) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %inc = add nuw i32 %i.042, 1
  %14 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nports, align 8
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %if.end9.for.body_crit_edge, label %if.end9.for.end_crit_edge

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end9.for.end_crit_edge, %entry.for.end_crit_edge
  %sge = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 9
  %16 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sge, align 8
  %tobool10.not = icmp eq ptr %17, null
  br i1 %tobool10.not, label %for.end.if.end13_crit_edge, label %if.then11

for.end.if.end13_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then11:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @t1_sge_destroy(ptr noundef nonnull %17) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %for.end.if.end13_crit_edge
  %tp = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 11
  %18 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tp, align 16
  %tobool14.not = icmp eq ptr %19, null
  br i1 %tobool14.not, label %if.end13.if.end17_crit_edge, label %if.then15

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @t1_tp_destroy(ptr noundef nonnull %19) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end13.if.end17_crit_edge
  %espi = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10
  %20 = ptrtoint ptr %espi to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %espi, align 4
  %tobool18.not = icmp eq ptr %21, null
  br i1 %tobool18.not, label %if.end17.if.end21_crit_edge, label %if.then19

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @t1_espi_destroy(ptr noundef nonnull %21) #6
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end17.if.end21_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @t1_sge_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t1_tp_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t1_espi_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t1_init_sw_modules(ptr noundef %adapter, ptr noundef %bi) local_unnamed_addr #0 align 64 {
entry:
  %pci_mode.i = alloca i32, align 4
  %vpd.i = alloca %struct.chelsio_vpd_t, align 4
  %mod_detect.i.i = alloca i32, align 4
  %gpo.i.i = alloca i32, align 4
  %hw_addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8
  %brd_info = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 4
  %0 = ptrtoint ptr %brd_info to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %bi, ptr %brd_info, align 4
  %port_number = getelementptr inbounds %struct.board_info, ptr %bi, i32 0, i32 1
  %1 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %port_number, align 1
  %conv = zext i8 %2 to i32
  %nports = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 6
  %3 = ptrtoint ptr %nports to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %nports, align 8
  %gmac = getelementptr inbounds %struct.board_info, ptr %bi, i32 0, i32 15
  %4 = ptrtoint ptr %gmac to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gmac, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %stats_update_period3 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 7
  %8 = ptrtoint ptr %stats_update_period3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %stats_update_period3, align 4
  %call = tail call ptr @t1_sge_create(ptr noundef %adapter, ptr noundef %params) #6
  %sge5 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 9
  %9 = ptrtoint ptr %sge5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %sge5, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 5
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %11) #9
  br label %error

if.end:                                           ; preds = %entry
  %espi_nports = getelementptr inbounds %struct.board_info, ptr %bi, i32 0, i32 9
  %12 = ptrtoint ptr %espi_nports to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %espi_nports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool8.not = icmp eq i32 %13, 0
  br i1 %tobool8.not, label %if.end.if.end18_crit_edge, label %land.lhs.true

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end
  %call9 = tail call ptr @t1_espi_create(ptr noundef %adapter) #6
  %espi = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10
  %14 = ptrtoint ptr %espi to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call9, ptr %espi, align 4
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %do.end14, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

do.end14:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %name16 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 5
  %15 = ptrtoint ptr %name16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name16, align 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %16) #9
  br label %error

if.end18:                                         ; preds = %land.lhs.true.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %tp = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 2
  %call20 = tail call ptr @t1_tp_create(ptr noundef %adapter, ptr noundef %tp) #6
  %tp21 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 11
  %17 = ptrtoint ptr %tp21 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call20, ptr %tp21, align 16
  %tobool23.not = icmp eq ptr %call20, null
  br i1 %tobool23.not, label %do.end27, label %if.end31

do.end27:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %name29 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 5
  %18 = ptrtoint ptr %name29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name29, align 4
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %19) #9
  br label %error

if.end31:                                         ; preds = %if.end18
  %20 = ptrtoint ptr %bi to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bi, align 4
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %21, label %if.end31.board_init.exit_crit_edge [
    i8 3, label %if.end31.sw.bb.i_crit_edge
    i8 0, label %if.end31.sw.bb.i_crit_edge232
    i8 1, label %if.end31.sw.bb.i_crit_edge233
    i8 6, label %if.end31.sw.bb.i_crit_edge234
    i8 5, label %sw.bb1.i
    i8 9, label %if.end31.sw.bb3.i_crit_edge
    i8 7, label %if.end31.sw.bb3.i_crit_edge235
    i8 8, label %if.end31.sw.bb3.i_crit_edge236
    i8 10, label %if.end31.sw.bb3.i_crit_edge237
    i8 4, label %if.end31.sw.bb5.i_crit_edge
    i8 2, label %if.end31.sw.bb5.i_crit_edge238
  ]

if.end31.sw.bb5.i_crit_edge238:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5.i

if.end31.sw.bb5.i_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5.i

if.end31.sw.bb3.i_crit_edge237:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i

if.end31.sw.bb3.i_crit_edge236:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i

if.end31.sw.bb3.i_crit_edge235:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i

if.end31.sw.bb3.i_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i

if.end31.sw.bb.i_crit_edge234:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end31.sw.bb.i_crit_edge233:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end31.sw.bb.i_crit_edge232:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end31.sw.bb.i_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end31.board_init.exit_crit_edge:               ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %board_init.exit

sw.bb.i:                                          ; preds = %if.end31.sw.bb.i_crit_edge, %if.end31.sw.bb.i_crit_edge232, %if.end31.sw.bb.i_crit_edge233, %if.end31.sw.bb.i_crit_edge234
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  %23 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter, align 128
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 668
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 251658240) #6, !srcloc !96
  %tpi_lock.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %tpi_lock.i.i) #6
  %call.i.i = tail call i32 @__t1_tpi_write(ptr noundef %adapter, i32 noundef 1048600, i32 noundef 2048) #6
  tail call void @_raw_spin_unlock(ptr noundef %tpi_lock.i.i) #6
  br label %board_init.exit

sw.bb1.i:                                         ; preds = %if.end31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter, align 128
  %add.ptr.i1.i = getelementptr i8, ptr %26, i32 668
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i, i32 251658240) #6, !srcloc !96
  %tpi_lock.i2.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %tpi_lock.i2.i) #6
  %call.i3.i = tail call i32 @__t1_tpi_write(ptr noundef %adapter, i32 noundef 1048600, i32 noundef 6144) #6
  tail call void @_raw_spin_unlock(ptr noundef %tpi_lock.i2.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mod_detect.i.i) #6
  %27 = ptrtoint ptr %mod_detect.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %mod_detect.i.i, align 4, !annotation !104
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpo.i.i) #6
  %28 = ptrtoint ptr %gpo.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %gpo.i.i, align 4, !annotation !104
  tail call void @_raw_spin_lock(ptr noundef %tpi_lock.i2.i) #6
  %call.i.i.i = call i32 @__t1_tpi_read(ptr noundef %adapter, i32 noundef 1048596, ptr noundef nonnull %mod_detect.i.i) #6
  tail call void @_raw_spin_unlock(ptr noundef %tpi_lock.i2.i) #6
  %29 = ptrtoint ptr %mod_detect.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mod_detect.i.i, align 4
  %and.i.i = and i32 %30, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %sw.bb1.i.power_sequence_xpak.exit.i_crit_edge

sw.bb1.i.power_sequence_xpak.exit.i_crit_edge:    ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %power_sequence_xpak.exit.i

if.then.i.i:                                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_lock(ptr noundef %tpi_lock.i2.i) #6
  %call.i6.i.i = call i32 @__t1_tpi_read(ptr noundef %adapter, i32 noundef 1048600, ptr noundef nonnull %gpo.i.i) #6
  tail call void @_raw_spin_unlock(ptr noundef %tpi_lock.i2.i) #6
  %31 = ptrtoint ptr %gpo.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %gpo.i.i, align 4
  %or.i.i = or i32 %32, 262144
  tail call void @_raw_spin_lock(ptr noundef %tpi_lock.i2.i) #6
  %call.i8.i.i = tail call i32 @__t1_tpi_write(ptr noundef %adapter, i32 noundef 1048600, i32 noundef %or.i.i) #6
  tail call void @_raw_spin_unlock(ptr noundef %tpi_lock.i2.i) #6
  br label %power_sequence_xpak.exit.i

power_sequence_xpak.exit.i:                       ; preds = %if.then.i.i, %sw.bb1.i.power_sequence_xpak.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpo.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mod_detect.i.i) #6
  br label %board_init.exit

sw.bb3.i:                                         ; preds = %if.end31.sw.bb3.i_crit_edge, %if.end31.sw.bb3.i_crit_edge235, %if.end31.sw.bb3.i_crit_edge236, %if.end31.sw.bb3.i_crit_edge237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  %33 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adapter, align 128
  %add.ptr.i4.i = getelementptr i8, ptr %34, i32 668
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 251658240) #6, !srcloc !96
  %tpi_lock.i5.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %tpi_lock.i5.i) #6
  %call.i6.i = tail call i32 @__t1_tpi_write(ptr noundef %adapter, i32 noundef 1048600, i32 noundef 2052) #6
  tail call void @_raw_spin_unlock(ptr noundef %tpi_lock.i5.i) #6
  br label %board_init.exit

sw.bb5.i:                                         ; preds = %if.end31.sw.bb5.i_crit_edge, %if.end31.sw.bb5.i_crit_edge238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  %35 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %adapter, align 128
  %add.ptr.i7.i = getelementptr i8, ptr %36, i32 668
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 251658240) #6, !srcloc !96
  %tpi_lock.i8.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %tpi_lock.i8.i) #6
  %call.i9.i = tail call i32 @__t1_tpi_write(ptr noundef %adapter, i32 noundef 1048600, i32 noundef 6148) #6
  tail call void @_raw_spin_unlock(ptr noundef %tpi_lock.i8.i) #6
  br label %board_init.exit

board_init.exit:                                  ; preds = %sw.bb5.i, %sw.bb3.i, %power_sequence_xpak.exit.i, %sw.bb.i, %if.end31.board_init.exit_crit_edge
  %mdio_ops = getelementptr inbounds %struct.board_info, ptr %bi, i32 0, i32 17
  %37 = ptrtoint ptr %mdio_ops to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mdio_ops, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  tail call void %40(ptr noundef %adapter, ptr noundef %bi) #6
  %gphy = getelementptr inbounds %struct.board_info, ptr %bi, i32 0, i32 16
  %41 = ptrtoint ptr %gphy to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %gphy, align 4
  %reset = getelementptr inbounds %struct.gphy, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reset, align 4
  %tobool33.not = icmp eq ptr %44, null
  br i1 %tobool33.not, label %board_init.exit.if.end38_crit_edge, label %if.then34

board_init.exit.if.end38_crit_edge:               ; preds = %board_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then34:                                        ; preds = %board_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call37 = tail call i32 %44(ptr noundef %adapter) #6
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %board_init.exit.if.end38_crit_edge
  %45 = ptrtoint ptr %gmac to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %gmac, align 4
  %reset40 = getelementptr inbounds %struct.gmac, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %reset40 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reset40, align 4
  %tobool41.not = icmp eq ptr %48, null
  br i1 %tobool41.not, label %if.end38.if.end46_crit_edge, label %if.then42

if.end38.if.end46_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %call45 = tail call i32 %48(ptr noundef %adapter) #6
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.end38.if.end46_crit_edge
  %49 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nports, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp200.not = icmp eq i32 %50, 0
  br i1 %cmp200.not, label %if.end46.for.end_crit_edge, label %for.body.lr.ph

if.end46.for.end_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end46
  %51 = getelementptr inbounds [6 x i8], ptr %hw_addr, i32 0, i32 5
  %mdio_phybaseaddr = getelementptr inbounds %struct.board_info, ptr %bi, i32 0, i32 14
  %is_asic.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 10
  %chip_mac = getelementptr inbounds %struct.board_info, ptr %bi, i32 0, i32 4
  %52 = getelementptr inbounds %struct.chelsio_vpd_t, ptr %vpd.i, i32 0, i32 2
  %53 = getelementptr inbounds %struct.chelsio_vpd_t, ptr %vpd.i, i32 0, i32 2, i32 5
  %caps.i = getelementptr inbounds %struct.board_info, ptr %bi, i32 0, i32 2
  %add.ptr.i.i185.1 = getelementptr inbounds i8, ptr %vpd.i, i32 4
  %add.ptr.i.i185.2 = getelementptr inbounds i8, ptr %vpd.i, i32 8
  %add.ptr.i.i185.3 = getelementptr inbounds i8, ptr %vpd.i, i32 12
  %add.ptr.i.i185.4 = getelementptr inbounds i8, ptr %vpd.i, i32 16
  %add.ptr.i.i185.5 = getelementptr inbounds i8, ptr %vpd.i, i32 20
  %add.ptr.i.i185.6 = getelementptr inbounds i8, ptr %vpd.i, i32 24
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0201 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %hw_addr) #6
  %54 = call ptr @memset(ptr %hw_addr, i32 255, i32 6)
  %55 = ptrtoint ptr %mdio_phybaseaddr to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %mdio_phybaseaddr, align 1
  %conv50 = zext i8 %56 to i32
  %add = add i32 %i.0201, %conv50
  %57 = ptrtoint ptr %gphy to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %gphy, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %arrayidx = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 13, i32 %i.0201
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx, align 8
  %63 = ptrtoint ptr %mdio_ops to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mdio_ops, align 4
  %call53 = call ptr %60(ptr noundef %62, i32 noundef %add, ptr noundef %64) #6
  %phy = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 13, i32 %i.0201, i32 2
  %65 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call53, ptr %phy, align 8
  %tobool59.not = icmp eq ptr %call53, null
  br i1 %tobool59.not, label %do.end63, label %if.end67

do.end63:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %name65 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 5
  %66 = ptrtoint ptr %name65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %name65, align 4
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %67, i32 noundef %i.0201) #9
  br label %cleanup.thread

if.end67:                                         ; preds = %for.body
  %68 = ptrtoint ptr %gmac to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %gmac, align 4
  %create69 = getelementptr inbounds %struct.gmac, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %create69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %create69, align 4
  %call70 = call ptr %71(ptr noundef %adapter, i32 noundef %i.0201) #6
  %mac73 = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 13, i32 %i.0201, i32 1
  %72 = ptrtoint ptr %mac73 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call70, ptr %mac73, align 4
  %tobool74.not = icmp eq ptr %call70, null
  br i1 %tobool74.not, label %do.end78, label %if.end82

do.end78:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  %name80 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 5
  %73 = ptrtoint ptr %name80 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %name80, align 4
  %call81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %74, i32 noundef %i.0201) #9
  br label %cleanup.thread

if.end82:                                         ; preds = %if.end67
  %75 = ptrtoint ptr %is_asic.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %is_asic.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool84.not = icmp eq i8 %76, 0
  br i1 %tobool84.not, label %if.end82.if.then88_crit_edge, label %lor.lhs.false

if.end82.if.then88_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then88

lor.lhs.false:                                    ; preds = %if.end82
  %77 = ptrtoint ptr %chip_mac to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %chip_mac, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %78)
  %cmp86 = icmp eq i8 %78, 4
  br i1 %cmp86, label %lor.lhs.false.if.then88_crit_edge, label %if.else

lor.lhs.false.if.then88_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then88

if.then88:                                        ; preds = %lor.lhs.false.if.then88_crit_edge, %if.end82.if.then88_crit_edge
  %ops = getelementptr inbounds %struct.cmac, ptr %call70, i32 0, i32 2
  %79 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ops, align 4
  %macaddress_get = getelementptr inbounds %struct.cmac_ops, ptr %80, i32 0, i32 15
  %81 = ptrtoint ptr %macaddress_get to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %macaddress_get, align 4
  %call89 = call i32 %82(ptr noundef nonnull %call70, ptr noundef nonnull %hw_addr) #6
  br label %for.inc

if.else:                                          ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %vpd.i) #6
  %83 = call ptr @memset(ptr %vpd.i, i32 255, i32 28)
  %call.i.i186 = call i32 @t1_seeprom_read(ptr noundef %adapter, i32 noundef 0, ptr noundef nonnull %vpd.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i186)
  %tobool.not.i.i187 = icmp eq i32 %call.i.i186, 0
  br i1 %tobool.not.i.i187, label %for.body.i.i.1, label %if.else.t1_eeprom_vpd_get.exit.i_crit_edge

if.else.t1_eeprom_vpd_get.exit.i_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %t1_eeprom_vpd_get.exit.i

for.body.i.i.1:                                   ; preds = %if.else
  %call.i.i186.1 = call i32 @t1_seeprom_read(ptr noundef %adapter, i32 noundef 4, ptr noundef %add.ptr.i.i185.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i186.1)
  %tobool.not.i.i187.1 = icmp eq i32 %call.i.i186.1, 0
  br i1 %tobool.not.i.i187.1, label %for.body.i.i.2, label %for.body.i.i.1.t1_eeprom_vpd_get.exit.i_crit_edge

for.body.i.i.1.t1_eeprom_vpd_get.exit.i_crit_edge: ; preds = %for.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %t1_eeprom_vpd_get.exit.i

for.body.i.i.2:                                   ; preds = %for.body.i.i.1
  %call.i.i186.2 = call i32 @t1_seeprom_read(ptr noundef %adapter, i32 noundef 8, ptr noundef %add.ptr.i.i185.2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i186.2)
  %tobool.not.i.i187.2 = icmp eq i32 %call.i.i186.2, 0
  br i1 %tobool.not.i.i187.2, label %for.body.i.i.3, label %for.body.i.i.2.t1_eeprom_vpd_get.exit.i_crit_edge

for.body.i.i.2.t1_eeprom_vpd_get.exit.i_crit_edge: ; preds = %for.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %t1_eeprom_vpd_get.exit.i

for.body.i.i.3:                                   ; preds = %for.body.i.i.2
  %call.i.i186.3 = call i32 @t1_seeprom_read(ptr noundef %adapter, i32 noundef 12, ptr noundef %add.ptr.i.i185.3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i186.3)
  %tobool.not.i.i187.3 = icmp eq i32 %call.i.i186.3, 0
  br i1 %tobool.not.i.i187.3, label %for.body.i.i.4, label %for.body.i.i.3.t1_eeprom_vpd_get.exit.i_crit_edge

for.body.i.i.3.t1_eeprom_vpd_get.exit.i_crit_edge: ; preds = %for.body.i.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %t1_eeprom_vpd_get.exit.i

for.body.i.i.4:                                   ; preds = %for.body.i.i.3
  %call.i.i186.4 = call i32 @t1_seeprom_read(ptr noundef %adapter, i32 noundef 16, ptr noundef %add.ptr.i.i185.4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i186.4)
  %tobool.not.i.i187.4 = icmp eq i32 %call.i.i186.4, 0
  br i1 %tobool.not.i.i187.4, label %for.body.i.i.5, label %for.body.i.i.4.t1_eeprom_vpd_get.exit.i_crit_edge

for.body.i.i.4.t1_eeprom_vpd_get.exit.i_crit_edge: ; preds = %for.body.i.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %t1_eeprom_vpd_get.exit.i

for.body.i.i.5:                                   ; preds = %for.body.i.i.4
  %call.i.i186.5 = call i32 @t1_seeprom_read(ptr noundef %adapter, i32 noundef 20, ptr noundef %add.ptr.i.i185.5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i186.5)
  %tobool.not.i.i187.5 = icmp eq i32 %call.i.i186.5, 0
  br i1 %tobool.not.i.i187.5, label %for.body.i.i.6, label %for.body.i.i.5.t1_eeprom_vpd_get.exit.i_crit_edge

for.body.i.i.5.t1_eeprom_vpd_get.exit.i_crit_edge: ; preds = %for.body.i.i.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %t1_eeprom_vpd_get.exit.i

for.body.i.i.6:                                   ; preds = %for.body.i.i.5
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i186.6 = call i32 @t1_seeprom_read(ptr noundef %adapter, i32 noundef 24, ptr noundef %add.ptr.i.i185.6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i186.6)
  %tobool.not.i.i187.6 = icmp eq i32 %call.i.i186.6, 0
  br label %t1_eeprom_vpd_get.exit.i

t1_eeprom_vpd_get.exit.i:                         ; preds = %for.body.i.i.6, %for.body.i.i.5.t1_eeprom_vpd_get.exit.i_crit_edge, %for.body.i.i.4.t1_eeprom_vpd_get.exit.i_crit_edge, %for.body.i.i.3.t1_eeprom_vpd_get.exit.i_crit_edge, %for.body.i.i.2.t1_eeprom_vpd_get.exit.i_crit_edge, %for.body.i.i.1.t1_eeprom_vpd_get.exit.i_crit_edge, %if.else.t1_eeprom_vpd_get.exit.i_crit_edge
  %tobool.not.i.i187.lcssa = phi i1 [ %tobool.not.i.i187, %if.else.t1_eeprom_vpd_get.exit.i_crit_edge ], [ %tobool.not.i.i187.1, %for.body.i.i.1.t1_eeprom_vpd_get.exit.i_crit_edge ], [ %tobool.not.i.i187.2, %for.body.i.i.2.t1_eeprom_vpd_get.exit.i_crit_edge ], [ %tobool.not.i.i187.3, %for.body.i.i.3.t1_eeprom_vpd_get.exit.i_crit_edge ], [ %tobool.not.i.i187.4, %for.body.i.i.4.t1_eeprom_vpd_get.exit.i_crit_edge ], [ %tobool.not.i.i187.5, %for.body.i.i.5.t1_eeprom_vpd_get.exit.i_crit_edge ], [ %tobool.not.i.i187.6, %for.body.i.i.6 ]
  br i1 %tobool.not.i.i187.lcssa, label %vpd_macaddress_get.exit.thread, label %do.end96

vpd_macaddress_get.exit.thread:                   ; preds = %t1_eeprom_vpd_get.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %84 = call ptr @memcpy(ptr %hw_addr, ptr %52, i32 5)
  %85 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %53, align 1
  %87 = trunc i32 %i.0201 to i8
  %conv2.i = add i8 %86, %87
  %88 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv2.i, ptr %51, align 1
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %vpd.i) #6
  br label %for.inc

do.end96:                                         ; preds = %t1_eeprom_vpd_get.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %vpd.i) #6
  %89 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx, align 8
  %call103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %90) #9
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end96, %do.end78, %do.end63
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %hw_addr) #6
  br label %error

for.inc:                                          ; preds = %vpd_macaddress_get.exit.thread, %if.then88
  %91 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx, align 8
  call void @dev_addr_mod(ptr noundef %92, i32 noundef 0, ptr noundef nonnull %hw_addr, i32 noundef 6) #6
  %link_config = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 13, i32 %i.0201, i32 3
  %93 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %caps.i, align 4
  %95 = ptrtoint ptr %link_config to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %link_config, align 4
  %requested_speed.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 13, i32 %i.0201, i32 3, i32 2
  %fc.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 13, i32 %i.0201, i32 3, i32 7
  %96 = call ptr @memset(ptr %requested_speed.i, i32 255, i32 6)
  %97 = ptrtoint ptr %fc.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 3, ptr %fc.i, align 1
  %requested_fc.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 13, i32 %i.0201, i32 3, i32 6
  %and.i = and i32 %94, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.store.select.i = select i1 %tobool.not.i, i8 3, i8 7
  %98 = ptrtoint ptr %requested_fc.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %spec.store.select.i, ptr %requested_fc.i, align 2
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 %94
  %not.tobool.not.i = xor i1 %tobool.not.i, true
  %spec.select21.i = zext i1 %not.tobool.not.i to i8
  %99 = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 13, i32 %i.0201, i32 3, i32 1
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %spec.select.i, ptr %99, align 4
  %101 = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 13, i32 %i.0201, i32 3, i32 8
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %spec.select21.i, ptr %101, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %hw_addr) #6
  %inc = add nuw i32 %i.0201, 1
  %103 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %nports, align 8
  %cmp = icmp ult i32 %inc, %104
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end46.for.end_crit_edge
  %pci = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pci_mode.i) #6
  %105 = ptrtoint ptr %pci_mode.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 -1, ptr %pci_mode.i, align 4, !annotation !104
  %pdev.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 1
  %106 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pdev.i, align 4
  %call.i = call i32 @pci_read_config_dword(ptr noundef %107, i32 noundef 252, ptr noundef nonnull %pci_mode.i) #6
  %108 = ptrtoint ptr %pci_mode.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %pci_mode.i, align 4
  %shr.i = lshr i32 %109, 6
  %and.i188 = and i32 %shr.i, 3
  %arrayidx.i = getelementptr [4 x i16], ptr @get_pci_mode.speed_map, i32 0, i32 %and.i188
  %110 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %arrayidx.i, align 2
  %112 = ptrtoint ptr %pci to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %111, ptr %pci, align 2
  %and1.i = and i32 %109, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i189 = icmp eq i32 %and1.i, 0
  %conv.i190 = select i1 %tobool.not.i189, i8 32, i8 64
  %width.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 1
  %113 = ptrtoint ptr %width.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv.i190, ptr %width.i, align 2
  %114 = trunc i32 %109 to i8
  %115 = lshr i8 %114, 5
  %116 = and i8 %115, 1
  %is_pcix.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 2
  %117 = ptrtoint ptr %is_pcix.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %116, ptr %is_pcix.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pci_mode.i) #6
  call void @t1_interrupts_clear(ptr noundef %adapter)
  br label %cleanup115

error:                                            ; preds = %cleanup.thread, %do.end27, %do.end14, %do.end
  call void @t1_free_sw_modules(ptr noundef %adapter)
  br label %cleanup115

cleanup115:                                       ; preds = %error, %for.end
  %retval.0 = phi i32 [ -1, %error ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @t1_sge_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @t1_espi_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @t1_tp_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mi1_mdio_init(ptr noundef %adapter, ptr nocapture noundef readonly %bi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clock_elmer0 = getelementptr inbounds %struct.board_info, ptr %bi, i32 0, i32 10
  %0 = ptrtoint ptr %clock_elmer0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clock_elmer0, align 4
  %mdio_mdc = getelementptr inbounds %struct.board_info, ptr %bi, i32 0, i32 13
  %2 = ptrtoint ptr %mdio_mdc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mdio_mdc, align 2
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 1
  %div = udiv i32 %1, %mul
  %mdio_mdiinv = getelementptr inbounds %struct.board_info, ptr %bi, i32 0, i32 12
  %4 = ptrtoint ptr %mdio_mdiinv to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mdio_mdiinv, align 1
  %conv1 = zext i8 %5 to i32
  %shl = shl nuw nsw i32 %conv1, 1
  %mdio_mdien = getelementptr inbounds %struct.board_info, ptr %bi, i32 0, i32 11
  %6 = ptrtoint ptr %mdio_mdien to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mdio_mdien, align 4
  %conv2 = zext i8 %7 to i32
  %sub = shl i32 %div, 5
  %shl5 = add i32 %sub, -32
  %caps = getelementptr inbounds %struct.board_info, ptr %bi, i32 0, i32 2
  %8 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %caps, align 4
  %and = and i32 %9, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select.v = select i1 %tobool.not, i32 12, i32 4
  %or = or i32 %shl5, %conv2
  %or4 = or i32 %or, %shl
  %spec.select = or i32 %or4, %spec.select.v
  %tpi_lock.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %tpi_lock.i) #6
  %call.i = tail call i32 @__t1_tpi_write(ptr noundef %adapter, i32 noundef 4194304, i32 noundef %spec.select) #6
  tail call void @_raw_spin_unlock(ptr noundef %tpi_lock.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mi1_mdio_ext_read(ptr nocapture noundef readonly %dev, i32 noundef %phy_addr, i32 noundef %mmd_addr, i16 noundef zeroext %reg_addr) #0 align 64 {
entry:
  %val.i17 = alloca i32, align 4
  %val.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  %shl1 = shl i32 %phy_addr, 5
  %or = or i32 %shl1, %mmd_addr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !104
  %tpi_lock = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %tpi_lock) #6
  %call = tail call i32 @__t1_tpi_write(ptr noundef %1, i32 noundef 4194308, i32 noundef %or)
  %conv = zext i16 %reg_addr to i32
  %call2 = tail call i32 @__t1_tpi_write(ptr noundef %1, i32 noundef 4194312, i32 noundef %conv)
  %call3 = tail call i32 @__t1_tpi_write(ptr noundef %1, i32 noundef 4194316, i32 noundef 0)
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i.do.body.i_crit_edge, %entry
  %attempts.0.i = phi i32 [ 100, %entry ], [ %dec.i, %if.then.i.do.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val.i, align 4, !annotation !104
  %call.i = call i32 @__t1_tpi_read(ptr noundef %1, i32 noundef 4194316, ptr noundef nonnull %val.i) #6
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool.not.i = icmp sgt i32 %5, -1
  br i1 %tobool.not.i, label %do.end.critedge.i, label %if.then.i

if.then.i:                                        ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 2147480) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  %dec.i = add nsw i32 %attempts.0.i, -1
  %tobool2.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool2.not.i, label %do.end7.critedge.i, label %if.then.i.do.body.i_crit_edge

if.then.i.do.body.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.end.critedge.i:                                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %mi1_wait_until_ready.exit

do.end7.critedge.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name.i, align 4
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %8) #9
  br label %mi1_wait_until_ready.exit

mi1_wait_until_ready.exit:                        ; preds = %do.end7.critedge.i, %do.end.critedge.i
  %call5 = tail call i32 @__t1_tpi_write(ptr noundef %1, i32 noundef 4194316, i32 noundef 3)
  br label %do.body.i21

do.body.i21:                                      ; preds = %if.then.i24.do.body.i21_crit_edge, %mi1_wait_until_ready.exit
  %attempts.0.i18 = phi i32 [ 100, %mi1_wait_until_ready.exit ], [ %dec.i22, %if.then.i24.do.body.i21_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i17) #6
  %9 = ptrtoint ptr %val.i17 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %val.i17, align 4, !annotation !104
  %call.i19 = call i32 @__t1_tpi_read(ptr noundef %1, i32 noundef 4194316, ptr noundef nonnull %val.i17) #6
  %10 = ptrtoint ptr %val.i17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val.i17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %tobool.not.i20 = icmp sgt i32 %11, -1
  br i1 %tobool.not.i20, label %do.end.critedge.i25, label %if.then.i24

if.then.i24:                                      ; preds = %do.body.i21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 2147480) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i17) #6
  %dec.i22 = add nsw i32 %attempts.0.i18, -1
  %tobool2.not.i23 = icmp eq i32 %dec.i22, 0
  br i1 %tobool2.not.i23, label %do.end7.critedge.i28, label %if.then.i24.do.body.i21_crit_edge

if.then.i24.do.body.i21_crit_edge:                ; preds = %if.then.i24
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i21

do.end.critedge.i25:                              ; preds = %do.body.i21
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i17) #6
  br label %mi1_wait_until_ready.exit29

do.end7.critedge.i28:                             ; preds = %if.then.i24
  call void @__sanitizer_cov_trace_pc() #8
  %name.i26 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %name.i26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name.i26, align 4
  %call8.i27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %14) #9
  br label %mi1_wait_until_ready.exit29

mi1_wait_until_ready.exit29:                      ; preds = %do.end7.critedge.i28, %do.end.critedge.i25
  %call7 = call i32 @__t1_tpi_read(ptr noundef %1, i32 noundef 4194312, ptr noundef nonnull %val)
  tail call void @_raw_spin_unlock(ptr noundef %tpi_lock) #6
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mi1_mdio_ext_write(ptr nocapture noundef readonly %dev, i32 noundef %phy_addr, i32 noundef %mmd_addr, i16 noundef zeroext %reg_addr, i16 noundef zeroext %val) #0 align 64 {
entry:
  %val.i18 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  %shl1 = shl i32 %phy_addr, 5
  %or = or i32 %shl1, %mmd_addr
  %tpi_lock = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %tpi_lock) #6
  %call = tail call i32 @__t1_tpi_write(ptr noundef %1, i32 noundef 4194308, i32 noundef %or)
  %conv = zext i16 %reg_addr to i32
  %call2 = tail call i32 @__t1_tpi_write(ptr noundef %1, i32 noundef 4194312, i32 noundef %conv)
  %call3 = tail call i32 @__t1_tpi_write(ptr noundef %1, i32 noundef 4194316, i32 noundef 0)
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i.do.body.i_crit_edge, %entry
  %attempts.0.i = phi i32 [ 100, %entry ], [ %dec.i, %if.then.i.do.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !104
  %call.i = call i32 @__t1_tpi_read(ptr noundef %1, i32 noundef 4194316, ptr noundef nonnull %val.i) #6
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %tobool.not.i = icmp sgt i32 %4, -1
  br i1 %tobool.not.i, label %do.end.critedge.i, label %if.then.i

if.then.i:                                        ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 2147480) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  %dec.i = add nsw i32 %attempts.0.i, -1
  %tobool2.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool2.not.i, label %do.end7.critedge.i, label %if.then.i.do.body.i_crit_edge

if.then.i.do.body.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.end.critedge.i:                                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %mi1_wait_until_ready.exit

do.end7.critedge.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name.i, align 4
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %7) #9
  br label %mi1_wait_until_ready.exit

mi1_wait_until_ready.exit:                        ; preds = %do.end7.critedge.i, %do.end.critedge.i
  %conv5 = zext i16 %val to i32
  %call6 = tail call i32 @__t1_tpi_write(ptr noundef %1, i32 noundef 4194312, i32 noundef %conv5)
  %call7 = tail call i32 @__t1_tpi_write(ptr noundef %1, i32 noundef 4194316, i32 noundef 1)
  br label %do.body.i22

do.body.i22:                                      ; preds = %if.then.i25.do.body.i22_crit_edge, %mi1_wait_until_ready.exit
  %attempts.0.i19 = phi i32 [ 100, %mi1_wait_until_ready.exit ], [ %dec.i23, %if.then.i25.do.body.i22_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i18) #6
  %8 = ptrtoint ptr %val.i18 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val.i18, align 4, !annotation !104
  %call.i20 = call i32 @__t1_tpi_read(ptr noundef %1, i32 noundef 4194316, ptr noundef nonnull %val.i18) #6
  %9 = ptrtoint ptr %val.i18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %tobool.not.i21 = icmp sgt i32 %10, -1
  br i1 %tobool.not.i21, label %do.end.critedge.i26, label %if.then.i25

if.then.i25:                                      ; preds = %do.body.i22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 2147480) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i18) #6
  %dec.i23 = add nsw i32 %attempts.0.i19, -1
  %tobool2.not.i24 = icmp eq i32 %dec.i23, 0
  br i1 %tobool2.not.i24, label %do.end7.critedge.i29, label %if.then.i25.do.body.i22_crit_edge

if.then.i25.do.body.i22_crit_edge:                ; preds = %if.then.i25
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i22

do.end.critedge.i26:                              ; preds = %do.body.i22
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i18) #6
  br label %mi1_wait_until_ready.exit30

do.end7.critedge.i29:                             ; preds = %if.then.i25
  call void @__sanitizer_cov_trace_pc() #8
  %name.i27 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %name.i27 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name.i27, align 4
  %call8.i28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %13) #9
  br label %mi1_wait_until_ready.exit30

mi1_wait_until_ready.exit30:                      ; preds = %do.end7.critedge.i29, %do.end.critedge.i26
  tail call void @_raw_spin_unlock(ptr noundef %tpi_lock) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mi1_mdio_read(ptr nocapture noundef readonly %dev, i32 noundef %phy_addr, i32 noundef %mmd_addr, i16 noundef zeroext %reg_addr) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  %conv = zext i16 %reg_addr to i32
  %shl1 = shl i32 %phy_addr, 5
  %or = or i32 %shl1, %conv
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !104
  %tpi_lock = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %tpi_lock) #6
  %call = tail call i32 @__t1_tpi_write(ptr noundef %1, i32 noundef 4194308, i32 noundef %or)
  %call2 = tail call i32 @__t1_tpi_write(ptr noundef %1, i32 noundef 4194316, i32 noundef 2)
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i.do.body.i_crit_edge, %entry
  %attempts.0.i = phi i32 [ 100, %entry ], [ %dec.i, %if.then.i.do.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val.i, align 4, !annotation !104
  %call.i = call i32 @__t1_tpi_read(ptr noundef %1, i32 noundef 4194316, ptr noundef nonnull %val.i) #6
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool.not.i = icmp sgt i32 %5, -1
  br i1 %tobool.not.i, label %do.end.critedge.i, label %if.then.i

if.then.i:                                        ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 2147480) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  %dec.i = add nsw i32 %attempts.0.i, -1
  %tobool2.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool2.not.i, label %do.end7.critedge.i, label %if.then.i.do.body.i_crit_edge

if.then.i.do.body.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.end.critedge.i:                                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %mi1_wait_until_ready.exit

do.end7.critedge.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name.i, align 4
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %8) #9
  br label %mi1_wait_until_ready.exit

mi1_wait_until_ready.exit:                        ; preds = %do.end7.critedge.i, %do.end.critedge.i
  %call4 = call i32 @__t1_tpi_read(ptr noundef %1, i32 noundef 4194312, ptr noundef nonnull %val)
  tail call void @_raw_spin_unlock(ptr noundef %tpi_lock) #6
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mi1_mdio_write(ptr nocapture noundef readonly %dev, i32 noundef %phy_addr, i32 noundef %mmd_addr, i16 noundef zeroext %reg_addr, i16 noundef zeroext %val) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  %conv = zext i16 %reg_addr to i32
  %shl1 = shl i32 %phy_addr, 5
  %or = or i32 %shl1, %conv
  %tpi_lock = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %tpi_lock) #6
  %call = tail call i32 @__t1_tpi_write(ptr noundef %1, i32 noundef 4194308, i32 noundef %or)
  %conv2 = zext i16 %val to i32
  %call3 = tail call i32 @__t1_tpi_write(ptr noundef %1, i32 noundef 4194312, i32 noundef %conv2)
  %call4 = tail call i32 @__t1_tpi_write(ptr noundef %1, i32 noundef 4194316, i32 noundef 1)
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i.do.body.i_crit_edge, %entry
  %attempts.0.i = phi i32 [ 100, %entry ], [ %dec.i, %if.then.i.do.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !104
  %call.i = call i32 @__t1_tpi_read(ptr noundef %1, i32 noundef 4194316, ptr noundef nonnull %val.i) #6
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %tobool.not.i = icmp sgt i32 %4, -1
  br i1 %tobool.not.i, label %do.end.critedge.i, label %if.then.i

if.then.i:                                        ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 2147480) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  %dec.i = add nsw i32 %attempts.0.i, -1
  %tobool2.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool2.not.i, label %do.end7.critedge.i, label %if.then.i.do.body.i_crit_edge

if.then.i.do.body.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.end.critedge.i:                                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %mi1_wait_until_ready.exit

do.end7.critedge.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name.i, align 4
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %7) #9
  br label %mi1_wait_until_ready.exit

mi1_wait_until_ready.exit:                        ; preds = %do.end7.critedge.i, %do.end.critedge.i
  tail call void @_raw_spin_unlock(ptr noundef %tpi_lock) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @t1_sge_intr_error_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t1_tp_intr_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t1_espi_intr_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !75, !76, !77, !79, !81, !82, !83, !84}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/cxgb/subr.c", i32 92, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__t1_tpi_write._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @__t1_tpi_write._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/chelsio/cxgb/subr.c", i32 120, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__t1_tpi_read._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @__t1_tpi_read._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @t1_pci_tbl, !12, !"t1_pci_tbl", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/chelsio/cxgb/subr.c", i32 537, i32 28}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/chelsio/cxgb/subr.c", i32 590, i32 3}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @t1_seeprom_read._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @t1_seeprom_read._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/chelsio/cxgb/subr.c", i32 744, i32 4}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @t1_elmer0_ext_intr_handler.__UNIQUE_ID_ddebug353, !19, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/chelsio/cxgb/subr.c", i32 757, i32 5}
!25 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @t1_elmer0_ext_intr_handler._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @t1_elmer0_ext_intr_handler._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/chelsio/cxgb/subr.c", i32 1087, i32 3}
!33 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @t1_init_sw_modules._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @t1_init_sw_modules._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/chelsio/cxgb/subr.c", i32 1093, i32 3}
!38 = !{ptr @t1_init_sw_modules._entry.17, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @t1_init_sw_modules._entry_ptr.19, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/chelsio/cxgb/subr.c", i32 1100, i32 3}
!42 = !{ptr @t1_init_sw_modules._entry.20, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @t1_init_sw_modules._entry_ptr.22, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/chelsio/cxgb/subr.c", i32 1120, i32 4}
!46 = !{ptr @t1_init_sw_modules._entry.23, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @t1_init_sw_modules._entry_ptr.25, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/chelsio/cxgb/subr.c", i32 1127, i32 4}
!50 = !{ptr @t1_init_sw_modules._entry.26, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @t1_init_sw_modules._entry_ptr.28, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/chelsio/cxgb/subr.c", i32 1139, i32 4}
!54 = !{ptr @t1_init_sw_modules._entry.29, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @t1_init_sw_modules._entry_ptr.31, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/chelsio/cxgb/subr.c", i32 423, i32 12}
!58 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/chelsio/cxgb/subr.c", i32 443, i32 12}
!60 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/chelsio/cxgb/subr.c", i32 463, i32 12}
!62 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/chelsio/cxgb/subr.c", i32 485, i32 12}
!64 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/chelsio/cxgb/subr.c", i32 507, i32 12}
!66 = !{ptr @.str.37, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/chelsio/cxgb/subr.c", i32 531, i32 12}
!68 = !{ptr @t1_board, !69, !"t1_board", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/chelsio/cxgb/subr.c", i32 403, i32 32}
!70 = !{ptr @mi1_mdio_ext_ops, !71, !"mi1_mdio_ext_ops", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/chelsio/cxgb/subr.c", i32 387, i32 30}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/chelsio/cxgb/subr.c", i32 273, i32 3}
!74 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @mi1_wait_until_ready._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @mi1_wait_until_ready._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @mi1_mdio_ops, !78, !"mi1_mdio_ops", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/chelsio/cxgb/subr.c", i32 328, i32 30}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/chelsio/cxgb/subr.c", i32 185, i32 3}
!81 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @t1_pci_intr_handler._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @t1_pci_intr_handler._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @get_pci_mode.speed_map, !85, !"speed_map", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/chelsio/cxgb/subr.c", i32 1022, i32 30}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{i64 2156909751}
!96 = !{i64 6750414}
!97 = !{i64 2156910159}
!98 = !{i64 2156910613}
!99 = !{i64 6750832}
!100 = !{i64 2156908966}
!101 = !{i64 2156912794}
!102 = !{i64 2156913198}
!103 = !{i64 2156915632}
!104 = !{!"auto-init"}
!105 = !{i64 2148994552, i64 2148994557, i64 2148994570, i64 2148994614, i64 2148994648, i64 2148994669}
!106 = !{i64 2156943044}
!107 = !{i64 2156943469}
!108 = !{i64 2156943952}
!109 = !{i64 2156944708}
!110 = !{i64 2156945068}
!111 = !{i64 2156927445}
!112 = !{i64 2156926456}
!113 = !{i64 2156926752}
!114 = !{i64 2156928072}
!115 = !{i64 2156928301}
!116 = !{i64 2156928726}
!117 = !{i64 2156945880}
!118 = !{i64 2156946533}
!119 = !{i64 2156947049}
!120 = !{i64 2156947742}
!121 = !{i64 2156948292}
!122 = !{i64 2156948923}
!123 = !{i64 2156949257}
!124 = !{i64 2156949885}
!125 = !{i64 2156915896}

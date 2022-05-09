; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/atheros/atl1e/atl1e_main.c_pt.bc'
source_filename = "../drivers/net/ethernet/atheros/atl1e/atl1e_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_error_handlers = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atl1e_adapter = type { ptr, ptr, %struct.napi_struct, %struct.mii_if_info, %struct.atl1e_hw, %struct.atl1e_hw_stats, i32, i16, i16, %struct.spinlock, %struct.atomic_t, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.timer_list, i32, ptr, i32, %struct.atl1e_tx_ring, %struct.atl1e_rx_ring, i32, i32, i32, [16 x i32], ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.atl1e_hw = type { ptr, i32, ptr, i32, i16, i16, i16, i16, i8, i16, [6 x i8], [6 x i8], i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.atl1e_hw_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.atl1e_tx_ring = type { ptr, i32, i16, %struct.rwlock_t, i16, %struct.atomic_t, ptr, i32, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.atl1e_rx_ring = type { ptr, i32, i32, i32, i32, [4 x %struct.atl1e_rx_page_desc] }
%struct.atl1e_rx_page_desc = type { [2 x %struct.atl1e_rx_page], i8, i16 }
%struct.atl1e_rx_page = type { i32, ptr, i32, ptr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.143, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.143 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.144, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.144 = type { ptr }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atl1e_tx_buffer = type { ptr, i16, i16, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.111, [48 x i8], %union.anon.112, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.114, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.111 = type { i64 }
%union.anon.112 = type { %struct.anon.113 }
%struct.anon.113 = type { i32, ptr }
%union.anon.114 = type { %struct.anon.115 }
%struct.anon.115 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.116, i32, i32, i32, i16, i16, %union.anon.118, i32, %union.anon.119, %union.anon.120, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.116 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i32 }
%union.anon.120 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.atl1e_tpd_desc = type { i64, i32, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.anon.117 = type { i16, i16 }
%struct.page = type { i32, %union.anon.10, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ifreq = type { %union.anon.127, %union.anon.128 }
%union.anon.127 = type { [16 x i8] }
%union.anon.128 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.mii_ioctl_data = type { i16, i16, i16, i16 }
%struct.atl1e_recv_ret_status = type { i16, i16, i32, i16, i16, i16, i16 }

@atl1e_driver_name = dso_local global { [6 x i8], [26 x i8] } { [6 x i8] c"ATL1E\00", [26 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author498 = internal constant [93 x i8] c"atl1e.author=Atheros Corporation, <xiong.huang@atheros.com>, Jie Yang <jie.yang@atheros.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description499 = internal constant [56 x i8] c"atl1e.description=Atheros 1000M Ethernet Network Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file500 = internal constant [52 x i8] c"atl1e.file=drivers/net/ethernet/atheros/atl1e/atl1e\00", section ".modinfo", align 1
@__UNIQUE_ID_license501 = internal constant [18 x i8] c"atl1e.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_atl1e__518_2560_atl1e_driver_init6 = internal global ptr @atl1e_driver_init, section ".initcall6.init", align 4
@atl1e_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @atl1e_driver_name, ptr @atl1e_pci_tbl, ptr @atl1e_probe, ptr @atl1e_remove, ptr @atl1e_suspend, ptr @atl1e_resume, ptr @atl1e_shutdown, ptr null, ptr null, ptr null, ptr @atl1e_err_handler, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_atl1e_driver_exit = internal global ptr @atl1e_driver_exit, section ".exitcall.exit", align 4
@atl1e_restore_vlan.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"atl1e\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"atl1e_restore_vlan\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/ethernet/atheros/atl1e/atl1e_main.c\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@atl1e_vlan_mode.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.3, i8 0, i8 86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atl1e_vlan_mode\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"atl1e_configure failed, PCIE phy link down\0A\00", [52 x i8] zeroinitializer }, align 32
@atl1e_rx_page_hi_addr_regs = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 5440, i16 5456, i16 5460, i16 5436], [24 x i8] zeroinitializer }, align 32
@atl1e_rx_page_lo_addr_regs = internal constant { [4 x [2 x i16]], [16 x i8] } { [4 x [2 x i16]] [[2 x i16] [i16 5444, i16 5448], [2 x i16] [i16 5584, i16 5588], [2 x i16] [i16 5592, i16 5596], [2 x i16] [i16 5600, i16 5604]], [16 x i8] zeroinitializer }, align 32
@atl1e_rx_page_write_offset_regs = internal constant { [4 x [2 x i16]], [16 x i8] } { [4 x [2 x i16]] [[2 x i16] [i16 6176, i16 6180], [2 x i16] [i16 6184, i16 6188], [2 x i16] [i16 6192, i16 6196], [2 x i16] [i16 6200, i16 6204]], [16 x i8] zeroinitializer }, align 32
@atl1e_rx_page_vld_regs = internal constant { [4 x [2 x i16]], [16 x i8] } { [4 x [2 x i16]] [[2 x i16] [i16 5620, i16 5621], [2 x i16] [i16 5622, i16 5623], [2 x i16] [i16 5624, i16 5625], [2 x i16] [i16 5626, i16 5627]], [16 x i8] zeroinitializer }, align 32
@atl1e_pay_load_size = internal constant { [6 x i16], [20 x i8] } { [6 x i16] [i16 128, i16 256, i16 512, i16 1024, i16 2048, i16 4096], [20 x i8] zeroinitializer }, align 32
@atl1e_pci_tbl = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 6505, i32 4134, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6505, i32 4198, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@atl1e_err_handler = internal constant { %struct.pci_error_handlers, [40 x i8] } { %struct.pci_error_handlers { ptr @atl1e_io_error_detected, ptr null, ptr @atl1e_io_slot_reset, ptr null, ptr null, ptr @atl1e_io_resume }, [40 x i8] zeroinitializer }, align 32
@atl1e_probe.cards_found = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot enable PCI device\0A\00", [38 x i8] zeroinitializer }, align 32
@atl1e_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 2315, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"No usable DMA configuration,aborting\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"atl1e_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@atl1e_probe._entry_ptr = internal global ptr @atl1e_probe._entry, section ".printk_index", align 4
@atl1e_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.8, ptr @.str.2, i32 2321, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot obtain PCI resources\0A\00", [35 x i8] zeroinitializer }, align 32
@atl1e_probe._entry_ptr.13 = internal global ptr @atl1e_probe._entry.11, section ".printk_index", align 4
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot map device registers\0A\00", [35 x i8] zeroinitializer }, align 32
@atl1e_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(&adapter->phy_config_timer)\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"get mac address failed\0A\00", [40 x i8] zeroinitializer }, align 32
@atl1e_probe.__UNIQUE_ID_ddebug517 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.19, i8 2, i8 86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mac address : %pM\0A\00", [45 x i8] zeroinitializer }, align 32
@atl1e_probe.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&adapter->reset_task)\00", [56 x i8] zeroinitializer }, align 32
@atl1e_probe.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&adapter->link_chg_task)\00", [53 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"register netdevice failed\0A\00", [37 x i8] zeroinitializer }, align 32
@atl1e_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @atl1e_open, ptr @atl1e_close, ptr @atl1e_xmit_frame, ptr null, ptr null, ptr null, ptr @atl1e_set_multi, ptr @atl1e_set_mac_addr, ptr @eth_validate_addr, ptr null, ptr @atl1e_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @atl1e_change_mtu, ptr null, ptr @atl1e_tx_timeout, ptr null, ptr null, ptr null, ptr @atl1e_get_stats, ptr null, ptr null, ptr @atl1e_netpoll, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atl1e_fix_features, ptr @atl1e_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@atl1e_init_ring_resources.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&adapter->tx_ring.tx_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"dma_alloc_coherent failed, size = D%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"offset(%d) > ring size(%d) !!\0A\00", [33 x i8] zeroinitializer }, align 32
@atl1e_request_irq.__UNIQUE_ID_ddebug511 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 1, i8 -30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atl1e_request_irq\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unable to allocate interrupt Error: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@atl1e_request_irq.__UNIQUE_ID_ddebug512 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.30, i8 1, i8 -29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"atl1e_request_irq OK\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pcie phy linkdown %x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PCIE DMA RW error (status = 0x%x)\0A\00", [61 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"NIC Link is Down\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IPV4 tso with zero data??\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"payload offset should not ant event number\0A\00", [52 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@atl1e_mii_ioctl.__UNIQUE_ID_ddebug505 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 0, i8 123, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atl1e_mii_ioctl\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"<atl1e_mii_ioctl> write %x %x\0A\00", [33 x i8] zeroinitializer }, align 32
@atl1e_rx_mode.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.3, i8 0, i8 79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atl1e_rx_mode\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"write phy register failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"atl1e_clean is called when AT_DOWN\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"rx sequence number error (rx=%d) (expect=%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rx packet desc error %x\0A\00", [39 x i8] zeroinitializer }, align 32
@atl1e_clean_rx_irq.__UNIQUE_ID_ddebug510 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 1, i8 110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"atl1e_clean_rx_irq\00", [45 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RXD VLAN TAG<RRD>=0x%04x\0A\00", [38 x i8] zeroinitializer }, align 32
@atl1e_sw_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&adapter->mdio_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"NIC Link is Up <%d Mbps %s Duplex>\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Full\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Half\00", [27 x i8] zeroinitializer }, align 32
@atl1e_suspend.__UNIQUE_ID_ddebug513 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 2, i8 13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atl1e_suspend\00", [18 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"set phy register failed\0A\00", [39 x i8] zeroinitializer }, align 32
@atl1e_suspend.__UNIQUE_ID_ddebug514 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.55, i8 2, i8 19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Link may change when suspend\0A\00", [34 x i8] zeroinitializer }, align 32
@atl1e_suspend.__UNIQUE_ID_ddebug515 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.56, i8 2, i8 21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"read write phy register failed\0A\00", [32 x i8] zeroinitializer }, align 32
@atl1e_suspend.__UNIQUE_ID_ddebug516 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.57, i8 2, i8 26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"suspend MAC=0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Cannot enable PCI device from suspend\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Cannot re-enable PCI device after reset\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"can't bring device back up after reset\0A\00", [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 35143, i64 35144, i64 35145]
@___asan_gen_.61 = private unnamed_addr constant [18 x i8] c"atl1e_driver_name\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 11, i32 6 }
@___asan_gen_.64 = private unnamed_addr constant [13 x i8] c"atl1e_driver\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 2546, i32 26 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 355, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 344, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1137, i32 7 }
@___asan_gen_.85 = private unnamed_addr constant [27 x i8] c"atl1e_rx_page_hi_addr_regs\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 45, i32 18 }
@___asan_gen_.88 = private unnamed_addr constant [27 x i8] c"atl1e_rx_page_lo_addr_regs\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 54, i32 1 }
@___asan_gen_.91 = private unnamed_addr constant [32 x i8] c"atl1e_rx_page_write_offset_regs\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 63, i32 1 }
@___asan_gen_.94 = private unnamed_addr constant [23 x i8] c"atl1e_rx_page_vld_regs\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 37, i32 1 }
@___asan_gen_.97 = private unnamed_addr constant [20 x i8] c"atl1e_pay_load_size\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 71, i32 18 }
@___asan_gen_.100 = private unnamed_addr constant [14 x i8] c"atl1e_pci_tbl\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 22, i32 35 }
@___asan_gen_.103 = private unnamed_addr constant [18 x i8] c"atl1e_err_handler\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 2540, i32 40 }
@___asan_gen_.106 = private unnamed_addr constant [12 x i8] c"cards_found\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 2295, i32 13 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 2301, i32 41 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 2315, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 2321, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 2346, i32 22 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 2359, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 2389, i32 22 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 2394, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 2396, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 2397, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 2401, i32 22 }
@___asan_gen_.163 = private unnamed_addr constant [17 x i8] c"atl1e_netdev_ops\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 2239, i32 36 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 734, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 819, i32 7 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 866, i32 31 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1929, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1933, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1301, i32 8 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1313, i32 8 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 225, i32 24 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1652, i32 10 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1682, i32 8 }
@___asan_gen_.206 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 326, i32 6 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 494, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 317, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 460, i32 22 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1530, i32 8 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1418, i32 9 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1438, i32 10 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1462, i32 5 }
@___asan_gen_.235 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 629, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 180, i32 9 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 183, i32 9 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 183, i32 18 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 2103, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 2125, i32 6 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 2131, i32 5 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 2152, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 2204, i32 7 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 2503, i32 7 }
@___asan_gen_.271 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.272 = private constant [51 x i8] c"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 2532, i32 8 }
@llvm.compiler.used = appending global [80 x ptr] [ptr @__UNIQUE_ID_author498, ptr @__UNIQUE_ID_description499, ptr @__UNIQUE_ID_file500, ptr @__UNIQUE_ID_license501, ptr @__exitcall_atl1e_driver_exit, ptr @__initcall__kmod_atl1e__518_2560_atl1e_driver_init6, ptr @atl1e_driver_exit, ptr @atl1e_probe._entry, ptr @atl1e_probe._entry.11, ptr @atl1e_probe._entry_ptr, ptr @atl1e_probe._entry_ptr.13, ptr @atl1e_driver_name, ptr @atl1e_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @atl1e_rx_page_hi_addr_regs, ptr @atl1e_rx_page_lo_addr_regs, ptr @atl1e_rx_page_write_offset_regs, ptr @atl1e_rx_page_vld_regs, ptr @atl1e_pay_load_size, ptr @atl1e_pci_tbl, ptr @atl1e_err_handler, ptr @atl1e_probe.cards_found, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @atl1e_probe.__key, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @atl1e_probe.__key.20, ptr @.str.21, ptr @atl1e_probe.__key.22, ptr @.str.23, ptr @.str.24, ptr @atl1e_netdev_ops, ptr @atl1e_init_ring_resources.__key, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @atl1e_sw_init.__key, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1e_driver_name to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1e_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1e_rx_page_hi_addr_regs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1e_rx_page_lo_addr_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1e_rx_page_write_offset_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1e_rx_page_vld_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1e_pay_load_size to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1e_pci_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1e_err_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1e_probe.cards_found to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1e_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1e_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1e_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1e_probe.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1e_probe.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1e_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1e_init_ring_resources.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1e_sw_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @atl1e_reinit_locked(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 21
  %call6 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not7 = icmp eq i32 %call6, 0
  br i1 %tobool.not7, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  tail call void @msleep(i32 noundef 1) #10
  %call = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @atl1e_down(ptr noundef %adapter)
  %call1 = tail call i32 @atl1e_up(ptr noundef %adapter)
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @atl1e_down(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %flags = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 21
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #10
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  %hw = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 4
  %call = tail call i32 @atl1e_reset_hw(ptr noundef %hw) #10
  tail call void @msleep(i32 noundef 1) #10
  %napi = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 2
  tail call void @napi_disable(ptr noundef %napi) #10
  %phy_config_timer.i = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 14
  %call.i = tail call i32 @del_timer_sync(ptr noundef %phy_config_timer.i) #10
  %irq_sem.i = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %irq_sem.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %irq_sem.i, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %irq_sem.i, ptr %irq_sem.i, i32 1, ptr elementtype(i32) %irq_sem.i) #10, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !167
  tail call void @arm_heavy_mb() #10
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 5636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !168
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #10, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !170
  %pdev.i = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 1
  %10 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 46
  %12 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq.i, align 4
  tail call void @synchronize_irq(i32 noundef %13) #10
  tail call void @netif_carrier_off(ptr noundef %1) #10
  %link_speed = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 7
  %14 = ptrtoint ptr %link_speed to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %link_speed, align 8
  %link_duplex = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 8
  %15 = ptrtoint ptr %link_duplex to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -1, ptr %link_duplex, align 2
  tail call fastcc void @atl1e_clean_tx_ring(ptr noundef %adapter)
  %rx_page_desc2.i = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 19, i32 5
  %ring_vir_addr.i = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 16
  %16 = ptrtoint ptr %ring_vir_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ring_vir_addr.i, align 8
  %cmp.i = icmp eq ptr %17, null
  br i1 %cmp.i, label %entry.atl1e_clean_rx_ring.exit_crit_edge, label %for.cond.preheader.i

entry.atl1e_clean_rx_ring.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1e_clean_rx_ring.exit

for.cond.preheader.i:                             ; preds = %entry
  %num_rx_queues.i = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 20
  %18 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_rx_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp339.i = icmp sgt i32 %19, 0
  br i1 %cmp339.i, label %for.cond5.preheader.lr.ph.i, label %for.cond.preheader.i.atl1e_clean_rx_ring.exit_crit_edge

for.cond.preheader.i.atl1e_clean_rx_ring.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1e_clean_rx_ring.exit

for.cond5.preheader.lr.ph.i:                      ; preds = %for.cond.preheader.i
  %real_page_size.i = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 19, i32 4
  br label %for.cond5.preheader.i

for.cond5.preheader.i:                            ; preds = %for.inc.1.i.for.cond5.preheader.i_crit_edge, %for.cond5.preheader.lr.ph.i
  %conv41.i = phi i32 [ 0, %for.cond5.preheader.lr.ph.i ], [ %conv.i, %for.inc.1.i.for.cond5.preheader.i_crit_edge ]
  %i.040.i = phi i16 [ 0, %for.cond5.preheader.lr.ph.i ], [ %inc23.i, %for.inc.1.i.for.cond5.preheader.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.atl1e_rx_page_desc, ptr %rx_page_desc2.i, i32 %conv41.i
  %addr.i = getelementptr inbounds %struct.atl1e_rx_page, ptr %arrayidx.i, i32 0, i32 1
  %20 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %addr.i, align 4
  %cmp12.not.i = icmp eq ptr %21, null
  br i1 %cmp12.not.i, label %for.cond5.preheader.i.for.inc.i_crit_edge, label %if.then14.i

for.cond5.preheader.i.for.inc.i_crit_edge:        ; preds = %for.cond5.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then14.i:                                      ; preds = %for.cond5.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %real_page_size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %real_page_size.i, align 4
  %24 = call ptr @memset(ptr %21, i32 0, i32 %23)
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then14.i, %for.cond5.preheader.i.for.inc.i_crit_edge
  %arrayidx11.1.i = getelementptr [2 x %struct.atl1e_rx_page], ptr %arrayidx.i, i32 0, i32 1
  %addr.1.i = getelementptr inbounds %struct.atl1e_rx_page, ptr %arrayidx11.1.i, i32 0, i32 1
  %25 = ptrtoint ptr %addr.1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %addr.1.i, align 4
  %cmp12.not.1.i = icmp eq ptr %26, null
  br i1 %cmp12.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then14.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i

if.then14.1.i:                                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %real_page_size.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %real_page_size.i, align 4
  %29 = call ptr @memset(ptr %26, i32 0, i32 %28)
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then14.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %inc23.i = add i16 %i.040.i, 1
  %conv.i = zext i16 %inc23.i to i32
  %30 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_rx_queues.i, align 8
  %cmp3.i = icmp sgt i32 %31, %conv.i
  br i1 %cmp3.i, label %for.inc.1.i.for.cond5.preheader.i_crit_edge, label %for.inc.1.i.atl1e_clean_rx_ring.exit_crit_edge

for.inc.1.i.atl1e_clean_rx_ring.exit_crit_edge:   ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1e_clean_rx_ring.exit

for.inc.1.i.for.cond5.preheader.i_crit_edge:      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond5.preheader.i

atl1e_clean_rx_ring.exit:                         ; preds = %for.inc.1.i.atl1e_clean_rx_ring.exit_crit_edge, %for.cond.preheader.i.atl1e_clean_rx_ring.exit_crit_edge, %entry.atl1e_clean_rx_ring.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atl1e_up(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %hw = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 4
  %call = tail call i32 @atl1e_init_hw(ptr noundef %hw) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_page_desc3.i = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 19, i32 5
  %next_to_use.i = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 18, i32 4
  %2 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %next_to_use.i, align 4
  %next_to_clean.i = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 18, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %next_to_clean.i, i32 noundef 4) #10
  %3 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 0, ptr %next_to_clean.i, align 4
  %num_rx_queues.i = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 20
  %4 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_rx_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp31.i = icmp sgt i32 %5, 0
  br i1 %cmp31.i, label %if.end.for.body.i_crit_edge, label %if.end.atl1e_init_ring_ptrs.exit_crit_edge

if.end.atl1e_init_ring_ptrs.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1e_init_ring_ptrs.exit

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.032.i = phi i32 [ %inc14.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.atl1e_rx_page_desc, ptr %rx_page_desc3.i, i32 %i.032.i
  %rx_using.i = getelementptr %struct.atl1e_rx_page_desc, ptr %rx_page_desc3.i, i32 %i.032.i, i32 1
  %6 = ptrtoint ptr %rx_using.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %rx_using.i, align 4
  %rx_nxseq.i = getelementptr %struct.atl1e_rx_page_desc, ptr %rx_page_desc3.i, i32 %i.032.i, i32 2
  %7 = ptrtoint ptr %rx_nxseq.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %rx_nxseq.i, align 2
  %write_offset_addr.i = getelementptr inbounds %struct.atl1e_rx_page, ptr %arrayidx.i, i32 0, i32 3
  %8 = ptrtoint ptr %write_offset_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_offset_addr.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %9, align 4
  %read_offset.i = getelementptr inbounds %struct.atl1e_rx_page, ptr %arrayidx.i, i32 0, i32 4
  %11 = ptrtoint ptr %read_offset.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %read_offset.i, align 4
  %arrayidx9.1.i = getelementptr [2 x %struct.atl1e_rx_page], ptr %arrayidx.i, i32 0, i32 1
  %write_offset_addr.1.i = getelementptr inbounds %struct.atl1e_rx_page, ptr %arrayidx9.1.i, i32 0, i32 3
  %12 = ptrtoint ptr %write_offset_addr.1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_offset_addr.1.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %13, align 4
  %read_offset.1.i = getelementptr inbounds %struct.atl1e_rx_page, ptr %arrayidx9.1.i, i32 0, i32 4
  %15 = ptrtoint ptr %read_offset.1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %read_offset.1.i, align 4
  %inc14.i = add nuw nsw i32 %i.032.i, 1
  %16 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_rx_queues.i, align 8
  %cmp.i = icmp slt i32 %inc14.i, %17
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.atl1e_init_ring_ptrs.exit_crit_edge

for.body.i.atl1e_init_ring_ptrs.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1e_init_ring_ptrs.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

atl1e_init_ring_ptrs.exit:                        ; preds = %for.body.i.atl1e_init_ring_ptrs.exit_crit_edge, %if.end.atl1e_init_ring_ptrs.exit_crit_edge
  tail call void @atl1e_set_multi(ptr noundef %1)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atl1e_restore_vlan.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atl1e_up, %if.then.i)) #10
          to label %atl1e_restore_vlan.exit [label %if.then.i], !srcloc !171

if.then.i:                                        ; preds = %atl1e_init_ring_ptrs.exit
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @atl1e_restore_vlan.__UNIQUE_ID_ddebug504, ptr noundef %19, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #10
  br label %atl1e_restore_vlan.exit

atl1e_restore_vlan.exit:                          ; preds = %if.then.i, %atl1e_init_ring_ptrs.exit
  %20 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter, align 8
  %features.i = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 23
  %22 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %features.i, align 16
  tail call fastcc void @atl1e_vlan_mode(ptr noundef %21, i64 noundef %23) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !172
  tail call void @arm_heavy_mb() #10
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 5632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #10, !srcloc !168
  tail call void @atl1e_hw_set_mac_addr(ptr noundef %hw) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !173
  tail call void @arm_heavy_mb() #10
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 4
  %add.ptr6.i = getelementptr i8, ptr %27, i32 5280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 0) #10, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !174
  tail call void @arm_heavy_mb() #10
  %28 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw, align 4
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 5440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #10, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !175
  tail call void @arm_heavy_mb() #10
  %dma.i.i = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 18, i32 1
  %30 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma.i.i, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #10
  %33 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw, align 4
  %add.ptr12.i.i = getelementptr i8, ptr %34, i32 5452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i.i, i32 %32) #10, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !176
  tail call void @arm_heavy_mb() #10
  %count.i.i = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 18, i32 2
  %35 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %count.i.i, align 4
  %conv16.i.i = zext i16 %36 to i32
  %37 = tail call i32 @llvm.bswap.i32(i32 %conv16.i.i) #10
  %38 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw, align 4
  %add.ptr18.i.i = getelementptr i8, ptr %39, i32 5468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i.i, i32 %37) #10, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !177
  tail call void @arm_heavy_mb() #10
  %cmb_dma.i.i = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 18, i32 7
  %40 = ptrtoint ptr %cmb_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cmb_dma.i.i, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #10
  %43 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw, align 4
  %add.ptr26.i.i = getelementptr i8, ptr %44, i32 6208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i.i, i32 %42) #10, !srcloc !168
  br label %do.body29.i.i

do.body29.i.i:                                    ; preds = %do.body29.i.i.do.body29.i.i_crit_edge, %atl1e_restore_vlan.exit
  %i.0124.i.i = phi i32 [ 0, %atl1e_restore_vlan.exit ], [ %inc81.i.i, %do.body29.i.i.do.body29.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !178
  tail call void @arm_heavy_mb() #10
  %45 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw, align 4
  %arrayidx.i.i = getelementptr [4 x i16], ptr @atl1e_rx_page_hi_addr_regs, i32 0, i32 %i.0124.i.i
  %47 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx.i.i, align 2
  %conv38.i.i = zext i16 %48 to i32
  %add.ptr39.i.i = getelementptr i8, ptr %46, i32 %conv38.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39.i.i, i32 0) #10, !srcloc !168
  %arrayidx44.i.i = getelementptr %struct.atl1e_rx_page_desc, ptr %rx_page_desc3.i, i32 %i.0124.i.i
  %49 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx44.i.i, align 4
  %write_offset_dma.i.i = getelementptr inbounds %struct.atl1e_rx_page, ptr %arrayidx44.i.i, i32 0, i32 2
  %51 = ptrtoint ptr %write_offset_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %write_offset_dma.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !179
  tail call void @arm_heavy_mb() #10
  %53 = tail call i32 @llvm.bswap.i32(i32 %50) #10
  %54 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw, align 4
  %arrayidx58.i.i = getelementptr [4 x [2 x i16]], ptr @atl1e_rx_page_lo_addr_regs, i32 0, i32 %i.0124.i.i, i32 0
  %56 = ptrtoint ptr %arrayidx58.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx58.i.i, align 2
  %conv59.i.i = zext i16 %57 to i32
  %add.ptr60.i.i = getelementptr i8, ptr %55, i32 %conv59.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60.i.i, i32 %53) #10, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  tail call void @arm_heavy_mb() #10
  %58 = tail call i32 @llvm.bswap.i32(i32 %52) #10
  %59 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hw, align 4
  %arrayidx69.i.i = getelementptr [4 x [2 x i16]], ptr @atl1e_rx_page_write_offset_regs, i32 0, i32 %i.0124.i.i, i32 0
  %61 = ptrtoint ptr %arrayidx69.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx69.i.i, align 2
  %conv70.i.i = zext i16 %62 to i32
  %add.ptr71.i.i = getelementptr i8, ptr %60, i32 %conv70.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71.i.i, i32 %58) #10, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %63 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hw, align 4
  %arrayidx77.i.i = getelementptr [4 x [2 x i16]], ptr @atl1e_rx_page_vld_regs, i32 0, i32 %i.0124.i.i, i32 0
  %65 = ptrtoint ptr %arrayidx77.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx77.i.i, align 2
  %conv78.i.i = zext i16 %66 to i32
  %add.ptr79.i.i = getelementptr i8, ptr %64, i32 %conv78.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr79.i.i, i8 1) #10, !srcloc !182
  %arrayidx45.1.i.i = getelementptr [2 x %struct.atl1e_rx_page], ptr %arrayidx44.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %arrayidx45.1.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx45.1.i.i, align 4
  %write_offset_dma.1.i.i = getelementptr inbounds %struct.atl1e_rx_page, ptr %arrayidx45.1.i.i, i32 0, i32 2
  %69 = ptrtoint ptr %write_offset_dma.1.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %write_offset_dma.1.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !179
  tail call void @arm_heavy_mb() #10
  %71 = tail call i32 @llvm.bswap.i32(i32 %68) #10
  %72 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hw, align 4
  %arrayidx58.1.i.i = getelementptr [4 x [2 x i16]], ptr @atl1e_rx_page_lo_addr_regs, i32 0, i32 %i.0124.i.i, i32 1
  %74 = ptrtoint ptr %arrayidx58.1.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx58.1.i.i, align 2
  %conv59.1.i.i = zext i16 %75 to i32
  %add.ptr60.1.i.i = getelementptr i8, ptr %73, i32 %conv59.1.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60.1.i.i, i32 %71) #10, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  tail call void @arm_heavy_mb() #10
  %76 = tail call i32 @llvm.bswap.i32(i32 %70) #10
  %77 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hw, align 4
  %arrayidx69.1.i.i = getelementptr [4 x [2 x i16]], ptr @atl1e_rx_page_write_offset_regs, i32 0, i32 %i.0124.i.i, i32 1
  %79 = ptrtoint ptr %arrayidx69.1.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %arrayidx69.1.i.i, align 2
  %conv70.1.i.i = zext i16 %80 to i32
  %add.ptr71.1.i.i = getelementptr i8, ptr %78, i32 %conv70.1.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71.1.i.i, i32 %76) #10, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %81 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hw, align 4
  %arrayidx77.1.i.i = getelementptr [4 x [2 x i16]], ptr @atl1e_rx_page_vld_regs, i32 0, i32 %i.0124.i.i, i32 1
  %83 = ptrtoint ptr %arrayidx77.1.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %arrayidx77.1.i.i, align 2
  %conv78.1.i.i = zext i16 %84 to i32
  %add.ptr79.1.i.i = getelementptr i8, ptr %82, i32 %conv78.1.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr79.1.i.i, i8 1) #10, !srcloc !182
  %inc81.i.i = add nuw nsw i32 %i.0124.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc81.i.i, 4
  br i1 %exitcond.not.i.i, label %atl1e_configure_des_ring.exit.i, label %do.body29.i.i.do.body29.i.i_crit_edge

do.body29.i.i.do.body29.i.i_crit_edge:            ; preds = %do.body29.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body29.i.i

atl1e_configure_des_ring.exit.i:                  ; preds = %do.body29.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !183
  tail call void @arm_heavy_mb() #10
  %page_size.i.i = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 19, i32 3
  %85 = ptrtoint ptr %page_size.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %page_size.i.i, align 4
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #10
  %88 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hw, align 4
  %add.ptr87.i.i = getelementptr i8, ptr %89, i32 5464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87.i.i, i32 %87) #10, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !184
  tail call void @arm_heavy_mb() #10
  %90 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hw, align 4
  %add.ptr92.i.i = getelementptr i8, ptr %91, i32 5428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92.i.i, i32 16777216) #10, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %imt.i = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 4, i32 20
  %92 = ptrtoint ptr %imt.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %imt.i, align 4
  %94 = tail call i16 @llvm.bswap.i16(i16 %93) #10
  %95 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hw, align 4
  %add.ptr11.i = getelementptr i8, ptr %96, i32 5128
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i, i16 %94) #10, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !187
  tail call void @arm_heavy_mb() #10
  %97 = ptrtoint ptr %imt.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %imt.i, align 4
  %99 = tail call i16 @llvm.bswap.i16(i16 %98) #10
  %100 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hw, align 4
  %add.ptr17.i = getelementptr i8, ptr %101, i32 5130
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr17.i, i16 %99) #10, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  tail call void @arm_heavy_mb() #10
  %102 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %hw, align 4
  %add.ptr22.i = getelementptr i8, ptr %103, i32 5120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 604110848) #10, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !189
  tail call void @arm_heavy_mb() #10
  %rrd_thresh.i = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 4, i32 23
  %104 = ptrtoint ptr %rrd_thresh.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %rrd_thresh.i, align 4
  %106 = tail call i16 @llvm.bswap.i16(i16 %105) #10
  %107 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %hw, align 4
  %add.ptr27.i = getelementptr i8, ptr %108, i32 5578
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr27.i, i16 %106) #10, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !190
  tail call void @arm_heavy_mb() #10
  %tpd_thresh.i = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 4, i32 24
  %109 = ptrtoint ptr %tpd_thresh.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %tpd_thresh.i, align 2
  %111 = tail call i16 @llvm.bswap.i16(i16 %110) #10
  %112 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %hw, align 4
  %add.ptr32.i = getelementptr i8, ptr %113, i32 5576
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr32.i, i16 %111) #10, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @arm_heavy_mb() #10
  %rx_count_down.i = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 4, i32 25
  %114 = ptrtoint ptr %rx_count_down.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %rx_count_down.i, align 4
  %116 = tail call i16 @llvm.bswap.i16(i16 %115) #10
  %117 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %hw, align 4
  %add.ptr37.i = getelementptr i8, ptr %118, i32 5582
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr37.i, i16 %116) #10, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  %tx_count_down.i = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 4, i32 26
  %119 = ptrtoint ptr %tx_count_down.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %tx_count_down.i, align 2
  %121 = tail call i16 @llvm.bswap.i16(i16 %120) #10
  %122 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %hw, align 4
  %add.ptr42.i = getelementptr i8, ptr %123, i32 5580
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr42.i, i16 %121) #10, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !193
  tail call void @arm_heavy_mb() #10
  %ict.i = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 4, i32 21
  %124 = ptrtoint ptr %ict.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %ict.i, align 2
  %126 = tail call i16 @llvm.bswap.i16(i16 %125) #10
  %127 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %hw, align 4
  %add.ptr47.i = getelementptr i8, ptr %128, i32 5134
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr47.i, i16 %126) #10, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %max_frame_size.i = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 4, i32 13
  %129 = ptrtoint ptr %max_frame_size.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %max_frame_size.i, align 2
  %conv.i = zext i16 %130 to i32
  %add52.i = add nuw nsw i32 %conv.i, 22
  %131 = tail call i32 @llvm.bswap.i32(i32 %add52.i) #10
  %132 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %hw, align 4
  %add.ptr54.i = getelementptr i8, ptr %133, i32 5276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54.i, i32 %131) #10, !srcloc !168
  %nic_type.i.i = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 4, i32 3
  %134 = ptrtoint ptr %nic_type.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %nic_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %135)
  %cmp.not.i.i = icmp eq i32 %135, 2
  br i1 %cmp.not.i.i, label %atl1e_configure_des_ring.exit.i.if.end22.i.i_crit_edge, label %if.then.i.i

atl1e_configure_des_ring.exit.i.if.end22.i.i_crit_edge: ; preds = %atl1e_configure_des_ring.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i.i

if.then.i.i:                                      ; preds = %atl1e_configure_des_ring.exit.i
  %136 = ptrtoint ptr %max_frame_size.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %max_frame_size.i, align 2
  %conv.i.i = zext i16 %137 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1501, i16 %137)
  %cmp2.i.i = icmp ult i16 %137, 1501
  br i1 %cmp2.i.i, label %if.then4.i.i, label %if.else.i.i

if.then4.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i.i = add nuw nsw i32 %conv.i.i, 22
  br label %do.body.i.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 6144, i16 %137)
  %cmp9.i.i = icmp ult i16 %137, 6144
  br i1 %cmp9.i.i, label %if.then11.i.i, label %if.else15.i.i

if.then11.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add14.i.i = shl nuw nsw i32 %conv.i.i, 1
  %mul.i.i = add nuw nsw i32 %add14.i.i, 44
  %div.i.i = udiv i32 %mul.i.i, 3
  br label %do.body.i.i

if.else15.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add18.i.i = add nuw nsw i32 %conv.i.i, 22
  %div1988.i.i = lshr i32 %add18.i.i, 1
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.else15.i.i, %if.then11.i.i, %if.then4.i.i
  %jumbo_thresh.0.i.i = phi i32 [ %add.i.i, %if.then4.i.i ], [ %div.i.i, %if.then11.i.i ], [ %div1988.i.i, %if.else15.i.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  %add21.i.i = add nuw nsw i32 %jumbo_thresh.0.i.i, 7
  %shr.i.i = lshr i32 %add21.i.i, 3
  %138 = tail call i32 @llvm.bswap.i32(i32 %shr.i.i) #10
  %139 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %hw, align 4
  %add.ptr.i100.i = getelementptr i8, ptr %140, i32 5508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i100.i, i32 %138) #10, !srcloc !168
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %do.body.i.i, %atl1e_configure_des_ring.exit.i.if.end22.i.i_crit_edge
  %141 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %hw, align 4
  %add.ptr24.i.i = getelementptr i8, ptr %142, i32 96
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i.i) #10, !srcloc !169
  %144 = tail call i32 @llvm.bswap.i32(i32 %143) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  %shr26.i.i = lshr i32 %144, 5
  %and.i.i = and i32 %shr26.i.i, 7
  %dmaw_block.i.i = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 4, i32 32
  %145 = ptrtoint ptr %dmaw_block.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %dmaw_block.i.i, align 4
  %147 = tail call i32 @llvm.umin.i32(i32 %and.i.i, i32 %146) #10
  %148 = ptrtoint ptr %dmaw_block.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %dmaw_block.i.i, align 4
  %shr31.i.i = lshr i32 %144, 12
  %and32.i.i = and i32 %shr31.i.i, 7
  %dmar_block.i.i = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 4, i32 31
  %149 = ptrtoint ptr %dmar_block.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %dmar_block.i.i, align 4
  %151 = tail call i32 @llvm.umin.i32(i32 %and32.i.i, i32 %150) #10
  %152 = ptrtoint ptr %dmar_block.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %dmar_block.i.i, align 4
  %153 = ptrtoint ptr %nic_type.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %nic_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %154)
  %cmp42.not.i.i = icmp eq i32 %154, 2
  br i1 %cmp42.not.i.i, label %if.end22.i.i.atl1e_configure_tx.exit.i_crit_edge, label %do.body45.i.i

if.end22.i.i.atl1e_configure_tx.exit.i_crit_edge: ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1e_configure_tx.exit.i

do.body45.i.i:                                    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %155 = ptrtoint ptr %dmar_block.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %dmar_block.i.i, align 4
  %arrayidx.i101.i = getelementptr [6 x i16], ptr @atl1e_pay_load_size, i32 0, i32 %156
  %157 = ptrtoint ptr %arrayidx.i101.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %arrayidx.i101.i, align 2
  %159 = tail call i16 @llvm.bswap.i16(i16 %158) #10
  %160 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %hw, align 4
  %add.ptr51.i.i = getelementptr i8, ptr %161, i32 5506
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr51.i.i, i16 %159) #10, !srcloc !186
  br label %atl1e_configure_tx.exit.i

atl1e_configure_tx.exit.i:                        ; preds = %do.body45.i.i, %if.end22.i.i.atl1e_configure_tx.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  tail call void @arm_heavy_mb() #10
  %tpd_burst.i.i = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 4, i32 27
  %162 = ptrtoint ptr %tpd_burst.i.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %tpd_burst.i.i, align 4
  %164 = and i8 %163, 15
  %165 = or i8 %164, 96
  %conv60.i.i = zext i8 %165 to i16
  %166 = shl nuw nsw i16 %conv60.i.i, 8
  %167 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %hw, align 4
  %add.ptr62.i.i = getelementptr i8, ptr %168, i32 5504
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr62.i.i, i16 %166) #10, !srcloc !186
  %169 = ptrtoint ptr %nic_type.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %nic_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %170)
  %cmp.not.i104.i = icmp eq i32 %170, 2
  br i1 %cmp.not.i104.i, label %atl1e_configure_tx.exit.i.atl1e_configure_rx.exit.i_crit_edge, label %do.body.i108.i

atl1e_configure_tx.exit.i.atl1e_configure_rx.exit.i_crit_edge: ; preds = %atl1e_configure_tx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1e_configure_rx.exit.i

do.body.i108.i:                                   ; preds = %atl1e_configure_tx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %rx_jumbo_th.i.i = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 4, i32 14
  %171 = ptrtoint ptr %rx_jumbo_th.i.i to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %rx_jumbo_th.i.i, align 4
  %173 = and i16 %172, 2047
  %174 = or i16 %173, 2048
  %175 = tail call i16 @llvm.bswap.i16(i16 %174) #10
  %176 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %hw, align 4
  %add.ptr.i105.i = getelementptr i8, ptr %177, i32 5540
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i105.i, i16 %175) #10, !srcloc !186
  %178 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %hw, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %179, i32 5412
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i) #10, !srcloc !169
  %181 = tail call i32 @llvm.bswap.i32(i32 %180) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !200
  %mul.i106.i = shl i32 %181, 2
  %div.i107.i = udiv i32 %mul.i106.i, 5
  %div6.i.i = udiv i32 %181, 5
  %and7.i.i = and i32 %div.i107.i, 4095
  %and9.i.i = shl i32 %div6.i.i, 16
  %shl10.i.i = and i32 %and9.i.i, 268369920
  %or11.i.i = or i32 %and7.i.i, %shl10.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !201
  tail call void @arm_heavy_mb() #10
  %182 = tail call i32 @llvm.bswap.i32(i32 %or11.i.i) #10
  %183 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %hw, align 4
  %add.ptr16.i.i = getelementptr i8, ptr %184, i32 5544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i.i, i32 %182) #10, !srcloc !168
  br label %atl1e_configure_rx.exit.i

atl1e_configure_rx.exit.i:                        ; preds = %do.body.i108.i, %atl1e_configure_tx.exit.i.atl1e_configure_rx.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !202
  tail call void @arm_heavy_mb() #10
  %indirect_tab.i.i = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 4, i32 30
  %185 = ptrtoint ptr %indirect_tab.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %indirect_tab.i.i, align 4
  %187 = tail call i32 @llvm.bswap.i32(i32 %186) #10
  %188 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %hw, align 4
  %add.ptr21.i.i = getelementptr i8, ptr %189, i32 5472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i.i, i32 %187) #10, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !203
  tail call void @arm_heavy_mb() #10
  %base_cpu.i.i = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 4, i32 29
  %190 = ptrtoint ptr %base_cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %base_cpu.i.i, align 4
  %192 = tail call i32 @llvm.bswap.i32(i32 %191) #10
  %193 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %hw, align 4
  %add.ptr26.i109.i = getelementptr i8, ptr %194, i32 5500
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i109.i, i32 %192) #10, !srcloc !168
  %rrs_type.i.i = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 4, i32 28
  %195 = ptrtoint ptr %rrs_type.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %rrs_type.i.i, align 4
  %and27.i.i = shl i32 %196, 16
  %197 = and i32 %and27.i.i, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %cmp50.not.i.i = icmp eq i32 %196, 0
  %or53.i.i = or i32 %197, 671088640
  %rxq_ctrl_data.4.i.i = select i1 %cmp50.not.i.i, i32 %197, i32 %or53.i.i
  %or55.i.i = or i32 %rxq_ctrl_data.4.i.i, -1073741696
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !204
  tail call void @arm_heavy_mb() #10
  %198 = tail call i32 @llvm.bswap.i32(i32 %or55.i.i) #10
  %199 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %hw, align 4
  %add.ptr60.i110.i = getelementptr i8, ptr %200, i32 5536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60.i110.i, i32 %198) #10, !srcloc !168
  %201 = ptrtoint ptr %dmar_block.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %dmar_block.i.i, align 4
  %and.i113.i = shl i32 %202, 4
  %shl.i.i = and i32 %and.i113.i, 112
  %203 = ptrtoint ptr %dmaw_block.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %dmaw_block.i.i, align 4
  %and2.i.i = shl i32 %204, 7
  %shl3.i.i = and i32 %and2.i.i, 896
  %or.i.i = or i32 %shl.i.i, %shl3.i.i
  %dmar_dly_cnt.i.i = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 4, i32 34
  %205 = ptrtoint ptr %dmar_dly_cnt.i.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %dmar_dly_cnt.i.i, align 1
  %207 = and i8 %206, 31
  %and6.i.i = zext i8 %207 to i32
  %shl7.i.i = shl nuw nsw i32 %and6.i.i, 11
  %or5.i.i = or i32 %shl7.i.i, %or.i.i
  %dmaw_dly_cnt.i.i = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 4, i32 33
  %208 = ptrtoint ptr %dmaw_dly_cnt.i.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %dmaw_dly_cnt.i.i, align 4
  %210 = and i8 %209, 15
  %and10.i.i = zext i8 %210 to i32
  %shl11.i.i = shl nuw nsw i32 %and10.i.i, 16
  %or8.i.i = or i32 %or5.i.i, %shl11.i.i
  %or12.i.i = or i32 %or8.i.i, 2098180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !205
  tail call void @arm_heavy_mb() #10
  %211 = tail call i32 @llvm.bswap.i32(i32 %or12.i.i) #10
  %212 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %hw, align 4
  %add.ptr.i115.i = getelementptr i8, ptr %213, i32 5568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115.i, i32 %211) #10, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !206
  tail call void @arm_heavy_mb() #10
  %smb_timer.i = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 4, i32 22
  %214 = ptrtoint ptr %smb_timer.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %smb_timer.i, align 4
  %216 = tail call i32 @llvm.bswap.i32(i32 %215) #10
  %217 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %hw, align 4
  %add.ptr59.i = getelementptr i8, ptr %218, i32 5572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.i, i32 %216) #10, !srcloc !168
  %219 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %hw, align 4
  %add.ptr61.i = getelementptr i8, ptr %220, i32 5632
  %221 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61.i) #10, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !207
  %222 = and i32 %221, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %cmp.not.i = icmp eq i32 %222, 0
  br i1 %cmp.not.i, label %if.end5, label %atl1e_configure.exit, !prof !208

atl1e_configure.exit:                             ; preds = %atl1e_configure_rx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %223 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %adapter, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %224, ptr noundef nonnull @.str.5) #13
  br label %cleanup

if.end5:                                          ; preds = %atl1e_configure_rx.exit.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !209
  tail call void @arm_heavy_mb() #10
  %225 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %hw, align 4
  %add.ptr69.i = getelementptr i8, ptr %226, i32 5632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69.i, i32 -129) #10, !srcloc !168
  %flags = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 21
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags) #10
  %napi = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 2
  tail call void @napi_enable(ptr noundef %napi) #10
  %irq_sem.i = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 10
  %call.i.i.i26 = tail call zeroext i1 @__kasan_check_write(ptr noundef %irq_sem.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !210
  tail call void @llvm.prefetch.p0(ptr %irq_sem.i, i32 1, i32 3, i32 1) #10
  %227 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %irq_sem.i, ptr %irq_sem.i, i32 1, ptr elementtype(i32) %irq_sem.i) #10, !srcloc !211
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %227, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !212
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body.i, label %if.end5.atl1e_irq_enable.exit_crit_edge, !prof !208

if.end5.atl1e_irq_enable.exit_crit_edge:          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1e_irq_enable.exit

do.body.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !213
  tail call void @arm_heavy_mb() #10
  %228 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %hw, align 8
  %add.ptr.i27 = getelementptr i8, ptr %229, i32 5632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 0) #10, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %230 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %hw, align 8
  %add.ptr6.i28 = getelementptr i8, ptr %231, i32 5636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i28, i32 492634896) #10, !srcloc !168
  %232 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %hw, align 8
  %234 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %233) #10, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  br label %atl1e_irq_enable.exit

atl1e_irq_enable.exit:                            ; preds = %do.body.i, %if.end5.atl1e_irq_enable.exit_crit_edge
  %235 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %236, i32 5120
  %237 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !217
  tail call void @arm_heavy_mb() #10
  %238 = or i32 %237, 134217728
  %239 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %hw, align 8
  %add.ptr11 = getelementptr i8, ptr %240, i32 5120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %238) #10, !srcloc !168
  br label %cleanup

cleanup:                                          ; preds = %atl1e_irq_enable.exit, %atl1e_configure.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ 0, %atl1e_irq_enable.exit ], [ -5, %atl1e_configure.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atl1e_init_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl1e_set_multi(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 2568
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 5248
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !169
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !218
  %flags = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or = or i32 %3, 32768
  %and11 = and i32 %3, -33587201
  %and5 = shl i32 %5, 16
  %6 = and i32 %and5, 33554432
  %7 = or i32 %6, %and11
  %mac_ctrl_data.0 = select i1 %tobool.not, i32 %7, i32 %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %8 = tail call i32 @llvm.bswap.i32(i32 %mac_ctrl_data.0)
  %9 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw1, align 4
  %add.ptr14 = getelementptr i8, ptr %10, i32 5248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %8) #10, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !220
  tail call void @arm_heavy_mb() #10
  %11 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw1, align 4
  %add.ptr19 = getelementptr i8, ptr %12, i32 5264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 0) #10, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !221
  tail call void @arm_heavy_mb() #10
  %13 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw1, align 4
  %add.ptr25 = getelementptr i8, ptr %14, i32 5268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 0) #10, !srcloc !168
  %mc = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66
  %15 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %15)
  %ha.052 = load ptr, ptr %mc, align 4
  %cmp.not53 = icmp eq ptr %ha.052, %mc
  br i1 %cmp.not53, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %ha.054 = phi ptr [ %ha.0, %for.body.for.body_crit_edge ], [ %ha.052, %entry.for.body_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.054, i32 0, i32 2
  %call31 = tail call i32 @atl1e_hash_mc_addr(ptr noundef %hw1, ptr noundef %addr) #10
  tail call void @atl1e_hash_set(ptr noundef %hw1, i32 noundef %call31) #10
  %16 = ptrtoint ptr %ha.054 to i32
  call void @__asan_load4_noabort(i32 %16)
  %ha.0 = load ptr, ptr %ha.054, align 4
  %cmp.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atl1e_reset_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atl1e_clean_tx_ring(ptr nocapture noundef readonly %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ring1 = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 18
  %pdev2 = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 1
  %0 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev2, align 4
  %2 = ptrtoint ptr %tx_ring1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_ring1, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %tx_buffer3 = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 18, i32 6
  %4 = ptrtoint ptr %tx_buffer3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_buffer3, align 4
  %cmp4 = icmp eq ptr %5, null
  br i1 %cmp4, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %count = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 18, i32 2
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp681.not = icmp eq i16 %7, 0
  br i1 %cmp681.not, label %if.end.for.end44_crit_edge, label %for.body.lr.ph

if.end.for.end44_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end44

for.body.lr.ph:                                   ; preds = %if.end
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %wide.trip.count = zext i16 %7 to i32
  br label %for.body

for.cond28.preheader:                             ; preds = %for.inc
  br i1 %cmp681.not, label %for.cond28.preheader.for.end44_crit_edge, label %for.cond28.preheader.for.body33_crit_edge

for.cond28.preheader.for.body33_crit_edge:        ; preds = %for.cond28.preheader
  br label %for.body33

for.cond28.preheader.for.end44_crit_edge:         ; preds = %for.cond28.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end44

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %tx_buffer3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_buffer3, align 4
  %dma = getelementptr %struct.atl1e_tx_buffer, ptr %9, i32 %indvars.iv, i32 3
  %10 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then9

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then9:                                         ; preds = %for.body
  %flags = getelementptr %struct.atl1e_tx_buffer, ptr %9, i32 %indvars.iv, i32 1
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags, align 4
  %14 = and i16 %13, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %if.then9.if.end25_crit_edge, label %if.end25.sink.split

if.then9.if.end25_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.end25.sink.split:                              ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %length22 = getelementptr %struct.atl1e_tx_buffer, ptr %9, i32 %indvars.iv, i32 2
  %16 = ptrtoint ptr %length22 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %length22, align 2
  %conv23 = zext i16 %17 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %11, i32 noundef %conv23, i32 noundef 1, i32 noundef 0) #10
  br label %if.end25

if.end25:                                         ; preds = %if.end25.sink.split, %if.then9.if.end25_crit_edge
  %18 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %dma, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end25, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond28.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body33:                                       ; preds = %for.inc42.for.body33_crit_edge, %for.cond28.preheader.for.body33_crit_edge
  %indvars.iv85 = phi i32 [ %indvars.iv.next86, %for.inc42.for.body33_crit_edge ], [ 0, %for.cond28.preheader.for.body33_crit_edge ]
  %19 = ptrtoint ptr %tx_buffer3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tx_buffer3, align 4
  %arrayidx36 = getelementptr %struct.atl1e_tx_buffer, ptr %20, i32 %indvars.iv85
  %21 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx36, align 4
  %tobool37.not = icmp eq ptr %22, null
  br i1 %tobool37.not, label %for.body33.for.inc42_crit_edge, label %if.then38

for.body33.for.inc42_crit_edge:                   ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc42

if.then38:                                        ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %22, i32 noundef 1) #10
  %23 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %arrayidx36, align 4
  br label %for.inc42

for.inc42:                                        ; preds = %if.then38, %for.body33.for.inc42_crit_edge
  %indvars.iv.next86 = add nuw nsw i32 %indvars.iv85, 1
  %exitcond88.not = icmp eq i32 %indvars.iv.next86, %wide.trip.count
  br i1 %exitcond88.not, label %for.inc42.for.end44_crit_edge, label %for.inc42.for.body33_crit_edge

for.inc42.for.body33_crit_edge:                   ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body33

for.inc42.for.end44_crit_edge:                    ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end44

for.end44:                                        ; preds = %for.inc42.for.end44_crit_edge, %for.cond28.preheader.for.end44_crit_edge, %if.end.for.end44_crit_edge
  %conv5.le.pre-phi90 = phi i32 [ %wide.trip.count, %for.cond28.preheader.for.end44_crit_edge ], [ 0, %if.end.for.end44_crit_edge ], [ %wide.trip.count, %for.inc42.for.end44_crit_edge ]
  %24 = ptrtoint ptr %tx_ring1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_ring1, align 4
  %mul = shl nuw nsw i32 %conv5.le.pre-phi90, 4
  %26 = call ptr @memset(ptr %25, i32 0, i32 %mul)
  %27 = ptrtoint ptr %tx_buffer3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tx_buffer3, align 4
  %mul49 = mul nuw nsw i32 %conv5.le.pre-phi90, 12
  %29 = call ptr @memset(ptr %28, i32 0, i32 %mul49)
  br label %cleanup

cleanup:                                          ; preds = %for.end44, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1e_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @atl1e_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @atl1e_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_unregister_driver(ptr noundef nonnull @atl1e_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atl1e_hash_mc_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @atl1e_hash_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atl1e_vlan_mode(ptr noundef %netdev, i64 noundef %features) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atl1e_vlan_mode.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atl1e_vlan_mode, %if.then)) #10
          to label %do.end7 [label %if.then], !srcloc !171

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @atl1e_vlan_mode.__UNIQUE_ID_ddebug503, ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  %irq_sem.i = getelementptr i8, ptr %netdev, i32 2920
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %irq_sem.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %irq_sem.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %irq_sem.i, ptr %irq_sem.i, i32 1, ptr elementtype(i32) %irq_sem.i) #10, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !167
  tail call void @arm_heavy_mb() #10
  %hw.i = getelementptr i8, ptr %netdev, i32 2568
  %3 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw.i, align 8
  %add.ptr.i21 = getelementptr i8, ptr %4, i32 5636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 0) #10, !srcloc !168
  %5 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw.i, align 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #10, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !170
  %pdev.i = getelementptr i8, ptr %netdev, i32 2308
  %8 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 46
  %10 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq.i, align 4
  tail call void @synchronize_irq(i32 noundef %11) #10
  %12 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw.i, align 8
  %add.ptr = getelementptr i8, ptr %13, i32 5248
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !222
  %15 = and i32 %14, -4194305
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = trunc i64 %features to i32
  %18 = shl i32 %17, 6
  %19 = and i32 %18, 16384
  %storemerge.i = or i32 %16, %19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !223
  tail call void @arm_heavy_mb() #10
  %20 = tail call i32 @llvm.bswap.i32(i32 %storemerge.i)
  %21 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw.i, align 8
  %add.ptr16 = getelementptr i8, ptr %22, i32 5248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %20) #10, !srcloc !168
  %call.i.i.i23 = tail call zeroext i1 @__kasan_check_write(ptr noundef %irq_sem.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !210
  tail call void @llvm.prefetch.p0(ptr %irq_sem.i, i32 1, i32 3, i32 1) #10
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %irq_sem.i, ptr %irq_sem.i, i32 1, ptr elementtype(i32) %irq_sem.i) #10, !srcloc !211
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %23, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !212
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body.i, label %do.end7.atl1e_irq_enable.exit_crit_edge, !prof !208

do.end7.atl1e_irq_enable.exit_crit_edge:          ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1e_irq_enable.exit

do.body.i:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !213
  tail call void @arm_heavy_mb() #10
  %24 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw.i, align 8
  %add.ptr.i25 = getelementptr i8, ptr %25, i32 5632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 0) #10, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %26 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw.i, align 8
  %add.ptr6.i = getelementptr i8, ptr %27, i32 5636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 492634896) #10, !srcloc !168
  %28 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw.i, align 8
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #10, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  br label %atl1e_irq_enable.exit

atl1e_irq_enable.exit:                            ; preds = %do.body.i, %do.end7.atl1e_irq_enable.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @atl1e_hw_set_mac_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1e_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #0 align 64 {
entry:
  %cmd.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev2, i32 noundef %call, ptr noundef nonnull @.str.6) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev2, i64 noundef 4294967295) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.7) #13
  br label %err_dma

if.end7:                                          ; preds = %if.end
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev2, i64 noundef 4294967295) #10
  %call8 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @atl1e_driver_name) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end15, label %do.end13

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.12) #13
  br label %err_dma

if.end15:                                         ; preds = %if.end7
  tail call void @pci_set_master(ptr noundef %pdev) #10
  %call16 = tail call ptr @alloc_etherdev_mqs(i32 noundef 1168, i32 noundef 1, i32 noundef 1) #10
  %cmp = icmp eq ptr %call16, null
  br i1 %cmp, label %if.end15.err_alloc_etherdev_crit_edge, label %if.end18

if.end15.err_alloc_etherdev_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_alloc_etherdev

if.end18:                                         ; preds = %if.end15
  %parent.i = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev2, ptr %parent.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %1 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call16, ptr %driver_data.i.i.i, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @atl1e_netdev_ops, ptr %netdev_ops.i, align 8
  %watchdog_timeo.i = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 115
  %3 = ptrtoint ptr %watchdog_timeo.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 500, ptr %watchdog_timeo.i, align 4
  %min_mtu.i = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 30
  %4 = ptrtoint ptr %min_mtu.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 42, ptr %min_mtu.i, align 8
  %max_mtu.i = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 31
  %5 = ptrtoint ptr %max_mtu.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8170, ptr %max_mtu.i, align 4
  tail call void @atl1e_set_ethtool_ops(ptr noundef nonnull %call16) #10
  %hw_features.i = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 24
  %features.i = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 23
  %6 = ptrtoint ptr %features.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 65929, ptr %features.i, align 16
  %7 = ptrtoint ptr %hw_features.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 26388279132425, ptr %hw_features.i, align 8
  %add.ptr.i = getelementptr i8, ptr %call16, i32 2304
  %8 = load i32, ptr @atl1e_probe.cards_found, align 4
  %bd_number = getelementptr i8, ptr %call16, i32 3400
  %9 = ptrtoint ptr %bd_number to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %bd_number, align 8
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call16, ptr %add.ptr.i, align 8
  %pdev25 = getelementptr i8, ptr %call16, i32 2308
  %11 = ptrtoint ptr %pdev25 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %pdev, ptr %pdev25, align 4
  %hw = getelementptr i8, ptr %call16, i32 2568
  %adapter26 = getelementptr i8, ptr %call16, i32 2576
  %12 = ptrtoint ptr %adapter26 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr.i, ptr %adapter26, align 8
  %call27 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 0, i32 noundef 0) #10
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call27, ptr %hw, align 8
  %tobool31.not = icmp eq ptr %call27, null
  br i1 %tobool31.not, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call16, ptr noundef nonnull @.str.15) #13
  br label %err_ioremap

if.end33:                                         ; preds = %if.end18
  %dev34 = getelementptr i8, ptr %call16, i32 2556
  %14 = ptrtoint ptr %dev34 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call16, ptr %dev34, align 4
  %mdio_read = getelementptr i8, ptr %call16, i32 2560
  %15 = ptrtoint ptr %mdio_read to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @atl1e_mdio_read, ptr %mdio_read, align 8
  %mdio_write = getelementptr i8, ptr %call16, i32 2564
  %16 = ptrtoint ptr %mdio_write to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @atl1e_mdio_write, ptr %mdio_write, align 4
  %phy_id_mask = getelementptr i8, ptr %call16, i32 2544
  %17 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 31, ptr %phy_id_mask, align 8
  %reg_num_mask = getelementptr i8, ptr %call16, i32 2548
  %18 = ptrtoint ptr %reg_num_mask to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 31, ptr %reg_num_mask, align 4
  %napi = getelementptr i8, ptr %call16, i32 2312
  tail call void @netif_napi_add(ptr noundef nonnull %call16, ptr noundef %napi, ptr noundef nonnull @atl1e_clean, i32 noundef 64) #10
  %phy_config_timer = getelementptr i8, ptr %call16, i32 3060
  tail call void @init_timer_key(ptr noundef %phy_config_timer, ptr noundef nonnull @atl1e_phy_config, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @atl1e_probe.__key) #10
  tail call void @atl1e_check_options(ptr noundef %add.ptr.i) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd.i) #10
  %19 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -1, ptr %cmd.i, align 2, !annotation !224
  %call.i172 = call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef 4, ptr noundef nonnull %cmd.i) #10
  %20 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %cmd.i, align 2
  %22 = and i16 %21, -1032
  %23 = or i16 %22, 6
  store i16 %23, ptr %cmd.i, align 2
  %call4.i = call i32 @pci_write_config_word(ptr noundef %pdev, i32 noundef 4, i16 noundef zeroext %23) #10
  %call5.i = call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 68, i32 noundef 0) #10
  call void @msleep(i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd.i) #10
  %24 = ptrtoint ptr %pdev25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev25, align 4
  %wol.i = getelementptr i8, ptr %call16, i32 2868
  %26 = ptrtoint ptr %wol.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %wol.i, align 4
  %link_speed.i = getelementptr i8, ptr %call16, i32 2872
  %27 = ptrtoint ptr %link_speed.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 -1, ptr %link_speed.i, align 8
  %link_duplex.i = getelementptr i8, ptr %call16, i32 2874
  %28 = ptrtoint ptr %link_duplex.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 2, ptr %link_duplex.i, align 2
  %num_rx_queues.i = getelementptr i8, ptr %call16, i32 3392
  %29 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %num_rx_queues.i, align 8
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 7
  %30 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vendor.i, align 8
  %vendor_id.i = getelementptr i8, ptr %call16, i32 2586
  %32 = ptrtoint ptr %vendor_id.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %vendor_id.i, align 2
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 8
  %33 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %device.i, align 2
  %device_id.i = getelementptr i8, ptr %call16, i32 2584
  %35 = ptrtoint ptr %device_id.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %device_id.i, align 4
  %subsystem_vendor.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 9
  %36 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %subsystem_vendor.i, align 4
  %subsystem_vendor_id.i = getelementptr i8, ptr %call16, i32 2590
  %38 = ptrtoint ptr %subsystem_vendor_id.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %subsystem_vendor_id.i, align 2
  %subsystem_device.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 10
  %39 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %subsystem_device.i, align 2
  %subsystem_id.i = getelementptr i8, ptr %call16, i32 2588
  %41 = ptrtoint ptr %subsystem_id.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %subsystem_id.i, align 4
  %revision.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 12
  %42 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %revision.i, align 4
  %revision_id.i = getelementptr i8, ptr %call16, i32 2592
  %44 = ptrtoint ptr %revision_id.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %revision_id.i, align 4
  %pci_cmd_word.i = getelementptr i8, ptr %call16, i32 2594
  %call.i173 = call i32 @pci_read_config_word(ptr noundef %25, i32 noundef 4, ptr noundef %pci_cmd_word.i) #10
  %45 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw, align 4
  %add.ptr.i174 = getelementptr i8, ptr %46, i32 5144
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i174) #10, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !225
  %48 = ptrtoint ptr %revision_id.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %revision_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %49)
  %cmp.i175 = icmp ugt i8 %49, -17
  br i1 %cmp.i175, label %if.then.i176, label %if.else.i

if.then.i176:                                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %nic_type.i = getelementptr i8, ptr %call16, i32 2580
  %50 = ptrtoint ptr %nic_type.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2, ptr %nic_type.i, align 4
  br label %atl1e_sw_init.exit

if.else.i:                                        ; preds = %if.end33
  %51 = and i32 %47, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i = icmp eq i32 %51, 0
  %nic_type10.i = getelementptr i8, ptr %call16, i32 2580
  br i1 %tobool.not.i, label %if.else9.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %nic_type10.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %nic_type10.i, align 4
  br label %atl1e_sw_init.exit

if.else9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %nic_type10.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %nic_type10.i, align 4
  br label %atl1e_sw_init.exit

atl1e_sw_init.exit:                               ; preds = %if.else9.i, %if.then7.i, %if.then.i176
  %54 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw, align 4
  %add.ptr15.i = getelementptr i8, ptr %55, i32 5144
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #10, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !226
  %57 = lshr i32 %56, 10
  %58 = trunc i32 %57 to i8
  %59 = and i8 %58, 1
  %60 = getelementptr i8, ptr %call16, i32 2668
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %59, ptr %60, align 4
  %phy_configured.i = getelementptr i8, ptr %call16, i32 2666
  %62 = ptrtoint ptr %phy_configured.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %phy_configured.i, align 2
  %preamble_len.i = getelementptr i8, ptr %call16, i32 2608
  %63 = ptrtoint ptr %preamble_len.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 7, ptr %preamble_len.i, align 4
  %64 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %add.ptr.i, align 8
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %65, i32 0, i32 20
  %66 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mtu.i, align 4
  %conv25.i = trunc i32 %67 to i16
  %max_frame_size.i = getelementptr i8, ptr %call16, i32 2610
  %68 = ptrtoint ptr %max_frame_size.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv25.i, ptr %max_frame_size.i, align 2
  %conv27.i = and i32 %67, 65535
  %add30.i = add nuw nsw i32 %conv27.i, 29
  %69 = lshr i32 %add30.i, 3
  %conv31.i = trunc i32 %69 to i16
  %rx_jumbo_th.i = getelementptr i8, ptr %call16, i32 2612
  %70 = ptrtoint ptr %rx_jumbo_th.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv31.i, ptr %rx_jumbo_th.i, align 4
  %rrs_type.i = getelementptr i8, ptr %call16, i32 2644
  %71 = ptrtoint ptr %rrs_type.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %rrs_type.i, align 4
  %indirect_tab.i = getelementptr i8, ptr %call16, i32 2652
  %72 = ptrtoint ptr %indirect_tab.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %indirect_tab.i, align 4
  %base_cpu.i = getelementptr i8, ptr %call16, i32 2648
  %73 = ptrtoint ptr %base_cpu.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %base_cpu.i, align 4
  %ict.i = getelementptr i8, ptr %call16, i32 2626
  %74 = ptrtoint ptr %ict.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 -15536, ptr %ict.i, align 2
  %smb_timer.i = getelementptr i8, ptr %call16, i32 2628
  %75 = ptrtoint ptr %smb_timer.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 200000, ptr %smb_timer.i, align 4
  %tpd_burst.i = getelementptr i8, ptr %call16, i32 2640
  %76 = ptrtoint ptr %tpd_burst.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 5, ptr %tpd_burst.i, align 4
  %rrd_thresh.i = getelementptr i8, ptr %call16, i32 2632
  %77 = ptrtoint ptr %rrd_thresh.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 1, ptr %rrd_thresh.i, align 4
  %count.i = getelementptr i8, ptr %call16, i32 3128
  %78 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %count.i, align 8
  %80 = lshr i16 %79, 1
  %tpd_thresh.i = getelementptr i8, ptr %call16, i32 2634
  %81 = ptrtoint ptr %tpd_thresh.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %80, ptr %tpd_thresh.i, align 2
  %rx_count_down.i = getelementptr i8, ptr %call16, i32 2636
  %82 = ptrtoint ptr %rx_count_down.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 4, ptr %rx_count_down.i, align 4
  %imt.i = getelementptr i8, ptr %call16, i32 2624
  %83 = ptrtoint ptr %imt.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %imt.i, align 4
  %conv34.i = zext i16 %84 to i32
  %mul.i = shl nuw nsw i32 %conv34.i, 2
  %div35.i = udiv i32 %mul.i, 3
  %conv36.i = trunc i32 %div35.i to i16
  %tx_count_down.i = getelementptr i8, ptr %call16, i32 2638
  %85 = ptrtoint ptr %tx_count_down.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv36.i, ptr %tx_count_down.i, align 2
  %dmar_block.i = getelementptr i8, ptr %call16, i32 2656
  %86 = ptrtoint ptr %dmar_block.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 3, ptr %dmar_block.i, align 4
  %dmaw_block.i = getelementptr i8, ptr %call16, i32 2660
  %87 = ptrtoint ptr %dmaw_block.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 3, ptr %dmaw_block.i, align 4
  %dmar_dly_cnt.i = getelementptr i8, ptr %call16, i32 2665
  %88 = ptrtoint ptr %dmar_dly_cnt.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 15, ptr %dmar_dly_cnt.i, align 1
  %dmaw_dly_cnt.i = getelementptr i8, ptr %call16, i32 2664
  %89 = ptrtoint ptr %dmaw_dly_cnt.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 4, ptr %dmaw_dly_cnt.i, align 4
  %irq_sem.i = getelementptr i8, ptr %call16, i32 2920
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %irq_sem.i, i32 noundef 4) #10
  %90 = ptrtoint ptr %irq_sem.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile i32 1, ptr %irq_sem.i, align 4
  %mdio_lock.i = getelementptr i8, ptr %call16, i32 2876
  call void @__raw_spin_lock_init(ptr noundef %mdio_lock.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @atl1e_sw_init.__key, i16 noundef signext 3) #10
  %flags.i = getelementptr i8, ptr %call16, i32 3396
  call void @_set_bit(i32 noundef 3, ptr noundef %flags.i) #10
  %call47 = call i32 @atl1e_phy_init(ptr noundef %hw) #10
  %call49 = call i32 @atl1e_reset_hw(ptr noundef %hw) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %atl1e_sw_init.exit.err_eeprom_crit_edge

atl1e_sw_init.exit.err_eeprom_crit_edge:          ; preds = %atl1e_sw_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_eeprom

if.end52:                                         ; preds = %atl1e_sw_init.exit
  %call54 = call i32 @atl1e_read_mac_addr(ptr noundef %hw) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55.not = icmp eq i32 %call54, 0
  br i1 %cmp55.not, label %if.end57, label %if.end52.err_eeprom.sink.split_crit_edge

if.end52.err_eeprom.sink.split_crit_edge:         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_eeprom.sink.split

if.end57:                                         ; preds = %if.end52
  %mac_addr = getelementptr i8, ptr %call16, i32 2596
  call void @dev_addr_mod(ptr noundef nonnull %call16, i32 noundef 0, ptr noundef %mac_addr, i32 noundef 6) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atl1e_probe.__UNIQUE_ID_ddebug517, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atl1e_probe, %if.then65)) #10
          to label %do.body74 [label %if.then65], !srcloc !171

if.then65:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @atl1e_probe.__UNIQUE_ID_ddebug517, ptr noundef nonnull %call16, ptr noundef nonnull @.str.19, ptr noundef %mac_addr) #10
  br label %do.body74

do.body74:                                        ; preds = %if.then65, %if.end57
  %reset_task = getelementptr i8, ptr %call16, i32 2924
  call void @__init_work(ptr noundef %reset_task, i32 noundef 0) #10
  %91 = ptrtoint ptr %reset_task to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -64, ptr %reset_task, align 4
  %lockdep_map = getelementptr i8, ptr %call16, i32 2940
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.21, ptr noundef nonnull @atl1e_probe.__key.20, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry78 = getelementptr i8, ptr %call16, i32 2928
  %92 = ptrtoint ptr %entry78 to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %entry78, ptr %entry78, align 4
  %prev.i = getelementptr i8, ptr %call16, i32 2932
  %93 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %entry78, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call16, i32 2936
  %94 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @atl1e_reset_task, ptr %func, align 4
  %link_chg_task = getelementptr i8, ptr %call16, i32 2968
  call void @__init_work(ptr noundef %link_chg_task, i32 noundef 0) #10
  %95 = ptrtoint ptr %link_chg_task to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 -64, ptr %link_chg_task, align 8
  %lockdep_map88 = getelementptr i8, ptr %call16, i32 2984
  call void @lockdep_init_map_type(ptr noundef %lockdep_map88, ptr noundef nonnull @.str.23, ptr noundef nonnull @atl1e_probe.__key.22, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry90 = getelementptr i8, ptr %call16, i32 2972
  %96 = ptrtoint ptr %entry90 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %entry90, ptr %entry90, align 4
  %prev.i177 = getelementptr i8, ptr %call16, i32 2976
  %97 = ptrtoint ptr %prev.i177 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %entry90, ptr %prev.i177, align 4
  %func92 = getelementptr i8, ptr %call16, i32 2980
  %98 = ptrtoint ptr %func92 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @atl1e_link_chg_task, ptr %func92, align 4
  %gso_max_size.i = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 137
  %99 = ptrtoint ptr %gso_max_size.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile i32 15360, ptr %gso_max_size.i, align 8
  %call95 = call i32 @register_netdev(ptr noundef nonnull %call16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end98, label %do.body74.err_eeprom.sink.split_crit_edge

do.body74.err_eeprom.sink.split_crit_edge:        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_eeprom.sink.split

if.end98:                                         ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #12
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 103
  %100 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %101, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  call void @netif_carrier_off(ptr noundef nonnull %call16) #10
  %102 = load i32, ptr @atl1e_probe.cards_found, align 4
  %inc = add i32 %102, 1
  store i32 %inc, ptr @atl1e_probe.cards_found, align 4
  br label %cleanup

err_eeprom.sink.split:                            ; preds = %do.body74.err_eeprom.sink.split_crit_edge, %if.end52.err_eeprom.sink.split_crit_edge
  %.str.24.sink = phi ptr [ @.str.18, %if.end52.err_eeprom.sink.split_crit_edge ], [ @.str.24, %do.body74.err_eeprom.sink.split_crit_edge ]
  %err.0.ph = phi i32 [ -5, %if.end52.err_eeprom.sink.split_crit_edge ], [ %call95, %do.body74.err_eeprom.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call16, ptr noundef nonnull %.str.24.sink) #13
  br label %err_eeprom

err_eeprom:                                       ; preds = %err_eeprom.sink.split, %atl1e_sw_init.exit.err_eeprom_crit_edge
  %err.0 = phi i32 [ -5, %atl1e_sw_init.exit.err_eeprom_crit_edge ], [ %err.0.ph, %err_eeprom.sink.split ]
  %103 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %hw, align 8
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef %104) #10
  br label %err_ioremap

err_ioremap:                                      ; preds = %err_eeprom, %if.then32
  %err.1 = phi i32 [ %err.0, %err_eeprom ], [ -5, %if.then32 ]
  call void @free_netdev(ptr noundef nonnull %call16) #10
  br label %err_alloc_etherdev

err_alloc_etherdev:                               ; preds = %err_ioremap, %if.end15.err_alloc_etherdev_crit_edge
  %err.2 = phi i32 [ %err.1, %err_ioremap ], [ -12, %if.end15.err_alloc_etherdev_crit_edge ]
  call void @pci_release_regions(ptr noundef %pdev) #10
  br label %err_dma

err_dma:                                          ; preds = %err_alloc_etherdev, %do.end13, %do.end
  %err.3 = phi i32 [ %call.i, %do.end ], [ %call8, %do.end13 ], [ %err.2, %err_alloc_etherdev ]
  call void @pci_disable_device(ptr noundef %pdev) #10
  br label %cleanup

cleanup:                                          ; preds = %err_dma, %if.end98, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %err.3, %err_dma ], [ 0, %if.end98 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl1e_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %flags = getelementptr i8, ptr %1, i32 3396
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #10
  %phy_config_timer.i = getelementptr i8, ptr %1, i32 3060
  %call.i = tail call i32 @del_timer_sync(ptr noundef %phy_config_timer.i) #10
  %reset_task.i = getelementptr i8, ptr %1, i32 2924
  %call.i13 = tail call zeroext i1 @cancel_work_sync(ptr noundef %reset_task.i) #10
  %link_chg_task.i = getelementptr i8, ptr %1, i32 2968
  %call1.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %link_chg_task.i) #10
  tail call void @unregister_netdev(ptr noundef %1) #10
  tail call fastcc void @atl1e_free_ring_resources(ptr noundef %add.ptr.i)
  %hw = getelementptr i8, ptr %1, i32 2568
  tail call void @atl1e_force_ps(ptr noundef %hw) #10
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %3) #10
  tail call void @pci_release_regions(ptr noundef %pdev) #10
  tail call void @free_netdev(ptr noundef %1) #10
  tail call void @pci_disable_device(ptr noundef %pdev) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1e_suspend(ptr noundef %pdev, [1 x i32] %state.coerce) #0 align 64 {
entry:
  %mii_bmsr_data = alloca i16, align 2
  %mii_intr_status_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %hw2 = getelementptr i8, ptr %1, i32 2568
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mii_bmsr_data) #10
  %2 = ptrtoint ptr %mii_bmsr_data to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %mii_bmsr_data, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mii_intr_status_data) #10
  %3 = ptrtoint ptr %mii_intr_status_data to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %mii_intr_status_data, align 2
  %wol = getelementptr i8, ptr %1, i32 2868
  %4 = ptrtoint ptr %wol to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wol, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end26_crit_edge, label %if.then

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then:                                          ; preds = %entry
  %flags = getelementptr i8, ptr %1, i32 3396
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %do.end, !prof !208

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2081, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  tail call void @atl1e_down(ptr noundef %add.ptr.i)
  br label %if.end26

if.end26:                                         ; preds = %if.end, %entry.if.end26_crit_edge
  tail call void @netif_device_detach(ptr noundef %1) #10
  %call27 = tail call i32 @pci_save_state(ptr noundef %pdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool31.not = icmp eq i32 %5, 0
  br i1 %tobool31.not, label %if.end30.do.body186_crit_edge, label %if.then32

if.end30.do.body186_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body186

if.then32:                                        ; preds = %if.end30
  %call33 = call i32 @atl1e_read_phy_reg(ptr noundef %hw2, i16 noundef zeroext 1, ptr noundef nonnull %mii_bmsr_data) #10
  %call34 = call i32 @atl1e_read_phy_reg(ptr noundef %hw2, i16 noundef zeroext 1, ptr noundef nonnull %mii_bmsr_data) #10
  %call35 = call i32 @atl1e_write_phy_reg(ptr noundef %hw2, i32 noundef 9, i16 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp.not = icmp eq i32 %call35, 0
  br i1 %cmp.not, label %lor.lhs.false, label %if.then32.do.body43_crit_edge

if.then32.do.body43_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body43

lor.lhs.false:                                    ; preds = %if.then32
  %call36 = call i32 @atl1e_write_phy_reg(ptr noundef %hw2, i32 noundef 4, i16 noundef zeroext 32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37.not = icmp eq i32 %call36, 0
  br i1 %cmp37.not, label %lor.lhs.false38, label %lor.lhs.false.do.body43_crit_edge

lor.lhs.false.do.body43_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body43

lor.lhs.false38:                                  ; preds = %lor.lhs.false
  %call39 = call i32 @atl1e_phy_commit(ptr noundef %hw2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40.not = icmp eq i32 %call39, 0
  br i1 %cmp40.not, label %if.end60, label %lor.lhs.false38.do.body43_crit_edge

lor.lhs.false38.do.body43_crit_edge:              ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body43

do.body43:                                        ; preds = %lor.lhs.false38.do.body43_crit_edge, %lor.lhs.false.do.body43_crit_edge, %if.then32.do.body43_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atl1e_suspend.__UNIQUE_ID_ddebug513, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atl1e_suspend, %if.then53)) #10
          to label %do.body186 [label %if.then53], !srcloc !171

if.then53:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @atl1e_suspend.__UNIQUE_ID_ddebug513, ptr noundef %12, ptr noundef nonnull @.str.54) #10
  br label %do.body186

if.end60:                                         ; preds = %lor.lhs.false38
  %phy_configured = getelementptr i8, ptr %1, i32 2666
  %13 = ptrtoint ptr %phy_configured to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %phy_configured, align 2
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool61.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool61.not, i32 0, i32 12
  %and64 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end60.if.end131_crit_edge, label %if.then66

if.end60.if.end131_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end131

if.then66:                                        ; preds = %if.end60
  %14 = ptrtoint ptr %mii_bmsr_data to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %mii_bmsr_data, align 2
  %16 = and i16 %15, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool68.not = icmp eq i16 %16, 0
  br i1 %tobool68.not, label %if.then66.if.end104_crit_edge, label %if.then66.for.body_crit_edge

if.then66.for.body_crit_edge:                     ; preds = %if.then66
  br label %for.body

if.then66.if.end104_crit_edge:                    ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then66.for.body_crit_edge
  %i.0303 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then66.for.body_crit_edge ]
  call void @msleep(i32 noundef 100) #10
  %call72 = call i32 @atl1e_read_phy_reg(ptr noundef %hw2, i16 noundef zeroext 1, ptr noundef nonnull %mii_bmsr_data) #10
  %17 = ptrtoint ptr %mii_bmsr_data to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %mii_bmsr_data, align 2
  %19 = and i16 %18, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool75.not = icmp ne i16 %19, 0
  %inc = add nuw nsw i32 %i.0303, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 28
  %or.cond = select i1 %tobool75.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %20 = ptrtoint ptr %mii_bmsr_data to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %mii_bmsr_data, align 2
  %22 = and i16 %21, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp80 = icmp eq i16 %22, 0
  br i1 %cmp80, label %do.body84, label %for.end.if.end104_crit_edge

for.end.if.end104_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

do.body84:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atl1e_suspend.__UNIQUE_ID_ddebug514, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atl1e_suspend, %if.then96)) #10
          to label %if.end104 [label %if.then96], !srcloc !171

if.then96:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @atl1e_suspend.__UNIQUE_ID_ddebug514, ptr noundef %24, ptr noundef nonnull @.str.55) #10
  br label %if.end104

if.end104:                                        ; preds = %if.then96, %do.body84, %for.end.if.end104_crit_edge, %if.then66.if.end104_crit_edge
  %or105 = or i32 %spec.select, 48
  %call106 = call i32 @atl1e_write_phy_reg(ptr noundef %hw2, i32 noundef 18, i16 noundef zeroext 1024) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %cmp107.not = icmp eq i32 %call106, 0
  br i1 %cmp107.not, label %if.end104.if.end131_crit_edge, label %do.body111

if.end104.if.end131_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end131

do.body111:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atl1e_suspend.__UNIQUE_ID_ddebug515, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atl1e_suspend, %if.then123)) #10
          to label %do.body186 [label %if.then123], !srcloc !171

if.then123:                                       ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @atl1e_suspend.__UNIQUE_ID_ddebug515, ptr noundef %26, ptr noundef nonnull @.str.56) #10
  br label %do.body186

if.end131:                                        ; preds = %if.end104.if.end131_crit_edge, %if.end60.if.end131_crit_edge
  %wol_ctrl_data.1 = phi i32 [ %or105, %if.end104.if.end131_crit_edge ], [ %spec.select, %if.end60.if.end131_crit_edge ]
  %call132 = call i32 @atl1e_read_phy_reg(ptr noundef %hw2, i16 noundef zeroext 19, ptr noundef nonnull %mii_intr_status_data) #10
  %preamble_len = getelementptr i8, ptr %1, i32 2608
  %27 = ptrtoint ptr %preamble_len to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %preamble_len, align 8
  %29 = and i8 %28, 15
  %and136 = zext i8 %29 to i32
  %shl = shl nuw nsw i32 %and136, 10
  %features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %30 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %features, align 16
  %32 = trunc i64 %31 to i32
  %33 = shl i32 %32, 6
  %34 = and i32 %33, 16384
  %or137 = or i32 %34, %shl
  %spec.select302.v = select i1 %tobool61.not, i32 1048578, i32 68157442
  %spec.select302 = or i32 %or137, %spec.select302.v
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atl1e_suspend.__UNIQUE_ID_ddebug516, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atl1e_suspend, %if.then156)) #10
          to label %do.body163 [label %if.then156], !srcloc !171

if.then156:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @atl1e_suspend.__UNIQUE_ID_ddebug516, ptr noundef %36, ptr noundef nonnull @.str.57, i32 noundef %spec.select302) #10
  br label %do.body163

do.body163:                                       ; preds = %if.then156, %if.end131
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !227
  call void @arm_heavy_mb() #10
  %37 = call i32 @llvm.bswap.i32(i32 %wol_ctrl_data.1)
  %38 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw2, align 4
  %add.ptr = getelementptr i8, ptr %39, i32 5280
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %37) #10, !srcloc !168
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !228
  call void @arm_heavy_mb() #10
  %40 = call i32 @llvm.bswap.i32(i32 %spec.select302)
  %41 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw2, align 4
  %add.ptr170 = getelementptr i8, ptr %42, i32 5248
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr170, i32 %40) #10, !srcloc !168
  %43 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw2, align 4
  %add.ptr172 = getelementptr i8, ptr %44, i32 4096
  %45 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr172) #10, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %46 = or i32 %45, 67108864
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !230
  call void @arm_heavy_mb() #10
  %47 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hw2, align 4
  %add.ptr181 = getelementptr i8, ptr %48, i32 4096
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr181, i32 %46) #10, !srcloc !168
  br label %suspend_exit

do.body186:                                       ; preds = %if.then123, %do.body111, %if.then53, %do.body43, %if.end30.do.body186_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !231
  call void @arm_heavy_mb() #10
  %49 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw2, align 4
  %add.ptr190 = getelementptr i8, ptr %50, i32 5280
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr190, i32 0) #10, !srcloc !168
  %51 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hw2, align 4
  %add.ptr194 = getelementptr i8, ptr %52, i32 4096
  %53 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr194) #10, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  %54 = or i32 %53, 67108864
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !233
  call void @arm_heavy_mb() #10
  %55 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hw2, align 4
  %add.ptr203 = getelementptr i8, ptr %56, i32 4096
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr203, i32 %54) #10, !srcloc !168
  call void @atl1e_force_ps(ptr noundef %hw2) #10
  %phy_configured204 = getelementptr i8, ptr %1, i32 2666
  %57 = ptrtoint ptr %phy_configured204 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %phy_configured204, align 2
  br label %suspend_exit

suspend_exit:                                     ; preds = %do.body186, %do.body163
  %.sink = phi i1 [ false, %do.body186 ], [ true, %do.body163 ]
  %call206 = call i32 @pci_choose_state(ptr noundef %pdev, [1 x i32] %state.coerce) #10
  %call207 = call i32 @pci_enable_wake(ptr noundef %pdev, i32 noundef %call206, i1 noundef zeroext %.sink) #10
  %58 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %state.i, align 4
  %and1.i.i293 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i293)
  %tobool.i294.not = icmp eq i32 %and1.i.i293, 0
  br i1 %tobool.i294.not, label %suspend_exit.if.end210_crit_edge, label %if.then209

suspend_exit.if.end210_crit_edge:                 ; preds = %suspend_exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end210

if.then209:                                       ; preds = %suspend_exit
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %add.ptr.i, align 8
  %pdev.i = getelementptr i8, ptr %1, i32 2308
  %62 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pdev.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 46
  %64 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %irq.i, align 4
  %call.i = call ptr @free_irq(i32 noundef %65, ptr noundef %61) #10
  br label %if.end210

if.end210:                                        ; preds = %if.then209, %suspend_exit.if.end210_crit_edge
  call void @pci_disable_device(ptr noundef %pdev) #10
  %call212 = call i32 @pci_choose_state(ptr noundef %pdev, [1 x i32] %state.coerce) #10
  %call213 = call i32 @pci_set_power_state(ptr noundef %pdev, i32 noundef %call212) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end210, %if.end26.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end210 ], [ %call27, %if.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mii_intr_status_data) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mii_bmsr_data) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1e_resume(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %call2 = tail call i32 @pci_set_power_state(ptr noundef %pdev, i32 noundef 0) #10
  tail call void @pci_restore_state(ptr noundef %pdev) #10
  %call3 = tail call i32 @pci_enable_device(ptr noundef %pdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.58) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @pci_set_master(ptr noundef %pdev) #10
  %hw = getelementptr i8, ptr %1, i32 2568
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 5280
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !234
  %call7 = tail call i32 @pci_enable_wake(ptr noundef %pdev, i32 noundef 3, i1 noundef zeroext false) #10
  %call8 = tail call i32 @pci_enable_wake(ptr noundef %pdev, i32 noundef 4, i1 noundef zeroext false) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !235
  tail call void @arm_heavy_mb() #10
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 8
  %add.ptr11 = getelementptr i8, ptr %8, i32 5280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 0) #10, !srcloc !168
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.if.end18_crit_edge, label %if.then13

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then13:                                        ; preds = %if.end
  %pdev1.i = getelementptr i8, ptr %1, i32 2308
  %11 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev1.i, align 4
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 8
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 46
  %15 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq.i, align 4
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %16, ptr noundef nonnull @atl1e_intr, ptr noundef null, i32 noundef 128, ptr noundef %14, ptr noundef %14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %do.body14.i, label %do.body3.i

do.body3.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atl1e_request_irq.__UNIQUE_ID_ddebug511, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atl1e_resume, %atl1e_request_irq.exit.thread47)) #10
          to label %cleanup [label %atl1e_request_irq.exit.thread47], !srcloc !171

atl1e_request_irq.exit.thread47:                  ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @atl1e_request_irq.__UNIQUE_ID_ddebug511, ptr noundef %18, ptr noundef nonnull @.str.29, i32 noundef %call.i.i) #10
  br label %cleanup

do.body14.i:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atl1e_request_irq.__UNIQUE_ID_ddebug512, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atl1e_resume, %atl1e_request_irq.exit.thread)) #10
          to label %if.end18 [label %atl1e_request_irq.exit.thread], !srcloc !171

atl1e_request_irq.exit.thread:                    ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @atl1e_request_irq.__UNIQUE_ID_ddebug512, ptr noundef %14, ptr noundef nonnull @.str.30) #10
  br label %if.end18

if.end18:                                         ; preds = %atl1e_request_irq.exit.thread, %do.body14.i, %if.end.if.end18_crit_edge
  %call20 = tail call i32 @atl1e_reset_hw(ptr noundef %hw) #10
  %19 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %state.i, align 4
  %and1.i.i45 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i45)
  %tobool.i46.not = icmp eq i32 %and1.i.i45, 0
  br i1 %tobool.i46.not, label %if.end18.if.end24_crit_edge, label %if.then22

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %call23 = tail call i32 @atl1e_up(ptr noundef %add.ptr.i)
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end18.if.end24_crit_edge
  tail call void @netif_device_attach(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %atl1e_request_irq.exit.thread47, %do.body3.i, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ 0, %if.end24 ], [ %call.i.i, %atl1e_request_irq.exit.thread47 ], [ %call.i.i, %do.body3.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl1e_shutdown(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @atl1e_suspend(ptr noundef %pdev, [1 x i32] [i32 2])
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1e_mdio_read(ptr noundef %netdev, i32 noundef %phy_id, i32 noundef %reg_num) #0 align 64 {
entry:
  %result = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %result) #10
  %0 = ptrtoint ptr %result to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %result, align 2, !annotation !224
  %hw = getelementptr i8, ptr %netdev, i32 2568
  %1 = trunc i32 %reg_num to i16
  %conv = and i16 %1, 31
  %call1 = call i32 @atl1e_read_phy_reg(ptr noundef %hw, i16 noundef zeroext %conv, ptr noundef nonnull %result) #10
  %2 = ptrtoint ptr %result to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %result, align 2
  %conv2 = zext i16 %3 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %result) #10
  ret i32 %conv2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl1e_mdio_write(ptr noundef %netdev, i32 noundef %phy_id, i32 noundef %reg_num, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %netdev, i32 2568
  %and = and i32 %reg_num, 31
  %conv = trunc i32 %val to i16
  %call1 = tail call i32 @atl1e_write_phy_reg(ptr noundef %hw, i32 noundef %and, i16 noundef zeroext %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.42) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1e_clean(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  %work_done = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %work_done) #10
  %0 = ptrtoint ptr %work_done to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %work_done, align 4
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state.i, align 4
  %5 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end, label %entry.quit_polling_crit_edge

entry.quit_polling_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %quit_polling

if.end:                                           ; preds = %entry
  call fastcc void @atl1e_clean_rx_irq(ptr noundef %add.ptr, ptr noundef nonnull %work_done, i32 noundef %budget)
  %6 = ptrtoint ptr %work_done to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %work_done, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %budget)
  %cmp = icmp slt i32 %7, %budget
  br i1 %cmp, label %if.end.quit_polling_crit_edge, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.end.quit_polling_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %quit_polling

quit_polling:                                     ; preds = %if.end.quit_polling_crit_edge, %entry.quit_polling_crit_edge
  %8 = ptrtoint ptr %work_done to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %work_done, align 4
  %call2 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %9) #10
  %hw = getelementptr i8, ptr %napi, i32 256
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 8
  %add.ptr3 = getelementptr i8, ptr %11, i32 5636
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #10, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !237
  tail call void @arm_heavy_mb() #10
  %13 = or i32 %12, 402653440
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 8
  %add.ptr9 = getelementptr i8, ptr %15, i32 5636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %13) #10, !srcloc !168
  %flags = getelementptr i8, ptr %napi, i32 1084
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags, align 4
  %18 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %quit_polling.if.end14_crit_edge, label %if.then11

quit_polling.if.end14_crit_edge:                  ; preds = %quit_polling
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then11:                                        ; preds = %quit_polling
  call void @__sanitizer_cov_trace_pc() #12
  %irq_sem = getelementptr i8, ptr %napi, i32 608
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %irq_sem, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %irq_sem, i32 1, i32 3, i32 1) #10
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %irq_sem, ptr %irq_sem, i32 1, ptr elementtype(i32) %irq_sem) #10, !srcloc !238
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %21, ptr noundef nonnull @.str.43) #13
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %quit_polling.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %22 = ptrtoint ptr %work_done to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %work_done, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %work_done) #10
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl1e_phy_config(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %t, i32 -492
  %mdio_lock = getelementptr i8, ptr %t, i32 -184
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mdio_lock) #10
  %call7 = tail call i32 @atl1e_restart_autoneg(ptr noundef %hw1) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mdio_lock, i32 noundef %call4) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @atl1e_check_options(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atl1e_phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atl1e_read_mac_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl1e_reset_task(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr i8, ptr %work, i32 472
  %call6.i = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not7.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not7.i, label %entry.atl1e_reinit_locked.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.atl1e_reinit_locked.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1e_reinit_locked.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  tail call void @msleep(i32 noundef 1) #10
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags.i) #10
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i.atl1e_reinit_locked.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.atl1e_reinit_locked.exit_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1e_reinit_locked.exit

atl1e_reinit_locked.exit:                         ; preds = %while.body.i.atl1e_reinit_locked.exit_crit_edge, %entry.atl1e_reinit_locked.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %work, i32 -620
  tail call void @atl1e_down(ptr noundef %add.ptr) #10
  %call1.i = tail call i32 @atl1e_up(ptr noundef %add.ptr) #10
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl1e_link_chg_task(ptr noundef %work) #0 align 64 {
entry:
  %speed.i = alloca i16, align 2
  %duplex.i = alloca i16, align 2
  %phy_data.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -664
  %mdio_lock = getelementptr i8, ptr %work, i32 -92
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mdio_lock) #10
  %hw1.i = getelementptr i8, ptr %work, i32 -400
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %speed.i) #10
  %2 = ptrtoint ptr %speed.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %speed.i, align 2, !annotation !224
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %duplex.i) #10
  %3 = ptrtoint ptr %duplex.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %duplex.i, align 2, !annotation !224
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data.i) #10
  %4 = ptrtoint ptr %phy_data.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %phy_data.i, align 2, !annotation !224
  %call.i = call i32 @atl1e_read_phy_reg(ptr noundef %hw1.i, i16 noundef zeroext 1, ptr noundef nonnull %phy_data.i) #10
  %call3.i = call i32 @atl1e_read_phy_reg(ptr noundef %hw1.i, i16 noundef zeroext 1, ptr noundef nonnull %phy_data.i) #10
  %5 = ptrtoint ptr %phy_data.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %phy_data.i, align 2
  %7 = and i16 %6, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp.i = icmp eq i16 %7, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i.i, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %if.then6.i, label %if.then.i.atl1e_check_link.exit_crit_edge

if.then.i.atl1e_check_link.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1e_check_link.exit

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 5248
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !239
  %14 = and i32 %13, -33554433
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !240
  call void @arm_heavy_mb() #10
  %15 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw1.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %16, i32 5248
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %14) #10, !srcloc !168
  %link_speed.i = getelementptr i8, ptr %work, i32 -96
  %17 = ptrtoint ptr %link_speed.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -1, ptr %link_speed.i, align 8
  call void @netif_carrier_off(ptr noundef %1) #10
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %18 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %19, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #10
  br label %atl1e_check_link.exit

if.else.i:                                        ; preds = %entry
  %call12.i = call i32 @atl1e_get_speed_and_duplex(ptr noundef %hw1.i, ptr noundef nonnull %speed.i, ptr noundef nonnull %duplex.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool.not.i, label %if.end16.i, label %if.else.i.atl1e_check_link.exit_crit_edge, !prof !208

if.else.i.atl1e_check_link.exit_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1e_check_link.exit

if.end16.i:                                       ; preds = %if.else.i
  %link_speed17.i = getelementptr i8, ptr %work, i32 -96
  %20 = ptrtoint ptr %link_speed17.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %link_speed17.i, align 8
  %22 = ptrtoint ptr %speed.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %speed.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %23)
  %cmp20.not.i = icmp eq i16 %21, %23
  br i1 %cmp20.not.i, label %lor.lhs.false.i, label %if.end16.i.if.then26.i_crit_edge

if.end16.i.if.then26.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26.i

lor.lhs.false.i:                                  ; preds = %if.end16.i
  %link_duplex.i = getelementptr i8, ptr %work, i32 -94
  %24 = ptrtoint ptr %link_duplex.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %link_duplex.i, align 2
  %26 = ptrtoint ptr %duplex.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %duplex.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %27)
  %cmp24.not.i = icmp eq i16 %25, %27
  br i1 %cmp24.not.i, label %lor.lhs.false.i.if.end35.i_crit_edge, label %lor.lhs.false.i.if.then26.i_crit_edge

lor.lhs.false.i.if.then26.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26.i

lor.lhs.false.i.if.end35.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35.i

if.then26.i:                                      ; preds = %lor.lhs.false.i.if.then26.i_crit_edge, %if.end16.i.if.then26.i_crit_edge
  %28 = ptrtoint ptr %link_speed17.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %23, ptr %link_speed17.i, align 8
  %29 = ptrtoint ptr %duplex.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %duplex.i, align 2
  %link_duplex28.i = getelementptr i8, ptr %work, i32 -94
  %31 = ptrtoint ptr %link_duplex28.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %link_duplex28.i, align 2
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %30)
  %cmp.i.i = icmp eq i16 %30, 2
  %spec.store.select.i.i = select i1 %cmp.i.i, i32 35, i32 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1000, i16 %23)
  %cmp5.i.i = icmp eq i16 %23, 1000
  %cond.i.i = select i1 %cmp5.i.i, i32 2097152, i32 1048576
  %or7.i.i = or i32 %cond.i.i, %spec.store.select.i.i
  %preamble_len.i.i = getelementptr i8, ptr %work, i32 -360
  %34 = ptrtoint ptr %preamble_len.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %preamble_len.i.i, align 8
  %36 = and i8 %35, 15
  %and.i.i = zext i8 %36 to i32
  %shl12.i.i = shl nuw nsw i32 %and.i.i, 10
  %or9.i.i = or i32 %shl12.i.i, %or7.i.i
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 23
  %37 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %features.i.i, align 16
  %39 = trunc i64 %38 to i32
  %40 = shl i32 %39, 6
  %41 = and i32 %40, 16384
  %or13.i.i = or i32 %or9.i.i, %41
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 14
  %42 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags.i.i, align 8
  %and15.i.i = and i32 %43, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i)
  %tobool.not.i1.i = icmp eq i32 %and15.i.i, 0
  %spec.select.v.i.i = select i1 %tobool.not.i1.i, i32 67109068, i32 67141836
  %spec.select.i.i = or i32 %or13.i.i, %spec.select.v.i.i
  %and20.i.i = shl i32 %43, 16
  %44 = and i32 %and20.i.i, 33554432
  %45 = or i32 %spec.select.i.i, %44
  %and26.i.i = lshr i64 %38, 17
  %46 = trunc i64 %and26.i.i to i32
  %47 = and i32 %46, 134217728
  %48 = or i32 %45, %47
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  call void @arm_heavy_mb() #10
  %49 = call i32 @llvm.bswap.i32(i32 %48) #10
  %50 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw1.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %51, i32 5248
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %49) #10, !srcloc !168
  %52 = ptrtoint ptr %link_speed17.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %link_speed17.i, align 8
  %conv30.i = zext i16 %53 to i32
  %54 = ptrtoint ptr %link_duplex28.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %link_duplex28.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %55)
  %cmp33.i = icmp eq i16 %55, 2
  %cond.i = select i1 %cmp33.i, ptr @.str.51, ptr @.str.52
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.50, i32 noundef %conv30.i, ptr noundef nonnull %cond.i) #13
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then26.i, %lor.lhs.false.i.if.end35.i_crit_edge
  %state.i2.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %56 = ptrtoint ptr %state.i2.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %state.i2.i, align 4
  %58 = and i32 %57, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i3.i = icmp eq i32 %58, 0
  br i1 %tobool.not.i3.i, label %if.end35.i.atl1e_check_link.exit_crit_edge, label %if.then37.i

if.end35.i.atl1e_check_link.exit_crit_edge:       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1e_check_link.exit

if.then37.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @netif_carrier_on(ptr noundef %1) #10
  %_tx.i.i4.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %59 = ptrtoint ptr %_tx.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %_tx.i.i4.i, align 128
  call void @netif_tx_wake_queue(ptr noundef %60) #10
  br label %atl1e_check_link.exit

atl1e_check_link.exit:                            ; preds = %if.then37.i, %if.end35.i.atl1e_check_link.exit_crit_edge, %if.else.i.atl1e_check_link.exit_crit_edge, %if.then6.i, %if.then.i.atl1e_check_link.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %duplex.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %speed.i) #10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %mdio_lock, i32 noundef %call3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @atl1e_set_ethtool_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1e_open(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %flags = getelementptr i8, ptr %netdev, i32 3396
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_ring1.i = getelementptr i8, ptr %netdev, i32 3196
  %page_size.i = getelementptr i8, ptr %netdev, i32 3208
  %3 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %page_size.i, align 4
  %max_frame_size.i = getelementptr i8, ptr %netdev, i32 2610
  %5 = ptrtoint ptr %max_frame_size.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %max_frame_size.i, align 2
  %conv.i = zext i16 %6 to i32
  %real_page_size.i = getelementptr i8, ptr %netdev, i32 3212
  %add.i = add i32 %4, 53
  %add7.i = add i32 %add.i, %conv.i
  %div21.i = and i32 %add7.i, -32
  %7 = ptrtoint ptr %real_page_size.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div21.i, ptr %real_page_size.i, align 4
  %ring_size.i = getelementptr i8, ptr %netdev, i32 3116
  %count.i.i = getelementptr i8, ptr %netdev, i32 3128
  %8 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %count.i.i, align 8
  %conv.i.i = zext i16 %9 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 4
  %num_rx_queues.i.i = getelementptr i8, ptr %netdev, i32 3392
  %10 = ptrtoint ptr %num_rx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_rx_queues.i.i, align 8
  %mul2.i.i = shl i32 %div21.i, 1
  %reass.add.i = or i32 %mul2.i.i, 8
  %reass.mul.i = mul i32 %reass.add.i, %11
  %add9.i.i = add nuw nsw i32 %mul.i.i, 45
  %add10.i.i = add i32 %add9.i.i, %reass.mul.i
  %12 = ptrtoint ptr %ring_size.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add10.i.i, ptr %ring_size.i, align 4
  %ring_vir_addr.i = getelementptr i8, ptr %netdev, i32 3112
  %13 = ptrtoint ptr %ring_vir_addr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %ring_vir_addr.i, align 8
  %14 = ptrtoint ptr %rx_ring1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %rx_ring1.i, align 4
  %tx_lock.i = getelementptr i8, ptr %netdev, i32 3132
  tail call void @__rwlock_init(ptr noundef %tx_lock.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @atl1e_init_ring_resources.__key) #10
  %15 = ptrtoint ptr %ring_vir_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring_vir_addr.i, align 8
  %cmp.not.i = icmp eq ptr %16, null
  br i1 %cmp.not.i, label %if.end.i, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end.i:                                         ; preds = %if.end
  %pdev1.i = getelementptr i8, ptr %netdev, i32 2308
  %17 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev1.i, align 4
  %19 = ptrtoint ptr %ring_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ring_size.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %ring_dma.i = getelementptr i8, ptr %netdev, i32 3108
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef %20, ptr noundef %ring_dma.i, i32 noundef 3264, i32 noundef 0) #10
  %21 = ptrtoint ptr %ring_vir_addr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i.i, ptr %ring_vir_addr.i, align 8
  %cmp7.i = icmp eq ptr %call.i.i, null
  br i1 %cmp7.i, label %if.then8.i, label %if.end9.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %23, ptr noundef nonnull @.str.26, i32 noundef %20) #13
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i
  %tx_ring2.i = getelementptr i8, ptr %netdev, i32 3120
  %rx_page_desc10.i = getelementptr i8, ptr %netdev, i32 3216
  %24 = ptrtoint ptr %ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ring_dma.i, align 4
  %add.i43 = add i32 %25, 7
  %div183.i = and i32 %add.i43, -8
  %dma.i = getelementptr i8, ptr %netdev, i32 3124
  %26 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div183.i, ptr %dma.i, align 4
  %sub14.i = sub i32 %div183.i, %25
  %add.ptr.i44 = getelementptr i8, ptr %call.i.i, i32 %sub14.i
  %27 = ptrtoint ptr %tx_ring2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr.i44, ptr %tx_ring2.i, align 4
  %28 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %count.i.i, align 4
  %conv.i45 = zext i16 %29 to i32
  %mul16.i = mul nuw nsw i32 %conv.i45, 12
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul16.i, i32 noundef 3520) #14
  %tx_buffer.i = getelementptr i8, ptr %netdev, i32 3184
  %30 = ptrtoint ptr %tx_buffer.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call9.i.i.i, ptr %tx_buffer.i, align 4
  %cmp19.i = icmp eq ptr %call9.i.i.i, null
  br i1 %cmp19.i, label %if.end9.i.failed.i_crit_edge, label %if.end22.i

if.end9.i.failed.i_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed.i

if.end22.i:                                       ; preds = %if.end9.i
  %31 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %count.i.i, align 4
  %conv24.i = zext i16 %32 to i32
  %mul25.i = shl nuw nsw i32 %conv24.i, 4
  %add26.i = add i32 %sub14.i, 31
  %add30.i = add i32 %add26.i, %mul25.i
  %div31184.i = and i32 %add30.i, -32
  %33 = ptrtoint ptr %num_rx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_rx_queues.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp33190.i = icmp sgt i32 %34, 0
  br i1 %cmp33190.i, label %if.end22.i.for.cond35.preheader.i_crit_edge, label %if.end22.i.for.end51.i_crit_edge

if.end22.i.for.end51.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end51.i

if.end22.i.for.cond35.preheader.i_crit_edge:      ; preds = %if.end22.i
  br label %for.cond35.preheader.i

for.cond35.preheader.i:                           ; preds = %for.cond35.preheader.i.for.cond35.preheader.i_crit_edge, %if.end22.i.for.cond35.preheader.i_crit_edge
  %offset.0192.i = phi i32 [ %add48.1.i, %for.cond35.preheader.i.for.cond35.preheader.i_crit_edge ], [ %div31184.i, %if.end22.i.for.cond35.preheader.i_crit_edge ]
  %i.0191.i = phi i32 [ %inc50.i, %for.cond35.preheader.i.for.cond35.preheader.i_crit_edge ], [ 0, %if.end22.i.for.cond35.preheader.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.atl1e_rx_page_desc, ptr %rx_page_desc10.i, i32 %i.0191.i
  %35 = ptrtoint ptr %ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ring_dma.i, align 4
  %add40.i = add i32 %36, %offset.0192.i
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add40.i, ptr %arrayidx.i, align 4
  %38 = ptrtoint ptr %ring_vir_addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ring_vir_addr.i, align 8
  %add.ptr44.i = getelementptr i8, ptr %39, i32 %offset.0192.i
  %addr.i = getelementptr inbounds %struct.atl1e_rx_page, ptr %arrayidx.i, i32 0, i32 1
  %40 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr44.i, ptr %addr.i, align 4
  %41 = ptrtoint ptr %real_page_size.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %real_page_size.i, align 4
  %add48.i = add i32 %42, %offset.0192.i
  %43 = load i32, ptr %ring_dma.i, align 4
  %add40.1.i = add i32 %43, %add48.i
  %arrayidx41.1.i = getelementptr [2 x %struct.atl1e_rx_page], ptr %arrayidx.i, i32 0, i32 1
  %44 = ptrtoint ptr %arrayidx41.1.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add40.1.i, ptr %arrayidx41.1.i, align 4
  %45 = load ptr, ptr %ring_vir_addr.i, align 8
  %add.ptr44.1.i = getelementptr i8, ptr %45, i32 %add48.i
  %addr.1.i = getelementptr inbounds %struct.atl1e_rx_page, ptr %arrayidx41.1.i, i32 0, i32 1
  %46 = ptrtoint ptr %addr.1.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %add.ptr44.1.i, ptr %addr.1.i, align 4
  %47 = load i32, ptr %real_page_size.i, align 4
  %add48.1.i = add i32 %47, %add48.i
  %inc50.i = add nuw nsw i32 %i.0191.i, 1
  %48 = ptrtoint ptr %num_rx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_rx_queues.i.i, align 8
  %cmp33.i = icmp slt i32 %inc50.i, %49
  br i1 %cmp33.i, label %for.cond35.preheader.i.for.cond35.preheader.i_crit_edge, label %for.cond35.preheader.i.for.end51.i_crit_edge

for.cond35.preheader.i.for.end51.i_crit_edge:     ; preds = %for.cond35.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end51.i

for.cond35.preheader.i.for.cond35.preheader.i_crit_edge: ; preds = %for.cond35.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond35.preheader.i

for.end51.i:                                      ; preds = %for.cond35.preheader.i.for.end51.i_crit_edge, %if.end22.i.for.end51.i_crit_edge
  %offset.0.lcssa.i = phi i32 [ %div31184.i, %if.end22.i.for.end51.i_crit_edge ], [ %add48.1.i, %for.cond35.preheader.i.for.end51.i_crit_edge ]
  %50 = ptrtoint ptr %ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ring_dma.i, align 4
  %add53.i = add i32 %51, %offset.0.lcssa.i
  %cmb_dma.i = getelementptr i8, ptr %netdev, i32 3188
  %52 = ptrtoint ptr %cmb_dma.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add53.i, ptr %cmb_dma.i, align 4
  %53 = ptrtoint ptr %ring_vir_addr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ring_vir_addr.i, align 8
  %add.ptr55.i = getelementptr i8, ptr %54, i32 %offset.0.lcssa.i
  %cmb.i = getelementptr i8, ptr %netdev, i32 3192
  %55 = ptrtoint ptr %cmb.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %add.ptr55.i, ptr %cmb.i, align 4
  %add56.i = add i32 %offset.0.lcssa.i, 4
  %56 = ptrtoint ptr %num_rx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_rx_queues.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp59195.i = icmp sgt i32 %57, 0
  br i1 %cmp59195.i, label %for.end51.i.for.cond62.preheader.i_crit_edge, label %for.end51.i.for.end82.i_crit_edge

for.end51.i.for.end82.i_crit_edge:                ; preds = %for.end51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end82.i

for.end51.i.for.cond62.preheader.i_crit_edge:     ; preds = %for.end51.i
  br label %for.cond62.preheader.i

for.cond62.preheader.i:                           ; preds = %for.cond62.preheader.i.for.cond62.preheader.i_crit_edge, %for.end51.i.for.cond62.preheader.i_crit_edge
  %offset.2197.i = phi i32 [ %add76.1.i, %for.cond62.preheader.i.for.cond62.preheader.i_crit_edge ], [ %add56.i, %for.end51.i.for.cond62.preheader.i_crit_edge ]
  %i.1196.i = phi i32 [ %inc81.i, %for.cond62.preheader.i.for.cond62.preheader.i_crit_edge ], [ 0, %for.end51.i.for.cond62.preheader.i_crit_edge ]
  %arrayidx68.i = getelementptr %struct.atl1e_rx_page_desc, ptr %rx_page_desc10.i, i32 %i.1196.i
  %58 = ptrtoint ptr %ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ring_dma.i, align 4
  %add67.i = add i32 %59, %offset.2197.i
  %write_offset_dma.i = getelementptr inbounds %struct.atl1e_rx_page, ptr %arrayidx68.i, i32 0, i32 2
  %60 = ptrtoint ptr %write_offset_dma.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add67.i, ptr %write_offset_dma.i, align 4
  %61 = ptrtoint ptr %ring_vir_addr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ring_vir_addr.i, align 8
  %add.ptr72.i = getelementptr i8, ptr %62, i32 %offset.2197.i
  %write_offset_addr.i = getelementptr inbounds %struct.atl1e_rx_page, ptr %arrayidx68.i, i32 0, i32 3
  %63 = ptrtoint ptr %write_offset_addr.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %add.ptr72.i, ptr %write_offset_addr.i, align 4
  %add76.i = add i32 %offset.2197.i, 4
  %64 = load i32, ptr %ring_dma.i, align 4
  %add67.1.i = add i32 %64, %add76.i
  %arrayidx70.1.i = getelementptr [2 x %struct.atl1e_rx_page], ptr %arrayidx68.i, i32 0, i32 1
  %write_offset_dma.1.i = getelementptr inbounds %struct.atl1e_rx_page, ptr %arrayidx70.1.i, i32 0, i32 2
  %65 = ptrtoint ptr %write_offset_dma.1.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add67.1.i, ptr %write_offset_dma.1.i, align 4
  %66 = load ptr, ptr %ring_vir_addr.i, align 8
  %add.ptr72.1.i = getelementptr i8, ptr %66, i32 %add76.i
  %write_offset_addr.1.i = getelementptr inbounds %struct.atl1e_rx_page, ptr %arrayidx70.1.i, i32 0, i32 3
  %67 = ptrtoint ptr %write_offset_addr.1.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %add.ptr72.1.i, ptr %write_offset_addr.1.i, align 4
  %add76.1.i = add i32 %offset.2197.i, 8
  %inc81.i = add nuw nsw i32 %i.1196.i, 1
  %68 = ptrtoint ptr %num_rx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_rx_queues.i.i, align 8
  %cmp59.i = icmp slt i32 %inc81.i, %69
  br i1 %cmp59.i, label %for.cond62.preheader.i.for.cond62.preheader.i_crit_edge, label %for.cond62.preheader.i.for.end82.i_crit_edge

for.cond62.preheader.i.for.end82.i_crit_edge:     ; preds = %for.cond62.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end82.i

for.cond62.preheader.i.for.cond62.preheader.i_crit_edge: ; preds = %for.cond62.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond62.preheader.i

for.end82.i:                                      ; preds = %for.cond62.preheader.i.for.end82.i_crit_edge, %for.end51.i.for.end82.i_crit_edge
  %offset.2.lcssa.i = phi i32 [ %add56.i, %for.end51.i.for.end82.i_crit_edge ], [ %add76.1.i, %for.cond62.preheader.i.for.end82.i_crit_edge ]
  %70 = ptrtoint ptr %ring_size.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ring_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.2.lcssa.i, i32 %71)
  %cmp84.i = icmp ugt i32 %offset.2.lcssa.i, %71
  br i1 %cmp84.i, label %if.then87.i, label %for.end82.i.if.end7_crit_edge, !prof !242

for.end82.i.if.end7_crit_edge:                    ; preds = %for.end82.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then87.i:                                      ; preds = %for.end82.i
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %73, ptr noundef nonnull @.str.27, i32 noundef %offset.2.lcssa.i, i32 noundef %71) #13
  br label %failed.i

failed.i:                                         ; preds = %if.then87.i, %if.end9.i.failed.i_crit_edge
  %err.0.i = phi i32 [ -1, %if.then87.i ], [ -12, %if.end9.i.failed.i_crit_edge ]
  %74 = ptrtoint ptr %ring_vir_addr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ring_vir_addr.i, align 8
  %cmp92.not.i = icmp eq ptr %75, null
  br i1 %cmp92.not.i, label %failed.i.cleanup_crit_edge, label %if.then94.i

failed.i.cleanup_crit_edge:                       ; preds = %failed.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then94.i:                                      ; preds = %failed.i
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %ring_size.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ring_size.i, align 4
  %78 = ptrtoint ptr %ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ring_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %77, ptr noundef nonnull %75, i32 noundef %79, i32 noundef 0) #10
  %80 = ptrtoint ptr %ring_vir_addr.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %ring_vir_addr.i, align 8
  br label %cleanup

if.end7:                                          ; preds = %for.end82.i.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %pdev1.i47 = getelementptr i8, ptr %netdev, i32 2308
  %81 = ptrtoint ptr %pdev1.i47 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pdev1.i47, align 4
  %83 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %add.ptr.i, align 8
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %82, i32 0, i32 46
  %85 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %irq.i, align 4
  %call.i.i48 = tail call i32 @request_threaded_irq(i32 noundef %86, ptr noundef nonnull @atl1e_intr, ptr noundef null, i32 noundef 128, ptr noundef %84, ptr noundef %84) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i48)
  %tobool.not.i = icmp eq i32 %call.i.i48, 0
  br i1 %tobool.not.i, label %do.body14.i, label %do.body3.i

do.body3.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atl1e_request_irq.__UNIQUE_ID_ddebug511, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atl1e_open, %atl1e_request_irq.exit.thread53)) #10
          to label %err_req_irq [label %atl1e_request_irq.exit.thread53], !srcloc !171

atl1e_request_irq.exit.thread53:                  ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @atl1e_request_irq.__UNIQUE_ID_ddebug511, ptr noundef %88, ptr noundef nonnull @.str.29, i32 noundef %call.i.i48) #10
  br label %err_req_irq

do.body14.i:                                      ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atl1e_request_irq.__UNIQUE_ID_ddebug512, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atl1e_open, %atl1e_request_irq.exit.thread)) #10
          to label %if.end17 [label %atl1e_request_irq.exit.thread], !srcloc !171

atl1e_request_irq.exit.thread:                    ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @atl1e_request_irq.__UNIQUE_ID_ddebug512, ptr noundef %84, ptr noundef nonnull @.str.30) #10
  br label %if.end17

if.end17:                                         ; preds = %atl1e_request_irq.exit.thread, %do.body14.i
  %call18 = tail call i32 @atl1e_up(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %err_up, !prof !208

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_up:                                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %89 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %add.ptr.i, align 8
  %91 = ptrtoint ptr %pdev1.i47 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pdev1.i47, align 4
  %irq.i50 = getelementptr inbounds %struct.pci_dev, ptr %92, i32 0, i32 46
  %93 = ptrtoint ptr %irq.i50 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %irq.i50, align 4
  %call.i = tail call ptr @free_irq(i32 noundef %94, ptr noundef %90) #10
  br label %err_req_irq

err_req_irq:                                      ; preds = %err_up, %atl1e_request_irq.exit.thread53, %do.body3.i
  %err.0 = phi i32 [ %call18, %err_up ], [ %call.i.i48, %atl1e_request_irq.exit.thread53 ], [ %call.i.i48, %do.body3.i ]
  tail call fastcc void @atl1e_free_ring_resources(ptr noundef %add.ptr.i)
  %hw = getelementptr i8, ptr %netdev, i32 2568
  %call28 = tail call i32 @atl1e_reset_hw(ptr noundef %hw) #10
  br label %cleanup

cleanup:                                          ; preds = %err_req_irq, %if.end17.cleanup_crit_edge, %if.then94.i, %failed.i.cleanup_crit_edge, %if.then8.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_req_irq ], [ -16, %entry.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ], [ %err.0.i, %failed.i.cleanup_crit_edge ], [ %err.0.i, %if.then94.i ], [ -12, %if.then8.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1e_close(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %netdev, i32 3396
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !208

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2055, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  tail call void @atl1e_down(ptr noundef %add.ptr.i)
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 8
  %pdev.i = getelementptr i8, ptr %netdev, i32 2308
  %5 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 46
  %7 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq.i, align 4
  %call.i = tail call ptr @free_irq(i32 noundef %8, ptr noundef %4) #10
  tail call fastcc void @atl1e_free_ring_resources(ptr noundef %add.ptr.i)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1e_xmit_frame(ptr noundef %skb, ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %flags = getelementptr i8, ptr %netdev, i32 3396
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then4, label %if.end5, !prof !242

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %5 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %nr_frags.i, align 2
  %conv.i = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp55.not.i = icmp eq i8 %8, 0
  br i1 %cmp55.not.i, label %if.end5.for.end.i_crit_edge, label %if.end5.for.body.i_crit_edge

if.end5.for.body.i_crit_edge:                     ; preds = %if.end5
  br label %for.body.i

if.end5.for.end.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end5.for.body.i_crit_edge
  %tpd_req.057.i = phi i16 [ %conv8.i, %for.body.i.for.body.i_crit_edge ], [ 1, %if.end5.for.body.i_crit_edge ]
  %i.056.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end5.for.body.i_crit_edge ]
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %6, i32 0, i32 12, i32 %i.056.i, i32 1
  %9 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bv_len.i.i, align 4
  %conv5.i = and i32 %10, 65535
  %sub.i = add nuw nsw i32 %conv5.i, 8191
  %11 = lshr i32 %sub.i, 13
  %12 = trunc i32 %11 to i16
  %conv8.i = add i16 %tpd_req.057.i, %12
  %inc.i = add nuw nsw i32 %i.056.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end5.for.end.i_crit_edge
  %tpd_req.0.lcssa.i = phi i16 [ 1, %if.end5.for.end.i_crit_edge ], [ %conv8.i, %for.body.i.for.end.i_crit_edge ]
  %gso_size.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %6, i32 0, i32 4
  %13 = ptrtoint ptr %gso_size.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %gso_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.i.not.i = icmp eq i16 %14, 0
  br i1 %tobool.i.not.i, label %for.end.i.atl1e_cal_tdp_req.exit_crit_edge, label %if.then.i

for.end.i.atl1e_cal_tdp_req.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1e_cal_tdp_req.exit

if.then.i:                                        ; preds = %for.end.i
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %15 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %16)
  %cmp11.i = icmp eq i16 %16, 2048
  br i1 %cmp11.i, label %if.then.i.if.then16.i_crit_edge, label %lor.lhs.false.i

if.then.i.if.then16.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16.i

lor.lhs.false.i:                                  ; preds = %if.then.i
  %gso_type.i = getelementptr inbounds %struct.skb_shared_info, ptr %6, i32 0, i32 8
  %17 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gso_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %18)
  %cmp14.i = icmp eq i32 %18, 16
  br i1 %cmp14.i, label %lor.lhs.false.i.if.then16.i_crit_edge, label %lor.lhs.false.i.atl1e_cal_tdp_req.exit_crit_edge

lor.lhs.false.i.atl1e_cal_tdp_req.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1e_cal_tdp_req.exit

lor.lhs.false.i.if.then16.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16.i

if.then16.i:                                      ; preds = %lor.lhs.false.i.if.then16.i_crit_edge, %if.then.i.if.then16.i_crit_edge
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %19 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %head.i.i.i, align 8
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %21 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %22 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %20, i32 %conv.i.i.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %23 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %24 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %doff.i.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %doff.i.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load.i.i.i = load i16, ptr %doff.i.i.i, align 4
  %26 = lshr i16 %bf.load.i.i.i, 10
  %27 = and i16 %26, 60
  %mul.i.i.i = zext i16 %27 to i32
  %add19.i = add i32 %sub.ptr.sub.i.i, %mul.i.i.i
  %conv21.i = and i32 %add19.i, 65535
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %28 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %4, %29
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %conv21.i)
  %cmp23.i = icmp ugt i32 %sub.i.i, %conv21.i
  br i1 %cmp23.i, label %if.then25.i, label %if.then16.i.atl1e_cal_tdp_req.exit_crit_edge

if.then16.i.atl1e_cal_tdp_req.exit_crit_edge:     ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1e_cal_tdp_req.exit

if.then25.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub28.i = add i32 %sub.i.i, 8191
  %sub30.i = sub i32 %sub28.i, %conv21.i
  %shr31.i = lshr i32 %sub30.i, 13
  %30 = trunc i32 %shr31.i to i16
  %conv34.i = add i16 %tpd_req.0.lcssa.i, %30
  br label %atl1e_cal_tdp_req.exit

atl1e_cal_tdp_req.exit:                           ; preds = %if.then25.i, %if.then16.i.atl1e_cal_tdp_req.exit_crit_edge, %lor.lhs.false.i.atl1e_cal_tdp_req.exit_crit_edge, %for.end.i.atl1e_cal_tdp_req.exit_crit_edge
  %tpd_req.1.i = phi i16 [ %conv34.i, %if.then25.i ], [ %tpd_req.0.lcssa.i, %if.then16.i.atl1e_cal_tdp_req.exit_crit_edge ], [ %tpd_req.0.lcssa.i, %lor.lhs.false.i.atl1e_cal_tdp_req.exit_crit_edge ], [ %tpd_req.0.lcssa.i, %for.end.i.atl1e_cal_tdp_req.exit_crit_edge ]
  %next_to_clean2.i = getelementptr i8, ptr %netdev, i32 3180
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %next_to_clean2.i, i32 noundef 4) #10
  %31 = ptrtoint ptr %next_to_clean2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %next_to_clean2.i, align 4
  %next_to_use3.i = getelementptr i8, ptr %netdev, i32 3176
  %33 = ptrtoint ptr %next_to_use3.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %next_to_use3.i, align 4
  %conv4.i = and i32 %32, 65535
  %conv5.i80 = zext i16 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv4.i, i32 %conv5.i80)
  %cmp.i = icmp ugt i32 %conv4.i, %conv5.i80
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %atl1e_cal_tdp_req.exit
  call void @__sanitizer_cov_trace_pc() #12
  %35 = xor i32 %conv5.i80, -1
  %sub11.i = add nsw i32 %conv4.i, %35
  br label %atl1e_tpd_avail.exit

cond.false.i:                                     ; preds = %atl1e_cal_tdp_req.exit
  call void @__sanitizer_cov_trace_pc() #12
  %count.i = getelementptr i8, ptr %netdev, i32 3128
  %36 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %count.i, align 4
  %conv12.i = zext i16 %37 to i32
  %38 = xor i32 %conv5.i80, -1
  %add.i = add nsw i32 %conv4.i, %38
  %sub16.i = add nsw i32 %add.i, %conv12.i
  br label %atl1e_tpd_avail.exit

atl1e_tpd_avail.exit:                             ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %sub11.i, %cond.true.i ], [ %sub16.i, %cond.false.i ]
  %conv17.i = trunc i32 %cond.i to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %tpd_req.1.i, i16 %conv17.i)
  %cmp9 = icmp ugt i16 %tpd_req.1.i, %conv17.i
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %atl1e_tpd_avail.exit
  call void @__sanitizer_cov_trace_pc() #12
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %39 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %40, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  br label %cleanup

if.end12:                                         ; preds = %atl1e_tpd_avail.exit
  %inc.i81 = add i16 %34, 1
  %count.i82 = getelementptr i8, ptr %netdev, i32 3128
  %41 = ptrtoint ptr %count.i82 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %count.i82, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i81, i16 %42)
  %cmp.i83 = icmp eq i16 %inc.i81, %42
  %spec.store.select.i = select i1 %cmp.i83, i16 0, i16 %inc.i81
  %43 = ptrtoint ptr %next_to_use3.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %spec.store.select.i, ptr %next_to_use3.i, align 4
  %tx_ring1.i = getelementptr i8, ptr %netdev, i32 3120
  %44 = ptrtoint ptr %tx_ring1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tx_ring1.i, align 4
  %arrayidx.i = getelementptr %struct.atl1e_tpd_desc, ptr %45, i32 %conv5.i80
  %46 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 16)
  %47 = load ptr, ptr %tx_ring1.i, align 4
  %arrayidx9.i = getelementptr %struct.atl1e_tpd_desc, ptr %47, i32 %conv5.i80
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %48 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %bf.load = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool14.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool14.not, label %if.end12.if.end28_crit_edge, label %if.then15

if.end12.if.end28_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %vlan_tci = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %49 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %vlan_tci, align 2
  %word3 = getelementptr %struct.atl1e_tpd_desc, ptr %47, i32 %conv5.i80, i32 2
  %51 = ptrtoint ptr %word3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %word3, align 4
  %or = or i32 %52, 4
  store i32 %or, ptr %word3, align 4
  %shl = shl i16 %50, 4
  %53 = lshr i16 %50, 13
  %or18 = or i16 %shl, %53
  %54 = lshr i16 %50, 9
  %and21 = and i16 %54, 8
  %or22 = or i16 %or18, %and21
  %conv24 = zext i16 %or22 to i32
  %shl26 = shl nuw i32 %conv24, 16
  %word2 = getelementptr %struct.atl1e_tpd_desc, ptr %47, i32 %conv5.i80, i32 1
  %55 = ptrtoint ptr %word2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %word2, align 8
  %or27 = or i32 %shl26, %56
  store i32 %or27, ptr %word2, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then15, %if.end12.if.end28_crit_edge
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %57 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %58)
  %cmp30 = icmp eq i16 %58, -32512
  br i1 %cmp30, label %if.then32, label %if.end28.if.end35_crit_edge

if.end28.if.end35_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %word333 = getelementptr %struct.atl1e_tpd_desc, ptr %47, i32 %conv5.i80, i32 2
  %59 = ptrtoint ptr %word333 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %word333, align 4
  %or34 = or i32 %60, 256
  store i32 %or34, ptr %word333, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end28.if.end35_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %61 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %63 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %64 to i32
  %add.ptr.i.i = getelementptr i8, ptr %62, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %65 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %66 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.ptr.sub.i)
  %cmp37.not = icmp eq i32 %sub.ptr.sub.i, 14
  br i1 %cmp37.not, label %if.end35.if.end42_crit_edge, label %if.then39

if.end35.if.end42_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %word340 = getelementptr %struct.atl1e_tpd_desc, ptr %47, i32 %conv5.i80, i32 2
  %67 = ptrtoint ptr %word340 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %word340, align 4
  %or41 = or i32 %68, 512
  store i32 %or41, ptr %word340, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end35.if.end42_crit_edge
  %69 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %end.i.i, align 4
  %gso_size.i.i84 = getelementptr inbounds %struct.skb_shared_info, ptr %70, i32 0, i32 4
  %71 = ptrtoint ptr %gso_size.i.i84 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %gso_size.i.i84, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %tobool.i.not.i85 = icmp eq i16 %72, 0
  br i1 %tobool.i.not.i85, label %if.end42.check_sum.i_crit_edge, label %if.then.i87

if.end42.check_sum.i_crit_edge:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_sum.i

if.then.i87:                                      ; preds = %if.end42
  %cloned.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %73 = ptrtoint ptr %cloned.i.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load.i.i.i86 = load i8, ptr %cloned.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i86)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i86, -1
  br i1 %tobool.not.i.i.i, label %if.then.i87.if.end.i_crit_edge, label %skb_header_cloned.exit.i.i

if.then.i87.if.end.i_crit_edge:                   ; preds = %if.then.i87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

skb_header_cloned.exit.i.i:                       ; preds = %if.then.i87
  %dataref1.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %70, i32 0, i32 10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i, i32 noundef 4) #10
  %74 = ptrtoint ptr %dataref1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %dataref1.i.i.i, align 4
  %and.i.i.i = and i32 %75, 65535
  %shr.i.i.i = ashr i32 %75, 16
  %sub.i.i.i = sub nsw i32 %and.i.i.i, %shr.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %sub.i.i.i, 1
  br i1 %cmp.i.not.i.i, label %skb_header_cloned.exit.i.i.if.end.i_crit_edge, label %skb_cow_head.exit.i

skb_header_cloned.exit.i.i.if.end.i_crit_edge:    ; preds = %skb_header_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

skb_cow_head.exit.i:                              ; preds = %skb_header_cloned.exit.i.i
  %call4.i.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %cmp.i88 = icmp slt i32 %call4.i.i.i, 0
  br i1 %cmp.i88, label %skb_cow_head.exit.i.if.then46_crit_edge, label %skb_cow_head.exit.i.if.end.i_crit_edge

skb_cow_head.exit.i.if.end.i_crit_edge:           ; preds = %skb_cow_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

skb_cow_head.exit.i.if.then46_crit_edge:          ; preds = %skb_cow_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then46

if.end.i:                                         ; preds = %skb_cow_head.exit.i.if.end.i_crit_edge, %skb_header_cloned.exit.i.i.if.end.i_crit_edge, %if.then.i87.if.end.i_crit_edge
  %76 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %end.i.i, align 4
  %gso_type.i89 = getelementptr inbounds %struct.skb_shared_info, ptr %77, i32 0, i32 8
  %78 = ptrtoint ptr %gso_type.i89 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %gso_type.i89, align 8
  %and.i = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.check_sum.i_crit_edge, label %if.then5.i

if.end.i.check_sum.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_sum.i

if.then5.i:                                       ; preds = %if.end.i
  %80 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %head.i.i, align 8
  %82 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i91 = zext i16 %83 to i32
  %add.ptr.i.i.i92 = getelementptr i8, ptr %81, i32 %conv.i.i.i91
  %84 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i94 = ptrtoint ptr %add.ptr.i.i.i92 to i32
  %sub.ptr.rhs.cast.i95 = ptrtoint ptr %85 to i32
  %sub.ptr.sub.i96 = sub i32 %sub.ptr.lhs.cast.i94, %sub.ptr.rhs.cast.i95
  %tot_len.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i92, i32 0, i32 2
  %86 = ptrtoint ptr %tot_len.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %tot_len.i, align 2
  %conv8.i97 = zext i16 %87 to i32
  %add.i98 = add i32 %sub.ptr.sub.i96, %conv8.i97
  %88 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i98, i32 %89)
  %cmp9.i = icmp ult i32 %add.i98, %89
  br i1 %cmp9.i, label %cond.true.i.i, label %if.then5.i.if.end13.i_crit_edge

if.then5.i.if.end13.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

cond.true.i.i:                                    ; preds = %if.then5.i
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %90 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.not.i.i142.i = icmp eq i32 %91, 0
  br i1 %tobool.not.i.i142.i, label %__skb_trim.exit.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i99 = tail call i32 @___pskb_trim(ptr noundef %skb, i32 noundef %add.i98) #10
  br label %if.end13.i

__skb_trim.exit.i.i.i:                            ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %92 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %add.i98, ptr %len, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %85, i32 %add.i98
  %tail.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %93 = ptrtoint ptr %tail.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %add.ptr.i.i.i.i.i.i, ptr %tail.i.i.i.i.i.i, align 8
  br label %if.end13.i

if.end13.i:                                       ; preds = %__skb_trim.exit.i.i.i, %if.then.i.i.i, %if.then5.i.if.end13.i_crit_edge
  %94 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i.i100 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %96 = ptrtoint ptr %transport_header.i.i.i100 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %transport_header.i.i.i100, align 2
  %conv.i.i144.i = zext i16 %97 to i32
  %add.ptr.i.i145.i = getelementptr i8, ptr %95, i32 %conv.i.i144.i
  %98 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i.i101 = ptrtoint ptr %add.ptr.i.i145.i to i32
  %sub.ptr.rhs.cast.i.i102 = ptrtoint ptr %99 to i32
  %sub.ptr.sub.i.i103 = sub i32 %sub.ptr.lhs.cast.i.i101, %sub.ptr.rhs.cast.i.i102
  %doff.i.i.i104 = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i145.i, i32 0, i32 4
  %100 = ptrtoint ptr %doff.i.i.i104 to i32
  call void @__asan_load2_noabort(i32 %100)
  %bf.load.i.i146.i = load i16, ptr %doff.i.i.i104, align 4
  %101 = lshr i16 %bf.load.i.i146.i, 10
  %102 = and i16 %101, 60
  %mul.i.i.i105 = zext i16 %102 to i32
  %add16.i = add i32 %sub.ptr.sub.i.i103, %mul.i.i.i105
  %103 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %len, align 4
  %conv19.i = and i32 %add16.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %conv19.i)
  %cmp20.i = icmp eq i32 %104, %conv19.i
  br i1 %cmp20.i, label %if.then24.i, label %if.else.i, !prof !242

if.then24.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %105 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %106, ptr noundef nonnull @.str.34) #13
  br label %check_sum.i

if.else.i:                                        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %107 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i149.i = zext i16 %108 to i32
  %add.ptr.i.i150.i = getelementptr i8, ptr %95, i32 %conv.i.i149.i
  %check.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i150.i, i32 0, i32 7
  %109 = ptrtoint ptr %check.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 0, ptr %check.i, align 2
  %110 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %head.i.i, align 8
  %112 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i153.i = zext i16 %112 to i32
  %add.ptr.i.i154.i = getelementptr i8, ptr %111, i32 %conv.i.i153.i
  %tot_len27.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i154.i, i32 0, i32 2
  %113 = ptrtoint ptr %tot_len27.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 0, ptr %tot_len27.i, align 2
  %114 = load ptr, ptr %head.i.i, align 8
  %115 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i157.i = zext i16 %115 to i32
  %add.ptr.i.i158.i = getelementptr i8, ptr %114, i32 %conv.i.i157.i
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i158.i, i32 0, i32 8
  %116 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %saddr.i, align 4
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i158.i, i32 0, i32 9
  %118 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %daddr.i, align 4
  %120 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %119, i32 %117, i32 6) #15, !srcloc !243
  %121 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %120) #15, !srcloc !244
  %neg.i.i.i = xor i32 %121, -1
  %shr.i.i163.i = lshr i32 %neg.i.i.i, 16
  %conv.i.i164.i = trunc i32 %shr.i.i163.i to i16
  %neg.i = xor i16 %conv.i.i164.i, -1
  %122 = ptrtoint ptr %transport_header.i.i.i100 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %transport_header.i.i.i100, align 2
  %conv.i.i167.i = zext i16 %123 to i32
  %add.ptr.i.i168.i = getelementptr i8, ptr %114, i32 %conv.i.i167.i
  %check34.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i168.i, i32 0, i32 6
  %124 = ptrtoint ptr %check34.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %neg.i, ptr %check34.i, align 4
  %125 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %head.i.i, align 8
  %127 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i171.i = zext i16 %128 to i32
  %add.ptr.i.i172.i = getelementptr i8, ptr %126, i32 %conv.i.i171.i
  %129 = ptrtoint ptr %add.ptr.i.i172.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %bf.load.i = load i8, ptr %add.ptr.i.i172.i, align 4
  %130 = and i8 %bf.load.i, 15
  %and37.i = zext i8 %130 to i32
  %shl.i = shl nuw nsw i32 %and37.i, 10
  %word3.i = getelementptr %struct.atl1e_tpd_desc, ptr %47, i32 %conv5.i80, i32 2
  %131 = ptrtoint ptr %word3.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %word3.i, align 4
  %or.i = or i32 %shl.i, %132
  store i32 %or.i, ptr %word3.i, align 4
  %133 = load ptr, ptr %head.i.i, align 8
  %134 = load i16, ptr %transport_header.i.i.i100, align 2
  %conv.i.i.i175.i = zext i16 %134 to i32
  %add.ptr.i.i.i176.i = getelementptr i8, ptr %133, i32 %conv.i.i.i175.i
  %doff.i.i177.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i176.i, i32 0, i32 4
  %135 = ptrtoint ptr %doff.i.i177.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %bf.load.i.i178.i = load i16, ptr %doff.i.i177.i, align 4
  %136 = lshr i16 %bf.load.i.i178.i, 10
  %mul.i.i179.i = zext i16 %136 to i32
  %137 = shl nuw nsw i32 %mul.i.i179.i, 12
  %shl40.i = and i32 %137, 245760
  %or42.i = or i32 %shl40.i, %or.i
  store i32 %or42.i, ptr %word3.i, align 4
  %138 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %139, i32 0, i32 4
  %140 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %gso_size.i, align 4
  %and45.i = zext i16 %141 to i32
  %shl46.i = shl i32 %and45.i, 19
  %or48.i = or i32 %or42.i, %shl46.i
  %or50.i = or i32 %or48.i, 16
  store i32 %or50.i, ptr %word3.i, align 4
  br label %if.end47

check_sum.i:                                      ; preds = %if.then24.i, %if.end.i.check_sum.i_crit_edge, %if.end42.check_sum.i_crit_edge
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %142 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %bf.load54.i = load i16, ptr %ip_summed.i, align 8
  %143 = and i16 %bf.load54.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %143)
  %cmp57.i = icmp eq i16 %143, 1536
  br i1 %cmp57.i, label %if.then65.i, label %check_sum.i.if.end47_crit_edge, !prof !208

check_sum.i.if.end47_crit_edge:                   ; preds = %check_sum.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then65.i:                                      ; preds = %check_sum.i
  %144 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %144, align 8
  %conv.i.i106 = zext i16 %146 to i32
  %147 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %data.i, align 4
  %149 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %148 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %150 to i32
  %sub.ptr.sub.i.neg.i.i = sub i32 %conv.i.i106, %sub.ptr.lhs.cast.i.i.i
  %sub.i.i107 = add i32 %sub.ptr.sub.i.neg.i.i, %sub.ptr.rhs.cast.i.i.i
  %and69.i = and i32 %sub.i.i107, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69.i)
  %tobool70.not.i = icmp eq i32 %and69.i, 0
  br i1 %tobool70.not.i, label %cleanup97.thread.i, label %cleanup97.i, !prof !208

cleanup97.thread.i:                               ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #12
  %csum_offset.i = getelementptr inbounds %struct.anon.117, ptr %144, i32 0, i32 1
  %151 = ptrtoint ptr %csum_offset.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %csum_offset.i, align 2
  %conv81.i = zext i16 %152 to i32
  %add82.i = add i32 %sub.i.i107, %conv81.i
  %conv68.i = shl i32 %sub.i.i107, 16
  %shl86.i = and i32 %conv68.i, 16711680
  %word387.i = getelementptr %struct.atl1e_tpd_desc, ptr %47, i32 %conv5.i80, i32 2
  %153 = ptrtoint ptr %word387.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %word387.i, align 4
  %shl91.i = shl i32 %add82.i, 24
  %or88.i = or i32 %shl86.i, %154
  %or93.i = or i32 %or88.i, %shl91.i
  %or95.i = or i32 %or93.i, 8
  store i32 %or95.i, ptr %word387.i, align 4
  br label %if.end47

cleanup97.i:                                      ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #12
  %155 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %156, ptr noundef nonnull @.str.35) #13
  br label %if.then46

if.then46:                                        ; preds = %cleanup97.i, %skb_cow_head.exit.i.if.then46_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #10
  br label %cleanup

if.end47:                                         ; preds = %cleanup97.thread.i, %check_sum.i.if.end47_crit_edge, %if.else.i
  %157 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %len, align 4
  %data_len.i.i109 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %159 = ptrtoint ptr %data_len.i.i109 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %data_len.i.i109, align 8
  %sub.i.i110 = sub i32 %158, %160
  %161 = ptrtoint ptr %next_to_use3.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %next_to_use3.i, align 8
  %163 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %end.i.i, align 4
  %nr_frags3.i = getelementptr inbounds %struct.skb_shared_info, ptr %164, i32 0, i32 2
  %165 = ptrtoint ptr %nr_frags3.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %nr_frags3.i, align 2
  %word3.i112 = getelementptr %struct.atl1e_tpd_desc, ptr %47, i32 %conv5.i80, i32 2
  %167 = ptrtoint ptr %word3.i112 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %word3.i112, align 4
  %169 = and i32 %168, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %tobool.not.i113 = icmp eq i32 %169, 0
  br i1 %tobool.not.i113, label %if.end47.if.end35.i_crit_edge, label %if.then.i126

if.end47.if.end35.i_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35.i

if.then.i126:                                     ; preds = %if.end47
  %170 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i.i115 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %172 = ptrtoint ptr %transport_header.i.i.i115 to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %transport_header.i.i.i115, align 2
  %conv.i.i.i116 = zext i16 %173 to i32
  %add.ptr.i.i.i117 = getelementptr i8, ptr %171, i32 %conv.i.i.i116
  %174 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i.i119 = ptrtoint ptr %add.ptr.i.i.i117 to i32
  %sub.ptr.rhs.cast.i.i120 = ptrtoint ptr %175 to i32
  %sub.ptr.sub.i.i121 = sub i32 %sub.ptr.lhs.cast.i.i119, %sub.ptr.rhs.cast.i.i120
  %doff.i.i.i122 = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i117, i32 0, i32 4
  %176 = ptrtoint ptr %doff.i.i.i122 to i32
  call void @__asan_load2_noabort(i32 %176)
  %bf.load.i.i.i123 = load i16, ptr %doff.i.i.i122, align 4
  %177 = lshr i16 %bf.load.i.i.i123, 10
  %178 = and i16 %177, 60
  %mul.i.i.i124 = zext i16 %178 to i32
  %add.i125 = add i32 %sub.ptr.sub.i.i121, %mul.i.i.i124
  %conv7.i = trunc i32 %add.i125 to i16
  %tx_buffer.i.i = getelementptr i8, ptr %netdev, i32 3184
  %179 = ptrtoint ptr %tx_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %tx_buffer.i.i, align 4
  %181 = ptrtoint ptr %tx_ring1.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %tx_ring1.i, align 4
  %sub.ptr.lhs.cast.i368.i = ptrtoint ptr %arrayidx9.i to i32
  %sub.ptr.rhs.cast.i369.i = ptrtoint ptr %182 to i32
  %sub.ptr.sub.i370.i = sub i32 %sub.ptr.lhs.cast.i368.i, %sub.ptr.rhs.cast.i369.i
  %sub.ptr.div.i.i = ashr exact i32 %sub.ptr.sub.i370.i, 4
  %arrayidx.i.i = getelementptr %struct.atl1e_tx_buffer, ptr %180, i32 %sub.ptr.div.i.i
  %length.i = getelementptr %struct.atl1e_tx_buffer, ptr %180, i32 %sub.ptr.div.i.i, i32 2
  %183 = ptrtoint ptr %length.i to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 %conv7.i, ptr %length.i, align 2
  %pdev.i = getelementptr i8, ptr %netdev, i32 2308
  %184 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %185, i32 0, i32 44
  %186 = load ptr, ptr %data.i, align 4
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %186) #10
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.then.i126
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !208

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev.i) #10
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %185, i32 0, i32 44, i32 3
  %187 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i127 = icmp eq ptr %188, null
  br i1 %tobool.not.i.i.i127, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %189 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %190, %if.end.i.i.i ], [ %188, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.38, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #10
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.then.i126
  call void @__sanitizer_cov_trace_pc() #12
  %conv9.i = and i32 %add.i125, 65535
  tail call void @debug_dma_map_single(ptr noundef %dev.i, ptr noundef %186, i32 noundef %conv9.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %191 = load ptr, ptr @mem_map, align 4
  %192 = ptrtoint ptr %186 to i32
  %sub.i371.i = add i32 %192, 1073741824
  %shr.i.i = lshr i32 %sub.i371.i, 12
  %add.ptr.i.i128 = getelementptr %struct.page, ptr %191, i32 %shr.i.i
  %and.i.i = and i32 %192, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef %add.ptr.i.i128, i32 noundef %and.i.i, i32 noundef %conv9.i, i32 noundef 1, i32 noundef 0) #10
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %dma.i = getelementptr %struct.atl1e_tx_buffer, ptr %180, i32 %sub.ptr.div.i.i, i32 3
  %193 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %retval.0.i.i, ptr %dma.i, align 4
  %194 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %pdev.i, align 4
  %dev12.i = getelementptr inbounds %struct.pci_dev, ptr %195, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev12.i, i32 noundef %retval.0.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.if.then50_crit_edge, label %do.body.i

dma_map_single_attrs.exit.i.if.then50_crit_edge:  ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then50

do.body.i:                                        ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %flags.i = getelementptr %struct.atl1e_tx_buffer, ptr %180, i32 %sub.ptr.div.i.i, i32 1
  %196 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %flags.i, align 4
  %198 = and i16 %197, -4
  %199 = or i16 %198, 1
  store i16 %199, ptr %flags.i, align 4
  %200 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %dma.i, align 4
  %conv28.i = zext i32 %201 to i64
  %202 = tail call i64 @llvm.bswap.i64(i64 %conv28.i) #10
  %203 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store8_noabort(i32 %203)
  store i64 %202, ptr %arrayidx9.i, align 8
  %word2.i = getelementptr %struct.atl1e_tpd_desc, ptr %47, i32 %conv5.i80, i32 1
  %204 = ptrtoint ptr %word2.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %word2.i, align 8
  %and29.i = and i32 %205, -16384
  store i32 %and29.i, ptr %word2.i, align 8
  %phi.bo.i = and i32 %add.i125, 65535
  br label %if.end35.i

if.end35.i:                                       ; preds = %do.body.i, %if.end47.if.end35.i_crit_edge
  %use_tpd.0.i = phi ptr [ %arrayidx9.i, %do.body.i ], [ null, %if.end47.if.end35.i_crit_edge ]
  %tx_buffer.0.i = phi ptr [ %arrayidx.i.i, %do.body.i ], [ null, %if.end47.if.end35.i_crit_edge ]
  %mapped_len.0.i = phi i32 [ %phi.bo.i, %do.body.i ], [ 0, %if.end47.if.end35.i_crit_edge ]
  %conv37.i = and i32 %sub.i.i110, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv37.i, i32 %mapped_len.0.i)
  %cmp482.i = icmp ugt i32 %conv37.i, %mapped_len.0.i
  br i1 %cmp482.i, label %while.body.lr.ph.i, label %if.end35.i.for.cond.preheader.i_crit_edge

if.end35.i.for.cond.preheader.i_crit_edge:        ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader.i

while.body.lr.ph.i:                               ; preds = %if.end35.i
  %tx_buffer.i376.i = getelementptr i8, ptr %netdev, i32 3184
  %pdev56.i = getelementptr i8, ptr %netdev, i32 2308
  br label %while.body.i

for.cond.preheader.i:                             ; preds = %do.body93.i.for.cond.preheader.i_crit_edge, %if.end35.i.for.cond.preheader.i_crit_edge
  %use_tpd.1.lcssa.i = phi ptr [ %use_tpd.0.i, %if.end35.i.for.cond.preheader.i_crit_edge ], [ %use_tpd.2.i, %do.body93.i.for.cond.preheader.i_crit_edge ]
  %tx_buffer.1.lcssa.i = phi ptr [ %tx_buffer.0.i, %if.end35.i.for.cond.preheader.i_crit_edge ], [ %arrayidx.i381.i, %do.body93.i.for.cond.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %cmp122497.not.i = icmp eq i8 %166, 0
  br i1 %cmp122497.not.i, label %for.cond.preheader.i.for.end234.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end234.i_crit_edge:      ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end234.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %tx_buffer.i429.i = getelementptr i8, ptr %netdev, i32 3184
  %pdev170.i = getelementptr i8, ptr %netdev, i32 2308
  %wide.trip.count.i = zext i8 %166 to i32
  br label %for.body.i135

while.body.i:                                     ; preds = %do.body93.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %conv36483.i = phi i32 [ %mapped_len.0.i, %while.body.lr.ph.i ], [ %conv36.i, %do.body93.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv36483.i)
  %cmp40.i = icmp eq i32 %conv36483.i, 0
  br i1 %cmp40.i, label %while.body.i.if.end44.i_crit_edge, label %if.else.i129

while.body.i.if.end44.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.i

if.else.i129:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %206 = ptrtoint ptr %next_to_use3.i to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %next_to_use3.i, align 4
  %inc.i.i = add i16 %207, 1
  %208 = ptrtoint ptr %count.i82 to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %count.i82, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i.i, i16 %209)
  %cmp.i372.i = icmp eq i16 %inc.i.i, %209
  %spec.store.select.i.i = select i1 %cmp.i372.i, i16 0, i16 %inc.i.i
  %210 = ptrtoint ptr %next_to_use3.i to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 %spec.store.select.i.i, ptr %next_to_use3.i, align 4
  %211 = ptrtoint ptr %tx_ring1.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %tx_ring1.i, align 4
  %idxprom.i.i = zext i16 %207 to i32
  %arrayidx.i374.i = getelementptr %struct.atl1e_tpd_desc, ptr %212, i32 %idxprom.i.i
  %213 = call ptr @memset(ptr %arrayidx.i374.i, i32 0, i32 16)
  %214 = load ptr, ptr %tx_ring1.i, align 4
  %arrayidx9.i.i = getelementptr %struct.atl1e_tpd_desc, ptr %214, i32 %idxprom.i.i
  %215 = call ptr @memcpy(ptr %arrayidx9.i.i, ptr %arrayidx9.i, i32 16)
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.else.i129, %while.body.i.if.end44.i_crit_edge
  %use_tpd.2.i = phi ptr [ %arrayidx9.i.i, %if.else.i129 ], [ %arrayidx9.i, %while.body.i.if.end44.i_crit_edge ]
  %216 = ptrtoint ptr %tx_buffer.i376.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %tx_buffer.i376.i, align 4
  %218 = ptrtoint ptr %tx_ring1.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %tx_ring1.i, align 4
  %sub.ptr.lhs.cast.i377.i = ptrtoint ptr %use_tpd.2.i to i32
  %sub.ptr.rhs.cast.i378.i = ptrtoint ptr %219 to i32
  %sub.ptr.sub.i379.i = sub i32 %sub.ptr.lhs.cast.i377.i, %sub.ptr.rhs.cast.i378.i
  %sub.ptr.div.i380.i = ashr exact i32 %sub.ptr.sub.i379.i, 4
  %arrayidx.i381.i = getelementptr %struct.atl1e_tx_buffer, ptr %217, i32 %sub.ptr.div.i380.i
  %220 = ptrtoint ptr %arrayidx.i381.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr null, ptr %arrayidx.i381.i, align 4
  %sub.i130 = sub nsw i32 %conv37.i, %conv36483.i
  %221 = tail call i32 @llvm.smin.i32(i32 %sub.i130, i32 8192) #10
  %conv54.i = trunc i32 %221 to i16
  %length55.i = getelementptr %struct.atl1e_tx_buffer, ptr %217, i32 %sub.ptr.div.i380.i, i32 2
  %222 = ptrtoint ptr %length55.i to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 %conv54.i, ptr %length55.i, align 2
  %223 = ptrtoint ptr %pdev56.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %pdev56.i, align 4
  %dev57.i = getelementptr inbounds %struct.pci_dev, ptr %224, i32 0, i32 44
  %225 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %data.i, align 4
  %add.ptr.i131 = getelementptr i8, ptr %226, i32 %conv36483.i
  %call.i382.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i131) #10
  br i1 %call.i382.i, label %land.rhs.i384.i, label %if.end39.i397.i

land.rhs.i384.i:                                  ; preds = %if.end44.i
  %.b1.i383.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i383.i, label %land.rhs.i384.i.dma_map_single_attrs.exit399.i_crit_edge, label %if.then.i388.i, !prof !208

land.rhs.i384.i.dma_map_single_attrs.exit399.i_crit_edge: ; preds = %land.rhs.i384.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit399.i

if.then.i388.i:                                   ; preds = %land.rhs.i384.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i385.i = tail call ptr @dev_driver_string(ptr noundef %dev57.i) #10
  %init_name.i.i386.i = getelementptr inbounds %struct.pci_dev, ptr %224, i32 0, i32 44, i32 3
  %227 = ptrtoint ptr %init_name.i.i386.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %init_name.i.i386.i, align 8
  %tobool.not.i.i387.i = icmp eq ptr %228, null
  br i1 %tobool.not.i.i387.i, label %if.end.i.i389.i, label %if.then.i388.i.dev_name.exit.i391.i_crit_edge

if.then.i388.i.dev_name.exit.i391.i_crit_edge:    ; preds = %if.then.i388.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i391.i

if.end.i.i389.i:                                  ; preds = %if.then.i388.i
  call void @__sanitizer_cov_trace_pc() #12
  %229 = ptrtoint ptr %dev57.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %dev57.i, align 4
  br label %dev_name.exit.i391.i

dev_name.exit.i391.i:                             ; preds = %if.end.i.i389.i, %if.then.i388.i.dev_name.exit.i391.i_crit_edge
  %retval.0.i.i390.i = phi ptr [ %230, %if.end.i.i389.i ], [ %228, %if.then.i388.i.dev_name.exit.i391.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.38, ptr noundef %call16.i385.i, ptr noundef %retval.0.i.i390.i) #10
  br label %dma_map_single_attrs.exit399.i

if.end39.i397.i:                                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv60.i = and i32 %221, 65535
  tail call void @debug_dma_map_single(ptr noundef %dev57.i, ptr noundef %add.ptr.i131, i32 noundef %conv60.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %231 = load ptr, ptr @mem_map, align 4
  %232 = ptrtoint ptr %add.ptr.i131 to i32
  %sub.i392.i = add i32 %232, 1073741824
  %shr.i393.i = lshr i32 %sub.i392.i, 12
  %add.ptr.i394.i = getelementptr %struct.page, ptr %231, i32 %shr.i393.i
  %and.i395.i = and i32 %232, 4095
  %call41.i396.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev57.i, ptr noundef %add.ptr.i394.i, i32 noundef %and.i395.i, i32 noundef %conv60.i, i32 noundef 1, i32 noundef 0) #10
  br label %dma_map_single_attrs.exit399.i

dma_map_single_attrs.exit399.i:                   ; preds = %if.end39.i397.i, %dev_name.exit.i391.i, %land.rhs.i384.i.dma_map_single_attrs.exit399.i_crit_edge
  %retval.0.i398.i = phi i32 [ %call41.i396.i, %if.end39.i397.i ], [ -1, %dev_name.exit.i391.i ], [ -1, %land.rhs.i384.i.dma_map_single_attrs.exit399.i_crit_edge ]
  %dma62.i = getelementptr %struct.atl1e_tx_buffer, ptr %217, i32 %sub.ptr.div.i380.i, i32 3
  %233 = ptrtoint ptr %dma62.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %retval.0.i398.i, ptr %dma62.i, align 4
  %234 = ptrtoint ptr %pdev56.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %pdev56.i, align 4
  %dev64.i = getelementptr inbounds %struct.pci_dev, ptr %235, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev64.i, i32 noundef %retval.0.i398.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i398.i)
  %cmp.i400.i = icmp eq i32 %retval.0.i398.i, -1
  br i1 %cmp.i400.i, label %if.then68.i, label %do.body93.i

if.then68.i:                                      ; preds = %dma_map_single_attrs.exit399.i
  %236 = ptrtoint ptr %next_to_use3.i to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %next_to_use3.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %162, i16 %237)
  %cmp79.not506.i = icmp eq i16 %162, %237
  br i1 %cmp79.not506.i, label %if.then68.i.while.end.i_crit_edge, label %if.then68.i.while.body81.i_crit_edge

if.then68.i.while.body81.i_crit_edge:             ; preds = %if.then68.i
  br label %while.body81.i

if.then68.i.while.end.i_crit_edge:                ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body81.i:                                   ; preds = %while.body81.i.while.body81.i_crit_edge, %if.then68.i.while.body81.i_crit_edge
  %238 = phi i16 [ %254, %while.body81.i.while.body81.i_crit_edge ], [ %162, %if.then68.i.while.body81.i_crit_edge ]
  %inc.i403.i = add i16 %238, 1
  %239 = ptrtoint ptr %count.i82 to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %count.i82, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i403.i, i16 %240)
  %cmp.i405.i = icmp eq i16 %inc.i403.i, %240
  %spec.store.select.i406.i = select i1 %cmp.i405.i, i16 0, i16 %inc.i403.i
  %241 = ptrtoint ptr %next_to_use3.i to i32
  call void @__asan_store2_noabort(i32 %241)
  store i16 %spec.store.select.i406.i, ptr %next_to_use3.i, align 4
  %242 = ptrtoint ptr %tx_ring1.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %tx_ring1.i, align 4
  %idxprom.i408.i = zext i16 %238 to i32
  %arrayidx.i409.i = getelementptr %struct.atl1e_tpd_desc, ptr %243, i32 %idxprom.i408.i
  %244 = call ptr @memset(ptr %arrayidx.i409.i, i32 0, i32 16)
  %245 = ptrtoint ptr %tx_buffer.i376.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %tx_buffer.i376.i, align 4
  %247 = ptrtoint ptr %pdev56.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %pdev56.i, align 4
  %dev85.i = getelementptr inbounds %struct.pci_dev, ptr %248, i32 0, i32 44
  %dma86.i = getelementptr %struct.atl1e_tx_buffer, ptr %246, i32 %idxprom.i408.i, i32 3
  %249 = ptrtoint ptr %dma86.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %dma86.i, align 4
  %length87.i = getelementptr %struct.atl1e_tx_buffer, ptr %246, i32 %idxprom.i408.i, i32 2
  %251 = ptrtoint ptr %length87.i to i32
  call void @__asan_load2_noabort(i32 %251)
  %252 = load i16, ptr %length87.i, align 2
  %conv88.i = zext i16 %252 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev85.i, i32 noundef %250, i32 noundef %conv88.i, i32 noundef 1, i32 noundef 0) #10
  %253 = ptrtoint ptr %next_to_use3.i to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %next_to_use3.i, align 8
  %cmp79.not.i = icmp eq i16 %254, %237
  br i1 %cmp79.not.i, label %while.body81.i.while.end.i_crit_edge, label %while.body81.i.while.body81.i_crit_edge

while.body81.i.while.body81.i_crit_edge:          ; preds = %while.body81.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body81.i

while.body81.i.while.end.i_crit_edge:             ; preds = %while.body81.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %while.body81.i.while.end.i_crit_edge, %if.then68.i.while.end.i_crit_edge
  %255 = ptrtoint ptr %next_to_use3.i to i32
  call void @__asan_store2_noabort(i32 %255)
  store i16 %162, ptr %next_to_use3.i, align 8
  br label %if.then50

do.body93.i:                                      ; preds = %dma_map_single_attrs.exit399.i
  %flags94.i = getelementptr %struct.atl1e_tx_buffer, ptr %217, i32 %sub.ptr.div.i380.i, i32 1
  %256 = ptrtoint ptr %flags94.i to i32
  call void @__asan_load2_noabort(i32 %256)
  %257 = load i16, ptr %flags94.i, align 4
  %258 = and i16 %257, -4
  %259 = or i16 %258, 1
  store i16 %259, ptr %flags94.i, align 4
  %add106.i = add nsw i32 %221, %conv36483.i
  %260 = ptrtoint ptr %dma62.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %dma62.i, align 4
  %conv109.i = zext i32 %261 to i64
  %262 = tail call i64 @llvm.bswap.i64(i64 %conv109.i) #10
  %263 = ptrtoint ptr %use_tpd.2.i to i32
  call void @__asan_store8_noabort(i32 %263)
  store i64 %262, ptr %use_tpd.2.i, align 8
  %word2111.i = getelementptr inbounds %struct.atl1e_tpd_desc, ptr %use_tpd.2.i, i32 0, i32 1
  %264 = ptrtoint ptr %word2111.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %word2111.i, align 8
  %and112.i = and i32 %265, -16384
  store i32 %and112.i, ptr %word2111.i, align 8
  %conv36.i = and i32 %add106.i, 65535
  %cmp.i132 = icmp ugt i32 %conv37.i, %conv36.i
  br i1 %cmp.i132, label %do.body93.i.while.body.i_crit_edge, label %do.body93.i.for.cond.preheader.i_crit_edge

do.body93.i.for.cond.preheader.i_crit_edge:       ; preds = %do.body93.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader.i

do.body93.i.while.body.i_crit_edge:               ; preds = %do.body93.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

for.body.i135:                                    ; preds = %for.inc232.i.for.body.i135_crit_edge, %for.body.lr.ph.i
  %indvars.iv516.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next517.i, %for.inc232.i.for.body.i135_crit_edge ]
  %tx_buffer.2501.i = phi ptr [ %tx_buffer.1.lcssa.i, %for.body.lr.ph.i ], [ %tx_buffer.5461.i, %for.inc232.i.for.body.i135_crit_edge ]
  %use_tpd.3500.i = phi ptr [ %use_tpd.1.lcssa.i, %for.body.lr.ph.i ], [ %use_tpd.5460.i, %for.inc232.i.for.body.i135_crit_edge ]
  %tpd.addr.0498.i = phi ptr [ %arrayidx9.i, %for.body.lr.ph.i ], [ %tpd.addr.2459.i, %for.inc232.i.for.body.i135_crit_edge ]
  %266 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %end.i.i, align 4
  %arrayidx.i133 = getelementptr %struct.skb_shared_info, ptr %267, i32 0, i32 12, i32 %indvars.iv516.i
  %bv_len.i.i134 = getelementptr %struct.skb_shared_info, ptr %267, i32 0, i32 12, i32 %indvars.iv516.i, i32 1
  %268 = ptrtoint ptr %bv_len.i.i134 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %bv_len.i.i134, align 4
  %conv127.i = and i32 %269, 65535
  %sub129.i = add nuw nsw i32 %conv127.i, 8191
  %div366.i = lshr i32 %sub129.i, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv127.i)
  %cmp134485.not.i = icmp eq i32 %conv127.i, 0
  br i1 %cmp134485.not.i, label %for.body.i135.for.inc232.i_crit_edge, label %for.body136.lr.ph.i

for.body.i135.for.inc232.i_crit_edge:             ; preds = %for.body.i135
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc232.i

for.body136.lr.ph.i:                              ; preds = %for.body.i135
  %bv_offset.i.i.i = getelementptr %struct.skb_shared_info, ptr %267, i32 0, i32 12, i32 %indvars.iv516.i, i32 2
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div366.i, i32 1) #10
  br label %for.body136.i

for.body136.i:                                    ; preds = %do.body208.i.for.body136.i_crit_edge, %for.body136.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body136.lr.ph.i ], [ %indvars.iv.next.i, %do.body208.i.for.body136.i_crit_edge ]
  %cmp134489.i = phi i1 [ true, %for.body136.lr.ph.i ], [ %cmp134.i, %do.body208.i.for.body136.i_crit_edge ]
  %buf_len.0.in486.i = phi i32 [ %269, %for.body136.lr.ph.i ], [ %sub168.i, %do.body208.i.for.body136.i_crit_edge ]
  %270 = ptrtoint ptr %next_to_use3.i to i32
  call void @__asan_load2_noabort(i32 %270)
  %271 = load i16, ptr %next_to_use3.i, align 4
  %inc.i420.i = add i16 %271, 1
  %272 = ptrtoint ptr %count.i82 to i32
  call void @__asan_load2_noabort(i32 %272)
  %273 = load i16, ptr %count.i82, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i420.i, i16 %273)
  %cmp.i422.i = icmp eq i16 %inc.i420.i, %273
  %spec.store.select.i423.i = select i1 %cmp.i422.i, i16 0, i16 %inc.i420.i
  %274 = ptrtoint ptr %next_to_use3.i to i32
  call void @__asan_store2_noabort(i32 %274)
  store i16 %spec.store.select.i423.i, ptr %next_to_use3.i, align 4
  %275 = ptrtoint ptr %tx_ring1.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %tx_ring1.i, align 4
  %idxprom.i425.i = zext i16 %271 to i32
  %arrayidx.i426.i = getelementptr %struct.atl1e_tpd_desc, ptr %276, i32 %idxprom.i425.i
  %277 = call ptr @memset(ptr %arrayidx.i426.i, i32 0, i32 16)
  %278 = load ptr, ptr %tx_ring1.i, align 4
  %arrayidx9.i427.i = getelementptr %struct.atl1e_tpd_desc, ptr %278, i32 %idxprom.i425.i
  %279 = call ptr @memcpy(ptr %arrayidx9.i427.i, ptr %tpd.addr.0498.i, i32 16)
  %280 = ptrtoint ptr %tx_buffer.i429.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %tx_buffer.i429.i, align 4
  %282 = load ptr, ptr %tx_ring1.i, align 4
  %sub.ptr.lhs.cast.i430.i = ptrtoint ptr %arrayidx9.i427.i to i32
  %sub.ptr.rhs.cast.i431.i = ptrtoint ptr %282 to i32
  %sub.ptr.sub.i432.i = sub i32 %sub.ptr.lhs.cast.i430.i, %sub.ptr.rhs.cast.i431.i
  %sub.ptr.div.i433.i = ashr exact i32 %sub.ptr.sub.i432.i, 4
  %arrayidx.i434.i = getelementptr %struct.atl1e_tx_buffer, ptr %281, i32 %sub.ptr.div.i433.i
  %283 = ptrtoint ptr %arrayidx.i434.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %arrayidx.i434.i, align 4
  %tobool141.not.i = icmp eq ptr %284, null
  br i1 %tobool141.not.i, label %do.end153.i, label %do.body145.i, !prof !208

do.body145.i:                                     ; preds = %for.body136.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/atheros/atl1e/atl1e_main.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1793, 0\0A.popsection", ""() #10, !srcloc !245
  unreachable

do.end153.i:                                      ; preds = %for.body136.i
  %285 = ptrtoint ptr %arrayidx.i434.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store ptr null, ptr %arrayidx.i434.i, align 4
  %conv155.i = and i32 %buf_len.0.in486.i, 65535
  %286 = tail call i32 @llvm.umin.i32(i32 %conv155.i, i32 8192) #10
  %conv163.i = trunc i32 %286 to i16
  %length164.i = getelementptr %struct.atl1e_tx_buffer, ptr %281, i32 %sub.ptr.div.i433.i, i32 2
  %287 = ptrtoint ptr %length164.i to i32
  call void @__asan_store2_noabort(i32 %287)
  store i16 %conv163.i, ptr %length164.i, align 2
  %288 = ptrtoint ptr %pdev170.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %pdev170.i, align 4
  %dev171.i = getelementptr inbounds %struct.pci_dev, ptr %289, i32 0, i32 44
  %mul.i = shl nuw nsw i32 %indvars.iv.i, 13
  %290 = ptrtoint ptr %arrayidx.i133 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %arrayidx.i133, align 4
  %292 = ptrtoint ptr %bv_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %bv_offset.i.i.i, align 4
  %add.i.i = add i32 %293, %mul.i
  %call2.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev171.i, ptr noundef %291, i32 noundef %add.i.i, i32 noundef %286, i32 noundef 1, i32 noundef 0) #10
  %dma176.i = getelementptr %struct.atl1e_tx_buffer, ptr %281, i32 %sub.ptr.div.i433.i, i32 3
  %294 = ptrtoint ptr %dma176.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 %call2.i.i, ptr %dma176.i, align 4
  %295 = ptrtoint ptr %pdev170.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %pdev170.i, align 4
  %dev178.i = getelementptr inbounds %struct.pci_dev, ptr %296, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev178.i, i32 noundef %call2.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i.i)
  %cmp.i435.not.i = icmp eq i32 %call2.i.i, -1
  br i1 %cmp.i435.not.i, label %if.then182.i, label %do.body208.i

if.then182.i:                                     ; preds = %do.end153.i
  %297 = ptrtoint ptr %next_to_use3.i to i32
  call void @__asan_load2_noabort(i32 %297)
  %298 = load i16, ptr %next_to_use3.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %162, i16 %298)
  %cmp193.not492.i = icmp eq i16 %162, %298
  br i1 %cmp193.not492.i, label %if.then182.i.cleanup.i_crit_edge, label %if.then182.i.while.body195.i_crit_edge

if.then182.i.while.body195.i_crit_edge:           ; preds = %if.then182.i
  br label %while.body195.i

if.then182.i.cleanup.i_crit_edge:                 ; preds = %if.then182.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

while.body195.i:                                  ; preds = %while.body195.i.while.body195.i_crit_edge, %if.then182.i.while.body195.i_crit_edge
  %299 = phi i16 [ %316, %while.body195.i.while.body195.i_crit_edge ], [ %162, %if.then182.i.while.body195.i_crit_edge ]
  %inc.i438.i = add i16 %299, 1
  %300 = ptrtoint ptr %count.i82 to i32
  call void @__asan_load2_noabort(i32 %300)
  %301 = load i16, ptr %count.i82, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i438.i, i16 %301)
  %cmp.i440.i = icmp eq i16 %inc.i438.i, %301
  %spec.store.select.i441.i = select i1 %cmp.i440.i, i16 0, i16 %inc.i438.i
  %302 = ptrtoint ptr %next_to_use3.i to i32
  call void @__asan_store2_noabort(i32 %302)
  store i16 %spec.store.select.i441.i, ptr %next_to_use3.i, align 4
  %303 = ptrtoint ptr %tx_ring1.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %tx_ring1.i, align 4
  %idxprom.i443.i = zext i16 %299 to i32
  %arrayidx.i444.i = getelementptr %struct.atl1e_tpd_desc, ptr %304, i32 %idxprom.i443.i
  %305 = call ptr @memset(ptr %arrayidx.i444.i, i32 0, i32 16)
  %306 = load ptr, ptr %tx_ring1.i, align 4
  %307 = ptrtoint ptr %tx_buffer.i429.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %tx_buffer.i429.i, align 4
  %309 = ptrtoint ptr %pdev170.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %pdev170.i, align 4
  %dev199.i = getelementptr inbounds %struct.pci_dev, ptr %310, i32 0, i32 44
  %dma200.i = getelementptr %struct.atl1e_tx_buffer, ptr %308, i32 %idxprom.i443.i, i32 3
  %311 = ptrtoint ptr %dma200.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %dma200.i, align 4
  %length201.i = getelementptr %struct.atl1e_tx_buffer, ptr %308, i32 %idxprom.i443.i, i32 2
  %313 = ptrtoint ptr %length201.i to i32
  call void @__asan_load2_noabort(i32 %313)
  %314 = load i16, ptr %length201.i, align 2
  %conv202.i = zext i16 %314 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev199.i, i32 noundef %312, i32 noundef %conv202.i, i32 noundef 1, i32 noundef 0) #10
  %315 = ptrtoint ptr %next_to_use3.i to i32
  call void @__asan_load2_noabort(i32 %315)
  %316 = load i16, ptr %next_to_use3.i, align 8
  %cmp193.not.i = icmp eq i16 %316, %298
  br i1 %cmp193.not.i, label %while.cond189.cleanup_crit_edge.i, label %while.body195.i.while.body195.i_crit_edge

while.body195.i.while.body195.i_crit_edge:        ; preds = %while.body195.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body195.i

do.body208.i:                                     ; preds = %do.end153.i
  %sub168.i = sub nsw i32 %conv155.i, %286
  %flags209.i = getelementptr %struct.atl1e_tx_buffer, ptr %281, i32 %sub.ptr.div.i433.i, i32 1
  %317 = ptrtoint ptr %flags209.i to i32
  call void @__asan_load2_noabort(i32 %317)
  %318 = load i16, ptr %flags209.i, align 4
  %319 = and i16 %318, -4
  %320 = or i16 %319, 2
  store i16 %320, ptr %flags209.i, align 4
  %321 = ptrtoint ptr %dma176.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %dma176.i, align 4
  %conv220.i = zext i32 %322 to i64
  %323 = tail call i64 @llvm.bswap.i64(i64 %conv220.i) #10
  %324 = ptrtoint ptr %arrayidx9.i427.i to i32
  call void @__asan_store8_noabort(i32 %324)
  store i64 %323, ptr %arrayidx9.i427.i, align 8
  %word2222.i = getelementptr %struct.atl1e_tpd_desc, ptr %278, i32 %idxprom.i425.i, i32 1
  %325 = ptrtoint ptr %word2222.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %word2222.i, align 8
  %and223.i = and i32 %326, -16384
  store i32 %and223.i, ptr %word2222.i, align 8
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div366.i, i32 %indvars.iv.next.i)
  %cmp134.i = icmp ugt i32 %div366.i, %indvars.iv.next.i
  %exitcond.not.i136 = icmp eq i32 %indvars.iv.next.i, %umax.i
  br i1 %exitcond.not.i136, label %do.body208.i.for.inc232.i_crit_edge, label %do.body208.i.for.body136.i_crit_edge

do.body208.i.for.body136.i_crit_edge:             ; preds = %do.body208.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body136.i

do.body208.i.for.inc232.i_crit_edge:              ; preds = %do.body208.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc232.i

while.cond189.cleanup_crit_edge.i:                ; preds = %while.body195.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx9.i445.le.i = getelementptr %struct.atl1e_tpd_desc, ptr %306, i32 %idxprom.i443.i
  %arrayidx.i452.le.i = getelementptr %struct.atl1e_tx_buffer, ptr %308, i32 %idxprom.i443.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %while.cond189.cleanup_crit_edge.i, %if.then182.i.cleanup.i_crit_edge
  %tpd.addr.1.lcssa.i = phi ptr [ %arrayidx9.i445.le.i, %while.cond189.cleanup_crit_edge.i ], [ %tpd.addr.0498.i, %if.then182.i.cleanup.i_crit_edge ]
  %tx_buffer.4.lcssa.i = phi ptr [ %arrayidx.i452.le.i, %while.cond189.cleanup_crit_edge.i ], [ %arrayidx.i434.i, %if.then182.i.cleanup.i_crit_edge ]
  %327 = ptrtoint ptr %next_to_use3.i to i32
  call void @__asan_store2_noabort(i32 %327)
  store i16 %162, ptr %next_to_use3.i, align 8
  br i1 %cmp134489.i, label %cleanup.i.if.then50_crit_edge, label %cleanup.i.for.inc232.i_crit_edge

cleanup.i.for.inc232.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc232.i

cleanup.i.if.then50_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then50

for.inc232.i:                                     ; preds = %cleanup.i.for.inc232.i_crit_edge, %do.body208.i.for.inc232.i_crit_edge, %for.body.i135.for.inc232.i_crit_edge
  %tx_buffer.5461.i = phi ptr [ %tx_buffer.4.lcssa.i, %cleanup.i.for.inc232.i_crit_edge ], [ %tx_buffer.2501.i, %for.body.i135.for.inc232.i_crit_edge ], [ %arrayidx.i434.i, %do.body208.i.for.inc232.i_crit_edge ]
  %use_tpd.5460.i = phi ptr [ %arrayidx9.i427.i, %cleanup.i.for.inc232.i_crit_edge ], [ %use_tpd.3500.i, %for.body.i135.for.inc232.i_crit_edge ], [ %arrayidx9.i427.i, %do.body208.i.for.inc232.i_crit_edge ]
  %tpd.addr.2459.i = phi ptr [ %tpd.addr.1.lcssa.i, %cleanup.i.for.inc232.i_crit_edge ], [ %tpd.addr.0498.i, %for.body.i135.for.inc232.i_crit_edge ], [ %tpd.addr.0498.i, %do.body208.i.for.inc232.i_crit_edge ]
  %indvars.iv.next517.i = add nuw nsw i32 %indvars.iv516.i, 1
  %exitcond518.not.i = icmp eq i32 %indvars.iv.next517.i, %wide.trip.count.i
  br i1 %exitcond518.not.i, label %for.inc232.i.for.end234.i_crit_edge, label %for.inc232.i.for.body.i135_crit_edge

for.inc232.i.for.body.i135_crit_edge:             ; preds = %for.inc232.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i135

for.inc232.i.for.end234.i_crit_edge:              ; preds = %for.inc232.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end234.i

for.end234.i:                                     ; preds = %for.inc232.i.for.end234.i_crit_edge, %for.cond.preheader.i.for.end234.i_crit_edge
  %tpd.addr.0.lcssa.i = phi ptr [ %arrayidx9.i, %for.cond.preheader.i.for.end234.i_crit_edge ], [ %tpd.addr.2459.i, %for.inc232.i.for.end234.i_crit_edge ]
  %use_tpd.3.lcssa.i = phi ptr [ %use_tpd.1.lcssa.i, %for.cond.preheader.i.for.end234.i_crit_edge ], [ %use_tpd.5460.i, %for.inc232.i.for.end234.i_crit_edge ]
  %tx_buffer.2.lcssa.i = phi ptr [ %tx_buffer.1.lcssa.i, %for.cond.preheader.i.for.end234.i_crit_edge ], [ %tx_buffer.5461.i, %for.inc232.i.for.end234.i_crit_edge ]
  %word3235.i = getelementptr inbounds %struct.atl1e_tpd_desc, ptr %tpd.addr.0.lcssa.i, i32 0, i32 2
  %328 = ptrtoint ptr %word3235.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %word3235.i, align 4
  %330 = and i32 %329, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %330)
  %tobool238.not.i = icmp eq i32 %330, 0
  br i1 %tobool238.not.i, label %for.end234.i.if.end51_crit_edge, label %if.then239.i

for.end234.i.if.end51_crit_edge:                  ; preds = %for.end234.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then239.i:                                     ; preds = %for.end234.i
  call void @__sanitizer_cov_trace_pc() #12
  %or241.i = or i32 %329, 262144
  %331 = ptrtoint ptr %word3235.i to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 %or241.i, ptr %word3235.i, align 4
  br label %if.end51

if.then50:                                        ; preds = %cleanup.i.if.then50_crit_edge, %while.end.i, %dma_map_single_attrs.exit.i.if.then50_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #10
  br label %cleanup

if.end51:                                         ; preds = %if.then239.i, %for.end234.i.if.end51_crit_edge
  %word3243.i = getelementptr inbounds %struct.atl1e_tpd_desc, ptr %use_tpd.3.lcssa.i, i32 0, i32 2
  %332 = ptrtoint ptr %word3243.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %word3243.i, align 4
  %or244.i = or i32 %333, 1
  store i32 %or244.i, ptr %word3243.i, align 4
  %334 = ptrtoint ptr %tx_buffer.2.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %334)
  store ptr %skb, ptr %tx_buffer.2.lcssa.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !246
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !247
  tail call void @arm_heavy_mb() #10
  %335 = ptrtoint ptr %next_to_use3.i to i32
  call void @__asan_load2_noabort(i32 %335)
  %336 = load i16, ptr %next_to_use3.i, align 4
  %conv.i138 = zext i16 %336 to i32
  %337 = tail call i32 @llvm.bswap.i32(i32 %conv.i138) #10
  %hw.i = getelementptr i8, ptr %netdev, i32 2568
  %338 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %hw.i, align 8
  %add.ptr.i139 = getelementptr i8, ptr %339, i32 5616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139, i32 %337) #10, !srcloc !168
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.then50, %if.then46, %if.then11, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 16, %if.then11 ], [ 0, %if.then46 ], [ 0, %if.end51 ], [ 0, %if.then50 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1e_set_mac_addr(ptr noundef %netdev, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sa_data, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %or.i.i = or i32 %1, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dev_addr_mod(ptr noundef %netdev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #10
  %hw = getelementptr i8, ptr %netdev, i32 2568
  %mac_addr = getelementptr i8, ptr %netdev, i32 2596
  %addr_len = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 56
  %7 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %addr_len, align 1
  %conv = zext i8 %8 to i32
  %9 = call ptr @memcpy(ptr %mac_addr, ptr %sa_data, i32 %conv)
  tail call void @atl1e_hw_set_mac_addr(ptr noundef %hw) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1e_ioctl(ptr noundef %netdev, ptr noundef %ifr, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd.off = add i32 %cmd, -35143
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cmd.off)
  %switch = icmp ult i32 %cmd.off, 3
  br i1 %switch, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call fastcc i32 @atl1e_mii_ioctl(ptr noundef %netdev, ptr noundef %ifr, i32 noundef %cmd)
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %sw.bb ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1e_change_mtu(ptr noundef %netdev, i32 noundef %new_mtu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %while.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

while.cond.preheader:                             ; preds = %entry
  %flags = getelementptr i8, ptr %netdev, i32 3396
  %call419 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call419)
  %tobool.not20 = icmp eq i32 %call419, 0
  br i1 %tobool.not20, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  tail call void @msleep(i32 noundef 1) #10
  %call4 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags) #10
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %mtu = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 20
  %2 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %new_mtu, ptr %mtu, align 4
  %conv = trunc i32 %new_mtu to i16
  %max_frame_size = getelementptr i8, ptr %netdev, i32 2610
  %3 = ptrtoint ptr %max_frame_size to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv, ptr %max_frame_size, align 2
  %add5 = add i32 %new_mtu, 29
  %4 = lshr i32 %add5, 3
  %conv6 = trunc i32 %4 to i16
  %rx_jumbo_th = getelementptr i8, ptr %netdev, i32 2612
  %5 = ptrtoint ptr %rx_jumbo_th to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv6, ptr %rx_jumbo_th, align 4
  tail call void @atl1e_down(ptr noundef %add.ptr.i)
  %call8 = tail call i32 @atl1e_up(ptr noundef %add.ptr.i)
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #10
  br label %if.end

if.end:                                           ; preds = %while.end, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl1e_tx_timeout(ptr noundef %netdev, i32 noundef %txqueue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %reset_task = getelementptr i8, ptr %netdev, i32 2924
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %reset_task) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @atl1e_get_stats(ptr noundef %netdev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_stats1 = getelementptr i8, ptr %netdev, i32 2672
  %stats = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36
  %rx_byte_cnt = getelementptr i8, ptr %netdev, i32 2700
  %0 = ptrtoint ptr %rx_byte_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_byte_cnt, align 4
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 2
  %2 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %rx_bytes, align 4
  %tx_byte_cnt = getelementptr i8, ptr %netdev, i32 2796
  %3 = ptrtoint ptr %tx_byte_cnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_byte_cnt, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 3
  %5 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tx_bytes, align 4
  %rx_mcast = getelementptr i8, ptr %netdev, i32 2680
  %6 = ptrtoint ptr %rx_mcast to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_mcast, align 4
  %multicast = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 8
  %8 = ptrtoint ptr %multicast to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %multicast, align 4
  %tx_1_col = getelementptr i8, ptr %netdev, i32 2828
  %9 = ptrtoint ptr %tx_1_col to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_1_col, align 4
  %tx_2_col = getelementptr i8, ptr %netdev, i32 2832
  %11 = ptrtoint ptr %tx_2_col to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_2_col, align 4
  %tx_late_col = getelementptr i8, ptr %netdev, i32 2836
  %13 = ptrtoint ptr %tx_late_col to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_late_col, align 4
  %tx_abort_col = getelementptr i8, ptr %netdev, i32 2840
  %15 = ptrtoint ptr %tx_abort_col to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_abort_col, align 4
  %add = add i32 %16, %14
  %add2 = add i32 %add, %10
  %add3 = add i32 %add2, %12
  %collisions = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 9
  %17 = ptrtoint ptr %collisions to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add3, ptr %collisions, align 4
  %rx_frag = getelementptr i8, ptr %netdev, i32 2708
  %18 = ptrtoint ptr %rx_frag to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_frag, align 4
  %rx_fcs_err = getelementptr i8, ptr %netdev, i32 2692
  %20 = ptrtoint ptr %rx_fcs_err to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_fcs_err, align 4
  %add4 = add i32 %21, %19
  %rx_len_err = getelementptr i8, ptr %netdev, i32 2696
  %22 = ptrtoint ptr %rx_len_err to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_len_err, align 4
  %add5 = add i32 %add4, %23
  %rx_sz_ov = getelementptr i8, ptr %netdev, i32 2740
  %24 = ptrtoint ptr %rx_sz_ov to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_sz_ov, align 4
  %add6 = add i32 %add5, %25
  %rx_rrd_ov = getelementptr i8, ptr %netdev, i32 2748
  %26 = ptrtoint ptr %rx_rrd_ov to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_rrd_ov, align 4
  %add7 = add i32 %add6, %27
  %rx_align_err = getelementptr i8, ptr %netdev, i32 2752
  %28 = ptrtoint ptr %rx_align_err to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_align_err, align 4
  %add8 = add i32 %add7, %29
  %rx_rxf_ov = getelementptr i8, ptr %netdev, i32 2744
  %30 = ptrtoint ptr %rx_rxf_ov to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_rxf_ov, align 4
  %add9 = add i32 %add8, %31
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 4
  %32 = ptrtoint ptr %rx_errors to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add9, ptr %rx_errors, align 4
  %rx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 14
  %33 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %31, ptr %rx_fifo_errors, align 4
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 10
  %34 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %23, ptr %rx_length_errors, align 4
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 12
  %35 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %21, ptr %rx_crc_errors, align 4
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 13
  %36 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %29, ptr %rx_frame_errors, align 4
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 6
  %37 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %27, ptr %rx_dropped, align 4
  %tx_underrun = getelementptr i8, ptr %netdev, i32 2844
  %38 = ptrtoint ptr %tx_underrun to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tx_underrun, align 4
  %add18 = add i32 %add, %39
  %tx_trunc = getelementptr i8, ptr %netdev, i32 2856
  %40 = ptrtoint ptr %tx_trunc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tx_trunc, align 4
  %add19 = add i32 %add18, %41
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 5
  %42 = ptrtoint ptr %tx_errors to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add19, ptr %tx_errors, align 4
  %tx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 18
  %43 = ptrtoint ptr %tx_fifo_errors to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %39, ptr %tx_fifo_errors, align 4
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 16
  %44 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %16, ptr %tx_aborted_errors, align 4
  %tx_window_errors = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 20
  %45 = ptrtoint ptr %tx_window_errors to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %14, ptr %tx_window_errors, align 4
  %46 = ptrtoint ptr %hw_stats1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %hw_stats1, align 4
  %add24 = add i32 %47, %add9
  %48 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add24, ptr %stats, align 4
  %tx_ok = getelementptr i8, ptr %netdev, i32 2768
  %49 = ptrtoint ptr %tx_ok to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tx_ok, align 4
  %add26 = add i32 %50, %add19
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 1
  %51 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add26, ptr %tx_packets, align 4
  ret ptr %stats
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl1e_netpoll(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %3) #10
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %irq2 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 46
  %6 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq2, align 4
  %call3 = tail call i32 @atl1e_intr(i32 noundef %7, ptr noundef %netdev)
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %irq5 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 46
  %10 = ptrtoint ptr %irq5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq5, align 4
  tail call void @enable_irq(i32 noundef %11) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @atl1e_fix_features(ptr nocapture noundef readnone %netdev, i64 noundef %features) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and1 = and i64 %features, -129
  %and = lshr i64 %features, 1
  %0 = and i64 %and, 128
  %features.addr.0 = or i64 %0, %and1
  ret i64 %features.addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1e_set_features(ptr noundef %netdev, i64 noundef %features) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %features1 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 23
  %0 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features1, align 16
  %xor = xor i64 %1, %features
  %and = and i64 %xor, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @atl1e_vlan_mode(ptr noundef %netdev, i64 noundef %features)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and2 = and i64 %xor, 17592186044416
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2)
  %tobool3.not = icmp eq i64 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @atl1e_rx_mode(ptr noundef %netdev, i64 noundef %features)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atl1e_free_ring_resources(ptr nocapture noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  tail call fastcc void @atl1e_clean_tx_ring(ptr noundef %adapter)
  %rx_page_desc2.i = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 19, i32 5
  %ring_vir_addr.i = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 16
  %2 = ptrtoint ptr %ring_vir_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring_vir_addr.i, align 8
  %cmp.i = icmp eq ptr %3, null
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %for.cond.preheader.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.cond.preheader.i:                             ; preds = %entry
  %num_rx_queues.i = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 20
  %4 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_rx_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp339.i = icmp sgt i32 %5, 0
  br i1 %cmp339.i, label %for.cond5.preheader.lr.ph.i, label %for.cond.preheader.i.atl1e_clean_rx_ring.exit_crit_edge

for.cond.preheader.i.atl1e_clean_rx_ring.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1e_clean_rx_ring.exit

for.cond5.preheader.lr.ph.i:                      ; preds = %for.cond.preheader.i
  %real_page_size.i = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 19, i32 4
  br label %for.cond5.preheader.i

for.cond5.preheader.i:                            ; preds = %for.inc.1.i.for.cond5.preheader.i_crit_edge, %for.cond5.preheader.lr.ph.i
  %conv41.i = phi i32 [ 0, %for.cond5.preheader.lr.ph.i ], [ %conv.i, %for.inc.1.i.for.cond5.preheader.i_crit_edge ]
  %i.040.i = phi i16 [ 0, %for.cond5.preheader.lr.ph.i ], [ %inc23.i, %for.inc.1.i.for.cond5.preheader.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.atl1e_rx_page_desc, ptr %rx_page_desc2.i, i32 %conv41.i
  %addr.i = getelementptr inbounds %struct.atl1e_rx_page, ptr %arrayidx.i, i32 0, i32 1
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr.i, align 4
  %cmp12.not.i = icmp eq ptr %7, null
  br i1 %cmp12.not.i, label %for.cond5.preheader.i.for.inc.i_crit_edge, label %if.then14.i

for.cond5.preheader.i.for.inc.i_crit_edge:        ; preds = %for.cond5.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then14.i:                                      ; preds = %for.cond5.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %real_page_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %real_page_size.i, align 4
  %10 = call ptr @memset(ptr %7, i32 0, i32 %9)
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then14.i, %for.cond5.preheader.i.for.inc.i_crit_edge
  %arrayidx11.1.i = getelementptr [2 x %struct.atl1e_rx_page], ptr %arrayidx.i, i32 0, i32 1
  %addr.1.i = getelementptr inbounds %struct.atl1e_rx_page, ptr %arrayidx11.1.i, i32 0, i32 1
  %11 = ptrtoint ptr %addr.1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %addr.1.i, align 4
  %cmp12.not.1.i = icmp eq ptr %12, null
  br i1 %cmp12.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then14.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i

if.then14.1.i:                                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %real_page_size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %real_page_size.i, align 4
  %15 = call ptr @memset(ptr %12, i32 0, i32 %14)
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then14.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %inc23.i = add i16 %i.040.i, 1
  %conv.i = zext i16 %inc23.i to i32
  %16 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_rx_queues.i, align 8
  %cmp3.i = icmp sgt i32 %17, %conv.i
  br i1 %cmp3.i, label %for.inc.1.i.for.cond5.preheader.i_crit_edge, label %for.inc.1.i.atl1e_clean_rx_ring.exit_crit_edge

for.inc.1.i.atl1e_clean_rx_ring.exit_crit_edge:   ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1e_clean_rx_ring.exit

for.inc.1.i.for.cond5.preheader.i_crit_edge:      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond5.preheader.i

atl1e_clean_rx_ring.exit:                         ; preds = %for.inc.1.i.atl1e_clean_rx_ring.exit_crit_edge, %for.cond.preheader.i.atl1e_clean_rx_ring.exit_crit_edge
  %18 = ptrtoint ptr %ring_vir_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load ptr, ptr %ring_vir_addr.i, align 8
  %tobool.not = icmp eq ptr %.pr, null
  br i1 %tobool.not, label %atl1e_clean_rx_ring.exit.if.end_crit_edge, label %if.then

atl1e_clean_rx_ring.exit.if.end_crit_edge:        ; preds = %atl1e_clean_rx_ring.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %atl1e_clean_rx_ring.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %ring_size = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 17
  %19 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ring_size, align 4
  %ring_dma = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 15
  %21 = ptrtoint ptr %ring_dma to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ring_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %20, ptr noundef nonnull %.pr, i32 noundef %22, i32 noundef 0) #10
  %23 = ptrtoint ptr %ring_vir_addr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %ring_vir_addr.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %atl1e_clean_rx_ring.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %tx_buffer = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 18, i32 6
  %24 = ptrtoint ptr %tx_buffer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_buffer, align 8
  %tobool4.not = icmp eq ptr %25, null
  br i1 %tobool4.not, label %if.end.if.end10_crit_edge, label %if.then5

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %25) #10
  %26 = ptrtoint ptr %tx_buffer to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %tx_buffer, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1e_intr(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  %phy_data.i115 = alloca i16, align 2
  %phy_data.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %data, i32 2304
  %hw1 = getelementptr i8, ptr %data, i32 2568
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %add.ptr143 = getelementptr i8, ptr %1, i32 5632
  %2 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr143) #10, !srcloc !169
  %3 = call i32 @llvm.bswap.i32(i32 %2)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !248
  %and144 = and i32 %3, 268655901
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %cmp145 = icmp ne i32 %and144, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp5.not146 = icmp sgt i32 %3, -1
  %or.cond147 = and i1 %cmp5.not146, %cmp145
  br i1 %or.cond147, label %if.end8.lr.ph, label %entry.do.body69_crit_edge

entry.do.body69_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body69

if.end8.lr.ph:                                    ; preds = %entry
  %mdio_lock.i = getelementptr i8, ptr %data, i32 2876
  %hw_stats.i = getelementptr i8, ptr %data, i32 2672
  %tx_ok.i = getelementptr i8, ptr %data, i32 2768
  %next_to_clean3.i = getelementptr i8, ptr %data, i32 3180
  %tx_buffer8.i = getelementptr i8, ptr %data, i32 3184
  %pdev.i = getelementptr i8, ptr %data, i32 2308
  %count.i = getelementptr i8, ptr %data, i32 3128
  %napi = getelementptr i8, ptr %data, i32 2312
  br label %if.end8

do.body:                                          ; preds = %do.cond66
  %4 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw1, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 5632
  %6 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !169
  %7 = call i32 @llvm.bswap.i32(i32 %6)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !248
  %and = and i32 %7, 268655901
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp5.not = icmp sgt i32 %7, -1
  %or.cond = and i1 %cmp5.not, %cmp
  br i1 %or.cond, label %do.body.if.end8_crit_edge, label %do.body.do.body69_crit_edge

do.body.do.body69_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body69

do.body.if.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end8:                                          ; preds = %do.body.if.end8_crit_edge, %if.end8.lr.ph
  %8 = phi i32 [ %3, %if.end8.lr.ph ], [ %7, %do.body.if.end8_crit_edge ]
  %max_ints.0148 = phi i32 [ 10, %if.end8.lr.ph ], [ %dec, %do.body.if.end8_crit_edge ]
  %and9 = and i32 %8, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool.not = icmp eq i32 %and9, 0
  br i1 %tobool.not, label %if.end8.do.body12_crit_edge, label %if.then10

if.end8.do.body12_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data.i) #10
  %9 = ptrtoint ptr %phy_data.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %phy_data.i, align 2, !annotation !224
  call void @_raw_spin_lock(ptr noundef %mdio_lock.i) #10
  %call.i = call i32 @atl1e_read_phy_reg(ptr noundef %hw1, i16 noundef zeroext 19, ptr noundef nonnull %phy_data.i) #10
  call void @_raw_spin_unlock(ptr noundef %mdio_lock.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data.i) #10
  br label %do.body12

do.body12:                                        ; preds = %if.then10, %if.end8.do.body12_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !249
  call void @arm_heavy_mb() #10
  %or = or i32 %8, -2147483648
  %10 = call i32 @llvm.bswap.i32(i32 %or)
  %11 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw1, align 4
  %add.ptr14 = getelementptr i8, ptr %12, i32 5632
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %10) #10, !srcloc !168
  %and15 = and i32 %8, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %do.body12.if.end24_crit_edge, label %if.then17

do.body12.if.end24_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then17:                                        ; preds = %do.body12
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str.31, i32 noundef %8) #13
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then17.if.end24_crit_edge, label %if.then21

if.then17.if.end24_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then21:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  %irq_sem.i = getelementptr i8, ptr %data, i32 2920
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %irq_sem.i, i32 noundef 4) #10
  %19 = ptrtoint ptr %irq_sem.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 0, ptr %irq_sem.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  call void @arm_heavy_mb() #10
  %20 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw1, align 8
  %add.ptr.i106 = getelementptr i8, ptr %21, i32 5632
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106, i32 0) #10, !srcloc !168
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  call void @arm_heavy_mb() #10
  %22 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw1, align 8
  %add.ptr5.i = getelementptr i8, ptr %23, i32 5636
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 0) #10, !srcloc !168
  %24 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw1, align 8
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #10, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !252
  %reset_task = getelementptr i8, ptr %data, i32 2924
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %27 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %27, ptr noundef %reset_task) #10
  br label %do.body69

if.end24:                                         ; preds = %if.then17.if.end24_crit_edge, %do.body12.if.end24_crit_edge
  %and25 = and i32 %8, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end31, label %if.then27

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %29, ptr noundef nonnull @.str.32, i32 noundef %8) #13
  %irq_sem.i107 = getelementptr i8, ptr %data, i32 2920
  %call.i.i.i108 = call zeroext i1 @__kasan_check_write(ptr noundef %irq_sem.i107, i32 noundef 4) #10
  %30 = ptrtoint ptr %irq_sem.i107 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 0, ptr %irq_sem.i107, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  call void @arm_heavy_mb() #10
  %31 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw1, align 8
  %add.ptr.i110 = getelementptr i8, ptr %32, i32 5632
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110, i32 0) #10, !srcloc !168
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  call void @arm_heavy_mb() #10
  %33 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw1, align 8
  %add.ptr5.i111 = getelementptr i8, ptr %34, i32 5636
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i111, i32 0) #10, !srcloc !168
  %35 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw1, align 8
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #10, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !252
  %reset_task29 = getelementptr i8, ptr %data, i32 2924
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %38 = load ptr, ptr @system_wq, align 4
  %call.i.i112 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %38, ptr noundef %reset_task29) #10
  br label %do.body69

if.end31:                                         ; preds = %if.end24
  %and32 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end31.if.end35_crit_edge, label %if.end31.while.body.i_crit_edge

if.end31.while.body.i_crit_edge:                  ; preds = %if.end31
  br label %while.body.i

if.end31.if.end35_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end31.while.body.i_crit_edge
  %conv40.i = phi i32 [ %add5.i, %while.body.i.while.body.i_crit_edge ], [ 5888, %if.end31.while.body.i_crit_edge ]
  %stats_item.039.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %hw_stats.i, %if.end31.while.body.i_crit_edge ]
  %39 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw1, align 8
  %add.ptr.i114 = getelementptr i8, ptr %40, i32 %conv40.i
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i114) #10, !srcloc !169
  %42 = call i32 @llvm.bswap.i32(i32 %41) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !253
  %43 = ptrtoint ptr %stats_item.039.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %stats_item.039.i, align 4
  %add.i = add i32 %44, %42
  store i32 %add.i, ptr %stats_item.039.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %stats_item.039.i, i32 1
  %add5.i = add nuw nsw i32 %conv40.i, 4
  %cmp.i = icmp ult i32 %conv40.i, 5977
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.body12.i_crit_edge

while.body.i.while.body12.i_crit_edge:            ; preds = %while.body.i
  br label %while.body12.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body12.i:                                   ; preds = %while.body12.i.while.body12.i_crit_edge, %while.body.i.while.body12.i_crit_edge
  %conv942.i = phi i32 [ %add25.i, %while.body12.i.while.body12.i_crit_edge ], [ 5984, %while.body.i.while.body12.i_crit_edge ]
  %stats_item.141.i = phi ptr [ %incdec.ptr23.i, %while.body12.i.while.body12.i_crit_edge ], [ %tx_ok.i, %while.body.i.while.body12.i_crit_edge ]
  %45 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw1, align 8
  %add.ptr18.i = getelementptr i8, ptr %46, i32 %conv942.i
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #10, !srcloc !169
  %48 = call i32 @llvm.bswap.i32(i32 %47) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !254
  %49 = ptrtoint ptr %stats_item.141.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %stats_item.141.i, align 4
  %add22.i = add i32 %50, %48
  store i32 %add22.i, ptr %stats_item.141.i, align 4
  %incdec.ptr23.i = getelementptr i32, ptr %stats_item.141.i, i32 1
  %add25.i = add nuw nsw i32 %conv942.i, 4
  %cmp10.i = icmp ult i32 %conv942.i, 6077
  br i1 %cmp10.i, label %while.body12.i.while.body12.i_crit_edge, label %while.body12.i.if.end35_crit_edge

while.body12.i.if.end35_crit_edge:                ; preds = %while.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

while.body12.i.while.body12.i_crit_edge:          ; preds = %while.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body12.i

if.end35:                                         ; preds = %while.body12.i.if.end35_crit_edge, %if.end31.if.end35_crit_edge
  %and36 = and i32 %8, 4100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end39, label %if.then38

if.then38:                                        ; preds = %if.end35
  %tx_carrier_errors = getelementptr inbounds %struct.net_device, ptr %data, i32 0, i32 36, i32 17
  %51 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tx_carrier_errors, align 4
  %inc = add i32 %52, 1
  store i32 %inc, ptr %tx_carrier_errors, align 4
  %53 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data.i115) #10
  %55 = ptrtoint ptr %phy_data.i115 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 0, ptr %phy_data.i115, align 2
  call void @_raw_spin_lock(ptr noundef %mdio_lock.i) #10
  %call.i118 = call i32 @atl1e_read_phy_reg(ptr noundef %hw1, i16 noundef zeroext 1, ptr noundef nonnull %phy_data.i115) #10
  %call3.i = call i32 @atl1e_read_phy_reg(ptr noundef %hw1, i16 noundef zeroext 1, ptr noundef nonnull %phy_data.i115) #10
  call void @_raw_spin_unlock(ptr noundef %mdio_lock.i) #10
  %56 = ptrtoint ptr %phy_data.i115 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %phy_data.i115, align 2
  %58 = and i16 %57, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool.not.i = icmp eq i16 %58, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then38.atl1e_link_chg_event.exit_crit_edge

if.then38.atl1e_link_chg_event.exit_crit_edge:    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1e_link_chg_event.exit

if.then.i:                                        ; preds = %if.then38
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 6
  %59 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %state.i.i, align 4
  %61 = and i32 %60, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i.i = icmp eq i32 %61, 0
  br i1 %tobool.not.i.i, label %if.then7.i, label %if.then.i.atl1e_link_chg_event.exit_crit_edge

if.then.i.atl1e_link_chg_event.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1e_link_chg_event.exit

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %54, ptr noundef nonnull @.str.33) #13
  %link_speed.i = getelementptr i8, ptr %data, i32 2872
  %62 = ptrtoint ptr %link_speed.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 -1, ptr %link_speed.i, align 8
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 103
  %63 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %64, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #10
  br label %atl1e_link_chg_event.exit

atl1e_link_chg_event.exit:                        ; preds = %if.then7.i, %if.then.i.atl1e_link_chg_event.exit_crit_edge, %if.then38.atl1e_link_chg_event.exit_crit_edge
  %link_chg_task.i = getelementptr i8, ptr %data, i32 2968
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %65 = load ptr, ptr @system_wq, align 4
  %call.i.i.i119 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %65, ptr noundef %link_chg_task.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data.i115) #10
  br label %do.body69

if.end39:                                         ; preds = %if.end35
  %and40 = and i32 %8, 131328
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end39.if.end44_crit_edge, label %if.then42

if.end39.if.end44_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then42:                                        ; preds = %if.end39
  %66 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hw1, align 8
  %add.ptr.i121 = getelementptr i8, ptr %67, i32 6148
  %68 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i121) #10, !srcloc !255
  %69 = call i16 @llvm.bswap.i16(i16 %68) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !256
  %call.i.i.i122 = call zeroext i1 @__kasan_check_read(ptr noundef %next_to_clean3.i, i32 noundef 4) #10
  %70 = ptrtoint ptr %next_to_clean3.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %next_to_clean3.i, align 4
  %conv.i = trunc i32 %71 to i16
  %conv53.i = and i32 %71, 65535
  call void @__sanitizer_cov_trace_cmp2(i16 %69, i16 %conv.i)
  %cmp.not4.i = icmp eq i16 %69, %conv.i
  br i1 %cmp.not4.i, label %if.then42.while.end.i128_crit_edge, label %if.then42.while.body.i124_crit_edge

if.then42.while.body.i124_crit_edge:              ; preds = %if.then42
  br label %while.body.i124

if.then42.while.end.i128_crit_edge:               ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i128

while.body.i124:                                  ; preds = %if.end31.i.while.body.i124_crit_edge, %if.then42.while.body.i124_crit_edge
  %conv56.i = phi i32 [ %conv5.i, %if.end31.i.while.body.i124_crit_edge ], [ %conv53.i, %if.then42.while.body.i124_crit_edge ]
  %next_to_clean.05.i = phi i16 [ %spec.store.select.i, %if.end31.i.while.body.i124_crit_edge ], [ %conv.i, %if.then42.while.body.i124_crit_edge ]
  %72 = ptrtoint ptr %tx_buffer8.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %tx_buffer8.i, align 4
  %arrayidx.i = getelementptr %struct.atl1e_tx_buffer, ptr %73, i32 %conv56.i
  %dma.i = getelementptr %struct.atl1e_tx_buffer, ptr %73, i32 %conv56.i, i32 3
  %74 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i123 = icmp eq i32 %75, 0
  br i1 %tobool.not.i123, label %while.body.i124.if.end26.i_crit_edge, label %if.then.i125

while.body.i124.if.end26.i_crit_edge:             ; preds = %while.body.i124
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

if.then.i125:                                     ; preds = %while.body.i124
  %flags.i = getelementptr %struct.atl1e_tx_buffer, ptr %73, i32 %conv56.i, i32 1
  %76 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %flags.i, align 4
  %78 = and i16 %77, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %if.then.i125.if.end24.i_crit_edge, label %if.end24.sink.split.i

if.then.i125.if.end24.i_crit_edge:                ; preds = %if.then.i125
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

if.end24.sink.split.i:                            ; preds = %if.then.i125
  call void @__sanitizer_cov_trace_pc() #12
  %80 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pdev.i, align 4
  %dev20.i = getelementptr inbounds %struct.pci_dev, ptr %81, i32 0, i32 44
  %length22.i = getelementptr %struct.atl1e_tx_buffer, ptr %73, i32 %conv56.i, i32 2
  %82 = ptrtoint ptr %length22.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %length22.i, align 2
  %conv23.i = zext i16 %83 to i32
  call void @dma_unmap_page_attrs(ptr noundef %dev20.i, i32 noundef %75, i32 noundef %conv23.i, i32 noundef 1, i32 noundef 0) #10
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.end24.sink.split.i, %if.then.i125.if.end24.i_crit_edge
  %84 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %dma.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.end24.i, %while.body.i124.if.end26.i_crit_edge
  %85 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx.i, align 4
  %tobool27.not.i = icmp eq ptr %86, null
  br i1 %tobool27.not.i, label %if.end26.i.if.end31.i_crit_edge, label %if.then28.i

if.end26.i.if.end31.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i

if.then28.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__dev_kfree_skb_irq(ptr noundef nonnull %86, i32 noundef 0) #10
  %87 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %arrayidx.i, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then28.i, %if.end26.i.if.end31.i_crit_edge
  %inc.i = add i16 %next_to_clean.05.i, 1
  %88 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i, i16 %89)
  %cmp34.i = icmp eq i16 %inc.i, %89
  %spec.store.select.i = select i1 %cmp34.i, i16 0, i16 %inc.i
  %conv5.i = zext i16 %spec.store.select.i to i32
  %cmp.not.i = icmp eq i16 %spec.store.select.i, %69
  br i1 %cmp.not.i, label %if.end31.i.while.end.i128_crit_edge, label %if.end31.i.while.body.i124_crit_edge

if.end31.i.while.body.i124_crit_edge:             ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i124

if.end31.i.while.end.i128_crit_edge:              ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i128

while.end.i128:                                   ; preds = %if.end31.i.while.end.i128_crit_edge, %if.then42.while.end.i128_crit_edge
  %conv5.lcssa.i = phi i32 [ %conv53.i, %if.then42.while.end.i128_crit_edge ], [ %conv5.i, %if.end31.i.while.end.i128_crit_edge ]
  %call.i.i1.i = call zeroext i1 @__kasan_check_write(ptr noundef %next_to_clean3.i, i32 noundef 4) #10
  %90 = ptrtoint ptr %next_to_clean3.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile i32 %conv5.lcssa.i, ptr %next_to_clean3.i, align 4
  %91 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %add.ptr.i, align 8
  %_tx.i.i.i126 = getelementptr inbounds %struct.net_device, ptr %92, i32 0, i32 103
  %93 = ptrtoint ptr %_tx.i.i.i126 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %_tx.i.i.i126, align 128
  %state.i.i.i127 = getelementptr inbounds %struct.netdev_queue, ptr %94, i32 0, i32 13
  %95 = ptrtoint ptr %state.i.i.i127 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %state.i.i.i127, align 4
  %and1.i.i.i.i = and i32 %96, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %while.end.i128.if.end44_crit_edge, label %land.lhs.true.i

while.end.i128.if.end44_crit_edge:                ; preds = %while.end.i128
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

land.lhs.true.i:                                  ; preds = %while.end.i128
  %state.i.i129 = getelementptr inbounds %struct.net_device, ptr %92, i32 0, i32 6
  %97 = ptrtoint ptr %state.i.i129 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %state.i.i129, align 4
  %99 = and i32 %98, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool.not.i.i130 = icmp eq i32 %99, 0
  br i1 %tobool.not.i.i130, label %if.then45.i, label %land.lhs.true.i.if.end44_crit_edge

land.lhs.true.i.if.end44_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then45.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @netif_tx_wake_queue(ptr noundef %94) #10
  br label %if.end44

if.end44:                                         ; preds = %if.then45.i, %land.lhs.true.i.if.end44_crit_edge, %while.end.i128.if.end44_crit_edge, %if.end39.if.end44_crit_edge
  %and45 = and i32 %8, 65560
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end44.do.cond66_crit_edge, label %do.body48

if.end44.do.cond66_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond66

do.body48:                                        ; preds = %if.end44
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !257
  call void @arm_heavy_mb() #10
  %100 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hw1, align 4
  %add.ptr52 = getelementptr i8, ptr %101, i32 5636
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 89981456) #10, !srcloc !168
  %102 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %hw1, align 4
  %104 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #10, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !258
  %call59 = call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #10
  br i1 %call59, label %if.then62, label %do.body48.do.cond66_crit_edge, !prof !208

do.body48.do.cond66_crit_edge:                    ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond66

if.then62:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #12
  call void @__napi_schedule(ptr noundef %napi) #10
  br label %do.cond66

do.cond66:                                        ; preds = %if.then62, %do.body48.do.cond66_crit_edge, %if.end44.do.cond66_crit_edge
  %dec = add nsw i32 %max_ints.0148, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp67.not = icmp eq i32 %dec, 0
  br i1 %cmp67.not, label %do.cond66.do.body69_crit_edge, label %do.body

do.cond66.do.body69_crit_edge:                    ; preds = %do.cond66
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body69

do.body69:                                        ; preds = %do.cond66.do.body69_crit_edge, %atl1e_link_chg_event.exit, %if.then27, %if.then21, %do.body.do.body69_crit_edge, %entry.do.body69_crit_edge
  %handled.1 = phi i32 [ 1, %if.then21 ], [ 1, %if.then27 ], [ 1, %atl1e_link_chg_event.exit ], [ 0, %entry.do.body69_crit_edge ], [ 1, %do.body.do.body69_crit_edge ], [ 1, %do.cond66.do.body69_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !259
  call void @arm_heavy_mb() #10
  %105 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %hw1, align 8
  %add.ptr74 = getelementptr i8, ptr %106, i32 5632
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 0) #10, !srcloc !168
  ret i32 %handled.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atl1e_read_phy_reg(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atl1e_mii_ioctl(ptr noundef %netdev, ptr noundef %ifr, i32 noundef %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %do.body4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body4:                                         ; preds = %entry
  %mdio_lock = getelementptr i8, ptr %netdev, i32 2876
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mdio_lock) #10
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %do.body4.out_crit_edge [
    i32 35143, label %sw.bb
    i32 35144, label %sw.bb9
    i32 35145, label %sw.bb15
  ]

do.body4.out_crit_edge:                           ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

sw.bb:                                            ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %ifr_ifru.i, align 2
  br label %out

sw.bb9:                                           ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  %hw = getelementptr i8, ptr %netdev, i32 2568
  %reg_num = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 1
  %4 = ptrtoint ptr %reg_num to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %reg_num, align 2
  %6 = and i16 %5, 31
  %val_out = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 3
  %call12 = tail call i32 @atl1e_read_phy_reg(ptr noundef %hw, i16 noundef zeroext %6, ptr noundef %val_out) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -5
  br label %out

sw.bb15:                                          ; preds = %do.body4
  %reg_num16 = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 1
  %7 = ptrtoint ptr %reg_num16 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %reg_num16, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %8)
  %tobool19.not = icmp ult i16 %8, 32
  br i1 %tobool19.not, label %do.body23, label %sw.bb15.out_crit_edge

sw.bb15.out_crit_edge:                            ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body23:                                        ; preds = %sw.bb15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atl1e_mii_ioctl.__UNIQUE_ID_ddebug505, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atl1e_mii_ioctl, %if.then29)) #10
          to label %do.end38 [label %if.then29], !srcloc !171

if.then29:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %11 = ptrtoint ptr %reg_num16 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %reg_num16, align 2
  %conv32 = zext i16 %12 to i32
  %val_in = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %val_in to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %val_in, align 2
  %conv33 = zext i16 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @atl1e_mii_ioctl.__UNIQUE_ID_ddebug505, ptr noundef %10, ptr noundef nonnull @.str.40, i32 noundef %conv32, i32 noundef %conv33) #10
  br label %do.end38

do.end38:                                         ; preds = %if.then29, %do.body23
  %hw39 = getelementptr i8, ptr %netdev, i32 2568
  %15 = ptrtoint ptr %reg_num16 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %reg_num16, align 2
  %conv41 = zext i16 %16 to i32
  %val_in42 = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %val_in42 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %val_in42, align 2
  %call43 = tail call i32 @atl1e_write_phy_reg(ptr noundef %hw39, i32 noundef %conv41, i16 noundef zeroext %18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  %spec.select63 = select i1 %tobool44.not, i32 0, i32 -5
  br label %out

out:                                              ; preds = %do.end38, %sw.bb15.out_crit_edge, %sw.bb9, %sw.bb, %do.body4.out_crit_edge
  %retval2.0 = phi i32 [ 0, %sw.bb ], [ %spec.select, %sw.bb9 ], [ -14, %sw.bb15.out_crit_edge ], [ %spec.select63, %do.end38 ], [ -95, %do.body4.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mdio_lock, i32 noundef %call6) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval2.0, %out ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atl1e_write_phy_reg(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atl1e_rx_mode(ptr noundef %netdev, i64 noundef %features) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atl1e_rx_mode.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atl1e_rx_mode, %if.then)) #10
          to label %do.end7 [label %if.then], !srcloc !171

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @atl1e_rx_mode.__UNIQUE_ID_ddebug502, ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.41) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  %irq_sem.i = getelementptr i8, ptr %netdev, i32 2920
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %irq_sem.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %irq_sem.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %irq_sem.i, ptr %irq_sem.i, i32 1, ptr elementtype(i32) %irq_sem.i) #10, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !167
  tail call void @arm_heavy_mb() #10
  %hw.i = getelementptr i8, ptr %netdev, i32 2568
  %3 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw.i, align 8
  %add.ptr.i21 = getelementptr i8, ptr %4, i32 5636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 0) #10, !srcloc !168
  %5 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw.i, align 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #10, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !170
  %pdev.i = getelementptr i8, ptr %netdev, i32 2308
  %8 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 46
  %10 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq.i, align 4
  tail call void @synchronize_irq(i32 noundef %11) #10
  %12 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw.i, align 8
  %add.ptr = getelementptr i8, ptr %13, i32 5248
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  %15 = and i32 %14, -9
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %and.i = lshr i64 %features, 17
  %17 = trunc i64 %and.i to i32
  %18 = and i32 %17, 134217728
  %storemerge.i = or i32 %16, %18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !261
  tail call void @arm_heavy_mb() #10
  %19 = tail call i32 @llvm.bswap.i32(i32 %storemerge.i)
  %20 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw.i, align 8
  %add.ptr16 = getelementptr i8, ptr %21, i32 5248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %19) #10, !srcloc !168
  %call.i.i.i23 = tail call zeroext i1 @__kasan_check_write(ptr noundef %irq_sem.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !210
  tail call void @llvm.prefetch.p0(ptr %irq_sem.i, i32 1, i32 3, i32 1) #10
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %irq_sem.i, ptr %irq_sem.i, i32 1, ptr elementtype(i32) %irq_sem.i) #10, !srcloc !211
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !212
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body.i, label %do.end7.atl1e_irq_enable.exit_crit_edge, !prof !208

do.end7.atl1e_irq_enable.exit_crit_edge:          ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1e_irq_enable.exit

do.body.i:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !213
  tail call void @arm_heavy_mb() #10
  %23 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw.i, align 8
  %add.ptr.i25 = getelementptr i8, ptr %24, i32 5632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 0) #10, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %25 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw.i, align 8
  %add.ptr6.i = getelementptr i8, ptr %26, i32 5636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 492634896) #10, !srcloc !168
  %27 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw.i, align 8
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #10, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  br label %atl1e_irq_enable.exit

atl1e_irq_enable.exit:                            ; preds = %do.body.i, %do.end7.atl1e_irq_enable.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atl1e_clean_rx_irq(ptr noundef %adapter, ptr nocapture noundef %work_done, i32 noundef %work_to_do) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %rx_page_desc1.i = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 19, i32 5
  %rx_using2.i = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 19, i32 5, i32 0, i32 1
  %2 = ptrtoint ptr %rx_using2.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rx_using2.i, align 4
  %idxprom5.i = zext i8 %3 to i32
  %write_offset_addr = getelementptr [2 x %struct.atl1e_rx_page], ptr %rx_page_desc1.i, i32 0, i32 %idxprom5.i, i32 3
  %4 = ptrtoint ptr %write_offset_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_offset_addr, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %read_offset = getelementptr [2 x %struct.atl1e_rx_page], ptr %rx_page_desc1.i, i32 0, i32 %idxprom5.i, i32 4
  %8 = ptrtoint ptr %read_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %read_offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp = icmp ult i32 %9, %7
  br i1 %cmp, label %do.body.preheader, label %entry.cleanup_crit_edge, !prof !208

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %arrayidx6.i = getelementptr [2 x %struct.atl1e_rx_page], ptr %rx_page_desc1.i, i32 0, i32 %idxprom5.i
  %rx_nxseq = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 19, i32 5, i32 0, i32 2
  %features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %napi = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 2
  %page_size = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 19, i32 3
  %hw130 = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 4
  br label %do.body

do.body:                                          ; preds = %if.end140.do.body_crit_edge, %do.body.preheader
  %rx_page.0 = phi ptr [ %rx_page.1, %if.end140.do.body_crit_edge ], [ %arrayidx6.i, %do.body.preheader ]
  %10 = ptrtoint ptr %work_done to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %work_done, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %work_to_do)
  %cmp5.not = icmp slt i32 %11, %work_to_do
  br i1 %cmp5.not, label %if.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %do.body
  %inc = add nsw i32 %11, 1
  %12 = ptrtoint ptr %work_done to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %inc, ptr %work_done, align 4
  %addr = getelementptr inbounds %struct.atl1e_rx_page, ptr %rx_page.0, i32 0, i32 1
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %addr, align 4
  %read_offset7 = getelementptr inbounds %struct.atl1e_rx_page, ptr %rx_page.0, i32 0, i32 4
  %15 = ptrtoint ptr %read_offset7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %read_offset7, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 %16
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr, align 4
  %19 = ptrtoint ptr %rx_nxseq to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %rx_nxseq, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %20)
  %cmp9.not = icmp eq i16 %18, %20
  br i1 %cmp9.not, label %if.end30, label %if.then11

if.then11:                                        ; preds = %if.end
  %conv8 = zext i16 %20 to i32
  %conv = zext i16 %18 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.44, i32 noundef %conv, i32 noundef %conv8) #13
  %21 = ptrtoint ptr %rx_nxseq to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %rx_nxseq, align 2
  %inc21 = add i16 %22, 1
  store i16 %inc21, ptr %rx_nxseq, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !262
  tail call void @arm_heavy_mb() #10
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr, align 4
  %conv24 = zext i16 %24 to i32
  %shl = shl nuw i32 %conv24, 16
  %25 = ptrtoint ptr %rx_nxseq to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %rx_nxseq, align 2
  %conv28 = zext i16 %26 to i32
  %or = or i32 %shl, %conv28
  %27 = tail call i32 @llvm.bswap.i32(i32 %or)
  %28 = ptrtoint ptr %hw130 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw130, align 8
  %add.ptr29 = getelementptr i8, ptr %29, i32 6400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %27) #10, !srcloc !168
  %flags = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 21
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %flags, align 4
  %32 = and i32 %31, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool149.not = icmp eq i32 %32, 0
  br i1 %tobool149.not, label %if.then150, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end30:                                         ; preds = %if.end
  %inc34 = add i16 %18, 1
  %33 = ptrtoint ptr %rx_nxseq to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %inc34, ptr %rx_nxseq, align 2
  %pkt_flag = getelementptr inbounds %struct.atl1e_recv_ret_status, ptr %add.ptr, i32 0, i32 3
  %34 = ptrtoint ptr %pkt_flag to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %pkt_flag, align 4
  %36 = and i16 %35, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool36.not = icmp eq i16 %36, 0
  br i1 %tobool36.not, label %if.end30.if.end46_crit_edge, label %land.lhs.true

if.end30.if.end46_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

land.lhs.true:                                    ; preds = %if.end30
  %37 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %features, align 16
  %and37 = and i64 %38, 17592186044416
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and37)
  %tobool38.not = icmp eq i64 %and37, 0
  br i1 %tobool38.not, label %if.then39, label %land.lhs.true.if.end46_crit_edge

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then39:                                        ; preds = %land.lhs.true
  %err_flag = getelementptr inbounds %struct.atl1e_recv_ret_status, ptr %add.ptr, i32 0, i32 4
  %39 = ptrtoint ptr %err_flag to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %err_flag, align 2
  %41 = and i16 %40, 39
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool42.not = icmp eq i16 %41, 0
  br i1 %tobool42.not, label %if.then39.if.end46_crit_edge, label %if.then43

if.then39.if.end46_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then43:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr44 = getelementptr i32, ptr %add.ptr, i32 1
  %42 = ptrtoint ptr %add.ptr44 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr44, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.45, i32 noundef %43) #13
  br label %skip_pkt

if.end46:                                         ; preds = %if.then39.if.end46_crit_edge, %land.lhs.true.if.end46_crit_edge, %if.end30.if.end46_crit_edge
  %word1 = getelementptr inbounds %struct.atl1e_recv_ret_status, ptr %add.ptr, i32 0, i32 2
  %44 = ptrtoint ptr %word1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %word1, align 4
  %shr = lshr i32 %45, 16
  %and47 = and i32 %shr, 16383
  %46 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %features, align 16
  %and49 = and i64 %47, 8796093022208
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and49)
  %tobool50.not = icmp eq i64 %and49, 0
  %sub = add nsw i32 %and47, -4
  %spec.select = select i1 %tobool50.not, i32 %sub, i32 %and47, !prof !208
  %add.i.i = add nsw i32 %spec.select, 2
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %1, i32 noundef %add.i.i, i32 noundef 2592) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end46.skip_pkt_crit_edge, label %if.end65

if.end46.skip_pkt_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_pkt

if.end65:                                         ; preds = %if.end46
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %48 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %49, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %50 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %51, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %add.ptr66 = getelementptr %struct.atl1e_recv_ret_status, ptr %add.ptr, i32 1
  %52 = call ptr @memcpy(ptr %add.ptr.i.i.i, ptr %add.ptr66, i32 %spec.select)
  %call67 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %spec.select) #10
  %call68 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i.i, ptr noundef %1) #10
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %53 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %call68, ptr %protocol, align 8
  %54 = ptrtoint ptr %pkt_flag to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %pkt_flag, align 4
  %err_flag.i = getelementptr inbounds %struct.atl1e_recv_ret_status, ptr %add.ptr, i32 0, i32 4
  %56 = ptrtoint ptr %err_flag.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %err_flag.i, align 2
  %conv.i = zext i16 %55 to i32
  %58 = and i32 %conv.i, 1040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %59 = icmp eq i32 %58, 0
  %60 = and i32 %conv.i, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %61 = icmp eq i32 %60, 0
  %or.cond.i = or i1 %59, %61
  br i1 %or.cond.i, label %if.end65.atl1e_rx_checksum.exit_crit_edge, label %if.then.i

if.end65.atl1e_rx_checksum.exit_crit_edge:        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1e_rx_checksum.exit

if.then.i:                                        ; preds = %if.end65
  %and.i = and i32 %conv.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end31.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.then.i
  %and16.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  %spec.select.i = select i1 %tobool17.not.i, i32 14, i32 22
  %add.ptr22.i = getelementptr i8, ptr %add.ptr66, i32 %spec.select.i
  %frag_off.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr22.i, i32 0, i32 4
  %62 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %frag_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %cmp.not.i = icmp eq i16 %63, 0
  %and27.i = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp ne i32 %and27.i, 0
  %or.cond2.i = select i1 %cmp.not.i, i1 true, i1 %tobool28.not.i
  %64 = and i16 %57, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool34.not.i = icmp eq i16 %64, 0
  %or.cond3.i = select i1 %or.cond2.i, i1 %tobool34.not.i, i1 false
  br i1 %or.cond3.i, label %if.then14.i.if.then35.i_crit_edge, label %if.then14.i.atl1e_rx_checksum.exit_crit_edge

if.then14.i.atl1e_rx_checksum.exit_crit_edge:     ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1e_rx_checksum.exit

if.then14.i.if.then35.i_crit_edge:                ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then35.i

if.end31.i:                                       ; preds = %if.then.i
  %.old.i = and i16 %57, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.old.i)
  %tobool34.not.old.i = icmp eq i16 %.old.i, 0
  br i1 %tobool34.not.old.i, label %if.end31.i.if.then35.i_crit_edge, label %if.end31.i.atl1e_rx_checksum.exit_crit_edge

if.end31.i.atl1e_rx_checksum.exit_crit_edge:      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atl1e_rx_checksum.exit

if.end31.i.if.then35.i_crit_edge:                 ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then35.i

if.then35.i:                                      ; preds = %if.end31.i.if.then35.i_crit_edge, %if.then14.i.if.then35.i_crit_edge
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15
  %65 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  %bf.set.i = or i16 %bf.clear.i, 512
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  br label %atl1e_rx_checksum.exit

atl1e_rx_checksum.exit:                           ; preds = %if.then35.i, %if.end31.i.atl1e_rx_checksum.exit_crit_edge, %if.then14.i.atl1e_rx_checksum.exit_crit_edge, %if.end65.atl1e_rx_checksum.exit_crit_edge
  %66 = ptrtoint ptr %pkt_flag to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %pkt_flag, align 4
  %68 = and i16 %67, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool72.not = icmp eq i16 %68, 0
  br i1 %tobool72.not, label %atl1e_rx_checksum.exit.if.end105_crit_edge, label %if.then73

atl1e_rx_checksum.exit.if.end105_crit_edge:       ; preds = %atl1e_rx_checksum.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105

if.then73:                                        ; preds = %atl1e_rx_checksum.exit
  %vtag = getelementptr inbounds %struct.atl1e_recv_ret_status, ptr %add.ptr, i32 0, i32 6
  %69 = ptrtoint ptr %vtag to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %vtag, align 2
  %71 = lshr i16 %70, 4
  %and78 = shl i16 %70, 13
  %or80 = or i16 %71, %and78
  %and83 = shl i16 %70, 9
  %shl84 = and i16 %and83, 4096
  %or85 = or i16 %or80, %shl84
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atl1e_clean_rx_irq.__UNIQUE_ID_ddebug510, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atl1e_clean_rx_irq, %if.then97)) #10
          to label %do.end104 [label %if.then97], !srcloc !171

if.then97:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %vtag to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %vtag, align 2
  %conv99 = zext i16 %73 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @atl1e_clean_rx_irq.__UNIQUE_ID_ddebug510, ptr noundef %1, ptr noundef nonnull @.str.47, i32 noundef %conv99) #10
  br label %do.end104

do.end104:                                        ; preds = %if.then97, %if.then73
  %vlan_proto1.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 9
  %74 = ptrtoint ptr %vlan_proto1.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 -32512, ptr %vlan_proto1.i, align 8
  %vlan_tci2.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 10
  %75 = ptrtoint ptr %vlan_tci2.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %or85, ptr %vlan_tci2.i, align 2
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 3
  %76 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %bf.load.i1 = load i32, ptr %vlan_present.i, align 2
  %bf.set.i2 = or i32 %bf.load.i1, -2147483648
  store i32 %bf.set.i2, ptr %vlan_present.i, align 2
  br label %if.end105

if.end105:                                        ; preds = %do.end104, %atl1e_rx_checksum.exit.if.end105_crit_edge
  %call106 = tail call i32 @napi_gro_receive(ptr noundef %napi, ptr noundef nonnull %call.i.i) #10
  br label %skip_pkt

skip_pkt:                                         ; preds = %if.end105, %if.end46.skip_pkt_crit_edge, %if.then43
  %word1107 = getelementptr inbounds %struct.atl1e_recv_ret_status, ptr %add.ptr, i32 0, i32 2
  %77 = ptrtoint ptr %word1107 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %word1107, align 4
  %shr108 = lshr i32 %78, 16
  %and109 = and i32 %shr108, 16383
  %add110 = add nuw nsw i32 %and109, 47
  %and111 = and i32 %add110, 32736
  %79 = ptrtoint ptr %read_offset7 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %read_offset7, align 4
  %add113 = add i32 %and111, %80
  store i32 %add113, ptr %read_offset7, align 4
  %81 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %page_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add113, i32 %82)
  %cmp115.not = icmp ult i32 %add113, %82
  br i1 %cmp115.not, label %skip_pkt.if.end140_crit_edge, label %if.then117

skip_pkt.if.end140_crit_edge:                     ; preds = %skip_pkt
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end140

if.then117:                                       ; preds = %skip_pkt
  call void @__sanitizer_cov_trace_pc() #12
  %write_offset_addr118 = getelementptr inbounds %struct.atl1e_rx_page, ptr %rx_page.0, i32 0, i32 3
  %83 = ptrtoint ptr %write_offset_addr118 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %write_offset_addr118, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %84, align 4
  %86 = ptrtoint ptr %read_offset7 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %read_offset7, align 4
  %87 = ptrtoint ptr %rx_using2.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %rx_using2.i, align 4
  %idxprom125 = zext i8 %88 to i32
  %arrayidx126 = getelementptr [2 x i16], ptr @atl1e_rx_page_vld_regs, i32 0, i32 %idxprom125
  %89 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %arrayidx126, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !263
  tail call void @arm_heavy_mb() #10
  %91 = ptrtoint ptr %hw130 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %hw130, align 8
  %conv132 = zext i16 %90 to i32
  %add.ptr133 = getelementptr i8, ptr %92, i32 %conv132
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr133, i8 1) #10, !srcloc !182
  %93 = ptrtoint ptr %rx_using2.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %rx_using2.i, align 4
  %95 = xor i8 %94, 1
  store i8 %95, ptr %rx_using2.i, align 4
  %idxprom5.i5 = zext i8 %95 to i32
  %arrayidx6.i6 = getelementptr [2 x %struct.atl1e_rx_page], ptr %rx_page_desc1.i, i32 0, i32 %idxprom5.i5
  br label %if.end140

if.end140:                                        ; preds = %if.then117, %skip_pkt.if.end140_crit_edge
  %rx_page.1 = phi ptr [ %arrayidx6.i6, %if.then117 ], [ %rx_page.0, %skip_pkt.if.end140_crit_edge ]
  %write_offset_addr141 = getelementptr inbounds %struct.atl1e_rx_page, ptr %rx_page.1, i32 0, i32 3
  %96 = ptrtoint ptr %write_offset_addr141 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %write_offset_addr141, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %97, align 4
  %read_offset143 = getelementptr inbounds %struct.atl1e_rx_page, ptr %rx_page.1, i32 0, i32 4
  %100 = ptrtoint ptr %read_offset143 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %read_offset143, align 4
  %cmp144 = icmp ult i32 %101, %99
  br i1 %cmp144, label %if.end140.do.body_crit_edge, label %if.end140.cleanup_crit_edge

if.end140.cleanup_crit_edge:                      ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end140.do.body_crit_edge:                      ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then150:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %reset_task = getelementptr inbounds %struct.atl1e_adapter, ptr %adapter, i32 0, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %102 = load ptr, ptr @system_wq, align 4
  %call.i.i7 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %102, ptr noundef %reset_task) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then150, %if.end140.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atl1e_restart_autoneg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atl1e_get_speed_and_duplex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @atl1e_force_ps(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atl1e_phy_commit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_wake(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_choose_state(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1e_io_error_detected(ptr noundef %pdev, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void @netif_device_detach(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %state)
  %cmp = icmp eq i32 %state, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @atl1e_down(ptr noundef %add.ptr.i)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  tail call void @pci_disable_device(ptr noundef %pdev) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %if.end4 ], [ 4, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1e_io_slot_reset(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @pci_enable_device(ptr noundef %pdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.59) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_set_master(ptr noundef %pdev) #10
  %call4 = tail call i32 @pci_enable_wake(ptr noundef %pdev, i32 noundef 3, i1 noundef zeroext false) #10
  %call5 = tail call i32 @pci_enable_wake(ptr noundef %pdev, i32 noundef 4, i1 noundef zeroext false) #10
  %hw = getelementptr i8, ptr %1, i32 2568
  %call6 = tail call i32 @atl1e_reset_hw(ptr noundef %hw) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 4, %if.then ], [ 5, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl1e_io_resume(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @atl1e_up(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then.if.end6_crit_edge, label %if.then4

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.60) #13
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  tail call void @netif_device_attach(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !15, !16, !17, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !44, !45, !46, !47, !48, !50, !51, !52, !54, !56, !58, !59, !61, !63, !65, !66, !68, !69, !71, !72, !74, !76, !78, !79, !81, !83, !85, !86, !87, !89, !90, !92, !94, !96, !98, !100, !102, !104, !105, !106, !108, !109, !110, !112, !113, !115, !117, !119, !121, !123, !124, !125, !127, !129, !130, !132, !134, !136, !138, !139, !140, !142, !143, !145, !146, !148, !149, !151, !153, !155}
!llvm.module.flags = !{!157, !158, !159, !160, !161, !162, !163, !164}
!llvm.ident = !{!165}

!0 = !{ptr @atl1e_driver_name, !1, !"atl1e_driver_name", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 11, i32 6}
!2 = !{ptr @__UNIQUE_ID_author498, !3, !"__UNIQUE_ID_author498", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 30, i32 1}
!4 = !{ptr @__UNIQUE_ID_description499, !5, !"__UNIQUE_ID_description499", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 31, i32 1}
!6 = !{ptr @__UNIQUE_ID_file500, !7, !"__UNIQUE_ID_file500", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 32, i32 1}
!8 = !{ptr @__UNIQUE_ID_license501, !7, !"__UNIQUE_ID_license501", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_atl1e__518_2560_atl1e_driver_init6, !10, !"__initcall__kmod_atl1e__518_2560_atl1e_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 2560, i32 1}
!11 = !{ptr @__exitcall_atl1e_driver_exit, !10, !"__exitcall_atl1e_driver_exit", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 355, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @atl1e_restore_vlan.__UNIQUE_ID_ddebug504, !13, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 344, i32 2}
!20 = !{ptr @atl1e_vlan_mode.__UNIQUE_ID_ddebug503, !19, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 1137, i32 7}
!23 = !{ptr @atl1e_rx_page_hi_addr_regs, !24, !"atl1e_rx_page_hi_addr_regs", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 45, i32 18}
!25 = !{ptr @atl1e_rx_page_lo_addr_regs, !26, !"atl1e_rx_page_lo_addr_regs", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 54, i32 1}
!27 = !{ptr @atl1e_rx_page_write_offset_regs, !28, !"atl1e_rx_page_write_offset_regs", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 63, i32 1}
!29 = !{ptr @atl1e_rx_page_vld_regs, !30, !"atl1e_rx_page_vld_regs", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 37, i32 1}
!31 = !{ptr @atl1e_pay_load_size, !32, !"atl1e_pay_load_size", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 71, i32 18}
!33 = !{ptr @atl1e_driver, !34, !"atl1e_driver", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 2546, i32 26}
!35 = !{ptr @atl1e_pci_tbl, !36, !"atl1e_pci_tbl", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 22, i32 35}
!37 = !{ptr @atl1e_probe.cards_found, !38, !"cards_found", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 2295, i32 13}
!39 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 2301, i32 41}
!41 = !{ptr @.str.7, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 2315, i32 3}
!43 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @atl1e_probe._entry, !42, !"_entry", i1 false, i1 false}
!47 = !{ptr @atl1e_probe._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 2321, i32 3}
!50 = !{ptr @atl1e_probe._entry.11, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @atl1e_probe._entry_ptr.13, !49, !"_entry_ptr", i1 false, i1 false}
!52 = distinct !{null, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 2335, i32 22}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 2346, i32 22}
!56 = !{ptr @atl1e_probe.__key, !57, !"__key", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 2359, i32 2}
!58 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!59 = distinct !{null, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 2373, i32 22}
!61 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 2389, i32 22}
!63 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 2394, i32 2}
!65 = !{ptr @atl1e_probe.__UNIQUE_ID_ddebug517, !64, !"__UNIQUE_ID_ddebug517", i1 false, i1 false}
!66 = !{ptr @atl1e_probe.__key.20, !67, !"__key", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 2396, i32 2}
!68 = !{ptr @.str.21, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @atl1e_probe.__key.22, !70, !"__key", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 2397, i32 2}
!71 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 2401, i32 22}
!74 = !{ptr @atl1e_netdev_ops, !75, !"atl1e_netdev_ops", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 2239, i32 36}
!76 = !{ptr @atl1e_init_ring_resources.__key, !77, !"__key", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 734, i32 2}
!78 = !{ptr @.str.25, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.26, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 819, i32 7}
!81 = !{ptr @.str.27, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 866, i32 31}
!83 = !{ptr @.str.28, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 1929, i32 3}
!85 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @atl1e_request_irq.__UNIQUE_ID_ddebug511, !84, !"__UNIQUE_ID_ddebug511", i1 false, i1 false}
!87 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 1933, i32 2}
!89 = !{ptr @atl1e_request_irq.__UNIQUE_ID_ddebug512, !88, !"__UNIQUE_ID_ddebug512", i1 false, i1 false}
!90 = !{ptr @.str.31, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 1301, i32 8}
!92 = !{ptr @.str.32, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 1313, i32 8}
!94 = !{ptr @.str.33, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 225, i32 24}
!96 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 1652, i32 10}
!98 = !{ptr @.str.35, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 1682, i32 8}
!100 = distinct !{null, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../include/linux/skbuff.h", i32 2789, i32 6}
!102 = distinct !{null, !103, !"__already_done", i1 false, i1 false}
!103 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!104 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.38, !103, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.39, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 494, i32 3}
!108 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @atl1e_mii_ioctl.__UNIQUE_ID_ddebug505, !107, !"__UNIQUE_ID_ddebug505", i1 false, i1 false}
!110 = !{ptr @.str.41, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 317, i32 2}
!112 = !{ptr @atl1e_rx_mode.__UNIQUE_ID_ddebug502, !111, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!113 = !{ptr @.str.42, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 460, i32 22}
!115 = !{ptr @.str.43, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 1530, i32 8}
!117 = !{ptr @.str.44, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 1418, i32 9}
!119 = !{ptr @.str.45, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 1438, i32 10}
!121 = !{ptr @.str.46, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 1462, i32 5}
!123 = !{ptr @.str.47, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @atl1e_clean_rx_irq.__UNIQUE_ID_ddebug510, !122, !"__UNIQUE_ID_ddebug510", i1 false, i1 false}
!125 = distinct !{null, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 624, i32 31}
!127 = !{ptr @atl1e_sw_init.__key, !128, !"__key", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 629, i32 2}
!129 = !{ptr @.str.49, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.50, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 180, i32 9}
!132 = !{ptr @.str.51, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 183, i32 9}
!134 = !{ptr @.str.52, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 183, i32 18}
!136 = !{ptr @.str.53, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 2103, i32 4}
!138 = !{ptr @.str.54, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @atl1e_suspend.__UNIQUE_ID_ddebug513, !137, !"__UNIQUE_ID_ddebug513", i1 false, i1 false}
!140 = !{ptr @.str.55, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 2125, i32 6}
!142 = !{ptr @atl1e_suspend.__UNIQUE_ID_ddebug514, !141, !"__UNIQUE_ID_ddebug514", i1 false, i1 false}
!143 = !{ptr @.str.56, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 2131, i32 5}
!145 = !{ptr @atl1e_suspend.__UNIQUE_ID_ddebug515, !144, !"__UNIQUE_ID_ddebug515", i1 false, i1 false}
!146 = !{ptr @.str.57, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 2152, i32 3}
!148 = !{ptr @atl1e_suspend.__UNIQUE_ID_ddebug516, !147, !"__UNIQUE_ID_ddebug516", i1 false, i1 false}
!149 = !{ptr @.str.58, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 2204, i32 7}
!151 = !{ptr @atl1e_err_handler, !152, !"atl1e_err_handler", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 2540, i32 40}
!153 = !{ptr @.str.59, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 2503, i32 7}
!155 = !{ptr @.str.60, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/atheros/atl1e/atl1e_main.c", i32 2532, i32 8}
!157 = !{i32 1, !"wchar_size", i32 2}
!158 = !{i32 1, !"min_enum_size", i32 4}
!159 = !{i32 8, !"branch-target-enforcement", i32 0}
!160 = !{i32 8, !"sign-return-address", i32 0}
!161 = !{i32 8, !"sign-return-address-all", i32 0}
!162 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!163 = !{i32 7, !"uwtable", i32 1}
!164 = !{i32 7, !"frame-pointer", i32 2}
!165 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!166 = !{i64 2148320376, i64 2148320402, i64 2148320431, i64 2148320465, i64 2148320496, i64 2148320519}
!167 = !{i64 2158066771}
!168 = !{i64 4282999}
!169 = !{i64 4283417}
!170 = !{i64 2158067529}
!171 = !{i64 2148802191, i64 2148802196, i64 2148802209, i64 2148802253, i64 2148802287, i64 2148802308}
!172 = !{i64 2158119922}
!173 = !{i64 2158120406}
!174 = !{i64 2158101661}
!175 = !{i64 2158102422}
!176 = !{i64 2158103078}
!177 = !{i64 2158103739}
!178 = !{i64 2158104542}
!179 = !{i64 2158105355}
!180 = !{i64 2158106123}
!181 = !{i64 2158106785}
!182 = !{i64 4282802}
!183 = !{i64 2158107196}
!184 = !{i64 2158107728}
!185 = !{i64 2158120898}
!186 = !{i64 4282379}
!187 = !{i64 2158121408}
!188 = !{i64 2158121956}
!189 = !{i64 2158122513}
!190 = !{i64 2158123058}
!191 = !{i64 2158123609}
!192 = !{i64 2158124169}
!193 = !{i64 2158124709}
!194 = !{i64 2158125275}
!195 = !{i64 2158108429}
!196 = !{i64 2158109238}
!197 = !{i64 2158113220}
!198 = !{i64 2158113932}
!199 = !{i64 2158114893}
!200 = !{i64 2158115846}
!201 = !{i64 2158116181}
!202 = !{i64 2158116749}
!203 = !{i64 2158117297}
!204 = !{i64 2158117917}
!205 = !{i64 2158118669}
!206 = !{i64 2158125870}
!207 = !{i64 2158126661}
!208 = !{!"branch_weights", i32 2000, i32 1}
!209 = !{i64 2158127045}
!210 = !{i64 2148408828}
!211 = !{i64 2148323561, i64 2148323593, i64 2148323622, i64 2148323656, i64 2148323687, i64 2148323710}
!212 = !{i64 2148409057}
!213 = !{i64 2158064235}
!214 = !{i64 2158065252}
!215 = !{i64 2158066292}
!216 = !{i64 2158151650}
!217 = !{i64 2158151980}
!218 = !{i64 2158075786}
!219 = !{i64 2158076166}
!220 = !{i64 2158076683}
!221 = !{i64 2158077203}
!222 = !{i64 2158091429}
!223 = !{i64 2158091763}
!224 = !{!"auto-init"}
!225 = !{i64 2158098754}
!226 = !{i64 2158099326}
!227 = !{i64 2158163385}
!228 = !{i64 2158163926}
!229 = !{i64 2158164717}
!230 = !{i64 2158165017}
!231 = !{i64 2158165507}
!232 = !{i64 2158166262}
!233 = !{i64 2158166562}
!234 = !{i64 2158167402}
!235 = !{i64 2158167764}
!236 = !{i64 2158139971}
!237 = !{i64 2158140408}
!238 = !{i64 2148322841, i64 2148322867, i64 2148322896, i64 2148322930, i64 2148322961, i64 2148322984}
!239 = !{i64 2158073029}
!240 = !{i64 2158073329}
!241 = !{i64 2158119427}
!242 = !{!"branch_weights", i32 1, i32 2000}
!243 = !{i64 7818098, i64 7818139, i64 7818184}
!244 = !{i64 7816996}
!245 = !{i64 2158143291, i64 2158143804, i64 2158143328, i64 2158143384, i64 2158143418, i64 2158143442, i64 2158143483, i64 2158143504, i64 2158143532, i64 2158143566}
!246 = !{i64 2158145272}
!247 = !{i64 2158145620}
!248 = !{i64 2158130167}
!249 = !{i64 2158130843}
!250 = !{i64 2158068008}
!251 = !{i64 2158068519}
!252 = !{i64 2158069277}
!253 = !{i64 2158127921}
!254 = !{i64 2158128567}
!255 = !{i64 4282579}
!256 = !{i64 2158129366}
!257 = !{i64 2158132138}
!258 = !{i64 2158133199}
!259 = !{i64 2158133579}
!260 = !{i64 2158087888}
!261 = !{i64 2158088222}
!262 = !{i64 2158134534}
!263 = !{i64 2158138075}

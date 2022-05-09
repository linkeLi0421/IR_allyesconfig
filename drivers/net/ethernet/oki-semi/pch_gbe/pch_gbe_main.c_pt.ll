; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c_pt.bc'
source_filename = "../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_error_handlers = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pch_gbe_privdata = type { i8, i8, ptr }
%struct.gpiod_lookup = type { ptr, i16, ptr, i32, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pch_gbe_hw = type { ptr, ptr, %struct.spinlock, %struct.pch_gbe_mac_info, %struct.pch_gbe_phy_info }
%struct.pch_gbe_mac_info = type { [6 x i8], i8, i8, i8, i32, i32, i8, i16, i16 }
%struct.pch_gbe_phy_info = type { i32, i32, i32, i32, i16 }
%struct.pch_gbe_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [16 x %struct.pch_gbe_regs_mac_adr], i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], i32, i32, i32, i32, i32, [3 x i32], i32, i32, i32, i32, i32, [3 x i32], i32, i32, [2 x i32], i32, i32, i32 }
%struct.pch_gbe_regs_mac_adr = type { i32, i32 }
%struct.pch_gbe_adapter = type { %struct.spinlock, %struct.spinlock, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.napi_struct, %struct.pch_gbe_hw, %struct.pch_gbe_hw_stats, %struct.work_struct, %struct.mii_if_info, %struct.timer_list, i32, ptr, i32, ptr, ptr, i32, i32, i8, i32, i32, ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.pch_gbe_hw_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.2, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.186, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.2 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.186 = type { ptr }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.187, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.187 = type { ptr }
%struct.pch_gbe_rx_ring = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.pch_gbe_buffer = type { ptr, i32, ptr, i32, i16, i8 }
%struct.pch_gbe_tx_ring = type { ptr, i32, i32, i32, i32, i32, ptr }
%struct.pch_gbe_tx_desc = type { i32, i16, i16, i16, i16, i8, i8, i16 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.pch_gbe_rx_desc = type { i32, i32, i16, i16, i8, i8, i16 }
%struct.sk_buff = type { %union.anon.3, %union.anon.6, %union.anon.150, [48 x i8], %union.anon.151, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.153, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, ptr, %union.anon.5 }
%union.anon.5 = type { ptr }
%union.anon.6 = type { ptr }
%union.anon.150 = type { i64 }
%union.anon.151 = type { %struct.anon.152 }
%struct.anon.152 = type { i32, ptr }
%union.anon.153 = type { %struct.anon.154 }
%struct.anon.154 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.155, i32, i32, i32, i16, i16, %union.anon.157, i32, %union.anon.158, %union.anon.159, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.155 = type { i32 }
%union.anon.157 = type { i32 }
%union.anon.158 = type { i32 }
%union.anon.159 = type { i16 }
%struct.page = type { i32, %union.anon.14, %union.anon.135, %struct.atomic_t, i32 }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.135 = type { %struct.atomic_t }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.ethtool_cmd = type { i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i32, i32, i16, i8, i8, i32, [2 x i32] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ifreq = type { %union.anon.166, %union.anon.167 }
%union.anon.166 = type { [16 x i8] }
%union.anon.167 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@pch_gbe_mac_force_mac_fc.__UNIQUE_ID_ddebug598 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pch_gbe\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pch_gbe_mac_force_mac_fc\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mac->fc = %u\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Flow control param set incorrectly\0A\00", [60 x i8] zeroinitializer }, align 32
@pch_gbe_mac_force_mac_fc.__UNIQUE_ID_ddebug599 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"RX_FCTRL reg : 0x%08x  mac->tx_fc_enable : %d\0A\00", [49 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pch-gbe.miim won't go Ready\0A\00", [35 x i8] zeroinitializer }, align 32
@pch_gbe_mac_ctrl_miim.__UNIQUE_ID_ddebug601 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pch_gbe_mac_ctrl_miim\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"PHY %s: reg=%d, data=0x%04X\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"READ\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WRITE\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pch_gbe_phy_get_id error\0A\00", [38 x i8] zeroinitializer }, align 32
@pch_gbe_setup_tx_resources.__UNIQUE_ID_ddebug632 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 1, i8 -79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pch_gbe_setup_tx_resources\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"tx_ring->desc = 0x%p  tx_ring->dma = 0x%08llx next_to_clean = 0x%08x  next_to_use = 0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@pch_gbe_setup_rx_resources.__UNIQUE_ID_ddebug633 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 1, i8 -69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pch_gbe_setup_rx_resources\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"rx_ring->desc = 0x%p  rx_ring->dma = 0x%08llx next_to_clean = 0x%08x  next_to_use = 0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Error: Invalid MAC address\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Error: can't bring device up - irq request failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Error: can't bring device up - alloc rx buffers pool failed\0A\00", [35 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__initcall__kmod_pch_gbe__650_2714_pch_gbe_driver_init6 = internal global ptr @pch_gbe_driver_init, section ".initcall6.init", align 4
@pch_gbe_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @pch_gbe_pcidev_id, ptr @pch_gbe_probe, ptr @pch_gbe_remove, ptr null, ptr null, ptr @pch_gbe_shutdown, ptr null, ptr null, ptr null, ptr @pch_gbe_err_handler, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pch_gbe_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_pch_gbe_driver_exit = internal global ptr @pch_gbe_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description651 = internal constant [54 x i8] c"pch_gbe.description=EG20T PCH Gigabit ethernet Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author652 = internal constant [60 x i8] c"pch_gbe.author=LAPIS SEMICONDUCTOR, <tshimizu818@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file653 = internal constant [59 x i8] c"pch_gbe.file=drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe\00", section ".modinfo", align 1
@__UNIQUE_ID_license654 = internal constant [20 x i8] c"pch_gbe.license=GPL\00", section ".modinfo", align 1
@pch_gbe_mac_read_mac_addr.__UNIQUE_ID_ddebug596 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pch_gbe_mac_read_mac_addr\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hw->mac.addr : %pM\0A\00", [44 x i8] zeroinitializer }, align 32
@pch_gbe_wait_clr_bit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013pch_gbe: Error: busy bit is not cleared\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pch_gbe_wait_clr_bit\00", [43 x i8] zeroinitializer }, align 32
@pch_gbe_wait_clr_bit._entry_ptr = internal global ptr @pch_gbe_wait_clr_bit._entry, section ".printk_index", align 4
@pch_gbe_mac_mar_set.__UNIQUE_ID_ddebug597 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pch_gbe_mac_mar_set\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"index : 0x%x\0A\00", [18 x i8] zeroinitializer }, align 32
@pch_gbe_clean_tx_ring.__UNIQUE_ID_ddebug609 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 -27, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pch_gbe_clean_tx_ring\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"call pch_gbe_unmap_and_free_tx_resource() %d count\0A\00", [44 x i8] zeroinitializer }, align 32
@pch_gbe_clean_rx_ring.__UNIQUE_ID_ddebug610 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 -19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pch_gbe_clean_rx_ring\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"call pch_gbe_unmap_and_free_rx_resource() %d count\0A\00", [44 x i8] zeroinitializer }, align 32
@pch_gbe_configure_tx.__UNIQUE_ID_ddebug606 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 -60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pch_gbe_configure_tx\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"dma addr = 0x%08llx  size = 0x%08x\0A\00", [60 x i8] zeroinitializer }, align 32
@pch_gbe_configure_rx.__UNIQUE_ID_ddebug607 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 -48, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pch_gbe_configure_rx\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"dma adr = 0x%08llx  size = 0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@pch_gbe_configure_rx.__UNIQUE_ID_ddebug608 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.33, i8 0, i8 -44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"MAC_RX_EN reg = 0x%08x  DMA_CTRL reg = 0x%08x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unable to allocate interrupt Error: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@pch_gbe_request_irq.__UNIQUE_ID_ddebug634 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 1, i8 -53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pch_gbe_request_irq\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"have_msi : %d  return : 0x%04x\0A\00", [32 x i8] zeroinitializer }, align 32
@pch_gbe_intr.__UNIQUE_ID_ddebug614 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 1, i8 60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pch_gbe_intr\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s occur int_st = 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@pch_gbe_intr.__UNIQUE_ID_ddebug615 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.39, i8 1, i8 61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Rx fifo over run\0A\00", [46 x i8] zeroinitializer }, align 32
@pch_gbe_intr.__UNIQUE_ID_ddebug616 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.40, i8 1, i8 66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Rx descriptor is empty\0A\00", [40 x i8] zeroinitializer }, align 32
@pch_gbe_intr.__UNIQUE_ID_ddebug617 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.41, i8 1, i8 72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"return = 0x%08x  INT_EN reg = 0x%08x\0A\00", [58 x i8] zeroinitializer }, align 32
@pch_gbe_mac_set_pause_packet.__UNIQUE_ID_ddebug602 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 0, i8 -122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pch_gbe_mac_set_pause_packet\00", [35 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"PAUSE_PKT1-5 reg : 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@pch_gbe_alloc_rx_buffers.__UNIQUE_ID_ddebug618 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.45, i8 1, i8 86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pch_gbe_alloc_rx_buffers\00", [39 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"i = %d  buffer_info->dma = 0x08%llx  buffer_info->length = 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@pch_gbe_irq_enable.__UNIQUE_ID_ddebug605 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 0, i8 -70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pch_gbe_irq_enable\00", [45 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"INT_EN reg : 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@pch_gbe_irq_disable.__UNIQUE_ID_ddebug604 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.49, i8 0, i8 -73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pch_gbe_irq_disable\00", [44 x i8] zeroinitializer }, align 32
@pch_gbe_set_multi.__UNIQUE_ID_ddebug638 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.52, i8 2, i8 5, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pch_gbe_set_multi\00", [46 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"netdev->flags : 0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@pch_gbe_set_multi.__UNIQUE_ID_ddebug639 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.53, i8 2, i8 17, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"RX_MODE reg(check bit31,30 ADD,MLT) : 0x%08x  netdev->mc_count : 0x%08x\0A\00", [55 x i8] zeroinitializer }, align 32
@pch_gbe_pcidev_id = internal constant { [5 x %struct.pci_device_id], [32 x i8] } { [5 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 34818, i32 7368, i32 1, i32 131072, i32 16776960, i32 ptrtoint (ptr @pch_gbe_minnow_privdata to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 34818, i32 -1, i32 -1, i32 131072, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 4315, i32 32787, i32 -1, i32 -1, i32 131072, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 4315, i32 34818, i32 -1, i32 -1, i32 131072, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@pch_gbe_err_handler = internal constant { %struct.pci_error_handlers, [40 x i8] } { %struct.pci_error_handlers { ptr @pch_gbe_io_error_detected, ptr null, ptr @pch_gbe_io_slot_reset, ptr null, ptr null, ptr @pch_gbe_io_resume }, [40 x i8] zeroinitializer }, align 32
@pch_gbe_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pch_gbe_suspend, ptr @pch_gbe_resume, ptr @pch_gbe_suspend, ptr @pch_gbe_resume, ptr @pch_gbe_suspend, ptr @pch_gbe_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pch_gbe_minnow_privdata = internal global { %struct.pch_gbe_privdata, [24 x i8] } { %struct.pch_gbe_privdata { i8 1, i8 1, ptr @pch_gbe_minnow_platform_init }, [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Can't request PHY reset GPIO line\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"0000:02:00.1\00", [19 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sch_gpio.33158\00", [17 x i8] zeroinitializer }, align 32
@pch_gbe_minnow_gpio_table = internal global { { %struct.list_head, ptr, [2 x %struct.gpiod_lookup] }, [44 x i8] } { { %struct.list_head, ptr, [2 x %struct.gpiod_lookup] } { %struct.list_head zeroinitializer, ptr @.str.55, [2 x %struct.gpiod_lookup] [%struct.gpiod_lookup { ptr @.str.56, i16 13, ptr null, i32 0, i32 1 }, %struct.gpiod_lookup zeroinitializer] }, [44 x i8] zeroinitializer }, align 32
@pch_gbe_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 2482, ptr @.str.60, ptr @.str.61 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ERR: No usable DMA configuration, aborting\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pch_gbe_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pch_gbe_probe._entry_ptr = internal global ptr @pch_gbe_probe._entry, section ".printk_index", align 4
@pch_gbe_probe._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.59, ptr @.str.2, i32 2490, ptr @.str.60, ptr @.str.61 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ERR: Can't reserve PCI I/O and memory resources\0A\00", [47 x i8] zeroinitializer }, align 32
@pch_gbe_probe._entry_ptr.64 = internal global ptr @pch_gbe_probe._entry.62, section ".printk_index", align 4
@pch_gbe_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @pch_gbe_open, ptr @pch_gbe_stop, ptr @pch_gbe_xmit_frame, ptr null, ptr null, ptr null, ptr @pch_gbe_set_multi, ptr @pch_gbe_set_mac, ptr null, ptr null, ptr @pch_gbe_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @pch_gbe_change_mtu, ptr null, ptr @pch_gbe_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pch_gbe_netpoll, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pch_gbe_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@pch_gbe_probe._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.59, ptr @.str.2, i32 2544, ptr @.str.60, ptr @.str.61 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PHY initialize error\0A\00", [42 x i8] zeroinitializer }, align 32
@pch_gbe_probe._entry_ptr.67 = internal global ptr @pch_gbe_probe._entry.65, section ".printk_index", align 4
@pch_gbe_probe._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.59, ptr @.str.2, i32 2551, ptr @.str.60, ptr @.str.61 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MAC address Read Error\0A\00", [40 x i8] zeroinitializer }, align 32
@pch_gbe_probe._entry_ptr.70 = internal global ptr @pch_gbe_probe._entry.68, section ".printk_index", align 4
@pch_gbe_probe._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.59, ptr @.str.2, i32 2564, ptr @.str.60, ptr @.str.61 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Invalid MAC address, interface disabled.\0A\00", [54 x i8] zeroinitializer }, align 32
@pch_gbe_probe._entry_ptr.73 = internal global ptr @pch_gbe_probe._entry.71, section ".printk_index", align 4
@pch_gbe_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"(&adapter->watchdog_timer)\00", [37 x i8] zeroinitializer }, align 32
@pch_gbe_probe.__key.75 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.76 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&adapter->reset_task)\00", [56 x i8] zeroinitializer }, align 32
@pch_gbe_probe._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.59, ptr @.str.2, i32 2574, ptr @.str.79, ptr @.str.61 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MAC address : %pM\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pch_gbe_probe._entry_ptr.80 = internal global ptr @pch_gbe_probe._entry.77, section ".printk_index", align 4
@pch_gbe_probe.__UNIQUE_ID_ddebug649 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.81, i8 2, i8 -122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PCH Network Connection\0A\00", [40 x i8] zeroinitializer }, align 32
@pch_gbe_open.__UNIQUE_ID_ddebug636 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.2, ptr @.str.83, i8 1, i8 -13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pch_gbe_open\00", [19 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Success End\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Error End\0A\00", [21 x i8] zeroinitializer }, align 32
@pch_gbe_xmit_frame.__UNIQUE_ID_ddebug637 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.2, ptr @.str.86, i8 2, i8 0, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pch_gbe_xmit_frame\00", [45 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Return : BUSY  next_to use : 0x%08x  next_to clean : 0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TX DMA map failed\0A\00", [45 x i8] zeroinitializer }, align 32
@pch_gbe_set_mac.__UNIQUE_ID_ddebug640 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.88, ptr @.str.2, ptr @.str.89, i8 2, i8 23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pch_gbe_set_mac\00", [16 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ret_val : 0x%08x\0A\00", [46 x i8] zeroinitializer }, align 32
@pch_gbe_set_mac.__UNIQUE_ID_ddebug641 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.88, ptr @.str.2, ptr @.str.90, i8 2, i8 23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dev_addr : %pM\0A\00", [16 x i8] zeroinitializer }, align 32
@pch_gbe_set_mac.__UNIQUE_ID_ddebug642 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.88, ptr @.str.2, ptr @.str.91, i8 2, i8 24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mac_addr : %pM\0A\00", [16 x i8] zeroinitializer }, align 32
@pch_gbe_set_mac.__UNIQUE_ID_ddebug643 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.88, ptr @.str.2, ptr @.str.92, i8 2, i8 24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"MAC_ADR1AB reg : 0x%08x 0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@pch_gbe_ioctl.__UNIQUE_ID_ddebug645 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.2, ptr @.str.94, i8 2, i8 47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pch_gbe_ioctl\00", [18 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cmd : 0x%04x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"01:00:5e:00:01:81\00", [46 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"01:1b:19:00:00:00\00", [46 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@pch_gbe_change_mtu.__UNIQUE_ID_ddebug644 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.2, ptr @.str.101, i8 2, i8 36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pch_gbe_change_mtu\00", [45 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"max_frame : %d  rx_buffer_len : %d  mtu : %d  max_frame_size : %d\0A\00", [61 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@pch_gbe_napi_poll.__UNIQUE_ID_ddebug646 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.102, ptr @.str.2, ptr @.str.103, i8 2, i8 56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pch_gbe_napi_poll\00", [46 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"budget : %d\0A\00", [19 x i8] zeroinitializer }, align 32
@pch_gbe_napi_poll.__UNIQUE_ID_ddebug647 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.102, ptr @.str.2, ptr @.str.104, i8 2, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"poll_end_flag : %d  work_done : %d  budget : %d\0A\00", [47 x i8] zeroinitializer }, align 32
@pch_gbe_clean_rx.__UNIQUE_ID_ddebug630 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.105, ptr @.str.2, ptr @.str.106, i8 1, i8 -105, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pch_gbe_clean_rx\00", [47 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"RxDecNo = 0x%04x  Status[DMA:0x%02x GBE:0x%04x TCP:0x%08x]  BufInf = 0x%p\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Receive Not Octal Error\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Receive Nibble Error\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Receive CRC Error\0A\00", [45 x i8] zeroinitializer }, align 32
@pch_gbe_clean_rx.__UNIQUE_ID_ddebug631 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.105, ptr @.str.2, ptr @.str.110, i8 1, i8 -93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Receive skb->ip_summed: %d length: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@pch_gbe_clean_tx.__UNIQUE_ID_ddebug619 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.2, ptr @.str.112, i8 1, i8 110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pch_gbe_clean_tx\00", [47 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"next_to_clean : %d\0A\00", [44 x i8] zeroinitializer }, align 32
@pch_gbe_clean_tx.__UNIQUE_ID_ddebug620 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.2, ptr @.str.113, i8 1, i8 111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"gbec_status:0x%04x  dma_status:0x%04x\0A\00", [57 x i8] zeroinitializer }, align 32
@pch_gbe_clean_tx.__UNIQUE_ID_ddebug621 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.2, ptr @.str.114, i8 1, i8 114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"clean_tx: transmit queue warning (%x,%x) unused=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@pch_gbe_clean_tx.__UNIQUE_ID_ddebug622 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.2, ptr @.str.115, i8 1, i8 117, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"clean_tx: unused=%d loops=%d found tx_desc[%x,%x:%x].gbec_status=%04x\0A\00", [57 x i8] zeroinitializer }, align 32
@pch_gbe_clean_tx.__UNIQUE_ID_ddebug623 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.2, ptr @.str.116, i8 1, i8 119, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gbec_status:0x%04x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Transfer Abort Error\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Transfer Carrier Sense Error\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Transfer Collision Abort Error\0A\00", [32 x i8] zeroinitializer }, align 32
@pch_gbe_clean_tx.__UNIQUE_ID_ddebug624 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.2, ptr @.str.120, i8 1, i8 125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Transfer Collision\0A\00", [44 x i8] zeroinitializer }, align 32
@pch_gbe_clean_tx.__UNIQUE_ID_ddebug625 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.2, ptr @.str.121, i8 1, i8 127, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unmap buffer_info->dma : %d\0A\00", [35 x i8] zeroinitializer }, align 32
@pch_gbe_clean_tx.__UNIQUE_ID_ddebug626 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.2, ptr @.str.122, i8 1, i8 -127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"trim buffer_info->skb : %d\0A\00", [36 x i8] zeroinitializer }, align 32
@pch_gbe_clean_tx.__UNIQUE_ID_ddebug627 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.2, ptr @.str.123, i8 1, i8 -123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"called pch_gbe_unmap_and_free_tx_resource() %d count\0A\00", [42 x i8] zeroinitializer }, align 32
@pch_gbe_clean_tx.__UNIQUE_ID_ddebug628 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.2, ptr @.str.124, i8 1, i8 -121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.124 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Tx wake queue\0A\00", [17 x i8] zeroinitializer }, align 32
@pch_gbe_clean_tx.__UNIQUE_ID_ddebug629 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.2, ptr @.str.112, i8 1, i8 -120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unable to allocate memory for queues\0A\00", [58 x i8] zeroinitializer }, align 32
@pch_gbe_sw_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.126 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&adapter->hw.miim_lock\00", [41 x i8] zeroinitializer }, align 32
@pch_gbe_sw_init.__key.127 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.128 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&adapter->stats_lock\00", [43 x i8] zeroinitializer }, align 32
@pch_gbe_sw_init.__key.129 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.130 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&adapter->ethtool_lock\00", [41 x i8] zeroinitializer }, align 32
@pch_gbe_sw_init.__UNIQUE_ID_ddebug635 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.131, ptr @.str.2, ptr @.str.132, i8 1, i8 -20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.131 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pch_gbe_sw_init\00", [16 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"rx_buffer_len : %d  mac.min_frame_size : %d  mac.max_frame_size : %d\0A\00", [58 x i8] zeroinitializer }, align 32
@pch_gbe_init_phy.__UNIQUE_ID_ddebug603 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.133, ptr @.str.2, ptr @.str.134, i8 0, i8 -107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pch_gbe_init_phy\00", [47 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"phy_addr = %d\0A\00", [17 x i8] zeroinitializer }, align 32
@pch_gbe_watchdog.__UNIQUE_ID_ddebug611 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.135, ptr @.str.2, ptr @.str.136, i8 1, i8 0, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.135 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pch_gbe_watchdog\00", [47 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"right now = %ld\0A\00", [47 x i8] zeroinitializer }, align 32
@pch_gbe_watchdog.__UNIQUE_ID_ddebug612 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.135, ptr @.str.2, ptr @.str.137, i8 1, i8 4, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.137 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Link is Up %d Mbps %s-Duplex\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Full\00", [27 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Half\00", [27 x i8] zeroinitializer }, align 32
@pch_gbe_watchdog.__UNIQUE_ID_ddebug613 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.135, ptr @.str.2, ptr @.str.140, i8 1, i8 6, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.140 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"NIC Link is Down\0A\00", [46 x i8] zeroinitializer }, align 32
@system_state = external dso_local local_unnamed_addr global i32, align 4
@pch_gbe_mac_set_wol_event.__UNIQUE_ID_ddebug600 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.141, ptr @.str.2, ptr @.str.142, i8 0, i8 111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.141 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pch_gbe_mac_set_wol_event\00", [38 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"wu_evt : 0x%08x  ADDR_MASK reg : 0x%08x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Cannot re-enable PCI device after reset\0A\00", [55 x i8] zeroinitializer }, align 32
@pch_gbe_io_resume.__UNIQUE_ID_ddebug648 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.144, ptr @.str.2, ptr @.str.145, i8 2, i8 82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.144 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pch_gbe_io_resume\00", [46 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"can't bring device back up after reset\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Cannot enable PCI device from suspend\0A\00", [57 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.147 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.148 = internal global [5 x i64] [i64 3, i64 16, i64 10, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.149 = internal global [5 x i64] [i64 3, i64 16, i64 10, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.150 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.151 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4, i64 5, i64 6, i64 9]
@__sancov_gen_cov_switch_values.152 = internal global [5 x i64] [i64 3, i64 16, i64 10, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.153 = internal global [5 x i64] [i64 3, i64 16, i64 10, i64 100, i64 1000]
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 400, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 423, i32 7 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 429, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 486, i32 31 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 497, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 698, i32 31 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1730, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1771, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1858, i32 22 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1873, i32 7 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1879, i32 7 }
@___asan_gen_.211 = private unnamed_addr constant [15 x i8] c"pch_gbe_driver\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2703, i32 26 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 281, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 296, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 310, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 916, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 949, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 784, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 832, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 845, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1835, i32 22 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1837, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1264, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1270, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1290, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1313, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 531, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1368, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 326, i32 6 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 746, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 731, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2071, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2115, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant [18 x i8] c"pch_gbe_pcidev_id\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2652, i32 35 }
@___asan_gen_.325 = private unnamed_addr constant [20 x i8] c"pch_gbe_err_handler\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2697, i32 40 }
@___asan_gen_.328 = private unnamed_addr constant [15 x i8] c"pch_gbe_pm_ops\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2687, i32 32 }
@___asan_gen_.331 = private unnamed_addr constant [24 x i8] c"pch_gbe_minnow_privdata\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2646, i32 32 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2636, i32 10 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2614, i32 13 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2616, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant [26 x i8] c"pch_gbe_minnow_gpio_table\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2613, i32 34 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2482, i32 4 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2489, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant [19 x i8] c"pch_gbe_netdev_ops\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2319, i32 36 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2544, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2551, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2563, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2566, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2568, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2574, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2586, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1999, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2010, i32 21 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2048, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1144, i32 31 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2142, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2143, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2144, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2145, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2236, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 234, i32 19 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 240, i32 19 }
@___asan_gen_.458 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 156, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2192, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2274, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2297, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1628, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1635, i32 23 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1639, i32 23 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1643, i32 23 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1674, i32 4 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1463, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1468, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1477, i32 4 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1492, i32 4 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1501, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1509, i32 32 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1514, i32 8 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1519, i32 8 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1526, i32 4 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1533, i32 4 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1540, i32 4 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1555, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1565, i32 4 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1956, i32 22 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1959, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1960, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1961, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1967, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 597, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1024, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1040, i32 3 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1048, i32 3 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 445, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2355, i32 22 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2375, i32 4 }
@___asan_gen_.601 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.602 = private constant [56 x i8] c"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c\00", align 1
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2429, i32 22 }
@llvm.compiler.used = appending global [164 x ptr] [ptr @__UNIQUE_ID_author652, ptr @__UNIQUE_ID_description651, ptr @__UNIQUE_ID_file653, ptr @__UNIQUE_ID_license654, ptr @__exitcall_pch_gbe_driver_exit, ptr @__initcall__kmod_pch_gbe__650_2714_pch_gbe_driver_init6, ptr @pch_gbe_driver_exit, ptr @pch_gbe_probe._entry, ptr @pch_gbe_probe._entry.62, ptr @pch_gbe_probe._entry.65, ptr @pch_gbe_probe._entry.68, ptr @pch_gbe_probe._entry.71, ptr @pch_gbe_probe._entry.77, ptr @pch_gbe_probe._entry_ptr, ptr @pch_gbe_probe._entry_ptr.64, ptr @pch_gbe_probe._entry_ptr.67, ptr @pch_gbe_probe._entry_ptr.70, ptr @pch_gbe_probe._entry_ptr.73, ptr @pch_gbe_probe._entry_ptr.80, ptr @pch_gbe_wait_clr_bit._entry, ptr @pch_gbe_wait_clr_bit._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @pch_gbe_driver, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @pch_gbe_pcidev_id, ptr @pch_gbe_err_handler, ptr @pch_gbe_pm_ops, ptr @pch_gbe_minnow_privdata, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @pch_gbe_minnow_gpio_table, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @pch_gbe_netdev_ops, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @pch_gbe_probe.__key, ptr @.str.74, ptr @pch_gbe_probe.__key.75, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @pch_gbe_sw_init.__key, ptr @.str.126, ptr @pch_gbe_sw_init.__key.127, ptr @.str.128, ptr @pch_gbe_sw_init.__key.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146], section "llvm.metadata"
@0 = internal global [150 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_gbe_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_gbe_wait_clr_bit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_gbe_pcidev_id to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_gbe_err_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_gbe_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_gbe_minnow_privdata to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_gbe_minnow_gpio_table to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_gbe_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_gbe_probe._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_gbe_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_gbe_probe._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_gbe_probe._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_gbe_probe._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_gbe_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_gbe_probe.__key.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_gbe_probe._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_gbe_sw_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_gbe_sw_init.__key.127 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_gbe_sw_init.__key.129 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pch_gbe_mac_force_mac_fc(ptr nocapture noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_mac_force_mac_fc.__UNIQUE_ID_ddebug598, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_mac_force_mac_fc, %if.then)) #9
          to label %do.end7 [label %if.then], !srcloc !335

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %netdev = getelementptr i8, ptr %hw, i32 -244
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %fc = getelementptr inbounds %struct.pch_gbe_hw, ptr %hw, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %fc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fc, align 2
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_mac_force_mac_fc.__UNIQUE_ID_ddebug598, ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %conv) #9
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  %reg = getelementptr inbounds %struct.pch_gbe_hw, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  %RX_FCTRL = getelementptr inbounds %struct.pch_gbe_regs, ptr %5, i32 0, i32 9
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %RX_FCTRL) #9, !srcloc !336
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %fc9 = getelementptr inbounds %struct.pch_gbe_hw, ptr %hw, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %fc9 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fc9, align 2
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %9, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb11
    i8 2, label %sw.bb13
    i8 3, label %sw.bb16
  ]

sw.bb:                                            ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %7, 2147483647
  br label %sw.epilog

sw.bb11:                                          ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %7, -2147483648
  br label %sw.epilog

sw.bb13:                                          ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  %and14 = and i32 %7, 2147483647
  br label %sw.epilog

sw.bb16:                                          ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  %or17 = or i32 %7, -2147483648
  br label %sw.epilog

sw.default:                                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  %netdev19 = getelementptr i8, ptr %hw, i32 -244
  %11 = ptrtoint ptr %netdev19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev19, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %12, ptr noundef nonnull @.str.4) #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb16, %sw.bb13, %sw.bb11, %sw.bb
  %.sink = phi i8 [ 1, %sw.bb16 ], [ 1, %sw.bb13 ], [ 0, %sw.bb11 ], [ 0, %sw.bb ]
  %rx_fctrl.0 = phi i32 [ %or17, %sw.bb16 ], [ %and14, %sw.bb13 ], [ %or, %sw.bb11 ], [ %and, %sw.bb ]
  %tx_fc_enable18 = getelementptr inbounds %struct.pch_gbe_hw, ptr %hw, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %tx_fc_enable18 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %.sink, ptr %tx_fc_enable18, align 4
  %link_duplex = getelementptr inbounds %struct.pch_gbe_hw, ptr %hw, i32 0, i32 3, i32 8
  %14 = ptrtoint ptr %link_duplex to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %link_duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp = icmp eq i16 %15, 0
  %and23 = and i32 %rx_fctrl.0, 2147483647
  %spec.select = select i1 %cmp, i32 %and23, i32 %rx_fctrl.0
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg, align 4
  %RX_FCTRL26 = getelementptr inbounds %struct.pch_gbe_regs, ptr %17, i32 0, i32 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  %18 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RX_FCTRL26, i32 %18) #9, !srcloc !339
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_mac_force_mac_fc.__UNIQUE_ID_ddebug599, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_mac_force_mac_fc, %if.then40)) #9
          to label %cleanup [label %if.then40], !srcloc !335

if.then40:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %netdev41 = getelementptr i8, ptr %hw, i32 -244
  %19 = ptrtoint ptr %netdev41 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %netdev41, align 4
  %21 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg, align 4
  %RX_FCTRL43 = getelementptr inbounds %struct.pch_gbe_regs, ptr %22, i32 0, i32 9
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %RX_FCTRL43) #9, !srcloc !336
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %tx_fc_enable45 = getelementptr inbounds %struct.pch_gbe_hw, ptr %hw, i32 0, i32 3, i32 3
  %25 = ptrtoint ptr %tx_fc_enable45 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %tx_fc_enable45, align 4
  %conv46 = zext i8 %26 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_mac_force_mac_fc.__UNIQUE_ID_ddebug599, ptr noundef %20, ptr noundef nonnull @.str.5, i32 noundef %24, i32 noundef %conv46) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %sw.epilog, %sw.default
  %retval.0 = phi i32 [ -22, %sw.default ], [ 0, %if.then40 ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @pch_gbe_mac_ctrl_miim(ptr noundef %hw, i32 noundef %addr, i32 noundef %dir, i32 noundef %reg, i16 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %miim_lock = getelementptr inbounds %struct.pch_gbe_hw, ptr %hw, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %miim_lock) #9
  %call6 = tail call i64 @ktime_get() #9
  %add.i = add i64 %call6, 2000000
  %reg8 = getelementptr inbounds %struct.pch_gbe_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg8 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg8, align 4
  %MIIM152 = getelementptr inbounds %struct.pch_gbe_regs, ptr %1, i32 0, i32 25
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %MIIM152) #9, !srcloc !336
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %and153 = and i32 %3, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool.not154 = icmp eq i32 %and153, 0
  br i1 %tobool.not154, label %entry.land.lhs.true_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call11 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call11, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call11, %add.i
  br i1 %cmp3.i, label %if.then15, label %cond.false

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %reg8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg8, align 4
  %MIIM17 = getelementptr inbounds %struct.pch_gbe_regs, ptr %5, i32 0, i32 25
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %MIIM17) #9, !srcloc !336
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 4294960) #9
  %9 = ptrtoint ptr %reg8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg8, align 4
  %MIIM = getelementptr inbounds %struct.pch_gbe_regs, ptr %10, i32 0, i32 25
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %MIIM) #9, !srcloc !336
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %and = and i32 %12, 67108864
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false.land.lhs.true_crit_edge, label %cond.false.for.end_crit_edge

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then15, %entry.for.end_crit_edge
  %data_out.0 = phi i32 [ %7, %if.then15 ], [ %3, %entry.for.end_crit_edge ], [ %12, %cond.false.for.end_crit_edge ]
  %and29 = and i32 %data_out.0, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.then32, label %if.end34

if.then32:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %netdev = getelementptr i8, ptr %hw, i32 -244
  %13 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str.6) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %miim_lock, i32 noundef %call3) #9
  br label %cleanup

if.end34:                                         ; preds = %for.end
  %shl = shl i32 %reg, 16
  %shl35 = shl i32 %addr, 21
  %conv37 = zext i16 %data to i32
  %or = or i32 %shl35, %dir
  %or36 = or i32 %or, %shl
  %or38 = or i32 %or36, %conv37
  %15 = ptrtoint ptr %reg8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg8, align 4
  %MIIM40 = getelementptr inbounds %struct.pch_gbe_regs, ptr %16, i32 0, i32 25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  %17 = tail call i32 @llvm.bswap.i32(i32 %or38) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MIIM40, i32 %17) #9, !srcloc !339
  %call44 = tail call i64 @ktime_get() #9
  %add.i140 = add i64 %call44, 2000000
  %18 = ptrtoint ptr %reg8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg8, align 4
  %MIIM48155 = getelementptr inbounds %struct.pch_gbe_regs, ptr %19, i32 0, i32 25
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %MIIM48155) #9, !srcloc !336
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %and50156 = and i32 %21, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50156)
  %tobool51.not157 = icmp eq i32 %and50156, 0
  br i1 %tobool51.not157, label %if.end34.land.lhs.true55_crit_edge, label %if.end34.for.end77_crit_edge

if.end34.for.end77_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end77

if.end34.land.lhs.true55_crit_edge:               ; preds = %if.end34
  br label %land.lhs.true55

land.lhs.true55:                                  ; preds = %cond.false71.land.lhs.true55_crit_edge, %if.end34.land.lhs.true55_crit_edge
  %call56 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call56, i64 %add.i140)
  %cmp3.i142 = icmp sgt i64 %call56, %add.i140
  br i1 %cmp3.i142, label %if.then60, label %cond.false71

if.then60:                                        ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %reg8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg8, align 4
  %MIIM62 = getelementptr inbounds %struct.pch_gbe_regs, ptr %23, i32 0, i32 25
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %MIIM62) #9, !srcloc !336
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  br label %for.end77

cond.false71:                                     ; preds = %land.lhs.true55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 4294960) #9
  %27 = ptrtoint ptr %reg8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg8, align 4
  %MIIM48 = getelementptr inbounds %struct.pch_gbe_regs, ptr %28, i32 0, i32 25
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %MIIM48) #9, !srcloc !336
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %and50 = and i32 %30, 67108864
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %cond.false71.land.lhs.true55_crit_edge, label %cond.false71.for.end77_crit_edge

cond.false71.for.end77_crit_edge:                 ; preds = %cond.false71
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end77

cond.false71.land.lhs.true55_crit_edge:           ; preds = %cond.false71
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true55

for.end77:                                        ; preds = %cond.false71.for.end77_crit_edge, %if.then60, %if.end34.for.end77_crit_edge
  %data_out.1 = phi i32 [ %25, %if.then60 ], [ %21, %if.end34.for.end77_crit_edge ], [ %30, %cond.false71.for.end77_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %miim_lock, i32 noundef %call3) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_mac_ctrl_miim.__UNIQUE_ID_ddebug601, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_mac_ctrl_miim, %if.then90)) #9
          to label %do.end106 [label %if.then90], !srcloc !335

if.then90:                                        ; preds = %for.end77
  call void @__sanitizer_cov_trace_pc() #11
  %netdev91 = getelementptr i8, ptr %hw, i32 -244
  %31 = ptrtoint ptr %netdev91 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %netdev91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %cmp92 = icmp eq i32 %dir, 0
  %cond94 = select i1 %cmp92, ptr @.str.9, ptr @.str.10
  %data_out.1.conv37 = select i1 %cmp92, i32 %data_out.1, i32 %conv37
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_mac_ctrl_miim.__UNIQUE_ID_ddebug601, ptr noundef %32, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond94, i32 noundef %reg, i32 noundef %data_out.1.conv37) #9
  br label %do.end106

do.end106:                                        ; preds = %if.then90, %for.end77
  %conv107 = trunc i32 %data_out.1 to i16
  br label %cleanup

cleanup:                                          ; preds = %do.end106, %if.then32
  %retval.0 = phi i16 [ 0, %if.then32 ], [ %conv107, %do.end106 ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pch_gbe_reinit_locked(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pch_gbe_down(ptr noundef %adapter)
  %call = tail call i32 @pch_gbe_up(ptr noundef %adapter)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pch_gbe_down(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 4
  %pdev2 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 4
  %2 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev2, align 8
  %rx_ring3 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 17
  %4 = ptrtoint ptr %rx_ring3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_ring3, align 4
  %napi = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 7
  tail call void @napi_disable(ptr noundef %napi) #9
  %irq_sem = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %irq_sem, i32 noundef 4) #9
  %6 = ptrtoint ptr %irq_sem to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %irq_sem, align 4
  tail call fastcc void @pch_gbe_irq_disable(ptr noundef %adapter)
  %7 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev1, align 4
  %irq.i = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 5
  %9 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq.i, align 4
  %call.i = tail call ptr @free_irq(i32 noundef %10, ptr noundef %8) #9
  %11 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev2, align 8
  tail call void @pci_free_irq_vectors(ptr noundef %12) #9
  %watchdog_timer = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 12
  %call = tail call i32 @del_timer_sync(ptr noundef %watchdog_timer) #9
  %tx_queue_len = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 19
  %13 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_queue_len, align 4
  %tx_queue_len4 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 107
  %15 = ptrtoint ptr %tx_queue_len4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %tx_queue_len4, align 16
  tail call void @netif_carrier_off(ptr noundef %1) #9
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %16 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %17, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  %error_state = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 43
  %18 = ptrtoint ptr %error_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %error_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %switch = icmp ult i32 %19, 2
  br i1 %switch, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pch_gbe_reset(ptr noundef %adapter)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tx_ring = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 16
  %20 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_ring, align 8
  tail call fastcc void @pch_gbe_clean_tx_ring(ptr noundef %adapter, ptr noundef %21)
  %22 = ptrtoint ptr %rx_ring3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx_ring3, align 4
  tail call fastcc void @pch_gbe_clean_rx_ring(ptr noundef %adapter, ptr noundef %23)
  %24 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev2, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %rx_buff_pool_size = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %5, i32 0, i32 4
  %26 = ptrtoint ptr %rx_buff_pool_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_buff_pool_size, align 4
  %rx_buff_pool = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %5, i32 0, i32 2
  %28 = ptrtoint ptr %rx_buff_pool to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rx_buff_pool, align 4
  %rx_buff_pool_logic = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %5, i32 0, i32 3
  %30 = ptrtoint ptr %rx_buff_pool_logic to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_buff_pool_logic, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %27, ptr noundef %29, i32 noundef %31, i32 noundef 0) #9
  %32 = ptrtoint ptr %rx_buff_pool_logic to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %rx_buff_pool_logic, align 4
  %33 = ptrtoint ptr %rx_buff_pool_size to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %rx_buff_pool_size, align 4
  %34 = ptrtoint ptr %rx_buff_pool to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %rx_buff_pool, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pch_gbe_up(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 4
  %tx_ring2 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 16
  %2 = ptrtoint ptr %tx_ring2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_ring2, align 8
  %rx_ring3 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 17
  %4 = ptrtoint ptr %rx_ring3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_ring3, align 4
  %mac = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 3
  %6 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mac, align 4
  %8 = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not.i = icmp eq i32 %8, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 0, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %10 to i32
  %or.i.i = or i32 %7, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.then_crit_edge, label %if.end

is_valid_ether_addr.exit.if.then_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %is_valid_ether_addr.exit.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.16) #12
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  tail call void @pch_gbe_set_multi(ptr noundef %1)
  %reg.i = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 1
  %11 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg.i, align 4
  %TX_MODE.i = getelementptr inbounds %struct.pch_gbe_regs, ptr %12, i32 0, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TX_MODE.i, i32 4325488) #9, !srcloc !339
  %13 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg.i, align 4
  %TCPIP_ACC.i = getelementptr inbounds %struct.pch_gbe_regs, ptr %14, i32 0, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %TCPIP_ACC.i) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %16 = or i32 %15, 33554432
  %17 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg.i, align 4
  %TCPIP_ACC4.i = getelementptr inbounds %struct.pch_gbe_regs, ptr %18, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TCPIP_ACC4.i, i32 %16) #9, !srcloc !339
  tail call fastcc void @pch_gbe_configure_tx(ptr noundef %adapter)
  %19 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg.i, align 4
  %RX_MODE.i = getelementptr inbounds %struct.pch_gbe_regs, ptr %20, i32 0, i32 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RX_MODE.i, i32 131264) #9, !srcloc !339
  %21 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg.i, align 4
  %TCPIP_ACC.i49 = getelementptr inbounds %struct.pch_gbe_regs, ptr %22, i32 0, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %TCPIP_ACC.i49) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %24 = and i32 %23, -83886081
  %25 = or i32 %24, 67108864
  %26 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg.i, align 4
  %TCPIP_ACC4.i50 = getelementptr inbounds %struct.pch_gbe_regs, ptr %27, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TCPIP_ACC4.i50, i32 %25) #9, !srcloc !339
  tail call fastcc void @pch_gbe_configure_rx(ptr noundef %adapter)
  %call4 = tail call fastcc i32 @pch_gbe_request_irq(ptr noundef %adapter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.17) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %pdev1.i = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 4
  %28 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev1.i, align 8
  %rx_buffer_len.i = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 18
  %30 = ptrtoint ptr %rx_buffer_len.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_buffer_len.i, align 8
  %count.i = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %5, i32 0, i32 6
  %32 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %count.i, align 4
  %mul.i = mul i32 %33, %31
  %add.i = add i32 %mul.i, 2097152
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %rx_buff_pool_logic.i = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %5, i32 0, i32 3
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef %add.i, ptr noundef %rx_buff_pool_logic.i, i32 noundef 3264, i32 noundef 0) #9
  %rx_buff_pool.i = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %5, i32 0, i32 2
  %34 = ptrtoint ptr %rx_buff_pool.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i.i, ptr %rx_buff_pool.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then9, label %if.end.i

if.end.i:                                         ; preds = %if.end6
  %rx_buff_pool_size.i = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %5, i32 0, i32 4
  %35 = ptrtoint ptr %rx_buff_pool_size.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add.i, ptr %rx_buff_pool_size.i, align 4
  %36 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp1.not.i = icmp eq i32 %37, 0
  br i1 %cmp1.not.i, label %if.end.i.if.end10_crit_edge, label %for.body.lr.ph.i

if.end.i.if.end10_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %buffer_info4.i = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %5, i32 0, i32 9
  %conv.i = trunc i32 %31 to i16
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.02.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %38 = ptrtoint ptr %buffer_info4.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %buffer_info4.i, align 4
  %40 = ptrtoint ptr %rx_buff_pool.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rx_buff_pool.i, align 4
  %mul6.i = mul i32 %i.02.i, %31
  %add.ptr.i = getelementptr i8, ptr %41, i32 %mul6.i
  %rx_buffer.i = getelementptr %struct.pch_gbe_buffer, ptr %39, i32 %i.02.i, i32 2
  %42 = ptrtoint ptr %rx_buffer.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr.i, ptr %rx_buffer.i, align 4
  %length.i = getelementptr %struct.pch_gbe_buffer, ptr %39, i32 %i.02.i, i32 4
  %43 = ptrtoint ptr %length.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv.i, ptr %length.i, align 4
  %inc.i = add nuw i32 %i.02.i, 1
  %44 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %count.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %45
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end10_crit_edge

for.body.i.if.end10_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.18) #12
  %46 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %netdev1, align 4
  %irq.i = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 5
  %48 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %irq.i, align 4
  %call.i = tail call ptr @free_irq(i32 noundef %49, ptr noundef %47) #9
  %50 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pdev1.i, align 8
  tail call void @pci_free_irq_vectors(ptr noundef %51) #9
  br label %cleanup

if.end10:                                         ; preds = %for.body.i.if.end10_crit_edge, %if.end.i.if.end10_crit_edge
  %max_frame_size.i = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 4
  %52 = ptrtoint ptr %max_frame_size.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %max_frame_size.i, align 4
  %add1.i = add i32 %53, 2
  %count.i51 = getelementptr inbounds %struct.pch_gbe_tx_ring, ptr %3, i32 0, i32 3
  %54 = ptrtoint ptr %count.i51 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %count.i51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp12.not.i = icmp eq i32 %55, 0
  br i1 %cmp12.not.i, label %if.end10.pch_gbe_alloc_tx_buffers.exit_crit_edge, label %for.body.lr.ph.i52

if.end10.pch_gbe_alloc_tx_buffers.exit_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %pch_gbe_alloc_tx_buffers.exit

for.body.lr.ph.i52:                               ; preds = %if.end10
  %buffer_info2.i = getelementptr inbounds %struct.pch_gbe_tx_ring, ptr %3, i32 0, i32 6
  br label %for.body.i56

for.body.i56:                                     ; preds = %for.body.i56.for.body.i56_crit_edge, %for.body.lr.ph.i52
  %i.013.i = phi i32 [ 0, %for.body.lr.ph.i52 ], [ %inc.i54, %for.body.i56.for.body.i56_crit_edge ]
  %56 = ptrtoint ptr %buffer_info2.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %buffer_info2.i, align 4
  %arrayidx.i = getelementptr %struct.pch_gbe_buffer, ptr %57, i32 %i.013.i
  %58 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %netdev1, align 4
  %call.i.i53 = tail call ptr @__netdev_alloc_skb(ptr noundef %59, i32 noundef %add1.i, i32 noundef 2592) #9
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i.i53, ptr %arrayidx.i, align 4
  %61 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %3, align 4
  %gbec_status.i = getelementptr %struct.pch_gbe_tx_desc, ptr %62, i32 %i.013.i, i32 7
  %63 = ptrtoint ptr %gbec_status.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 -16384, ptr %gbec_status.i, align 2
  %inc.i54 = add nuw i32 %i.013.i, 1
  %64 = ptrtoint ptr %count.i51 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %count.i51, align 4
  %cmp.i55 = icmp ult i32 %inc.i54, %65
  br i1 %cmp.i55, label %for.body.i56.for.body.i56_crit_edge, label %for.body.i56.pch_gbe_alloc_tx_buffers.exit_crit_edge

for.body.i56.pch_gbe_alloc_tx_buffers.exit_crit_edge: ; preds = %for.body.i56
  call void @__sanitizer_cov_trace_pc() #11
  br label %pch_gbe_alloc_tx_buffers.exit

for.body.i56.for.body.i56_crit_edge:              ; preds = %for.body.i56
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i56

pch_gbe_alloc_tx_buffers.exit:                    ; preds = %for.body.i56.pch_gbe_alloc_tx_buffers.exit_crit_edge, %if.end10.pch_gbe_alloc_tx_buffers.exit_crit_edge
  %66 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %count.i, align 4
  tail call fastcc void @pch_gbe_alloc_rx_buffers(ptr noundef %adapter, ptr noundef %5, i32 noundef %67)
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 107
  %68 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tx_queue_len, align 16
  %tx_queue_len12 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 19
  %70 = ptrtoint ptr %tx_queue_len12 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %tx_queue_len12, align 4
  %71 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %reg.i, align 4
  %DMA_CTRL.i = getelementptr inbounds %struct.pch_gbe_regs, ptr %72, i32 0, i32 30
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DMA_CTRL.i) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %74 = or i32 %73, 33554432
  %75 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %reg.i, align 4
  %DMA_CTRL2.i = getelementptr inbounds %struct.pch_gbe_regs, ptr %76, i32 0, i32 30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DMA_CTRL2.i, i32 %74) #9, !srcloc !339
  %77 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %reg.i, align 4
  %MAC_RX_EN.i = getelementptr inbounds %struct.pch_gbe_regs, ptr %78, i32 0, i32 8
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %MAC_RX_EN.i) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %80 = or i32 %79, 16777216
  %81 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %reg.i, align 4
  %MAC_RX_EN2.i = getelementptr inbounds %struct.pch_gbe_regs, ptr %82, i32 0, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MAC_RX_EN2.i, i32 %80) #9, !srcloc !339
  %watchdog_timer = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %83 = load volatile i32, ptr @jiffies, align 128
  %call15 = tail call i32 @mod_timer(ptr noundef %watchdog_timer, i32 noundef %83) #9
  %napi = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 7
  tail call void @napi_enable(ptr noundef %napi) #9
  tail call fastcc void @pch_gbe_irq_enable(ptr noundef %adapter)
  %84 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %netdev1, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %85, i32 0, i32 103
  %86 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %87, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %pch_gbe_alloc_tx_buffers.exit, %if.then9, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %pch_gbe_alloc_tx_buffers.exit ], [ %call4, %if.then5 ], [ -12, %if.then9 ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pch_gbe_reset(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 4
  %hw2 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8
  tail call fastcc void @pch_gbe_mac_reset_hw(ptr noundef %hw2)
  tail call void @pch_gbe_set_multi(ptr noundef %1)
  %mac.i = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 3
  tail call fastcc void @pch_gbe_mac_mar_set(ptr noundef %hw2, ptr noundef %mac.i, i32 noundef 0) #9
  %reg.i = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.01.i = phi i32 [ 1, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg.i, align 4
  %arrayidx.i = getelementptr %struct.pch_gbe_regs, ptr %3, i32 0, i32 23, i32 %i.01.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 0) #9, !srcloc !339
  %4 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg.i, align 4
  %low.i = getelementptr %struct.pch_gbe_regs, ptr %5, i32 0, i32 23, i32 %i.01.i, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %low.i, i32 0) #9, !srcloc !339
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %6 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg.i, align 4
  %ADDR_MASK.i = getelementptr inbounds %struct.pch_gbe_regs, ptr %7, i32 0, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ADDR_MASK.i, i32 -16842752) #9, !srcloc !339
  %8 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg.i, align 4
  %ADDR_MASK7.i = getelementptr inbounds %struct.pch_gbe_regs, ptr %9, i32 0, i32 24
  %call.i.i = tail call i64 @ktime_get() #9
  %add.i.i.i = add i64 %call.i.i, 10000
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %land.lhs.true.i.i.for.cond.i.i_crit_edge, %for.end.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ADDR_MASK7.i) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %.mask.i.i = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i.i)
  %tobool.not.i.i = icmp eq i32 %.mask.i.i, 0
  br i1 %tobool.not.i.i, label %for.cond.i.i.pch_gbe_mac_init_rx_addrs.exit_crit_edge, label %land.lhs.true.i.i

for.cond.i.i.pch_gbe_mac_init_rx_addrs.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pch_gbe_mac_init_rx_addrs.exit

land.lhs.true.i.i:                                ; preds = %for.cond.i.i
  %call4.i.i = tail call i64 @ktime_get() #9
  %cmp3.i.i.i = icmp sgt i64 %call4.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %for.end.i.i, label %land.lhs.true.i.i.for.cond.i.i_crit_edge

land.lhs.true.i.i.for.cond.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

for.end.i.i:                                      ; preds = %land.lhs.true.i.i
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ADDR_MASK7.i) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %.mask3.i.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask3.i.i)
  %tobool18.not.i.i = icmp eq i32 %.mask3.i.i, 0
  br i1 %tobool18.not.i.i, label %for.end.i.i.pch_gbe_mac_init_rx_addrs.exit_crit_edge, label %do.end.i.i

for.end.i.i.pch_gbe_mac_init_rx_addrs.exit_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pch_gbe_mac_init_rx_addrs.exit

do.end.i.i:                                       ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call22.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #12
  br label %pch_gbe_mac_init_rx_addrs.exit

pch_gbe_mac_init_rx_addrs.exit:                   ; preds = %do.end.i.i, %for.end.i.i.pch_gbe_mac_init_rx_addrs.exit_crit_edge, %for.cond.i.i.pch_gbe_mac_init_rx_addrs.exit_crit_edge
  %call = tail call i32 @pch_gbe_phy_get_id(ptr noundef %hw2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %pch_gbe_mac_init_rx_addrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev1, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %13, ptr noundef nonnull @.str.11) #12
  br label %cleanup

if.end:                                           ; preds = %pch_gbe_mac_init_rx_addrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pch_gbe_phy_init_setting(ptr noundef %hw2) #9
  tail call void @pch_gbe_phy_set_rgmii(ptr noundef %hw2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_gbe_mac_reset_hw(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.i = getelementptr inbounds %struct.pch_gbe_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg.i, align 4
  %mac_adr.i = getelementptr inbounds %struct.pch_gbe_regs, ptr %1, i32 0, i32 23
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mac_adr.i) #9, !srcloc !336
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %4 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg.i, align 4
  %low.i = getelementptr inbounds %struct.pch_gbe_regs, ptr %5, i32 0, i32 23, i32 0, i32 1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %low.i) #9, !srcloc !336
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %conv.i = trunc i32 %3 to i8
  %mac.i = getelementptr inbounds %struct.pch_gbe_hw, ptr %hw, i32 0, i32 3
  %8 = ptrtoint ptr %mac.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.i, ptr %mac.i, align 4
  %shr.i = lshr i32 %3, 8
  %conv7.i = trunc i32 %shr.i to i8
  %arrayidx10.i = getelementptr %struct.pch_gbe_hw, ptr %hw, i32 0, i32 3, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv7.i, ptr %arrayidx10.i, align 1
  %shr11.i = lshr i32 %3, 16
  %conv13.i = trunc i32 %shr11.i to i8
  %arrayidx16.i = getelementptr %struct.pch_gbe_hw, ptr %hw, i32 0, i32 3, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv13.i, ptr %arrayidx16.i, align 2
  %shr17.i = lshr i32 %3, 24
  %conv19.i = trunc i32 %shr17.i to i8
  %arrayidx22.i = getelementptr %struct.pch_gbe_hw, ptr %hw, i32 0, i32 3, i32 0, i32 3
  %11 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv19.i, ptr %arrayidx22.i, align 1
  %conv24.i = trunc i32 %7 to i8
  %arrayidx27.i = getelementptr %struct.pch_gbe_hw, ptr %hw, i32 0, i32 3, i32 0, i32 4
  %12 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv24.i, ptr %arrayidx27.i, align 4
  %shr28.i = lshr i32 %7, 8
  %conv30.i = trunc i32 %shr28.i to i8
  %arrayidx33.i = getelementptr %struct.pch_gbe_hw, ptr %hw, i32 0, i32 3, i32 0, i32 5
  %13 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv30.i, ptr %arrayidx33.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_mac_read_mac_addr.__UNIQUE_ID_ddebug596, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_mac_reset_hw, %if.then.i)) #9
          to label %pch_gbe_mac_read_mac_addr.exit [label %if.then.i], !srcloc !335

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %netdev.i = getelementptr i8, ptr %hw, i32 -244
  %14 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_mac_read_mac_addr.__UNIQUE_ID_ddebug596, ptr noundef %15, ptr noundef nonnull @.str.20, ptr noundef %mac.i) #9
  br label %pch_gbe_mac_read_mac_addr.exit

pch_gbe_mac_read_mac_addr.exit:                   ; preds = %if.then.i, %entry
  %16 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg.i, align 4
  %RESET = getelementptr inbounds %struct.pch_gbe_regs, ptr %17, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RESET, i32 128) #9, !srcloc !339
  %18 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg.i, align 4
  %MODE = getelementptr inbounds %struct.pch_gbe_regs, ptr %19, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MODE, i32 128) #9, !srcloc !339
  %20 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg.i, align 4
  %RESET3 = getelementptr inbounds %struct.pch_gbe_regs, ptr %21, i32 0, i32 3
  %call.i = tail call i64 @ktime_get() #9
  %add.i.i = add i64 %call.i, 10000
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %pch_gbe_mac_read_mac_addr.exit
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %RESET3) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %.mask.i = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool.not.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool.not.i, label %for.cond.i.pch_gbe_wait_clr_bit.exit_crit_edge, label %land.lhs.true.i

for.cond.i.pch_gbe_wait_clr_bit.exit_crit_edge:   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pch_gbe_wait_clr_bit.exit

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call4.i = tail call i64 @ktime_get() #9
  %cmp3.i.i = icmp sgt i64 %call4.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %RESET3) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %.mask3.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask3.i)
  %tobool18.not.i = icmp eq i32 %.mask3.i, 0
  br i1 %tobool18.not.i, label %for.end.i.pch_gbe_wait_clr_bit.exit_crit_edge, label %do.end.i

for.end.i.pch_gbe_wait_clr_bit.exit_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pch_gbe_wait_clr_bit.exit

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #12
  br label %pch_gbe_wait_clr_bit.exit

pch_gbe_wait_clr_bit.exit:                        ; preds = %do.end.i, %for.end.i.pch_gbe_wait_clr_bit.exit_crit_edge, %for.cond.i.pch_gbe_wait_clr_bit.exit_crit_edge
  tail call fastcc void @pch_gbe_mac_mar_set(ptr noundef %hw, ptr noundef %mac.i, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_gbe_set_multi(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 2640
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_set_multi.__UNIQUE_ID_ddebug638, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_set_multi, %if.then)) #9
          to label %do.end7 [label %if.then], !srcloc !335

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_set_multi.__UNIQUE_ID_ddebug638, ptr noundef %netdev, ptr noundef nonnull @.str.52, i32 noundef %1) #9
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  %reg = getelementptr i8, ptr %netdev, i32 2644
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  %RX_MODE = getelementptr inbounds %struct.pch_gbe_regs, ptr %3, i32 0, i32 11
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %RX_MODE) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %flags9 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %5 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags9, align 8
  %and = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  %7 = and i32 %4, -193
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %masksel = select i1 %tobool10.not, i32 -1073741824, i32 0
  %spec.select = or i32 %masksel, %8
  %mc = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66, i32 1
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count, align 8
  %and15 = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp ne i32 %and15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %10)
  %cmp = icmp sgt i32 %10, 15
  %or.cond = select i1 %tobool16.not, i1 true, i1 %cmp
  %and18 = and i32 %spec.select, -1073741825
  %rctl.1 = select i1 %or.cond, i32 %and18, i32 %spec.select
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg, align 4
  %RX_MODE21 = getelementptr inbounds %struct.pch_gbe_regs, ptr %12, i32 0, i32 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  %13 = tail call i32 @llvm.bswap.i32(i32 %rctl.1) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RX_MODE21, i32 %13) #9, !srcloc !339
  %and22 = and i32 %rctl.1, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %do.end7.cleanup_crit_edge, label %for.cond.preheader

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %do.end7
  %14 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %14)
  %ha.0117 = load ptr, ptr %mc, align 4
  %cmp31.not118 = icmp eq ptr %ha.0117, %mc
  br i1 %cmp31.not118, label %for.cond.preheader.for.body41.preheader_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.body41.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body41.preheader

for.cond39.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %inc)
  %cmp40121 = icmp slt i32 %inc, 16
  br i1 %cmp40121, label %for.cond39.preheader.for.body41.preheader_crit_edge, label %for.cond39.preheader.do.body57_crit_edge

for.cond39.preheader.do.body57_crit_edge:         ; preds = %for.cond39.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body57

for.cond39.preheader.for.body41.preheader_crit_edge: ; preds = %for.cond39.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body41.preheader

for.body41.preheader:                             ; preds = %for.cond39.preheader.for.body41.preheader_crit_edge, %for.cond.preheader.for.body41.preheader_crit_edge
  %i.1122.ph = phi i32 [ 1, %for.cond.preheader.for.body41.preheader_crit_edge ], [ %inc, %for.cond39.preheader.for.body41.preheader_crit_edge ]
  br label %for.body41

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %ha.0120 = phi ptr [ %ha.0, %for.body.for.body_crit_edge ], [ %ha.0117, %for.cond.preheader.for.body_crit_edge ]
  %i.0119 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0120, i32 0, i32 2
  %inc = add i32 %i.0119, 1
  tail call fastcc void @pch_gbe_mac_mar_set(ptr noundef %hw1, ptr noundef %addr, i32 noundef %i.0119)
  %15 = ptrtoint ptr %ha.0120 to i32
  call void @__asan_load4_noabort(i32 %15)
  %ha.0 = load ptr, ptr %ha.0120, align 4
  %cmp31.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp31.not, label %for.cond39.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body41:                                       ; preds = %pch_gbe_wait_clr_bit.exit.for.body41_crit_edge, %for.body41.preheader
  %i.1122 = phi i32 [ %inc54, %pch_gbe_wait_clr_bit.exit.for.body41_crit_edge ], [ %i.1122.ph, %for.body41.preheader ]
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg, align 4
  %ADDR_MASK = getelementptr inbounds %struct.pch_gbe_regs, ptr %17, i32 0, i32 24
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ADDR_MASK) #9, !srcloc !336
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %shl = shl nuw nsw i32 1, %i.1122
  %or44 = or i32 %19, %shl
  %20 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg, align 4
  %ADDR_MASK46 = getelementptr inbounds %struct.pch_gbe_regs, ptr %21, i32 0, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  %22 = tail call i32 @llvm.bswap.i32(i32 %or44) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ADDR_MASK46, i32 %22) #9, !srcloc !339
  %23 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg, align 4
  %ADDR_MASK48 = getelementptr inbounds %struct.pch_gbe_regs, ptr %24, i32 0, i32 24
  %call.i = tail call i64 @ktime_get() #9
  %add.i.i = add i64 %call.i, 10000
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %for.body41
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ADDR_MASK48) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %.mask.i = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool.not.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool.not.i, label %for.cond.i.pch_gbe_wait_clr_bit.exit_crit_edge, label %land.lhs.true.i

for.cond.i.pch_gbe_wait_clr_bit.exit_crit_edge:   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pch_gbe_wait_clr_bit.exit

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call4.i = tail call i64 @ktime_get() #9
  %cmp3.i.i = icmp sgt i64 %call4.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ADDR_MASK48) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %.mask3.i = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask3.i)
  %tobool18.not.i = icmp eq i32 %.mask3.i, 0
  br i1 %tobool18.not.i, label %for.end.i.pch_gbe_wait_clr_bit.exit_crit_edge, label %do.end.i

for.end.i.pch_gbe_wait_clr_bit.exit_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pch_gbe_wait_clr_bit.exit

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #12
  br label %pch_gbe_wait_clr_bit.exit

pch_gbe_wait_clr_bit.exit:                        ; preds = %do.end.i, %for.end.i.pch_gbe_wait_clr_bit.exit_crit_edge, %for.cond.i.pch_gbe_wait_clr_bit.exit_crit_edge
  %27 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg, align 4
  %arrayidx = getelementptr %struct.pch_gbe_regs, ptr %28, i32 0, i32 23, i32 %i.1122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 0) #9, !srcloc !339
  %29 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg, align 4
  %low = getelementptr %struct.pch_gbe_regs, ptr %30, i32 0, i32 23, i32 %i.1122, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %low, i32 0) #9, !srcloc !339
  %inc54 = add nsw i32 %i.1122, 1
  %exitcond.not = icmp eq i32 %inc54, 16
  br i1 %exitcond.not, label %pch_gbe_wait_clr_bit.exit.do.body57_crit_edge, label %pch_gbe_wait_clr_bit.exit.for.body41_crit_edge

pch_gbe_wait_clr_bit.exit.for.body41_crit_edge:   ; preds = %pch_gbe_wait_clr_bit.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body41

pch_gbe_wait_clr_bit.exit.do.body57_crit_edge:    ; preds = %pch_gbe_wait_clr_bit.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body57

do.body57:                                        ; preds = %pch_gbe_wait_clr_bit.exit.do.body57_crit_edge, %for.cond39.preheader.do.body57_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_set_multi.__UNIQUE_ID_ddebug639, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_set_multi, %if.then69)) #9
          to label %cleanup [label %if.then69], !srcloc !335

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg, align 4
  %RX_MODE71 = getelementptr inbounds %struct.pch_gbe_regs, ptr %32, i32 0, i32 11
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %RX_MODE71) #9, !srcloc !336
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_set_multi.__UNIQUE_ID_ddebug639, ptr noundef %netdev, ptr noundef nonnull @.str.53, i32 noundef %34, i32 noundef %10) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then69, %do.body57, %do.end7.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pch_gbe_phy_get_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pch_gbe_phy_init_setting(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pch_gbe_phy_set_rgmii(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pch_gbe_update_stats(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev2 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 4
  %0 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev2, align 8
  %error_state = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 43
  %2 = ptrtoint ptr %error_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch = icmp ult i32 %3, 2
  br i1 %switch, label %do.body5, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %stats3 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 9
  %netdev1 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %4 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev1, align 4
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %adapter) #9
  %rx_crc_errors = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 9, i32 10
  %6 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_crc_errors, align 4
  %rx_frame_errors = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 9, i32 11
  %8 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_frame_errors, align 4
  %add = add i32 %9, %7
  %rx_errors = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 9, i32 4
  %10 = ptrtoint ptr %rx_errors to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add, ptr %rx_errors, align 4
  %tx_length_errors = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 9, i32 13
  %11 = ptrtoint ptr %tx_length_errors to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_length_errors, align 4
  %tx_aborted_errors = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 9, i32 14
  %13 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_aborted_errors, align 4
  %add10 = add i32 %14, %12
  %tx_carrier_errors = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 9, i32 15
  %15 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_carrier_errors, align 4
  %add11 = add i32 %add10, %16
  %tx_timeout_count = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 9, i32 16
  %17 = ptrtoint ptr %tx_timeout_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_timeout_count, align 4
  %add12 = add i32 %add11, %18
  %tx_errors = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 9, i32 5
  %19 = ptrtoint ptr %tx_errors to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add12, ptr %tx_errors, align 4
  %20 = ptrtoint ptr %stats3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %stats3, align 4
  %stats13 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36
  %22 = ptrtoint ptr %stats13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %stats13, align 8
  %rx_bytes = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 9, i32 2
  %23 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_bytes, align 4
  %rx_bytes16 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 2
  %25 = ptrtoint ptr %rx_bytes16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %rx_bytes16, align 8
  %rx_dropped = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 9, i32 6
  %26 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_dropped, align 4
  %rx_dropped18 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 6
  %28 = ptrtoint ptr %rx_dropped18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %rx_dropped18, align 8
  %tx_packets = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 9, i32 1
  %29 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_packets, align 4
  %tx_packets20 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 1
  %31 = ptrtoint ptr %tx_packets20 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %tx_packets20, align 4
  %tx_bytes = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 9, i32 3
  %32 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_bytes, align 4
  %tx_bytes22 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 3
  %34 = ptrtoint ptr %tx_bytes22 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %tx_bytes22, align 4
  %tx_dropped = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 9, i32 7
  %35 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_dropped, align 4
  %tx_dropped24 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 7
  %37 = ptrtoint ptr %tx_dropped24 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %tx_dropped24, align 4
  %multicast = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 9, i32 8
  %38 = ptrtoint ptr %multicast to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %multicast, align 4
  %multicast26 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 8
  %40 = ptrtoint ptr %multicast26 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %multicast26, align 8
  %collisions = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 9, i32 9
  %41 = ptrtoint ptr %collisions to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %collisions, align 4
  %collisions28 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 9
  %43 = ptrtoint ptr %collisions28 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %collisions28, align 4
  %44 = load i32, ptr %rx_errors, align 4
  %rx_errors31 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 4
  %45 = ptrtoint ptr %rx_errors31 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %rx_errors31, align 8
  %46 = load i32, ptr %rx_crc_errors, align 4
  %rx_crc_errors34 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 12
  %47 = ptrtoint ptr %rx_crc_errors34 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %rx_crc_errors34, align 8
  %48 = load i32, ptr %rx_frame_errors, align 4
  %rx_frame_errors37 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 13
  %49 = ptrtoint ptr %rx_frame_errors37 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %rx_frame_errors37, align 4
  %50 = load i32, ptr %tx_errors, align 4
  %tx_errors40 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 5
  %51 = ptrtoint ptr %tx_errors40 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %tx_errors40, align 4
  %52 = load i32, ptr %tx_aborted_errors, align 4
  %tx_aborted_errors43 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 16
  %53 = ptrtoint ptr %tx_aborted_errors43 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %tx_aborted_errors43, align 8
  %54 = load i32, ptr %tx_carrier_errors, align 4
  %tx_carrier_errors46 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 17
  %55 = ptrtoint ptr %tx_carrier_errors46 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %tx_carrier_errors46, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %adapter, i32 noundef %call7) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pch_gbe_setup_tx_resources(ptr nocapture noundef readonly %adapter, ptr noundef %tx_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 4
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %count = getelementptr inbounds %struct.pch_gbe_tx_ring, ptr %tx_ring, i32 0, i32 3
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  %mul = mul i32 %3, 20
  %call = tail call noalias ptr @vzalloc(i32 noundef %mul) #13
  %buffer_info = getelementptr inbounds %struct.pch_gbe_tx_ring, ptr %tx_ring, i32 0, i32 6
  %4 = ptrtoint ptr %buffer_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %buffer_info, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 4
  %mul4 = shl i32 %6, 4
  %size5 = getelementptr inbounds %struct.pch_gbe_tx_ring, ptr %tx_ring, i32 0, i32 2
  %7 = ptrtoint ptr %size5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul4, ptr %size5, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %dma = getelementptr inbounds %struct.pch_gbe_tx_ring, ptr %tx_ring, i32 0, i32 1
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %mul4, ptr noundef %dma, i32 noundef 3264, i32 noundef 0) #9
  %8 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %tx_ring, align 4
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %buffer_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buffer_info, align 4
  tail call void @vfree(ptr noundef %10) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %next_to_use = getelementptr inbounds %struct.pch_gbe_tx_ring, ptr %tx_ring, i32 0, i32 4
  %11 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %next_to_use, align 4
  %next_to_clean = getelementptr inbounds %struct.pch_gbe_tx_ring, ptr %tx_ring, i32 0, i32 5
  %12 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %next_to_clean, align 4
  %13 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp52.not = icmp eq i32 %14, 0
  br i1 %cmp52.not, label %if.end12.do.body15_crit_edge, label %if.end12.for.body_crit_edge

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  br label %for.body

if.end12.do.body15_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body15

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end12.for.body_crit_edge
  %desNo.053 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end12.for.body_crit_edge ]
  %15 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx_ring, align 4
  %gbec_status = getelementptr %struct.pch_gbe_tx_desc, ptr %16, i32 %desNo.053, i32 7
  %17 = ptrtoint ptr %gbec_status to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -16384, ptr %gbec_status, align 2
  %inc = add nuw i32 %desNo.053, 1
  %18 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count, align 4
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.do.body15_crit_edge

for.body.do.body15_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body15

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body15:                                        ; preds = %for.body.do.body15_crit_edge, %if.end12.do.body15_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_setup_tx_resources.__UNIQUE_ID_ddebug632, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_setup_tx_resources, %if.then20)) #9
          to label %cleanup [label %if.then20], !srcloc !335

if.then20:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #11
  %netdev = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %20 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev, align 4
  %22 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx_ring, align 4
  %24 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma, align 4
  %conv = zext i32 %25 to i64
  %26 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %next_to_clean, align 4
  %28 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %next_to_use, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_setup_tx_resources.__UNIQUE_ID_ddebug632, ptr noundef %21, ptr noundef nonnull @.str.13, ptr noundef %23, i64 noundef %conv, i32 noundef %27, i32 noundef %29) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %do.body15, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then10 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then20 ], [ 0, %do.body15 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pch_gbe_setup_rx_resources(ptr nocapture noundef readonly %adapter, ptr noundef %rx_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 4
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %count = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %rx_ring, i32 0, i32 6
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  %mul = mul i32 %3, 20
  %call = tail call noalias ptr @vzalloc(i32 noundef %mul) #13
  %buffer_info = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %rx_ring, i32 0, i32 9
  %4 = ptrtoint ptr %buffer_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %buffer_info, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 4
  %mul4 = shl i32 %6, 4
  %size5 = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %rx_ring, i32 0, i32 5
  %7 = ptrtoint ptr %size5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul4, ptr %size5, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %dma = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %rx_ring, i32 0, i32 1
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %mul4, ptr noundef %dma, i32 noundef 3264, i32 noundef 0) #9
  %8 = ptrtoint ptr %rx_ring to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %rx_ring, align 4
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %buffer_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buffer_info, align 4
  tail call void @vfree(ptr noundef %10) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %next_to_clean = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %rx_ring, i32 0, i32 8
  %11 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %next_to_clean, align 4
  %next_to_use = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %rx_ring, i32 0, i32 7
  %12 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %next_to_use, align 4
  %13 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp52.not = icmp eq i32 %14, 0
  br i1 %cmp52.not, label %if.end12.do.body15_crit_edge, label %if.end12.for.body_crit_edge

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  br label %for.body

if.end12.do.body15_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body15

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end12.for.body_crit_edge
  %desNo.053 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end12.for.body_crit_edge ]
  %15 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_ring, align 4
  %gbec_status = getelementptr %struct.pch_gbe_rx_desc, ptr %16, i32 %desNo.053, i32 3
  %17 = ptrtoint ptr %gbec_status to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -16384, ptr %gbec_status, align 2
  %inc = add nuw i32 %desNo.053, 1
  %18 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count, align 4
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.do.body15_crit_edge

for.body.do.body15_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body15

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body15:                                        ; preds = %for.body.do.body15_crit_edge, %if.end12.do.body15_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_setup_rx_resources.__UNIQUE_ID_ddebug633, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_setup_rx_resources, %if.then20)) #9
          to label %cleanup [label %if.then20], !srcloc !335

if.then20:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #11
  %netdev = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %20 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev, align 4
  %22 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx_ring, align 4
  %24 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma, align 4
  %conv = zext i32 %25 to i64
  %26 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %next_to_clean, align 4
  %28 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %next_to_use, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_setup_rx_resources.__UNIQUE_ID_ddebug633, ptr noundef %21, ptr noundef nonnull @.str.15, ptr noundef %23, i64 noundef %conv, i32 noundef %27, i32 noundef %29) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %do.body15, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then10 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then20 ], [ 0, %do.body15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pch_gbe_free_tx_resources(ptr nocapture noundef readonly %adapter, ptr nocapture noundef %tx_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 4
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  tail call fastcc void @pch_gbe_clean_tx_ring(ptr noundef %adapter, ptr noundef %tx_ring)
  %buffer_info = getelementptr inbounds %struct.pch_gbe_tx_ring, ptr %tx_ring, i32 0, i32 6
  %2 = ptrtoint ptr %buffer_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer_info, align 4
  tail call void @vfree(ptr noundef %3) #9
  %4 = ptrtoint ptr %buffer_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %buffer_info, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %size = getelementptr inbounds %struct.pch_gbe_tx_ring, ptr %tx_ring, i32 0, i32 2
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 4
  %7 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx_ring, align 4
  %dma = getelementptr inbounds %struct.pch_gbe_tx_ring, ptr %tx_ring, i32 0, i32 1
  %9 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %6, ptr noundef %8, i32 noundef %10, i32 noundef 0) #9
  %11 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %tx_ring, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_gbe_clean_tx_ring(ptr nocapture noundef readonly %adapter, ptr nocapture noundef %tx_ring) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.pch_gbe_tx_ring, ptr %tx_ring, i32 0, i32 3
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp29.not = icmp eq i32 %1, 0
  br i1 %cmp29.not, label %entry.do.body3_crit_edge, label %for.body.lr.ph

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3

for.body.lr.ph:                                   ; preds = %entry
  %buffer_info2 = getelementptr inbounds %struct.pch_gbe_tx_ring, ptr %tx_ring, i32 0, i32 6
  %pdev.i = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %pch_gbe_unmap_and_free_tx_resource.exit.for.body_crit_edge, %for.body.lr.ph
  %i.030 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %pch_gbe_unmap_and_free_tx_resource.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %buffer_info2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer_info2, align 4
  %arrayidx = getelementptr %struct.pch_gbe_buffer, ptr %3, i32 %i.030
  %mapped.i = getelementptr %struct.pch_gbe_buffer, ptr %3, i32 %i.030, i32 5
  %4 = ptrtoint ptr %mapped.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mapped.i, align 2, !range !340
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %for.body.if.end.i_crit_edge, label %if.then.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %dma.i = getelementptr %struct.pch_gbe_buffer, ptr %3, i32 %i.030, i32 1
  %8 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma.i, align 4
  %length.i = getelementptr %struct.pch_gbe_buffer, ptr %3, i32 %i.030, i32 4
  %10 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %length.i, align 4
  %conv.i = zext i16 %11 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %9, i32 noundef %conv.i, i32 noundef 1, i32 noundef 0) #9
  %12 = ptrtoint ptr %mapped.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %mapped.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.if.end.i_crit_edge
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %tobool2.not.i = icmp eq ptr %14, null
  br i1 %tobool2.not.i, label %if.end.i.pch_gbe_unmap_and_free_tx_resource.exit_crit_edge, label %if.then3.i

if.end.i.pch_gbe_unmap_and_free_tx_resource.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pch_gbe_unmap_and_free_tx_resource.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %14, i32 noundef 1) #9
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx, align 4
  br label %pch_gbe_unmap_and_free_tx_resource.exit

pch_gbe_unmap_and_free_tx_resource.exit:          ; preds = %if.then3.i, %if.end.i.pch_gbe_unmap_and_free_tx_resource.exit_crit_edge
  %inc = add nuw i32 %i.030, 1
  %16 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %pch_gbe_unmap_and_free_tx_resource.exit.for.body_crit_edge, label %pch_gbe_unmap_and_free_tx_resource.exit.do.body3_crit_edge

pch_gbe_unmap_and_free_tx_resource.exit.do.body3_crit_edge: ; preds = %pch_gbe_unmap_and_free_tx_resource.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3

pch_gbe_unmap_and_free_tx_resource.exit.for.body_crit_edge: ; preds = %pch_gbe_unmap_and_free_tx_resource.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body3:                                         ; preds = %pch_gbe_unmap_and_free_tx_resource.exit.do.body3_crit_edge, %entry.do.body3_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.do.body3_crit_edge ], [ %inc, %pch_gbe_unmap_and_free_tx_resource.exit.do.body3_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_clean_tx_ring.__UNIQUE_ID_ddebug609, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_clean_tx_ring, %if.then)) #9
          to label %do.end7 [label %if.then], !srcloc !335

if.then:                                          ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  %netdev = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %18 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_clean_tx_ring.__UNIQUE_ID_ddebug609, ptr noundef %19, ptr noundef nonnull @.str.26, i32 noundef %i.0.lcssa) #9
  br label %do.end7

do.end7:                                          ; preds = %if.then, %do.body3
  %20 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %count, align 4
  %mul = mul i32 %21, 20
  %buffer_info9 = getelementptr inbounds %struct.pch_gbe_tx_ring, ptr %tx_ring, i32 0, i32 6
  %22 = ptrtoint ptr %buffer_info9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buffer_info9, align 4
  %24 = call ptr @memset(ptr %23, i32 0, i32 %mul)
  %25 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tx_ring, align 4
  %size10 = getelementptr inbounds %struct.pch_gbe_tx_ring, ptr %tx_ring, i32 0, i32 2
  %27 = ptrtoint ptr %size10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size10, align 4
  %29 = call ptr @memset(ptr %26, i32 0, i32 %28)
  %next_to_use = getelementptr inbounds %struct.pch_gbe_tx_ring, ptr %tx_ring, i32 0, i32 4
  %30 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %next_to_use, align 4
  %next_to_clean = getelementptr inbounds %struct.pch_gbe_tx_ring, ptr %tx_ring, i32 0, i32 5
  %31 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %next_to_clean, align 4
  %dma = getelementptr inbounds %struct.pch_gbe_tx_ring, ptr %tx_ring, i32 0, i32 1
  %32 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma, align 4
  %reg = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 1
  %34 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg, align 4
  %TX_DSC_HW_P = getelementptr inbounds %struct.pch_gbe_regs, ptr %35, i32 0, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  %36 = tail call i32 @llvm.bswap.i32(i32 %33) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TX_DSC_HW_P, i32 %36) #9, !srcloc !339
  %37 = ptrtoint ptr %size10 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %size10, align 4
  %sub = add i32 %38, -16
  %39 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg, align 4
  %TX_DSC_SIZE = getelementptr inbounds %struct.pch_gbe_regs, ptr %40, i32 0, i32 39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  %41 = tail call i32 @llvm.bswap.i32(i32 %sub) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TX_DSC_SIZE, i32 %41) #9, !srcloc !339
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pch_gbe_free_rx_resources(ptr nocapture noundef readonly %adapter, ptr nocapture noundef %rx_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 4
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  tail call fastcc void @pch_gbe_clean_rx_ring(ptr noundef %adapter, ptr noundef %rx_ring)
  %buffer_info = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %rx_ring, i32 0, i32 9
  %2 = ptrtoint ptr %buffer_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer_info, align 4
  tail call void @vfree(ptr noundef %3) #9
  %4 = ptrtoint ptr %buffer_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %buffer_info, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %size = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %rx_ring, i32 0, i32 5
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 4
  %7 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_ring, align 4
  %dma = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %rx_ring, i32 0, i32 1
  %9 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %6, ptr noundef %8, i32 noundef %10, i32 noundef 0) #9
  %11 = ptrtoint ptr %rx_ring to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %rx_ring, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_gbe_clean_rx_ring(ptr nocapture noundef readonly %adapter, ptr nocapture noundef %rx_ring) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %rx_ring, i32 0, i32 6
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp29.not = icmp eq i32 %1, 0
  br i1 %cmp29.not, label %entry.do.body3_crit_edge, label %for.body.lr.ph

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3

for.body.lr.ph:                                   ; preds = %entry
  %buffer_info2 = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %rx_ring, i32 0, i32 9
  %pdev.i = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %pch_gbe_unmap_and_free_rx_resource.exit.for.body_crit_edge, %for.body.lr.ph
  %i.030 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %pch_gbe_unmap_and_free_rx_resource.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %buffer_info2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer_info2, align 4
  %arrayidx = getelementptr %struct.pch_gbe_buffer, ptr %3, i32 %i.030
  %mapped.i = getelementptr %struct.pch_gbe_buffer, ptr %3, i32 %i.030, i32 5
  %4 = ptrtoint ptr %mapped.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mapped.i, align 2, !range !340
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %for.body.if.end.i_crit_edge, label %if.then.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %dma.i = getelementptr %struct.pch_gbe_buffer, ptr %3, i32 %i.030, i32 1
  %8 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma.i, align 4
  %length.i = getelementptr %struct.pch_gbe_buffer, ptr %3, i32 %i.030, i32 4
  %10 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %length.i, align 4
  %conv.i = zext i16 %11 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %9, i32 noundef %conv.i, i32 noundef 2, i32 noundef 0) #9
  %12 = ptrtoint ptr %mapped.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %mapped.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.if.end.i_crit_edge
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %tobool2.not.i = icmp eq ptr %14, null
  br i1 %tobool2.not.i, label %if.end.i.pch_gbe_unmap_and_free_rx_resource.exit_crit_edge, label %if.then3.i

if.end.i.pch_gbe_unmap_and_free_rx_resource.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pch_gbe_unmap_and_free_rx_resource.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %14, i32 noundef 1) #9
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx, align 4
  br label %pch_gbe_unmap_and_free_rx_resource.exit

pch_gbe_unmap_and_free_rx_resource.exit:          ; preds = %if.then3.i, %if.end.i.pch_gbe_unmap_and_free_rx_resource.exit_crit_edge
  %inc = add nuw i32 %i.030, 1
  %16 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %pch_gbe_unmap_and_free_rx_resource.exit.for.body_crit_edge, label %pch_gbe_unmap_and_free_rx_resource.exit.do.body3_crit_edge

pch_gbe_unmap_and_free_rx_resource.exit.do.body3_crit_edge: ; preds = %pch_gbe_unmap_and_free_rx_resource.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3

pch_gbe_unmap_and_free_rx_resource.exit.for.body_crit_edge: ; preds = %pch_gbe_unmap_and_free_rx_resource.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body3:                                         ; preds = %pch_gbe_unmap_and_free_rx_resource.exit.do.body3_crit_edge, %entry.do.body3_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.do.body3_crit_edge ], [ %inc, %pch_gbe_unmap_and_free_rx_resource.exit.do.body3_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_clean_rx_ring.__UNIQUE_ID_ddebug610, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_clean_rx_ring, %if.then)) #9
          to label %do.end7 [label %if.then], !srcloc !335

if.then:                                          ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  %netdev = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %18 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_clean_rx_ring.__UNIQUE_ID_ddebug610, ptr noundef %19, ptr noundef nonnull @.str.28, i32 noundef %i.0.lcssa) #9
  br label %do.end7

do.end7:                                          ; preds = %if.then, %do.body3
  %20 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %count, align 4
  %mul = mul i32 %21, 20
  %buffer_info9 = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %rx_ring, i32 0, i32 9
  %22 = ptrtoint ptr %buffer_info9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buffer_info9, align 4
  %24 = call ptr @memset(ptr %23, i32 0, i32 %mul)
  %25 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rx_ring, align 4
  %size10 = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %rx_ring, i32 0, i32 5
  %27 = ptrtoint ptr %size10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size10, align 4
  %29 = call ptr @memset(ptr %26, i32 0, i32 %28)
  %next_to_clean = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %rx_ring, i32 0, i32 8
  %30 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %next_to_clean, align 4
  %next_to_use = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %rx_ring, i32 0, i32 7
  %31 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %next_to_use, align 4
  %dma = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %rx_ring, i32 0, i32 1
  %32 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma, align 4
  %reg = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 1
  %34 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg, align 4
  %RX_DSC_HW_P = getelementptr inbounds %struct.pch_gbe_regs, ptr %35, i32 0, i32 34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  %36 = tail call i32 @llvm.bswap.i32(i32 %33) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RX_DSC_HW_P, i32 %36) #9, !srcloc !339
  %37 = ptrtoint ptr %size10 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %size10, align 4
  %sub = add i32 %38, -16
  %39 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg, align 4
  %RX_DSC_SIZE = getelementptr inbounds %struct.pch_gbe_regs, ptr %40, i32 0, i32 33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  %41 = tail call i32 @llvm.bswap.i32(i32 %sub) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RX_DSC_SIZE, i32 %41) #9, !srcloc !339
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_gbe_configure_tx(ptr nocapture noundef readonly %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_configure_tx.__UNIQUE_ID_ddebug606, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_configure_tx, %if.then)) #9
          to label %do.end7 [label %if.then], !srcloc !335

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %netdev = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %tx_ring = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 16
  %2 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_ring, align 8
  %dma = getelementptr inbounds %struct.pch_gbe_tx_ring, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma, align 4
  %conv = zext i32 %5 to i64
  %size = getelementptr inbounds %struct.pch_gbe_tx_ring, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_configure_tx.__UNIQUE_ID_ddebug606, ptr noundef %1, ptr noundef nonnull @.str.30, i64 noundef %conv, i32 noundef %7) #9
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  %tx_ring8 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 16
  %8 = ptrtoint ptr %tx_ring8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_ring8, align 8
  %dma9 = getelementptr inbounds %struct.pch_gbe_tx_ring, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dma9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma9, align 4
  %size11 = getelementptr inbounds %struct.pch_gbe_tx_ring, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %size11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size11, align 4
  %sub = add i32 %13, -16
  %reg = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg, align 4
  %TX_DSC_BASE = getelementptr inbounds %struct.pch_gbe_regs, ptr %15, i32 0, i32 38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  %16 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TX_DSC_BASE, i32 %16) #9, !srcloc !339
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg, align 4
  %TX_DSC_SIZE = getelementptr inbounds %struct.pch_gbe_regs, ptr %18, i32 0, i32 39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  %19 = tail call i32 @llvm.bswap.i32(i32 %sub) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TX_DSC_SIZE, i32 %19) #9, !srcloc !339
  %20 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg, align 4
  %TX_DSC_SW_P = getelementptr inbounds %struct.pch_gbe_regs, ptr %21, i32 0, i32 42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TX_DSC_SW_P, i32 %16) #9, !srcloc !339
  %22 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg, align 4
  %DMA_CTRL = getelementptr inbounds %struct.pch_gbe_regs, ptr %23, i32 0, i32 30
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DMA_CTRL) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %25 = or i32 %24, 16777216
  %26 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg, align 4
  %DMA_CTRL17 = getelementptr inbounds %struct.pch_gbe_regs, ptr %27, i32 0, i32 30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DMA_CTRL17, i32 %25) #9, !srcloc !339
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_gbe_configure_rx(ptr nocapture noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_configure_rx.__UNIQUE_ID_ddebug607, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_configure_rx, %if.then)) #9
          to label %do.end7 [label %if.then], !srcloc !335

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %netdev = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %rx_ring = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 17
  %2 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_ring, align 4
  %dma = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma, align 4
  %conv = zext i32 %5 to i64
  %size = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_configure_rx.__UNIQUE_ID_ddebug607, ptr noundef %1, ptr noundef nonnull @.str.32, i64 noundef %conv, i32 noundef %7) #9
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  %call8 = tail call i32 @pch_gbe_mac_force_mac_fc(ptr noundef %hw1)
  %reg.i = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg.i, align 4
  %MAC_RX_EN.i = getelementptr inbounds %struct.pch_gbe_regs, ptr %9, i32 0, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %MAC_RX_EN.i) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %11 = and i32 %10, -16777217
  %12 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg.i, align 4
  %MAC_RX_EN2.i = getelementptr inbounds %struct.pch_gbe_regs, ptr %13, i32 0, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MAC_RX_EN2.i, i32 %11) #9, !srcloc !339
  %14 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg.i, align 4
  %DMA_CTRL = getelementptr inbounds %struct.pch_gbe_regs, ptr %15, i32 0, i32 30
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DMA_CTRL) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %17 = and i32 %16, -33554433
  %18 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg.i, align 4
  %DMA_CTRL11 = getelementptr inbounds %struct.pch_gbe_regs, ptr %19, i32 0, i32 30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DMA_CTRL11, i32 %17) #9, !srcloc !339
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_configure_rx.__UNIQUE_ID_ddebug608, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_configure_rx, %if.then25)) #9
          to label %do.end36 [label %if.then25], !srcloc !335

if.then25:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  %netdev26 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %20 = ptrtoint ptr %netdev26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev26, align 4
  %22 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg.i, align 4
  %MAC_RX_EN = getelementptr inbounds %struct.pch_gbe_regs, ptr %23, i32 0, i32 8
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %MAC_RX_EN) #9, !srcloc !336
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %26 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg.i, align 4
  %DMA_CTRL30 = getelementptr inbounds %struct.pch_gbe_regs, ptr %27, i32 0, i32 30
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DMA_CTRL30) #9, !srcloc !336
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_configure_rx.__UNIQUE_ID_ddebug608, ptr noundef %21, ptr noundef nonnull @.str.33, i32 noundef %25, i32 noundef %29) #9
  br label %do.end36

do.end36:                                         ; preds = %if.then25, %do.end7
  %rx_ring37 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 17
  %30 = ptrtoint ptr %rx_ring37 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rx_ring37, align 4
  %dma38 = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %dma38 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma38, align 4
  %size40 = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %31, i32 0, i32 5
  %34 = ptrtoint ptr %size40 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size40, align 4
  %sub = add i32 %35, -16
  %36 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg.i, align 4
  %RX_DSC_BASE = getelementptr inbounds %struct.pch_gbe_regs, ptr %37, i32 0, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  %38 = tail call i32 @llvm.bswap.i32(i32 %33) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RX_DSC_BASE, i32 %38) #9, !srcloc !339
  %39 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg.i, align 4
  %RX_DSC_SIZE = getelementptr inbounds %struct.pch_gbe_regs, ptr %40, i32 0, i32 33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  %41 = tail call i32 @llvm.bswap.i32(i32 %sub) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RX_DSC_SIZE, i32 %41) #9, !srcloc !339
  %add = add i32 %sub, %33
  %42 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg.i, align 4
  %RX_DSC_SW_P = getelementptr inbounds %struct.pch_gbe_regs, ptr %43, i32 0, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  %44 = tail call i32 @llvm.bswap.i32(i32 %add) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RX_DSC_SW_P, i32 %44) #9, !srcloc !339
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pch_gbe_request_irq(ptr nocapture noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 4
  %pdev = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 4
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %call.i = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %3, i32 noundef 1, i32 noundef 1, i32 noundef 7, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %call3 = tail call i32 @pci_irq_vector(ptr noundef %5, i32 noundef 0) #9
  %irq = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 5
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call3, ptr %irq, align 4
  %call.i33 = tail call i32 @request_threaded_irq(i32 noundef %call3, ptr noundef nonnull @pch_gbe_intr, ptr noundef null, i32 noundef 128, ptr noundef %1, ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %tobool.not = icmp eq i32 %call.i33, 0
  br i1 %tobool.not, label %if.end.do.body8_crit_edge, label %if.then6

if.end.do.body8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.34, i32 noundef %call.i33) #12
  br label %do.body8

do.body8:                                         ; preds = %if.then6, %if.end.do.body8_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_request_irq.__UNIQUE_ID_ddebug634, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_request_irq, %if.then13)) #9
          to label %cleanup [label %if.then13], !srcloc !335

if.then13:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 8
  %msi_enabled.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 49
  %9 = ptrtoint ptr %msi_enabled.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 5)
  %bf.load.i = load i40, ptr %msi_enabled.i, align 1
  %10 = and i40 %bf.load.i, 201326592
  %11 = icmp ne i40 %10, 0
  %conv = zext i1 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_request_irq.__UNIQUE_ID_ddebug634, ptr noundef %1, ptr noundef nonnull @.str.36, i32 noundef %conv, i32 noundef %call.i33) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %do.body8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i33, %if.then13 ], [ %call.i33, %do.body8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_gbe_alloc_rx_buffers(ptr nocapture noundef %adapter, ptr nocapture noundef %rx_ring, i32 noundef %cleaned_count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 4
  %pdev2 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 4
  %rx_buffer_len = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 18
  %2 = ptrtoint ptr %rx_buffer_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_buffer_len, align 8
  %add = add i32 %3, 2
  %next_to_use = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %rx_ring, i32 0, i32 7
  %4 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %next_to_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cleaned_count)
  %tobool.not124 = icmp eq i32 %cleaned_count, 0
  br i1 %tobool.not124, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %6 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev2, align 8
  %buffer_info4 = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %rx_ring, i32 0, i32 9
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44, i32 3
  %count = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %rx_ring, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %if.end51.while.body_crit_edge, %while.body.lr.ph
  %dec126.in = phi i32 [ %cleaned_count, %while.body.lr.ph ], [ %dec126, %if.end51.while.body_crit_edge ]
  %i.0125 = phi i32 [ %5, %while.body.lr.ph ], [ %i.1, %if.end51.while.body_crit_edge ]
  %dec126 = add i32 %dec126.in, -1
  %8 = ptrtoint ptr %buffer_info4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer_info4, align 4
  %arrayidx = getelementptr %struct.pch_gbe_buffer, ptr %9, i32 %i.0125
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %1, i32 noundef %add, i32 noundef 2592) #9
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %while.body.while.end.sink.split_crit_edge, label %if.end, !prof !341

while.body.while.end.sink.split_crit_edge:        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.sink.split

if.end:                                           ; preds = %while.body
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 2
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %12 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %13, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %arrayidx, align 4
  %rx_buffer = getelementptr %struct.pch_gbe_buffer, ptr %9, i32 %i.0125, i32 2
  %15 = ptrtoint ptr %rx_buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_buffer, align 4
  %length = getelementptr %struct.pch_gbe_buffer, ptr %9, i32 %i.0125, i32 4
  %17 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %length, align 4
  %call.i113 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %16) #9
  br i1 %call.i113, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !342

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #9
  %19 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %22, %if.end.i.i ], [ %20, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.47, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i16 %18 to i32
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %16, i32 noundef %conv) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %23 = load ptr, ptr @mem_map, align 4
  %24 = ptrtoint ptr %16 to i32
  %sub.i = add i32 %24, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i114 = getelementptr %struct.page, ptr %23, i32 %shr.i
  %and.i = and i32 %24, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i114, i32 noundef %and.i, i32 noundef %conv, i32 noundef 2, i32 noundef 0) #9
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i115 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %dma = getelementptr %struct.pch_gbe_buffer, ptr %9, i32 %i.0125, i32 1
  %25 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %retval.0.i115, ptr %dma, align 4
  %26 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev2, align 8
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev12, i32 noundef %retval.0.i115) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i115)
  %cmp.i = icmp eq i32 %retval.0.i115, -1
  br i1 %cmp.i, label %if.then16, label %if.end22

if.then16:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @consume_skb(ptr noundef nonnull %call.i) #9
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %arrayidx, align 4
  %29 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %dma, align 4
  br label %while.end.sink.split

if.end22:                                         ; preds = %dma_map_single_attrs.exit
  %mapped = getelementptr %struct.pch_gbe_buffer, ptr %9, i32 %i.0125, i32 5
  %30 = ptrtoint ptr %mapped to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %mapped, align 2
  %31 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rx_ring, align 4
  %arrayidx23 = getelementptr %struct.pch_gbe_rx_desc, ptr %32, i32 %i.0125
  %33 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma, align 4
  %35 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx23, align 4
  %gbec_status = getelementptr %struct.pch_gbe_rx_desc, ptr %32, i32 %i.0125, i32 3
  %36 = ptrtoint ptr %gbec_status to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 -16384, ptr %gbec_status, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_alloc_rx_buffers.__UNIQUE_ID_ddebug618, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_alloc_rx_buffers, %if.then34)) #9
          to label %do.end41 [label %if.then34], !srcloc !335

if.then34:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma, align 4
  %conv36 = zext i32 %38 to i64
  %39 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %length, align 4
  %conv38 = zext i16 %40 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_alloc_rx_buffers.__UNIQUE_ID_ddebug618, ptr noundef %1, ptr noundef nonnull @.str.45, i32 noundef %i.0125, i64 noundef %conv36, i32 noundef %conv38) #9
  br label %do.end41

do.end41:                                         ; preds = %if.then34, %if.end22
  %inc42 = add i32 %i.0125, 1
  %41 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc42, i32 %42)
  %cmp = icmp eq i32 %inc42, %42
  br i1 %cmp, label %if.then50, label %do.end41.if.end51_crit_edge, !prof !341

do.end41.if.end51_crit_edge:                      ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then50:                                        ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %do.end41.if.end51_crit_edge
  %i.1 = phi i32 [ 0, %if.then50 ], [ %inc42, %do.end41.if.end51_crit_edge ]
  %tobool.not = icmp eq i32 %dec126, 0
  br i1 %tobool.not, label %if.end51.while.end_crit_edge, label %if.end51.while.body_crit_edge

if.end51.while.body_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end51.while.end_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end.sink.split:                             ; preds = %if.then16, %while.body.while.end.sink.split_crit_edge
  %rx_alloc_buff_failed = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 9, i32 12
  %43 = ptrtoint ptr %rx_alloc_buff_failed to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rx_alloc_buff_failed, align 4
  %inc21 = add i32 %44, 1
  store i32 %inc21, ptr %rx_alloc_buff_failed, align 4
  br label %while.end

while.end:                                        ; preds = %while.end.sink.split, %if.end51.while.end_crit_edge, %entry.while.end_crit_edge
  %i.0120 = phi i32 [ %5, %entry.while.end_crit_edge ], [ %i.0125, %while.end.sink.split ], [ %i.1, %if.end51.while.end_crit_edge ]
  %45 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %next_to_use, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %i.0120)
  %cmp53.not = icmp eq i32 %46, %i.0120
  br i1 %cmp53.not, label %while.end.if.end77_crit_edge, label %if.then61, !prof !341

while.end.if.end77_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

if.then61:                                        ; preds = %while.end
  %47 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %i.0120, ptr %next_to_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0120)
  %cmp64 = icmp eq i32 %i.0120, 0
  br i1 %cmp64, label %if.then72, label %if.then61.if.end74_crit_edge, !prof !341

if.then61.if.end74_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

if.then72:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  %count73 = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %rx_ring, i32 0, i32 6
  %48 = ptrtoint ptr %count73 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %count73, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %if.then61.if.end74_crit_edge
  %i.2.in = phi i32 [ %49, %if.then72 ], [ %i.0120, %if.then61.if.end74_crit_edge ]
  %dma75 = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %rx_ring, i32 0, i32 1
  %50 = ptrtoint ptr %dma75 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dma75, align 4
  %i.2 = shl i32 %i.2.in, 4
  %mul = add i32 %i.2, -16
  %add76 = add i32 %mul, %51
  %reg = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 1
  %52 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg, align 4
  %RX_DSC_SW_P = getelementptr inbounds %struct.pch_gbe_regs, ptr %53, i32 0, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  %54 = tail call i32 @llvm.bswap.i32(i32 %add76) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RX_DSC_SW_P, i32 %54) #9, !srcloc !339
  br label %if.end77

if.end77:                                         ; preds = %if.end74, %while.end.if.end77_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_gbe_irq_enable(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_sem = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %irq_sem, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !343
  tail call void @llvm.prefetch.p0(ptr %irq_sem, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %irq_sem, ptr %irq_sem, i32 1, ptr elementtype(i32) %irq_sem) #9, !srcloc !344
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !345
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %entry.if.end_crit_edge, !prof !342

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %reg = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 1
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reg, align 4
  %INT_EN = getelementptr inbounds %struct.pch_gbe_regs, ptr %2, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %INT_EN, i32 687931393) #9, !srcloc !339
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %reg3 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 1
  %3 = ptrtoint ptr %reg3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_irq_enable.__UNIQUE_ID_ddebug605, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_irq_enable, %if.then14)) #9
          to label %do.end20 [label %if.then14], !srcloc !335

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %netdev = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %6 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev, align 4
  %8 = ptrtoint ptr %reg3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg3, align 4
  %INT_EN16 = getelementptr inbounds %struct.pch_gbe_regs, ptr %9, i32 0, i32 1
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %INT_EN16) #9, !srcloc !336
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_irq_enable.__UNIQUE_ID_ddebug605, ptr noundef %7, ptr noundef nonnull @.str.49, i32 noundef %11) #9
  br label %do.end20

do.end20:                                         ; preds = %if.then14, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_gbe_irq_disable(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_sem = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %irq_sem, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %irq_sem, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %irq_sem, ptr %irq_sem, i32 1, ptr elementtype(i32) %irq_sem) #9, !srcloc !346
  %reg = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 1
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reg, align 4
  %INT_EN = getelementptr inbounds %struct.pch_gbe_regs, ptr %2, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %INT_EN, i32 0) #9, !srcloc !339
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %irq = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 5
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  tail call void @synchronize_irq(i32 noundef %7) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_irq_disable.__UNIQUE_ID_ddebug604, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_irq_disable, %if.then)) #9
          to label %do.end11 [label %if.then], !srcloc !335

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %netdev = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %8 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev, align 4
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg, align 4
  %INT_EN8 = getelementptr inbounds %struct.pch_gbe_regs, ptr %11, i32 0, i32 1
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %INT_EN8) #9, !srcloc !336
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_irq_disable.__UNIQUE_ID_ddebug604, ptr noundef %9, ptr noundef nonnull @.str.49, i32 noundef %13) #9
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_gbe_driver_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @pch_gbe_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pch_gbe_driver_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @pch_gbe_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_gbe_mac_read_mac_addr(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.pch_gbe_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %mac_adr = getelementptr inbounds %struct.pch_gbe_regs, ptr %1, i32 0, i32 23
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mac_adr) #9, !srcloc !336
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  %low = getelementptr inbounds %struct.pch_gbe_regs, ptr %5, i32 0, i32 23, i32 0, i32 1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %low) #9, !srcloc !336
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %conv = trunc i32 %3 to i8
  %mac = getelementptr inbounds %struct.pch_gbe_hw, ptr %hw, i32 0, i32 3
  %8 = ptrtoint ptr %mac to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %mac, align 4
  %shr = lshr i32 %3, 8
  %conv7 = trunc i32 %shr to i8
  %arrayidx10 = getelementptr %struct.pch_gbe_hw, ptr %hw, i32 0, i32 3, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv7, ptr %arrayidx10, align 1
  %shr11 = lshr i32 %3, 16
  %conv13 = trunc i32 %shr11 to i8
  %arrayidx16 = getelementptr %struct.pch_gbe_hw, ptr %hw, i32 0, i32 3, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv13, ptr %arrayidx16, align 2
  %shr17 = lshr i32 %3, 24
  %conv19 = trunc i32 %shr17 to i8
  %arrayidx22 = getelementptr %struct.pch_gbe_hw, ptr %hw, i32 0, i32 3, i32 0, i32 3
  %11 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv19, ptr %arrayidx22, align 1
  %conv24 = trunc i32 %7 to i8
  %arrayidx27 = getelementptr %struct.pch_gbe_hw, ptr %hw, i32 0, i32 3, i32 0, i32 4
  %12 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv24, ptr %arrayidx27, align 4
  %shr28 = lshr i32 %7, 8
  %conv30 = trunc i32 %shr28 to i8
  %arrayidx33 = getelementptr %struct.pch_gbe_hw, ptr %hw, i32 0, i32 3, i32 0, i32 5
  %13 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv30, ptr %arrayidx33, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_mac_read_mac_addr.__UNIQUE_ID_ddebug596, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_mac_read_mac_addr, %if.then)) #9
          to label %do.end42 [label %if.then], !srcloc !335

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %netdev = getelementptr i8, ptr %hw, i32 -244
  %14 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_mac_read_mac_addr.__UNIQUE_ID_ddebug596, ptr noundef %15, ptr noundef nonnull @.str.20, ptr noundef %mac) #9
  br label %do.end42

do.end42:                                         ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_gbe_mac_mar_set(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %addr, i32 noundef %index) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_mac_mar_set.__UNIQUE_ID_ddebug597, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_mac_mar_set, %if.then)) #9
          to label %do.end6 [label %if.then], !srcloc !335

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %netdev = getelementptr i8, ptr %hw, i32 -244
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_mac_mar_set.__UNIQUE_ID_ddebug597, ptr noundef %1, ptr noundef nonnull @.str.24, i32 noundef %index) #9
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %addr, align 1
  %conv = zext i8 %3 to i32
  %arrayidx7 = getelementptr i8, ptr %addr, i32 1
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %5 to i32
  %shl = shl nuw nsw i32 %conv8, 8
  %or = or i32 %shl, %conv
  %arrayidx9 = getelementptr i8, ptr %addr, i32 2
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %7 to i32
  %shl11 = shl nuw nsw i32 %conv10, 16
  %or12 = or i32 %or, %shl11
  %arrayidx13 = getelementptr i8, ptr %addr, i32 3
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %9 to i32
  %shl15 = shl nuw i32 %conv14, 24
  %or16 = or i32 %or12, %shl15
  %arrayidx17 = getelementptr i8, ptr %addr, i32 4
  %10 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %11 to i32
  %arrayidx19 = getelementptr i8, ptr %addr, i32 5
  %12 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %13 to i32
  %shl21 = shl nuw nsw i32 %conv20, 8
  %or22 = or i32 %shl21, %conv18
  %reg = getelementptr inbounds %struct.pch_gbe_hw, ptr %hw, i32 0, i32 1
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg, align 4
  %ADDR_MASK = getelementptr inbounds %struct.pch_gbe_regs, ptr %15, i32 0, i32 24
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ADDR_MASK) #9, !srcloc !336
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %shl24 = shl nuw i32 1, %index
  %or25 = or i32 %17, %shl24
  %18 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg, align 4
  %ADDR_MASK27 = getelementptr inbounds %struct.pch_gbe_regs, ptr %19, i32 0, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  %20 = tail call i32 @llvm.bswap.i32(i32 %or25) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ADDR_MASK27, i32 %20) #9, !srcloc !339
  %21 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg, align 4
  %ADDR_MASK29 = getelementptr inbounds %struct.pch_gbe_regs, ptr %22, i32 0, i32 24
  %call.i = tail call i64 @ktime_get() #9
  %add.i.i = add i64 %call.i, 10000
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %do.end6
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ADDR_MASK29) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %.mask.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool.not.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool.not.i, label %for.cond.i.pch_gbe_wait_clr_bit.exit_crit_edge, label %land.lhs.true.i

for.cond.i.pch_gbe_wait_clr_bit.exit_crit_edge:   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pch_gbe_wait_clr_bit.exit

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call4.i = tail call i64 @ktime_get() #9
  %cmp3.i.i = icmp sgt i64 %call4.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ADDR_MASK29) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %.mask3.i = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask3.i)
  %tobool18.not.i = icmp eq i32 %.mask3.i, 0
  br i1 %tobool18.not.i, label %for.end.i.pch_gbe_wait_clr_bit.exit_crit_edge, label %do.end.i

for.end.i.pch_gbe_wait_clr_bit.exit_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pch_gbe_wait_clr_bit.exit

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #12
  br label %pch_gbe_wait_clr_bit.exit

pch_gbe_wait_clr_bit.exit:                        ; preds = %do.end.i, %for.end.i.pch_gbe_wait_clr_bit.exit_crit_edge, %for.cond.i.pch_gbe_wait_clr_bit.exit_crit_edge
  %25 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg, align 4
  %arrayidx31 = getelementptr %struct.pch_gbe_regs, ptr %26, i32 0, i32 23, i32 %index
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  %27 = tail call i32 @llvm.bswap.i32(i32 %or16) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx31, i32 %27) #9, !srcloc !339
  %28 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg, align 4
  %low = getelementptr %struct.pch_gbe_regs, ptr %29, i32 0, i32 23, i32 %index, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  %30 = tail call i32 @llvm.bswap.i32(i32 %or22) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %low, i32 %30) #9, !srcloc !339
  %neg = xor i32 %shl24, -1
  %and = and i32 %17, %neg
  %31 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg, align 4
  %ADDR_MASK37 = getelementptr inbounds %struct.pch_gbe_regs, ptr %32, i32 0, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  %33 = tail call i32 @llvm.bswap.i32(i32 %and) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ADDR_MASK37, i32 %33) #9, !srcloc !339
  %34 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg, align 4
  %ADDR_MASK39 = getelementptr inbounds %struct.pch_gbe_regs, ptr %35, i32 0, i32 24
  %call.i57 = tail call i64 @ktime_get() #9
  %add.i.i58 = add i64 %call.i57, 10000
  br label %for.cond.i61

for.cond.i61:                                     ; preds = %land.lhs.true.i64.for.cond.i61_crit_edge, %pch_gbe_wait_clr_bit.exit
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ADDR_MASK39) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %.mask.i59 = and i32 %36, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i59)
  %tobool.not.i60 = icmp eq i32 %.mask.i59, 0
  br i1 %tobool.not.i60, label %for.cond.i61.pch_gbe_wait_clr_bit.exit70_crit_edge, label %land.lhs.true.i64

for.cond.i61.pch_gbe_wait_clr_bit.exit70_crit_edge: ; preds = %for.cond.i61
  call void @__sanitizer_cov_trace_pc() #11
  br label %pch_gbe_wait_clr_bit.exit70

land.lhs.true.i64:                                ; preds = %for.cond.i61
  %call4.i62 = tail call i64 @ktime_get() #9
  %cmp3.i.i63 = icmp sgt i64 %call4.i62, %add.i.i58
  br i1 %cmp3.i.i63, label %for.end.i67, label %land.lhs.true.i64.for.cond.i61_crit_edge

land.lhs.true.i64.for.cond.i61_crit_edge:         ; preds = %land.lhs.true.i64
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i61

for.end.i67:                                      ; preds = %land.lhs.true.i64
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ADDR_MASK39) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %.mask3.i65 = and i32 %37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask3.i65)
  %tobool18.not.i66 = icmp eq i32 %.mask3.i65, 0
  br i1 %tobool18.not.i66, label %for.end.i67.pch_gbe_wait_clr_bit.exit70_crit_edge, label %do.end.i69

for.end.i67.pch_gbe_wait_clr_bit.exit70_crit_edge: ; preds = %for.end.i67
  call void @__sanitizer_cov_trace_pc() #11
  br label %pch_gbe_wait_clr_bit.exit70

do.end.i69:                                       ; preds = %for.end.i67
  call void @__sanitizer_cov_trace_pc() #11
  %call22.i68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #12
  br label %pch_gbe_wait_clr_bit.exit70

pch_gbe_wait_clr_bit.exit70:                      ; preds = %do.end.i69, %for.end.i67.pch_gbe_wait_clr_bit.exit70_crit_edge, %for.cond.i61.pch_gbe_wait_clr_bit.exit70_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_gbe_intr(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %data, i32 2640
  %reg = getelementptr i8, ptr %data, i32 2644
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg, align 4
  %INT_EN = getelementptr inbounds %struct.pch_gbe_regs, ptr %4, i32 0, i32 1
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %INT_EN) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %6 = and i32 %5, %2
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body8, !prof !341

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body8:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_intr.__UNIQUE_ID_ddebug614, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_intr, %if.then17)) #9
          to label %do.end20 [label %if.then17], !srcloc !335

if.then17:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_intr.__UNIQUE_ID_ddebug614, ptr noundef %data, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37, i32 noundef %7) #9
  br label %do.end20

do.end20:                                         ; preds = %if.then17, %do.body8
  %and21 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %do.end20.if.end24_crit_edge, label %if.then23

do.end20.if.end24_crit_edge:                      ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then23:                                        ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #11
  %intr_rx_frame_err_count = getelementptr i8, ptr %data, i32 2816
  %8 = ptrtoint ptr %intr_rx_frame_err_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %intr_rx_frame_err_count, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %intr_rx_frame_err_count, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %do.end20.if.end24_crit_edge
  %and25 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end67_crit_edge, label %if.then27

if.end24.if.end67_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.then27:                                        ; preds = %if.end24
  %rx_stop_flag = getelementptr i8, ptr %data, i32 2992
  %10 = ptrtoint ptr %rx_stop_flag to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rx_stop_flag, align 8, !range !340
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool28.not = icmp eq i8 %11, 0
  br i1 %tobool28.not, label %if.then29, label %if.then27.if.end67_crit_edge

if.then27.if.end67_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.then29:                                        ; preds = %if.then27
  %intr_rx_fifo_err_count = getelementptr i8, ptr %data, i32 2820
  %12 = ptrtoint ptr %intr_rx_fifo_err_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %intr_rx_fifo_err_count, align 4
  %inc31 = add i32 %13, 1
  store i32 %inc31, ptr %intr_rx_fifo_err_count, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_intr.__UNIQUE_ID_ddebug615, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_intr, %if.then45)) #9
          to label %do.end50 [label %if.then45], !srcloc !335

if.then45:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_intr.__UNIQUE_ID_ddebug615, ptr noundef %data, ptr noundef nonnull @.str.39) #9
  br label %do.end50

do.end50:                                         ; preds = %if.then45, %if.then29
  %14 = ptrtoint ptr %rx_stop_flag to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %rx_stop_flag, align 8
  %15 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg, align 4
  %INT_EN53 = getelementptr inbounds %struct.pch_gbe_regs, ptr %16, i32 0, i32 1
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %INT_EN53) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %18 = and i32 %17, -134217729
  %19 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg, align 4
  %INT_EN57 = getelementptr inbounds %struct.pch_gbe_regs, ptr %20, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %INT_EN57, i32 %18) #9, !srcloc !339
  %21 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg, align 4
  %DMA_CTRL.i = getelementptr inbounds %struct.pch_gbe_regs, ptr %22, i32 0, i32 30
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DMA_CTRL.i) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %24 = and i32 %23, -33554433
  %25 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg, align 4
  %DMA_CTRL2.i = getelementptr inbounds %struct.pch_gbe_regs, ptr %26, i32 0, i32 30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DMA_CTRL2.i, i32 %24) #9, !srcloc !339
  %27 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %30 = or i32 %29, %6
  %31 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg, align 4
  %INT_EN63 = getelementptr inbounds %struct.pch_gbe_regs, ptr %32, i32 0, i32 1
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %INT_EN63) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %34 = and i32 %33, %30
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  br label %if.end67

if.end67:                                         ; preds = %do.end50, %if.then27.if.end67_crit_edge, %if.end24.if.end67_crit_edge
  %int_st.0 = phi i32 [ %7, %if.then27.if.end67_crit_edge ], [ %35, %do.end50 ], [ %7, %if.end24.if.end67_crit_edge ]
  %and68 = and i32 %int_st.0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.end67.if.end73_crit_edge, label %if.then70

if.end67.if.end73_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  %intr_rx_dma_err_count = getelementptr i8, ptr %data, i32 2824
  %36 = ptrtoint ptr %intr_rx_dma_err_count to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %intr_rx_dma_err_count, align 4
  %inc72 = add i32 %37, 1
  store i32 %inc72, ptr %intr_rx_dma_err_count, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then70, %if.end67.if.end73_crit_edge
  %and74 = and i32 %int_st.0, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.end73.if.end79_crit_edge, label %if.then76

if.end73.if.end79_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.then76:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  %intr_tx_fifo_err_count = getelementptr i8, ptr %data, i32 2828
  %38 = ptrtoint ptr %intr_tx_fifo_err_count to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %intr_tx_fifo_err_count, align 4
  %inc78 = add i32 %39, 1
  store i32 %inc78, ptr %intr_tx_fifo_err_count, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then76, %if.end73.if.end79_crit_edge
  %and80 = and i32 %int_st.0, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.end79.if.end85_crit_edge, label %if.then82

if.end79.if.end85_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.then82:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  %intr_tx_dma_err_count = getelementptr i8, ptr %data, i32 2832
  %40 = ptrtoint ptr %intr_tx_dma_err_count to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %intr_tx_dma_err_count, align 4
  %inc84 = add i32 %41, 1
  store i32 %inc84, ptr %intr_tx_dma_err_count, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %if.end79.if.end85_crit_edge
  %and86 = and i32 %int_st.0, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.end85.if.end91_crit_edge, label %if.then88

if.end85.if.end91_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

if.then88:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  %intr_tcpip_err_count = getelementptr i8, ptr %data, i32 2836
  %42 = ptrtoint ptr %intr_tcpip_err_count to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %intr_tcpip_err_count, align 4
  %inc90 = add i32 %43, 1
  store i32 %inc90, ptr %intr_tcpip_err_count, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then88, %if.end85.if.end91_crit_edge
  %and92 = and i32 %int_st.0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.end91.if.end125_crit_edge, label %if.then94

if.end91.if.end125_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end125

if.then94:                                        ; preds = %if.end91
  %intr_rx_dsc_empty_count = getelementptr i8, ptr %data, i32 2812
  %44 = ptrtoint ptr %intr_rx_dsc_empty_count to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %intr_rx_dsc_empty_count, align 4
  %inc96 = add i32 %45, 1
  store i32 %inc96, ptr %intr_rx_dsc_empty_count, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_intr.__UNIQUE_ID_ddebug616, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_intr, %if.then110)) #9
          to label %do.end115 [label %if.then110], !srcloc !335

if.then110:                                       ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_intr.__UNIQUE_ID_ddebug616, ptr noundef %data, ptr noundef nonnull @.str.40) #9
  br label %do.end115

do.end115:                                        ; preds = %if.then110, %if.then94
  %46 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg, align 4
  %INT_EN117 = getelementptr inbounds %struct.pch_gbe_regs, ptr %47, i32 0, i32 1
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %INT_EN117) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %49 = and i32 %48, -536870913
  %50 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg, align 4
  %INT_EN121 = getelementptr inbounds %struct.pch_gbe_regs, ptr %51, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %INT_EN121, i32 %49) #9, !srcloc !339
  %tx_fc_enable = getelementptr i8, ptr %data, i32 2700
  %52 = ptrtoint ptr %tx_fc_enable to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %tx_fc_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool122.not = icmp eq i8 %53, 0
  br i1 %tobool122.not, label %do.end115.if.end125_crit_edge, label %if.then123

do.end115.if.end125_crit_edge:                    ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end125

if.then123:                                       ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @pch_gbe_mac_set_pause_packet(ptr noundef %hw1)
  br label %if.end125

if.end125:                                        ; preds = %if.then123, %do.end115.if.end125_crit_edge, %if.end91.if.end125_crit_edge
  %and126 = and i32 %int_st.0, 257
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  br i1 %tobool127.not, label %lor.lhs.false, label %if.end125.if.then130_crit_edge

if.end125.if.then130_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then130

lor.lhs.false:                                    ; preds = %if.end125
  %rx_stop_flag128 = getelementptr i8, ptr %data, i32 2992
  %54 = ptrtoint ptr %rx_stop_flag128 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %rx_stop_flag128, align 8, !range !340
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool129.not = icmp eq i8 %55, 0
  br i1 %tobool129.not, label %lor.lhs.false.do.body149_crit_edge, label %lor.lhs.false.if.then130_crit_edge

lor.lhs.false.if.then130_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then130

lor.lhs.false.do.body149_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body149

if.then130:                                       ; preds = %lor.lhs.false.if.then130_crit_edge, %if.end125.if.then130_crit_edge
  %napi = getelementptr i8, ptr %data, i32 2416
  %call131 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #9
  br i1 %call131, label %if.then138, label %if.then130.do.body149_crit_edge, !prof !342

if.then130.do.body149_crit_edge:                  ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body149

if.then138:                                       ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #11
  %irq_sem = getelementptr i8, ptr %data, i32 2392
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %irq_sem, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %irq_sem, i32 1, i32 3, i32 1) #9
  %56 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %irq_sem, ptr %irq_sem, i32 1, ptr elementtype(i32) %irq_sem) #9, !srcloc !346
  %57 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %reg, align 4
  %INT_EN140 = getelementptr inbounds %struct.pch_gbe_regs, ptr %58, i32 0, i32 1
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %INT_EN140) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %60 = and i32 %59, -16842753
  %61 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %reg, align 4
  %INT_EN144 = getelementptr inbounds %struct.pch_gbe_regs, ptr %62, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %INT_EN144, i32 %60) #9, !srcloc !339
  tail call void @__napi_schedule(ptr noundef %napi) #9
  br label %do.body149

do.body149:                                       ; preds = %if.then138, %if.then130.do.body149_crit_edge, %lor.lhs.false.do.body149_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_intr.__UNIQUE_ID_ddebug617, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_intr, %if.then161)) #9
          to label %cleanup [label %if.then161], !srcloc !335

if.then161:                                       ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %reg, align 4
  %INT_EN163 = getelementptr inbounds %struct.pch_gbe_regs, ptr %64, i32 0, i32 1
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %INT_EN163) #9, !srcloc !336
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_intr.__UNIQUE_ID_ddebug617, ptr noundef %data, ptr noundef nonnull @.str.41, i32 noundef 1, i32 noundef %66) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then161, %do.body149, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then161 ], [ 1, %do.body149 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_gbe_mac_set_pause_packet(ptr nocapture noundef readonly %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mac = getelementptr inbounds %struct.pch_gbe_hw, ptr %hw, i32 0, i32 3
  %arrayidx = getelementptr %struct.pch_gbe_hw, ptr %hw, i32 0, i32 3, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %2 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mac, align 4
  %conv4 = zext i8 %3 to i32
  %4 = shl nuw i32 %conv, 24
  %5 = shl nuw nsw i32 %conv4, 16
  %shl5 = or i32 %4, %5
  %or6 = or i32 %shl5, 256
  %arrayidx9 = getelementptr %struct.pch_gbe_hw, ptr %hw, i32 0, i32 3, i32 0, i32 5
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %7 to i32
  %arrayidx14 = getelementptr %struct.pch_gbe_hw, ptr %hw, i32 0, i32 3, i32 0, i32 4
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx14, align 4
  %conv15 = zext i8 %9 to i32
  %10 = shl nuw nsw i32 %conv10, 16
  %11 = shl nuw nsw i32 %conv15, 8
  %shl17 = or i32 %11, %10
  %arrayidx20 = getelementptr %struct.pch_gbe_hw, ptr %hw, i32 0, i32 3, i32 0, i32 3
  %12 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %13 to i32
  %or22 = or i32 %shl17, %conv21
  %shl23 = shl nuw i32 %or22, 8
  %arrayidx26 = getelementptr %struct.pch_gbe_hw, ptr %hw, i32 0, i32 3, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx26, align 2
  %conv27 = zext i8 %15 to i32
  %or28 = or i32 %shl23, %conv27
  %reg = getelementptr inbounds %struct.pch_gbe_hw, ptr %hw, i32 0, i32 1
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg, align 4
  %PAUSE_PKT1 = getelementptr inbounds %struct.pch_gbe_regs, ptr %17, i32 0, i32 17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PAUSE_PKT1, i32 25215488) #9, !srcloc !339
  %18 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg, align 4
  %PAUSE_PKT2 = getelementptr inbounds %struct.pch_gbe_regs, ptr %19, i32 0, i32 18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  %20 = tail call i32 @llvm.bswap.i32(i32 %or6) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PAUSE_PKT2, i32 %20) #9, !srcloc !339
  %21 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg, align 4
  %PAUSE_PKT3 = getelementptr inbounds %struct.pch_gbe_regs, ptr %22, i32 0, i32 19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  %23 = tail call i32 @llvm.bswap.i32(i32 %or28) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PAUSE_PKT3, i32 %23) #9, !srcloc !339
  %24 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg, align 4
  %PAUSE_PKT4 = getelementptr inbounds %struct.pch_gbe_regs, ptr %25, i32 0, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PAUSE_PKT4, i32 -2012741631) #9, !srcloc !339
  %26 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg, align 4
  %PAUSE_PKT5 = getelementptr inbounds %struct.pch_gbe_regs, ptr %27, i32 0, i32 21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PAUSE_PKT5, i32 -65536) #9, !srcloc !339
  %28 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg, align 4
  %PAUSE_REQ = getelementptr inbounds %struct.pch_gbe_regs, ptr %29, i32 0, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PAUSE_REQ, i32 128) #9, !srcloc !339
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_mac_set_pause_packet.__UNIQUE_ID_ddebug602, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_mac_set_pause_packet, %if.then)) #9
          to label %do.end54 [label %if.then], !srcloc !335

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %netdev = getelementptr i8, ptr %hw, i32 -244
  %30 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %netdev, align 4
  %32 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg, align 4
  %PAUSE_PKT139 = getelementptr inbounds %struct.pch_gbe_regs, ptr %33, i32 0, i32 17
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %PAUSE_PKT139) #9, !srcloc !336
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %36 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg, align 4
  %PAUSE_PKT242 = getelementptr inbounds %struct.pch_gbe_regs, ptr %37, i32 0, i32 18
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %PAUSE_PKT242) #9, !srcloc !336
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %40 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg, align 4
  %PAUSE_PKT345 = getelementptr inbounds %struct.pch_gbe_regs, ptr %41, i32 0, i32 19
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %PAUSE_PKT345) #9, !srcloc !336
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %44 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg, align 4
  %PAUSE_PKT448 = getelementptr inbounds %struct.pch_gbe_regs, ptr %45, i32 0, i32 20
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %PAUSE_PKT448) #9, !srcloc !336
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %48 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg, align 4
  %PAUSE_PKT551 = getelementptr inbounds %struct.pch_gbe_regs, ptr %49, i32 0, i32 21
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %PAUSE_PKT551) #9, !srcloc !336
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_mac_set_pause_packet.__UNIQUE_ID_ddebug602, ptr noundef %31, ptr noundef nonnull @.str.43, i32 noundef %35, i32 noundef %39, i32 noundef %43, i32 noundef %47, i32 noundef %51) #9
  br label %do.end54

do.end54:                                         ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_gbe_probe(ptr noundef %pdev, ptr nocapture noundef readonly %pci_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pcim_enable_device(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end.if.end10_crit_edge, label %if.then3

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then3:                                         ; preds = %if.end
  %call.i207 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i207)
  %cmp.i208 = icmp eq i32 %call.i207, 0
  br i1 %cmp.i208, label %if.then3.if.end10_crit_edge, label %do.end

if.then3.if.end10_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.58) #12
  br label %cleanup

if.end10:                                         ; preds = %if.then3.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %.sink = phi i64 [ -1, %if.end.if.end10_crit_edge ], [ 4294967295, %if.then3.if.end10_crit_edge ]
  %call1.i209 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef %.sink) #9
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %0 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end10.pci_name.exit_crit_edge

if.end10.pci_name.exit_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end10.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %3, %if.end.i.i ], [ %1, %if.end10.pci_name.exit_crit_edge ]
  %call12 = tail call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef 2, ptr noundef %retval.0.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end19, label %do.end17

do.end17:                                         ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.63) #12
  br label %cleanup

if.end19:                                         ; preds = %pci_name.exit
  tail call void @pci_set_master(ptr noundef %pdev) #9
  %call20 = tail call ptr @alloc_etherdev_mqs(i32 noundef 712, i32 noundef 1, i32 noundef 1) #9
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %parent = getelementptr inbounds %struct.net_device, ptr %call20, i32 0, i32 133, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call20, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call20, i32 2304
  %netdev27 = getelementptr i8, ptr %call20, i32 2396
  %6 = ptrtoint ptr %netdev27 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call20, ptr %netdev27, align 4
  %pdev28 = getelementptr i8, ptr %call20, i32 2400
  %7 = ptrtoint ptr %pdev28 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pdev, ptr %pdev28, align 8
  %hw = getelementptr i8, ptr %call20, i32 2640
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr.i, ptr %hw, align 8
  %call29 = tail call ptr @pcim_iomap_table(ptr noundef %pdev) #9
  %arrayidx = getelementptr ptr, ptr %call29, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %reg = getelementptr i8, ptr %call20, i32 2644
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %reg, align 4
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %pci_id, i32 0, i32 6
  %12 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %driver_data, align 4
  %14 = inttoptr i32 %13 to ptr
  %pdata = getelementptr i8, ptr %call20, i32 3008
  %15 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %pdata, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool32.not = icmp eq i32 %13, 0
  br i1 %tobool32.not, label %if.end23.if.end42_crit_edge, label %land.lhs.true

if.end23.if.end42_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

land.lhs.true:                                    ; preds = %if.end23
  %platform_init = getelementptr inbounds %struct.pch_gbe_privdata, ptr %14, i32 0, i32 2
  %16 = ptrtoint ptr %platform_init to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %platform_init, align 4
  %tobool34.not = icmp eq ptr %17, null
  br i1 %tobool34.not, label %land.lhs.true.if.end42_crit_edge, label %if.then35

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then35:                                        ; preds = %land.lhs.true
  %call38 = tail call i32 %17(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then35.if.end42_crit_edge, label %if.then35.err_free_netdev_crit_edge

if.then35.err_free_netdev_crit_edge:              ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_netdev

if.then35.if.end42_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.end42:                                         ; preds = %if.then35.if.end42_crit_edge, %land.lhs.true.if.end42_crit_edge, %if.end23.if.end42_crit_edge
  %18 = ptrtoint ptr %pdev28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev28, align 8
  %bus = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus, align 8
  %domain_nr.i = getelementptr inbounds %struct.pci_bus, ptr %21, i32 0, i32 16
  %22 = ptrtoint ptr %domain_nr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %domain_nr.i, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %21, i32 0, i32 12
  %24 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %number, align 4
  %conv = zext i8 %25 to i32
  %call47 = tail call ptr @pci_get_domain_bus_and_slot(i32 noundef %23, i32 noundef %conv, i32 noundef 100) #9
  %ptp_pdev = getelementptr i8, ptr %call20, i32 3004
  %26 = ptrtoint ptr %ptp_pdev to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call47, ptr %ptp_pdev, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call20, i32 0, i32 16
  %27 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @pch_gbe_netdev_ops, ptr %netdev_ops, align 8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call20, i32 0, i32 115
  %28 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 500, ptr %watchdog_timeo, align 4
  %napi = getelementptr i8, ptr %call20, i32 2416
  tail call void @netif_napi_add(ptr noundef nonnull %call20, ptr noundef %napi, ptr noundef nonnull @pch_gbe_napi_poll, i32 noundef 64) #9
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call20, i32 0, i32 24
  %29 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 1099511627794, ptr %hw_features, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %call20, i32 0, i32 23
  %30 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 1099511627794, ptr %features, align 16
  tail call void @pch_gbe_set_ethtool_ops(ptr noundef nonnull %call20) #9
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call20, i32 0, i32 30
  %31 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 46, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call20, i32 0, i32 31
  %32 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 10300, ptr %max_mtu, align 4
  %33 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg, align 4
  %MAC_ADDR_LOAD.i = getelementptr inbounds %struct.pch_gbe_regs, ptr %34, i32 0, i32 26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MAC_ADDR_LOAD.i, i32 16777216) #9, !srcloc !339
  tail call fastcc void @pch_gbe_mac_reset_hw(ptr noundef %hw)
  %call51 = tail call fastcc i32 @pch_gbe_sw_init(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end42.err_free_netdev_crit_edge

if.end42.err_free_netdev_crit_edge:               ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_netdev

if.end54:                                         ; preds = %if.end42
  %call55 = tail call fastcc i32 @pch_gbe_init_phy(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end62, label %do.end60

do.end60:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.66) #12
  br label %err_free_adapter

if.end62:                                         ; preds = %if.end54
  tail call fastcc void @pch_gbe_mac_read_mac_addr(ptr noundef %hw)
  %mac = getelementptr i8, ptr %call20, i32 2692
  tail call void @dev_addr_mod(ptr noundef nonnull %call20, i32 noundef 0, ptr noundef %mac, i32 noundef 6) #9
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call20, i32 0, i32 86
  %35 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_addr, align 64
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %39 = and i32 %38, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.i.not.i = icmp eq i32 %39, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end62.do.end77_crit_edge

if.end62.do.end77_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end77

is_valid_ether_addr.exit:                         ; preds = %if.end62
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 4
  %40 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %41 to i32
  %or.i.i = or i32 %38, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.do.end77_crit_edge, label %is_valid_ether_addr.exit.do.body80_crit_edge

is_valid_ether_addr.exit.do.body80_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body80

is_valid_ether_addr.exit.do.end77_crit_edge:      ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end77

do.end77:                                         ; preds = %is_valid_ether_addr.exit.do.end77_crit_edge, %if.end62.do.end77_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.72) #12
  br label %do.body80

do.body80:                                        ; preds = %do.end77, %is_valid_ether_addr.exit.do.body80_crit_edge
  %watchdog_timer = getelementptr i8, ptr %call20, i32 2916
  tail call void @init_timer_key(ptr noundef %watchdog_timer, ptr noundef nonnull @pch_gbe_watchdog, i32 noundef 0, ptr noundef nonnull @.str.74, ptr noundef nonnull @pch_gbe_probe.__key) #9
  %reset_task = getelementptr i8, ptr %call20, i32 2840
  tail call void @__init_work(ptr noundef %reset_task, i32 noundef 0) #9
  %42 = ptrtoint ptr %reset_task to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -64, ptr %reset_task, align 8
  %lockdep_map = getelementptr i8, ptr %call20, i32 2856
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.76, ptr noundef nonnull @pch_gbe_probe.__key.75, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry87 = getelementptr i8, ptr %call20, i32 2844
  %43 = ptrtoint ptr %entry87 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %entry87, ptr %entry87, align 4
  %prev.i = getelementptr i8, ptr %call20, i32 2848
  %44 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %entry87, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call20, i32 2852
  %45 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @pch_gbe_reset_task, ptr %func, align 4
  tail call void @pch_gbe_check_options(ptr noundef %add.ptr.i) #9
  %wake_up_evt = getelementptr i8, ptr %call20, i32 2964
  %46 = ptrtoint ptr %wake_up_evt to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %wake_up_evt, align 4
  %47 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_addr, align 64
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.78, ptr noundef %48) #12
  tail call void @pch_gbe_reset(ptr noundef %add.ptr.i)
  %call96 = tail call i32 @register_netdev(ptr noundef nonnull %call20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end99, label %do.body80.err_free_adapter_crit_edge

do.body80.err_free_adapter_crit_edge:             ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_adapter

if.end99:                                         ; preds = %do.body80
  tail call void @netif_carrier_off(ptr noundef nonnull %call20) #9
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %call20, i32 0, i32 103
  %49 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %50, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_probe.__UNIQUE_ID_ddebug649, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_probe, %if.then105)) #9
          to label %do.end109 [label %if.then105], !srcloc !335

if.then105:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_gbe_probe.__UNIQUE_ID_ddebug649, ptr noundef %dev, ptr noundef nonnull @.str.81) #9
  br label %do.end109

do.end109:                                        ; preds = %if.then105, %if.end99
  %51 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pdata, align 8
  %tobool111.not = icmp eq ptr %52, null
  br i1 %tobool111.not, label %do.end109.if.end119_crit_edge, label %land.lhs.true112

do.end109.if.end119_crit_edge:                    ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end119

land.lhs.true112:                                 ; preds = %do.end109
  %phy_disable_hibernate = getelementptr inbounds %struct.pch_gbe_privdata, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %phy_disable_hibernate to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %phy_disable_hibernate, align 1, !range !340
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool114.not = icmp eq i8 %54, 0
  br i1 %tobool114.not, label %land.lhs.true112.if.end119_crit_edge, label %if.then116

land.lhs.true112.if.end119_crit_edge:             ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end119

if.then116:                                       ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #11
  %call118 = tail call i32 @pch_gbe_phy_disable_hibernate(ptr noundef %hw) #9
  br label %if.end119

if.end119:                                        ; preds = %if.then116, %land.lhs.true112.if.end119_crit_edge, %do.end109.if.end119_crit_edge
  %call121 = tail call i32 @device_set_wakeup_enable(ptr noundef %dev, i1 noundef zeroext true) #9
  br label %cleanup

err_free_adapter:                                 ; preds = %do.body80.err_free_adapter_crit_edge, %do.end60
  %ret.0 = phi i32 [ %call55, %do.end60 ], [ %call96, %do.body80.err_free_adapter_crit_edge ]
  tail call void @pch_gbe_phy_hw_reset(ptr noundef %hw) #9
  br label %err_free_netdev

err_free_netdev:                                  ; preds = %err_free_adapter, %if.end42.err_free_netdev_crit_edge, %if.then35.err_free_netdev_crit_edge
  %ret.1 = phi i32 [ %call38, %if.then35.err_free_netdev_crit_edge ], [ %call51, %if.end42.err_free_netdev_crit_edge ], [ %ret.0, %err_free_adapter ]
  tail call void @free_netdev(ptr noundef nonnull %call20) #9
  br label %cleanup

cleanup:                                          ; preds = %err_free_netdev, %if.end119, %if.end19.cleanup_crit_edge, %do.end17, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i207, %do.end ], [ %call12, %do.end17 ], [ %ret.1, %err_free_netdev ], [ 0, %if.end119 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_gbe_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %reset_task = getelementptr i8, ptr %1, i32 2840
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %reset_task) #9
  tail call void @unregister_netdev(ptr noundef %1) #9
  %hw = getelementptr i8, ptr %1, i32 2640
  tail call void @pch_gbe_phy_hw_reset(ptr noundef %hw) #9
  tail call void @free_netdev(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_gbe_shutdown(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__pch_gbe_suspend(ptr noundef %pdev)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_state to i32))
  %0 = load i32, ptr @system_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %0)
  %cmp = icmp eq i32 %0, 5
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @pci_wake_from_d3(ptr noundef %pdev, i1 noundef zeroext true) #9
  %call2 = tail call i32 @pci_set_power_state(ptr noundef %pdev, i32 noundef 3) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_gbe_minnow_platform_init(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void @gpiod_add_lookup_table(ptr noundef nonnull @pch_gbe_minnow_gpio_table) #9
  %call.i.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @pch_gbe_gpio_remove_table, ptr noundef nonnull @pch_gbe_minnow_gpio_table) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end, label %pch_gbe_gpio_add_table.exit

pch_gbe_gpio_add_table.exit:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_remove_lookup_table(ptr noundef nonnull @pch_gbe_minnow_gpio_table) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef null, i32 noundef 7) #9
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call2 to i32
  %call7 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %0, ptr noundef nonnull @.str.54) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value(ptr noundef %call2, i32 noundef 1) #9
  tail call void @usleep_range_state(i32 noundef 1250, i32 noundef 1500, i32 noundef 2) #9
  tail call void @gpiod_set_value(ptr noundef %call2, i32 noundef 0) #9
  tail call void @usleep_range_state(i32 noundef 1250, i32 noundef 1500, i32 noundef 2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then4, %pch_gbe_gpio_add_table.exit
  %retval.0 = phi i32 [ %call7, %if.then4 ], [ 0, %if.end8 ], [ %call.i.i, %pch_gbe_gpio_add_table.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_add_lookup_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_gbe_gpio_remove_table(ptr noundef %table) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @gpiod_remove_lookup_table(ptr noundef %table) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_remove_lookup_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_domain_bus_and_slot(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_gbe_napi_poll(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  %work_done = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -112
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %work_done) #9
  %0 = ptrtoint ptr %work_done to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %work_done, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_napi_poll.__UNIQUE_ID_ddebug646, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_napi_poll, %if.then)) #9
          to label %do.end6 [label %if.then], !srcloc !335

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %netdev = getelementptr i8, ptr %napi, i32 -20
  %1 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_napi_poll.__UNIQUE_ID_ddebug646, ptr noundef %2, ptr noundef nonnull @.str.103, i32 noundef %budget) #9
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %rx_ring = getelementptr i8, ptr %napi, i32 564
  %3 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rx_ring, align 4
  call fastcc void @pch_gbe_clean_rx(ptr noundef %add.ptr, ptr noundef %4, ptr noundef nonnull %work_done, i32 noundef %budget)
  %tx_ring = getelementptr i8, ptr %napi, i32 560
  %5 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tx_ring, align 8
  %call8 = tail call fastcc zeroext i1 @pch_gbe_clean_tx(ptr noundef %add.ptr, ptr noundef %6)
  br i1 %call8, label %if.then11, label %do.end6.if.end12_crit_edge

do.end6.if.end12_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then11:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %work_done to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %budget, ptr %work_done, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %do.end6.if.end12_crit_edge
  %8 = ptrtoint ptr %work_done to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %work_done, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %budget)
  %cmp = icmp slt i32 %9, %budget
  br i1 %cmp, label %if.then16, label %if.end12.if.end18_crit_edge

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %9) #9
  tail call fastcc void @pch_gbe_irq_enable(ptr noundef %add.ptr)
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end12.if.end18_crit_edge
  %rx_stop_flag = getelementptr i8, ptr %napi, i32 576
  %10 = ptrtoint ptr %rx_stop_flag to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rx_stop_flag, align 8, !range !340
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool19.not = icmp eq i8 %11, 0
  br i1 %tobool19.not, label %if.end18.do.body24_crit_edge, label %if.then20

if.end18.do.body24_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body24

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %rx_stop_flag to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %rx_stop_flag, align 8
  %reg.i = getelementptr i8, ptr %napi, i32 228
  %13 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg.i, align 4
  %DMA_CTRL.i = getelementptr inbounds %struct.pch_gbe_regs, ptr %14, i32 0, i32 30
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DMA_CTRL.i) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %16 = or i32 %15, 33554432
  %17 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg.i, align 4
  %DMA_CTRL2.i = getelementptr inbounds %struct.pch_gbe_regs, ptr %18, i32 0, i32 30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DMA_CTRL2.i, i32 %16) #9, !srcloc !339
  br label %do.body24

do.body24:                                        ; preds = %if.then20, %if.end18.do.body24_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_napi_poll.__UNIQUE_ID_ddebug647, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_napi_poll, %if.then36)) #9
          to label %do.end43 [label %if.then36], !srcloc !335

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #11
  %netdev37 = getelementptr i8, ptr %napi, i32 -20
  %19 = ptrtoint ptr %netdev37 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %netdev37, align 4
  %conv = zext i1 %cmp to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_napi_poll.__UNIQUE_ID_ddebug647, ptr noundef %20, ptr noundef nonnull @.str.104, i32 noundef %conv, i32 noundef %9, i32 noundef %budget) #9
  br label %do.end43

do.end43:                                         ; preds = %if.then36, %do.body24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %work_done) #9
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pch_gbe_set_ethtool_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pch_gbe_sw_init(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev2 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %netdev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev2, align 4
  %rx_buffer_len = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 18
  %2 = ptrtoint ptr %rx_buffer_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2048, ptr %rx_buffer_len, align 8
  %mtu = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %3 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mtu, align 4
  %add3 = add i32 %4, 18
  %max_frame_size = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 4
  %5 = ptrtoint ptr %max_frame_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add3, ptr %max_frame_size, align 4
  %min_frame_size = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 5
  %6 = ptrtoint ptr %min_frame_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 64, ptr %min_frame_size, align 4
  %reset_delay_us = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 4, i32 3
  %7 = ptrtoint ptr %reset_delay_us to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 10, ptr %reset_delay_us, align 4
  %pdev.i = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 4
  %8 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %call.i.i49 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 28, i32 noundef 3520) #9
  %tx_ring.i = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 16
  %10 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i.i49, ptr %tx_ring.i, align 8
  %tobool.not.i = icmp eq ptr %call.i.i49, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.i:                                         ; preds = %entry
  %11 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev.i, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %call.i14.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev3.i, i32 noundef 40, i32 noundef 3520) #9
  %rx_ring.i = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 17
  %13 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i14.i, ptr %rx_ring.i, align 4
  %tobool6.not.i = icmp eq ptr %call.i14.i, null
  br i1 %tobool6.not.i, label %if.end.i.if.then_crit_edge, label %do.body

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %if.end.i.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.125) #12
  br label %cleanup

do.body:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %miim_lock = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %miim_lock, ptr noundef nonnull @.str.126, ptr noundef nonnull @pch_gbe_sw_init.__key, i16 noundef signext 3) #9
  tail call void @__raw_spin_lock_init(ptr noundef %adapter, ptr noundef nonnull @.str.128, ptr noundef nonnull @pch_gbe_sw_init.__key.127, i16 noundef signext 3) #9
  %ethtool_lock = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %ethtool_lock, ptr noundef nonnull @.str.130, ptr noundef nonnull @pch_gbe_sw_init.__key.129, i16 noundef signext 3) #9
  %irq_sem = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %irq_sem, i32 noundef 4) #9
  %14 = ptrtoint ptr %irq_sem to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 0, ptr %irq_sem, align 4
  tail call fastcc void @pch_gbe_irq_disable(ptr noundef %adapter)
  %stats.i = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 9
  %15 = call ptr @memset(ptr %stats.i, i32 0, i32 100)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_sw_init.__UNIQUE_ID_ddebug635, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_sw_init, %if.then21)) #9
          to label %cleanup [label %if.then21], !srcloc !335

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %rx_buffer_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_buffer_len, align 8
  %18 = ptrtoint ptr %min_frame_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %min_frame_size, align 4
  %20 = ptrtoint ptr %max_frame_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_frame_size, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_sw_init.__UNIQUE_ID_ddebug635, ptr noundef %1, ptr noundef nonnull @.str.132, i32 noundef %17, i32 noundef %19, i32 noundef %21) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %do.body, %if.then
  %retval.0 = phi i32 [ -12, %if.then ], [ 0, %if.then21 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pch_gbe_init_phy(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 4
  %mii = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 11
  %hw1.i = getelementptr i8, ptr %1, i32 2640
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %addr.0122 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = zext i32 %addr.0122 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %addr.0122, label %cond.false5 [
    i32 0, label %for.body.cond.end6_crit_edge
    i32 1, label %cond.end6.fold.split
  ]

for.body.cond.end6_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end6

cond.false5:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end6

cond.end6.fold.split:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end6

cond.end6:                                        ; preds = %cond.end6.fold.split, %cond.false5, %for.body.cond.end6_crit_edge
  %cond7 = phi i32 [ 1, %for.body.cond.end6_crit_edge ], [ %addr.0122, %cond.false5 ], [ 0, %cond.end6.fold.split ]
  %3 = ptrtoint ptr %mii to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %cond7, ptr %mii, align 4
  %call2.i = tail call zeroext i16 @pch_gbe_mac_ctrl_miim(ptr noundef %hw1.i, i32 noundef %cond7, i32 noundef 0, i32 noundef 0, i16 noundef zeroext 0) #9
  %4 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mii, align 4
  %call2.i108 = tail call zeroext i16 @pch_gbe_mac_ctrl_miim(ptr noundef %hw1.i, i32 noundef %5, i32 noundef 0, i32 noundef 1, i16 noundef zeroext 0) #9
  %6 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mii, align 4
  %call2.i111 = tail call zeroext i16 @pch_gbe_mac_ctrl_miim(ptr noundef %hw1.i, i32 noundef %7, i32 noundef 0, i32 noundef 1, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call2.i)
  %cmp19 = icmp eq i16 %call2.i, -1
  br i1 %cmp19, label %cond.end6.for.inc_crit_edge, label %lor.lhs.false

cond.end6.for.inc_crit_edge:                      ; preds = %cond.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false:                                    ; preds = %cond.end6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call2.i111)
  %cmp22 = icmp eq i16 %call2.i111, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call2.i)
  %cmp25 = icmp eq i16 %call2.i, 0
  %or.cond = select i1 %cmp22, i1 %cmp25, i1 false
  br i1 %or.cond, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false.for.end_crit_edge

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %cond.end6.for.inc_crit_edge
  %inc = add nuw nsw i32 %addr.0122, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge
  %addr.0.lcssa = phi i32 [ %addr.0122, %lor.lhs.false.for.end_crit_edge ], [ 32, %for.inc.for.end_crit_edge ]
  %8 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mii, align 4
  %phy = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 4
  %10 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %phy, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_init_phy.__UNIQUE_ID_ddebug603, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_init_phy, %if.then34)) #9
          to label %do.end39 [label %if.then34], !srcloc !335

if.then34:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mii, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_init_phy.__UNIQUE_ID_ddebug603, ptr noundef %1, ptr noundef nonnull @.str.134, i32 noundef %12) #9
  br label %do.end39

do.end39:                                         ; preds = %if.then34, %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %addr.0.lcssa)
  %cmp40 = icmp eq i32 %addr.0.lcssa, 32
  br i1 %cmp40, label %do.end39.cleanup_crit_edge, label %do.end39.for.body47_crit_edge

do.end39.for.body47_crit_edge:                    ; preds = %do.end39
  br label %for.body47

do.end39.cleanup_crit_edge:                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body47:                                       ; preds = %for.inc57.for.body47_crit_edge, %do.end39.for.body47_crit_edge
  %addr.1124 = phi i32 [ %inc58, %for.inc57.for.body47_crit_edge ], [ 0, %do.end39.for.body47_crit_edge ]
  %13 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mii, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %addr.1124, i32 %14)
  %cmp50.not = icmp eq i32 %addr.1124, %14
  br i1 %cmp50.not, label %if.else, label %for.body47.for.inc57_crit_edge

for.body47.for.inc57_crit_edge:                   ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc57

if.else:                                          ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i116 = tail call zeroext i16 @pch_gbe_mac_ctrl_miim(ptr noundef %hw1.i, i32 noundef %addr.1124, i32 noundef 0, i32 noundef 0, i16 noundef zeroext 0) #9
  %15 = and i16 %call2.i116, -1025
  br label %for.inc57

for.inc57:                                        ; preds = %if.else, %for.body47.for.inc57_crit_edge
  %.sink = phi i16 [ %15, %if.else ], [ 1024, %for.body47.for.inc57_crit_edge ]
  %call2.i114 = tail call zeroext i16 @pch_gbe_mac_ctrl_miim(ptr noundef %hw1.i, i32 noundef %addr.1124, i32 noundef 67108864, i32 noundef 0, i16 noundef zeroext %.sink) #9
  %inc58 = add nuw nsw i32 %addr.1124, 1
  %exitcond126.not = icmp eq i32 %inc58, 32
  br i1 %exitcond126.not, label %for.end59, label %for.inc57.for.body47_crit_edge

for.inc57.for.body47_crit_edge:                   ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body47

for.end59:                                        ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #11
  %phy_id_mask = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 11, i32 2
  %16 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 31, ptr %phy_id_mask, align 4
  %reg_num_mask = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 11, i32 3
  %17 = ptrtoint ptr %reg_num_mask to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 31, ptr %reg_num_mask, align 4
  %18 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %netdev1, align 4
  %dev = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 11, i32 5
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %dev, align 4
  %mdio_read = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 11, i32 6
  %21 = ptrtoint ptr %mdio_read to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @pch_gbe_mdio_read, ptr %mdio_read, align 4
  %mdio_write = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 11, i32 7
  %22 = ptrtoint ptr %mdio_write to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @pch_gbe_mdio_write, ptr %mdio_write, align 4
  %call67 = tail call i32 @mii_check_gmii_support(ptr noundef %mii) #9
  %supports_gmii = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 11, i32 4
  %23 = trunc i32 %call67 to i8
  %24 = ptrtoint ptr %supports_gmii to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load = load i8, ptr %supports_gmii, align 4
  %bf.value = shl i8 %23, 5
  %bf.shl = and i8 %bf.value, 32
  %bf.clear = and i8 %bf.load, -33
  %bf.set = or i8 %bf.shl, %bf.clear
  store i8 %bf.set, ptr %supports_gmii, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end59, %do.end39.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end59 ], [ -11, %do.end39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_gbe_watchdog(ptr noundef %t) #0 align 64 {
entry:
  %cmd = alloca %struct.ethtool_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -612
  %netdev1 = getelementptr i8, ptr %t, i32 -520
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_watchdog.__UNIQUE_ID_ddebug611, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_watchdog, %if.then)) #9
          to label %do.end8 [label %if.then], !srcloc !335

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_watchdog.__UNIQUE_ID_ddebug611, ptr noundef %1, ptr noundef nonnull @.str.136, i32 noundef %2) #9
  br label %do.end8

do.end8:                                          ; preds = %if.then, %entry
  tail call void @pch_gbe_update_stats(ptr noundef %add.ptr)
  %mii = getelementptr i8, ptr %t, i32 -32
  %call9 = tail call i32 @mii_link_ok(ptr noundef %mii) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.end8.if.else_crit_edge, label %land.lhs.true

do.end8.if.else_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %do.end8
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state.i, align 4
  %5 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %land.lhs.true.if.else_crit_edge, label %if.then12

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then12:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cmd) #9
  %6 = getelementptr inbounds i8, ptr %cmd, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 40)
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %cmd, align 4
  %tx_queue_len = getelementptr i8, ptr %t, i32 72
  %9 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_queue_len, align 4
  %tx_queue_len13 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 107
  %11 = ptrtoint ptr %tx_queue_len13 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tx_queue_len13, align 16
  call void @mii_ethtool_gset(ptr noundef %mii, ptr noundef nonnull %cmd) #9
  %speed.i = getelementptr inbounds %struct.ethtool_cmd, ptr %cmd, i32 0, i32 3
  %12 = ptrtoint ptr %speed.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %speed.i, align 4
  %link_speed = getelementptr i8, ptr %t, i32 -202
  %14 = ptrtoint ptr %link_speed to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %link_speed, align 2
  %duplex = getelementptr inbounds %struct.ethtool_cmd, ptr %cmd, i32 0, i32 4
  %15 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %duplex, align 2
  %conv16 = zext i8 %16 to i16
  %link_duplex = getelementptr i8, ptr %t, i32 -200
  %17 = ptrtoint ptr %link_duplex to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv16, ptr %link_duplex, align 4
  %18 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.148)
  switch i16 %13, label %if.then12.pch_gbe_set_rgmii_ctrl.exit_crit_edge [
    i16 10, label %sw.bb.i
    i16 100, label %sw.bb2.i
    i16 1000, label %sw.bb3.i
  ]

if.then12.pch_gbe_set_rgmii_ctrl.exit_crit_edge:  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %pch_gbe_set_rgmii_ctrl.exit

sw.bb.i:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %pch_gbe_set_rgmii_ctrl.exit

sw.bb2.i:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %pch_gbe_set_rgmii_ctrl.exit

sw.bb3.i:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %pch_gbe_set_rgmii_ctrl.exit

pch_gbe_set_rgmii_ctrl.exit:                      ; preds = %sw.bb3.i, %sw.bb2.i, %sw.bb.i, %if.then12.pch_gbe_set_rgmii_ctrl.exit_crit_edge
  %rgmii.0.i = phi i32 [ 0, %if.then12.pch_gbe_set_rgmii_ctrl.exit_crit_edge ], [ 50331648, %sw.bb3.i ], [ 184549376, %sw.bb2.i ], [ 251658240, %sw.bb.i ]
  %reg.i = getelementptr i8, ptr %t, i32 -272
  %19 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg.i, align 4
  %RGMII_CTRL.i = getelementptr inbounds %struct.pch_gbe_regs, ptr %20, i32 0, i32 28
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RGMII_CTRL.i, i32 %rgmii.0.i) #9, !srcloc !339
  %21 = ptrtoint ptr %link_speed to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %link_speed, align 2
  %23 = ptrtoint ptr %link_duplex to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %link_duplex, align 4
  %25 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %netdev1, align 4
  %27 = zext i16 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.149)
  switch i16 %22, label %pch_gbe_set_rgmii_ctrl.exit.pch_gbe_set_mode.exit_crit_edge [
    i16 10, label %sw.bb.i117
    i16 100, label %sw.bb3.i118
    i16 1000, label %sw.bb5.i
  ]

pch_gbe_set_rgmii_ctrl.exit.pch_gbe_set_mode.exit_crit_edge: ; preds = %pch_gbe_set_rgmii_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %pch_gbe_set_mode.exit

sw.bb.i117:                                       ; preds = %pch_gbe_set_rgmii_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #11
  %tx_queue_len.i = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 107
  %28 = ptrtoint ptr %tx_queue_len.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 10, ptr %tx_queue_len.i, align 16
  br label %pch_gbe_set_mode.exit

sw.bb3.i118:                                      ; preds = %pch_gbe_set_rgmii_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #11
  %tx_queue_len4.i = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 107
  %29 = ptrtoint ptr %tx_queue_len4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 100, ptr %tx_queue_len4.i, align 16
  br label %pch_gbe_set_mode.exit

sw.bb5.i:                                         ; preds = %pch_gbe_set_rgmii_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %pch_gbe_set_mode.exit

pch_gbe_set_mode.exit:                            ; preds = %sw.bb5.i, %sw.bb3.i118, %sw.bb.i117, %pch_gbe_set_rgmii_ctrl.exit.pch_gbe_set_mode.exit_crit_edge
  %mode.0.i = phi i32 [ 0, %pch_gbe_set_rgmii_ctrl.exit.pch_gbe_set_mode.exit_crit_edge ], [ 128, %sw.bb5.i ], [ 0, %sw.bb3.i118 ], [ 0, %sw.bb.i117 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %24)
  %cmp.i = icmp eq i16 %24, 1
  %30 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg.i, align 4
  %MODE.i = getelementptr inbounds %struct.pch_gbe_regs, ptr %31, i32 0, i32 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  call void @arm_heavy_mb() #9
  %32 = or i32 %mode.0.i, 64
  %33 = select i1 %cmp.i, i32 %32, i32 %mode.0.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MODE.i, i32 %33) #9, !srcloc !339
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_watchdog.__UNIQUE_ID_ddebug612, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_watchdog, %if.then39)) #9
          to label %do.end50 [label %if.then39], !srcloc !335

if.then39:                                        ; preds = %pch_gbe_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %link_speed to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %link_speed, align 2
  %conv42 = zext i16 %35 to i32
  %36 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %duplex, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %37)
  %cmp = icmp eq i8 %37, 1
  %cond = select i1 %cmp, ptr @.str.138, ptr @.str.139
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_watchdog.__UNIQUE_ID_ddebug612, ptr noundef %1, ptr noundef nonnull @.str.137, i32 noundef %conv42, ptr noundef nonnull %cond) #9
  br label %do.end50

do.end50:                                         ; preds = %if.then39, %pch_gbe_set_mode.exit
  call void @netif_carrier_on(ptr noundef %1) #9
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %38 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %_tx.i.i, align 128
  call void @netif_tx_wake_queue(ptr noundef %39) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cmd) #9
  br label %if.end82

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.end8.if.else_crit_edge
  %call52 = tail call i32 @mii_link_ok(ptr noundef %mii) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %land.lhs.true54, label %if.else.if.end82_crit_edge

if.else.if.end82_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

land.lhs.true54:                                  ; preds = %if.else
  %state.i120 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %40 = ptrtoint ptr %state.i120 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %state.i120, align 4
  %42 = and i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i121 = icmp eq i32 %42, 0
  br i1 %tobool.not.i121, label %do.body59, label %land.lhs.true54.if.end82_crit_edge

land.lhs.true54.if.end82_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

do.body59:                                        ; preds = %land.lhs.true54
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_watchdog.__UNIQUE_ID_ddebug613, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_watchdog, %if.then71)) #9
          to label %do.end76 [label %if.then71], !srcloc !335

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_watchdog.__UNIQUE_ID_ddebug613, ptr noundef %1, ptr noundef nonnull @.str.140) #9
  br label %do.end76

do.end76:                                         ; preds = %if.then71, %do.body59
  %link_speed78 = getelementptr i8, ptr %t, i32 -202
  %43 = ptrtoint ptr %link_speed78 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 10, ptr %link_speed78, align 2
  %link_duplex80 = getelementptr i8, ptr %t, i32 -200
  %44 = ptrtoint ptr %link_duplex80 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %link_duplex80, align 4
  tail call void @netif_carrier_off(ptr noundef %1) #9
  %_tx.i.i122 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %45 = ptrtoint ptr %_tx.i.i122 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %_tx.i.i122, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %46, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  br label %if.end82

if.end82:                                         ; preds = %do.end76, %land.lhs.true54.if.end82_crit_edge, %if.else.if.end82_crit_edge, %do.end50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %47, 500
  %call83 = call i32 @round_jiffies(i32 noundef %add) #9
  %call84 = call i32 @mod_timer(ptr noundef %t, i32 noundef %call83) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_gbe_reset_task(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -536
  tail call void @rtnl_lock() #9
  tail call void @pch_gbe_down(ptr noundef %add.ptr) #9
  %call.i = tail call i32 @pch_gbe_up(ptr noundef %add.ptr) #9
  tail call void @rtnl_unlock() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pch_gbe_check_options(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pch_gbe_phy_disable_hibernate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pch_gbe_phy_hw_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_gbe_open(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %hw1 = getelementptr i8, ptr %netdev, i32 2640
  %tx_ring = getelementptr i8, ptr %netdev, i32 2976
  %0 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_ring, align 8
  %call2 = tail call i32 @pch_gbe_setup_tx_resources(ptr noundef %add.ptr.i, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.err_setup_tx_crit_edge

entry.err_setup_tx_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_setup_tx

if.end:                                           ; preds = %entry
  %rx_ring = getelementptr i8, ptr %netdev, i32 2980
  %2 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_ring, align 4
  %call3 = tail call i32 @pch_gbe_setup_rx_resources(ptr noundef %add.ptr.i, ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.err_setup_rx_crit_edge

if.end.err_setup_rx_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_setup_rx

if.end6:                                          ; preds = %if.end
  tail call void @pch_gbe_phy_power_up(ptr noundef %hw1) #9
  %call7 = tail call i32 @pch_gbe_up(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.body11, label %err_up

do.body11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_open.__UNIQUE_ID_ddebug636, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_open, %if.then16)) #9
          to label %cleanup [label %if.then16], !srcloc !335

if.then16:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_open.__UNIQUE_ID_ddebug636, ptr noundef %netdev, ptr noundef nonnull @.str.83) #9
  br label %cleanup

err_up:                                           ; preds = %if.end6
  %wake_up_evt = getelementptr i8, ptr %netdev, i32 2964
  %4 = ptrtoint ptr %wake_up_evt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wake_up_evt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool20.not = icmp eq i32 %5, 0
  br i1 %tobool20.not, label %if.then21, label %err_up.if.end22_crit_edge

err_up.if.end22_crit_edge:                        ; preds = %err_up
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then21:                                        ; preds = %err_up
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pch_gbe_phy_power_down(ptr noundef %hw1) #9
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %err_up.if.end22_crit_edge
  %6 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_ring, align 4
  %pdev1.i = getelementptr i8, ptr %netdev, i32 2400
  %8 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev1.i, align 8
  tail call fastcc void @pch_gbe_clean_rx_ring(ptr noundef %add.ptr.i, ptr noundef %7) #9
  %buffer_info.i = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %7, i32 0, i32 9
  %10 = ptrtoint ptr %buffer_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer_info.i, align 4
  tail call void @vfree(ptr noundef %11) #9
  %12 = ptrtoint ptr %buffer_info.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %buffer_info.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %size.i = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %7, i32 0, i32 5
  %13 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size.i, align 4
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %7, align 4
  %dma.i = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %7, i32 0, i32 1
  %17 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %14, ptr noundef %16, i32 noundef %18, i32 noundef 0) #9
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %7, align 4
  br label %err_setup_rx

err_setup_rx:                                     ; preds = %if.end22, %if.end.err_setup_rx_crit_edge
  %err.0 = phi i32 [ %call3, %if.end.err_setup_rx_crit_edge ], [ %call7, %if.end22 ]
  %20 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_ring, align 8
  %pdev1.i44 = getelementptr i8, ptr %netdev, i32 2400
  %22 = ptrtoint ptr %pdev1.i44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev1.i44, align 8
  tail call fastcc void @pch_gbe_clean_tx_ring(ptr noundef %add.ptr.i, ptr noundef %21) #9
  %buffer_info.i45 = getelementptr inbounds %struct.pch_gbe_tx_ring, ptr %21, i32 0, i32 6
  %24 = ptrtoint ptr %buffer_info.i45 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buffer_info.i45, align 4
  tail call void @vfree(ptr noundef %25) #9
  %26 = ptrtoint ptr %buffer_info.i45 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %buffer_info.i45, align 4
  %dev.i46 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %size.i47 = getelementptr inbounds %struct.pch_gbe_tx_ring, ptr %21, i32 0, i32 2
  %27 = ptrtoint ptr %size.i47 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size.i47, align 4
  %29 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %21, align 4
  %dma.i48 = getelementptr inbounds %struct.pch_gbe_tx_ring, ptr %21, i32 0, i32 1
  %31 = ptrtoint ptr %dma.i48 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dma.i48, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i46, i32 noundef %28, ptr noundef %30, i32 noundef %32, i32 noundef 0) #9
  %33 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %21, align 4
  br label %err_setup_tx

err_setup_tx:                                     ; preds = %err_setup_rx, %entry.err_setup_tx_crit_edge
  %err.1 = phi i32 [ %call2, %entry.err_setup_tx_crit_edge ], [ %err.0, %err_setup_rx ]
  tail call void @pch_gbe_reset(ptr noundef %add.ptr.i)
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.84) #12
  br label %cleanup

cleanup:                                          ; preds = %err_setup_tx, %if.then16, %do.body11
  %retval.0 = phi i32 [ %err.1, %err_setup_tx ], [ 0, %if.then16 ], [ 0, %do.body11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_gbe_stop(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  tail call void @pch_gbe_down(ptr noundef %add.ptr.i)
  %wake_up_evt = getelementptr i8, ptr %netdev, i32 2964
  %0 = ptrtoint ptr %wake_up_evt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wake_up_evt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %hw1 = getelementptr i8, ptr %netdev, i32 2640
  tail call void @pch_gbe_phy_power_down(ptr noundef %hw1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tx_ring = getelementptr i8, ptr %netdev, i32 2976
  %2 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_ring, align 8
  %pdev1.i = getelementptr i8, ptr %netdev, i32 2400
  %4 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev1.i, align 8
  tail call fastcc void @pch_gbe_clean_tx_ring(ptr noundef %add.ptr.i, ptr noundef %3) #9
  %buffer_info.i = getelementptr inbounds %struct.pch_gbe_tx_ring, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %buffer_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer_info.i, align 4
  tail call void @vfree(ptr noundef %7) #9
  %8 = ptrtoint ptr %buffer_info.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %buffer_info.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %size.i = getelementptr inbounds %struct.pch_gbe_tx_ring, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size.i, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %dma.i = getelementptr inbounds %struct.pch_gbe_tx_ring, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %10, ptr noundef %12, i32 noundef %14, i32 noundef 0) #9
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %3, align 4
  %rx_ring = getelementptr i8, ptr %netdev, i32 2980
  %16 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_ring, align 4
  %18 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev1.i, align 8
  tail call fastcc void @pch_gbe_clean_rx_ring(ptr noundef %add.ptr.i, ptr noundef %17) #9
  %buffer_info.i9 = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %17, i32 0, i32 9
  %20 = ptrtoint ptr %buffer_info.i9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buffer_info.i9, align 4
  tail call void @vfree(ptr noundef %21) #9
  %22 = ptrtoint ptr %buffer_info.i9 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %buffer_info.i9, align 4
  %dev.i10 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %size.i11 = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %17, i32 0, i32 5
  %23 = ptrtoint ptr %size.i11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size.i11, align 4
  %25 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %17, align 4
  %dma.i12 = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %17, i32 0, i32 1
  %27 = ptrtoint ptr %dma.i12 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma.i12, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i10, i32 noundef %24, ptr noundef %26, i32 noundef %28, i32 noundef 0) #9
  %29 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %17, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_gbe_xmit_frame(ptr noundef %skb, ptr noundef %netdev) #0 align 64 {
entry:
  %shhwtstamps.i.i = alloca %struct.skb_shared_hwtstamps, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ring1 = getelementptr i8, ptr %netdev, i32 2976
  %0 = ptrtoint ptr %tx_ring1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_ring1, align 8
  %next_to_clean = getelementptr inbounds %struct.pch_gbe_tx_ring, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next_to_clean, align 4
  %next_to_use = getelementptr inbounds %struct.pch_gbe_tx_ring, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %next_to_use, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp ugt i32 %3, %5
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %count = getelementptr inbounds %struct.pch_gbe_tx_ring, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %7, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  %add = add i32 %cond, %3
  %.neg = add i32 %5, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %.neg)
  %tobool.not = icmp eq i32 %add, %.neg
  br i1 %tobool.not, label %if.then, label %if.end22, !prof !341

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %9, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_xmit_frame.__UNIQUE_ID_ddebug637, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_xmit_frame, %if.then17)) #9
          to label %cleanup [label %if.then17], !srcloc !335

if.then17:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %next_to_use, align 4
  %12 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %next_to_clean, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_xmit_frame.__UNIQUE_ID_ddebug637, ptr noundef %netdev, ptr noundef nonnull @.str.86, i32 noundef %11, i32 noundef %13) #9
  br label %cleanup

if.end22:                                         ; preds = %cond.end
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %15)
  %cmp.i = icmp ult i32 %15, 64
  %ip_summed243.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %16 = ptrtoint ptr %ip_summed243.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load244.i = load i16, ptr %ip_summed243.i, align 8
  %17 = and i16 %bf.load244.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp3245.i = icmp eq i16 %17, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i, !prof !341

if.end.i:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast.i = select i1 %cmp3245.i, i16 8, i16 0
  br label %if.end59.i

land.lhs.true.i:                                  ; preds = %if.end22
  br i1 %cmp3245.i, label %land.lhs.true.i.if.end59.i_crit_edge, label %if.then19.i

land.lhs.true.i.if.end59.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i

if.then19.i:                                      ; preds = %land.lhs.true.i
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %18 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %19)
  %cmp22.i = icmp eq i16 %19, 2048
  br i1 %cmp22.i, label %if.then24.i, label %if.then19.i.if.end59.i_crit_edge

if.then19.i.if.end59.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i

if.then24.i:                                      ; preds = %if.then19.i
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %20 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %22 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %23 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 %conv.i.i.i
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %24 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i213.i = zext i16 %25 to i32
  %add.ptr.i.i214.i = getelementptr i8, ptr %21, i32 %conv.i.i213.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %26 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i214.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %27 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %protocol26.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %28 = ptrtoint ptr %protocol26.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %protocol26.i, align 1
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.150)
  switch i8 %29, label %if.then24.i.if.end59.i_crit_edge [
    i8 6, label %if.then30.i
    i8 17, label %if.then43.i
  ]

if.then24.i.if.end59.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i

if.then30.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #11
  %31 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %31, align 8
  %check.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i214.i, i32 0, i32 6
  %33 = ptrtoint ptr %check.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %check.i, align 4
  %34 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len.i, align 4
  %sub.i = sub i32 %35, %sub.ptr.sub.i.i
  %call33.i = tail call i32 @skb_checksum(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i, i32 noundef %sub.i, i32 noundef 0) #9
  %36 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call33.i, ptr %31, align 8
  %37 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len.i, align 4
  %sub35.i = sub i32 %38, %sub.ptr.sub.i.i
  %add.i.i.i = add i32 %sub35.i, 6
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 9
  %39 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %daddr.i, align 4
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 8
  %41 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %saddr.i, align 4
  %43 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adcs\09$0, $0, $4\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,r,~{cc}"(i32 %call33.i, i32 %40, i32 %42, i32 %add.i.i.i) #14, !srcloc !347
  %44 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %43) #14, !srcloc !348
  %neg.i.i.i = xor i32 %44, -1
  %shr.i.i.i = lshr i32 %neg.i.i.i, 16
  %conv.i2.i.i = trunc i32 %shr.i.i.i to i16
  %45 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %head.i.i.i, align 8
  %47 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i221.i = zext i16 %48 to i32
  %add.ptr.i.i222.i = getelementptr i8, ptr %46, i32 %conv.i.i221.i
  %check38.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i222.i, i32 0, i32 6
  %49 = ptrtoint ptr %check38.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv.i2.i.i, ptr %check38.i, align 4
  br label %if.end59.i

if.then43.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #11
  %50 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %50, align 8
  %check45.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i214.i, i32 0, i32 3
  %52 = ptrtoint ptr %check45.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %check45.i, align 2
  %53 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len.i, align 4
  %sub47.i = sub i32 %54, %sub.ptr.sub.i.i
  %call48.i = tail call i32 @skb_checksum(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i, i32 noundef %sub47.i, i32 noundef 0) #9
  %55 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call48.i, ptr %50, align 8
  %56 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len.i, align 4
  %sub52.i = sub i32 %57, %sub.ptr.sub.i.i
  %add.i.i227.i = add i32 %sub52.i, 17
  %daddr50.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 9
  %58 = ptrtoint ptr %daddr50.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %daddr50.i, align 4
  %saddr49.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 8
  %60 = ptrtoint ptr %saddr49.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %saddr49.i, align 4
  %62 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adcs\09$0, $0, $4\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,r,~{cc}"(i32 %call48.i, i32 %59, i32 %61, i32 %add.i.i227.i) #14, !srcloc !347
  %63 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %62) #14, !srcloc !348
  %neg.i.i233.i = xor i32 %63, -1
  %shr.i.i234.i = lshr i32 %neg.i.i233.i, 16
  %conv.i2.i235.i = trunc i32 %shr.i.i234.i to i16
  %64 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %head.i.i.i, align 8
  %66 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i239.i = zext i16 %67 to i32
  %add.ptr.i.i240.i = getelementptr i8, ptr %65, i32 %conv.i.i239.i
  %check55.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i240.i, i32 0, i32 3
  %68 = ptrtoint ptr %check55.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv.i2.i235.i, ptr %check55.i, align 2
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then43.i, %if.then30.i, %if.then24.i.if.end59.i_crit_edge, %if.then19.i.if.end59.i_crit_edge, %land.lhs.true.i.if.end59.i_crit_edge, %if.end.i
  %frame_ctrl.2.i = phi i16 [ 9, %if.then19.i.if.end59.i_crit_edge ], [ 9, %land.lhs.true.i.if.end59.i_crit_edge ], [ %phi.cast.i, %if.end.i ], [ 9, %if.then24.i.if.end59.i_crit_edge ], [ 9, %if.then43.i ], [ 9, %if.then30.i ]
  %69 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %next_to_use, align 4
  %add.i = add i32 %70, 1
  %count.i = getelementptr inbounds %struct.pch_gbe_tx_ring, ptr %1, i32 0, i32 3
  %71 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %72)
  %cmp60.i = icmp eq i32 %add.i, %72
  %.add.i = select i1 %cmp60.i, i32 0, i32 %add.i, !prof !341
  %73 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %.add.i, ptr %next_to_use, align 4
  %buffer_info74.i = getelementptr inbounds %struct.pch_gbe_tx_ring, ptr %1, i32 0, i32 6
  %74 = ptrtoint ptr %buffer_info74.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %buffer_info74.i, align 4
  %arrayidx.i = getelementptr %struct.pch_gbe_buffer, ptr %75, i32 %70
  %76 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %77, i32 0, i32 19
  %78 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data.i, align 4
  %data76.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %80 = ptrtoint ptr %data76.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %data76.i, align 4
  %82 = call ptr @memcpy(ptr %79, ptr %81, i32 14)
  %83 = load ptr, ptr %data.i, align 4
  %arrayidx78.i = getelementptr i8, ptr %83, i32 14
  %84 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %arrayidx78.i, align 1
  %85 = load ptr, ptr %data.i, align 4
  %arrayidx80.i = getelementptr i8, ptr %85, i32 15
  %86 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %arrayidx80.i, align 1
  %87 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %len.i, align 4
  %len82.i = getelementptr inbounds %struct.sk_buff, ptr %77, i32 0, i32 6
  %89 = ptrtoint ptr %len82.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %len82.i, align 4
  %90 = load ptr, ptr %data.i, align 4
  %arrayidx84.i = getelementptr i8, ptr %90, i32 16
  %91 = load ptr, ptr %data76.i, align 4
  %arrayidx86.i = getelementptr i8, ptr %91, i32 14
  %92 = load i32, ptr %len.i, align 4
  %sub88.i = add i32 %92, -14
  %93 = call ptr @memcpy(ptr %arrayidx84.i, ptr %arrayidx86.i, i32 %sub88.i)
  %94 = load i32, ptr %len82.i, align 4
  %conv90.i = trunc i32 %94 to i16
  %length.i = getelementptr %struct.pch_gbe_buffer, ptr %75, i32 %70, i32 4
  %95 = ptrtoint ptr %length.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %conv90.i, ptr %length.i, align 4
  %pdev.i = getelementptr i8, ptr %netdev, i32 2400
  %96 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %97, i32 0, i32 44
  %98 = load ptr, ptr %data.i, align 4
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %98) #9
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end59.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !342

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev.i) #9
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %97, i32 0, i32 44, i32 3
  %99 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %100, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %101 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %102, %if.end.i.i.i ], [ %100, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.47, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #9
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv93.i = and i32 %94, 65535
  tail call void @debug_dma_map_single(ptr noundef %dev.i, ptr noundef %98, i32 noundef %conv93.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %103 = load ptr, ptr @mem_map, align 4
  %104 = ptrtoint ptr %98 to i32
  %sub.i.i = add i32 %104, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %103, i32 %shr.i.i
  %and.i.i = and i32 %104, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %conv93.i, i32 noundef 1, i32 noundef 0) #9
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %dma.i = getelementptr %struct.pch_gbe_buffer, ptr %75, i32 %70, i32 1
  %105 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %retval.0.i.i, ptr %dma.i, align 4
  %106 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pdev.i, align 8
  %dev96.i = getelementptr inbounds %struct.pci_dev, ptr %107, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev96.i, i32 noundef %retval.0.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i, label %if.then100.i, label %if.end103.i

if.then100.i:                                     ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %netdev.i = getelementptr i8, ptr %netdev, i32 2396
  %108 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %netdev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %109, ptr noundef nonnull @.str.87) #12
  %110 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %dma.i, align 4
  %time_stamp.i = getelementptr %struct.pch_gbe_buffer, ptr %75, i32 %70, i32 3
  %111 = ptrtoint ptr %time_stamp.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %time_stamp.i, align 4
  %112 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %70, ptr %next_to_use, align 4
  br label %cleanup

if.end103.i:                                      ; preds = %dma_map_single_attrs.exit.i
  %mapped.i = getelementptr %struct.pch_gbe_buffer, ptr %75, i32 %70, i32 5
  %113 = ptrtoint ptr %mapped.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 1, ptr %mapped.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %114 = load volatile i32, ptr @jiffies, align 128
  %time_stamp104.i = getelementptr %struct.pch_gbe_buffer, ptr %75, i32 %70, i32 3
  %115 = ptrtoint ptr %time_stamp104.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %time_stamp104.i, align 4
  %116 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %1, align 4
  %arrayidx105.i = getelementptr %struct.pch_gbe_tx_desc, ptr %117, i32 %70
  %118 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %dma.i, align 4
  %120 = ptrtoint ptr %arrayidx105.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %arrayidx105.i, align 4
  %121 = ptrtoint ptr %len82.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %len82.i, align 4
  %conv108.i = trunc i32 %122 to i16
  %length109.i = getelementptr %struct.pch_gbe_tx_desc, ptr %117, i32 %70, i32 1
  %123 = ptrtoint ptr %length109.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %conv108.i, ptr %length109.i, align 4
  %124 = load i32, ptr %len82.i, align 4
  %125 = trunc i32 %124 to i16
  %conv112.i = add i16 %125, 3
  %tx_words_eob.i = getelementptr %struct.pch_gbe_tx_desc, ptr %117, i32 %70, i32 3
  %126 = ptrtoint ptr %tx_words_eob.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %conv112.i, ptr %tx_words_eob.i, align 4
  %tx_frame_ctrl.i = getelementptr %struct.pch_gbe_tx_desc, ptr %117, i32 %70, i32 4
  %127 = ptrtoint ptr %tx_frame_ctrl.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %frame_ctrl.2.i, ptr %tx_frame_ctrl.i, align 2
  %gbec_status.i = getelementptr %struct.pch_gbe_tx_desc, ptr %117, i32 %70, i32 7
  %128 = ptrtoint ptr %gbec_status.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 -16384, ptr %gbec_status.i, align 2
  %129 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %130)
  %cmp115.i = icmp eq i32 %add.i, %130
  br i1 %cmp115.i, label %if.then123.i, label %if.end103.i.if.end124.i_crit_edge, !prof !341

if.end103.i.if.end124.i_crit_edge:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124.i

if.then123.i:                                     ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124.i

if.end124.i:                                      ; preds = %if.then123.i, %if.end103.i.if.end124.i_crit_edge
  %ring_num.0.i = phi i32 [ 0, %if.then123.i ], [ %add.i, %if.end103.i.if.end124.i_crit_edge ]
  %dma125.i = getelementptr inbounds %struct.pch_gbe_tx_ring, ptr %1, i32 0, i32 1
  %131 = ptrtoint ptr %dma125.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %dma125.i, align 4
  %mul.i = shl i32 %ring_num.0.i, 4
  %add126.i = add i32 %132, %mul.i
  %reg.i = getelementptr i8, ptr %netdev, i32 2644
  %133 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %reg.i, align 4
  %TX_DSC_SW_P.i = getelementptr inbounds %struct.pch_gbe_regs, ptr %134, i32 0, i32 42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  %135 = tail call i32 @llvm.bswap.i32(i32 %add126.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TX_DSC_SW_P.i, i32 %135) #9, !srcloc !339
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %shhwtstamps.i.i) #9
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %136 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %end.i.i.i, align 4
  %tx_flags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %137, i32 0, i32 3
  %138 = ptrtoint ptr %tx_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %tx_flags.i.i, align 1
  %140 = and i8 %139, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool.not.i.i = icmp eq i8 %140, 0
  br i1 %tobool.not.i.i, label %if.end124.i.pch_tx_timestamp.exit.i_crit_edge, label %land.rhs.i241.i

if.end124.i.pch_tx_timestamp.exit.i_crit_edge:    ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pch_tx_timestamp.exit.i

land.rhs.i241.i:                                  ; preds = %if.end124.i
  %hwts_tx_en.i.i = getelementptr i8, ptr %netdev, i32 2996
  %141 = ptrtoint ptr %hwts_tx_en.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %hwts_tx_en.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool1.i.i = icmp eq i32 %142, 0
  br i1 %tobool1.i.i, label %land.rhs.i241.i.pch_tx_timestamp.exit.i_crit_edge, label %if.end.i.i, !prof !342

land.rhs.i241.i.pch_tx_timestamp.exit.i_crit_edge: ; preds = %land.rhs.i241.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pch_tx_timestamp.exit.i

if.end.i.i:                                       ; preds = %land.rhs.i241.i
  %143 = or i8 %139, 4
  %144 = ptrtoint ptr %tx_flags.i.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %143, ptr %tx_flags.i.i, align 1
  %ptp_pdev.i.i = getelementptr i8, ptr %netdev, i32 3004
  %145 = ptrtoint ptr %ptp_pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ptp_pdev.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end13.i.i.for.body.i.i_crit_edge, %if.end.i.i
  %cnt.037.i.i = phi i32 [ 0, %if.end.i.i ], [ %inc.i.i, %if.end13.i.i.for.body.i.i_crit_edge ]
  %call9.i.i = tail call i32 @pch_ch_event_read(ptr noundef %146) #9
  %and10.i.i = and i32 %call9.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.end13.i.i, label %if.end21.i.i

if.end13.i.i:                                     ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %147 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %147(i32 noundef 214748) #9
  %inc.i.i = add nuw nsw i32 %cnt.037.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 100
  br i1 %exitcond.not.i.i, label %if.then16.i.i, label %if.end13.i.i.for.body.i.i_crit_edge

if.end13.i.i.for.body.i.i_crit_edge:              ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

if.then16.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %148 = ptrtoint ptr %tx_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %tx_flags.i.i, align 1
  %150 = and i8 %149, -5
  store i8 %150, ptr %tx_flags.i.i, align 1
  br label %pch_tx_timestamp.exit.i

if.end21.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call22.i.i = tail call i64 @pch_tx_snap_read(ptr noundef %146) #9
  %151 = ptrtoint ptr %shhwtstamps.i.i to i32
  call void @__asan_store8_noabort(i32 %151)
  store i64 %call22.i.i, ptr %shhwtstamps.i.i, align 8
  call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef nonnull %shhwtstamps.i.i) #9
  call void @pch_ch_event_write(ptr noundef %146, i32 noundef 1) #9
  br label %pch_tx_timestamp.exit.i

pch_tx_timestamp.exit.i:                          ; preds = %if.end21.i.i, %if.then16.i.i, %land.rhs.i241.i.pch_tx_timestamp.exit.i_crit_edge, %if.end124.i.pch_tx_timestamp.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %shhwtstamps.i.i) #9
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %pch_tx_timestamp.exit.i, %if.then100.i, %if.then17, %if.then
  %retval.0 = phi i32 [ 16, %if.then17 ], [ 16, %if.then ], [ 0, %if.then100.i ], [ 0, %pch_tx_timestamp.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_gbe_set_mac(ptr noundef %netdev, ptr noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %addr, i32 0, i32 1
  %0 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sa_data, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.do.body13_crit_edge

entry.do.body13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body13

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %addr, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %or.i.i = or i32 %1, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.do.body13_crit_edge, label %if.else

is_valid_ether_addr.exit.do.body13_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body13

if.else:                                          ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dev_addr_mod(ptr noundef %netdev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #9
  %hw = getelementptr i8, ptr %netdev, i32 2640
  %mac = getelementptr i8, ptr %netdev, i32 2692
  %addr_len = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 56
  %5 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %addr_len, align 1
  %conv = zext i8 %6 to i32
  %7 = call ptr @memcpy(ptr %mac, ptr %sa_data, i32 %conv)
  tail call fastcc void @pch_gbe_mac_mar_set(ptr noundef %hw, ptr noundef %mac, i32 noundef 0)
  br label %do.body13

do.body13:                                        ; preds = %if.else, %is_valid_ether_addr.exit.do.body13_crit_edge, %entry.do.body13_crit_edge
  %ret_val.0 = phi i32 [ 0, %if.else ], [ -99, %is_valid_ether_addr.exit.do.body13_crit_edge ], [ -99, %entry.do.body13_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_set_mac.__UNIQUE_ID_ddebug640, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_set_mac, %if.then17)) #9
          to label %do.body22 [label %if.then17], !srcloc !335

if.then17:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_set_mac.__UNIQUE_ID_ddebug640, ptr noundef %netdev, ptr noundef nonnull @.str.89, i32 noundef %ret_val.0) #9
  br label %do.body22

do.body22:                                        ; preds = %if.then17, %do.body13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_set_mac.__UNIQUE_ID_ddebug641, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_set_mac, %if.then34)) #9
          to label %do.body41 [label %if.then34], !srcloc !335

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 86
  %8 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_addr, align 64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_set_mac.__UNIQUE_ID_ddebug641, ptr noundef %netdev, ptr noundef nonnull @.str.90, ptr noundef %9) #9
  br label %do.body41

do.body41:                                        ; preds = %if.then34, %do.body22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_set_mac.__UNIQUE_ID_ddebug642, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_set_mac, %if.then53)) #9
          to label %do.body64 [label %if.then53], !srcloc !335

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #11
  %mac55 = getelementptr i8, ptr %netdev, i32 2692
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_set_mac.__UNIQUE_ID_ddebug642, ptr noundef %netdev, ptr noundef nonnull @.str.91, ptr noundef %mac55) #9
  br label %do.body64

do.body64:                                        ; preds = %if.then53, %do.body41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_set_mac.__UNIQUE_ID_ddebug643, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_set_mac, %if.then76)) #9
          to label %do.end88 [label %if.then76], !srcloc !335

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #11
  %reg = getelementptr i8, ptr %netdev, i32 2644
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg, align 4
  %mac_adr = getelementptr inbounds %struct.pch_gbe_regs, ptr %11, i32 0, i32 23
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mac_adr) #9, !srcloc !336
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg, align 4
  %low = getelementptr inbounds %struct.pch_gbe_regs, ptr %15, i32 0, i32 23, i32 0, i32 1
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %low) #9, !srcloc !336
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_set_mac.__UNIQUE_ID_ddebug643, ptr noundef %netdev, ptr noundef nonnull @.str.92, i32 noundef %13, i32 noundef %17) #9
  br label %do.end88

do.end88:                                         ; preds = %if.then76, %do.body64
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_gbe_ioctl(ptr noundef %netdev, ptr noundef %ifr, i32 noundef %cmd) #0 align 64 {
entry:
  %cfg.i = alloca %struct.hwtstamp_config, align 4
  %station.i = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_ioctl.__UNIQUE_ID_ddebug645, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_ioctl, %if.then)) #9
          to label %do.end6 [label %if.then], !srcloc !335

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_ioctl.__UNIQUE_ID_ddebug645, ptr noundef %netdev, ptr noundef nonnull @.str.94, i32 noundef %cmd) #9
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 35248, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 35248
  br i1 %cmp, label %if.then7, label %if.end9

if.then7:                                         ; preds = %do.end6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cfg.i) #9
  %0 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cfg.i, align 4, !annotation !349
  %1 = getelementptr inbounds %struct.hwtstamp_config, ptr %cfg.i, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !349
  %3 = getelementptr inbounds %struct.hwtstamp_config, ptr %cfg.i, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !349
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %station.i) #9
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %5 = call ptr @memset(ptr %station.i, i32 255, i32 20)
  %6 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ifr_ifru.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.99, i32 noundef 156) #9
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i, label %if.then7.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then7.if.then11.i.i.i_crit_edge:               ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then7
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %7, i32 12, i32 -1226833920) #14, !srcloc !350
  %asmresult.i.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !342

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cfg.i, i32 noundef 12) #9
  %9 = call i32 @llvm.read_register.i32(metadata !325) #9
  %and.i.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #8, !srcloc !351
  %and.i.i.i.i.i = and i32 %11, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #9, !srcloc !352
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !353
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cfg.i, ptr noundef %7, i32 noundef 12) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #9, !srcloc !352
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !353
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !342

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.then7.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 12, %if.then7.if.then11.i.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 12, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %cfg.i, i32 %sub.i.i.i
  %12 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  br label %hwtstamp_ioctl.exit

if.end.i:                                         ; preds = %if.end.i.i.i
  %ptp_pdev.i = getelementptr i8, ptr %netdev, i32 3004
  %13 = ptrtoint ptr %ptp_pdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ptp_pdev.i, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %switch.i = icmp ult i32 %16, 2
  br i1 %switch.i, label %if.end5.i, label %if.end.i.hwtstamp_ioctl.exit_crit_edge

if.end.i.hwtstamp_ioctl.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hwtstamp_ioctl.exit

if.end5.i:                                        ; preds = %if.end.i
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %3, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %18, label %if.end5.i.hwtstamp_ioctl.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 4, label %sw.bb6.i
    i32 5, label %sw.bb8.i
    i32 6, label %sw.bb10.i
    i32 9, label %sw.bb15.i
  ]

if.end5.i.hwtstamp_ioctl.exit_crit_edge:          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hwtstamp_ioctl.exit

sw.bb.i:                                          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %hwts_rx_en.i = getelementptr i8, ptr %netdev, i32 3000
  %20 = ptrtoint ptr %hwts_rx_en.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %hwts_rx_en.i, align 8
  br label %if.then.i4.i

sw.bb6.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %hwts_rx_en7.i = getelementptr i8, ptr %netdev, i32 3000
  %21 = ptrtoint ptr %hwts_rx_en7.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %hwts_rx_en7.i, align 8
  call void @pch_ch_control_write(ptr noundef %14, i32 noundef 0) #9
  br label %if.then.i4.i

sw.bb8.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %hwts_rx_en9.i = getelementptr i8, ptr %netdev, i32 3000
  %22 = ptrtoint ptr %hwts_rx_en9.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %hwts_rx_en9.i, align 8
  call void @pch_ch_control_write(ptr noundef %14, i32 noundef 1) #9
  br label %if.then.i4.i

sw.bb10.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %hwts_rx_en11.i = getelementptr i8, ptr %netdev, i32 3000
  %23 = ptrtoint ptr %hwts_rx_en11.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %hwts_rx_en11.i, align 8
  call void @pch_ch_control_write(ptr noundef %14, i32 noundef -2147352576) #9
  %24 = call ptr @memcpy(ptr %station.i, ptr @.str.95, i32 18)
  %call14.i = call i32 @pch_set_station_address(ptr noundef nonnull %station.i, ptr noundef %14) #9
  br label %if.then.i4.i

sw.bb15.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %hwts_rx_en16.i = getelementptr i8, ptr %netdev, i32 3000
  %25 = ptrtoint ptr %hwts_rx_en16.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %hwts_rx_en16.i, align 8
  call void @pch_ch_control_write(ptr noundef %14, i32 noundef -2147352576) #9
  %26 = call ptr @memcpy(ptr %station.i, ptr @.str.96, i32 18)
  %call20.i = call i32 @pch_set_station_address(ptr noundef nonnull %station.i, ptr noundef %14) #9
  br label %if.then.i4.i

if.then.i4.i:                                     ; preds = %sw.bb15.i, %sw.bb10.i, %sw.bb8.i, %sw.bb6.i, %sw.bb.i
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp22.i = icmp eq i32 %28, 1
  %conv.i = zext i1 %cmp22.i to i32
  %hwts_tx_en.i = getelementptr i8, ptr %netdev, i32 2996
  %29 = ptrtoint ptr %hwts_tx_en.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv.i, ptr %hwts_tx_en.i, align 4
  call void @pch_ch_event_write(ptr noundef %14, i32 noundef 3) #9
  %30 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ifr_ifru.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.99, i32 noundef 174) #9
  %call.i.i3.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i3.i, label %if.then.i4.i.hwtstamp_ioctl.exit_crit_edge, label %if.end.i.i7.i

if.then.i4.i.hwtstamp_ioctl.exit_crit_edge:       ; preds = %if.then.i4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hwtstamp_ioctl.exit

if.end.i.i7.i:                                    ; preds = %if.then.i4.i
  %32 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %31, i32 12, i32 -1226833920) #14, !srcloc !354
  %asmresult.i.i5.i = extractvalue { i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i5.i)
  %cmp.i.i6.i = icmp eq i32 %asmresult.i.i5.i, 0
  br i1 %cmp.i.i6.i, label %copy_to_user.exit.i, label %if.end.i.i7.i.hwtstamp_ioctl.exit_crit_edge

if.end.i.i7.i.hwtstamp_ioctl.exit_crit_edge:      ; preds = %if.end.i.i7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hwtstamp_ioctl.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i7.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i8.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %cfg.i, i32 noundef 12) #9
  %call.i1.i.i.i = call i32 @arm_copy_to_user(ptr noundef %31, ptr noundef nonnull %cfg.i, i32 noundef 12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i)
  %tobool25.not.i = icmp eq i32 %call.i1.i.i.i, 0
  %spec.select.i = select i1 %tobool25.not.i, i32 0, i32 -14
  br label %hwtstamp_ioctl.exit

hwtstamp_ioctl.exit:                              ; preds = %copy_to_user.exit.i, %if.end.i.i7.i.hwtstamp_ioctl.exit_crit_edge, %if.then.i4.i.hwtstamp_ioctl.exit_crit_edge, %if.end5.i.hwtstamp_ioctl.exit_crit_edge, %if.end.i.hwtstamp_ioctl.exit_crit_edge, %if.then11.i.i.i
  %retval.0.i18 = phi i32 [ -34, %if.end.i.hwtstamp_ioctl.exit_crit_edge ], [ -34, %if.end5.i.hwtstamp_ioctl.exit_crit_edge ], [ -14, %if.then11.i.i.i ], [ -14, %if.then.i4.i.hwtstamp_ioctl.exit_crit_edge ], [ -14, %if.end.i.i7.i.hwtstamp_ioctl.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %station.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cfg.i) #9
  br label %cleanup

if.end9:                                          ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  %mii = getelementptr i8, ptr %netdev, i32 2884
  %ifr_ifru.i19 = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %call11 = tail call i32 @generic_mii_ioctl(ptr noundef %mii, ptr noundef %ifr_ifru.i19, i32 noundef %cmd, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %hwtstamp_ioctl.exit
  %retval.0 = phi i32 [ %retval.0.i18, %hwtstamp_ioctl.exit ], [ %call11, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_gbe_change_mtu(ptr noundef %netdev, i32 noundef %new_mtu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %add1 = add i32 %new_mtu, 18
  %rx_buffer_len = getelementptr i8, ptr %netdev, i32 2984
  %0 = ptrtoint ptr %rx_buffer_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_buffer_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %add1)
  %cmp = icmp slt i32 %add1, 2049
  br i1 %cmp, label %entry.if.end13_crit_edge, label %if.else

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %add1)
  %cmp3 = icmp ult i32 %add1, 4097
  br i1 %cmp3, label %if.else.if.end13_crit_edge, label %if.else6

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 8193, i32 %add1)
  %cmp7 = icmp ult i32 %add1, 8193
  %. = select i1 %cmp7, i32 8192, i32 10368
  br label %if.end13

if.end13:                                         ; preds = %if.else6, %if.else.if.end13_crit_edge, %entry.if.end13_crit_edge
  %.sink = phi i32 [ 2048, %entry.if.end13_crit_edge ], [ 4096, %if.else.if.end13_crit_edge ], [ %., %if.else6 ]
  %2 = ptrtoint ptr %rx_buffer_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %.sink, ptr %rx_buffer_len, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.else22, label %if.then15

if.then15:                                        ; preds = %if.end13
  tail call void @pch_gbe_down(ptr noundef %add.ptr.i)
  %call16 = tail call i32 @pch_gbe_up(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.then15.do.body28_crit_edge, label %if.then17

if.then15.do.body28_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body28

if.then17:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %rx_buffer_len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %rx_buffer_len, align 8
  %call19 = tail call i32 @pch_gbe_up(ptr noundef %add.ptr.i)
  br label %cleanup

if.else22:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pch_gbe_reset(ptr noundef %add.ptr.i)
  br label %do.body28

do.body28:                                        ; preds = %if.else22, %if.then15.do.body28_crit_edge
  %mtu23 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 20
  %6 = ptrtoint ptr %mtu23 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %new_mtu, ptr %mtu23, align 4
  %max_frame_size26 = getelementptr i8, ptr %netdev, i32 2704
  %7 = ptrtoint ptr %max_frame_size26 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add1, ptr %max_frame_size26, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_change_mtu.__UNIQUE_ID_ddebug644, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_change_mtu, %if.then33)) #9
          to label %cleanup [label %if.then33], !srcloc !335

if.then33:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %rx_buffer_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_buffer_len, align 8
  %mtu35 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 20
  %10 = ptrtoint ptr %mtu35 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mtu35, align 4
  %max_frame_size38 = getelementptr i8, ptr %netdev, i32 2704
  %12 = ptrtoint ptr %max_frame_size38 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_frame_size38, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_change_mtu.__UNIQUE_ID_ddebug644, ptr noundef %netdev, ptr noundef nonnull @.str.101, i32 noundef %add1, i32 noundef %9, i32 noundef %11, i32 noundef %13) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %do.body28, %if.then17
  %retval.0 = phi i32 [ %call16, %if.then17 ], [ 0, %if.then33 ], [ 0, %do.body28 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_gbe_tx_timeout(ptr noundef %netdev, i32 noundef %txqueue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_timeout_count = getelementptr i8, ptr %netdev, i32 2804
  %0 = ptrtoint ptr %tx_timeout_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_timeout_count, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %tx_timeout_count, align 4
  %reset_task = getelementptr i8, ptr %netdev, i32 2840
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %reset_task) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_gbe_netpoll(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr i8, ptr %netdev, i32 2404
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %1) #9
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call2 = tail call i32 @pch_gbe_intr(i32 noundef %3, ptr noundef %netdev)
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_gbe_set_features(ptr noundef %netdev, i64 noundef %features) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %features1 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 23
  %0 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features1, align 16
  %xor = xor i64 %1, %features
  %and = and i64 %xor, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pch_gbe_down(ptr noundef %add.ptr.i) #9
  %call.i = tail call i32 @pch_gbe_up(ptr noundef %add.ptr.i) #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pch_gbe_reset(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then3, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pch_gbe_phy_power_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pch_gbe_phy_power_down(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pch_ch_event_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @pch_tx_snap_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pch_ch_event_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_mii_ioctl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pch_ch_control_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pch_set_station_address(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_gbe_clean_rx(ptr noundef %adapter, ptr nocapture noundef %rx_ring, ptr nocapture noundef %work_done, i32 noundef %work_to_do) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 4
  %next_to_clean = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %rx_ring, i32 0, i32 8
  %2 = ptrtoint ptr %work_done to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %work_done, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %work_to_do)
  %cmp6 = icmp slt i32 %3, %work_to_do
  br i1 %cmp6, label %while.body.lr.ph, label %entry.if.end138_crit_edge

entry.if.end138_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138

while.body.lr.ph:                                 ; preds = %entry
  %4 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %next_to_clean, align 4
  %pdev2 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 4
  %6 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev2, align 8
  %buffer_info10 = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %rx_ring, i32 0, i32 9
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %rx_frame_errors = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 9, i32 11
  %rx_crc_errors = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 9, i32 10
  %stats71 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 9
  %rx_bytes = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 9, i32 2
  %multicast = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 9, i32 8
  %hwts_rx_en.i = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 22
  %ptp_pdev.i = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 23
  %napi = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 7
  %count = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %rx_ring, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %if.end129.while.body_crit_edge, %while.body.lr.ph
  %cleaned_count.09 = phi i32 [ 0, %while.body.lr.ph ], [ %cleaned_count.1, %if.end129.while.body_crit_edge ]
  %i.07 = phi i32 [ %5, %while.body.lr.ph ], [ %spec.store.select, %if.end129.while.body_crit_edge ]
  %8 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_ring, align 4
  %gbec_status3 = getelementptr %struct.pch_gbe_rx_desc, ptr %9, i32 %i.07, i32 3
  %10 = ptrtoint ptr %gbec_status3 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %gbec_status3, align 2
  %conv = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16384, i16 %11)
  %cmp4 = icmp eq i16 %11, -16384
  br i1 %cmp4, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end:                                           ; preds = %while.body
  %inc = add nuw nsw i32 %cleaned_count.09, 1
  %dma_status6 = getelementptr %struct.pch_gbe_rx_desc, ptr %9, i32 %i.07, i32 4
  %12 = ptrtoint ptr %dma_status6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dma_status6, align 4
  %tcp_ip_status8 = getelementptr %struct.pch_gbe_rx_desc, ptr %9, i32 %i.07, i32 1
  %14 = ptrtoint ptr %tcp_ip_status8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tcp_ip_status8, align 4
  %16 = ptrtoint ptr %gbec_status3 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -16384, ptr %gbec_status3, align 2
  %17 = ptrtoint ptr %buffer_info10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buffer_info10, align 4
  %arrayidx11 = getelementptr %struct.pch_gbe_buffer, ptr %18, i32 %i.07
  %19 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx11, align 4
  store ptr null, ptr %arrayidx11, align 4
  %dma = getelementptr %struct.pch_gbe_buffer, ptr %18, i32 %i.07, i32 1
  %21 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma, align 4
  %length14 = getelementptr %struct.pch_gbe_buffer, ptr %18, i32 %i.07, i32 4
  %23 = ptrtoint ptr %length14 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %length14, align 4
  %conv15 = zext i16 %24 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %22, i32 noundef %conv15, i32 noundef 2, i32 noundef 0) #9
  %mapped = getelementptr %struct.pch_gbe_buffer, ptr %18, i32 %i.07, i32 5
  %25 = ptrtoint ptr %mapped to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %mapped, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_clean_rx.__UNIQUE_ID_ddebug630, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_clean_rx, %if.then19)) #9
          to label %do.end24 [label %if.then19], !srcloc !335

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv20 = zext i8 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_clean_rx.__UNIQUE_ID_ddebug630, ptr noundef %1, ptr noundef nonnull @.str.106, i32 noundef %i.07, i32 noundef %conv20, i32 noundef %conv, i32 noundef %15, ptr noundef %arrayidx11) #9
  br label %do.end24

do.end24:                                         ; preds = %if.then19, %if.end
  %and = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %if.else, label %if.then33, !prof !342

if.then33:                                        ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_frame_errors, align 4
  %inc34 = add i32 %27, 1
  store i32 %inc34, ptr %rx_frame_errors, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.107) #12
  br label %if.end119

if.else:                                          ; preds = %do.end24
  %and36 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.else48, label %if.then44, !prof !342

if.then44:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_frame_errors, align 4
  %inc47 = add i32 %29, 1
  store i32 %inc47, ptr %rx_frame_errors, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.108) #12
  br label %if.end119

if.else48:                                        ; preds = %if.else
  %and50 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.else61, label %if.then58, !prof !342

if.then58:                                        ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_crc_errors, align 4
  %inc60 = add i32 %31, 1
  store i32 %inc60, ptr %rx_crc_errors, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.109) #12
  br label %if.end119

if.else61:                                        ; preds = %if.else48
  %rx_words_eob = getelementptr %struct.pch_gbe_rx_desc, ptr %9, i32 %i.07, i32 2
  %32 = ptrtoint ptr %rx_words_eob to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %rx_words_eob, align 4
  %conv62 = zext i16 %33 to i32
  %and66 = and i32 %conv62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  %spec.select.v = select i1 %tobool67.not, i32 -7, i32 -11
  %spec.select = add nsw i32 %spec.select.v, %conv62
  %data = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 19
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 4
  %rx_buffer = getelementptr %struct.pch_gbe_buffer, ptr %18, i32 %i.07, i32 2
  %36 = ptrtoint ptr %rx_buffer to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rx_buffer, align 4
  %38 = call ptr @memcpy(ptr %35, ptr %37, i32 %spec.select)
  %39 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rx_bytes, align 4
  %add = add i32 %spec.select, %40
  store i32 %add, ptr %rx_bytes, align 4
  %41 = ptrtoint ptr %stats71 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %stats71, align 4
  %inc73 = add i32 %42, 1
  store i32 %inc73, ptr %stats71, align 4
  %and75 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.else61.if.end80_crit_edge, label %if.then77

if.else61.if.end80_crit_edge:                     ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then77:                                        ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %multicast to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %multicast, align 4
  %inc79 = add i32 %44, 1
  store i32 %inc79, ptr %multicast, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then77, %if.else61.if.end80_crit_edge
  %call81 = tail call ptr @skb_put(ptr noundef %20, i32 noundef %spec.select) #9
  %45 = ptrtoint ptr %hwts_rx_en.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %hwts_rx_en.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i = icmp eq i32 %46, 0
  br i1 %tobool.not.i, label %if.end80.pch_rx_timestamp.exit_crit_edge, label %if.end.i

if.end80.pch_rx_timestamp.exit_crit_edge:         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %pch_rx_timestamp.exit

if.end.i:                                         ; preds = %if.end80
  %47 = ptrtoint ptr %ptp_pdev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ptp_pdev.i, align 4
  %call.i = tail call i32 @pch_ch_event_read(ptr noundef %48) #9
  %and.i = and i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i.pch_rx_timestamp.exit_crit_edge, label %if.end3.i

if.end.i.pch_rx_timestamp.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pch_rx_timestamp.exit

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = tail call i32 @pch_src_uuid_lo_read(ptr noundef %48) #9
  %call5.i = tail call i32 @pch_src_uuid_hi_read(ptr noundef %48) #9
  %conv.i = trunc i32 %call5.i to i16
  %shr.i = lshr i32 %call5.i, 16
  %conv6.i = trunc i32 %shr.i to i16
  %49 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data, align 4
  %call.i.i = tail call i32 @ptp_classify_raw(ptr noundef %20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end3.i.out.i_crit_edge, label %if.end.i.i

if.end3.i.out.i_crit_edge:                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end.i.i:                                       ; preds = %if.end3.i
  %add.ptr.i.i = getelementptr i8, ptr %50, i32 14
  %51 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load.i.i = load i8, ptr %add.ptr.i.i, align 4
  %bf.clear.i.i = shl i8 %bf.load.i.i, 2
  %52 = and i8 %bf.clear.i.i, 60
  %narrow.i.i = add nuw nsw i8 %52, 22
  %add2.i.i = zext i8 %narrow.i.i to i32
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 6
  %53 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len.i.i, align 4
  %add4.i.i = add nuw nsw i32 %add2.i.i, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %add4.i.i)
  %cmp5.i.i = icmp ult i32 %54, %add4.i.i
  br i1 %cmp5.i.i, label %if.end.i.i.out.i_crit_edge, label %pch_ptp_match.exit.i

if.end.i.i.out.i_crit_edge:                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

pch_ptp_match.exit.i:                             ; preds = %if.end.i.i
  %add.ptr9.i.i = getelementptr i8, ptr %50, i32 %add2.i.i
  %add.ptr10.i.i = getelementptr i8, ptr %add.ptr9.i.i, i32 22
  %55 = ptrtoint ptr %add.ptr10.i.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %56 = load i16, ptr %add.ptr10.i.i, align 1
  %add.ptr15.i.i = getelementptr i8, ptr %add.ptr10.i.i, i32 2
  %57 = ptrtoint ptr %add.ptr15.i.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %add.ptr15.i.i, align 1
  %add.ptr18.i.i = getelementptr i8, ptr %add.ptr9.i.i, i32 30
  %59 = ptrtoint ptr %add.ptr18.i.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %60 = load i16, ptr %add.ptr18.i.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %56, i16 %conv.i)
  %cmp22.i.i = icmp ne i16 %56, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %call4.i)
  %cmp24.i.i = icmp ne i32 %58, %call4.i
  %or.cond.i.i = select i1 %cmp22.i.i, i1 true, i1 %cmp24.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %60, i16 %conv6.i)
  %cmp28.i.i = icmp ne i16 %60, %conv6.i
  %narrow42.i.i = select i1 %or.cond.i.i, i1 true, i1 %cmp28.i.i
  br i1 %narrow42.i.i, label %pch_ptp_match.exit.i.out.i_crit_edge, label %if.end10.i

pch_ptp_match.exit.i.out.i_crit_edge:             ; preds = %pch_ptp_match.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end10.i:                                       ; preds = %pch_ptp_match.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call11.i = tail call i64 @pch_rx_snap_read(ptr noundef %48) #9
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 17
  %61 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %end.i.i.i, align 4
  %hwtstamps.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %62, i32 0, i32 7
  %63 = ptrtoint ptr %hwtstamps.i.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %call11.i, ptr %hwtstamps.i.i, align 8
  br label %out.i

out.i:                                            ; preds = %if.end10.i, %pch_ptp_match.exit.i.out.i_crit_edge, %if.end.i.i.out.i_crit_edge, %if.end3.i.out.i_crit_edge
  tail call void @pch_ch_event_write(ptr noundef %48, i32 noundef 2) #9
  br label %pch_rx_timestamp.exit

pch_rx_timestamp.exit:                            ; preds = %out.i, %if.end.i.pch_rx_timestamp.exit_crit_edge, %if.end80.pch_rx_timestamp.exit_crit_edge
  %call82 = tail call zeroext i16 @eth_type_trans(ptr noundef %20, ptr noundef %1) #9
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 15, i32 0, i32 18
  %64 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %call82, ptr %protocol, align 8
  %and83 = and i32 %15, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  %ip_summed87 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 15
  %65 = ptrtoint ptr %ip_summed87 to i32
  call void @__asan_load2_noabort(i32 %65)
  %bf.load88 = load i16, ptr %ip_summed87, align 8
  %bf.clear89 = and i16 %bf.load88, -1537
  %bf.set = or i16 %bf.clear89, 512
  %bf.clear89.sink = select i1 %tobool84.not, i16 %bf.clear89, i16 %bf.set
  store i16 %bf.clear89.sink, ptr %ip_summed87, align 8
  %call92 = tail call i32 @napi_gro_receive(ptr noundef %napi, ptr noundef %20) #9
  %66 = ptrtoint ptr %work_done to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %work_done, align 4
  %inc93 = add i32 %67, 1
  store i32 %inc93, ptr %work_done, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_clean_rx.__UNIQUE_ID_ddebug631, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_clean_rx, %if.then107)) #9
          to label %if.end119 [label %if.then107], !srcloc !335

if.then107:                                       ; preds = %pch_rx_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #11
  %ip_summed108 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 15
  %68 = ptrtoint ptr %ip_summed108 to i32
  call void @__asan_load2_noabort(i32 %68)
  %bf.load109 = load i16, ptr %ip_summed108, align 8
  %bf.lshr = lshr i16 %bf.load109, 9
  %69 = and i16 %bf.lshr, 3
  %bf.cast = zext i16 %69 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_clean_rx.__UNIQUE_ID_ddebug631, ptr noundef %1, ptr noundef nonnull @.str.110, i32 noundef %bf.cast, i32 noundef %spec.select) #9
  br label %if.end119

if.end119:                                        ; preds = %if.then107, %pch_rx_timestamp.exit, %if.then58, %if.then44, %if.then33
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %cleaned_count.09)
  %cmp120 = icmp ugt i32 %cleaned_count.09, 14
  br i1 %cmp120, label %if.then128, label %if.end119.if.end129_crit_edge, !prof !341

if.end119.if.end129_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129

if.then128:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @pch_gbe_alloc_rx_buffers(ptr noundef %adapter, ptr noundef %rx_ring, i32 noundef %inc)
  br label %if.end129

if.end129:                                        ; preds = %if.then128, %if.end119.if.end129_crit_edge
  %cleaned_count.1 = phi i32 [ 0, %if.then128 ], [ %inc, %if.end119.if.end129_crit_edge ]
  %inc130 = add i32 %i.07, 1
  %70 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc130, i32 %71)
  %cmp131 = icmp eq i32 %inc130, %71
  %spec.store.select = select i1 %cmp131, i32 0, i32 %inc130
  %72 = ptrtoint ptr %work_done to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %work_done, align 4
  %cmp = icmp slt i32 %73, %work_to_do
  br i1 %cmp, label %if.end129.while.body_crit_edge, label %if.end129.while.end_crit_edge

if.end129.while.end_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end129.while.body_crit_edge:                   ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end129.while.end_crit_edge, %while.body.while.end_crit_edge
  %i.0.lcssa = phi i32 [ %spec.store.select, %if.end129.while.end_crit_edge ], [ %i.07, %while.body.while.end_crit_edge ]
  %cleaned_count.0.lcssa = phi i32 [ %cleaned_count.1, %if.end129.while.end_crit_edge ], [ %cleaned_count.09, %while.body.while.end_crit_edge ]
  %74 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %i.0.lcssa, ptr %next_to_clean, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cleaned_count.0.lcssa)
  %tobool136.not = icmp eq i32 %cleaned_count.0.lcssa, 0
  br i1 %tobool136.not, label %while.end.if.end138_crit_edge, label %if.then137

while.end.if.end138_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138

if.then137:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @pch_gbe_alloc_rx_buffers(ptr noundef %adapter, ptr noundef %rx_ring, i32 noundef %cleaned_count.0.lcssa)
  br label %if.end138

if.end138:                                        ; preds = %if.then137, %while.end.if.end138_crit_edge, %entry.if.end138_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @pch_gbe_clean_tx(ptr noundef %adapter, ptr nocapture noundef %tx_ring) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_clean_tx.__UNIQUE_ID_ddebug619, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_clean_tx, %if.then)) #9
          to label %do.end5 [label %if.then], !srcloc !335

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %netdev = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %next_to_clean = getelementptr inbounds %struct.pch_gbe_tx_ring, ptr %tx_ring, i32 0, i32 5
  %2 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next_to_clean, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_clean_tx.__UNIQUE_ID_ddebug619, ptr noundef %1, ptr noundef nonnull @.str.112, i32 noundef %3) #9
  br label %do.end5

do.end5:                                          ; preds = %if.then, %entry
  %next_to_clean6 = getelementptr inbounds %struct.pch_gbe_tx_ring, ptr %tx_ring, i32 0, i32 5
  %4 = ptrtoint ptr %next_to_clean6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %next_to_clean6, align 4
  %6 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_ring, align 4
  %arrayidx = getelementptr %struct.pch_gbe_tx_desc, ptr %7, i32 %5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_clean_tx.__UNIQUE_ID_ddebug620, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_clean_tx, %if.then20)) #9
          to label %do.end27 [label %if.then20], !srcloc !335

if.then20:                                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  %netdev21 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %8 = ptrtoint ptr %netdev21 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev21, align 4
  %gbec_status = getelementptr %struct.pch_gbe_tx_desc, ptr %7, i32 %5, i32 7
  %10 = ptrtoint ptr %gbec_status to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %gbec_status, align 2
  %conv = zext i16 %11 to i32
  %dma_status = getelementptr %struct.pch_gbe_tx_desc, ptr %7, i32 %5, i32 5
  %12 = ptrtoint ptr %dma_status to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dma_status, align 4
  %conv22 = zext i8 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_clean_tx.__UNIQUE_ID_ddebug620, ptr noundef %9, ptr noundef nonnull @.str.113, i32 noundef %conv, i32 noundef %conv22) #9
  br label %do.end27

do.end27:                                         ; preds = %if.then20, %do.end5
  %14 = ptrtoint ptr %next_to_clean6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %next_to_clean6, align 4
  %next_to_use = getelementptr inbounds %struct.pch_gbe_tx_ring, ptr %tx_ring, i32 0, i32 4
  %16 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %next_to_use, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp = icmp ugt i32 %15, %17
  br i1 %cmp, label %do.end27.cond.end_crit_edge, label %cond.false

do.end27.cond.end_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #11
  %count = getelementptr inbounds %struct.pch_gbe_tx_ring, ptr %tx_ring, i32 0, i32 3
  %18 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %do.end27.cond.end_crit_edge
  %cond = phi i32 [ %19, %cond.false ], [ 0, %do.end27.cond.end_crit_edge ]
  %20 = xor i32 %17, -1
  %add = add i32 %15, %20
  %sub32 = add i32 %add, %cond
  %count33 = getelementptr inbounds %struct.pch_gbe_tx_ring, ptr %tx_ring, i32 0, i32 3
  %gbec_status35 = getelementptr %struct.pch_gbe_tx_desc, ptr %7, i32 %5, i32 7
  %21 = ptrtoint ptr %gbec_status35 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %gbec_status35, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16384, i16 %22)
  %cmp37 = icmp eq i16 %22, -16384
  br i1 %cmp37, label %land.lhs.true, label %cond.end.if.end111_crit_edge

cond.end.if.end111_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end111

land.lhs.true:                                    ; preds = %cond.end
  %23 = ptrtoint ptr %count33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %count33, align 4
  %sub34 = add i32 %24, -64
  call void @__sanitizer_cov_trace_cmp4(i32 %sub32, i32 %sub34)
  %cmp39 = icmp slt i32 %sub32, %sub34
  br i1 %cmp39, label %if.then41, label %land.lhs.true.if.end111_crit_edge

land.lhs.true.if.end111_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end111

if.then41:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub32)
  %cmp42 = icmp slt i32 %sub32, 8
  br i1 %cmp42, label %do.body46, label %if.then41.if.end67_crit_edge

if.then41.if.end67_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

do.body46:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_clean_tx.__UNIQUE_ID_ddebug621, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_clean_tx, %if.then58)) #9
          to label %if.end67 [label %if.then58], !srcloc !335

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #11
  %netdev59 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %25 = ptrtoint ptr %netdev59 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %netdev59, align 4
  %27 = ptrtoint ptr %next_to_clean6 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %next_to_clean6, align 4
  %29 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %next_to_use, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_clean_tx.__UNIQUE_ID_ddebug621, ptr noundef %26, ptr noundef nonnull @.str.114, i32 noundef %28, i32 noundef %30, i32 noundef %sub32) #9
  br label %if.end67

if.end67:                                         ; preds = %if.then58, %do.body46, %if.then41.if.end67_crit_edge
  %31 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tx_ring, align 4
  br label %for.body

for.body:                                         ; preds = %if.end77.for.body_crit_edge, %if.end67
  %j.0503 = phi i32 [ 0, %if.end67 ], [ %inc83, %if.end77.for.body_crit_edge ]
  %k.0502 = phi i32 [ %5, %if.end67 ], [ %spec.store.select, %if.end77.for.body_crit_edge ]
  %gbec_status72 = getelementptr %struct.pch_gbe_tx_desc, ptr %32, i32 %k.0502, i32 7
  %33 = ptrtoint ptr %gbec_status72 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %gbec_status72, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16384, i16 %34)
  %cmp74.not = icmp eq i16 %34, -16384
  br i1 %cmp74.not, label %if.end77, label %do.body88

if.end77:                                         ; preds = %for.body
  %inc = add i32 %k.0502, 1
  %35 = ptrtoint ptr %count33 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %count33, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %36)
  %cmp79.not = icmp ult i32 %inc, %36
  %spec.store.select = select i1 %cmp79.not, i32 %inc, i32 0
  %inc83 = add nuw nsw i32 %j.0503, 1
  %exitcond.not = icmp eq i32 %inc83, 64
  br i1 %exitcond.not, label %if.end111.loopexit, label %if.end77.for.body_crit_edge

if.end77.for.body_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body88:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx71.le504 = getelementptr %struct.pch_gbe_tx_desc, ptr %32, i32 %k.0502
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_clean_tx.__UNIQUE_ID_ddebug622, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_clean_tx, %if.then100)) #9
          to label %if.end111 [label %if.then100], !srcloc !335

if.then100:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #11
  %netdev101 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %37 = ptrtoint ptr %netdev101 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %netdev101, align 4
  %39 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %next_to_use, align 4
  %41 = ptrtoint ptr %gbec_status72 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %gbec_status72, align 2
  %conv104 = zext i16 %42 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_clean_tx.__UNIQUE_ID_ddebug622, ptr noundef %38, ptr noundef nonnull @.str.115, i32 noundef %sub32, i32 noundef %j.0503, i32 noundef %5, i32 noundef %k.0502, i32 noundef %40, i32 noundef %conv104) #9
  br label %if.end111

if.end111.loopexit:                               ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx71.le = getelementptr %struct.pch_gbe_tx_desc, ptr %32, i32 %k.0502
  br label %if.end111

if.end111:                                        ; preds = %if.end111.loopexit, %if.then100, %do.body88, %land.lhs.true.if.end111_crit_edge, %cond.end.if.end111_crit_edge
  %i.1 = phi i32 [ %5, %land.lhs.true.if.end111_crit_edge ], [ %5, %cond.end.if.end111_crit_edge ], [ %k.0502, %if.then100 ], [ %k.0502, %do.body88 ], [ %5, %if.end111.loopexit ]
  %tx_desc.2 = phi ptr [ %arrayidx, %land.lhs.true.if.end111_crit_edge ], [ %arrayidx, %cond.end.if.end111_crit_edge ], [ %arrayidx71.le504, %if.then100 ], [ %arrayidx71.le504, %do.body88 ], [ %arrayidx71.le, %if.end111.loopexit ]
  %gbec_status112506 = getelementptr inbounds %struct.pch_gbe_tx_desc, ptr %tx_desc.2, i32 0, i32 7
  %43 = ptrtoint ptr %gbec_status112506 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %gbec_status112506, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %44)
  %cmp114507 = icmp ult i16 %44, 16384
  br i1 %cmp114507, label %do.body117.lr.ph, label %if.end111.do.body287_crit_edge

if.end111.do.body287_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body287

do.body117.lr.ph:                                 ; preds = %if.end111
  %netdev130 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %buffer_info138 = getelementptr inbounds %struct.pch_gbe_tx_ring, ptr %tx_ring, i32 0, i32 6
  %tx_aborted_errors = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 9, i32 14
  %tx_carrier_errors = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 9, i32 15
  %collisions = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 9, i32 9
  %tx_packets = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 9, i32 1
  %tx_bytes = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 9, i32 3
  %pdev = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 4
  br label %do.body117

while.cond:                                       ; preds = %if.end278
  %45 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tx_ring, align 4
  %inc281 = add nuw nsw i32 %cleaned_count.0508, 1
  %gbec_status112 = getelementptr %struct.pch_gbe_tx_desc, ptr %46, i32 %i.3, i32 7
  %47 = ptrtoint ptr %gbec_status112 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %gbec_status112, align 2
  %cmp114 = icmp ult i16 %48, 16384
  br i1 %cmp114, label %while.cond.do.body117_crit_edge, label %while.cond.do.body287.loopexit_crit_edge

while.cond.do.body287.loopexit_crit_edge:         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body287.loopexit

while.cond.do.body117_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body117

do.body117:                                       ; preds = %while.cond.do.body117_crit_edge, %do.body117.lr.ph
  %gbec_status112511 = phi ptr [ %gbec_status112506, %do.body117.lr.ph ], [ %gbec_status112, %while.cond.do.body117_crit_edge ]
  %i.2509 = phi i32 [ %i.1, %do.body117.lr.ph ], [ %i.3, %while.cond.do.body117_crit_edge ]
  %cleaned_count.0508 = phi i32 [ 0, %do.body117.lr.ph ], [ %inc281, %while.cond.do.body117_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_clean_tx.__UNIQUE_ID_ddebug623, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_clean_tx, %if.then129)) #9
          to label %do.end137 [label %if.then129], !srcloc !335

if.then129:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %netdev130 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %netdev130, align 4
  %51 = ptrtoint ptr %gbec_status112511 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %gbec_status112511, align 2
  %conv132 = zext i16 %52 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_clean_tx.__UNIQUE_ID_ddebug623, ptr noundef %50, ptr noundef nonnull @.str.116, i32 noundef %conv132) #9
  br label %do.end137

do.end137:                                        ; preds = %if.then129, %do.body117
  %53 = ptrtoint ptr %buffer_info138 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %buffer_info138, align 4
  %arrayidx139 = getelementptr %struct.pch_gbe_buffer, ptr %54, i32 %i.2509
  %55 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx139, align 4
  %57 = ptrtoint ptr %gbec_status112511 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %gbec_status112511, align 2
  %conv142 = zext i16 %58 to i32
  %and143 = and i32 %conv142, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %if.else, label %if.then145

if.then145:                                       ; preds = %do.end137
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tx_aborted_errors, align 4
  %inc146 = add i32 %60, 1
  store i32 %inc146, ptr %tx_aborted_errors, align 4
  %61 = ptrtoint ptr %netdev130 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %netdev130, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %62, ptr noundef nonnull @.str.117) #12
  br label %if.end215

if.else:                                          ; preds = %do.end137
  %and150 = and i32 %conv142, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  br i1 %tobool151.not, label %if.else156, label %if.then152

if.then152:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tx_carrier_errors, align 4
  %inc154 = add i32 %64, 1
  store i32 %inc154, ptr %tx_carrier_errors, align 4
  %65 = ptrtoint ptr %netdev130 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %netdev130, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %66, ptr noundef nonnull @.str.118) #12
  br label %if.end215

if.else156:                                       ; preds = %if.else
  %and159 = and i32 %conv142, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %tobool160.not = icmp eq i32 %and159, 0
  br i1 %tobool160.not, label %if.else166, label %if.then161

if.then161:                                       ; preds = %if.else156
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tx_aborted_errors, align 4
  %inc164 = add i32 %68, 1
  store i32 %inc164, ptr %tx_aborted_errors, align 4
  %69 = ptrtoint ptr %netdev130 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %netdev130, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %70, ptr noundef nonnull @.str.119) #12
  br label %if.end215

if.else166:                                       ; preds = %if.else156
  %and169 = and i32 %conv142, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169)
  %tobool170.not = icmp eq i32 %and169, 0
  br i1 %tobool170.not, label %if.else198, label %if.then171

if.then171:                                       ; preds = %if.else166
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %collisions to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %collisions, align 4
  %inc173 = add i32 %72, 1
  store i32 %inc173, ptr %collisions, align 4
  %73 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tx_packets, align 4
  %inc175 = add i32 %74, 1
  store i32 %inc175, ptr %tx_packets, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %56, i32 0, i32 6
  %75 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %len, align 4
  %77 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %tx_bytes, align 4
  %add177 = add i32 %78, %76
  store i32 %add177, ptr %tx_bytes, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_clean_tx.__UNIQUE_ID_ddebug624, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_clean_tx, %if.then191)) #9
          to label %if.end215 [label %if.then191], !srcloc !335

if.then191:                                       ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %netdev130 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %netdev130, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_clean_tx.__UNIQUE_ID_ddebug624, ptr noundef %80, ptr noundef nonnull @.str.120) #9
  br label %if.end215

if.else198:                                       ; preds = %if.else166
  %and201 = and i32 %conv142, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and201)
  %tobool202.not = icmp eq i32 %and201, 0
  br i1 %tobool202.not, label %if.else198.if.end215_crit_edge, label %if.then203

if.else198.if.end215_crit_edge:                   ; preds = %if.else198
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end215

if.then203:                                       ; preds = %if.else198
  call void @__sanitizer_cov_trace_pc() #11
  %81 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tx_packets, align 4
  %inc206 = add i32 %82, 1
  store i32 %inc206, ptr %tx_packets, align 4
  %len207 = getelementptr inbounds %struct.sk_buff, ptr %56, i32 0, i32 6
  %83 = ptrtoint ptr %len207 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %len207, align 4
  %85 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tx_bytes, align 4
  %add210 = add i32 %86, %84
  store i32 %add210, ptr %tx_bytes, align 4
  br label %if.end215

if.end215:                                        ; preds = %if.then203, %if.else198.if.end215_crit_edge, %if.then191, %if.then171, %if.then161, %if.then152, %if.then145
  %mapped = getelementptr %struct.pch_gbe_buffer, ptr %54, i32 %i.2509, i32 5
  %87 = ptrtoint ptr %mapped to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %mapped, align 2, !range !340
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool216.not = icmp eq i8 %88, 0
  br i1 %tobool216.not, label %if.end215.if.end240_crit_edge, label %do.body219

if.end215.if.end240_crit_edge:                    ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end240

do.body219:                                       ; preds = %if.end215
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_clean_tx.__UNIQUE_ID_ddebug625, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_clean_tx, %if.then231)) #9
          to label %do.end237 [label %if.then231], !srcloc !335

if.then231:                                       ; preds = %do.body219
  call void @__sanitizer_cov_trace_pc() #11
  %89 = ptrtoint ptr %netdev130 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %netdev130, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_clean_tx.__UNIQUE_ID_ddebug625, ptr noundef %90, ptr noundef nonnull @.str.121, i32 noundef %i.2509) #9
  br label %do.end237

do.end237:                                        ; preds = %if.then231, %do.body219
  %91 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %92, i32 0, i32 44
  %dma = getelementptr %struct.pch_gbe_buffer, ptr %54, i32 %i.2509, i32 1
  %93 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %dma, align 4
  %length = getelementptr %struct.pch_gbe_buffer, ptr %54, i32 %i.2509, i32 4
  %95 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %length, align 4
  %conv238 = zext i16 %96 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %94, i32 noundef %conv238, i32 noundef 1, i32 noundef 0) #9
  %97 = ptrtoint ptr %mapped to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %mapped, align 2
  br label %if.end240

if.end240:                                        ; preds = %do.end237, %if.end215.if.end240_crit_edge
  %98 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx139, align 4
  %tobool242.not = icmp eq ptr %99, null
  br i1 %tobool242.not, label %if.end240.if.end265_crit_edge, label %do.body245

if.end240.if.end265_crit_edge:                    ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end265

do.body245:                                       ; preds = %if.end240
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_clean_tx.__UNIQUE_ID_ddebug626, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_clean_tx, %if.then257)) #9
          to label %do.end263 [label %if.then257], !srcloc !335

if.then257:                                       ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #11
  %100 = ptrtoint ptr %netdev130 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %netdev130, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_clean_tx.__UNIQUE_ID_ddebug626, ptr noundef %101, ptr noundef nonnull @.str.122, i32 noundef %i.2509) #9
  br label %do.end263

do.end263:                                        ; preds = %if.then257, %do.body245
  %102 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx139, align 4
  tail call void @skb_trim(ptr noundef %103, i32 noundef 0) #9
  br label %if.end265

if.end265:                                        ; preds = %do.end263, %if.end240.if.end265_crit_edge
  %104 = ptrtoint ptr %gbec_status112511 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 -16384, ptr %gbec_status112511, align 2
  %inc267 = add i32 %i.2509, 1
  %105 = ptrtoint ptr %count33 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %count33, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc267, i32 %106)
  %cmp269 = icmp eq i32 %inc267, %106
  br i1 %cmp269, label %if.then277, label %if.end265.if.end278_crit_edge, !prof !341

if.end265.if.end278_crit_edge:                    ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end278

if.then277:                                       ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end278

if.end278:                                        ; preds = %if.then277, %if.end265.if.end278_crit_edge
  %i.3 = phi i32 [ 0, %if.then277 ], [ %inc267, %if.end265.if.end278_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %cleaned_count.0508)
  %cmp282 = icmp eq i32 %cleaned_count.0508, 64
  br i1 %cmp282, label %if.end278.do.body287.loopexit_crit_edge, label %while.cond

if.end278.do.body287.loopexit_crit_edge:          ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body287.loopexit

do.body287.loopexit:                              ; preds = %if.end278.do.body287.loopexit_crit_edge, %while.cond.do.body287.loopexit_crit_edge
  %cleaned_count.1.ph = phi i32 [ %inc281, %while.cond.do.body287.loopexit_crit_edge ], [ 65, %if.end278.do.body287.loopexit_crit_edge ]
  %107 = xor i1 %cmp282, true
  br label %do.body287

do.body287:                                       ; preds = %do.body287.loopexit, %if.end111.do.body287_crit_edge
  %cleaned.1.off0 = phi i1 [ false, %if.end111.do.body287_crit_edge ], [ %107, %do.body287.loopexit ]
  %cleaned_count.1 = phi i32 [ 0, %if.end111.do.body287_crit_edge ], [ %cleaned_count.1.ph, %do.body287.loopexit ]
  %i.4 = phi i32 [ %i.1, %if.end111.do.body287_crit_edge ], [ %i.3, %do.body287.loopexit ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_clean_tx.__UNIQUE_ID_ddebug627, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_clean_tx, %if.then299)) #9
          to label %do.end305 [label %if.then299], !srcloc !335

if.then299:                                       ; preds = %do.body287
  call void @__sanitizer_cov_trace_pc() #11
  %netdev300 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %108 = ptrtoint ptr %netdev300 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %netdev300, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_clean_tx.__UNIQUE_ID_ddebug627, ptr noundef %109, ptr noundef nonnull @.str.123, i32 noundef %cleaned_count.1) #9
  br label %do.end305

do.end305:                                        ; preds = %if.then299, %do.body287
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cleaned_count.1)
  %cmp306.not = icmp eq i32 %cleaned_count.1, 0
  br i1 %cmp306.not, label %do.end305.if.end369_crit_edge, label %if.then308

do.end305.if.end369_crit_edge:                    ; preds = %do.end305
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end369

if.then308:                                       ; preds = %do.end305
  %netdev309 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %110 = ptrtoint ptr %netdev309 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %netdev309, align 4
  tail call void @netif_tx_lock(ptr noundef %111) #9
  br i1 %cleaned.1.off0, label %land.rhs, label %if.then308.if.end345_crit_edge

if.then308.if.end345_crit_edge:                   ; preds = %if.then308
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end345

land.rhs:                                         ; preds = %if.then308
  %112 = ptrtoint ptr %netdev309 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %netdev309, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %113, i32 0, i32 103
  %114 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %115, i32 0, i32 13
  %116 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %117, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %land.rhs.if.end345_crit_edge, label %if.then321, !prof !342

land.rhs.if.end345_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end345

if.then321:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @netif_tx_wake_queue(ptr noundef %115) #9
  %tx_restart_count = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 9, i32 17
  %118 = ptrtoint ptr %tx_restart_count to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %tx_restart_count, align 4
  %inc324 = add i32 %119, 1
  store i32 %inc324, ptr %tx_restart_count, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_clean_tx.__UNIQUE_ID_ddebug628, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_clean_tx, %if.then338)) #9
          to label %if.end345 [label %if.then338], !srcloc !335

if.then338:                                       ; preds = %if.then321
  call void @__sanitizer_cov_trace_pc() #11
  %120 = ptrtoint ptr %netdev309 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %netdev309, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_clean_tx.__UNIQUE_ID_ddebug628, ptr noundef %121, ptr noundef nonnull @.str.124) #9
  br label %if.end345

if.end345:                                        ; preds = %if.then338, %if.then321, %land.rhs.if.end345_crit_edge, %if.then308.if.end345_crit_edge
  %122 = ptrtoint ptr %next_to_clean6 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %i.4, ptr %next_to_clean6, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_clean_tx.__UNIQUE_ID_ddebug629, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_clean_tx, %if.then360)) #9
          to label %do.end367 [label %if.then360], !srcloc !335

if.then360:                                       ; preds = %if.end345
  call void @__sanitizer_cov_trace_pc() #11
  %123 = ptrtoint ptr %netdev309 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %netdev309, align 4
  %125 = ptrtoint ptr %next_to_clean6 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %next_to_clean6, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_clean_tx.__UNIQUE_ID_ddebug629, ptr noundef %124, ptr noundef nonnull @.str.112, i32 noundef %126) #9
  br label %do.end367

do.end367:                                        ; preds = %if.then360, %if.end345
  %127 = ptrtoint ptr %netdev309 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %netdev309, align 4
  tail call void @netif_tx_unlock(ptr noundef %128) #9
  br label %if.end369

if.end369:                                        ; preds = %do.end367, %do.end305.if.end369_crit_edge
  ret i1 %cleaned.1.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pch_src_uuid_lo_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pch_src_uuid_hi_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @pch_rx_snap_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_classify_raw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_gbe_mdio_read(ptr noundef %netdev, i32 noundef %addr, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 2640
  %call2 = tail call zeroext i16 @pch_gbe_mac_ctrl_miim(ptr noundef %hw1, i32 noundef %addr, i32 noundef 0, i32 noundef %reg, i16 noundef zeroext 0)
  %conv = zext i16 %call2 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_gbe_mdio_write(ptr noundef %netdev, i32 noundef %addr, i32 noundef %reg, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 2640
  %conv = trunc i32 %data to i16
  %call2 = tail call zeroext i16 @pch_gbe_mac_ctrl_miim(ptr noundef %hw1, i32 noundef %addr, i32 noundef 67108864, i32 noundef %reg, i16 noundef zeroext %conv)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_check_gmii_support(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_link_ok(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_gset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__pch_gbe_suspend(ptr noundef %pdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %hw2 = getelementptr i8, ptr %1, i32 2640
  %wake_up_evt = getelementptr i8, ptr %1, i32 2964
  %2 = ptrtoint ptr %wake_up_evt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wake_up_evt, align 4
  tail call void @netif_device_detach(ptr noundef %1) #9
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pch_gbe_down(ptr noundef %add.ptr.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  tail call void @pch_gbe_set_multi(ptr noundef %1)
  %reg.i = getelementptr i8, ptr %1, i32 2644
  %6 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg.i, align 4
  %RX_MODE.i = getelementptr inbounds %struct.pch_gbe_regs, ptr %7, i32 0, i32 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RX_MODE.i, i32 131264) #9, !srcloc !339
  %8 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg.i, align 4
  %TCPIP_ACC.i = getelementptr inbounds %struct.pch_gbe_regs, ptr %9, i32 0, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %TCPIP_ACC.i) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %11 = and i32 %10, -83886081
  %12 = or i32 %11, 67108864
  %13 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg.i, align 4
  %TCPIP_ACC4.i = getelementptr inbounds %struct.pch_gbe_regs, ptr %14, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TCPIP_ACC4.i, i32 %12) #9, !srcloc !339
  tail call fastcc void @pch_gbe_configure_rx(ptr noundef %add.ptr.i)
  %link_speed = getelementptr i8, ptr %1, i32 2714
  %15 = ptrtoint ptr %link_speed to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %link_speed, align 2
  %link_duplex = getelementptr i8, ptr %1, i32 2716
  %17 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.152)
  switch i16 %16, label %if.then4.pch_gbe_set_rgmii_ctrl.exit_crit_edge [
    i16 10, label %sw.bb.i
    i16 100, label %sw.bb2.i
    i16 1000, label %sw.bb3.i
  ]

if.then4.pch_gbe_set_rgmii_ctrl.exit_crit_edge:   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %pch_gbe_set_rgmii_ctrl.exit

sw.bb.i:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %pch_gbe_set_rgmii_ctrl.exit

sw.bb2.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %pch_gbe_set_rgmii_ctrl.exit

sw.bb3.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %pch_gbe_set_rgmii_ctrl.exit

pch_gbe_set_rgmii_ctrl.exit:                      ; preds = %sw.bb3.i, %sw.bb2.i, %sw.bb.i, %if.then4.pch_gbe_set_rgmii_ctrl.exit_crit_edge
  %rgmii.0.i = phi i32 [ 0, %if.then4.pch_gbe_set_rgmii_ctrl.exit_crit_edge ], [ 50331648, %sw.bb3.i ], [ 184549376, %sw.bb2.i ], [ 251658240, %sw.bb.i ]
  %18 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg.i, align 4
  %RGMII_CTRL.i = getelementptr inbounds %struct.pch_gbe_regs, ptr %19, i32 0, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RGMII_CTRL.i, i32 %rgmii.0.i) #9, !srcloc !339
  %20 = ptrtoint ptr %link_speed to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %link_speed, align 2
  %22 = ptrtoint ptr %link_duplex to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %link_duplex, align 4
  %netdev1.i = getelementptr i8, ptr %1, i32 2396
  %24 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %netdev1.i, align 4
  %26 = zext i16 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.153)
  switch i16 %21, label %pch_gbe_set_rgmii_ctrl.exit.pch_gbe_set_mode.exit_crit_edge [
    i16 10, label %sw.bb.i2
    i16 100, label %sw.bb3.i3
    i16 1000, label %sw.bb5.i
  ]

pch_gbe_set_rgmii_ctrl.exit.pch_gbe_set_mode.exit_crit_edge: ; preds = %pch_gbe_set_rgmii_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %pch_gbe_set_mode.exit

sw.bb.i2:                                         ; preds = %pch_gbe_set_rgmii_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #11
  %tx_queue_len.i = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 107
  %27 = ptrtoint ptr %tx_queue_len.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 10, ptr %tx_queue_len.i, align 16
  br label %pch_gbe_set_mode.exit

sw.bb3.i3:                                        ; preds = %pch_gbe_set_rgmii_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #11
  %tx_queue_len4.i = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 107
  %28 = ptrtoint ptr %tx_queue_len4.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 100, ptr %tx_queue_len4.i, align 16
  br label %pch_gbe_set_mode.exit

sw.bb5.i:                                         ; preds = %pch_gbe_set_rgmii_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %pch_gbe_set_mode.exit

pch_gbe_set_mode.exit:                            ; preds = %sw.bb5.i, %sw.bb3.i3, %sw.bb.i2, %pch_gbe_set_rgmii_ctrl.exit.pch_gbe_set_mode.exit_crit_edge
  %mode.0.i = phi i32 [ 0, %pch_gbe_set_rgmii_ctrl.exit.pch_gbe_set_mode.exit_crit_edge ], [ 128, %sw.bb5.i ], [ 0, %sw.bb3.i3 ], [ 0, %sw.bb.i2 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %23)
  %cmp.i = icmp eq i16 %23, 1
  %29 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg.i, align 4
  %MODE.i = getelementptr inbounds %struct.pch_gbe_regs, ptr %30, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  %31 = or i32 %mode.0.i, 64
  %32 = select i1 %cmp.i, i32 %31, i32 %mode.0.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MODE.i, i32 %32) #9, !srcloc !339
  tail call fastcc void @pch_gbe_mac_set_wol_event(ptr noundef %hw2, i32 noundef %3)
  br label %if.end10

if.else:                                          ; preds = %if.end
  tail call void @pch_gbe_phy_power_down(ptr noundef %hw2) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_mac_set_wol_event.__UNIQUE_ID_ddebug600, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__pch_gbe_suspend, %if.then.i)) #9
          to label %pch_gbe_mac_set_wol_event.exit [label %if.then.i], !srcloc !335

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %netdev.i = getelementptr i8, ptr %1, i32 2396
  %33 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %netdev.i, align 4
  %reg.i5 = getelementptr i8, ptr %1, i32 2644
  %35 = ptrtoint ptr %reg.i5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg.i5, align 4
  %ADDR_MASK.i = getelementptr inbounds %struct.pch_gbe_regs, ptr %36, i32 0, i32 24
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ADDR_MASK.i) #9, !srcloc !336
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_mac_set_wol_event.__UNIQUE_ID_ddebug600, ptr noundef %34, ptr noundef nonnull @.str.142, i32 noundef 0, i32 noundef %38) #9
  br label %pch_gbe_mac_set_wol_event.exit

pch_gbe_mac_set_wol_event.exit:                   ; preds = %if.then.i, %if.else
  %reg20.i = getelementptr i8, ptr %1, i32 2644
  %39 = ptrtoint ptr %reg20.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg20.i, align 4
  %WOL_CTRL21.i = getelementptr inbounds %struct.pch_gbe_regs, ptr %40, i32 0, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %WOL_CTRL21.i, i32 0) #9, !srcloc !339
  %41 = ptrtoint ptr %reg20.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg20.i, align 4
  %WOL_ST23.i = getelementptr inbounds %struct.pch_gbe_regs, ptr %42, i32 0, i32 47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %WOL_ST23.i, i32 0) #9, !srcloc !339
  br label %if.end10

if.end10:                                         ; preds = %pch_gbe_mac_set_wol_event.exit, %pch_gbe_set_mode.exit
  tail call void @pci_disable_device(ptr noundef %pdev) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_wake_from_d3(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_gbe_mac_set_wol_event(ptr nocapture noundef readonly %hw, i32 noundef %wu_evt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_mac_set_wol_event.__UNIQUE_ID_ddebug600, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_mac_set_wol_event, %if.then)) #9
          to label %do.end7 [label %if.then], !srcloc !335

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %netdev = getelementptr i8, ptr %hw, i32 -244
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %reg = getelementptr inbounds %struct.pch_gbe_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  %ADDR_MASK = getelementptr inbounds %struct.pch_gbe_regs, ptr %3, i32 0, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ADDR_MASK) #9, !srcloc !336
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_mac_set_wol_event.__UNIQUE_ID_ddebug600, ptr noundef %1, ptr noundef nonnull @.str.142, i32 noundef %wu_evt, i32 noundef %5) #9
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wu_evt)
  %tobool8.not = icmp eq i32 %wu_evt, 0
  %reg20 = getelementptr inbounds %struct.pch_gbe_hw, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %reg20 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg20, align 4
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %do.end7
  %ADDR_MASK11 = getelementptr inbounds %struct.pch_gbe_regs, ptr %7, i32 0, i32 24
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ADDR_MASK11) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %9 = ptrtoint ptr %reg20 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg20, align 4
  %WOL_ADDR_MASK = getelementptr inbounds %struct.pch_gbe_regs, ptr %10, i32 0, i32 49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %WOL_ADDR_MASK, i32 %8) #9, !srcloc !339
  %11 = ptrtoint ptr %reg20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg20, align 4
  %WOL_ADDR_MASK15 = getelementptr inbounds %struct.pch_gbe_regs, ptr %12, i32 0, i32 49
  %call.i = tail call i64 @ktime_get() #9
  %add.i.i = add i64 %call.i, 10000
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %if.then9
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %WOL_ADDR_MASK15) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %.mask.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool.not.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool.not.i, label %for.cond.i.pch_gbe_wait_clr_bit.exit_crit_edge, label %land.lhs.true.i

for.cond.i.pch_gbe_wait_clr_bit.exit_crit_edge:   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pch_gbe_wait_clr_bit.exit

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call4.i = tail call i64 @ktime_get() #9
  %cmp3.i.i = icmp sgt i64 %call4.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %WOL_ADDR_MASK15) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %.mask3.i = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask3.i)
  %tobool18.not.i = icmp eq i32 %.mask3.i, 0
  br i1 %tobool18.not.i, label %for.end.i.pch_gbe_wait_clr_bit.exit_crit_edge, label %do.end.i

for.end.i.pch_gbe_wait_clr_bit.exit_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pch_gbe_wait_clr_bit.exit

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #12
  br label %pch_gbe_wait_clr_bit.exit

pch_gbe_wait_clr_bit.exit:                        ; preds = %do.end.i, %for.end.i.pch_gbe_wait_clr_bit.exit_crit_edge, %for.cond.i.pch_gbe_wait_clr_bit.exit_crit_edge
  %15 = ptrtoint ptr %reg20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg20, align 4
  %WOL_ST = getelementptr inbounds %struct.pch_gbe_regs, ptr %16, i32 0, i32 47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %WOL_ST, i32 0) #9, !srcloc !339
  %or = or i32 %wu_evt, 65536
  %17 = ptrtoint ptr %reg20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg20, align 4
  %WOL_CTRL = getelementptr inbounds %struct.pch_gbe_regs, ptr %18, i32 0, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  %19 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %WOL_CTRL, i32 %19) #9, !srcloc !339
  %20 = ptrtoint ptr %reg20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg20, align 4
  %TCPIP_ACC = getelementptr inbounds %struct.pch_gbe_regs, ptr %21, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TCPIP_ACC, i32 33554432) #9, !srcloc !339
  %22 = ptrtoint ptr %reg20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg20, align 4
  %INT_EN = getelementptr inbounds %struct.pch_gbe_regs, ptr %23, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %INT_EN, i32 687931393) #9, !srcloc !339
  br label %if.end24

if.else:                                          ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  %WOL_CTRL21 = getelementptr inbounds %struct.pch_gbe_regs, ptr %7, i32 0, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %WOL_CTRL21, i32 0) #9, !srcloc !339
  %24 = ptrtoint ptr %reg20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg20, align 4
  %WOL_ST23 = getelementptr inbounds %struct.pch_gbe_regs, ptr %25, i32 0, i32 47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %WOL_ST23, i32 0) #9, !srcloc !339
  br label %if.end24

if.end24:                                         ; preds = %if.else, %pch_gbe_wait_clr_bit.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_gbe_io_error_detected(ptr noundef %pdev, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @netif_device_detach(ptr noundef %1) #9
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void @pch_gbe_down(ptr noundef %add.ptr.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @pci_disable_device(ptr noundef %pdev) #9
  ret i32 3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_gbe_io_slot_reset(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @pci_enable_device(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.143) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %hw2 = getelementptr i8, ptr %1, i32 2640
  tail call void @pci_set_master(ptr noundef %pdev) #9
  %call4 = tail call i32 @pci_enable_wake(ptr noundef %pdev, i32 noundef 0, i1 noundef zeroext false) #9
  tail call void @pch_gbe_phy_power_up(ptr noundef %hw2) #9
  tail call void @pch_gbe_reset(ptr noundef %add.ptr.i)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_mac_set_wol_event.__UNIQUE_ID_ddebug600, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_io_slot_reset, %if.then.i)) #9
          to label %pch_gbe_mac_set_wol_event.exit [label %if.then.i], !srcloc !335

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %netdev.i = getelementptr i8, ptr %1, i32 2396
  %2 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev.i, align 4
  %reg.i = getelementptr i8, ptr %1, i32 2644
  %4 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg.i, align 4
  %ADDR_MASK.i = getelementptr inbounds %struct.pch_gbe_regs, ptr %5, i32 0, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ADDR_MASK.i) #9, !srcloc !336
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_mac_set_wol_event.__UNIQUE_ID_ddebug600, ptr noundef %3, ptr noundef nonnull @.str.142, i32 noundef 0, i32 noundef %7) #9
  br label %pch_gbe_mac_set_wol_event.exit

pch_gbe_mac_set_wol_event.exit:                   ; preds = %if.then.i, %if.end
  %reg20.i = getelementptr i8, ptr %1, i32 2644
  %8 = ptrtoint ptr %reg20.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg20.i, align 4
  %WOL_CTRL21.i = getelementptr inbounds %struct.pch_gbe_regs, ptr %9, i32 0, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %WOL_CTRL21.i, i32 0) #9, !srcloc !339
  %10 = ptrtoint ptr %reg20.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg20.i, align 4
  %WOL_ST23.i = getelementptr inbounds %struct.pch_gbe_regs, ptr %11, i32 0, i32 47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %WOL_ST23.i, i32 0) #9, !srcloc !339
  br label %cleanup

cleanup:                                          ; preds = %pch_gbe_mac_set_wol_event.exit, %if.then
  %retval.0 = phi i32 [ 4, %if.then ], [ 5, %pch_gbe_mac_set_wol_event.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_gbe_io_resume(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %call3 = tail call i32 @pch_gbe_up(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then.if.end14_crit_edge, label %do.body5

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

do.body5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_io_resume.__UNIQUE_ID_ddebug648, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_io_resume, %if.then10)) #9
          to label %cleanup [label %if.then10], !srcloc !335

if.then10:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_io_resume.__UNIQUE_ID_ddebug648, ptr noundef %1, ptr noundef nonnull @.str.145) #9
  br label %cleanup

if.end14:                                         ; preds = %if.then.if.end14_crit_edge, %entry.if.end14_crit_edge
  tail call void @netif_device_attach(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then10, %do.body5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_wake(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_gbe_suspend(ptr noundef %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %device, i32 -136
  tail call fastcc void @__pch_gbe_suspend(ptr noundef %add.ptr)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_gbe_resume(ptr noundef %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %device, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %device, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %call3 = tail call i32 @pci_enable_device(ptr noundef %add.ptr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.146) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw2 = getelementptr i8, ptr %1, i32 2640
  tail call void @pci_set_master(ptr noundef %add.ptr) #9
  tail call void @pch_gbe_phy_power_up(ptr noundef %hw2) #9
  tail call void @pch_gbe_reset(ptr noundef %add.ptr.i)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_mac_set_wol_event.__UNIQUE_ID_ddebug600, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_resume, %if.then.i)) #9
          to label %pch_gbe_mac_set_wol_event.exit [label %if.then.i], !srcloc !335

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %netdev.i = getelementptr i8, ptr %1, i32 2396
  %2 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev.i, align 4
  %reg.i = getelementptr i8, ptr %1, i32 2644
  %4 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg.i, align 4
  %ADDR_MASK.i = getelementptr inbounds %struct.pch_gbe_regs, ptr %5, i32 0, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ADDR_MASK.i) #9, !srcloc !336
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_mac_set_wol_event.__UNIQUE_ID_ddebug600, ptr noundef %3, ptr noundef nonnull @.str.142, i32 noundef 0, i32 noundef %7) #9
  br label %pch_gbe_mac_set_wol_event.exit

pch_gbe_mac_set_wol_event.exit:                   ; preds = %if.then.i, %if.end
  %reg20.i = getelementptr i8, ptr %1, i32 2644
  %8 = ptrtoint ptr %reg20.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg20.i, align 4
  %WOL_CTRL21.i = getelementptr inbounds %struct.pch_gbe_regs, ptr %9, i32 0, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %WOL_CTRL21.i, i32 0) #9, !srcloc !339
  %10 = ptrtoint ptr %reg20.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg20.i, align 4
  %WOL_ST23.i = getelementptr inbounds %struct.pch_gbe_regs, ptr %11, i32 0, i32 47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %WOL_ST23.i, i32 0) #9, !srcloc !339
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %pch_gbe_mac_set_wol_event.exit.if.end7_crit_edge, label %if.then5

pch_gbe_mac_set_wol_event.exit.if.end7_crit_edge: ; preds = %pch_gbe_mac_set_wol_event.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %pch_gbe_mac_set_wol_event.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 @pch_gbe_up(ptr noundef %add.ptr.i)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %pch_gbe_mac_set_wol_event.exit.if.end7_crit_edge
  tail call void @netif_device_attach(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then
  ret i32 %call3
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 150)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 150)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !13, !15, !16, !17, !18, !19, !21, !23, !24, !25, !27, !28, !29, !31, !33, !35, !37, !38, !40, !42, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !79, !81, !82, !83, !85, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !117, !118, !119, !121, !122, !124, !126, !128, !130, !132, !134, !136, !138, !139, !140, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !164, !165, !167, !168, !169, !170, !172, !173, !175, !177, !178, !179, !181, !183, !184, !185, !187, !189, !190, !191, !193, !194, !196, !197, !199, !200, !202, !203, !204, !206, !208, !210, !211, !213, !215, !217, !218, !219, !221, !222, !223, !225, !226, !228, !229, !230, !232, !234, !236, !238, !239, !241, !242, !243, !245, !246, !248, !249, !251, !252, !254, !255, !257, !259, !261, !263, !264, !266, !267, !269, !270, !272, !273, !275, !276, !278, !280, !282, !283, !285, !286, !288, !289, !291, !292, !293, !295, !296, !297, !299, !300, !301, !303, !304, !305, !306, !308, !309, !311, !312, !313, !315, !317, !319, !320, !321, !323}
!llvm.named.register.sp = !{!325}
!llvm.module.flags = !{!326, !327, !328, !329, !330, !331, !332, !333}
!llvm.ident = !{!334}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 400, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @pch_gbe_mac_force_mac_fc.__UNIQUE_ID_ddebug598, !1, !"__UNIQUE_ID_ddebug598", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 423, i32 7}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 429, i32 2}
!10 = !{ptr @pch_gbe_mac_force_mac_fc.__UNIQUE_ID_ddebug599, !9, !"__UNIQUE_ID_ddebug599", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 486, i32 31}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 497, i32 2}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @pch_gbe_mac_ctrl_miim.__UNIQUE_ID_ddebug601, !14, !"__UNIQUE_ID_ddebug601", i1 false, i1 false}
!17 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 698, i32 31}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 1730, i32 2}
!23 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @pch_gbe_setup_tx_resources.__UNIQUE_ID_ddebug632, !22, !"__UNIQUE_ID_ddebug632", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 1771, i32 2}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @pch_gbe_setup_rx_resources.__UNIQUE_ID_ddebug633, !26, !"__UNIQUE_ID_ddebug633", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 1858, i32 22}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 1873, i32 7}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 1879, i32 7}
!35 = !{ptr @__initcall__kmod_pch_gbe__650_2714_pch_gbe_driver_init6, !36, !"__initcall__kmod_pch_gbe__650_2714_pch_gbe_driver_init6", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 2714, i32 1}
!37 = !{ptr @__exitcall_pch_gbe_driver_exit, !36, !"__exitcall_pch_gbe_driver_exit", i1 false, i1 false}
!38 = !{ptr @__UNIQUE_ID_description651, !39, !"__UNIQUE_ID_description651", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 2716, i32 1}
!40 = !{ptr @__UNIQUE_ID_author652, !41, !"__UNIQUE_ID_author652", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 2717, i32 1}
!42 = !{ptr @__UNIQUE_ID_file653, !43, !"__UNIQUE_ID_file653", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 2718, i32 1}
!44 = !{ptr @__UNIQUE_ID_license654, !43, !"__UNIQUE_ID_license654", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 281, i32 2}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @pch_gbe_mac_read_mac_addr.__UNIQUE_ID_ddebug596, !46, !"__UNIQUE_ID_ddebug596", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 296, i32 3}
!51 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @pch_gbe_wait_clr_bit._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @pch_gbe_wait_clr_bit._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 310, i32 2}
!56 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @pch_gbe_mac_mar_set.__UNIQUE_ID_ddebug597, !55, !"__UNIQUE_ID_ddebug597", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 916, i32 2}
!60 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @pch_gbe_clean_tx_ring.__UNIQUE_ID_ddebug609, !59, !"__UNIQUE_ID_ddebug609", i1 false, i1 false}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 949, i32 2}
!64 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @pch_gbe_clean_rx_ring.__UNIQUE_ID_ddebug610, !63, !"__UNIQUE_ID_ddebug610", i1 false, i1 false}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 784, i32 2}
!68 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @pch_gbe_configure_tx.__UNIQUE_ID_ddebug606, !67, !"__UNIQUE_ID_ddebug606", i1 false, i1 false}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 832, i32 2}
!72 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @pch_gbe_configure_rx.__UNIQUE_ID_ddebug607, !71, !"__UNIQUE_ID_ddebug607", i1 false, i1 false}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 845, i32 2}
!76 = !{ptr @pch_gbe_configure_rx.__UNIQUE_ID_ddebug608, !75, !"__UNIQUE_ID_ddebug608", i1 false, i1 false}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 1835, i32 22}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 1837, i32 2}
!81 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @pch_gbe_request_irq.__UNIQUE_ID_ddebug634, !80, !"__UNIQUE_ID_ddebug634", i1 false, i1 false}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 1264, i32 2}
!85 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @pch_gbe_intr.__UNIQUE_ID_ddebug614, !84, !"__UNIQUE_ID_ddebug614", i1 false, i1 false}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 1270, i32 4}
!89 = !{ptr @pch_gbe_intr.__UNIQUE_ID_ddebug615, !88, !"__UNIQUE_ID_ddebug615", i1 false, i1 false}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 1290, i32 3}
!92 = !{ptr @pch_gbe_intr.__UNIQUE_ID_ddebug616, !91, !"__UNIQUE_ID_ddebug616", i1 false, i1 false}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 1313, i32 2}
!95 = !{ptr @pch_gbe_intr.__UNIQUE_ID_ddebug617, !94, !"__UNIQUE_ID_ddebug617", i1 false, i1 false}
!96 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 531, i32 2}
!98 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @pch_gbe_mac_set_pause_packet.__UNIQUE_ID_ddebug602, !97, !"__UNIQUE_ID_ddebug602", i1 false, i1 false}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 1368, i32 3}
!102 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @pch_gbe_alloc_rx_buffers.__UNIQUE_ID_ddebug618, !101, !"__UNIQUE_ID_ddebug618", i1 false, i1 false}
!104 = distinct !{null, !105, !"__already_done", i1 false, i1 false}
!105 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!106 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 746, i32 2}
!110 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @pch_gbe_irq_enable.__UNIQUE_ID_ddebug605, !109, !"__UNIQUE_ID_ddebug605", i1 false, i1 false}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 731, i32 2}
!114 = !{ptr @pch_gbe_irq_disable.__UNIQUE_ID_ddebug604, !113, !"__UNIQUE_ID_ddebug604", i1 false, i1 false}
!115 = !{ptr @.str.51, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 2071, i32 2}
!117 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @pch_gbe_set_multi.__UNIQUE_ID_ddebug638, !116, !"__UNIQUE_ID_ddebug638", i1 false, i1 false}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 2115, i32 2}
!121 = !{ptr @pch_gbe_set_multi.__UNIQUE_ID_ddebug639, !120, !"__UNIQUE_ID_ddebug639", i1 false, i1 false}
!122 = !{ptr @pch_gbe_driver, !123, !"pch_gbe_driver", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 2703, i32 26}
!124 = !{ptr @pch_gbe_pcidev_id, !125, !"pch_gbe_pcidev_id", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 2652, i32 35}
!126 = !{ptr @pch_gbe_minnow_privdata, !127, !"pch_gbe_minnow_privdata", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 2646, i32 32}
!128 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 2636, i32 10}
!130 = !{ptr @.str.55, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 2614, i32 13}
!132 = !{ptr @.str.56, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 2616, i32 3}
!134 = !{ptr @pch_gbe_minnow_gpio_table, !135, !"pch_gbe_minnow_gpio_table", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 2613, i32 34}
!136 = !{ptr @.str.58, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 2482, i32 4}
!138 = !{ptr @.str.59, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.60, !137, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.61, !137, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @pch_gbe_probe._entry, !137, !"_entry", i1 false, i1 false}
!142 = !{ptr @pch_gbe_probe._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.63, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 2489, i32 3}
!145 = !{ptr @pch_gbe_probe._entry.62, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @pch_gbe_probe._entry_ptr.64, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.66, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 2544, i32 3}
!149 = !{ptr @pch_gbe_probe._entry.65, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @pch_gbe_probe._entry_ptr.67, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.69, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 2551, i32 3}
!153 = !{ptr @pch_gbe_probe._entry.68, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @pch_gbe_probe._entry_ptr.70, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.72, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 2563, i32 3}
!157 = !{ptr @pch_gbe_probe._entry.71, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @pch_gbe_probe._entry_ptr.73, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @pch_gbe_probe.__key, !160, !"__key", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 2566, i32 2}
!161 = !{ptr @.str.74, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @pch_gbe_probe.__key.75, !163, !"__key", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 2568, i32 2}
!164 = !{ptr @.str.76, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.78, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 2574, i32 2}
!167 = !{ptr @.str.79, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @pch_gbe_probe._entry.77, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @pch_gbe_probe._entry_ptr.80, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.81, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 2586, i32 2}
!172 = !{ptr @pch_gbe_probe.__UNIQUE_ID_ddebug649, !171, !"__UNIQUE_ID_ddebug649", i1 false, i1 false}
!173 = !{ptr @pch_gbe_netdev_ops, !174, !"pch_gbe_netdev_ops", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 2319, i32 36}
!175 = !{ptr @.str.82, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 1999, i32 2}
!177 = !{ptr @.str.83, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @pch_gbe_open.__UNIQUE_ID_ddebug636, !176, !"__UNIQUE_ID_ddebug636", i1 false, i1 false}
!179 = !{ptr @.str.84, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 2010, i32 21}
!181 = !{ptr @.str.85, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 2048, i32 3}
!183 = !{ptr @.str.86, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @pch_gbe_xmit_frame.__UNIQUE_ID_ddebug637, !182, !"__UNIQUE_ID_ddebug637", i1 false, i1 false}
!185 = !{ptr @.str.87, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 1144, i32 31}
!187 = !{ptr @.str.88, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 2142, i32 2}
!189 = !{ptr @.str.89, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @pch_gbe_set_mac.__UNIQUE_ID_ddebug640, !188, !"__UNIQUE_ID_ddebug640", i1 false, i1 false}
!191 = !{ptr @.str.90, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 2143, i32 2}
!193 = !{ptr @pch_gbe_set_mac.__UNIQUE_ID_ddebug641, !192, !"__UNIQUE_ID_ddebug641", i1 false, i1 false}
!194 = !{ptr @.str.91, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 2144, i32 2}
!196 = !{ptr @pch_gbe_set_mac.__UNIQUE_ID_ddebug642, !195, !"__UNIQUE_ID_ddebug642", i1 false, i1 false}
!197 = !{ptr @.str.92, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 2145, i32 2}
!199 = !{ptr @pch_gbe_set_mac.__UNIQUE_ID_ddebug643, !198, !"__UNIQUE_ID_ddebug643", i1 false, i1 false}
!200 = !{ptr @.str.93, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 2236, i32 2}
!202 = !{ptr @.str.94, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @pch_gbe_ioctl.__UNIQUE_ID_ddebug645, !201, !"__UNIQUE_ID_ddebug645", i1 false, i1 false}
!204 = !{ptr @.str.95, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 234, i32 19}
!206 = !{ptr @.str.96, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 240, i32 19}
!208 = distinct !{null, !209, !"__already_done", i1 false, i1 false}
!209 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!210 = distinct !{null, !209, !"<string literal>", i1 false, i1 false}
!211 = distinct !{null, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!213 = !{ptr @.str.99, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!215 = !{ptr @.str.100, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 2192, i32 2}
!217 = !{ptr @.str.101, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @pch_gbe_change_mtu.__UNIQUE_ID_ddebug644, !216, !"__UNIQUE_ID_ddebug644", i1 false, i1 false}
!219 = !{ptr @.str.102, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 2274, i32 2}
!221 = !{ptr @.str.103, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @pch_gbe_napi_poll.__UNIQUE_ID_ddebug646, !220, !"__UNIQUE_ID_ddebug646", i1 false, i1 false}
!223 = !{ptr @.str.104, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 2297, i32 2}
!225 = !{ptr @pch_gbe_napi_poll.__UNIQUE_ID_ddebug647, !224, !"__UNIQUE_ID_ddebug647", i1 false, i1 false}
!226 = !{ptr @.str.105, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 1628, i32 3}
!228 = !{ptr @.str.106, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @pch_gbe_clean_rx.__UNIQUE_ID_ddebug630, !227, !"__UNIQUE_ID_ddebug630", i1 false, i1 false}
!230 = !{ptr @.str.107, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 1635, i32 23}
!232 = !{ptr @.str.108, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 1639, i32 23}
!234 = !{ptr @.str.109, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 1643, i32 23}
!236 = !{ptr @.str.110, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 1674, i32 4}
!238 = !{ptr @pch_gbe_clean_rx.__UNIQUE_ID_ddebug631, !237, !"__UNIQUE_ID_ddebug631", i1 false, i1 false}
!239 = !{ptr @.str.111, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 1463, i32 2}
!241 = !{ptr @.str.112, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @pch_gbe_clean_tx.__UNIQUE_ID_ddebug619, !240, !"__UNIQUE_ID_ddebug619", i1 false, i1 false}
!243 = !{ptr @.str.113, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 1468, i32 2}
!245 = !{ptr @pch_gbe_clean_tx.__UNIQUE_ID_ddebug620, !244, !"__UNIQUE_ID_ddebug620", i1 false, i1 false}
!246 = !{ptr @.str.114, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 1477, i32 4}
!248 = !{ptr @pch_gbe_clean_tx.__UNIQUE_ID_ddebug621, !247, !"__UNIQUE_ID_ddebug621", i1 false, i1 false}
!249 = !{ptr @.str.115, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 1492, i32 4}
!251 = !{ptr @pch_gbe_clean_tx.__UNIQUE_ID_ddebug622, !250, !"__UNIQUE_ID_ddebug622", i1 false, i1 false}
!252 = !{ptr @.str.116, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 1501, i32 3}
!254 = !{ptr @pch_gbe_clean_tx.__UNIQUE_ID_ddebug623, !253, !"__UNIQUE_ID_ddebug623", i1 false, i1 false}
!255 = !{ptr @.str.117, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 1509, i32 32}
!257 = !{ptr @.str.118, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 1514, i32 8}
!259 = !{ptr @.str.119, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 1519, i32 8}
!261 = !{ptr @.str.120, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 1526, i32 4}
!263 = !{ptr @pch_gbe_clean_tx.__UNIQUE_ID_ddebug624, !262, !"__UNIQUE_ID_ddebug624", i1 false, i1 false}
!264 = !{ptr @.str.121, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 1533, i32 4}
!266 = !{ptr @pch_gbe_clean_tx.__UNIQUE_ID_ddebug625, !265, !"__UNIQUE_ID_ddebug625", i1 false, i1 false}
!267 = !{ptr @.str.122, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 1540, i32 4}
!269 = !{ptr @pch_gbe_clean_tx.__UNIQUE_ID_ddebug626, !268, !"__UNIQUE_ID_ddebug626", i1 false, i1 false}
!270 = !{ptr @.str.123, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 1555, i32 2}
!272 = !{ptr @pch_gbe_clean_tx.__UNIQUE_ID_ddebug627, !271, !"__UNIQUE_ID_ddebug627", i1 false, i1 false}
!273 = !{ptr @.str.124, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 1565, i32 4}
!275 = !{ptr @pch_gbe_clean_tx.__UNIQUE_ID_ddebug628, !274, !"__UNIQUE_ID_ddebug628", i1 false, i1 false}
!276 = !{ptr @pch_gbe_clean_tx.__UNIQUE_ID_ddebug629, !277, !"__UNIQUE_ID_ddebug629", i1 false, i1 false}
!277 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 1570, i32 3}
!278 = !{ptr @.str.125, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 1956, i32 22}
!280 = !{ptr @pch_gbe_sw_init.__key, !281, !"__key", i1 false, i1 false}
!281 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 1959, i32 2}
!282 = !{ptr @.str.126, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @pch_gbe_sw_init.__key.127, !284, !"__key", i1 false, i1 false}
!284 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 1960, i32 2}
!285 = !{ptr @.str.128, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @pch_gbe_sw_init.__key.129, !287, !"__key", i1 false, i1 false}
!287 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 1961, i32 2}
!288 = !{ptr @.str.130, !287, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @.str.131, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 1967, i32 2}
!291 = !{ptr @.str.132, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @pch_gbe_sw_init.__UNIQUE_ID_ddebug635, !290, !"__UNIQUE_ID_ddebug635", i1 false, i1 false}
!293 = !{ptr @.str.133, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 597, i32 2}
!295 = !{ptr @.str.134, !294, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @pch_gbe_init_phy.__UNIQUE_ID_ddebug603, !294, !"__UNIQUE_ID_ddebug603", i1 false, i1 false}
!297 = !{ptr @.str.135, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 1024, i32 2}
!299 = !{ptr @.str.136, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @pch_gbe_watchdog.__UNIQUE_ID_ddebug611, !298, !"__UNIQUE_ID_ddebug611", i1 false, i1 false}
!301 = !{ptr @.str.137, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 1040, i32 3}
!303 = !{ptr @pch_gbe_watchdog.__UNIQUE_ID_ddebug612, !302, !"__UNIQUE_ID_ddebug612", i1 false, i1 false}
!304 = !{ptr @.str.138, !302, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @.str.139, !302, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @.str.140, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 1048, i32 3}
!308 = !{ptr @pch_gbe_watchdog.__UNIQUE_ID_ddebug613, !307, !"__UNIQUE_ID_ddebug613", i1 false, i1 false}
!309 = !{ptr @.str.141, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 445, i32 2}
!311 = !{ptr @.str.142, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @pch_gbe_mac_set_wol_event.__UNIQUE_ID_ddebug600, !310, !"__UNIQUE_ID_ddebug600", i1 false, i1 false}
!313 = !{ptr @pch_gbe_err_handler, !314, !"pch_gbe_err_handler", i1 false, i1 false}
!314 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 2697, i32 40}
!315 = !{ptr @.str.143, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 2355, i32 22}
!317 = !{ptr @.str.144, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 2375, i32 4}
!319 = !{ptr @.str.145, !318, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @pch_gbe_io_resume.__UNIQUE_ID_ddebug648, !318, !"__UNIQUE_ID_ddebug648", i1 false, i1 false}
!321 = !{ptr @pch_gbe_pm_ops, !322, !"pch_gbe_pm_ops", i1 false, i1 false}
!322 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 2687, i32 32}
!323 = !{ptr @.str.146, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c", i32 2429, i32 22}
!325 = !{!"sp"}
!326 = !{i32 1, !"wchar_size", i32 2}
!327 = !{i32 1, !"min_enum_size", i32 4}
!328 = !{i32 8, !"branch-target-enforcement", i32 0}
!329 = !{i32 8, !"sign-return-address", i32 0}
!330 = !{i32 8, !"sign-return-address-all", i32 0}
!331 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!332 = !{i32 7, !"uwtable", i32 1}
!333 = !{i32 7, !"frame-pointer", i32 2}
!334 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!335 = !{i64 2148860611, i64 2148860616, i64 2148860629, i64 2148860673, i64 2148860707, i64 2148860728}
!336 = !{i64 6288908}
!337 = !{i64 2153829257}
!338 = !{i64 2153830612}
!339 = !{i64 6288490}
!340 = !{i8 0, i8 2}
!341 = !{!"branch_weights", i32 1, i32 2000}
!342 = !{!"branch_weights", i32 2000, i32 1}
!343 = !{i64 2148467248}
!344 = !{i64 2148381981, i64 2148382013, i64 2148382042, i64 2148382076, i64 2148382107, i64 2148382130}
!345 = !{i64 2148467477}
!346 = !{i64 2148378796, i64 2148378822, i64 2148378851, i64 2148378885, i64 2148378916, i64 2148378939}
!347 = !{i64 6671467, i64 6671507, i64 6671535, i64 6671580}
!348 = !{i64 6670114}
!349 = !{!"auto-init"}
!350 = !{i64 2152414115, i64 2152414140}
!351 = !{i64 4909670}
!352 = !{i64 4909867}
!353 = !{i64 2152395100}
!354 = !{i64 2152414796, i64 2152414821}

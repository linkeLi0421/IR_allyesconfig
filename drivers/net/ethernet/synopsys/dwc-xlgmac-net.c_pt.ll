; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/synopsys/dwc-xlgmac-net.c_pt.bc'
source_filename = "../drivers/net/ethernet/synopsys/dwc-xlgmac-net.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.19 }
%union.anon.19 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.129, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.17 }
%union.anon.17 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.18 }
%union.anon.18 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.129 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.xlgmac_channel = type { [16 x i8], ptr, i32, ptr, i32, [48 x i8], %struct.napi_struct, i32, i32, %struct.timer_list, ptr, ptr, [16 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.sk_buff = type { %union.anon.4, %union.anon.7, %union.anon.113, [48 x i8], %union.anon.114, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.116, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { ptr, ptr, %union.anon.6 }
%union.anon.6 = type { ptr }
%union.anon.7 = type { ptr }
%union.anon.113 = type { i64 }
%union.anon.114 = type { %struct.anon.115 }
%struct.anon.115 = type { i32, ptr }
%union.anon.116 = type { %struct.anon.117 }
%struct.anon.117 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.118, i32, i32, i32, i16, i16, %union.anon.120, i32, %union.anon.121, %union.anon.122, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.118 = type { i32 }
%union.anon.120 = type { i32 }
%union.anon.121 = type { i32 }
%union.anon.122 = type { i16 }
%struct.xlgmac_pkt_info = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i64, i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.xlgmac_ring = type { %struct.xlgmac_pkt_info, ptr, i32, i32, ptr, %struct.xlgmac_page_alloc, %struct.xlgmac_page_alloc, i32, i32, i32, %union.anon.149, [120 x i8] }
%struct.xlgmac_page_alloc = type { ptr, i32, i32, i32 }
%union.anon.149 = type { %struct.anon.150 }
%struct.anon.150 = type { i32, i32, i16, i16 }
%struct.xlgmac_pdata = type { ptr, ptr, %struct.xlgmac_hw_ops, %struct.xlgmac_desc_ops, %struct.xlgmac_stats, i32, ptr, %struct.xlgmac_hw_features, %struct.work_struct, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], [6 x i8], i64, %struct.napi_struct, [128 x i32], i32, %struct.mutex, [40 x i8], [256 x i32], i32, i32, [32 x i8], [32 x i8] }
%struct.xlgmac_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xlgmac_desc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xlgmac_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xlgmac_hw_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xlgmac_desc_data = type { ptr, i32, ptr, i32, i32, %struct.xlgmac_tx_desc_data, %struct.xlgmac_rx_desc_data, i32, i32, %struct.anon.148 }
%struct.xlgmac_tx_desc_data = type { i32, i32 }
%struct.xlgmac_rx_desc_data = type { %struct.xlgmac_buffer_data, %struct.xlgmac_buffer_data, i16, i16 }
%struct.xlgmac_buffer_data = type { %struct.xlgmac_page_alloc, %struct.xlgmac_page_alloc, i32, i32, i32 }
%struct.anon.148 = type { ptr, i32, i32 }

@xlgmac_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @xlgmac_open, ptr @xlgmac_close, ptr @xlgmac_xmit, ptr null, ptr null, ptr null, ptr @xlgmac_set_rx_mode, ptr @xlgmac_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @xlgmac_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @xlgmac_change_mtu, ptr null, ptr @xlgmac_tx_timeout, ptr @xlgmac_get_stats64, ptr null, ptr null, ptr null, ptr @xlgmac_vlan_rx_add_vid, ptr @xlgmac_vlan_rx_kill_vid, ptr @xlgmac_poll_controller, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xlgmac_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@xlgmac_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&pdata->restart_work)\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"MTU exceeds maximum supported value\0A\00", [59 x i8] zeroinitializer }, align 32
@xlgmac_init_timers.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(&channel->tx_timer)\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error in received packet\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"packet length exceeds configured MTU\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"error requesting irq %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s-TxRx-%u\00", [21 x i8] zeroinitializer }, align 32
@xlgmac_isr.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, i8 0, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dwc_xlgmac\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xlgmac_isr\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/ethernet/synopsys/dwc-xlgmac-net.c\00", [49 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DMA_ISR=%#010x\0A\00", [16 x i8] zeroinitializer }, align 32
@xlgmac_isr.__UNIQUE_ID_ddebug493 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, i8 0, i8 69, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DMA_CH%u_ISR=%#010x\0A\00", [43 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(unnamed net_device)\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"empty skb received from stack\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error processing TSO packet\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Tx queue stopped, not enough descriptors available\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tx timeout, device restarting\0A\00", [33 x i8] zeroinitializer }, align 32
@___asan_gen_.17 = private unnamed_addr constant [18 x i8] c"xlgmac_netdev_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 927, i32 36 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 661, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 194, i32 24 }
@___asan_gen_.29 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 394, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 1180, i32 5 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 1227, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 467, i32 24 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 479, i32 5 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 269, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 278, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [29 x i8] c"../include/linux/netdevice.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 4963, i32 10 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 722, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 740, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 46, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private constant [50 x i8] c"../drivers/net/ethernet/synopsys/dwc-xlgmac-net.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 696, i32 22 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @xlgmac_netdev_ops, ptr @xlgmac_open.__key, ptr @.str, ptr @.str.1, ptr @xlgmac_init_timers.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlgmac_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlgmac_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlgmac_init_timers.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @xlgmac_get_netdev_ops() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @xlgmac_netdev_ops
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_open(ptr noundef %netdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %mtu = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 20
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9000, i32 %1)
  %cmp.i = icmp ugt i32 %1, 9000
  br i1 %cmp.i, label %xlgmac_calc_rx_buf_size.exit.thread, label %xlgmac_calc_rx_buf_size.exit

xlgmac_calc_rx_buf_size.exit.thread:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %netdev, ptr noundef nonnull @.str.1) #11
  br label %cleanup

xlgmac_calc_rx_buf_size.exit:                     ; preds = %entry
  %2 = tail call i32 @llvm.umax.i32(i32 %1, i32 1500) #8
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 4074) #8
  %sub.i = add nuw nsw i32 %3, 85
  %and.i = and i32 %sub.i, 8128
  %desc_ops1 = getelementptr i8, ptr %netdev, i32 2528
  %rx_buf_size = getelementptr i8, ptr %netdev, i32 3244
  %4 = ptrtoint ptr %rx_buf_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and.i, ptr %rx_buf_size, align 4
  %5 = ptrtoint ptr %desc_ops1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %desc_ops1, align 4
  %call3 = tail call i32 %6(ptr noundef %add.ptr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %do.body, label %xlgmac_calc_rx_buf_size.exit.cleanup_crit_edge

xlgmac_calc_rx_buf_size.exit.cleanup_crit_edge:   ; preds = %xlgmac_calc_rx_buf_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %xlgmac_calc_rx_buf_size.exit
  %restart_work = getelementptr i8, ptr %netdev, i32 3116
  tail call void @__init_work(ptr noundef %restart_work, i32 noundef 0) #8
  %7 = ptrtoint ptr %restart_work to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %restart_work, align 4
  %lockdep_map = getelementptr i8, ptr %netdev, i32 3132
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @xlgmac_open.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry9 = getelementptr i8, ptr %netdev, i32 3120
  %8 = ptrtoint ptr %entry9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry9, ptr %entry9, align 4
  %prev.i = getelementptr i8, ptr %netdev, i32 3124
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry9, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %netdev, i32 3128
  %10 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @xlgmac_restart, ptr %func, align 4
  %channel_count.i = getelementptr i8, ptr %netdev, i32 3164
  %11 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %channel_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp5.not.i = icmp eq i32 %12, 0
  br i1 %cmp5.not.i, label %do.body.xlgmac_init_timers.exit_crit_edge, label %for.body.preheader.i

do.body.xlgmac_init_timers.exit_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %xlgmac_init_timers.exit

for.body.preheader.i:                             ; preds = %do.body
  %channel_head.i = getelementptr i8, ptr %netdev, i32 3160
  %13 = ptrtoint ptr %channel_head.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %channel_head.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %do.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.07.i = phi i32 [ %inc.i, %do.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %channel.06.i = phi ptr [ %incdec.ptr.i, %do.body.i.for.body.i_crit_edge ], [ %14, %for.body.preheader.i ]
  %tx_ring.i = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.06.i, i32 0, i32 10
  %15 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx_ring.i, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %for.body.i.xlgmac_init_timers.exit_crit_edge, label %do.body.i

for.body.i.xlgmac_init_timers.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xlgmac_init_timers.exit

do.body.i:                                        ; preds = %for.body.i
  %tx_timer.i = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.06.i, i32 0, i32 9
  tail call void @init_timer_key(ptr noundef %tx_timer.i, ptr noundef nonnull @xlgmac_tx_timer, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @xlgmac_init_timers.__key) #8
  %inc.i = add nuw i32 %i.07.i, 1
  %incdec.ptr.i = getelementptr %struct.xlgmac_channel, ptr %channel.06.i, i32 1
  %17 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %channel_count.i, align 4
  %cmp.i36 = icmp ult i32 %inc.i, %18
  br i1 %cmp.i36, label %do.body.i.for.body.i_crit_edge, label %do.body.i.xlgmac_init_timers.exit_crit_edge

do.body.i.xlgmac_init_timers.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xlgmac_init_timers.exit

do.body.i.for.body.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

xlgmac_init_timers.exit:                          ; preds = %do.body.i.xlgmac_init_timers.exit_crit_edge, %for.body.i.xlgmac_init_timers.exit_crit_edge, %do.body.xlgmac_init_timers.exit_crit_edge
  %call11 = tail call fastcc i32 @xlgmac_start(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %xlgmac_init_timers.exit.cleanup_crit_edge, label %err_channels_and_rings

xlgmac_init_timers.exit.cleanup_crit_edge:        ; preds = %xlgmac_init_timers.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_channels_and_rings:                           ; preds = %xlgmac_init_timers.exit
  call void @__sanitizer_cov_trace_pc() #10
  %free_channels_and_rings = getelementptr i8, ptr %netdev, i32 2532
  %19 = ptrtoint ptr %free_channels_and_rings to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %free_channels_and_rings, align 4
  tail call void %20(ptr noundef %add.ptr.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_channels_and_rings, %xlgmac_init_timers.exit.cleanup_crit_edge, %xlgmac_calc_rx_buf_size.exit.cleanup_crit_edge, %xlgmac_calc_rx_buf_size.exit.thread
  %retval.0 = phi i32 [ %call11, %err_channels_and_rings ], [ %call3, %xlgmac_calc_rx_buf_size.exit.cleanup_crit_edge ], [ 0, %xlgmac_init_timers.exit.cleanup_crit_edge ], [ -22, %xlgmac_calc_rx_buf_size.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_close(ptr noundef %netdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  tail call fastcc void @xlgmac_stop(ptr noundef %add.ptr.i)
  %free_channels_and_rings = getelementptr i8, ptr %netdev, i32 2532
  %0 = ptrtoint ptr %free_channels_and_rings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free_channels_and_rings, align 4
  tail call void %1(ptr noundef %add.ptr.i) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_xmit(ptr noundef %skb, ptr noundef %netdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %channel_head = getelementptr i8, ptr %netdev, i32 3160
  %0 = ptrtoint ptr %channel_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel_head, align 8
  %queue_mapping = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %2 = ptrtoint ptr %queue_mapping to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %queue_mapping, align 8
  %conv = zext i16 %3 to i32
  %add.ptr = getelementptr %struct.xlgmac_channel, ptr %1, i32 %conv
  %queue_index = getelementptr %struct.xlgmac_channel, ptr %1, i32 %conv, i32 2
  %4 = ptrtoint ptr %queue_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %queue_index, align 4
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i, align 128
  %tx_ring = getelementptr %struct.xlgmac_channel, ptr %1, i32 %conv, i32 10
  %8 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_ring, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %do.body5, label %if.end9

do.body5:                                         ; preds = %entry
  %msg_enable = getelementptr i8, ptr %netdev, i32 2976
  %12 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable, align 8
  %and = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body5.do.end8_crit_edge, label %if.then6

do.body5.do.end8_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

if.then6:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.13) #11
  br label %do.end8

do.end8:                                          ; preds = %if.then6, %do.body5.do.end8_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #8
  br label %cleanup

if.end9:                                          ; preds = %entry
  %14 = call ptr @memset(ptr %9, i32 0, i32 64)
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %skb, ptr %9, align 8
  %desc_count.i = getelementptr inbounds %struct.xlgmac_pkt_info, ptr %9, i32 0, i32 3
  %tx_packets.i = getelementptr inbounds %struct.xlgmac_pkt_info, ptr %9, i32 0, i32 5
  %16 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %tx_packets.i, align 4
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  %tx_bytes.i = getelementptr inbounds %struct.xlgmac_pkt_info, ptr %9, i32 0, i32 6
  %19 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %tx_bytes.i, align 8
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %20 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %21 = and i16 %bf.load.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %21)
  %cmp.not.i.i = icmp eq i16 %21, 1536
  br i1 %cmp.not.i.i, label %xlgmac_is_tso.exit.i, label %if.end9.if.end92.i_crit_edge

if.end9.if.end92.i_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92.i

xlgmac_is_tso.exit.i:                             ; preds = %if.end9
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %22 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %end.i.i.i.i, align 4
  %gso_size.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %gso_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %gso_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool.i.not.i.not.i = icmp eq i16 %25, 0
  br i1 %tobool.i.not.i.not.i, label %xlgmac_is_tso.exit.i.if.end92.sink.split.i_crit_edge, label %if.then.i

xlgmac_is_tso.exit.i.if.end92.sink.split.i_crit_edge: ; preds = %xlgmac_is_tso.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92.sink.split.i

if.then.i:                                        ; preds = %xlgmac_is_tso.exit.i
  %cur_mss.i = getelementptr inbounds %struct.xlgmac_ring, ptr %9, i32 0, i32 10, i32 0, i32 2
  %26 = ptrtoint ptr %cur_mss.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %cur_mss.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %27)
  %cmp.not.i = icmp eq i16 %25, %27
  br i1 %cmp.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then6.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %desc_count.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %desc_count.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then6.i, %if.then.i.if.end.i_crit_edge
  %context_desc.0.i = phi i32 [ 1, %if.then6.i ], [ 0, %if.then.i.if.end.i_crit_edge ]
  %29 = ptrtoint ptr %desc_count.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %desc_count.i, align 4
  %inc9.i = add i32 %30, 1
  store i32 %inc9.i, ptr %desc_count.i, align 4
  br label %if.end92.sink.split.i

if.end92.sink.split.i:                            ; preds = %if.end.i, %xlgmac_is_tso.exit.i.if.end92.sink.split.i_crit_edge
  %.sink14.i = phi i32 [ 3, %if.end.i ], [ 1, %xlgmac_is_tso.exit.i.if.end92.sink.split.i_crit_edge ]
  %context_desc.1.ph.i = phi i32 [ %context_desc.0.i, %if.end.i ], [ 0, %xlgmac_is_tso.exit.i.if.end92.sink.split.i_crit_edge ]
  %attributes.i = getelementptr inbounds %struct.xlgmac_pkt_info, ptr %9, i32 0, i32 1
  %31 = ptrtoint ptr %attributes.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %attributes.i, align 4
  %or89.i = or i32 %32, %.sink14.i
  store i32 %or89.i, ptr %attributes.i, align 4
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.end92.sink.split.i, %if.end9.if.end92.i_crit_edge
  %context_desc.1.i = phi i32 [ 0, %if.end9.if.end92.i_crit_edge ], [ %context_desc.1.ph.i, %if.end92.sink.split.i ]
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %33 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %bf.load93.i = load i32, ptr %vlan_present.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load93.i)
  %tobool96.not.i = icmp sgt i32 %bf.load93.i, -1
  br i1 %tobool96.not.i, label %if.end92.i.if.end139.i_crit_edge, label %if.then97.i

if.end92.i.if.end139.i_crit_edge:                 ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end139.i

if.then97.i:                                      ; preds = %if.end92.i
  %vlan_tci.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %34 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %vlan_tci.i, align 2
  %cur_vlan_ctag.i = getelementptr inbounds %struct.xlgmac_ring, ptr %9, i32 0, i32 10, i32 0, i32 3
  %36 = ptrtoint ptr %cur_vlan_ctag.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %cur_vlan_ctag.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %35, i16 %37)
  %cmp100.not.i = icmp ne i16 %35, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %context_desc.1.i)
  %tobool103.not.i = icmp eq i32 %context_desc.1.i, 0
  %or.cond.i = and i1 %tobool103.not.i, %cmp100.not.i
  br i1 %or.cond.i, label %if.then104.i, label %if.then97.i.if.end108.i_crit_edge

if.then97.i.if.end108.i_crit_edge:                ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108.i

if.then104.i:                                     ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %desc_count.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %desc_count.i, align 4
  %inc106.i = add i32 %39, 1
  store i32 %inc106.i, ptr %desc_count.i, align 4
  br label %if.end108.i

if.end108.i:                                      ; preds = %if.then104.i, %if.then97.i.if.end108.i_crit_edge
  %attributes110.i = getelementptr inbounds %struct.xlgmac_pkt_info, ptr %9, i32 0, i32 1
  %40 = ptrtoint ptr %attributes110.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %attributes110.i, align 4
  %or137.i = or i32 %41, 4
  store i32 %or137.i, ptr %attributes110.i, align 4
  br label %if.end139.i

if.end139.i:                                      ; preds = %if.end108.i, %if.end92.i.if.end139.i_crit_edge
  %42 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %44 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %43, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %tobool141.not5.i = icmp eq i32 %sub.i.i, 0
  br i1 %tobool141.not5.i, label %if.end139.i.for.cond148.preheader.i_crit_edge, label %for.body.lr.ph.i

if.end139.i.for.cond148.preheader.i_crit_edge:    ; preds = %if.end139.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond148.preheader.i

for.body.lr.ph.i:                                 ; preds = %if.end139.i
  %46 = ptrtoint ptr %desc_count.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %desc_count.promoted.i = load i32, ptr %desc_count.i, align 4
  br label %for.body.i

for.cond.for.cond148.preheader_crit_edge.i:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %desc_count.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %inc143.i, ptr %desc_count.i, align 4
  br label %for.cond148.preheader.i

for.cond148.preheader.i:                          ; preds = %for.cond.for.cond148.preheader_crit_edge.i, %if.end139.i.for.cond148.preheader.i_crit_edge
  %end.i1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %48 = ptrtoint ptr %end.i1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %end.i1.i, align 4
  %nr_frags10.i = getelementptr inbounds %struct.skb_shared_info, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %nr_frags10.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %nr_frags10.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp15112.not.i = icmp eq i8 %51, 0
  br i1 %cmp15112.not.i, label %for.cond148.preheader.i.xlgmac_prep_tx_pkt.exit_crit_edge, label %for.cond148.preheader.i.for.body153.i_crit_edge

for.cond148.preheader.i.for.body153.i_crit_edge:  ; preds = %for.cond148.preheader.i
  br label %for.body153.i

for.cond148.preheader.i.xlgmac_prep_tx_pkt.exit_crit_edge: ; preds = %for.cond148.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xlgmac_prep_tx_pkt.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %52 = phi i32 [ %desc_count.promoted.i, %for.body.lr.ph.i ], [ %inc143.i, %for.body.i.for.body.i_crit_edge ]
  %len.06.i = phi i32 [ %sub.i.i, %for.body.lr.ph.i ], [ %53, %for.body.i.for.body.i_crit_edge ]
  %inc143.i = add i32 %52, 1
  %53 = tail call i32 @llvm.usub.sat.i32(i32 %len.06.i, i32 16320) #8
  %tobool141.not.i = icmp ult i32 %len.06.i, 16321
  br i1 %tobool141.not.i, label %for.cond.for.cond148.preheader_crit_edge.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body153.i:                                    ; preds = %for.inc.i.for.body153.i_crit_edge, %for.cond148.preheader.i.for.body153.i_crit_edge
  %54 = phi ptr [ %62, %for.inc.i.for.body153.i_crit_edge ], [ %49, %for.cond148.preheader.i.for.body153.i_crit_edge ]
  %i.013.i = phi i32 [ %inc170.i, %for.inc.i.for.body153.i_crit_edge ], [ 0, %for.cond148.preheader.i.for.body153.i_crit_edge ]
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %54, i32 0, i32 12, i32 %i.013.i, i32 1
  %55 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bv_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool157.not7.i = icmp eq i32 %56, 0
  br i1 %tobool157.not7.i, label %for.body153.i.for.inc.i_crit_edge, label %for.body158.lr.ph.i

for.body153.i.for.inc.i_crit_edge:                ; preds = %for.body153.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.body158.lr.ph.i:                              ; preds = %for.body153.i
  %57 = ptrtoint ptr %desc_count.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %desc_count.promoted9.i = load i32, ptr %desc_count.i, align 4
  br label %for.body158.i

for.body158.i:                                    ; preds = %for.body158.i.for.body158.i_crit_edge, %for.body158.lr.ph.i
  %58 = phi i32 [ %desc_count.promoted9.i, %for.body158.lr.ph.i ], [ %inc160.i, %for.body158.i.for.body158.i_crit_edge ]
  %len.18.i = phi i32 [ %56, %for.body158.lr.ph.i ], [ %59, %for.body158.i.for.body158.i_crit_edge ]
  %inc160.i = add i32 %58, 1
  %59 = tail call i32 @llvm.usub.sat.i32(i32 %len.18.i, i32 16320) #8
  %tobool157.not.i = icmp ult i32 %len.18.i, 16321
  br i1 %tobool157.not.i, label %for.cond156.for.inc_crit_edge.i, label %for.body158.i.for.body158.i_crit_edge

for.body158.i.for.body158.i_crit_edge:            ; preds = %for.body158.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body158.i

for.cond156.for.inc_crit_edge.i:                  ; preds = %for.body158.i
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %desc_count.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %inc160.i, ptr %desc_count.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.cond156.for.inc_crit_edge.i, %for.body153.i.for.inc.i_crit_edge
  %inc170.i = add nuw nsw i32 %i.013.i, 1
  %61 = ptrtoint ptr %end.i1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %end.i1.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %nr_frags.i, align 2
  %conv150.i = zext i8 %64 to i32
  %cmp151.i = icmp ult i32 %inc170.i, %conv150.i
  br i1 %cmp151.i, label %for.inc.i.for.body153.i_crit_edge, label %for.inc.i.xlgmac_prep_tx_pkt.exit_crit_edge

for.inc.i.xlgmac_prep_tx_pkt.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xlgmac_prep_tx_pkt.exit

for.inc.i.for.body153.i_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body153.i

xlgmac_prep_tx_pkt.exit:                          ; preds = %for.inc.i.xlgmac_prep_tx_pkt.exit_crit_edge, %for.cond148.preheader.i.xlgmac_prep_tx_pkt.exit_crit_edge
  %65 = ptrtoint ptr %desc_count.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %desc_count.i, align 4
  %pdata1.i = getelementptr %struct.xlgmac_channel, ptr %1, i32 %conv, i32 1
  %67 = ptrtoint ptr %pdata1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pdata1.i, align 16
  %dma_desc_count.i.i = getelementptr inbounds %struct.xlgmac_ring, ptr %9, i32 0, i32 3
  %69 = ptrtoint ptr %dma_desc_count.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dma_desc_count.i.i, align 8
  %cur.i.i = getelementptr inbounds %struct.xlgmac_ring, ptr %9, i32 0, i32 7
  %71 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cur.i.i, align 16
  %dirty.i.i = getelementptr inbounds %struct.xlgmac_ring, ptr %9, i32 0, i32 8
  %73 = ptrtoint ptr %dirty.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %dirty.i.i, align 4
  %sub.neg.i.i = sub i32 %70, %72
  %sub1.i.i = add i32 %sub.neg.i.i, %74
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i.i, i32 %66)
  %cmp.i = icmp ult i32 %sub1.i.i, %66
  br i1 %cmp.i, label %do.body.i, label %if.end13

do.body.i:                                        ; preds = %xlgmac_prep_tx_pkt.exit
  %msg_enable.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %68, i32 0, i32 5
  %75 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.do.end.i_crit_edge, label %if.then2.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %68, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %78, ptr noundef nonnull @.str.15) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then2.i, %do.body.i.do.end.i_crit_edge
  %79 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %68, align 8
  %81 = ptrtoint ptr %queue_index to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %queue_index, align 4
  %conv.i.i = and i32 %82, 65535
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %80, i32 0, i32 103
  %83 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr %struct.netdev_queue, ptr %84, i32 %conv.i.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #8
  %85 = getelementptr inbounds %struct.xlgmac_ring, ptr %9, i32 0, i32 10
  %queue_stopped.i = getelementptr inbounds %struct.xlgmac_ring, ptr %9, i32 0, i32 10, i32 0, i32 1
  %86 = ptrtoint ptr %queue_stopped.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1, ptr %queue_stopped.i, align 4
  %87 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool4.not.i = icmp eq i32 %88, 0
  br i1 %tobool4.not.i, label %do.end.i.cleanup_crit_edge, label %if.then5.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %tx_start_xmit.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %68, i32 0, i32 2, i32 25
  %89 = ptrtoint ptr %tx_start_xmit.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %tx_start_xmit.i, align 4
  tail call void %90(ptr noundef %add.ptr, ptr noundef %9) #8
  br label %cleanup

if.end13:                                         ; preds = %xlgmac_prep_tx_pkt.exit
  %attributes.i78 = getelementptr inbounds %struct.xlgmac_pkt_info, ptr %9, i32 0, i32 1
  %91 = ptrtoint ptr %attributes.i78 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %attributes.i78, align 4
  %93 = and i32 %92, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.not.i79 = icmp eq i32 %93, 0
  br i1 %tobool.not.i79, label %if.end13.if.end25_crit_edge, label %if.end.i80

if.end13.if.end25_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.end.i80:                                       ; preds = %if.end13
  %cloned.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %94 = ptrtoint ptr %cloned.i.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %bf.load.i.i.i = load i8, ptr %cloned.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %if.end.i80.if.end9.i_crit_edge, label %skb_header_cloned.exit.i.i

if.end.i80.if.end9.i_crit_edge:                   ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

skb_header_cloned.exit.i.i:                       ; preds = %if.end.i80
  %95 = ptrtoint ptr %end.i1.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %end.i1.i, align 4
  %dataref1.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %96, i32 0, i32 10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i, i32 noundef 4) #8
  %97 = ptrtoint ptr %dataref1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %dataref1.i.i.i, align 4
  %and.i.i.i = and i32 %98, 65535
  %shr.i.i.i = ashr i32 %98, 16
  %sub.i.i.i = sub nsw i32 %and.i.i.i, %shr.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %sub.i.i.i, 1
  br i1 %cmp.i.not.i.i, label %skb_header_cloned.exit.i.i.if.end9.i_crit_edge, label %skb_cow_head.exit.i

skb_header_cloned.exit.i.i.if.end9.i_crit_edge:   ; preds = %skb_header_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

skb_cow_head.exit.i:                              ; preds = %skb_header_cloned.exit.i.i
  %call4.i.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool7.not.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool7.not.i, label %skb_cow_head.exit.i.if.end9.i_crit_edge, label %do.body17

skb_cow_head.exit.i.if.end9.i_crit_edge:          ; preds = %skb_cow_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.end9.i:                                        ; preds = %skb_cow_head.exit.i.if.end9.i_crit_edge, %skb_header_cloned.exit.i.i.if.end9.i_crit_edge, %if.end.i80.if.end9.i_crit_edge
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %99 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %head.i.i.i, align 8
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %101 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %102 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %100, i32 %conv.i.i.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %103 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %104 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %doff.i.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %105 = ptrtoint ptr %doff.i.i.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %bf.load.i.i46.i = load i16, ptr %doff.i.i.i, align 4
  %106 = lshr i16 %bf.load.i.i46.i, 10
  %107 = and i16 %106, 60
  %mul.i.i.i = zext i16 %107 to i32
  %add12.i = add i32 %sub.ptr.sub.i.i, %mul.i.i.i
  %header_len.i = getelementptr inbounds %struct.xlgmac_pkt_info, ptr %9, i32 0, i32 7
  %108 = ptrtoint ptr %header_len.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %add12.i, ptr %header_len.i, align 4
  %109 = load ptr, ptr %head.i.i.i, align 8
  %110 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i49.i = zext i16 %110 to i32
  %add.ptr.i.i.i50.i = getelementptr i8, ptr %109, i32 %conv.i.i.i49.i
  %doff.i.i51.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i50.i, i32 0, i32 4
  %111 = ptrtoint ptr %doff.i.i51.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %bf.load.i.i52.i = load i16, ptr %doff.i.i51.i, align 4
  %112 = lshr i16 %bf.load.i.i52.i, 10
  %113 = and i16 %112, 60
  %mul.i.i53.i = zext i16 %113 to i32
  %tcp_header_len.i = getelementptr inbounds %struct.xlgmac_pkt_info, ptr %9, i32 0, i32 8
  %114 = ptrtoint ptr %tcp_header_len.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %mul.i.i53.i, ptr %tcp_header_len.i, align 8
  %115 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %len, align 4
  %sub15.i = sub i32 %116, %add12.i
  %tcp_payload_len.i = getelementptr inbounds %struct.xlgmac_pkt_info, ptr %9, i32 0, i32 9
  %117 = ptrtoint ptr %tcp_payload_len.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %sub15.i, ptr %tcp_payload_len.i, align 4
  %118 = ptrtoint ptr %end.i1.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %end.i1.i, align 4
  %gso_size.i82 = getelementptr inbounds %struct.skb_shared_info, ptr %119, i32 0, i32 4
  %120 = ptrtoint ptr %gso_size.i82 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %gso_size.i82, align 4
  %mss.i = getelementptr inbounds %struct.xlgmac_pkt_info, ptr %9, i32 0, i32 10
  %122 = ptrtoint ptr %mss.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %121, ptr %mss.i, align 8
  %123 = load ptr, ptr %end.i1.i, align 4
  %gso_segs.i = getelementptr inbounds %struct.skb_shared_info, ptr %123, i32 0, i32 5
  %124 = ptrtoint ptr %gso_segs.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %gso_segs.i, align 2
  %conv.i = zext i16 %125 to i32
  %126 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %conv.i, ptr %tx_packets.i, align 4
  %sub25.i = add nsw i32 %conv.i, -1
  %mul.i = mul i32 %sub25.i, %add12.i
  %127 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %tx_bytes.i, align 8
  %add27.i = add i32 %mul.i, %128
  store i32 %add27.i, ptr %tx_bytes.i, align 8
  br label %if.end25

do.body17:                                        ; preds = %skb_cow_head.exit.i
  %msg_enable18 = getelementptr i8, ptr %netdev, i32 2976
  %129 = ptrtoint ptr %msg_enable18 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %msg_enable18, align 8
  %and19 = and i32 %130, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.body17.do.end24_crit_edge, label %if.then21

do.body17.do.end24_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end24

if.then21:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.14) #11
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %do.body17.do.end24_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #8
  br label %cleanup

if.end25:                                         ; preds = %if.end9.i, %if.end13.if.end25_crit_edge
  %131 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %131, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool.not.i87 = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool.not.i87, label %if.end25.xlgmac_prep_vlan.exit_crit_edge, label %if.then.i89

if.end25.xlgmac_prep_vlan.exit_crit_edge:         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %xlgmac_prep_vlan.exit

if.then.i89:                                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %vlan_tci.i88 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %132 = ptrtoint ptr %vlan_tci.i88 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %vlan_tci.i88, align 2
  %vlan_ctag.i = getelementptr inbounds %struct.xlgmac_pkt_info, ptr %9, i32 0, i32 11
  %134 = ptrtoint ptr %vlan_ctag.i to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %133, ptr %vlan_ctag.i, align 2
  br label %xlgmac_prep_vlan.exit

xlgmac_prep_vlan.exit:                            ; preds = %if.then.i89, %if.end25.xlgmac_prep_vlan.exit_crit_edge
  %map_tx_skb = getelementptr i8, ptr %netdev, i32 2536
  %135 = ptrtoint ptr %map_tx_skb to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %map_tx_skb, align 4
  %call26 = tail call i32 %136(ptr noundef %add.ptr, ptr noundef %skb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %if.end29

if.then28:                                        ; preds = %xlgmac_prep_vlan.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #8
  br label %cleanup

if.end29:                                         ; preds = %xlgmac_prep_vlan.exit
  %137 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %tx_bytes.i, align 8
  %dql.i = getelementptr %struct.netdev_queue, ptr %7, i32 %5, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %138)
  %cmp.i.i = icmp ugt i32 %138, 268435455
  br i1 %cmp.i.i, label %do.body2.i.i, label %dql_queued.exit.i, !prof !46

do.body2.i.i:                                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #8, !srcloc !47
  unreachable

dql_queued.exit.i:                                ; preds = %if.end29
  %last_obj_cnt.i.i = getelementptr %struct.netdev_queue, ptr %7, i32 %5, i32 15, i32 2
  %139 = ptrtoint ptr %last_obj_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %last_obj_cnt.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !48
  %140 = ptrtoint ptr %dql.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %dql.i, align 128
  %add.i.i = add i32 %141, %138
  store i32 %add.i.i, ptr %dql.i, align 128
  %adj_limit.i.i = getelementptr %struct.netdev_queue, ptr %7, i32 %5, i32 15, i32 1
  %142 = ptrtoint ptr %adj_limit.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile i32, ptr %adj_limit.i.i, align 4
  %144 = load volatile i32, ptr %dql.i, align 128
  %sub.i.i91 = sub i32 %143, %144
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i91)
  %cmp.i92 = icmp sgt i32 %sub.i.i91, -1
  br i1 %cmp.i92, label %dql_queued.exit.i.netdev_tx_sent_queue.exit_crit_edge, label %if.end.i93, !prof !49

dql_queued.exit.i.netdev_tx_sent_queue.exit_crit_edge: ; preds = %dql_queued.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netdev_tx_sent_queue.exit

if.end.i93:                                       ; preds = %dql_queued.exit.i
  %state.i = getelementptr %struct.netdev_queue, ptr %7, i32 %5, i32 13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !50
  %145 = ptrtoint ptr %adj_limit.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load volatile i32, ptr %adj_limit.i.i, align 4
  %147 = ptrtoint ptr %dql.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load volatile i32, ptr %dql.i, align 128
  %sub.i22.i = sub i32 %146, %148
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i22.i)
  %cmp7.i = icmp sgt i32 %sub.i22.i, -1
  br i1 %cmp7.i, label %if.then14.i, label %if.end.i93.netdev_tx_sent_queue.exit_crit_edge, !prof !46

if.end.i93.netdev_tx_sent_queue.exit_crit_edge:   ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #10
  br label %netdev_tx_sent_queue.exit

if.then14.i:                                      ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i) #8
  br label %netdev_tx_sent_queue.exit

netdev_tx_sent_queue.exit:                        ; preds = %if.then14.i, %if.end.i93.netdev_tx_sent_queue.exit_crit_edge, %dql_queued.exit.i.netdev_tx_sent_queue.exit_crit_edge
  %dev_xmit = getelementptr i8, ptr %netdev, i32 2348
  %149 = ptrtoint ptr %dev_xmit to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev_xmit, align 4
  tail call void %150(ptr noundef %add.ptr) #8
  %msg_enable30 = getelementptr i8, ptr %netdev, i32 2976
  %151 = ptrtoint ptr %msg_enable30 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %msg_enable30, align 8
  %and31 = and i32 %152, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %netdev_tx_sent_queue.exit.if.end34_crit_edge, label %if.then33

netdev_tx_sent_queue.exit.if.end34_crit_edge:     ; preds = %netdev_tx_sent_queue.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then33:                                        ; preds = %netdev_tx_sent_queue.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xlgmac_print_pkt(ptr noundef %netdev, ptr noundef %skb, i1 noundef zeroext true) #8
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %netdev_tx_sent_queue.exit.if.end34_crit_edge
  %153 = ptrtoint ptr %pdata1.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %pdata1.i, align 16
  %155 = ptrtoint ptr %dma_desc_count.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %dma_desc_count.i.i, align 8
  %157 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %cur.i.i, align 16
  %159 = ptrtoint ptr %dirty.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %dirty.i.i, align 4
  %sub.neg.i.i98 = sub i32 %156, %158
  %sub1.i.i99 = add i32 %sub.neg.i.i98, %160
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub1.i.i99)
  %cmp.i100 = icmp ult i32 %sub1.i.i99, 24
  br i1 %cmp.i100, label %do.body.i104, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.i104:                                     ; preds = %if.end34
  %msg_enable.i101 = getelementptr inbounds %struct.xlgmac_pdata, ptr %154, i32 0, i32 5
  %161 = ptrtoint ptr %msg_enable.i101 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %msg_enable.i101, align 8
  %and.i102 = and i32 %162, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i102)
  %tobool.not.i103 = icmp eq i32 %and.i102, 0
  br i1 %tobool.not.i103, label %do.body.i104.do.end.i112_crit_edge, label %if.then2.i105

do.body.i104.do.end.i112_crit_edge:               ; preds = %do.body.i104
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i112

if.then2.i105:                                    ; preds = %do.body.i104
  call void @__sanitizer_cov_trace_pc() #10
  %163 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %154, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %164, ptr noundef nonnull @.str.15) #11
  br label %do.end.i112

do.end.i112:                                      ; preds = %if.then2.i105, %do.body.i104.do.end.i112_crit_edge
  %165 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %154, align 8
  %167 = ptrtoint ptr %queue_index to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %queue_index, align 4
  %conv.i.i107 = and i32 %168, 65535
  %_tx.i.i.i108 = getelementptr inbounds %struct.net_device, ptr %166, i32 0, i32 103
  %169 = ptrtoint ptr %_tx.i.i.i108 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %_tx.i.i.i108, align 128
  %state.i.i.i109 = getelementptr %struct.netdev_queue, ptr %170, i32 %conv.i.i107, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i109) #8
  %171 = getelementptr inbounds %struct.xlgmac_ring, ptr %9, i32 0, i32 10
  %queue_stopped.i110 = getelementptr inbounds %struct.xlgmac_ring, ptr %9, i32 0, i32 10, i32 0, i32 1
  %172 = ptrtoint ptr %queue_stopped.i110 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 1, ptr %queue_stopped.i110, align 4
  %173 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %171, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool4.not.i111 = icmp eq i32 %174, 0
  br i1 %tobool4.not.i111, label %do.end.i112.cleanup_crit_edge, label %if.then5.i114

do.end.i112.cleanup_crit_edge:                    ; preds = %do.end.i112
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5.i114:                                    ; preds = %do.end.i112
  call void @__sanitizer_cov_trace_pc() #10
  %tx_start_xmit.i113 = getelementptr inbounds %struct.xlgmac_pdata, ptr %154, i32 0, i32 2, i32 25
  %175 = ptrtoint ptr %tx_start_xmit.i113 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %tx_start_xmit.i113, align 4
  tail call void %176(ptr noundef %add.ptr, ptr noundef %9) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then5.i114, %do.end.i112.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.then28, %do.end24, %if.then5.i, %do.end.i.cleanup_crit_edge, %do.end8
  %retval.0 = phi i32 [ 0, %do.end8 ], [ %call4.i.i.i, %do.end24 ], [ 0, %if.then28 ], [ 0, %if.end34.cleanup_crit_edge ], [ 0, %do.end.i112.cleanup_crit_edge ], [ 0, %if.then5.i114 ], [ 16, %if.then5.i ], [ 16, %do.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xlgmac_set_rx_mode(ptr noundef %netdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %config_rx_mode = getelementptr i8, ptr %netdev, i32 2360
  %0 = ptrtoint ptr %config_rx_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config_rx_mode, align 4
  %call2 = tail call i32 %1(ptr noundef %add.ptr.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_set_mac_address(ptr noundef %netdev, ptr noundef %addr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %addr, i32 0, i32 1
  %0 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sa_data, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %addr, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %or.i.i = or i32 %1, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dev_addr_mod(ptr noundef %netdev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #8
  %set_mac_address = getelementptr i8, ptr %netdev, i32 2356
  %5 = ptrtoint ptr %set_mac_address to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_mac_address, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 86
  %7 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_addr, align 64
  %call5 = tail call i32 %6(ptr noundef %add.ptr.i, ptr noundef %8) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xlgmac_ioctl(ptr noundef %netdev, ptr nocapture noundef readnone %ifreq, i32 noundef %cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  %. = select i1 %tobool.i.not, i32 -19, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_change_mtu(ptr noundef %netdev, i32 noundef %mtu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 9000, i32 %mtu)
  %cmp.i = icmp ugt i32 %mtu, 9000
  br i1 %cmp.i, label %xlgmac_calc_rx_buf_size.exit.thread, label %xlgmac_calc_rx_buf_size.exit

xlgmac_calc_rx_buf_size.exit.thread:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %netdev, ptr noundef nonnull @.str.1) #11
  br label %cleanup

xlgmac_calc_rx_buf_size.exit:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = tail call i32 @llvm.umax.i32(i32 %mtu, i32 1500) #8
  %1 = tail call i32 @llvm.umin.i32(i32 %0, i32 4074) #8
  %sub.i = add nuw nsw i32 %1, 85
  %and.i = and i32 %sub.i, 8128
  %rx_buf_size = getelementptr i8, ptr %netdev, i32 3244
  %2 = ptrtoint ptr %rx_buf_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and.i, ptr %rx_buf_size, align 4
  %mtu2 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 20
  %3 = ptrtoint ptr %mtu2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mtu, ptr %mtu2, align 4
  tail call fastcc void @xlgmac_restart_dev(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %xlgmac_calc_rx_buf_size.exit, %xlgmac_calc_rx_buf_size.exit.thread
  %retval.0 = phi i32 [ 0, %xlgmac_calc_rx_buf_size.exit ], [ -22, %xlgmac_calc_rx_buf_size.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xlgmac_tx_timeout(ptr noundef %netdev, i32 noundef %txqueue) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.16) #11
  %restart_work = getelementptr i8, ptr %netdev, i32 3116
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %restart_work) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xlgmac_get_stats64(ptr noundef %netdev, ptr nocapture noundef writeonly %s) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %stats = getelementptr i8, ptr %netdev, i32 2560
  %read_mmc_stats = getelementptr i8, ptr %netdev, i32 2508
  %0 = ptrtoint ptr %read_mmc_stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_mmc_stats, align 4
  tail call void %1(ptr noundef %add.ptr.i) #8
  %rxframecount_gb = getelementptr i8, ptr %netdev, i32 2704
  %2 = ptrtoint ptr %rxframecount_gb to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %rxframecount_gb, align 8
  %4 = ptrtoint ptr %s to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %s, align 8
  %rxoctetcount_gb = getelementptr i8, ptr %netdev, i32 2712
  %5 = ptrtoint ptr %rxoctetcount_gb to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %rxoctetcount_gb, align 8
  %rx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %s, i32 0, i32 2
  %7 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %rx_bytes, align 8
  %8 = load i64, ptr %rxframecount_gb, align 8
  %rxbroadcastframes_g = getelementptr i8, ptr %netdev, i32 2728
  %9 = ptrtoint ptr %rxbroadcastframes_g to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %rxbroadcastframes_g, align 8
  %rxmulticastframes_g = getelementptr i8, ptr %netdev, i32 2736
  %11 = ptrtoint ptr %rxmulticastframes_g to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %rxmulticastframes_g, align 8
  %rxunicastframes_g = getelementptr i8, ptr %netdev, i32 2832
  %13 = ptrtoint ptr %rxunicastframes_g to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %rxunicastframes_g, align 8
  %15 = add i64 %10, %12
  %16 = add i64 %15, %14
  %sub3 = sub i64 %8, %16
  %rx_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %s, i32 0, i32 4
  %17 = ptrtoint ptr %rx_errors to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %sub3, ptr %rx_errors, align 8
  %18 = load i64, ptr %rxmulticastframes_g, align 8
  %multicast = getelementptr inbounds %struct.rtnl_link_stats64, ptr %s, i32 0, i32 8
  %19 = ptrtoint ptr %multicast to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %multicast, align 8
  %rxlengtherror = getelementptr i8, ptr %netdev, i32 2840
  %20 = ptrtoint ptr %rxlengtherror to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %rxlengtherror, align 8
  %rx_length_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %s, i32 0, i32 10
  %22 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %rx_length_errors, align 8
  %rxcrcerror = getelementptr i8, ptr %netdev, i32 2744
  %23 = ptrtoint ptr %rxcrcerror to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %rxcrcerror, align 8
  %rx_crc_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %s, i32 0, i32 12
  %25 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %rx_crc_errors, align 8
  %rxfifooverflow = getelementptr i8, ptr %netdev, i32 2864
  %26 = ptrtoint ptr %rxfifooverflow to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %rxfifooverflow, align 8
  %rx_fifo_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %s, i32 0, i32 14
  %28 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %rx_fifo_errors, align 8
  %txframecount_gb = getelementptr i8, ptr %netdev, i32 2568
  %29 = ptrtoint ptr %txframecount_gb to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %txframecount_gb, align 8
  %tx_packets = getelementptr inbounds %struct.rtnl_link_stats64, ptr %s, i32 0, i32 1
  %31 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %tx_packets, align 8
  %32 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %stats, align 8
  %tx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %s, i32 0, i32 3
  %34 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %tx_bytes, align 8
  %35 = load i64, ptr %txframecount_gb, align 8
  %txframecount_g = getelementptr i8, ptr %netdev, i32 2680
  %36 = ptrtoint ptr %txframecount_g to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %txframecount_g, align 8
  %sub6 = sub i64 %35, %37
  %tx_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %s, i32 0, i32 5
  %38 = ptrtoint ptr %tx_errors to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %sub6, ptr %tx_errors, align 8
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 7
  %39 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tx_dropped, align 4
  %conv = zext i32 %40 to i64
  %tx_dropped8 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %s, i32 0, i32 7
  %41 = ptrtoint ptr %tx_dropped8 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %conv, ptr %tx_dropped8, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_vlan_rx_add_vid(ptr noundef %netdev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %conv = zext i16 %vid to i32
  %active_vlans = getelementptr i8, ptr %netdev, i32 3568
  tail call void @_set_bit(i32 noundef %conv, ptr noundef %active_vlans) #8
  %update_vlan_hash_table = getelementptr i8, ptr %netdev, i32 2440
  %0 = ptrtoint ptr %update_vlan_hash_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %update_vlan_hash_table, align 4
  %call2 = tail call i32 %1(ptr noundef %add.ptr.i) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_vlan_rx_kill_vid(ptr noundef %netdev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %conv = zext i16 %vid to i32
  %active_vlans = getelementptr i8, ptr %netdev, i32 3568
  tail call void @_clear_bit(i32 noundef %conv, ptr noundef %active_vlans) #8
  %update_vlan_hash_table = getelementptr i8, ptr %netdev, i32 2440
  %0 = ptrtoint ptr %update_vlan_hash_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %update_vlan_hash_table, align 4
  %call2 = tail call i32 %1(ptr noundef %add.ptr.i) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xlgmac_poll_controller(ptr noundef %netdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %per_channel_irq = getelementptr i8, ptr %netdev, i32 3260
  %0 = ptrtoint ptr %per_channel_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %per_channel_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %channel_count = getelementptr i8, ptr %netdev, i32 3164
  %2 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp14.not = icmp eq i32 %3, 0
  br i1 %cmp14.not, label %if.then.if.end_crit_edge, label %for.body.preheader

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.preheader:                               ; preds = %if.then
  %channel_head = getelementptr i8, ptr %netdev, i32 3160
  %4 = ptrtoint ptr %channel_head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel_head, align 8
  br label %for.body

for.body:                                         ; preds = %xlgmac_dma_isr.exit.for.body_crit_edge, %for.body.preheader
  %i.016 = phi i32 [ %inc, %xlgmac_dma_isr.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %channel.015 = phi ptr [ %incdec.ptr, %xlgmac_dma_isr.exit.for.body_crit_edge ], [ %5, %for.body.preheader ]
  %napi.i = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.015, i32 0, i32 6
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi.i) #8
  br i1 %call.i, label %if.then.i, label %for.body.xlgmac_dma_isr.exit_crit_edge

for.body.xlgmac_dma_isr.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %xlgmac_dma_isr.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %dma_irq = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.015, i32 0, i32 4
  %6 = ptrtoint ptr %dma_irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_irq, align 4
  tail call void @disable_irq_nosync(i32 noundef %7) #8
  tail call void @__napi_schedule_irqoff(ptr noundef %napi.i) #8
  br label %xlgmac_dma_isr.exit

xlgmac_dma_isr.exit:                              ; preds = %if.then.i, %for.body.xlgmac_dma_isr.exit_crit_edge
  %inc = add nuw i32 %i.016, 1
  %incdec.ptr = getelementptr %struct.xlgmac_channel, ptr %channel.015, i32 1
  %8 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel_count, align 4
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %xlgmac_dma_isr.exit.for.body_crit_edge, label %xlgmac_dma_isr.exit.if.end_crit_edge

xlgmac_dma_isr.exit.if.end_crit_edge:             ; preds = %xlgmac_dma_isr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

xlgmac_dma_isr.exit.for.body_crit_edge:           ; preds = %xlgmac_dma_isr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %dev_irq = getelementptr i8, ptr %netdev, i32 3256
  %10 = ptrtoint ptr %dev_irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dev_irq, align 8
  tail call void @disable_irq(i32 noundef %11) #8
  %12 = ptrtoint ptr %dev_irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dev_irq, align 8
  %call3 = tail call i32 @xlgmac_isr(i32 noundef %13, ptr noundef %add.ptr.i)
  %14 = ptrtoint ptr %dev_irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dev_irq, align 8
  tail call void @enable_irq(i32 noundef %15) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %xlgmac_dma_isr.exit.if.end_crit_edge, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_set_features(ptr noundef %netdev, i64 noundef %features) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %netdev_features = getelementptr i8, ptr %netdev, i32 3336
  %0 = ptrtoint ptr %netdev_features to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %netdev_features, align 8
  %and = and i64 %1, 549755813888
  %and3 = and i64 %1, 1099511627776
  %and5 = and i64 %1, 256
  %and7 = and i64 %1, 512
  %and8 = and i64 %features, 549755813888
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8)
  %tobool.not = icmp ne i64 %and8, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool9.not = icmp eq i64 %and, 0
  %or.cond = select i1 %tobool.not, i1 %tobool9.not, i1 false
  br i1 %or.cond, label %entry.if.end17_crit_edge, label %if.else

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.else:                                          ; preds = %entry
  %or.cond107 = select i1 %tobool.not, i1 true, i1 %tobool9.not
  br i1 %or.cond107, label %if.else.if.end20_crit_edge, label %if.else.if.end17_crit_edge

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end17:                                         ; preds = %if.else.if.end17_crit_edge, %entry.if.end17_crit_edge
  %.sink = phi i32 [ 2512, %entry.if.end17_crit_edge ], [ 2516, %if.else.if.end17_crit_edge ]
  %disable_rss = getelementptr i8, ptr %netdev, i32 %.sink
  %2 = ptrtoint ptr %disable_rss to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disable_rss, align 4
  %call16 = tail call i32 %3(ptr noundef %add.ptr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool18.not = icmp eq i32 %call16, 0
  br i1 %tobool18.not, label %if.end17.if.end20_crit_edge, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end20:                                         ; preds = %if.end17.if.end20_crit_edge, %if.else.if.end20_crit_edge
  %and21 = and i64 %features, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and21)
  %tobool22.not = icmp ne i64 %and21, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3)
  %tobool24.not = icmp eq i64 %and3, 0
  %or.cond108 = select i1 %tobool22.not, i1 %tobool24.not, i1 false
  br i1 %or.cond108, label %if.end20.if.end35.sink.split_crit_edge, label %if.else27

if.end20.if.end35.sink.split_crit_edge:           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.sink.split

if.else27:                                        ; preds = %if.end20
  %or.cond110 = select i1 %tobool22.not, i1 true, i1 %tobool24.not
  br i1 %or.cond110, label %if.else27.if.end35_crit_edge, label %if.else27.if.end35.sink.split_crit_edge

if.else27.if.end35.sink.split_crit_edge:          ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.sink.split

if.else27.if.end35_crit_edge:                     ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.end35.sink.split:                              ; preds = %if.else27.if.end35.sink.split_crit_edge, %if.end20.if.end35.sink.split_crit_edge
  %.sink120 = phi i32 [ 2364, %if.end20.if.end35.sink.split_crit_edge ], [ 2368, %if.else27.if.end35.sink.split_crit_edge ]
  %disable_rx_csum = getelementptr i8, ptr %netdev, i32 %.sink120
  %4 = ptrtoint ptr %disable_rx_csum to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disable_rx_csum, align 4
  %call33 = tail call i32 %5(ptr noundef %add.ptr.i) #8
  br label %if.end35

if.end35:                                         ; preds = %if.end35.sink.split, %if.else27.if.end35_crit_edge
  %and36 = and i64 %features, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and36)
  %tobool37.not = icmp ne i64 %and36, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and5)
  %tobool39.not = icmp eq i64 %and5, 0
  %or.cond111 = select i1 %tobool37.not, i1 %tobool39.not, i1 false
  br i1 %or.cond111, label %if.end35.if.end50.sink.split_crit_edge, label %if.else42

if.end35.if.end50.sink.split_crit_edge:           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.sink.split

if.else42:                                        ; preds = %if.end35
  %or.cond113 = select i1 %tobool37.not, i1 true, i1 %tobool39.not
  br i1 %or.cond113, label %if.else42.if.end50_crit_edge, label %if.else42.if.end50.sink.split_crit_edge

if.else42.if.end50.sink.split_crit_edge:          ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.sink.split

if.else42.if.end50_crit_edge:                     ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.end50.sink.split:                              ; preds = %if.else42.if.end50.sink.split_crit_edge, %if.end35.if.end50.sink.split_crit_edge
  %.sink122 = phi i32 [ 2424, %if.end35.if.end50.sink.split_crit_edge ], [ 2428, %if.else42.if.end50.sink.split_crit_edge ]
  %disable_rx_vlan_stripping = getelementptr i8, ptr %netdev, i32 %.sink122
  %6 = ptrtoint ptr %disable_rx_vlan_stripping to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disable_rx_vlan_stripping, align 4
  %call48 = tail call i32 %7(ptr noundef %add.ptr.i) #8
  br label %if.end50

if.end50:                                         ; preds = %if.end50.sink.split, %if.else42.if.end50_crit_edge
  %and51 = and i64 %features, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and51)
  %tobool52.not = icmp ne i64 %and51, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7)
  %tobool54.not = icmp eq i64 %and7, 0
  %or.cond114 = select i1 %tobool52.not, i1 %tobool54.not, i1 false
  br i1 %or.cond114, label %if.end50.if.end65.sink.split_crit_edge, label %if.else57

if.end50.if.end65.sink.split_crit_edge:           ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.sink.split

if.else57:                                        ; preds = %if.end50
  %or.cond116 = select i1 %tobool52.not, i1 true, i1 %tobool54.not
  br i1 %or.cond116, label %if.else57.if.end65_crit_edge, label %if.else57.if.end65.sink.split_crit_edge

if.else57.if.end65.sink.split_crit_edge:          ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.sink.split

if.else57.if.end65_crit_edge:                     ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.end65.sink.split:                              ; preds = %if.else57.if.end65.sink.split_crit_edge, %if.end50.if.end65.sink.split_crit_edge
  %.sink124 = phi i32 [ 2432, %if.end50.if.end65.sink.split_crit_edge ], [ 2436, %if.else57.if.end65.sink.split_crit_edge ]
  %disable_rx_vlan_filtering = getelementptr i8, ptr %netdev, i32 %.sink124
  %8 = ptrtoint ptr %disable_rx_vlan_filtering to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %disable_rx_vlan_filtering, align 4
  %call63 = tail call i32 %9(ptr noundef %add.ptr.i) #8
  br label %if.end65

if.end65:                                         ; preds = %if.end65.sink.split, %if.else57.if.end65_crit_edge
  %10 = ptrtoint ptr %netdev_features to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %features, ptr %netdev_features, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.end17.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end65 ], [ %call16, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xlgmac_restart(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -812
  tail call void @rtnl_lock() #8
  tail call fastcc void @xlgmac_restart_dev(ptr noundef %add.ptr)
  tail call void @rtnl_unlock() #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xlgmac_start(ptr noundef %pdata) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_ops1 = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 2
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 8
  %2 = ptrtoint ptr %hw_ops1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_ops1, align 4
  %call = tail call i32 %3(ptr noundef %pdata) #8
  %per_channel_irq.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 34
  %4 = ptrtoint ptr %per_channel_irq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %per_channel_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.then5.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %channel_count.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 10
  %6 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1.not.i = icmp eq i32 %7, 0
  br i1 %cmp1.not.i, label %if.then.i.xlgmac_napi_enable.exit_crit_edge, label %if.then2.preheader.i

if.then.i.xlgmac_napi_enable.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xlgmac_napi_enable.exit

if.then2.preheader.i:                             ; preds = %if.then.i
  %channel_head.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 9
  %8 = ptrtoint ptr %channel_head.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %channel_head.i, align 8
  br label %if.then2.i

if.then2.i:                                       ; preds = %if.then2.i.if.then2.i_crit_edge, %if.then2.preheader.i
  %i.03.i = phi i32 [ %inc.i, %if.then2.i.if.then2.i_crit_edge ], [ 0, %if.then2.preheader.i ]
  %channel.02.i = phi ptr [ %incdec.ptr.i, %if.then2.i.if.then2.i_crit_edge ], [ %9, %if.then2.preheader.i ]
  %10 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdata, align 8
  %napi.i = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.02.i, i32 0, i32 6
  tail call void @netif_napi_add(ptr noundef %11, ptr noundef %napi.i, ptr noundef nonnull @xlgmac_one_poll, i32 noundef 64) #8
  tail call void @napi_enable(ptr noundef %napi.i) #8
  %inc.i = add nuw i32 %i.03.i, 1
  %incdec.ptr.i = getelementptr %struct.xlgmac_channel, ptr %channel.02.i, i32 1
  %12 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel_count.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %13
  br i1 %cmp.i, label %if.then2.i.if.then2.i_crit_edge, label %if.then2.i.xlgmac_napi_enable.exit_crit_edge

if.then2.i.xlgmac_napi_enable.exit_crit_edge:     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xlgmac_napi_enable.exit

if.then2.i.if.then2.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2.i

if.then5.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdata, align 8
  %napi7.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 38
  tail call void @netif_napi_add(ptr noundef %15, ptr noundef %napi7.i, ptr noundef nonnull @xlgmac_all_poll, i32 noundef 64) #8
  tail call void @napi_enable(ptr noundef %napi7.i) #8
  br label %xlgmac_napi_enable.exit

xlgmac_napi_enable.exit:                          ; preds = %if.then5.i, %if.then2.i.xlgmac_napi_enable.exit_crit_edge, %if.then.i.xlgmac_napi_enable.exit_crit_edge
  %16 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdata, align 8
  %dev.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 1
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  %dev_irq.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 33
  %20 = ptrtoint ptr %dev_irq.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dev_irq.i, align 8
  %call.i.i = tail call i32 @devm_request_threaded_irq(ptr noundef %19, i32 noundef %21, ptr noundef nonnull @xlgmac_isr, ptr noundef null, i32 noundef 128, ptr noundef %17, ptr noundef %pdata) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i19 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i19, label %if.end.i, label %xlgmac_request_irqs.exit.thread46

xlgmac_request_irqs.exit.thread46:                ; preds = %xlgmac_napi_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %dev_irq.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dev_irq.i, align 8
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %17, ptr noundef nonnull @.str.5, i32 noundef %23) #11
  br label %err_napi

if.end.i:                                         ; preds = %xlgmac_napi_enable.exit
  %24 = ptrtoint ptr %per_channel_irq.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %per_channel_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool3.not.i = icmp eq i32 %25, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end_crit_edge, label %if.end5.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end5.i:                                        ; preds = %if.end.i
  %channel_count.i22 = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 10
  %26 = ptrtoint ptr %channel_count.i22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %channel_count.i22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp71.not.i = icmp eq i32 %27, 0
  br i1 %cmp71.not.i, label %if.end5.i.if.end_crit_edge, label %for.body.preheader.i

if.end5.i.if.end_crit_edge:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.preheader.i:                             ; preds = %if.end5.i
  %channel_head.i23 = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 9
  %28 = ptrtoint ptr %channel_head.i23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %channel_head.i23, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.073.i = phi i32 [ %inc.i24, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %channel.072.i = phi ptr [ %incdec.ptr.i25, %for.inc.i.for.body.i_crit_edge ], [ %29, %for.body.preheader.i ]
  %dma_irq_name.i = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.072.i, i32 0, i32 5
  %30 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %17, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i.i, label %for.body.i.netdev_name.exit.i_crit_edge, label %lor.lhs.false.i.i

for.body.i.netdev_name.exit.i_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netdev_name.exit.i

lor.lhs.false.i.i:                                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i66.i = tail call ptr @strchr(ptr noundef %17, i32 noundef 37) #8
  %tobool2.not.i.i = icmp eq ptr %call.i66.i, null
  %spec.select.i.i = select i1 %tobool2.not.i.i, ptr %17, ptr @.str.12
  br label %netdev_name.exit.i

netdev_name.exit.i:                               ; preds = %lor.lhs.false.i.i, %for.body.i.netdev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ @.str.12, %for.body.i.netdev_name.exit.i_crit_edge ], [ %spec.select.i.i, %lor.lhs.false.i.i ]
  %queue_index.i = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.072.i, i32 0, i32 2
  %32 = ptrtoint ptr %queue_index.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %queue_index.i, align 4
  %call8.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %dma_irq_name.i, i32 noundef 47, ptr noundef nonnull @.str.6, ptr noundef %retval.0.i.i, i32 noundef %33) #8
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  %dma_irq.i = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.072.i, i32 0, i32 4
  %36 = ptrtoint ptr %dma_irq.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma_irq.i, align 4
  %call.i67.i = tail call i32 @devm_request_threaded_irq(ptr noundef %35, i32 noundef %37, ptr noundef nonnull @xlgmac_dma_isr, ptr noundef null, i32 noundef 0, ptr noundef %dma_irq_name.i, ptr noundef %channel.072.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67.i)
  %tobool13.not.i = icmp eq i32 %call.i67.i, 0
  br i1 %tobool13.not.i, label %for.inc.i, label %if.then14.i

if.then14.i:                                      ; preds = %netdev_name.exit.i
  %dma_irq.i.le = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.072.i, i32 0, i32 4
  %38 = ptrtoint ptr %dma_irq.i.le to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma_irq.i.le, align 4
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %17, ptr noundef nonnull @.str.5, i32 noundef %39) #11
  %i.174.i = add i32 %i.073.i, -1
  %40 = ptrtoint ptr %channel_count.i22 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %channel_count.i22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.174.i, i32 %41)
  %cmp2075.i = icmp ult i32 %i.174.i, %41
  br i1 %cmp2075.i, label %if.then14.i.for.body21.i_crit_edge, label %if.then14.i.xlgmac_request_irqs.exit_crit_edge

if.then14.i.xlgmac_request_irqs.exit_crit_edge:   ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xlgmac_request_irqs.exit

if.then14.i.for.body21.i_crit_edge:               ; preds = %if.then14.i
  br label %for.body21.i

for.inc.i:                                        ; preds = %netdev_name.exit.i
  %inc.i24 = add nuw i32 %i.073.i, 1
  %incdec.ptr.i25 = getelementptr %struct.xlgmac_channel, ptr %channel.072.i, i32 1
  %42 = ptrtoint ptr %channel_count.i22 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %channel_count.i22, align 4
  %cmp.i26 = icmp ult i32 %inc.i24, %43
  br i1 %cmp.i26, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body21.i:                                     ; preds = %for.body21.i.for.body21.i_crit_edge, %if.then14.i.for.body21.i_crit_edge
  %i.177.i = phi i32 [ %i.1.i, %for.body21.i.for.body21.i_crit_edge ], [ %i.174.i, %if.then14.i.for.body21.i_crit_edge ]
  %channel.0.pn76.i = phi ptr [ %channel.1.i, %for.body21.i.for.body21.i_crit_edge ], [ %channel.072.i, %if.then14.i.for.body21.i_crit_edge ]
  %channel.1.i = getelementptr %struct.xlgmac_channel, ptr %channel.0.pn76.i, i32 -1
  %44 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i, align 4
  %dma_irq23.i = getelementptr %struct.xlgmac_channel, ptr %channel.0.pn76.i, i32 -1, i32 4
  %46 = ptrtoint ptr %dma_irq23.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dma_irq23.i, align 4
  tail call void @devm_free_irq(ptr noundef %45, i32 noundef %47, ptr noundef %channel.1.i) #8
  %i.1.i = add i32 %i.177.i, -1
  %48 = ptrtoint ptr %channel_count.i22 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %channel_count.i22, align 4
  %cmp20.i = icmp ult i32 %i.1.i, %49
  br i1 %cmp20.i, label %for.body21.i.for.body21.i_crit_edge, label %for.body21.i.xlgmac_request_irqs.exit_crit_edge

for.body21.i.xlgmac_request_irqs.exit_crit_edge:  ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xlgmac_request_irqs.exit

for.body21.i.for.body21.i_crit_edge:              ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body21.i

xlgmac_request_irqs.exit:                         ; preds = %for.body21.i.xlgmac_request_irqs.exit_crit_edge, %if.then14.i.xlgmac_request_irqs.exit_crit_edge
  %50 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i, align 4
  %52 = ptrtoint ptr %dev_irq.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dev_irq.i, align 8
  tail call void @devm_free_irq(ptr noundef %51, i32 noundef %53, ptr noundef %pdata) #8
  br label %err_napi

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %if.end5.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %enable_tx = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 2, i32 3
  %54 = ptrtoint ptr %enable_tx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %enable_tx, align 4
  tail call void %55(ptr noundef %pdata) #8
  %enable_rx = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 2, i32 5
  %56 = ptrtoint ptr %enable_rx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %enable_rx, align 4
  tail call void %57(ptr noundef %pdata) #8
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 104
  %58 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp4.not.i = icmp eq i32 %59, 0
  br i1 %cmp4.not.i, label %if.end.cleanup_crit_edge, label %for.body.lr.ph.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  br label %for.body.i29

for.body.i29:                                     ; preds = %for.body.i29.for.body.i29_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i27, %for.body.i29.for.body.i29_crit_edge ]
  %60 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %61, i32 %i.05.i, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  %inc.i27 = add nuw i32 %i.05.i, 1
  %62 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i28 = icmp ult i32 %inc.i27, %63
  br i1 %cmp.i28, label %for.body.i29.for.body.i29_crit_edge, label %for.body.i29.cleanup_crit_edge

for.body.i29.cleanup_crit_edge:                   ; preds = %for.body.i29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i29.for.body.i29_crit_edge:              ; preds = %for.body.i29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i29

err_napi:                                         ; preds = %xlgmac_request_irqs.exit, %xlgmac_request_irqs.exit.thread46
  %retval.0.i49 = phi i32 [ %call.i.i, %xlgmac_request_irqs.exit.thread46 ], [ %call.i67.i, %xlgmac_request_irqs.exit ]
  %64 = ptrtoint ptr %per_channel_irq.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %per_channel_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i31 = icmp eq i32 %65, 0
  br i1 %tobool.not.i31, label %if.else.i, label %if.then.i34

if.then.i34:                                      ; preds = %err_napi
  %channel_count.i32 = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 10
  %66 = ptrtoint ptr %channel_count.i32 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %channel_count.i32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp1.not.i33 = icmp eq i32 %67, 0
  br i1 %cmp1.not.i33, label %if.then.i34.xlgmac_napi_disable.exit_crit_edge, label %for.body.preheader.i36

if.then.i34.xlgmac_napi_disable.exit_crit_edge:   ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %xlgmac_napi_disable.exit

for.body.preheader.i36:                           ; preds = %if.then.i34
  %channel_head.i35 = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 9
  %68 = ptrtoint ptr %channel_head.i35 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %channel_head.i35, align 8
  br label %for.body.i43

for.body.i43:                                     ; preds = %for.body.i43.for.body.i43_crit_edge, %for.body.preheader.i36
  %i.03.i37 = phi i32 [ %inc.i40, %for.body.i43.for.body.i43_crit_edge ], [ 0, %for.body.preheader.i36 ]
  %channel.02.i38 = phi ptr [ %incdec.ptr.i41, %for.body.i43.for.body.i43_crit_edge ], [ %69, %for.body.preheader.i36 ]
  %napi.i39 = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.02.i38, i32 0, i32 6
  tail call void @napi_disable(ptr noundef %napi.i39) #8
  tail call void @__netif_napi_del(ptr noundef %napi.i39) #8
  tail call void @synchronize_net() #8
  %inc.i40 = add nuw i32 %i.03.i37, 1
  %incdec.ptr.i41 = getelementptr %struct.xlgmac_channel, ptr %channel.02.i38, i32 1
  %70 = ptrtoint ptr %channel_count.i32 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %channel_count.i32, align 4
  %cmp.i42 = icmp ult i32 %inc.i40, %71
  br i1 %cmp.i42, label %for.body.i43.for.body.i43_crit_edge, label %for.body.i43.xlgmac_napi_disable.exit_crit_edge

for.body.i43.xlgmac_napi_disable.exit_crit_edge:  ; preds = %for.body.i43
  call void @__sanitizer_cov_trace_pc() #10
  br label %xlgmac_napi_disable.exit

for.body.i43.for.body.i43_crit_edge:              ; preds = %for.body.i43
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i43

if.else.i:                                        ; preds = %err_napi
  call void @__sanitizer_cov_trace_pc() #10
  %napi4.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 38
  tail call void @napi_disable(ptr noundef %napi4.i) #8
  tail call void @__netif_napi_del(ptr noundef %napi4.i) #8
  tail call void @synchronize_net() #8
  br label %xlgmac_napi_disable.exit

xlgmac_napi_disable.exit:                         ; preds = %if.else.i, %for.body.i43.xlgmac_napi_disable.exit_crit_edge, %if.then.i34.xlgmac_napi_disable.exit_crit_edge
  %exit = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 2, i32 1
  %72 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %exit, align 4
  %call4 = tail call i32 %73(ptr noundef %pdata) #8
  br label %cleanup

cleanup:                                          ; preds = %xlgmac_napi_disable.exit, %for.body.i29.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i49, %xlgmac_napi_disable.exit ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.body.i29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xlgmac_restart_dev(ptr noundef %pdata) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  tail call fastcc void @xlgmac_stop(ptr noundef %pdata)
  %channel_count.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 10
  %4 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp22.not.i = icmp eq i32 %5, 0
  br i1 %cmp22.not.i, label %if.end.xlgmac_free_rx_data.exit_crit_edge, label %for.body.lr.ph.i

if.end.xlgmac_free_rx_data.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %xlgmac_free_rx_data.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %channel_head.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 9
  %6 = ptrtoint ptr %channel_head.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %channel_head.i, align 8
  %unmap_desc_data.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 3, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc6.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.024.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc7.i, %for.inc6.i.for.body.i_crit_edge ]
  %channel.023.i = phi ptr [ %7, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc6.i.for.body.i_crit_edge ]
  %tx_ring.i = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.023.i, i32 0, i32 10
  %8 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_ring.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %xlgmac_free_tx_data.exitthread-pre-split, label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.body.i
  %dma_desc_count.i = getelementptr inbounds %struct.xlgmac_ring, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %dma_desc_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_desc_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp320.not.i = icmp eq i32 %11, 0
  br i1 %cmp320.not.i, label %for.cond2.preheader.i.for.inc6.i_crit_edge, label %for.body4.lr.ph.i

for.cond2.preheader.i.for.inc6.i_crit_edge:       ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc6.i

for.body4.lr.ph.i:                                ; preds = %for.cond2.preheader.i
  %desc_data_head.i = getelementptr inbounds %struct.xlgmac_ring, ptr %9, i32 0, i32 4
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.body4.i.for.body4.i_crit_edge, %for.body4.lr.ph.i
  %12 = phi i32 [ %11, %for.body4.lr.ph.i ], [ %18, %for.body4.i.for.body4.i_crit_edge ]
  %j.021.i = phi i32 [ 0, %for.body4.lr.ph.i ], [ %inc.i, %for.body4.i.for.body4.i_crit_edge ]
  %13 = ptrtoint ptr %desc_data_head.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %desc_data_head.i, align 4
  %sub.i = add i32 %12, -1
  %and.i = and i32 %sub.i, %j.021.i
  %add.ptr.i = getelementptr %struct.xlgmac_desc_data, ptr %14, i32 %and.i
  %15 = ptrtoint ptr %unmap_desc_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %unmap_desc_data.i, align 4
  tail call void %16(ptr noundef %pdata, ptr noundef %add.ptr.i) #8
  %inc.i = add nuw i32 %j.021.i, 1
  %17 = ptrtoint ptr %dma_desc_count.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma_desc_count.i, align 8
  %cmp3.i = icmp ult i32 %inc.i, %18
  br i1 %cmp3.i, label %for.body4.i.for.body4.i_crit_edge, label %for.body4.i.for.inc6.i_crit_edge

for.body4.i.for.inc6.i_crit_edge:                 ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc6.i

for.body4.i.for.body4.i_crit_edge:                ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body4.i

for.inc6.i:                                       ; preds = %for.body4.i.for.inc6.i_crit_edge, %for.cond2.preheader.i.for.inc6.i_crit_edge
  %inc7.i = add nuw i32 %i.024.i, 1
  %incdec.ptr.i = getelementptr %struct.xlgmac_channel, ptr %channel.023.i, i32 1
  %19 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %channel_count.i, align 4
  %cmp.i = icmp ult i32 %inc7.i, %20
  br i1 %cmp.i, label %for.inc6.i.for.body.i_crit_edge, label %for.inc6.i.xlgmac_free_tx_data.exit_crit_edge

for.inc6.i.xlgmac_free_tx_data.exit_crit_edge:    ; preds = %for.inc6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xlgmac_free_tx_data.exit

for.inc6.i.for.body.i_crit_edge:                  ; preds = %for.inc6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

xlgmac_free_tx_data.exitthread-pre-split:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr = load i32, ptr %channel_count.i, align 4
  br label %xlgmac_free_tx_data.exit

xlgmac_free_tx_data.exit:                         ; preds = %xlgmac_free_tx_data.exitthread-pre-split, %for.inc6.i.xlgmac_free_tx_data.exit_crit_edge
  %22 = phi i32 [ %.pr, %xlgmac_free_tx_data.exitthread-pre-split ], [ %20, %for.inc6.i.xlgmac_free_tx_data.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp22.not.i7 = icmp eq i32 %22, 0
  br i1 %cmp22.not.i7, label %xlgmac_free_tx_data.exit.xlgmac_free_rx_data.exit_crit_edge, label %for.body.lr.ph.i10

xlgmac_free_tx_data.exit.xlgmac_free_rx_data.exit_crit_edge: ; preds = %xlgmac_free_tx_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %xlgmac_free_rx_data.exit

for.body.lr.ph.i10:                               ; preds = %xlgmac_free_tx_data.exit
  %23 = ptrtoint ptr %channel_head.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %channel_head.i, align 8
  br label %for.body.i14

for.body.i14:                                     ; preds = %for.inc6.i30.for.body.i14_crit_edge, %for.body.lr.ph.i10
  %i.024.i11 = phi i32 [ 0, %for.body.lr.ph.i10 ], [ %inc7.i27, %for.inc6.i30.for.body.i14_crit_edge ]
  %channel.023.i12 = phi ptr [ %24, %for.body.lr.ph.i10 ], [ %incdec.ptr.i28, %for.inc6.i30.for.body.i14_crit_edge ]
  %rx_ring.i = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.023.i12, i32 0, i32 11
  %25 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rx_ring.i, align 4
  %tobool.not.i13 = icmp eq ptr %26, null
  br i1 %tobool.not.i13, label %for.body.i14.xlgmac_free_rx_data.exit_crit_edge, label %for.cond2.preheader.i17

for.body.i14.xlgmac_free_rx_data.exit_crit_edge:  ; preds = %for.body.i14
  call void @__sanitizer_cov_trace_pc() #10
  br label %xlgmac_free_rx_data.exit

for.cond2.preheader.i17:                          ; preds = %for.body.i14
  %dma_desc_count.i15 = getelementptr inbounds %struct.xlgmac_ring, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %dma_desc_count.i15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma_desc_count.i15, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp320.not.i16 = icmp eq i32 %28, 0
  br i1 %cmp320.not.i16, label %for.cond2.preheader.i17.for.inc6.i30_crit_edge, label %for.body4.lr.ph.i19

for.cond2.preheader.i17.for.inc6.i30_crit_edge:   ; preds = %for.cond2.preheader.i17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc6.i30

for.body4.lr.ph.i19:                              ; preds = %for.cond2.preheader.i17
  %desc_data_head.i18 = getelementptr inbounds %struct.xlgmac_ring, ptr %26, i32 0, i32 4
  br label %for.body4.i26

for.body4.i26:                                    ; preds = %for.body4.i26.for.body4.i26_crit_edge, %for.body4.lr.ph.i19
  %29 = phi i32 [ %28, %for.body4.lr.ph.i19 ], [ %35, %for.body4.i26.for.body4.i26_crit_edge ]
  %j.021.i20 = phi i32 [ 0, %for.body4.lr.ph.i19 ], [ %inc.i24, %for.body4.i26.for.body4.i26_crit_edge ]
  %30 = ptrtoint ptr %desc_data_head.i18 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %desc_data_head.i18, align 4
  %sub.i21 = add i32 %29, -1
  %and.i22 = and i32 %sub.i21, %j.021.i20
  %add.ptr.i23 = getelementptr %struct.xlgmac_desc_data, ptr %31, i32 %and.i22
  %32 = ptrtoint ptr %unmap_desc_data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %unmap_desc_data.i, align 4
  tail call void %33(ptr noundef %pdata, ptr noundef %add.ptr.i23) #8
  %inc.i24 = add nuw i32 %j.021.i20, 1
  %34 = ptrtoint ptr %dma_desc_count.i15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_desc_count.i15, align 8
  %cmp3.i25 = icmp ult i32 %inc.i24, %35
  br i1 %cmp3.i25, label %for.body4.i26.for.body4.i26_crit_edge, label %for.body4.i26.for.inc6.i30_crit_edge

for.body4.i26.for.inc6.i30_crit_edge:             ; preds = %for.body4.i26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc6.i30

for.body4.i26.for.body4.i26_crit_edge:            ; preds = %for.body4.i26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body4.i26

for.inc6.i30:                                     ; preds = %for.body4.i26.for.inc6.i30_crit_edge, %for.cond2.preheader.i17.for.inc6.i30_crit_edge
  %inc7.i27 = add nuw i32 %i.024.i11, 1
  %incdec.ptr.i28 = getelementptr %struct.xlgmac_channel, ptr %channel.023.i12, i32 1
  %36 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %channel_count.i, align 4
  %cmp.i29 = icmp ult i32 %inc7.i27, %37
  br i1 %cmp.i29, label %for.inc6.i30.for.body.i14_crit_edge, label %for.inc6.i30.xlgmac_free_rx_data.exit_crit_edge

for.inc6.i30.xlgmac_free_rx_data.exit_crit_edge:  ; preds = %for.inc6.i30
  call void @__sanitizer_cov_trace_pc() #10
  br label %xlgmac_free_rx_data.exit

for.inc6.i30.for.body.i14_crit_edge:              ; preds = %for.inc6.i30
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i14

xlgmac_free_rx_data.exit:                         ; preds = %for.inc6.i30.xlgmac_free_rx_data.exit_crit_edge, %for.body.i14.xlgmac_free_rx_data.exit_crit_edge, %xlgmac_free_tx_data.exit.xlgmac_free_rx_data.exit_crit_edge, %if.end.xlgmac_free_rx_data.exit_crit_edge
  %call1 = tail call fastcc i32 @xlgmac_start(ptr noundef %pdata)
  br label %return

return:                                           ; preds = %xlgmac_free_rx_data.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xlgmac_stop(ptr noundef %pdata) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 8
  tail call void @netif_tx_stop_all_queues(ptr noundef %1) #8
  %channel_count.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 10
  %2 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp5.not.i = icmp eq i32 %3, 0
  br i1 %cmp5.not.i, label %entry.xlgmac_stop_timers.exit_crit_edge, label %for.body.preheader.i

entry.xlgmac_stop_timers.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %xlgmac_stop_timers.exit

for.body.preheader.i:                             ; preds = %entry
  %channel_head.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 9
  %4 = ptrtoint ptr %channel_head.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel_head.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.07.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %channel.06.i = phi ptr [ %incdec.ptr.i, %if.end.i.for.body.i_crit_edge ], [ %5, %for.body.preheader.i ]
  %tx_ring.i = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.06.i, i32 0, i32 10
  %6 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_ring.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %for.body.i.xlgmac_stop_timers.exit_crit_edge, label %if.end.i

for.body.i.xlgmac_stop_timers.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xlgmac_stop_timers.exit

if.end.i:                                         ; preds = %for.body.i
  %tx_timer.i = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.06.i, i32 0, i32 9
  %call.i = tail call i32 @del_timer_sync(ptr noundef %tx_timer.i) #8
  %inc.i = add nuw i32 %i.07.i, 1
  %incdec.ptr.i = getelementptr %struct.xlgmac_channel, ptr %channel.06.i, i32 1
  %8 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel_count.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %9
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.xlgmac_stop_timers.exit_crit_edge

if.end.i.xlgmac_stop_timers.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xlgmac_stop_timers.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

xlgmac_stop_timers.exit:                          ; preds = %if.end.i.xlgmac_stop_timers.exit_crit_edge, %for.body.i.xlgmac_stop_timers.exit_crit_edge, %entry.xlgmac_stop_timers.exit_crit_edge
  %disable_tx = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 2, i32 4
  %10 = ptrtoint ptr %disable_tx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %disable_tx, align 4
  tail call void %11(ptr noundef %pdata) #8
  %disable_rx = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 2, i32 6
  %12 = ptrtoint ptr %disable_rx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %disable_rx, align 4
  tail call void %13(ptr noundef %pdata) #8
  %dev.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 1
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %dev_irq.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 33
  %16 = ptrtoint ptr %dev_irq.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dev_irq.i, align 8
  tail call void @devm_free_irq(ptr noundef %15, i32 noundef %17, ptr noundef %pdata) #8
  %per_channel_irq.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 34
  %18 = ptrtoint ptr %per_channel_irq.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %per_channel_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i19 = icmp eq i32 %19, 0
  br i1 %tobool.not.i19, label %xlgmac_stop_timers.exit.if.else.i_crit_edge, label %if.end.i21

xlgmac_stop_timers.exit.if.else.i_crit_edge:      ; preds = %xlgmac_stop_timers.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.end.i21:                                       ; preds = %xlgmac_stop_timers.exit
  %20 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channel_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp12.not.i = icmp eq i32 %21, 0
  br i1 %cmp12.not.i, label %if.end.i21.xlgmac_napi_disable.exit_crit_edge, label %for.body.preheader.i23

if.end.i21.xlgmac_napi_disable.exit_crit_edge:    ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #10
  br label %xlgmac_napi_disable.exit

for.body.preheader.i23:                           ; preds = %if.end.i21
  %channel_head.i22 = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 9
  %22 = ptrtoint ptr %channel_head.i22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %channel_head.i22, align 8
  br label %for.body.i27

for.body.i27:                                     ; preds = %for.body.i27.for.body.i27_crit_edge, %for.body.preheader.i23
  %i.014.i = phi i32 [ %inc.i24, %for.body.i27.for.body.i27_crit_edge ], [ 0, %for.body.preheader.i23 ]
  %channel.013.i = phi ptr [ %incdec.ptr.i25, %for.body.i27.for.body.i27_crit_edge ], [ %23, %for.body.preheader.i23 ]
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  %dma_irq.i = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.013.i, i32 0, i32 4
  %26 = ptrtoint ptr %dma_irq.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma_irq.i, align 4
  tail call void @devm_free_irq(ptr noundef %25, i32 noundef %27, ptr noundef %channel.013.i) #8
  %inc.i24 = add nuw i32 %i.014.i, 1
  %incdec.ptr.i25 = getelementptr %struct.xlgmac_channel, ptr %channel.013.i, i32 1
  %28 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %channel_count.i, align 4
  %cmp.i26 = icmp ult i32 %inc.i24, %29
  br i1 %cmp.i26, label %for.body.i27.for.body.i27_crit_edge, label %xlgmac_free_irqs.exit

for.body.i27.for.body.i27_crit_edge:              ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i27

xlgmac_free_irqs.exit:                            ; preds = %for.body.i27
  %30 = ptrtoint ptr %per_channel_irq.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr = load i32, ptr %per_channel_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not.i29 = icmp eq i32 %.pr, 0
  br i1 %tobool.not.i29, label %xlgmac_free_irqs.exit.if.else.i_crit_edge, label %if.then.i

xlgmac_free_irqs.exit.if.else.i_crit_edge:        ; preds = %xlgmac_free_irqs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i:                                        ; preds = %xlgmac_free_irqs.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp1.not.i = icmp eq i32 %29, 0
  br i1 %cmp1.not.i, label %if.then.i.xlgmac_napi_disable.exit_crit_edge, label %for.body.preheader.i32

if.then.i.xlgmac_napi_disable.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xlgmac_napi_disable.exit

for.body.preheader.i32:                           ; preds = %if.then.i
  %31 = ptrtoint ptr %channel_head.i22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %channel_head.i22, align 8
  br label %for.body.i36

for.body.i36:                                     ; preds = %for.body.i36.for.body.i36_crit_edge, %for.body.preheader.i32
  %i.03.i = phi i32 [ %inc.i33, %for.body.i36.for.body.i36_crit_edge ], [ 0, %for.body.preheader.i32 ]
  %channel.02.i = phi ptr [ %incdec.ptr.i34, %for.body.i36.for.body.i36_crit_edge ], [ %32, %for.body.preheader.i32 ]
  %napi.i = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.02.i, i32 0, i32 6
  tail call void @napi_disable(ptr noundef %napi.i) #8
  tail call void @__netif_napi_del(ptr noundef %napi.i) #8
  tail call void @synchronize_net() #8
  %inc.i33 = add nuw i32 %i.03.i, 1
  %incdec.ptr.i34 = getelementptr %struct.xlgmac_channel, ptr %channel.02.i, i32 1
  %33 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %channel_count.i, align 4
  %cmp.i35 = icmp ult i32 %inc.i33, %34
  br i1 %cmp.i35, label %for.body.i36.for.body.i36_crit_edge, label %for.body.i36.xlgmac_napi_disable.exit_crit_edge

for.body.i36.xlgmac_napi_disable.exit_crit_edge:  ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #10
  br label %xlgmac_napi_disable.exit

for.body.i36.for.body.i36_crit_edge:              ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i36

if.else.i:                                        ; preds = %xlgmac_free_irqs.exit.if.else.i_crit_edge, %xlgmac_stop_timers.exit.if.else.i_crit_edge
  %napi4.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 38
  tail call void @napi_disable(ptr noundef %napi4.i) #8
  tail call void @__netif_napi_del(ptr noundef %napi4.i) #8
  tail call void @synchronize_net() #8
  br label %xlgmac_napi_disable.exit

xlgmac_napi_disable.exit:                         ; preds = %if.else.i, %for.body.i36.xlgmac_napi_disable.exit_crit_edge, %if.then.i.xlgmac_napi_disable.exit_crit_edge, %if.end.i21.xlgmac_napi_disable.exit_crit_edge
  %exit = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %exit, align 4
  %call = tail call i32 %36(ptr noundef %pdata) #8
  %37 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %channel_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp41.not = icmp eq i32 %38, 0
  br i1 %cmp41.not, label %xlgmac_napi_disable.exit.for.end_crit_edge, label %for.body.lr.ph

xlgmac_napi_disable.exit.for.end_crit_edge:       ; preds = %xlgmac_napi_disable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %xlgmac_napi_disable.exit
  %channel_head = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 9
  %39 = ptrtoint ptr %channel_head to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %channel_head, align 8
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.043 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %channel.042 = phi ptr [ %40, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %tx_ring = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.042, i32 0, i32 10
  %41 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tx_ring, align 8
  %tobool.not = icmp eq ptr %42, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %queue_index = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.042, i32 0, i32 2
  %43 = ptrtoint ptr %queue_index to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %queue_index, align 4
  %45 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %_tx.i, align 128
  %state.i = getelementptr %struct.netdev_queue, ptr %46, i32 %44, i32 13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i) #8
  %dql.i = getelementptr %struct.netdev_queue, ptr %46, i32 %44, i32 15
  tail call void @dql_reset(ptr noundef %dql.i) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.043, 1
  %incdec.ptr = getelementptr %struct.xlgmac_channel, ptr %channel.042, i32 1
  %47 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %channel_count.i, align 4
  %cmp = icmp ult i32 %inc, %48
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %xlgmac_napi_disable.exit.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xlgmac_tx_timer(ptr noundef %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata1 = getelementptr i8, ptr %t, i32 -296
  %0 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata1, align 16
  %per_channel_irq = getelementptr inbounds %struct.xlgmac_pdata, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %per_channel_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %per_channel_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %napi2 = getelementptr i8, ptr %t, i32 -232
  %napi3 = getelementptr inbounds %struct.xlgmac_pdata, ptr %1, i32 0, i32 38
  %cond = select i1 %tobool.not, ptr %napi3, ptr %napi2
  %call = tail call zeroext i1 @napi_schedule_prep(ptr noundef %cond) #8
  br i1 %call, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %per_channel_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %per_channel_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dma_irq = getelementptr i8, ptr %t, i32 -284
  %6 = ptrtoint ptr %dma_irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_irq, align 4
  tail call void @disable_irq_nosync(i32 noundef %7) #8
  br label %if.end

if.else:                                          ; preds = %if.then
  %channel_count.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp21.not.i = icmp eq i32 %9, 0
  br i1 %cmp21.not.i, label %if.else.if.end_crit_edge, label %for.body.lr.ph.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.else
  %channel_head.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %channel_head.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %channel_head.i, align 8
  %disable_int.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %1, i32 0, i32 2, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.025.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %channel.022.i = phi ptr [ %11, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %tx_ring.i = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.022.i, i32 0, i32 10
  %12 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_ring.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  %rx_ring7.i = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.022.i, i32 0, i32 11
  %14 = ptrtoint ptr %rx_ring7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_ring7.i, align 4
  %tobool8.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.else6.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %spec.select.i = select i1 %tobool8.not.i, i32 0, i32 6
  br label %if.end12.i

if.else6.i:                                       ; preds = %for.body.i
  br i1 %tobool8.not.i, label %if.else6.i.for.inc.i_crit_edge, label %if.else6.i.if.end12.i_crit_edge

if.else6.i.if.end12.i_crit_edge:                  ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.else6.i.for.inc.i_crit_edge:                   ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end12.i:                                       ; preds = %if.else6.i.if.end12.i_crit_edge, %land.lhs.true.i
  %int_id.0.i = phi i32 [ 3, %if.else6.i.if.end12.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %16 = ptrtoint ptr %disable_int.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %disable_int.i, align 4
  %call.i = tail call i32 %17(ptr noundef %channel.022.i, i32 noundef %int_id.0.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end12.i, %if.else6.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.025.i, 1
  %incdec.ptr.i = getelementptr %struct.xlgmac_channel, ptr %channel.022.i, i32 1
  %18 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %channel_count.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %19
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %if.else.if.end_crit_edge, %if.then6
  %napi_poll_txtimer = getelementptr inbounds %struct.xlgmac_pdata, ptr %1, i32 0, i32 4, i32 51
  %20 = ptrtoint ptr %napi_poll_txtimer to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %napi_poll_txtimer, align 8
  %inc = add i64 %21, 1
  store i64 %inc, ptr %napi_poll_txtimer, align 8
  tail call void @__napi_schedule(ptr noundef %cond) #8
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  %tx_timer_active = getelementptr i8, ptr %t, i32 -4
  %22 = ptrtoint ptr %tx_timer_active to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %tx_timer_active, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_one_poll(ptr noundef %napi, i32 noundef %budget) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -80
  tail call fastcc void @xlgmac_tx_poll(ptr noundef %add.ptr)
  %call1 = tail call fastcc i32 @xlgmac_rx_poll(ptr noundef %add.ptr, i32 noundef %budget)
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %budget)
  %cmp = icmp slt i32 %call1, %budget
  br i1 %cmp, label %if.then, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %call1) #8
  %dma_irq = getelementptr i8, ptr %napi, i32 -52
  %0 = ptrtoint ptr %dma_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_irq, align 4
  tail call void @enable_irq(i32 noundef %1) #8
  br label %do.end5

do.end5:                                          ; preds = %if.then, %entry.do.end5_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_all_poll(ptr noundef %napi, i32 noundef %budget) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ring_count = getelementptr i8, ptr %napi, i32 -172
  %0 = ptrtoint ptr %rx_ring_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_ring_count, align 4
  %div = udiv i32 %budget, %1
  %channel_head = getelementptr i8, ptr %napi, i32 -184
  %channel_count = getelementptr i8, ptr %napi, i32 -180
  br label %do.body1

do.body1:                                         ; preds = %do.cond5.do.body1_crit_edge, %entry
  %processed.0 = phi i32 [ 0, %entry ], [ %add, %do.cond5.do.body1_crit_edge ]
  %ring_budget.0 = phi i32 [ %div, %entry ], [ %6, %do.cond5.do.body1_crit_edge ]
  %2 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp36.not = icmp eq i32 %3, 0
  br i1 %cmp36.not, label %do.cond5.thread, label %for.body.preheader

do.cond5.thread:                                  ; preds = %do.body1
  call void @__sanitizer_cov_trace_cmp4(i32 %processed.0, i32 %budget)
  %cmp644 = icmp slt i32 %processed.0, %budget
  br i1 %cmp644, label %do.cond5.thread.if.then10_crit_edge, label %do.cond5.thread.do.end15_crit_edge

do.cond5.thread.do.end15_crit_edge:               ; preds = %do.cond5.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

do.cond5.thread.if.then10_crit_edge:              ; preds = %do.cond5.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

for.body.preheader:                               ; preds = %do.body1
  %4 = ptrtoint ptr %channel_head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel_head, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.040 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %ring_budget.139 = phi i32 [ %6, %for.body.for.body_crit_edge ], [ %ring_budget.0, %for.body.preheader ]
  %processed.138 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ %processed.0, %for.body.preheader ]
  %channel.037 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %5, %for.body.preheader ]
  tail call fastcc void @xlgmac_tx_poll(ptr noundef %channel.037)
  %sub = sub i32 %budget, %processed.138
  %6 = tail call i32 @llvm.smin.i32(i32 %ring_budget.139, i32 %sub)
  %call4 = tail call fastcc i32 @xlgmac_rx_poll(ptr noundef %channel.037, i32 noundef %6)
  %add = add i32 %call4, %processed.138
  %inc = add nuw i32 %i.040, 1
  %incdec.ptr = getelementptr %struct.xlgmac_channel, ptr %channel.037, i32 1
  %7 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channel_count, align 4
  %cmp = icmp ult i32 %inc, %8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %do.cond5

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.cond5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %budget)
  %cmp6 = icmp slt i32 %add, %budget
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %processed.0)
  %cmp7.not = icmp ne i32 %add, %processed.0
  %9 = and i1 %cmp6, %cmp7.not
  br i1 %9, label %do.cond5.do.body1_crit_edge, label %do.end8

do.cond5.do.body1_crit_edge:                      ; preds = %do.cond5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1

do.end8:                                          ; preds = %do.cond5
  br i1 %cmp6, label %do.end8.if.then10_crit_edge, label %do.end8.do.end15_crit_edge

do.end8.do.end15_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

do.end8.if.then10_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

if.then10:                                        ; preds = %do.end8.if.then10_crit_edge, %do.cond5.thread.if.then10_crit_edge
  %processed.1.lcssa4649 = phi i32 [ %processed.0, %do.cond5.thread.if.then10_crit_edge ], [ %add, %do.end8.if.then10_crit_edge ]
  %call11 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %processed.1.lcssa4649) #8
  %10 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channel_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp21.not.i = icmp eq i32 %11, 0
  br i1 %cmp21.not.i, label %if.then10.do.end15_crit_edge, label %for.body.lr.ph.i

if.then10.do.end15_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

for.body.lr.ph.i:                                 ; preds = %if.then10
  %12 = ptrtoint ptr %channel_head to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %channel_head, align 8
  %enable_int.i = getelementptr i8, ptr %napi, i32 -1004
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.025.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %channel.022.i = phi ptr [ %13, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %tx_ring.i = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.022.i, i32 0, i32 10
  %14 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_ring.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  %rx_ring7.i = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.022.i, i32 0, i32 11
  %16 = ptrtoint ptr %rx_ring7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_ring7.i, align 4
  %tobool8.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.else6.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %spec.select.i = select i1 %tobool8.not.i, i32 0, i32 6
  br label %if.end12.i

if.else6.i:                                       ; preds = %for.body.i
  br i1 %tobool8.not.i, label %if.else6.i.for.inc.i_crit_edge, label %if.else6.i.if.end12.i_crit_edge

if.else6.i.if.end12.i_crit_edge:                  ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.else6.i.for.inc.i_crit_edge:                   ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end12.i:                                       ; preds = %if.else6.i.if.end12.i_crit_edge, %land.lhs.true.i
  %int_id.0.i = phi i32 [ 3, %if.else6.i.if.end12.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %18 = ptrtoint ptr %enable_int.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %enable_int.i, align 4
  %call.i = tail call i32 %19(ptr noundef %channel.022.i, i32 noundef %int_id.0.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end12.i, %if.else6.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.025.i, 1
  %incdec.ptr.i = getelementptr %struct.xlgmac_channel, ptr %channel.022.i, i32 1
  %20 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channel_count, align 4
  %cmp.i = icmp ult i32 %inc.i, %21
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do.end15_crit_edge

for.inc.i.do.end15_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

do.end15:                                         ; preds = %for.inc.i.do.end15_crit_edge, %if.then10.do.end15_crit_edge, %do.end8.do.end15_crit_edge, %do.cond5.thread.do.end15_crit_edge
  %processed.1.lcssa47 = phi i32 [ %processed.1.lcssa4649, %if.then10.do.end15_crit_edge ], [ %add, %do.end8.do.end15_crit_edge ], [ %processed.0, %do.cond5.thread.do.end15_crit_edge ], [ %processed.1.lcssa4649, %for.inc.i.do.end15_crit_edge ]
  ret i32 %processed.1.lcssa47
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xlgmac_tx_poll(ptr nocapture noundef readonly %channel) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata1 = getelementptr inbounds %struct.xlgmac_channel, ptr %channel, i32 0, i32 1
  %0 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata1, align 16
  %tx_ring = getelementptr inbounds %struct.xlgmac_channel, ptr %channel, i32 0, i32 10
  %2 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_ring, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %cur5 = getelementptr inbounds %struct.xlgmac_ring, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %cur5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cur5, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !51
  %queue_index = getelementptr inbounds %struct.xlgmac_channel, ptr %channel, i32 0, i32 2
  %8 = ptrtoint ptr %queue_index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %queue_index, align 4
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 103
  %10 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_tx.i, align 128
  %arrayidx.i = getelementptr %struct.netdev_queue, ptr %11, i32 %9
  %dirty = getelementptr inbounds %struct.xlgmac_ring, ptr %3, i32 0, i32 8
  %desc_data_head = getelementptr inbounds %struct.xlgmac_ring, ptr %3, i32 0, i32 4
  %dma_desc_count = getelementptr inbounds %struct.xlgmac_ring, ptr %3, i32 0, i32 3
  %tx_complete = getelementptr inbounds %struct.xlgmac_pdata, ptr %1, i32 0, i32 2, i32 2
  %msg_enable = getelementptr inbounds %struct.xlgmac_pdata, ptr %1, i32 0, i32 5
  %is_last_desc = getelementptr inbounds %struct.xlgmac_pdata, ptr %1, i32 0, i32 2, i32 23
  %unmap_desc_data = getelementptr inbounds %struct.xlgmac_pdata, ptr %1, i32 0, i32 3, i32 4
  %tx_desc_reset = getelementptr inbounds %struct.xlgmac_pdata, ptr %1, i32 0, i32 2, i32 21
  br label %land.rhs

land.rhs:                                         ; preds = %if.end26.land.rhs_crit_edge, %if.end
  %processed.07 = phi i32 [ 0, %if.end ], [ %inc, %if.end26.land.rhs_crit_edge ]
  %tx_bytes.06 = phi i32 [ 0, %if.end ], [ %tx_bytes.1, %if.end26.land.rhs_crit_edge ]
  %12 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dirty, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %7)
  %cmp9.not = icmp eq i32 %13, %7
  br i1 %cmp9.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %14 = ptrtoint ptr %desc_data_head to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc_data_head, align 4
  %16 = ptrtoint ptr %dma_desc_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_desc_count, align 8
  %sub = add i32 %17, -1
  %and = and i32 %sub, %13
  %add.ptr = getelementptr %struct.xlgmac_desc_data, ptr %15, i32 %and
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  %20 = ptrtoint ptr %tx_complete to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_complete, align 4
  %call12 = tail call i32 %21(ptr noundef %19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %while.body.while.end_crit_edge, label %if.end15

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end15:                                         ; preds = %while.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !52
  %22 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg_enable, align 8
  %and16 = and i32 %23, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end20_crit_edge, label %if.then18

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dirty, align 4
  tail call void @xlgmac_dump_tx_desc(ptr noundef %1, ptr noundef nonnull %3, i32 noundef %25, i32 noundef 1, i32 noundef 0) #8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end15.if.end20_crit_edge
  %26 = ptrtoint ptr %is_last_desc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %is_last_desc, align 4
  %call21 = tail call i32 %27(ptr noundef %19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end20.if.end26_crit_edge, label %if.then23

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %bytes = getelementptr %struct.xlgmac_desc_data, ptr %15, i32 %and, i32 5, i32 1
  %28 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bytes, align 4
  %add25 = add i32 %29, %tx_bytes.06
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end20.if.end26_crit_edge
  %tx_bytes.1 = phi i32 [ %add25, %if.then23 ], [ %tx_bytes.06, %if.end20.if.end26_crit_edge ]
  %30 = ptrtoint ptr %unmap_desc_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %unmap_desc_data, align 4
  tail call void %31(ptr noundef %1, ptr noundef %add.ptr) #8
  %32 = ptrtoint ptr %tx_desc_reset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tx_desc_reset, align 4
  tail call void %33(ptr noundef %add.ptr) #8
  %inc = add nuw nsw i32 %processed.07, 1
  %34 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dirty, align 4
  %inc28 = add i32 %35, 1
  store i32 %inc28, ptr %dirty, align 4
  %exitcond.not = icmp eq i32 %inc, 512
  br i1 %exitcond.not, label %if.end26.if.end31_crit_edge, label %if.end26.land.rhs_crit_edge

if.end26.land.rhs_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %processed.07)
  %tobool29.not = icmp eq i32 %processed.07, 0
  br i1 %tobool29.not, label %while.end.cleanup_crit_edge, label %while.end.if.end31_crit_edge

while.end.if.end31_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31:                                         ; preds = %while.end.if.end31_crit_edge, %if.end26.if.end31_crit_edge
  %tx_bytes.04 = phi i32 [ %tx_bytes.06, %while.end.if.end31_crit_edge ], [ %tx_bytes.1, %if.end26.if.end31_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_bytes.04)
  %tobool.not.i = icmp eq i32 %tx_bytes.04, 0
  br i1 %tobool.not.i, label %if.end31.netdev_tx_completed_queue.exit_crit_edge, label %if.end.i, !prof !46

if.end31.netdev_tx_completed_queue.exit_crit_edge: ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %netdev_tx_completed_queue.exit

if.end.i:                                         ; preds = %if.end31
  %dql.i = getelementptr %struct.netdev_queue, ptr %11, i32 %9, i32 15
  tail call void @dql_completed(ptr noundef %dql.i, i32 noundef %tx_bytes.04) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !53
  %adj_limit.i.i = getelementptr %struct.netdev_queue, ptr %11, i32 %9, i32 15, i32 1
  %36 = ptrtoint ptr %adj_limit.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %adj_limit.i.i, align 4
  %38 = ptrtoint ptr %dql.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %dql.i, align 128
  %sub.i.i = sub i32 %37, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i, label %if.end.i.netdev_tx_completed_queue.exit_crit_edge, label %if.end14.i, !prof !46

if.end.i.netdev_tx_completed_queue.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netdev_tx_completed_queue.exit

if.end14.i:                                       ; preds = %if.end.i
  %state.i = getelementptr %struct.netdev_queue, ptr %11, i32 %9, i32 13
  %call15.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %state.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end14.i.netdev_tx_completed_queue.exit_crit_edge, label %if.then17.i

if.end14.i.netdev_tx_completed_queue.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netdev_tx_completed_queue.exit

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @netif_schedule_queue(ptr noundef %arrayidx.i) #8
  br label %netdev_tx_completed_queue.exit

netdev_tx_completed_queue.exit:                   ; preds = %if.then17.i, %if.end14.i.netdev_tx_completed_queue.exit_crit_edge, %if.end.i.netdev_tx_completed_queue.exit_crit_edge, %if.end31.netdev_tx_completed_queue.exit_crit_edge
  %queue_stopped = getelementptr inbounds %struct.xlgmac_ring, ptr %3, i32 0, i32 10, i32 0, i32 1
  %40 = ptrtoint ptr %queue_stopped to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %queue_stopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp32 = icmp eq i32 %41, 1
  br i1 %cmp32, label %land.lhs.true, label %netdev_tx_completed_queue.exit.cleanup_crit_edge

netdev_tx_completed_queue.exit.cleanup_crit_edge: ; preds = %netdev_tx_completed_queue.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %netdev_tx_completed_queue.exit
  %42 = ptrtoint ptr %dma_desc_count to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dma_desc_count, align 8
  %44 = ptrtoint ptr %cur5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cur5, align 16
  %46 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dirty, align 4
  %sub.neg.i = sub i32 %43, %45
  %sub1.i = add i32 %sub.neg.i, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %sub1.i)
  %cmp34 = icmp ugt i32 %sub1.i, 128
  br i1 %cmp34, label %if.then35, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then35:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %queue_stopped to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %queue_stopped, align 4
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %land.lhs.true.cleanup_crit_edge, %netdev_tx_completed_queue.exit.cleanup_crit_edge, %while.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xlgmac_rx_poll(ptr noundef %channel, i32 noundef %budget) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata1 = getelementptr inbounds %struct.xlgmac_channel, ptr %channel, i32 0, i32 1
  %0 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata1, align 16
  %rx_ring = getelementptr inbounds %struct.xlgmac_channel, ptr %channel, i32 0, i32 11
  %2 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_ring, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %per_channel_irq = getelementptr inbounds %struct.xlgmac_pdata, ptr %1, i32 0, i32 34
  %6 = ptrtoint ptr %per_channel_irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %per_channel_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  %napi5 = getelementptr inbounds %struct.xlgmac_channel, ptr %channel, i32 0, i32 6
  %napi6 = getelementptr inbounds %struct.xlgmac_pdata, ptr %1, i32 0, i32 38
  %cond = select i1 %tobool4.not, ptr %napi6, ptr %napi5
  %desc_data_head = getelementptr inbounds %struct.xlgmac_ring, ptr %3, i32 0, i32 4
  %cur = getelementptr inbounds %struct.xlgmac_ring, ptr %3, i32 0, i32 7
  %dma_desc_count = getelementptr inbounds %struct.xlgmac_ring, ptr %3, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp425 = icmp sgt i32 %budget, 0
  br i1 %cmp425, label %while.body.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end
  %8 = ptrtoint ptr %desc_data_head to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc_data_head, align 4
  %10 = ptrtoint ptr %dma_desc_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_desc_count, align 8
  %sub = add i32 %11, -1
  %12 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cur, align 16
  %and = and i32 %sub, %13
  %add.ptr = getelementptr %struct.xlgmac_desc_data, ptr %9, i32 %and
  %dirty.i = getelementptr inbounds %struct.xlgmac_ring, ptr %3, i32 0, i32 8
  %dma_regs.i = getelementptr inbounds %struct.xlgmac_channel, ptr %channel, i32 0, i32 3
  %dev_read = getelementptr inbounds %struct.xlgmac_pdata, ptr %1, i32 0, i32 2, i32 10
  %attributes = getelementptr inbounds %struct.xlgmac_pkt_info, ptr %3, i32 0, i32 1
  %errors = getelementptr inbounds %struct.xlgmac_pkt_info, ptr %3, i32 0, i32 2
  %dev = getelementptr inbounds %struct.xlgmac_pdata, ptr %1, i32 0, i32 1
  %msg_enable = getelementptr inbounds %struct.xlgmac_pdata, ptr %1, i32 0, i32 5
  %mtu = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 20
  %features = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 23
  %vlan_ctag = getelementptr inbounds %struct.xlgmac_pkt_info, ptr %3, i32 0, i32 11
  %rx_vlan_packets = getelementptr inbounds %struct.xlgmac_pdata, ptr %1, i32 0, i32 4, i32 49
  %rss_hash = getelementptr inbounds %struct.xlgmac_pkt_info, ptr %3, i32 0, i32 13
  %rss_hash_type = getelementptr inbounds %struct.xlgmac_pkt_info, ptr %3, i32 0, i32 14
  %queue_index = getelementptr inbounds %struct.xlgmac_channel, ptr %channel, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %next_packet.while.body_crit_edge, %while.body.lr.ph
  %context_next.0432 = phi i32 [ 0, %while.body.lr.ph ], [ %shr57.lcssa451, %next_packet.while.body_crit_edge ]
  %desc_data.0431 = phi ptr [ %add.ptr, %while.body.lr.ph ], [ %add.ptr24.lcssa390392, %next_packet.while.body_crit_edge ]
  %incomplete.0430 = phi i32 [ 0, %while.body.lr.ph ], [ %shr42.lcssa453, %next_packet.while.body_crit_edge ]
  %received.0429 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %next_packet.while.body_crit_edge ]
  %packet_count.0426 = phi i32 [ 0, %while.body.lr.ph ], [ %inc225, %next_packet.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %received.0429)
  %tobool8.not = icmp eq i32 %received.0429, 0
  br i1 %tobool8.not, label %land.lhs.true, label %while.body.if.else_crit_edge

while.body.if.else_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %while.body
  %state_saved = getelementptr inbounds %struct.xlgmac_desc_data, ptr %desc_data.0431, i32 0, i32 8
  %14 = ptrtoint ptr %state_saved to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state_saved, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool9.not = icmp eq i32 %15, 0
  br i1 %tobool9.not, label %land.lhs.true.if.else_crit_edge, label %if.then10

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %state = getelementptr inbounds %struct.xlgmac_desc_data, ptr %desc_data.0431, i32 0, i32 9
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %state, align 4
  %error13 = getelementptr inbounds %struct.xlgmac_desc_data, ptr %desc_data.0431, i32 0, i32 9, i32 2
  %18 = ptrtoint ptr %error13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %error13, align 4
  %len15 = getelementptr inbounds %struct.xlgmac_desc_data, ptr %desc_data.0431, i32 0, i32 9, i32 1
  %20 = ptrtoint ptr %len15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len15, align 4
  br label %read_again.outer.preheader

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %while.body.if.else_crit_edge
  %22 = call ptr @memset(ptr %3, i32 0, i32 64)
  br label %read_again.outer.preheader

read_again.outer.preheader:                       ; preds = %if.else, %if.then10
  %skb.2.ph.ph = phi ptr [ %17, %if.then10 ], [ null, %if.else ]
  %error.2.ph.ph = phi i32 [ %19, %if.then10 ], [ 0, %if.else ]
  %len.2.ph.ph = phi i32 [ %21, %if.then10 ], [ 0, %if.else ]
  br label %read_again.outer

read_again.outer:                                 ; preds = %if.end129.read_again.outer_crit_edge, %read_again.outer.preheader
  %skb.2.ph = phi ptr [ %skb.3, %if.end129.read_again.outer_crit_edge ], [ %skb.2.ph.ph, %read_again.outer.preheader ]
  %received.1.ph = phi i32 [ %inc, %if.end129.read_again.outer_crit_edge ], [ %received.0429, %read_again.outer.preheader ]
  %error.2.ph = phi i32 [ %error.3, %if.end129.read_again.outer_crit_edge ], [ %error.2.ph.ph, %read_again.outer.preheader ]
  %incomplete.1.ph = phi i32 [ %shr42, %if.end129.read_again.outer_crit_edge ], [ %incomplete.0430, %read_again.outer.preheader ]
  %context_next.1.ph = phi i32 [ %shr57, %if.end129.read_again.outer_crit_edge ], [ %context_next.0432, %read_again.outer.preheader ]
  %len.2.ph = phi i32 [ %len.3, %if.end129.read_again.outer_crit_edge ], [ %len.2.ph.ph, %read_again.outer.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.2.ph)
  %tobool76.not = icmp eq i32 %error.2.ph, 0
  br label %read_again

read_again:                                       ; preds = %if.end31.read_again_crit_edge, %read_again.outer
  %received.1 = phi i32 [ %inc, %if.end31.read_again_crit_edge ], [ %received.1.ph, %read_again.outer ]
  %incomplete.1 = phi i32 [ %shr42, %if.end31.read_again_crit_edge ], [ %incomplete.1.ph, %read_again.outer ]
  %context_next.1 = phi i32 [ %shr57, %if.end31.read_again_crit_edge ], [ %context_next.1.ph, %read_again.outer ]
  %23 = ptrtoint ptr %desc_data_head to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %desc_data_head, align 4
  %25 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cur, align 16
  %27 = ptrtoint ptr %dma_desc_count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma_desc_count, align 8
  %29 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dirty.i, align 4
  %sub.i = sub i32 %26, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %sub.i)
  %cmp25 = icmp ugt i32 %sub.i, 128
  br i1 %cmp25, label %if.then26, label %read_again.if.end27_crit_edge

read_again.if.end27_crit_edge:                    ; preds = %read_again
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then26:                                        ; preds = %read_again
  %31 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdata1, align 16
  %33 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rx_ring, align 4
  %desc_data_head.i = getelementptr inbounds %struct.xlgmac_ring, ptr %34, i32 0, i32 4
  %dirty.i381 = getelementptr inbounds %struct.xlgmac_ring, ptr %34, i32 0, i32 8
  %cur.i382 = getelementptr inbounds %struct.xlgmac_ring, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %dirty.i381 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dirty.i381, align 4
  %37 = ptrtoint ptr %cur.i382 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cur.i382, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp.not41.i = icmp eq i32 %36, %38
  br i1 %cmp.not41.i, label %if.then26.xlgmac_rx_refresh.exit_crit_edge, label %while.body.lr.ph.i

if.then26.xlgmac_rx_refresh.exit_crit_edge:       ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %xlgmac_rx_refresh.exit

while.body.lr.ph.i:                               ; preds = %if.then26
  %dma_desc_count.i = getelementptr inbounds %struct.xlgmac_ring, ptr %34, i32 0, i32 3
  %unmap_desc_data.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %32, i32 0, i32 3, i32 4
  %map_rx_buffer.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %32, i32 0, i32 3, i32 3
  %rx_desc_reset.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %32, i32 0, i32 2, i32 22
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %39 = phi i32 [ %36, %while.body.lr.ph.i ], [ %inc.i, %if.end.i.while.body.i_crit_edge ]
  %40 = ptrtoint ptr %desc_data_head.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %desc_data_head.i, align 4
  %42 = ptrtoint ptr %dma_desc_count.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dma_desc_count.i, align 8
  %sub.i383 = add i32 %43, -1
  %and.i = and i32 %sub.i383, %39
  %add.ptr.i = getelementptr %struct.xlgmac_desc_data, ptr %41, i32 %and.i
  %44 = ptrtoint ptr %unmap_desc_data.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %unmap_desc_data.i, align 4
  tail call void %45(ptr noundef %32, ptr noundef %add.ptr.i) #8
  %46 = ptrtoint ptr %map_rx_buffer.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %map_rx_buffer.i, align 4
  %call.i = tail call i32 %47(ptr noundef %32, ptr noundef %34, ptr noundef %add.ptr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %while.body.i.xlgmac_rx_refresh.exit_crit_edge

while.body.i.xlgmac_rx_refresh.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xlgmac_rx_refresh.exit

if.end.i:                                         ; preds = %while.body.i
  %48 = ptrtoint ptr %rx_desc_reset.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rx_desc_reset.i, align 4
  %50 = ptrtoint ptr %dirty.i381 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dirty.i381, align 4
  tail call void %49(ptr noundef %32, ptr noundef %add.ptr.i, i32 noundef %51) #8
  %52 = ptrtoint ptr %dirty.i381 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dirty.i381, align 4
  %inc.i = add i32 %53, 1
  store i32 %inc.i, ptr %dirty.i381, align 4
  %54 = ptrtoint ptr %cur.i382 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cur.i382, align 16
  %cmp.not.i = icmp eq i32 %inc.i, %55
  br i1 %cmp.not.i, label %if.end.i.xlgmac_rx_refresh.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end.i.xlgmac_rx_refresh.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xlgmac_rx_refresh.exit

xlgmac_rx_refresh.exit:                           ; preds = %if.end.i.xlgmac_rx_refresh.exit_crit_edge, %while.body.i.xlgmac_rx_refresh.exit_crit_edge, %if.then26.xlgmac_rx_refresh.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  tail call void @arm_heavy_mb() #8
  %56 = ptrtoint ptr %desc_data_head.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %desc_data_head.i, align 4
  %58 = ptrtoint ptr %dirty.i381 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dirty.i381, align 4
  %sub11.i = add i32 %59, -1
  %dma_desc_count12.i = getelementptr inbounds %struct.xlgmac_ring, ptr %34, i32 0, i32 3
  %60 = ptrtoint ptr %dma_desc_count12.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dma_desc_count12.i, align 8
  %sub13.i = add i32 %61, -1
  %and14.i = and i32 %sub13.i, %sub11.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !55
  tail call void @arm_heavy_mb() #8
  %dma_desc_addr.i = getelementptr %struct.xlgmac_desc_data, ptr %57, i32 %and14.i, i32 1
  %62 = ptrtoint ptr %dma_desc_addr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dma_desc_addr.i, align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #8
  %65 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dma_regs.i, align 8
  %add.ptr20.i = getelementptr i8, ptr %66, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %64) #8, !srcloc !56
  br label %if.end27

if.end27:                                         ; preds = %xlgmac_rx_refresh.exit, %read_again.if.end27_crit_edge
  %67 = ptrtoint ptr %dev_read to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev_read, align 4
  %call28 = tail call i32 %68(ptr noundef %channel) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.while.end_crit_edge

if.end27.while.end_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end31:                                         ; preds = %if.end27
  %inc = add i32 %received.1, 1
  %69 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cur, align 16
  %inc33 = add i32 %70, 1
  store i32 %inc33, ptr %cur, align 16
  %71 = ptrtoint ptr %attributes to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %attributes, align 4
  %and41 = lshr i32 %72, 2
  %shr42 = and i32 %and41, 1
  %and56 = lshr i32 %72, 3
  %shr57 = and i32 %and56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr42)
  %tobool73.not = icmp eq i32 %shr42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr57)
  %tobool74.not = icmp eq i32 %shr57, 0
  %or.cond = select i1 %tobool73.not, i1 %tobool74.not, i1 false
  %or.cond375 = select i1 %or.cond, i1 true, i1 %tobool76.not
  br i1 %or.cond375, label %if.end78, label %if.end31.read_again_crit_edge

if.end31.read_again_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %read_again

if.end78:                                         ; preds = %if.end31
  %sub22.le = add i32 %28, -1
  %and23.le = and i32 %sub22.le, %26
  %73 = ptrtoint ptr %errors to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %errors, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool81.not = icmp eq i32 %74, 0
  br i1 %tobool76.not, label %lor.lhs.false80, label %if.then82

lor.lhs.false80:                                  ; preds = %if.end78
  br i1 %tobool81.not, label %if.end91, label %lor.lhs.false80.do.body_crit_edge

lor.lhs.false80.do.body_crit_edge:                ; preds = %lor.lhs.false80
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then82:                                        ; preds = %if.end78
  br i1 %tobool81.not, label %if.then82.if.end90_crit_edge, label %if.then82.do.body_crit_edge

if.then82.do.body_crit_edge:                      ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then82.if.end90_crit_edge:                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

do.body:                                          ; preds = %if.then82.do.body_crit_edge, %lor.lhs.false80.do.body_crit_edge
  %75 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %msg_enable, align 8
  %and86 = and i32 %76, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %do.body.if.end90_crit_edge, label %if.then88

do.body.if.end90_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

if.then88:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.3) #11
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %do.body.if.end90_crit_edge, %if.then82.if.end90_crit_edge
  tail call void @consume_skb(ptr noundef %skb.2.ph) #8
  br label %next_packet

if.end91:                                         ; preds = %lor.lhs.false80
  %77 = and i32 %72, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool92.not = icmp eq i32 %77, 0
  br i1 %tobool92.not, label %if.then93, label %if.end91.if.end129_crit_edge

if.end91.if.end129_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end129

if.then93:                                        ; preds = %if.end91
  %len94 = getelementptr %struct.xlgmac_desc_data, ptr %24, i32 %and23.le, i32 6, i32 3
  %78 = ptrtoint ptr %len94 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %len94, align 2
  %conv = zext i16 %79 to i32
  %sub95 = sub i32 %conv, %len.2.ph
  call void @__sanitizer_cov_trace_cmp4(i32 %len.2.ph, i32 %conv)
  %tobool97.not = icmp eq i32 %len.2.ph, %conv
  %tobool97.not.not = xor i1 %tobool97.not, true
  %tobool99.not = icmp eq ptr %skb.2.ph, null
  %or.cond376 = select i1 %tobool97.not.not, i1 %tobool99.not, i1 false
  br i1 %or.cond376, label %if.then100, label %if.else105

if.then100:                                       ; preds = %if.then93
  %dma_len.i = getelementptr %struct.xlgmac_desc_data, ptr %24, i32 %and23.le, i32 6, i32 0, i32 4
  %80 = ptrtoint ptr %dma_len.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dma_len.i, align 4
  %call.i.i = tail call ptr @__napi_alloc_skb(ptr noundef %cond, i32 noundef %81, i32 noundef 2592) #8
  %tobool.not.i384 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i384, label %if.then100.xlgmac_create_skb.exit_crit_edge, label %if.end.i386

if.then100.xlgmac_create_skb.exit_crit_edge:      ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #10
  br label %xlgmac_create_skb.exit

if.end.i386:                                      ; preds = %if.then100
  %rx.i = getelementptr %struct.xlgmac_desc_data, ptr %24, i32 %and23.le, i32 6
  %82 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev, align 4
  %dma_base.i = getelementptr %struct.xlgmac_desc_data, ptr %24, i32 %and23.le, i32 6, i32 0, i32 2
  %84 = ptrtoint ptr %dma_base.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dma_base.i, align 4
  %dma_off.i = getelementptr %struct.xlgmac_desc_data, ptr %24, i32 %and23.le, i32 6, i32 0, i32 3
  %86 = ptrtoint ptr %dma_off.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %dma_off.i, align 4
  %88 = ptrtoint ptr %dma_len.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %dma_len.i, align 4
  %add.i.i = add i32 %87, %85
  tail call void @dma_sync_single_for_cpu(ptr noundef %83, i32 noundef %add.i.i, i32 noundef %89, i32 noundef 2) #8
  %90 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rx.i, align 4
  %call10.i = tail call ptr @page_address(ptr noundef %91) #8
  %pages_offset.i = getelementptr %struct.xlgmac_desc_data, ptr %24, i32 %and23.le, i32 6, i32 0, i32 0, i32 2
  %92 = ptrtoint ptr %pages_offset.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %pages_offset.i, align 4
  %add.ptr.i385 = getelementptr i8, ptr %call10.i, i32 %93
  %hdr_len.i = getelementptr %struct.xlgmac_desc_data, ptr %24, i32 %and23.le, i32 6, i32 2
  %94 = ptrtoint ptr %hdr_len.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %hdr_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %tobool15.not.i = icmp eq i16 %95, 0
  %conv.i = zext i16 %95 to i32
  %cond.i = select i1 %tobool15.not.i, i32 %sub95, i32 %conv.i
  %96 = ptrtoint ptr %dma_len.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %dma_len.i, align 4
  %98 = tail call i32 @llvm.umin.i32(i32 %97, i32 %cond.i) #8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %99 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %data.i.i, align 4
  %101 = call ptr @memcpy(ptr %100, ptr %add.ptr.i385, i32 %98)
  %call27.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %98) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub95, i32 %98)
  %tobool28.not.i = icmp eq i32 %sub95, %98
  br i1 %tobool28.not.i, label %if.end.i386.xlgmac_create_skb.exit_crit_edge, label %if.then29.i

if.end.i386.xlgmac_create_skb.exit_crit_edge:     ; preds = %if.end.i386
  call void @__sanitizer_cov_trace_pc() #10
  br label %xlgmac_create_skb.exit

if.then29.i:                                      ; preds = %if.end.i386
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i387 = sub i32 %sub95, %98
  %102 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev, align 4
  %buf.i = getelementptr %struct.xlgmac_desc_data, ptr %24, i32 %and23.le, i32 6, i32 1
  %dma_base32.i = getelementptr %struct.xlgmac_desc_data, ptr %24, i32 %and23.le, i32 6, i32 1, i32 2
  %104 = ptrtoint ptr %dma_base32.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %dma_base32.i, align 4
  %dma_off35.i = getelementptr %struct.xlgmac_desc_data, ptr %24, i32 %and23.le, i32 6, i32 1, i32 3
  %106 = ptrtoint ptr %dma_off35.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %dma_off35.i, align 4
  %dma_len38.i = getelementptr %struct.xlgmac_desc_data, ptr %24, i32 %and23.le, i32 6, i32 1, i32 4
  %108 = ptrtoint ptr %dma_len38.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %dma_len38.i, align 4
  %add.i88.i = add i32 %107, %105
  tail call void @dma_sync_single_for_cpu(ptr noundef %103, i32 noundef %add.i88.i, i32 noundef %109, i32 noundef 2) #8
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 17
  %110 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %111, i32 0, i32 2
  %112 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %nr_frags.i, align 2
  %conv40.i = zext i8 %113 to i32
  %114 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %buf.i, align 4
  %pages_offset48.i = getelementptr %struct.xlgmac_desc_data, ptr %24, i32 %and23.le, i32 6, i32 1, i32 0, i32 2
  %116 = ptrtoint ptr %pages_offset48.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %pages_offset48.i, align 4
  %118 = ptrtoint ptr %dma_len38.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %dma_len38.i, align 4
  tail call void @skb_add_rx_frag(ptr noundef nonnull %call.i.i, i32 noundef %conv40.i, ptr noundef %115, i32 noundef %117, i32 noundef %sub.i387, i32 noundef %119) #8
  %120 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %buf.i, align 4
  br label %xlgmac_create_skb.exit

xlgmac_create_skb.exit:                           ; preds = %if.then29.i, %if.end.i386.xlgmac_create_skb.exit_crit_edge, %if.then100.xlgmac_create_skb.exit_crit_edge
  %spec.select377 = zext i1 %tobool.not.i384 to i32
  br label %if.end129

if.else105:                                       ; preds = %if.then93
  br i1 %tobool97.not, label %if.else105.if.end129_crit_edge, label %if.then107

if.else105.if.end129_crit_edge:                   ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end129

if.then107:                                       ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #10
  %121 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev, align 4
  %buf = getelementptr %struct.xlgmac_desc_data, ptr %24, i32 %and23.le, i32 6, i32 1
  %dma_base = getelementptr %struct.xlgmac_desc_data, ptr %24, i32 %and23.le, i32 6, i32 1, i32 2
  %123 = ptrtoint ptr %dma_base to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %dma_base, align 4
  %dma_off = getelementptr %struct.xlgmac_desc_data, ptr %24, i32 %and23.le, i32 6, i32 1, i32 3
  %125 = ptrtoint ptr %dma_off to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %dma_off, align 4
  %dma_len = getelementptr %struct.xlgmac_desc_data, ptr %24, i32 %and23.le, i32 6, i32 1, i32 4
  %127 = ptrtoint ptr %dma_len to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %dma_len, align 4
  %add.i = add i32 %126, %124
  tail call void @dma_sync_single_for_cpu(ptr noundef %122, i32 noundef %add.i, i32 noundef %128, i32 noundef 2) #8
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2.ph, i32 0, i32 17
  %129 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %130, i32 0, i32 2
  %131 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %nr_frags, align 2
  %conv114 = zext i8 %132 to i32
  %133 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %buf, align 4
  %pages_offset = getelementptr inbounds %struct.xlgmac_page_alloc, ptr %buf, i32 0, i32 2
  %135 = ptrtoint ptr %pages_offset to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %pages_offset, align 4
  %137 = ptrtoint ptr %dma_len to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %dma_len, align 4
  tail call void @skb_add_rx_frag(ptr noundef %skb.2.ph, i32 noundef %conv114, ptr noundef %134, i32 noundef %136, i32 noundef %sub95, i32 noundef %138) #8
  %139 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr null, ptr %buf, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.then107, %if.else105.if.end129_crit_edge, %xlgmac_create_skb.exit, %if.end91.if.end129_crit_edge
  %skb.3 = phi ptr [ %skb.2.ph, %if.end91.if.end129_crit_edge ], [ %skb.2.ph, %if.then107 ], [ %skb.2.ph, %if.else105.if.end129_crit_edge ], [ %call.i.i, %xlgmac_create_skb.exit ]
  %error.3 = phi i32 [ 0, %if.end91.if.end129_crit_edge ], [ 0, %if.then107 ], [ 0, %if.else105.if.end129_crit_edge ], [ %spec.select377, %xlgmac_create_skb.exit ]
  %len.3 = phi i32 [ %len.2.ph, %if.end91.if.end129_crit_edge ], [ %conv, %if.then107 ], [ %len.2.ph, %if.else105.if.end129_crit_edge ], [ %conv, %xlgmac_create_skb.exit ]
  br i1 %or.cond, label %if.end134, label %if.end129.read_again.outer_crit_edge

if.end129.read_again.outer_crit_edge:             ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #10
  br label %read_again.outer

if.end134:                                        ; preds = %if.end129
  %tobool135.not = icmp eq ptr %skb.3, null
  br i1 %tobool135.not, label %if.end134.next_packet_crit_edge, label %if.end137

if.end134.next_packet_crit_edge:                  ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #10
  br label %next_packet

if.end137:                                        ; preds = %if.end134
  %140 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %mtu, align 4
  %add138 = add i32 %141, 14
  %142 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %features, align 16
  %and139 = and i64 %143, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and139)
  %tobool140.not = icmp eq i64 %and139, 0
  br i1 %tobool140.not, label %land.lhs.true141, label %if.end137.if.end147_crit_edge

if.end137.if.end147_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end147

land.lhs.true141:                                 ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb.3, i32 0, i32 15, i32 0, i32 18
  %144 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %145)
  %cmp143 = icmp eq i16 %145, -32512
  %add146 = add i32 %141, 18
  %spec.select379 = select i1 %cmp143, i32 %add146, i32 %add138
  br label %if.end147

if.end147:                                        ; preds = %land.lhs.true141, %if.end137.if.end147_crit_edge
  %max_len.0 = phi i32 [ %add138, %if.end137.if.end147_crit_edge ], [ %spec.select379, %land.lhs.true141 ]
  %len148 = getelementptr inbounds %struct.sk_buff, ptr %skb.3, i32 0, i32 6
  %146 = ptrtoint ptr %len148 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %len148, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %147, i32 %max_len.0)
  %cmp149 = icmp ugt i32 %147, %max_len.0
  %148 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %msg_enable, align 8
  br i1 %cmp149, label %do.body152, label %if.end160

do.body152:                                       ; preds = %if.end147
  %and154 = and i32 %149, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  br i1 %tobool155.not, label %do.body152.do.end159_crit_edge, label %if.then156

do.body152.do.end159_crit_edge:                   ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end159

if.then156:                                       ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.4) #11
  br label %do.end159

do.end159:                                        ; preds = %if.then156, %do.body152.do.end159_crit_edge
  tail call void @consume_skb(ptr noundef nonnull %skb.3) #8
  br label %next_packet

if.end160:                                        ; preds = %if.end147
  %and162 = and i32 %149, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %tobool163.not = icmp eq i32 %and162, 0
  br i1 %tobool163.not, label %if.end160.if.end165_crit_edge, label %if.then164

if.end160.if.end165_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end165

if.then164:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xlgmac_print_pkt(ptr noundef %5, ptr noundef nonnull %skb.3, i1 noundef zeroext false) #8
  br label %if.end165

if.end165:                                        ; preds = %if.then164, %if.end160.if.end165_crit_edge
  %150 = ptrtoint ptr %attributes to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %attributes, align 4
  %and179 = and i32 %151, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and179)
  %tobool181.not = icmp eq i32 %and179, 0
  br i1 %tobool181.not, label %if.end165.if.end183_crit_edge, label %if.then182

if.end165.if.end183_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end183

if.then182:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #10
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb.3, i32 0, i32 15
  %152 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %152)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  %bf.set = or i16 %bf.clear, 512
  store i16 %bf.set, ptr %ip_summed, align 8
  br label %if.end183

if.end183:                                        ; preds = %if.then182, %if.end165.if.end183_crit_edge
  %153 = ptrtoint ptr %attributes to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %attributes, align 4
  %155 = and i32 %154, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool199.not = icmp eq i32 %155, 0
  br i1 %tobool199.not, label %if.end183.if.end202_crit_edge, label %if.then200

if.end183.if.end202_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end202

if.then200:                                       ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #10
  %156 = ptrtoint ptr %vlan_ctag to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %vlan_ctag, align 2
  %vlan_proto1.i = getelementptr inbounds %struct.sk_buff, ptr %skb.3, i32 0, i32 15, i32 0, i32 9
  %158 = ptrtoint ptr %vlan_proto1.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 -32512, ptr %vlan_proto1.i, align 8
  %vlan_tci2.i = getelementptr inbounds %struct.sk_buff, ptr %skb.3, i32 0, i32 15, i32 0, i32 10
  %159 = ptrtoint ptr %vlan_tci2.i to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %157, ptr %vlan_tci2.i, align 2
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb.3, i32 0, i32 15, i32 0, i32 3
  %160 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %160, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  %bf.set.i = or i32 %bf.load.i, -2147483648
  store i32 %bf.set.i, ptr %vlan_present.i, align 2
  %161 = ptrtoint ptr %rx_vlan_packets to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %rx_vlan_packets, align 8
  %inc201 = add i64 %162, 1
  store i64 %inc201, ptr %rx_vlan_packets, align 8
  br label %if.end202

if.end202:                                        ; preds = %if.then200, %if.end183.if.end202_crit_edge
  %163 = ptrtoint ptr %attributes to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %attributes, align 4
  %165 = and i32 %164, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool218.not = icmp eq i32 %165, 0
  br i1 %tobool218.not, label %if.end202.if.end220_crit_edge, label %if.then219

if.end202.if.end220_crit_edge:                    ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end220

if.then219:                                       ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #10
  %166 = ptrtoint ptr %rss_hash to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %rss_hash, align 8
  %168 = ptrtoint ptr %rss_hash_type to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %rss_hash_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %169)
  %cmp.i = icmp eq i32 %169, 3
  %l4_hash.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.3, i32 0, i32 15
  %170 = ptrtoint ptr %l4_hash.i.i to i32
  call void @__asan_load2_noabort(i32 %170)
  %bf.load.i.i = load i16, ptr %l4_hash.i.i, align 8
  %bf.shl.i.i = select i1 %cmp.i, i16 128, i16 0
  %bf.clear.i.i = and i16 %bf.load.i.i, -193
  %bf.set.i.i = or i16 %bf.clear.i.i, %bf.shl.i.i
  store i16 %bf.set.i.i, ptr %l4_hash.i.i, align 8
  %hash10.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.3, i32 0, i32 15, i32 0, i32 8
  %171 = ptrtoint ptr %hash10.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %167, ptr %hash10.i.i, align 4
  br label %if.end220

if.end220:                                        ; preds = %if.then219, %if.end202.if.end220_crit_edge
  %172 = getelementptr inbounds %struct.anon.5, ptr %skb.3, i32 0, i32 2
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %5, ptr %172, align 8
  %call221 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %skb.3, ptr noundef %5) #8
  %protocol222 = getelementptr inbounds %struct.sk_buff, ptr %skb.3, i32 0, i32 15, i32 0, i32 18
  %174 = ptrtoint ptr %protocol222 to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %call221, ptr %protocol222, align 8
  %175 = ptrtoint ptr %queue_index to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %queue_index, align 4
  %conv223 = trunc i32 %176 to i16
  %add.i388 = add i16 %conv223, 1
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb.3, i32 0, i32 10
  %177 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 %add.i388, ptr %queue_mapping.i, align 8
  %call224 = tail call i32 @napi_gro_receive(ptr noundef %cond, ptr noundef nonnull %skb.3) #8
  br label %next_packet

next_packet:                                      ; preds = %if.end220, %do.end159, %if.end134.next_packet_crit_edge, %if.end90
  %shr42.lcssa453 = phi i32 [ %shr42, %if.end90 ], [ 0, %do.end159 ], [ 0, %if.end220 ], [ 0, %if.end134.next_packet_crit_edge ]
  %shr57.lcssa451 = phi i32 [ %shr57, %if.end90 ], [ 0, %do.end159 ], [ 0, %if.end220 ], [ 0, %if.end134.next_packet_crit_edge ]
  %skb.4 = phi ptr [ %skb.2.ph, %if.end90 ], [ %skb.3, %do.end159 ], [ %skb.3, %if.end220 ], [ null, %if.end134.next_packet_crit_edge ]
  %error.4 = phi i32 [ %error.2.ph, %if.end90 ], [ %error.3, %do.end159 ], [ %error.3, %if.end220 ], [ %error.3, %if.end134.next_packet_crit_edge ]
  %len.4 = phi i32 [ %len.2.ph, %if.end90 ], [ %len.3, %do.end159 ], [ %len.3, %if.end220 ], [ %len.3, %if.end134.next_packet_crit_edge ]
  %add.ptr24.lcssa390392 = getelementptr %struct.xlgmac_desc_data, ptr %24, i32 %and23.le
  %inc225 = add nuw nsw i32 %packet_count.0426, 1
  %exitcond.not = icmp eq i32 %inc225, %budget
  br i1 %exitcond.not, label %next_packet.while.end_crit_edge, label %next_packet.while.body_crit_edge

next_packet.while.body_crit_edge:                 ; preds = %next_packet
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

next_packet.while.end_crit_edge:                  ; preds = %next_packet
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %next_packet.while.end_crit_edge, %if.end27.while.end_crit_edge
  %packet_count.0419 = phi i32 [ %packet_count.0426, %if.end27.while.end_crit_edge ], [ %budget, %next_packet.while.end_crit_edge ]
  %skb.5 = phi ptr [ %skb.2.ph, %if.end27.while.end_crit_edge ], [ %skb.4, %next_packet.while.end_crit_edge ]
  %received.2 = phi i32 [ %received.1, %if.end27.while.end_crit_edge ], [ %inc, %next_packet.while.end_crit_edge ]
  %error.5 = phi i32 [ %error.2.ph, %if.end27.while.end_crit_edge ], [ %error.4, %next_packet.while.end_crit_edge ]
  %incomplete.2 = phi i32 [ %incomplete.1, %if.end27.while.end_crit_edge ], [ %shr42.lcssa453, %next_packet.while.end_crit_edge ]
  %context_next.2 = phi i32 [ %context_next.1, %if.end27.while.end_crit_edge ], [ %shr57.lcssa451, %next_packet.while.end_crit_edge ]
  %len.5 = phi i32 [ %len.2.ph, %if.end27.while.end_crit_edge ], [ %len.4, %next_packet.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %received.2)
  %tobool226.not = icmp eq i32 %received.2, 0
  br i1 %tobool226.not, label %while.end.cleanup_crit_edge, label %land.lhs.true227

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true227:                                 ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %incomplete.2)
  %tobool228.not = icmp eq i32 %incomplete.2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %context_next.2)
  %tobool230.not = icmp eq i32 %context_next.2, 0
  %or.cond380 = select i1 %tobool228.not, i1 %tobool230.not, i1 false
  br i1 %or.cond380, label %land.lhs.true227.cleanup_crit_edge, label %if.then231

land.lhs.true227.cleanup_crit_edge:               ; preds = %land.lhs.true227
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then231:                                       ; preds = %land.lhs.true227
  call void @__sanitizer_cov_trace_pc() #10
  %178 = ptrtoint ptr %desc_data_head to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %desc_data_head, align 4
  %180 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %cur, align 16
  %182 = ptrtoint ptr %dma_desc_count to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %dma_desc_count, align 8
  %sub237 = add i32 %183, -1
  %and238 = and i32 %sub237, %181
  %state_saved240 = getelementptr %struct.xlgmac_desc_data, ptr %179, i32 %and238, i32 8
  %184 = ptrtoint ptr %state_saved240 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 1, ptr %state_saved240, align 4
  %state241 = getelementptr %struct.xlgmac_desc_data, ptr %179, i32 %and238, i32 9
  %185 = ptrtoint ptr %state241 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %skb.5, ptr %state241, align 4
  %len244 = getelementptr %struct.xlgmac_desc_data, ptr %179, i32 %and238, i32 9, i32 1
  %186 = ptrtoint ptr %len244 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %len.5, ptr %len244, align 4
  %error246 = getelementptr %struct.xlgmac_desc_data, ptr %179, i32 %and238, i32 9, i32 2
  %187 = ptrtoint ptr %error246 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %error.5, ptr %error246, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then231, %land.lhs.true227.cleanup_crit_edge, %while.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %packet_count.0419, %land.lhs.true227.cleanup_crit_edge ], [ %packet_count.0419, %while.end.cleanup_crit_edge ], [ %packet_count.0419, %if.then231 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xlgmac_dump_tx_desc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_completed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_schedule_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_add_rx_frag(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xlgmac_print_pkt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__napi_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_isr(i32 noundef %irq, ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_regs = getelementptr inbounds %struct.xlgmac_pdata, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12296
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !57
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.xlgmac_pdata, ptr %data, i32 0, i32 5
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 8
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body.do.end15_crit_edge, label %do.body5

do.body.do.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xlgmac_isr.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xlgmac_isr, %if.then11)) #8
          to label %do.end15 [label %if.then11], !srcloc !59

if.then11:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xlgmac_isr.__UNIQUE_ID_ddebug492, ptr noundef %7, ptr noundef nonnull @.str.10, i32 noundef %3) #8
  br label %do.end15

do.end15:                                         ; preds = %if.then11, %do.body5, %do.body.do.end15_crit_edge
  %channel_count = getelementptr inbounds %struct.xlgmac_pdata, ptr %data, i32 0, i32 10
  %8 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp317.not = icmp eq i32 %9, 0
  br i1 %cmp317.not, label %do.end15.for.end_crit_edge, label %for.body.lr.ph

do.end15.for.end_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end15
  %channel_head = getelementptr inbounds %struct.xlgmac_pdata, ptr %data, i32 0, i32 9
  %per_channel_irq = getelementptr inbounds %struct.xlgmac_pdata, ptr %data, i32 0, i32 34
  %napi = getelementptr inbounds %struct.xlgmac_pdata, ptr %data, i32 0, i32 38
  %disable_int.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %data, i32 0, i32 2, i32 8
  %napi_poll_isr = getelementptr inbounds %struct.xlgmac_pdata, ptr %data, i32 0, i32 4, i32 50
  %tx_process_stopped = getelementptr inbounds %struct.xlgmac_pdata, ptr %data, i32 0, i32 4, i32 43
  %rx_process_stopped = getelementptr inbounds %struct.xlgmac_pdata, ptr %data, i32 0, i32 4, i32 44
  %tx_buffer_unavailable = getelementptr inbounds %struct.xlgmac_pdata, ptr %data, i32 0, i32 4, i32 45
  %rx_buffer_unavailable = getelementptr inbounds %struct.xlgmac_pdata, ptr %data, i32 0, i32 4, i32 46
  %fatal_bus_error = getelementptr inbounds %struct.xlgmac_pdata, ptr %data, i32 0, i32 4, i32 47
  %restart_work = getelementptr inbounds %struct.xlgmac_pdata, ptr %data, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0318 = phi i32 [ 0, %for.body.lr.ph ], [ %inc185, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.0318
  %and16 = and i32 %shl, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %for.body.for.inc_crit_edge, label %if.end19

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end19:                                         ; preds = %for.body
  %10 = ptrtoint ptr %channel_head to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %channel_head, align 8
  %dma_regs = getelementptr %struct.xlgmac_channel, ptr %11, i32 %i.0318, i32 3
  %12 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_regs, align 8
  %add.ptr23 = getelementptr i8, ptr %13, i32 96
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #8, !srcloc !57
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !60
  %16 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable, align 8
  %and29 = and i32 %17, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end19.do.end51_crit_edge, label %do.body32

if.end19.do.end51_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end51

do.body32:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xlgmac_isr.__UNIQUE_ID_ddebug493, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xlgmac_isr, %if.then44)) #8
          to label %do.end51 [label %if.then44], !srcloc !59

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xlgmac_isr.__UNIQUE_ID_ddebug493, ptr noundef %19, ptr noundef nonnull @.str.11, i32 noundef %i.0318, i32 noundef %15) #8
  br label %do.end51

do.end51:                                         ; preds = %if.then44, %do.body32, %if.end19.do.end51_crit_edge
  %20 = ptrtoint ptr %per_channel_irq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %per_channel_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool75.not = icmp ne i32 %21, 0
  %22 = and i32 %15, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %23 = icmp eq i32 %22, 0
  %or.cond = select i1 %tobool75.not, i1 true, i1 %23
  br i1 %or.cond, label %do.end51.if.end83_crit_edge, label %if.then78

do.end51.if.end83_crit_edge:                      ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

if.then78:                                        ; preds = %do.end51
  %call79 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #8
  br i1 %call79, label %if.then80, label %if.then78.if.end83_crit_edge

if.then78.if.end83_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

if.then80:                                        ; preds = %if.then78
  %24 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %channel_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp21.not.i = icmp eq i32 %25, 0
  br i1 %cmp21.not.i, label %if.then80.xlgmac_disable_rx_tx_ints.exit_crit_edge, label %for.body.lr.ph.i

if.then80.xlgmac_disable_rx_tx_ints.exit_crit_edge: ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  br label %xlgmac_disable_rx_tx_ints.exit

for.body.lr.ph.i:                                 ; preds = %if.then80
  %26 = ptrtoint ptr %channel_head to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %channel_head, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.025.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %channel.022.i = phi ptr [ %27, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %tx_ring.i = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.022.i, i32 0, i32 10
  %28 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tx_ring.i, align 8
  %tobool.not.i = icmp eq ptr %29, null
  %rx_ring7.i = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.022.i, i32 0, i32 11
  %30 = ptrtoint ptr %rx_ring7.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rx_ring7.i, align 4
  %tobool8.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %if.else6.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %spec.select.i = select i1 %tobool8.not.i, i32 0, i32 6
  br label %if.end12.i

if.else6.i:                                       ; preds = %for.body.i
  br i1 %tobool8.not.i, label %if.else6.i.for.inc.i_crit_edge, label %if.else6.i.if.end12.i_crit_edge

if.else6.i.if.end12.i_crit_edge:                  ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.else6.i.for.inc.i_crit_edge:                   ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end12.i:                                       ; preds = %if.else6.i.if.end12.i_crit_edge, %land.lhs.true.i
  %int_id.0.i = phi i32 [ 3, %if.else6.i.if.end12.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %32 = ptrtoint ptr %disable_int.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %disable_int.i, align 4
  %call.i = tail call i32 %33(ptr noundef %channel.022.i, i32 noundef %int_id.0.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end12.i, %if.else6.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.025.i, 1
  %incdec.ptr.i = getelementptr %struct.xlgmac_channel, ptr %channel.022.i, i32 1
  %34 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %channel_count, align 4
  %cmp.i = icmp ult i32 %inc.i, %35
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.xlgmac_disable_rx_tx_ints.exit_crit_edge

for.inc.i.xlgmac_disable_rx_tx_ints.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xlgmac_disable_rx_tx_ints.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

xlgmac_disable_rx_tx_ints.exit:                   ; preds = %for.inc.i.xlgmac_disable_rx_tx_ints.exit_crit_edge, %if.then80.xlgmac_disable_rx_tx_ints.exit_crit_edge
  %36 = ptrtoint ptr %napi_poll_isr to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %napi_poll_isr, align 8
  %inc = add i64 %37, 1
  store i64 %inc, ptr %napi_poll_isr, align 8
  tail call void @__napi_schedule_irqoff(ptr noundef %napi) #8
  br label %if.end83

if.end83:                                         ; preds = %xlgmac_disable_rx_tx_ints.exit, %if.then78.if.end83_crit_edge, %do.end51.if.end83_crit_edge
  %38 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool98.not = icmp eq i32 %38, 0
  br i1 %tobool98.not, label %if.end83.if.end102_crit_edge, label %if.then99

if.end83.if.end102_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102

if.then99:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %tx_process_stopped to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %tx_process_stopped, align 8
  %inc101 = add i64 %40, 1
  store i64 %inc101, ptr %tx_process_stopped, align 8
  br label %if.end102

if.end102:                                        ; preds = %if.then99, %if.end83.if.end102_crit_edge
  %41 = and i32 %15, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool117.not = icmp eq i32 %41, 0
  br i1 %tobool117.not, label %if.end102.if.end121_crit_edge, label %if.then118

if.end102.if.end121_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end121

if.then118:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %rx_process_stopped to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %rx_process_stopped, align 8
  %inc120 = add i64 %43, 1
  store i64 %inc120, ptr %rx_process_stopped, align 8
  br label %if.end121

if.end121:                                        ; preds = %if.then118, %if.end102.if.end121_crit_edge
  %44 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool136.not = icmp eq i32 %44, 0
  br i1 %tobool136.not, label %if.end121.if.end140_crit_edge, label %if.then137

if.end121.if.end140_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end140

if.then137:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %tx_buffer_unavailable to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %tx_buffer_unavailable, align 8
  %inc139 = add i64 %46, 1
  store i64 %inc139, ptr %tx_buffer_unavailable, align 8
  br label %if.end140

if.end140:                                        ; preds = %if.then137, %if.end121.if.end140_crit_edge
  %47 = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool155.not = icmp eq i32 %47, 0
  br i1 %tobool155.not, label %if.end140.if.end159_crit_edge, label %if.then156

if.end140.if.end159_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end159

if.then156:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %rx_buffer_unavailable to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %rx_buffer_unavailable, align 8
  %inc158 = add i64 %49, 1
  store i64 %inc158, ptr %rx_buffer_unavailable, align 8
  br label %if.end159

if.end159:                                        ; preds = %if.then156, %if.end140.if.end159_crit_edge
  %50 = and i32 %15, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool174.not = icmp eq i32 %50, 0
  br i1 %tobool174.not, label %if.end159.do.body180_crit_edge, label %if.then175

if.end159.do.body180_crit_edge:                   ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body180

if.then175:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %fatal_bus_error to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %fatal_bus_error, align 8
  %inc177 = add i64 %52, 1
  store i64 %inc177, ptr %fatal_bus_error, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %53 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %53, ptr noundef %restart_work) #8
  br label %do.body180

do.body180:                                       ; preds = %if.then175, %if.end159.do.body180_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !61
  tail call void @arm_heavy_mb() #8
  %54 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dma_regs, align 8
  %add.ptr184 = getelementptr i8, ptr %55, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr184, i32 %14) #8, !srcloc !56
  br label %for.inc

for.inc:                                          ; preds = %do.body180, %for.body.for.inc_crit_edge
  %inc185 = add nuw i32 %i.0318, 1
  %56 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %channel_count, align 4
  %cmp = icmp ult i32 %inc185, %57
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end15.for.end_crit_edge
  %58 = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool200.not = icmp eq i32 %58, 0
  br i1 %tobool200.not, label %for.end.cleanup_crit_edge, label %if.then201

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then201:                                       ; preds = %for.end
  %59 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mac_regs, align 4
  %add.ptr205 = getelementptr i8, ptr %60, i32 176
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr205) #8, !srcloc !57
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  %63 = and i32 %62, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool223.not = icmp eq i32 %63, 0
  br i1 %tobool223.not, label %if.then201.if.end225_crit_edge, label %if.then224

if.then201.if.end225_crit_edge:                   ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end225

if.then224:                                       ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #10
  %tx_mmc_int = getelementptr inbounds %struct.xlgmac_pdata, ptr %data, i32 0, i32 2, i32 48
  %64 = ptrtoint ptr %tx_mmc_int to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tx_mmc_int, align 4
  tail call void %65(ptr noundef %data) #8
  br label %if.end225

if.end225:                                        ; preds = %if.then224, %if.then201.if.end225_crit_edge
  %66 = and i32 %62, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool240.not = icmp eq i32 %66, 0
  br i1 %tobool240.not, label %if.end225.cleanup_crit_edge, label %if.then241

if.end225.cleanup_crit_edge:                      ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then241:                                       ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #10
  %rx_mmc_int = getelementptr inbounds %struct.xlgmac_pdata, ptr %data, i32 0, i32 2, i32 47
  %67 = ptrtoint ptr %rx_mmc_int to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rx_mmc_int, align 4
  tail call void %68(ptr noundef %data) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then241, %if.end225.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_dma_isr(i32 noundef %irq, ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %napi = getelementptr inbounds %struct.xlgmac_channel, ptr %data, i32 0, i32 6
  %call = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #8
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dma_irq = getelementptr inbounds %struct.xlgmac_channel, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %dma_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_irq, align 4
  tail call void @disable_irq_nosync(i32 noundef %1) #8
  tail call void @__napi_schedule_irqoff(ptr noundef %napi) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule_irqoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !26, !27, !29, !31, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @xlgmac_netdev_ops, !1, !"xlgmac_netdev_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-net.c", i32 927, i32 36}
!2 = !{ptr @xlgmac_open.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-net.c", i32 661, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-net.c", i32 194, i32 24}
!7 = !{ptr @xlgmac_init_timers.__key, !8, !"__key", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-net.c", i32 394, i32 3}
!9 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-net.c", i32 1180, i32 5}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-net.c", i32 1227, i32 4}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-net.c", i32 467, i32 24}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-net.c", i32 479, i32 5}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-net.c", i32 269, i32 2}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @xlgmac_isr.__UNIQUE_ID_ddebug492, !19, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-net.c", i32 278, i32 3}
!26 = !{ptr @xlgmac_isr.__UNIQUE_ID_ddebug493, !25, !"__UNIQUE_ID_ddebug493", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/netdevice.h", i32 4963, i32 10}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-net.c", i32 722, i32 3}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-net.c", i32 740, i32 3}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-net.c", i32 46, i32 3}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-net.c", i32 696, i32 22}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{!"branch_weights", i32 1, i32 2000}
!47 = !{i64 2150651789, i64 2150652289, i64 2150651826, i64 2150651882, i64 2150651916, i64 2150651940, i64 2150651981, i64 2150652002, i64 2150652030, i64 2150652064}
!48 = !{i64 2150653133}
!49 = !{!"branch_weights", i32 2000, i32 1}
!50 = !{i64 2155789123}
!51 = !{i64 2157662138}
!52 = !{i64 2157662414}
!53 = !{i64 2155790194}
!54 = !{i64 2157659424}
!55 = !{i64 2157659956}
!56 = !{i64 6560330}
!57 = !{i64 6560748}
!58 = !{i64 2157635793}
!59 = !{i64 2149072276, i64 2149072281, i64 2149072294, i64 2149072338, i64 2149072372, i64 2149072393}
!60 = !{i64 2157638883}
!61 = !{i64 2157648388}
!62 = !{i64 2157650074}

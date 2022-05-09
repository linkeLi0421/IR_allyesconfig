; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/hisilicon/hns/hns_enet.c_pt.bc'
source_filename = "../drivers/net/ethernet/hisilicon/hns/hns_enet.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.80 }
%union.anon.80 = type { i32 }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hnae_ring = type { ptr, ptr, ptr, ptr, i32, [20 x i8], %struct.ring_stats, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.ring_stats = type { i64, i64, i64, %union.anon.156 }
%union.anon.156 = type { %struct.anon.158 }
%struct.anon.158 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.hnae_queue = type { ptr, i32, ptr, [116 x i8], %struct.hnae_ring, [64 x i8], %struct.hnae_ring, ptr, [60 x i8] }
%struct.hnae_ae_dev = type { %struct.device, ptr, ptr, %struct.list_head, ptr, i32, [16 x i8], %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.142, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.142 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.10, %union.anon.95, %struct.atomic_t, i32 }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.95 = type { %struct.atomic_t }
%struct.hnae_handle = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, %struct.list_head, ptr, [0 x ptr] }
%struct.hnae_desc_cb = type { i32, ptr, ptr, i32, i32, i16, i16 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.hnae_ae_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.hns_nic_ring_data = type { ptr, %struct.napi_struct, %struct.cpumask, i32, ptr, ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hnae_buf_ops = type { ptr, ptr, ptr, ptr }
%struct.hnae_desc = type { i64, %union.anon.148 }
%union.anon.148 = type { %struct.anon.149 }
%struct.anon.149 = type { %union.anon.150, i16, %union.anon.151, i16, i8, i8, i16, i8, i8, [2 x i32] }
%union.anon.150 = type { i16 }
%union.anon.151 = type { i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.vlan_hdr = type { i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.anon.152 = type { i8, i8, i8, i8 }
%struct.hns_nic_priv = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.hns_nic_ops, ptr, i32, i64, i32, %struct.timer_list, %struct.work_struct, %struct.notifier_block }
%struct.hns_nic_ops = type { ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.anon.153 = type { i32, i16, i16, %union.anon.154, i32, [2 x i32] }
%union.anon.154 = type { i32 }

@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no memory to xmit!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"TX head DMA map failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"TX frag(%d) DMA map failed\0A\00", [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_hns_enet_drv__487_2441_hns_nic_dev_driver_init6 = internal global ptr @hns_nic_dev_driver_init, section ".initcall6.init", align 4
@hns_nic_dev_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hns_nic_dev_probe, ptr @hns_nic_dev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.13, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hns_enet_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hns_nic_dev_driver_exit = internal global ptr @hns_nic_dev_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description488 = internal constant [55 x i8] c"hns_enet_drv.description=HISILICON HNS Ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author489 = internal constant [36 x i8] c"hns_enet_drv.author=Hisilicon, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file490 = internal constant [66 x i8] c"hns_enet_drv.file=drivers/net/ethernet/hisilicon/hns/hns_enet_drv\00", section ".modinfo", align 1
@__UNIQUE_ID_license491 = internal constant [25 x i8] c"hns_enet_drv.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias492 = internal constant [36 x i8] c"hns_enet_drv.alias=platform:hns-nic\00", section ".modinfo", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"link up\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"link down\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hns init irq failed! ret=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s-%s%d\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"request irq(%d) fail\0A\00", [42 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hns-nic\00", [24 x i8] zeroinitializer }, align 32
@hns_enet_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hns-nic-v1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hns-nic-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hisilicon,hns-nic-v1\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ae-handle\00", [22 x i8] zeroinitializer }, align 32
@hns_nic_dev_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.18, i32 2275, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"not find ae-handle\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hns_nic_dev_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/ethernet/hisilicon/hns/hns_enet.c\00", [50 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hns_nic_dev_probe._entry_ptr = internal global ptr @hns_nic_dev_probe._entry, section ".printk_index", align 4
@hns_nic_dev_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.18, i32 2295, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@hns_nic_dev_probe._entry_ptr.22 = internal global ptr @hns_nic_dev_probe._entry.21, section ".printk_index", align 4
@hns_nic_dev_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.17, ptr @.str.18, i32 2304, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"cannot read cfg data from OF or acpi\0A\00", [58 x i8] zeroinitializer }, align 32
@hns_nic_dev_probe._entry_ptr.25 = internal global ptr @hns_nic_dev_probe._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"port-idx-in-ae\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"port-id\00", [24 x i8] zeroinitializer }, align 32
@hns_nic_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @hns_nic_net_open, ptr @hns_nic_net_stop, ptr @hns_nic_net_xmit, ptr null, ptr @hns_nic_select_queue, ptr null, ptr @hns_nic_set_rx_mode, ptr @hns_nic_net_set_mac_address, ptr null, ptr null, ptr @phy_do_ioctl_running, ptr null, ptr null, ptr null, ptr null, ptr @hns_nic_change_mtu, ptr null, ptr @hns_nic_net_timeout, ptr @hns_nic_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hns_nic_fix_features, ptr @hns_nic_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@hns_nic_dev_probe.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.17, ptr @.str.18, ptr @.str.29, i8 2, i8 77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hns_enet_drv\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"set mask to 64bit\0A\00", [45 x i8] zeroinitializer }, align 32
@hns_nic_dev_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.17, ptr @.str.18, i32 2358, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"set mask to 64bit fail!\0A\00", [39 x i8] zeroinitializer }, align 32
@hns_nic_dev_probe._entry_ptr.32 = internal global ptr @hns_nic_dev_probe._entry.30, section ".printk_index", align 4
@hns_nic_dev_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(&priv->service_timer)\00", [41 x i8] zeroinitializer }, align 32
@hns_nic_dev_probe.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&priv->service_task)\00", [57 x i8] zeroinitializer }, align 32
@hns_nic_dev_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.17, ptr @.str.18, i32 2374, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"register notifier fail!\0A\00", [39 x i8] zeroinitializer }, align 32
@hns_nic_dev_probe._entry_ptr.38 = internal global ptr @hns_nic_dev_probe._entry.36, section ".printk_index", align 4
@hns_nic_dev_probe.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.17, ptr @.str.18, ptr @.str.39, i8 2, i8 82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"has not handle, register notifier!\0A\00", [60 x i8] zeroinitializer }, align 32
@hns_init_mac_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.18, i32 1218, ptr @.str.42, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"No valid mac, use random mac %pM\00", [63 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hns_init_mac_addr\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hns_init_mac_addr._entry_ptr = internal global ptr @hns_init_mac_addr._entry, section ".printk_index", align 4
@.str.43 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"netif_set_real_num_tx_queues fail, ret=%d!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"netif_set_real_num_rx_queues fail, ret=%d!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hns net up fail, ret=%d!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sync uc address fail\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hnae handle is null\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"clear multicast address fail\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"set multicast fail\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"set_mac_address fail, ret=%d!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"clear the fetched desc fail\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"set mtu fail, return value %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hns net open fail\0A\00", [45 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"watchdog_timo changed to %d.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"initiating reset due to tx timeout(%llu,0x%lx)\0A\00", [48 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.56 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"enet v1 do not support tso!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"try to reset %s port!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"debug\00", [26 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"service\00", [24 x i8] zeroinitializer }, align 32
@hns_nic_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.18, i32 1987, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\0160x%08x: 0x%08x 0x%08x 0x%08x 0x%08x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hns_nic_dump\00", [19 x i8] zeroinitializer }, align 32
@hns_nic_dump._entry_ptr = internal global ptr @hns_nic_dump._entry, section ".printk_index", align 4
@hns_nic_dump._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.18, i32 1994, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016tx_queue%d_next_to_clean:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@hns_nic_dump._entry_ptr.65 = internal global ptr @hns_nic_dump._entry.63, section ".printk_index", align 4
@hns_nic_dump._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.18, i32 1996, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016tx_queue%d_next_to_use:%d\0A\00", [35 x i8] zeroinitializer }, align 32
@hns_nic_dump._entry_ptr.68 = internal global ptr @hns_nic_dump._entry.66, section ".printk_index", align 4
@hns_nic_dump._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.62, ptr @.str.18, i32 1998, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016rx_queue%d_next_to_clean:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@hns_nic_dump._entry_ptr.71 = internal global ptr @hns_nic_dump._entry.69, section ".printk_index", align 4
@hns_nic_dump._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.62, ptr @.str.18, i32 2000, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016rx_queue%d_next_to_use:%d\0A\00", [35 x i8] zeroinitializer }, align 32
@hns_nic_dump._entry_ptr.74 = internal global ptr @hns_nic_dump._entry.72, section ".printk_index", align 4
@hns_nic_try_get_ae.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.75, ptr @.str.18, ptr @.str.39, i8 2, i8 36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hns_nic_try_get_ae\00", [45 x i8] zeroinitializer }, align 32
@hns_nic_try_get_ae._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.75, ptr @.str.18, i32 2200, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"probe phy device fail!\0A\00", [40 x i8] zeroinitializer }, align 32
@hns_nic_try_get_ae._entry_ptr = internal global ptr @hns_nic_try_get_ae._entry, section ".printk_index", align 4
@hns_nic_try_get_ae._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.75, ptr @.str.18, i32 2214, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"probe register netdev fail!\0A\00", [35 x i8] zeroinitializer }, align 32
@hns_nic_try_get_ae._entry_ptr.79 = internal global ptr @hns_nic_try_get_ae._entry.77, section ".printk_index", align 4
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"too much queue (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wrong head (%d, %d-%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"hnae reserve buffer map failed.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"invalid bnum(%d,%d,%d,%d),%016llx,%016llx\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"no valid bd,%016llx,%016llx\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(p))\00", [32 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967280, i64 4294967284]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.90 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 326, i32 20 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 340, i32 20 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 353, i32 21 }
@___asan_gen_.101 = private unnamed_addr constant [19 x i8] c"hns_nic_dev_driver\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2431, i32 31 }
@___asan_gen_.108 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 326, i32 6 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1121, i32 22 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1124, i32 22 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1334, i32 20 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1291, i32 5 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1292, i32 29 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1292, i32 36 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1300, i32 29 }
@___asan_gen_.132 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 108, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2433, i32 11 }
@___asan_gen_.137 = private unnamed_addr constant [18 x i8] c"hns_enet_of_match\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2423, i32 34 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2267, i32 10 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2272, i32 44 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2275, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2295, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2304, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2309, i32 38 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2312, i32 39 }
@___asan_gen_.179 = private unnamed_addr constant [19 x i8] c"hns_nic_netdev_ops\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1941, i32 36 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2356, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2358, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2363, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2364, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2374, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2377, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1217, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1455, i32 20 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1463, i32 7 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1470, i32 7 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1878, i32 20 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1848, i32 20 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1854, i32 21 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1859, i32 22 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1193, i32 20 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1744, i32 21 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1751, i32 20 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1762, i32 21 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1492, i32 21 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2081, i32 8 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1778, i32 24 }
@___asan_gen_.270 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 598, i32 8 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2020, i32 28 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2021, i32 34 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2021, i32 44 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1985, i32 5 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1993, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1995, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1997, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1999, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2193, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2200, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2214, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2096, i32 28 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 965, i32 20 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 679, i32 22 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 618, i32 20 }
@___asan_gen_.342 = private constant [49 x i8] c"../drivers/net/ethernet/hisilicon/hns/hns_enet.c\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 630, i32 20 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1368, i32 10 }
@___asan_gen_.347 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.348 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1160, i32 2 }
@llvm.compiler.used = appending global [107 x ptr] [ptr @__UNIQUE_ID_alias492, ptr @__UNIQUE_ID_author489, ptr @__UNIQUE_ID_description488, ptr @__UNIQUE_ID_file490, ptr @__UNIQUE_ID_license491, ptr @__exitcall_hns_nic_dev_driver_exit, ptr @__initcall__kmod_hns_enet_drv__487_2441_hns_nic_dev_driver_init6, ptr @hns_init_mac_addr._entry, ptr @hns_init_mac_addr._entry_ptr, ptr @hns_nic_dev_driver_exit, ptr @hns_nic_dev_probe._entry, ptr @hns_nic_dev_probe._entry.21, ptr @hns_nic_dev_probe._entry.23, ptr @hns_nic_dev_probe._entry.30, ptr @hns_nic_dev_probe._entry.36, ptr @hns_nic_dev_probe._entry_ptr, ptr @hns_nic_dev_probe._entry_ptr.22, ptr @hns_nic_dev_probe._entry_ptr.25, ptr @hns_nic_dev_probe._entry_ptr.32, ptr @hns_nic_dev_probe._entry_ptr.38, ptr @hns_nic_dump._entry, ptr @hns_nic_dump._entry.63, ptr @hns_nic_dump._entry.66, ptr @hns_nic_dump._entry.69, ptr @hns_nic_dump._entry.72, ptr @hns_nic_dump._entry_ptr, ptr @hns_nic_dump._entry_ptr.65, ptr @hns_nic_dump._entry_ptr.68, ptr @hns_nic_dump._entry_ptr.71, ptr @hns_nic_dump._entry_ptr.74, ptr @hns_nic_try_get_ae._entry, ptr @hns_nic_try_get_ae._entry.77, ptr @hns_nic_try_get_ae._entry_ptr, ptr @hns_nic_try_get_ae._entry_ptr.79, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @hns_nic_dev_driver, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @hns_enet_of_match, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @hns_nic_netdev_ops, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @hns_nic_dev_probe.__key, ptr @.str.33, ptr @hns_nic_dev_probe.__key.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.87], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_nic_dev_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_enet_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_nic_dev_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_nic_dev_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_nic_dev_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_nic_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_nic_dev_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_nic_dev_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_nic_dev_probe.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_nic_dev_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_init_mac_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_nic_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_nic_dump._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_nic_dump._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_nic_dump._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_nic_dump._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_nic_try_get_ae._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_nic_try_get_ae._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hns_nic_net_xmit_hw(ptr noundef %ndev, ptr noundef %skb, ptr nocapture noundef readonly %ring_data) local_unnamed_addr #0 align 64 {
entry:
  %skb.addr = alloca ptr, align 4
  %buf_num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %skb.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %skb, ptr %skb.addr, align 4
  %1 = ptrtoint ptr %ring_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ring_data, align 8
  %q = getelementptr inbounds %struct.hnae_ring, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %q, align 4
  %dev2 = getelementptr inbounds %struct.hnae_queue, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev2, align 8
  %dev3 = getelementptr inbounds %struct.hnae_ae_dev, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf_num) #14
  %9 = ptrtoint ptr %buf_num to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %buf_num, align 4, !annotation !193
  %ops = getelementptr i8, ptr %ndev, i32 2336
  %maybe_stop_tx = getelementptr i8, ptr %ndev, i32 2340
  %10 = ptrtoint ptr %maybe_stop_tx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %maybe_stop_tx, align 4
  %call4 = call i32 %11(ptr noundef nonnull %skb.addr, ptr noundef nonnull %buf_num, ptr noundef %2) #14
  %12 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call4, label %sw.epilog [
    i32 -16, label %sw.bb
    i32 -12, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %tx_busy = getelementptr inbounds %struct.hnae_ring, ptr %2, i32 0, i32 6, i32 3, i32 0, i32 4
  %13 = ptrtoint ptr %tx_busy to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %tx_busy, align 8
  %inc = add i64 %14, 1
  store i64 %inc, ptr %tx_busy, align 8
  %15 = ptrtoint ptr %skb.addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %skb.addr, align 4
  %queue_mapping68 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %queue_mapping68 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %queue_mapping68, align 8
  %conv.i = zext i16 %18 to i32
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %19 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %20, i32 %conv.i, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !194
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %sw_err_cnt = getelementptr inbounds %struct.hnae_ring, ptr %2, i32 0, i32 6, i32 1
  %21 = ptrtoint ptr %sw_err_cnt to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %sw_err_cnt, align 8
  %inc7 = add i64 %22, 1
  store i64 %inc7, ptr %sw_err_cnt, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str) #17
  br label %out_err_tx_ok

sw.epilog:                                        ; preds = %entry
  %23 = ptrtoint ptr %skb.addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %skb.addr, align 4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 17
  %25 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %nr_frags, align 2
  %conv = zext i8 %28 to i32
  %next_to_use9 = getelementptr inbounds %struct.hnae_ring, ptr %2, i32 0, i32 13
  %29 = ptrtoint ptr %next_to_use9 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %next_to_use9, align 8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 6
  %31 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 7
  %33 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %32, %34
  %data = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 19
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data, align 4
  %call.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %36) #14
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %sw.epilog
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !195

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = call ptr @dev_driver_string(ptr noundef %8) #14
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 3
  %37 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %8, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %40, %if.end.i.i ], [ %38, %if.then.i.dev_name.exit.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #14
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  call void @debug_dma_mapping_error(ptr noundef %8, i32 noundef -1) #14
  br label %if.then

dma_map_single_attrs.exit:                        ; preds = %sw.epilog
  call void @debug_dma_map_single(ptr noundef %8, ptr noundef %36, i32 noundef %sub.i) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %41 = load ptr, ptr @mem_map, align 4
  %42 = ptrtoint ptr %36 to i32
  %sub.i138 = add i32 %42, 1073741824
  %shr.i = lshr i32 %sub.i138, 12
  %add.ptr.i139 = getelementptr %struct.page, ptr %41, i32 %shr.i
  %and.i = and i32 %42, 4095
  %call41.i = call i32 @dma_map_page_attrs(ptr noundef %8, ptr noundef %add.ptr.i139, i32 noundef %and.i, i32 noundef %sub.i, i32 noundef 1, i32 noundef 0) #14
  call void @debug_dma_mapping_error(ptr noundef %8, i32 noundef %call41.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.if.then_crit_edge, label %if.end

dma_map_single_attrs.exit.if.then_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %dma_map_single_attrs.exit.if.then_crit_edge, %dma_map_single_attrs.exit.thread
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.1) #17
  %sw_err_cnt14 = getelementptr inbounds %struct.hnae_ring, ptr %2, i32 0, i32 6, i32 1
  %43 = ptrtoint ptr %sw_err_cnt14 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %sw_err_cnt14, align 8
  %inc15 = add i64 %44, 1
  store i64 %inc15, ptr %sw_err_cnt14, align 8
  br label %out_err_tx_ok

if.end:                                           ; preds = %dma_map_single_attrs.exit
  %45 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops, align 8
  %47 = ptrtoint ptr %skb.addr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %skb.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp = icmp eq i8 %28, 0
  %cond = zext i1 %cmp to i32
  %49 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %buf_num, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 20
  %51 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mtu, align 4
  call void %46(ptr noundef %2, ptr noundef %48, i32 noundef %sub.i, i32 noundef %call41.i, i32 noundef %cond, i32 noundef %50, i32 noundef 0, i32 noundef %52) #14
  br i1 %cmp, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %if.end29.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0156 = phi i32 [ %inc38, %if.end29.for.body_crit_edge ], [ 1, %if.end.for.body_crit_edge ]
  %53 = ptrtoint ptr %skb.addr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %skb.addr, align 4
  %end.i140 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 17
  %55 = ptrtoint ptr %end.i140 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %end.i140, align 4
  %sub = add nsw i32 %i.0156, -1
  %arrayidx = getelementptr %struct.skb_shared_info, ptr %56, i32 0, i32 12, i32 %sub
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %56, i32 0, i32 12, i32 %sub, i32 1
  %57 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bv_len.i, align 4
  %59 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx, align 4
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %56, i32 0, i32 12, i32 %sub, i32 2
  %61 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bv_offset.i.i, align 4
  %call2.i = call i32 @dma_map_page_attrs(ptr noundef %8, ptr noundef %60, i32 noundef %62, i32 noundef %58, i32 noundef 1, i32 noundef 0) #14
  call void @debug_dma_mapping_error(ptr noundef %8, i32 noundef %call2.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp.i141.not = icmp eq i32 %call2.i, -1
  br i1 %cmp.i141.not, label %if.then25, label %if.end29

if.then25:                                        ; preds = %for.body
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.2, i32 noundef %i.0156) #17
  %sw_err_cnt27 = getelementptr inbounds %struct.hnae_ring, ptr %2, i32 0, i32 6, i32 1
  %63 = ptrtoint ptr %sw_err_cnt27 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %sw_err_cnt27, align 8
  %inc28 = add i64 %64, 1
  store i64 %inc28, ptr %sw_err_cnt27, align 8
  %65 = ptrtoint ptr %next_to_use9 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %next_to_use9, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %30)
  %cmp49.not157 = icmp eq i32 %66, %30
  br i1 %cmp49.not157, label %if.then25.out_err_tx_ok_crit_edge, label %while.body.lr.ph

if.then25.out_err_tx_ok_crit_edge:                ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_err_tx_ok

while.body.lr.ph:                                 ; preds = %if.then25
  %desc_num.i = getelementptr inbounds %struct.hnae_ring, ptr %2, i32 0, i32 9
  %desc_cb = getelementptr inbounds %struct.hnae_ring, ptr %2, i32 0, i32 2
  br label %while.body

if.end29:                                         ; preds = %for.body
  %67 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ops, align 8
  %69 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0156, i32 %conv)
  %cmp34 = icmp eq i32 %i.0156, %conv
  %cond36 = zext i1 %cmp34 to i32
  %71 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %buf_num, align 4
  %73 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %mtu, align 4
  call void %68(ptr noundef %2, ptr noundef %70, i32 noundef %58, i32 noundef %call2.i, i32 noundef %cond36, i32 noundef %72, i32 noundef 1, i32 noundef %74) #14
  %inc38 = add nuw nsw i32 %i.0156, 1
  %exitcond = icmp eq i32 %i.0156, %conv
  br i1 %exitcond, label %if.end29.for.end_crit_edge, label %if.end29.for.body_crit_edge

if.end29.for.body_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %if.end29.for.end_crit_edge, %if.end.for.end_crit_edge
  %75 = ptrtoint ptr %skb.addr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %skb.addr, align 4
  %queue_mapping = getelementptr inbounds %struct.sk_buff, ptr %76, i32 0, i32 10
  %77 = ptrtoint ptr %queue_mapping to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %queue_mapping, align 8
  %conv39 = zext i16 %78 to i32
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %79 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %_tx.i, align 128
  %len = getelementptr inbounds %struct.sk_buff, ptr %76, i32 0, i32 6
  %81 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %len, align 4
  %dql.i = getelementptr %struct.netdev_queue, ptr %80, i32 %conv39, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %82)
  %cmp.i.i = icmp ugt i32 %82, 268435455
  br i1 %cmp.i.i, label %do.body2.i.i, label %dql_queued.exit.i, !prof !196

do.body2.i.i:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #14, !srcloc !197
  unreachable

dql_queued.exit.i:                                ; preds = %for.end
  %last_obj_cnt.i.i = getelementptr %struct.netdev_queue, ptr %80, i32 %conv39, i32 15, i32 2
  %83 = ptrtoint ptr %last_obj_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %last_obj_cnt.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !198
  %84 = ptrtoint ptr %dql.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dql.i, align 128
  %add.i.i = add i32 %85, %82
  store i32 %add.i.i, ptr %dql.i, align 128
  %adj_limit.i.i = getelementptr %struct.netdev_queue, ptr %80, i32 %conv39, i32 15, i32 1
  %86 = ptrtoint ptr %adj_limit.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %adj_limit.i.i, align 4
  %88 = load volatile i32, ptr %dql.i, align 128
  %sub.i.i = sub i32 %87, %88
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i)
  %cmp.i143 = icmp sgt i32 %sub.i.i, -1
  br i1 %cmp.i143, label %dql_queued.exit.i.netdev_tx_sent_queue.exit_crit_edge, label %if.end.i, !prof !195

dql_queued.exit.i.netdev_tx_sent_queue.exit_crit_edge: ; preds = %dql_queued.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %netdev_tx_sent_queue.exit

if.end.i:                                         ; preds = %dql_queued.exit.i
  %state.i = getelementptr %struct.netdev_queue, ptr %80, i32 %conv39, i32 13
  call void @_set_bit(i32 noundef 1, ptr noundef %state.i) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !199
  %89 = ptrtoint ptr %adj_limit.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %adj_limit.i.i, align 4
  %91 = ptrtoint ptr %dql.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %dql.i, align 128
  %sub.i22.i = sub i32 %90, %92
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i22.i)
  %cmp7.i = icmp sgt i32 %sub.i22.i, -1
  br i1 %cmp7.i, label %if.then14.i, label %if.end.i.netdev_tx_sent_queue.exit_crit_edge, !prof !196

if.end.i.netdev_tx_sent_queue.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %netdev_tx_sent_queue.exit

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @_clear_bit(i32 noundef 1, ptr noundef %state.i) #14
  br label %netdev_tx_sent_queue.exit

netdev_tx_sent_queue.exit:                        ; preds = %if.then14.i, %if.end.i.netdev_tx_sent_queue.exit_crit_edge, %dql_queued.exit.i.netdev_tx_sent_queue.exit_crit_edge
  %93 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %_tx.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %95 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %94, i32 0, i32 12
  %96 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %95)
  %cmp.not.i.i = icmp eq i32 %97, %95
  br i1 %cmp.not.i.i, label %netdev_tx_sent_queue.exit.netif_trans_update.exit_crit_edge, label %do.body5.i.i

netdev_tx_sent_queue.exit.netif_trans_update.exit_crit_edge: ; preds = %netdev_tx_sent_queue.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %netdev_tx_sent_queue.exit
  call void @__sanitizer_cov_trace_pc() #16
  %98 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile i32 %95, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %netdev_tx_sent_queue.exit.netif_trans_update.exit_crit_edge
  %99 = ptrtoint ptr %skb.addr to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %skb.addr, align 4
  %len41 = getelementptr inbounds %struct.sk_buff, ptr %100, i32 0, i32 6
  %101 = ptrtoint ptr %len41 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %len41, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 3
  %103 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %tx_bytes, align 4
  %add43 = add i32 %104, %102
  store i32 %add43, ptr %tx_bytes, align 4
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 1
  %105 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %tx_packets, align 4
  %inc45 = add i32 %106, 1
  store i32 %inc45, ptr %tx_packets, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !200
  call void @arm_heavy_mb() #14
  %107 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %buf_num, align 4
  %109 = call i32 @llvm.bswap.i32(i32 %108)
  %ae_handle = getelementptr i8, ptr %ndev, i32 2332
  %110 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ae_handle, align 4
  %112 = ptrtoint ptr %skb.addr to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %skb.addr, align 4
  %queue_mapping46 = getelementptr inbounds %struct.sk_buff, ptr %113, i32 0, i32 10
  %114 = ptrtoint ptr %queue_mapping46 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %queue_mapping46, align 8
  %idxprom = zext i16 %115 to i32
  %arrayidx47 = getelementptr %struct.hnae_handle, ptr %111, i32 0, i32 17, i32 %idxprom
  %116 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx47, align 4
  %tx_ring = getelementptr inbounds %struct.hnae_queue, ptr %117, i32 0, i32 6
  %118 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %tx_ring, align 128
  %add.ptr = getelementptr i8, ptr %119, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %109) #14, !srcloc !201
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %120 = phi i32 [ %66, %while.body.lr.ph ], [ %131, %while.body.while.body_crit_edge ]
  %sub.i145 = add i32 %120, -1
  %121 = ptrtoint ptr %desc_num.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %desc_num.i, align 8
  %conv.i146 = zext i16 %122 to i32
  %add.i = add i32 %sub.i145, %conv.i146
  %rem.i = srem i32 %add.i, %conv.i146
  %123 = ptrtoint ptr %next_to_use9 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %rem.i, ptr %next_to_use9, align 8
  %124 = ptrtoint ptr %desc_cb to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %desc_cb, align 8
  %arrayidx62 = getelementptr %struct.hnae_desc_cb, ptr %125, i32 %rem.i
  %126 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx62, align 4
  %length66 = getelementptr %struct.hnae_desc_cb, ptr %125, i32 %rem.i, i32 4
  %128 = ptrtoint ptr %length66 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %length66, align 4
  call void @dma_unmap_page_attrs(ptr noundef %8, i32 noundef %127, i32 noundef %129, i32 noundef 1, i32 noundef 0) #14
  %130 = ptrtoint ptr %next_to_use9 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %next_to_use9, align 8
  %cmp49.not = icmp eq i32 %131, %30
  br i1 %cmp49.not, label %while.body.out_err_tx_ok_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.body.out_err_tx_ok_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_err_tx_ok

out_err_tx_ok:                                    ; preds = %while.body.out_err_tx_ok_crit_edge, %if.then25.out_err_tx_ok_crit_edge, %if.then, %sw.bb5
  %132 = ptrtoint ptr %skb.addr to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %skb.addr, align 4
  call void @__dev_kfree_skb_any(ptr noundef %133, i32 noundef 1) #14
  br label %cleanup

cleanup:                                          ; preds = %out_err_tx_ok, %netif_trans_update.exit, %sw.bb
  %retval.0 = phi i32 [ 0, %out_err_tx_ok ], [ 0, %netif_trans_update.exit ], [ 16, %sw.bb ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf_num) #14
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hns_nic_init_phy(ptr noundef %ndev, ptr nocapture noundef readonly %h) local_unnamed_addr #0 align 64 {
entry:
  %supported = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %supported) #14
  %0 = call ptr @memset(ptr %supported, i32 0, i32 12)
  %phy_dev1 = getelementptr inbounds %struct.hnae_handle, ptr %h, i32 0, i32 2
  %1 = ptrtoint ptr %phy_dev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %phy_dev1, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %if_support = getelementptr inbounds %struct.hnae_handle, ptr %h, i32 0, i32 4
  %3 = ptrtoint ptr %if_support to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %if_support, align 4
  call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef nonnull %supported, i32 noundef %4) #14
  %supported3 = getelementptr inbounds %struct.phy_device, ptr %2, i32 0, i32 16
  %call.i.i = call i32 @__bitmap_and(ptr noundef %supported3, ptr noundef %supported3, ptr noundef nonnull %supported, i32 noundef 92) #14
  %advertising = getelementptr inbounds %struct.phy_device, ptr %2, i32 0, i32 17
  %5 = call ptr @memcpy(ptr %advertising, ptr %supported3, i32 12)
  %phy_if = getelementptr inbounds %struct.hnae_handle, ptr %h, i32 0, i32 3
  %6 = ptrtoint ptr %phy_if to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phy_if, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %7)
  %cmp = icmp eq i32 %7, 15
  br i1 %cmp, label %if.end12, label %if.end.if.then15_crit_edge

if.end.if.then15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then15

if.end12:                                         ; preds = %if.end
  %autoneg = getelementptr inbounds %struct.phy_device, ptr %2, i32 0, i32 4
  %8 = ptrtoint ptr %autoneg to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load = load i16, ptr %autoneg, align 8
  %bf.clear = and i16 %bf.load, -9
  store i16 %bf.clear, ptr %autoneg, align 8
  %9 = ptrtoint ptr %phy_if to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr = load i32, ptr %phy_if, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %.pr)
  %cmp14.not = icmp eq i32 %.pr, 15
  br i1 %cmp14.not, label %if.else, label %if.end12.if.then15_crit_edge

if.end12.if.then15_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then15

if.then15:                                        ; preds = %if.end12.if.then15_crit_edge, %if.end.if.then15_crit_edge
  %dev_flags = getelementptr inbounds %struct.phy_device, ptr %2, i32 0, i32 6
  %10 = ptrtoint ptr %dev_flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %dev_flags, align 8
  %11 = ptrtoint ptr %phy_if to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %phy_if, align 4
  %call = call i32 @phy_connect_direct(ptr noundef %ndev, ptr noundef nonnull %2, ptr noundef nonnull @hns_nic_adjust_link, i32 noundef %12) #14
  br label %if.end19

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %call18 = call i32 @phy_attach_direct(ptr noundef %ndev, ptr noundef nonnull %2, i32 noundef 0, i32 noundef 15) #14
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then15
  %ret.0 = phi i32 [ %call, %if.then15 ], [ %call18, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool20.not = icmp eq i32 %ret.0, 0
  br i1 %tobool20.not, label %if.end24, label %if.end19.cleanup_crit_edge, !prof !195

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  call void @phy_attached_info(ptr noundef nonnull %2) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ 0, %entry.cleanup_crit_edge ], [ -19, %if.end19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %supported) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_connect_direct(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_nic_adjust_link(ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ae_handle = getelementptr i8, ptr %ndev, i32 2332
  %0 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ae_handle, align 4
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.land.rhs_crit_edge, label %if.then

entry.land.rhs_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

if.then:                                          ; preds = %entry
  %link = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %link, align 8
  %5 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp = icmp eq i16 %5, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %if.then
  %dev = getelementptr inbounds %struct.hnae_handle, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %ops = getelementptr inbounds %struct.hnae_ae_dev, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %need_adjust_link = getelementptr inbounds %struct.hnae_ae_ops, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %need_adjust_link to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %need_adjust_link, align 4
  %speed = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %speed, align 8
  %duplex = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 9
  %14 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %duplex, align 4
  %call5 = tail call zeroext i1 %11(ptr noundef %1, i32 noundef %13, i32 noundef %15) #14
  br i1 %call5, label %if.then6, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @netif_carrier_off(ptr noundef %ndev) #14
  tail call void @msleep(i32 noundef 200) #14
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %ops8 = getelementptr inbounds %struct.hnae_ae_dev, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %ops8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops8, align 4
  %adjust_link = getelementptr inbounds %struct.hnae_ae_ops, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %adjust_link to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adjust_link, align 4
  %22 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phydev, align 16
  %speed10 = getelementptr inbounds %struct.phy_device, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %speed10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %speed10, align 8
  %duplex12 = getelementptr inbounds %struct.phy_device, ptr %23, i32 0, i32 9
  %26 = ptrtoint ptr %duplex12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %duplex12, align 4
  tail call void %21(ptr noundef %1, i32 noundef %25, i32 noundef %27) #14
  tail call void @netif_carrier_on(ptr noundef %ndev) #14
  br label %land.rhs

land.rhs:                                         ; preds = %if.then6, %if.end.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %dev16 = getelementptr inbounds %struct.hnae_handle, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev16, align 4
  %ops17 = getelementptr inbounds %struct.hnae_ae_dev, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %ops17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops17, align 4
  %get_status = getelementptr inbounds %struct.hnae_ae_ops, ptr %31, i32 0, i32 9
  %32 = ptrtoint ptr %get_status to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %get_status, align 4
  %call18 = tail call i32 %33(ptr noundef %1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19 = icmp ne i32 %call18, 0
  %land.ext = zext i1 %tobool19 to i32
  %link20 = getelementptr i8, ptr %ndev, i32 2352
  %34 = ptrtoint ptr %link20 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %link20, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %land.ext)
  %cmp21.not = icmp eq i32 %35, %land.ext
  br i1 %cmp21.not, label %land.rhs.cleanup_crit_edge, label %if.then22

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then22:                                        ; preds = %land.rhs
  br i1 %tobool19, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.then22
  tail call void @netif_carrier_on(ptr noundef %ndev) #14
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 104
  %36 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp4.not.i = icmp eq i32 %37, 0
  br i1 %cmp4.not.i, label %if.then24.if.end25_crit_edge, label %for.body.lr.ph.i

if.then24.if.end25_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

for.body.lr.ph.i:                                 ; preds = %if.then24
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %38 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %39, i32 %i.05.i
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i) #14
  %inc.i = add nuw i32 %i.05.i, 1
  %40 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %41
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end25_crit_edge

for.body.i.if.end25_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

if.else:                                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @netif_carrier_off(ptr noundef %ndev) #14
  br label %if.end25

if.end25:                                         ; preds = %if.else, %for.body.i.if.end25_crit_edge, %if.then24.if.end25_crit_edge
  %.str.6.sink = phi ptr [ @.str.6, %if.else ], [ @.str.5, %if.then24.if.end25_crit_edge ], [ @.str.5, %for.body.i.if.end25_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %ndev, ptr noundef nonnull %.str.6.sink) #17
  %42 = ptrtoint ptr %link20 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %land.ext, ptr %link20, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %land.rhs.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_attach_direct(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_attached_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_nic_net_reset(ptr noundef %ndev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ae_handle = getelementptr i8, ptr %ndev, i32 2332
  %0 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ae_handle, align 4
  %state = getelementptr i8, ptr %ndev, i32 2368
  %call16 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not7 = icmp eq i32 %call16, 0
  br i1 %tobool.not7, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #14
  %call1 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #14
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %call2 = tail call i32 @hnae_reinit_handle(ptr noundef %1) #14
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hnae_reinit_handle(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hns_nic_net_reinit(ptr noundef %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ae_handle = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ae_handle, align 4
  %port_type = getelementptr inbounds %struct.hnae_handle, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %port_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_type, align 4
  %netdev1 = getelementptr i8, ptr %netdev, i32 2324
  %4 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev1, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %7, i32 0, i32 12
  %9 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp.not.i.i = icmp eq i32 %10, %8
  br i1 %cmp.not.i.i, label %entry.netif_trans_update.exit_crit_edge, label %do.body5.i.i

entry.netif_trans_update.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 %8, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %entry.netif_trans_update.exit_crit_edge
  %state = getelementptr i8, ptr %netdev, i32 2368
  %call211 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %state) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call211)
  %tobool.not12 = icmp eq i32 %call211, 0
  br i1 %tobool.not12, label %netif_trans_update.exit.while.end_crit_edge, label %netif_trans_update.exit.while.body_crit_edge

netif_trans_update.exit.while.body_crit_edge:     ; preds = %netif_trans_update.exit
  br label %while.body

netif_trans_update.exit.while.end_crit_edge:      ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %netif_trans_update.exit.while.body_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #14
  %call2 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %state) #14
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %netif_trans_update.exit.while.end_crit_edge
  tail call fastcc void @hns_nic_net_down(ptr noundef %netdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %while.end.if.end_crit_edge

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %while.end
  %12 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ae_handle, align 4
  %call16.i = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool.not7.i = icmp eq i32 %call16.i, 0
  br i1 %tobool.not7.i, label %if.then.hns_nic_net_reset.exit_crit_edge, label %if.then.while.body.i_crit_edge

if.then.while.body.i_crit_edge:                   ; preds = %if.then
  br label %while.body.i

if.then.hns_nic_net_reset.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %hns_nic_net_reset.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then.while.body.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #14
  %call1.i = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #14
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %while.body.i.hns_nic_net_reset.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.body.i.hns_nic_net_reset.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hns_nic_net_reset.exit

hns_nic_net_reset.exit:                           ; preds = %while.body.i.hns_nic_net_reset.exit_crit_edge, %if.then.hns_nic_net_reset.exit_crit_edge
  %call2.i = tail call i32 @hnae_reinit_handle(ptr noundef %13) #14
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state) #14
  br label %if.end

if.end:                                           ; preds = %hns_nic_net_reset.exit, %while.end.if.end_crit_edge
  %call3 = tail call fastcc i32 @hns_nic_net_up(ptr noundef %netdev)
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hns_nic_net_down(ptr noundef %ndev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr i8, ptr %ndev, i32 2368
  %call1 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %state) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %service_timer = getelementptr i8, ptr %ndev, i32 2372
  %call2 = tail call i32 @del_timer_sync(ptr noundef %service_timer) #14
  tail call void @netif_tx_stop_all_queues(ptr noundef %ndev) #14
  tail call void @netif_carrier_off(ptr noundef %ndev) #14
  tail call fastcc void @local_bh_disable() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !183) #14
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu1.i, align 4
  %tx_global_lock.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %tx_global_lock.i) #14
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 104
  %4 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp13.not.i = icmp eq i32 %5, 0
  br i1 %cmp13.not.i, label %if.end.netif_tx_disable.exit_crit_edge, label %for.body.lr.ph.i

if.end.netif_tx_disable.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %netif_tx_disable.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  %_xmit_lock.i.i = getelementptr %struct.netdev_queue, ptr %7, i32 %i.014.i, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #14
  %xmit_lock_owner.i.i = getelementptr %struct.netdev_queue, ptr %7, i32 %i.014.i, i32 11
  %8 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 %3, ptr %xmit_lock_owner.i.i, align 4
  %state.i.i = getelementptr %struct.netdev_queue, ptr %7, i32 %i.014.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  %9 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #14
  %inc.i = add nuw i32 %i.014.i, 1
  %10 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %11
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_disable.exit_crit_edge

for.body.i.netif_tx_disable.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %netif_tx_disable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

netif_tx_disable.exit:                            ; preds = %for.body.i.netif_tx_disable.exit_crit_edge, %if.end.netif_tx_disable.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_global_lock.i) #14
  tail call fastcc void @local_bh_enable() #14
  %link = getelementptr i8, ptr %ndev, i32 2352
  %12 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %link, align 8
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %13 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phydev, align 16
  %tobool3.not = icmp eq ptr %14, null
  br i1 %tobool3.not, label %netif_tx_disable.exit.if.end6_crit_edge, label %if.then4

netif_tx_disable.exit.if.end6_crit_edge:          ; preds = %netif_tx_disable.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then4:                                         ; preds = %netif_tx_disable.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @phy_stop(ptr noundef nonnull %14) #14
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %netif_tx_disable.exit.if.end6_crit_edge
  %ae_handle = getelementptr i8, ptr %ndev, i32 2332
  %15 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ae_handle, align 4
  %dev = getelementptr inbounds %struct.hnae_handle, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %ops7 = getelementptr inbounds %struct.hnae_ae_dev, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %ops7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops7, align 4
  %stop = getelementptr inbounds %struct.hnae_ae_ops, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stop, align 4
  %tobool8.not = icmp eq ptr %22, null
  br i1 %tobool8.not, label %if.end6.if.end12_crit_edge, label %if.then9

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %22(ptr noundef %16) #14
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end6.if.end12_crit_edge
  tail call void @netif_tx_stop_all_queues(ptr noundef %ndev) #14
  %23 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ae_handle, align 4
  %q_num = getelementptr inbounds %struct.hnae_handle, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %q_num to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %q_num, align 4
  %i.051 = add i32 %26, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.051)
  %cmp52 = icmp sgt i32 %i.051, -1
  br i1 %cmp52, label %for.body.lr.ph, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end12
  %ring_data.i = getelementptr i8, ptr %ndev, i32 2348
  br label %for.body

for.body:                                         ; preds = %hns_nic_tx_clr_all_bufs.exit.for.body_crit_edge, %for.body.lr.ph
  %i.053 = phi i32 [ %i.051, %for.body.lr.ph ], [ %i.0, %hns_nic_tx_clr_all_bufs.exit.for.body_crit_edge ]
  %27 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ae_handle, align 4
  %dev.i = getelementptr inbounds %struct.hnae_handle, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  %ops.i = getelementptr inbounds %struct.hnae_ae_dev, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i, align 4
  %toggle_ring_irq.i = getelementptr inbounds %struct.hnae_ae_ops, ptr %32, i32 0, i32 11
  %33 = ptrtoint ptr %toggle_ring_irq.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %toggle_ring_irq.i, align 4
  %35 = ptrtoint ptr %ring_data.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ring_data.i, align 4
  %arrayidx.i = getelementptr %struct.hns_nic_ring_data, ptr %36, i32 %i.053
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i, align 8
  tail call void %34(ptr noundef %38, i32 noundef 1) #14
  %39 = ptrtoint ptr %ring_data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ring_data.i, align 4
  %arrayidx2.i = getelementptr %struct.hns_nic_ring_data, ptr %40, i32 %i.053
  %41 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx2.i, align 8
  %irq.i = getelementptr inbounds %struct.hnae_ring, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %irq.i, align 8
  tail call void @disable_irq(i32 noundef %44) #14
  %45 = ptrtoint ptr %ring_data.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ring_data.i, align 4
  %napi.i = getelementptr %struct.hns_nic_ring_data, ptr %46, i32 %i.053, i32 1
  tail call void @napi_disable(ptr noundef %napi.i) #14
  %47 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ae_handle, align 4
  %q_num15 = getelementptr inbounds %struct.hnae_handle, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %q_num15 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %q_num15, align 4
  %add = add i32 %50, %i.053
  %dev.i40 = getelementptr inbounds %struct.hnae_handle, ptr %48, i32 0, i32 1
  %51 = ptrtoint ptr %dev.i40 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i40, align 4
  %ops.i41 = getelementptr inbounds %struct.hnae_ae_dev, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %ops.i41 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops.i41, align 4
  %toggle_ring_irq.i42 = getelementptr inbounds %struct.hnae_ae_ops, ptr %54, i32 0, i32 11
  %55 = ptrtoint ptr %toggle_ring_irq.i42 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %toggle_ring_irq.i42, align 4
  %57 = ptrtoint ptr %ring_data.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ring_data.i, align 4
  %arrayidx.i44 = getelementptr %struct.hns_nic_ring_data, ptr %58, i32 %add
  %59 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i44, align 8
  tail call void %56(ptr noundef %60, i32 noundef 1) #14
  %61 = ptrtoint ptr %ring_data.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ring_data.i, align 4
  %arrayidx2.i45 = getelementptr %struct.hns_nic_ring_data, ptr %62, i32 %add
  %63 = ptrtoint ptr %arrayidx2.i45 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx2.i45, align 8
  %irq.i46 = getelementptr inbounds %struct.hnae_ring, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %irq.i46 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %irq.i46, align 8
  tail call void @disable_irq(i32 noundef %66) #14
  %67 = ptrtoint ptr %ring_data.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ring_data.i, align 4
  %napi.i47 = getelementptr %struct.hns_nic_ring_data, ptr %68, i32 %add, i32 1
  tail call void @napi_disable(ptr noundef %napi.i47) #14
  %69 = ptrtoint ptr %ring_data.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ring_data.i, align 4
  %add.ptr = getelementptr %struct.hns_nic_ring_data, ptr %70, i32 %i.053
  %71 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %add.ptr, align 8
  %dev.i48 = getelementptr %struct.hns_nic_ring_data, ptr %70, i32 %i.053, i32 1, i32 7
  %73 = ptrtoint ptr %dev.i48 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev.i48, align 8
  %next_to_use.i = getelementptr inbounds %struct.hnae_ring, ptr %72, i32 0, i32 13
  %75 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %next_to_use.i, align 8
  %next_to_clean.i = getelementptr inbounds %struct.hnae_ring, ptr %72, i32 0, i32 14
  %77 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %next_to_clean.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %78)
  %cmp.not6.i = icmp eq i32 %76, %78
  br i1 %cmp.not6.i, label %for.body.hns_nic_tx_clr_all_bufs.exit_crit_edge, label %while.body.lr.ph.i

for.body.hns_nic_tx_clr_all_bufs.exit_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %hns_nic_tx_clr_all_bufs.exit

while.body.lr.ph.i:                               ; preds = %for.body
  %desc_cb1.i.i = getelementptr inbounds %struct.hnae_ring, ptr %72, i32 0, i32 2
  %q.i.i.i = getelementptr inbounds %struct.hnae_ring, ptr %72, i32 0, i32 3
  %desc.i.i.i.i = getelementptr inbounds %struct.hnae_ring, ptr %72, i32 0, i32 1
  %desc_num.i.i = getelementptr inbounds %struct.hnae_ring, ptr %72, i32 0, i32 9
  br label %while.body.i

while.body.i:                                     ; preds = %hns_nic_reclaim_one_desc.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %79 = phi i32 [ %78, %while.body.lr.ph.i ], [ %rem.i.i, %hns_nic_reclaim_one_desc.exit.i.while.body.i_crit_edge ]
  %80 = ptrtoint ptr %desc_cb1.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %desc_cb1.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.hnae_desc_cb, ptr %81, i32 %79
  %82 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.not.i.i.i = icmp eq i32 %83, 0
  br i1 %tobool.not.i.i.i, label %while.body.i.hns_nic_reclaim_one_desc.exit.i_crit_edge, label %if.end.i.i.i

while.body.i.hns_nic_reclaim_one_desc.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hns_nic_reclaim_one_desc.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %84 = ptrtoint ptr %q.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %q.i.i.i, align 4
  %handle.i.i.i = getelementptr inbounds %struct.hnae_queue, ptr %85, i32 0, i32 7
  %86 = ptrtoint ptr %handle.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %handle.i.i.i, align 64
  %bops1.i.i.i = getelementptr inbounds %struct.hnae_handle, ptr %87, i32 0, i32 16
  %88 = ptrtoint ptr %bops1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bops1.i.i.i, align 4
  %unmap_buffer.i.i.i.i = getelementptr inbounds %struct.hnae_buf_ops, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %unmap_buffer.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %unmap_buffer.i.i.i.i, align 4
  tail call void %91(ptr noundef %72, ptr noundef %arrayidx.i.i.i) #14
  %92 = ptrtoint ptr %desc.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %desc.i.i.i.i, align 4
  %arrayidx1.i.i.i.i = getelementptr %struct.hnae_desc, ptr %93, i32 %79
  %94 = ptrtoint ptr %arrayidx1.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %94, i32 8)
  store i64 0, ptr %arrayidx1.i.i.i.i, align 1
  %free_buffer.i.i.i = getelementptr inbounds %struct.hnae_buf_ops, ptr %89, i32 0, i32 1
  %95 = ptrtoint ptr %free_buffer.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %free_buffer.i.i.i, align 4
  tail call void %96(ptr noundef %72, ptr noundef %arrayidx.i.i.i) #14
  br label %hns_nic_reclaim_one_desc.exit.i

hns_nic_reclaim_one_desc.exit.i:                  ; preds = %if.end.i.i.i, %while.body.i.hns_nic_reclaim_one_desc.exit.i_crit_edge
  %97 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %next_to_clean.i, align 4
  %add6.i.i = add i32 %98, 1
  %99 = ptrtoint ptr %desc_num.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %desc_num.i.i, align 8
  %conv7.i.i = zext i16 %100 to i32
  %rem.i.i = srem i32 %add6.i.i, %conv7.i.i
  store i32 %rem.i.i, ptr %next_to_clean.i, align 4
  %cmp.not.i = icmp eq i32 %76, %rem.i.i
  br i1 %cmp.not.i, label %hns_nic_reclaim_one_desc.exit.i.hns_nic_tx_clr_all_bufs.exit_crit_edge, label %hns_nic_reclaim_one_desc.exit.i.while.body.i_crit_edge

hns_nic_reclaim_one_desc.exit.i.while.body.i_crit_edge: ; preds = %hns_nic_reclaim_one_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

hns_nic_reclaim_one_desc.exit.i.hns_nic_tx_clr_all_bufs.exit_crit_edge: ; preds = %hns_nic_reclaim_one_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hns_nic_tx_clr_all_bufs.exit

hns_nic_tx_clr_all_bufs.exit:                     ; preds = %hns_nic_reclaim_one_desc.exit.i.hns_nic_tx_clr_all_bufs.exit_crit_edge, %for.body.hns_nic_tx_clr_all_bufs.exit_crit_edge
  %queue_index.i = getelementptr %struct.hns_nic_ring_data, ptr %70, i32 %i.053, i32 3
  %101 = ptrtoint ptr %queue_index.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %queue_index.i, align 4
  %_tx.i.i49 = getelementptr inbounds %struct.net_device, ptr %74, i32 0, i32 103
  %103 = ptrtoint ptr %_tx.i.i49 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %_tx.i.i49, align 128
  %state.i.i50 = getelementptr %struct.netdev_queue, ptr %104, i32 %102, i32 13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i50) #14
  %dql.i.i = getelementptr %struct.netdev_queue, ptr %104, i32 %102, i32 15
  tail call void @dql_reset(ptr noundef %dql.i.i) #14
  %i.0 = add i32 %i.053, -1
  %cmp = icmp sgt i32 %i.0, -1
  br i1 %cmp, label %hns_nic_tx_clr_all_bufs.exit.for.body_crit_edge, label %hns_nic_tx_clr_all_bufs.exit.cleanup_crit_edge

hns_nic_tx_clr_all_bufs.exit.cleanup_crit_edge:   ; preds = %hns_nic_tx_clr_all_bufs.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

hns_nic_tx_clr_all_bufs.exit.for.body_crit_edge:  ; preds = %hns_nic_tx_clr_all_bufs.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup:                                          ; preds = %hns_nic_tx_clr_all_bufs.exit.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hns_nic_net_up(ptr noundef %ndev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ae_handle = getelementptr i8, ptr %ndev, i32 2332
  %0 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ae_handle, align 4
  %state = getelementptr i8, ptr %ndev, i32 2368
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %q_num.i = getelementptr inbounds %struct.hnae_handle, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %q_num.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %q_num.i, align 4
  %mul71.i = shl i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul71.i)
  %cmp72.i = icmp sgt i32 %mul71.i, 0
  br i1 %cmp72.i, label %for.body.lr.ph.i, label %if.end.for.cond.preheader_crit_edge

if.end.for.cond.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.preheader

for.body.lr.ph.i:                                 ; preds = %if.end
  %ring_data.i = getelementptr i8, ptr %ndev, i32 2348
  %netdev.i = getelementptr i8, ptr %ndev, i32 2324
  br label %for.body.i

for.body.i:                                       ; preds = %if.end30.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.073.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end30.i.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %ring_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ring_data.i, align 4
  %arrayidx.i = getelementptr %struct.hns_nic_ring_data, ptr %8, i32 %i.073.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 8
  %irq_init_flag.i = getelementptr inbounds %struct.hnae_ring, ptr %10, i32 0, i32 16
  %11 = ptrtoint ptr %irq_init_flag.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq_init_flag.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp1.i = icmp eq i32 %12, 1
  br i1 %cmp1.i, label %for.body.i.for.cond.preheader_crit_edge, label %if.end.i

for.body.i.for.cond.preheader_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.preheader

if.end.i:                                         ; preds = %for.body.i
  %ring_name.i = getelementptr inbounds %struct.hnae_ring, ptr %10, i32 0, i32 5
  %13 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev.i, align 4
  %flags.i = getelementptr inbounds %struct.hnae_ring, ptr %10, i32 0, i32 15
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.10, ptr @.str.9
  %queue_index.i = getelementptr %struct.hns_nic_ring_data, ptr %8, i32 %i.073.i, i32 3
  %17 = ptrtoint ptr %queue_index.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %queue_index.i, align 4
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %ring_name.i, i32 noundef 20, ptr noundef nonnull @.str.8, ptr noundef %14, ptr noundef nonnull %cond.i, i32 noundef %18) #14
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx7.i = getelementptr %struct.hnae_ring, ptr %20, i32 0, i32 5, i32 19
  %21 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx7.i, align 1
  %22 = load ptr, ptr %arrayidx.i, align 8
  %irq.i = getelementptr inbounds %struct.hnae_ring, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq.i, align 8
  tail call void @irq_modify_status(i32 noundef %24, i32 noundef 0, i32 noundef 4096) #14
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 8
  %irq10.i = getelementptr inbounds %struct.hnae_ring, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %irq10.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq10.i, align 8
  %ring_name12.i = getelementptr inbounds %struct.hnae_ring, ptr %26, i32 0, i32 5
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %28, ptr noundef nonnull @hns_irq_handle, ptr noundef null, i32 noundef 0, ptr noundef %ring_name12.i, ptr noundef %arrayidx.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool15.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool15.not.i, label %if.end20.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end.i
  %29 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %netdev.i, align 4
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 8
  %irq19.i = getelementptr inbounds %struct.hnae_ring, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %irq19.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq19.i, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %30, ptr noundef nonnull @.str.11, i32 noundef %34) #17
  %35 = ptrtoint ptr %q_num.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %q_num.i, align 4
  %mul.i.i = shl i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i)
  %cmp26.i.i = icmp sgt i32 %mul.i.i, 0
  br i1 %cmp26.i.i, label %if.then16.i.for.body.i.i_crit_edge, label %if.then16.i.if.then3_crit_edge

if.then16.i.if.then3_crit_edge:                   ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then3

if.then16.i.for.body.i.i_crit_edge:               ; preds = %if.then16.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then16.i.for.body.i.i_crit_edge
  %i.027.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then16.i.for.body.i.i_crit_edge ]
  %37 = ptrtoint ptr %ring_data.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ring_data.i, align 4
  %arrayidx.i.i = getelementptr %struct.hns_nic_ring_data, ptr %38, i32 %i.027.i.i
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i.i, align 8
  %irq_init_flag.i.i = getelementptr inbounds %struct.hnae_ring, ptr %40, i32 0, i32 16
  %41 = ptrtoint ptr %irq_init_flag.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irq_init_flag.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp1.i.i = icmp eq i32 %42, 1
  br i1 %cmp1.i.i, label %if.then.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %irq.i.i = getelementptr inbounds %struct.hnae_ring, ptr %40, i32 0, i32 4
  %43 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %irq.i.i, align 8
  %call.i.i.i.i = tail call i32 @__irq_apply_affinity_hint(i32 noundef %44, ptr noundef null, i1 noundef zeroext true) #14
  %45 = ptrtoint ptr %ring_data.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ring_data.i, align 4
  %arrayidx6.i.i = getelementptr %struct.hns_nic_ring_data, ptr %46, i32 %i.027.i.i
  %47 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx6.i.i, align 8
  %irq8.i.i = getelementptr inbounds %struct.hnae_ring, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %irq8.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %irq8.i.i, align 8
  %call11.i.i = tail call ptr @free_irq(i32 noundef %50, ptr noundef %arrayidx6.i.i) #14
  %51 = ptrtoint ptr %ring_data.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ring_data.i, align 4
  %arrayidx13.i.i = getelementptr %struct.hns_nic_ring_data, ptr %52, i32 %i.027.i.i
  %53 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx13.i.i, align 8
  %irq_init_flag15.i.i = getelementptr inbounds %struct.hnae_ring, ptr %54, i32 0, i32 16
  %55 = ptrtoint ptr %irq_init_flag15.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %irq_init_flag15.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.027.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %mul.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.then3_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.if.then3_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then3

if.end20.i:                                       ; preds = %if.end.i
  %56 = ptrtoint ptr %q_num.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %q_num.i, align 4
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i, align 8
  %mask.i = getelementptr %struct.hns_nic_ring_data, ptr %8, i32 %i.073.i, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %60 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %60) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.i.i.i.i, i32 %57)
  %cmp.i.i = icmp eq i32 %call4.i.i.i.i, %57
  %flags.i.i = getelementptr inbounds %struct.hnae_ring, ptr %59, i32 0, i32 15
  %61 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i, label %if.then.i62.i, label %if.else2.i.i

if.then.i62.i:                                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = select i1 %tobool.not.i.i, i32 %57, i32 0
  %spec.select.i.i = sub i32 %i.073.i, %sub.i.i
  br label %if.end11.i.i

if.else2.i.i:                                     ; preds = %if.end20.i
  br i1 %tobool.not.i.i, label %if.else7.i.i, label %if.then6.i.i

if.then6.i.i:                                     ; preds = %if.else2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %mul.i63.i = shl nuw i32 %i.073.i, 1
  br label %if.end11.i.i

if.else7.i.i:                                     ; preds = %if.else2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub8.i.i = sub i32 %i.073.i, %57
  %mul9.i.i = shl i32 %sub8.i.i, 1
  %add.i.i = or i32 %mul9.i.i, 1
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.else7.i.i, %if.then6.i.i, %if.then.i62.i
  %cpu.0.i.i = phi i32 [ %mul.i63.i, %if.then6.i.i ], [ %add.i.i, %if.else7.i.i ], [ %spec.select.i.i, %if.then.i62.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %63 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i20.i.i = add i32 %63, 31
  %64 = lshr i32 %sub.i.i20.i.i, 3
  %mul.i.i.i.i = and i32 %64, 536870908
  %65 = call ptr @memset(ptr %mask.i, i32 0, i32 %mul.i.i.i.i)
  %66 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %cpu.0.i.i)
  %cmp.not.i.i.i.i.i = icmp ugt i32 %66, %cpu.0.i.i
  br i1 %cmp.not.i.i.i.i.i, label %if.end11.i.i.hns_nic_init_affinity_mask.exit.i_crit_edge, label %land.rhs.i.i.i.i.i

if.end11.i.i.hns_nic_init_affinity_mask.exit.i_crit_edge: ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hns_nic_init_affinity_mask.exit.i

land.rhs.i.i.i.i.i:                               ; preds = %if.end11.i.i
  %.b37.i.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i.i, label %land.rhs.i.i.i.i.i.hns_nic_init_affinity_mask.exit.i_crit_edge, label %if.then.i.i.i.i.i, !prof !195

land.rhs.i.i.i.i.i.hns_nic_init_affinity_mask.exit.i_crit_edge: ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hns_nic_init_affinity_mask.exit.i

if.then.i.i.i.i.i:                                ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %hns_nic_init_affinity_mask.exit.i

hns_nic_init_affinity_mask.exit.i:                ; preds = %if.then.i.i.i.i.i, %land.rhs.i.i.i.i.i.hns_nic_init_affinity_mask.exit.i_crit_edge, %if.end11.i.i.hns_nic_init_affinity_mask.exit.i_crit_edge
  tail call void @_set_bit(i32 noundef %cpu.0.i.i, ptr noundef %mask.i) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %67 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %cpu.0.i.i)
  %cmp.not.i.i.i.i64.i = icmp ugt i32 %67, %cpu.0.i.i
  br i1 %cmp.not.i.i.i.i64.i, label %hns_nic_init_affinity_mask.exit.i.cpu_online.exit.i_crit_edge, label %land.rhs.i.i.i.i66.i

hns_nic_init_affinity_mask.exit.i.cpu_online.exit.i_crit_edge: ; preds = %hns_nic_init_affinity_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit.i

land.rhs.i.i.i.i66.i:                             ; preds = %hns_nic_init_affinity_mask.exit.i
  %.b37.i.i.i.i65.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i65.i, label %land.rhs.i.i.i.i66.i.cpu_online.exit.i_crit_edge, label %if.then.i.i.i.i67.i, !prof !195

land.rhs.i.i.i.i66.i.cpu_online.exit.i_crit_edge: ; preds = %land.rhs.i.i.i.i66.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit.i

if.then.i.i.i.i67.i:                              ; preds = %land.rhs.i.i.i.i66.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit.i

cpu_online.exit.i:                                ; preds = %if.then.i.i.i.i67.i, %land.rhs.i.i.i.i66.i.cpu_online.exit.i_crit_edge, %hns_nic_init_affinity_mask.exit.i.cpu_online.exit.i_crit_edge
  %div3.i.i.i.i = lshr i32 %cpu.0.i.i, 5
  %arrayidx.i.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i.i
  %68 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %and.i.i.i68.i = and i32 %cpu.0.i.i, 31
  %70 = shl nuw i32 1, %and.i.i.i68.i
  %71 = and i32 %69, %70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.i.not.i = icmp eq i32 %71, 0
  br i1 %tobool.i.not.i, label %cpu_online.exit.i.if.end30.i_crit_edge, label %if.then25.i

cpu_online.exit.i.if.end30.i_crit_edge:           ; preds = %cpu_online.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30.i

if.then25.i:                                      ; preds = %cpu_online.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %72 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i, align 8
  %irq27.i = getelementptr inbounds %struct.hnae_ring, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %irq27.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %irq27.i, align 8
  %call.i.i.i = tail call i32 @__irq_apply_affinity_hint(i32 noundef %75, ptr noundef %mask.i, i1 noundef zeroext true) #14
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then25.i, %cpu_online.exit.i.if.end30.i_crit_edge
  %76 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i, align 8
  %irq_init_flag32.i = getelementptr inbounds %struct.hnae_ring, ptr %77, i32 0, i32 16
  %78 = ptrtoint ptr %irq_init_flag32.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1, ptr %irq_init_flag32.i, align 4
  %inc.i = add nuw nsw i32 %i.073.i, 1
  %79 = ptrtoint ptr %q_num.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %q_num.i, align 4
  %mul.i = shl i32 %80, 1
  %cmp.i = icmp slt i32 %inc.i, %mul.i
  br i1 %cmp.i, label %if.end30.i.for.body.i_crit_edge, label %if.end30.i.for.cond.preheader_crit_edge

if.end30.i.for.cond.preheader_crit_edge:          ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.preheader

if.end30.i.for.body.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.cond.preheader:                               ; preds = %if.end30.i.for.cond.preheader_crit_edge, %for.body.i.for.cond.preheader_crit_edge, %if.end.for.cond.preheader_crit_edge
  %81 = ptrtoint ptr %q_num.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %q_num.i, align 4
  %mul101 = shl i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul101)
  %cmp5102 = icmp sgt i32 %mul101, 0
  br i1 %cmp5102, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ring_data.i73 = getelementptr i8, ptr %ndev, i32 2348
  br label %for.body

if.then3:                                         ; preds = %for.inc.i.i.if.then3_crit_edge, %if.then16.i.if.then3_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.7, i32 noundef %call.i.i) #17
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0103 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %83 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ae_handle, align 4
  %85 = ptrtoint ptr %ring_data.i73 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ring_data.i73, align 4
  %napi.i = getelementptr %struct.hns_nic_ring_data, ptr %86, i32 %i.0103, i32 1
  tail call void @napi_enable(ptr noundef %napi.i) #14
  %87 = ptrtoint ptr %ring_data.i73 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ring_data.i73, align 4
  %arrayidx2.i = getelementptr %struct.hns_nic_ring_data, ptr %88, i32 %i.0103
  %89 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx2.i, align 8
  %irq.i74 = getelementptr inbounds %struct.hnae_ring, ptr %90, i32 0, i32 4
  %91 = ptrtoint ptr %irq.i74 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %irq.i74, align 8
  tail call void @enable_irq(i32 noundef %92) #14
  %dev.i = getelementptr inbounds %struct.hnae_handle, ptr %84, i32 0, i32 1
  %93 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev.i, align 4
  %ops.i = getelementptr inbounds %struct.hnae_ae_dev, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ops.i, align 4
  %toggle_ring_irq.i = getelementptr inbounds %struct.hnae_ae_ops, ptr %96, i32 0, i32 11
  %97 = ptrtoint ptr %toggle_ring_irq.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %toggle_ring_irq.i, align 4
  %99 = ptrtoint ptr %ring_data.i73 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ring_data.i73, align 4
  %arrayidx4.i = getelementptr %struct.hns_nic_ring_data, ptr %100, i32 %i.0103
  %101 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx4.i, align 8
  tail call void %98(ptr noundef %102, i32 noundef 0) #14
  %inc = add nuw nsw i32 %i.0103, 1
  %103 = ptrtoint ptr %q_num.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %q_num.i, align 4
  %mul = shl i32 %104, 1
  %cmp5 = icmp slt i32 %inc, %mul
  br i1 %cmp5, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ -1, %for.cond.preheader.for.end_crit_edge ], [ %i.0103, %for.body.for.end_crit_edge ]
  %dev = getelementptr inbounds %struct.hnae_handle, ptr %1, i32 0, i32 1
  %105 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev, align 4
  %ops = getelementptr inbounds %struct.hnae_ae_dev, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ops, align 4
  %set_mac_addr = getelementptr inbounds %struct.hnae_ae_ops, ptr %108, i32 0, i32 25
  %109 = ptrtoint ptr %set_mac_addr to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %set_mac_addr, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 86
  %111 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev_addr, align 64
  %call10 = tail call i32 %110(ptr noundef %1, ptr noundef %112) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %for.end.out_has_some_queues_crit_edge

for.end.out_has_some_queues_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_has_some_queues

if.end13:                                         ; preds = %for.end
  %113 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev, align 4
  %ops15 = getelementptr inbounds %struct.hnae_ae_dev, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %ops15 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ops15, align 4
  %start = getelementptr inbounds %struct.hnae_ae_ops, ptr %116, i32 0, i32 4
  %117 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %start, align 4
  %tobool16.not = icmp eq ptr %118, null
  br i1 %tobool16.not, label %if.end13.if.end23_crit_edge, label %cond.end

if.end13.if.end23_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

cond.end:                                         ; preds = %if.end13
  %call20 = tail call i32 %118(ptr noundef %1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cond.end.if.end23_crit_edge, label %out_start_err

cond.end.if.end23_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.end23:                                         ; preds = %cond.end.if.end23_crit_edge, %if.end13.if.end23_crit_edge
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %119 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %phydev, align 16
  %tobool24.not = icmp eq ptr %120, null
  br i1 %tobool24.not, label %if.end23.if.end27_crit_edge, label %if.then25

if.end23.if.end27_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @phy_start(ptr noundef nonnull %120) #14
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end23.if.end27_crit_edge
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %state) #14
  %service_timer = getelementptr i8, ptr %ndev, i32 2372
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %121 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %121, 100
  %call29 = tail call i32 @mod_timer(ptr noundef %service_timer, i32 noundef %add) #14
  br label %cleanup

out_start_err:                                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %122 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %123, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  br label %out_has_some_queues

out_has_some_queues:                              ; preds = %out_start_err, %for.end.out_has_some_queues_crit_edge
  %ret.0 = phi i32 [ %call10, %for.end.out_has_some_queues_crit_edge ], [ %call20, %out_start_err ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0.lcssa)
  %cmp31105 = icmp sgt i32 %i.0.lcssa, -1
  br i1 %cmp31105, label %for.body32.lr.ph, label %out_has_some_queues.for.end34_crit_edge

out_has_some_queues.for.end34_crit_edge:          ; preds = %out_has_some_queues
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end34

for.body32.lr.ph:                                 ; preds = %out_has_some_queues
  %ring_data.i79 = getelementptr i8, ptr %ndev, i32 2348
  br label %for.body32

for.body32:                                       ; preds = %for.body32.for.body32_crit_edge, %for.body32.lr.ph
  %j.0106 = phi i32 [ %i.0.lcssa, %for.body32.lr.ph ], [ %j.0, %for.body32.for.body32_crit_edge ]
  %124 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ae_handle, align 4
  %dev.i76 = getelementptr inbounds %struct.hnae_handle, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %dev.i76 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev.i76, align 4
  %ops.i77 = getelementptr inbounds %struct.hnae_ae_dev, ptr %127, i32 0, i32 2
  %128 = ptrtoint ptr %ops.i77 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ops.i77, align 4
  %toggle_ring_irq.i78 = getelementptr inbounds %struct.hnae_ae_ops, ptr %129, i32 0, i32 11
  %130 = ptrtoint ptr %toggle_ring_irq.i78 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %toggle_ring_irq.i78, align 4
  %132 = ptrtoint ptr %ring_data.i79 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ring_data.i79, align 4
  %arrayidx.i80 = getelementptr %struct.hns_nic_ring_data, ptr %133, i32 %j.0106
  %134 = ptrtoint ptr %arrayidx.i80 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx.i80, align 8
  tail call void %131(ptr noundef %135, i32 noundef 1) #14
  %136 = ptrtoint ptr %ring_data.i79 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ring_data.i79, align 4
  %arrayidx2.i81 = getelementptr %struct.hns_nic_ring_data, ptr %137, i32 %j.0106
  %138 = ptrtoint ptr %arrayidx2.i81 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx2.i81, align 8
  %irq.i82 = getelementptr inbounds %struct.hnae_ring, ptr %139, i32 0, i32 4
  %140 = ptrtoint ptr %irq.i82 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %irq.i82, align 8
  tail call void @disable_irq(i32 noundef %141) #14
  %142 = ptrtoint ptr %ring_data.i79 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %ring_data.i79, align 4
  %napi.i83 = getelementptr %struct.hns_nic_ring_data, ptr %143, i32 %j.0106, i32 1
  tail call void @napi_disable(ptr noundef %napi.i83) #14
  %j.0 = add nsw i32 %j.0106, -1
  %cmp31.not = icmp eq i32 %j.0106, 0
  br i1 %cmp31.not, label %for.body32.for.end34_crit_edge, label %for.body32.for.body32_crit_edge

for.body32.for.body32_crit_edge:                  ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body32

for.body32.for.end34_crit_edge:                   ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end34

for.end34:                                        ; preds = %for.body32.for.end34_crit_edge, %out_has_some_queues.for.end34_crit_edge
  %144 = ptrtoint ptr %q_num.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %q_num.i, align 4
  %mul.i84 = shl i32 %145, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i84)
  %cmp26.i = icmp sgt i32 %mul.i84, 0
  br i1 %cmp26.i, label %for.body.lr.ph.i86, label %for.end34.hns_nic_free_irq.exit_crit_edge

for.end34.hns_nic_free_irq.exit_crit_edge:        ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %hns_nic_free_irq.exit

for.body.lr.ph.i86:                               ; preds = %for.end34
  %ring_data.i85 = getelementptr i8, ptr %ndev, i32 2348
  br label %for.body.i90

for.body.i90:                                     ; preds = %for.inc.i.for.body.i90_crit_edge, %for.body.lr.ph.i86
  %i.027.i = phi i32 [ 0, %for.body.lr.ph.i86 ], [ %inc.i93, %for.inc.i.for.body.i90_crit_edge ]
  %146 = ptrtoint ptr %ring_data.i85 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ring_data.i85, align 4
  %arrayidx.i87 = getelementptr %struct.hns_nic_ring_data, ptr %147, i32 %i.027.i
  %148 = ptrtoint ptr %arrayidx.i87 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx.i87, align 8
  %irq_init_flag.i88 = getelementptr inbounds %struct.hnae_ring, ptr %149, i32 0, i32 16
  %150 = ptrtoint ptr %irq_init_flag.i88 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %irq_init_flag.i88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %151)
  %cmp1.i89 = icmp eq i32 %151, 1
  br i1 %cmp1.i89, label %if.then.i, label %for.body.i90.for.inc.i_crit_edge

for.body.i90.for.inc.i_crit_edge:                 ; preds = %for.body.i90
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i90
  call void @__sanitizer_cov_trace_pc() #16
  %irq.i91 = getelementptr inbounds %struct.hnae_ring, ptr %149, i32 0, i32 4
  %152 = ptrtoint ptr %irq.i91 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %irq.i91, align 8
  %call.i.i.i92 = tail call i32 @__irq_apply_affinity_hint(i32 noundef %153, ptr noundef null, i1 noundef zeroext true) #14
  %154 = ptrtoint ptr %ring_data.i85 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %ring_data.i85, align 4
  %arrayidx6.i = getelementptr %struct.hns_nic_ring_data, ptr %155, i32 %i.027.i
  %156 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %arrayidx6.i, align 8
  %irq8.i = getelementptr inbounds %struct.hnae_ring, ptr %157, i32 0, i32 4
  %158 = ptrtoint ptr %irq8.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %irq8.i, align 8
  %call11.i = tail call ptr @free_irq(i32 noundef %159, ptr noundef %arrayidx6.i) #14
  %160 = ptrtoint ptr %ring_data.i85 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %ring_data.i85, align 4
  %arrayidx13.i = getelementptr %struct.hns_nic_ring_data, ptr %161, i32 %i.027.i
  %162 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %arrayidx13.i, align 8
  %irq_init_flag15.i = getelementptr inbounds %struct.hnae_ring, ptr %163, i32 0, i32 16
  %164 = ptrtoint ptr %irq_init_flag15.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 0, ptr %irq_init_flag15.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i90.for.inc.i_crit_edge
  %inc.i93 = add nuw nsw i32 %i.027.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i93, %mul.i84
  br i1 %exitcond.not.i, label %for.inc.i.hns_nic_free_irq.exit_crit_edge, label %for.inc.i.for.body.i90_crit_edge

for.inc.i.for.body.i90_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i90

for.inc.i.hns_nic_free_irq.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hns_nic_free_irq.exit

hns_nic_free_irq.exit:                            ; preds = %for.inc.i.hns_nic_free_irq.exit_crit_edge, %for.end34.hns_nic_free_irq.exit_crit_edge
  tail call void @_set_bit(i32 noundef 3, ptr noundef %state) #14
  br label %cleanup

cleanup:                                          ; preds = %hns_nic_free_irq.exit, %if.end27, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %if.then3 ], [ %ret.0, %hns_nic_free_irq.exit ], [ 0, %if.end27 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_nic_dev_driver_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hns_nic_dev_driver, ptr noundef null) #14
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hns_nic_dev_driver_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @platform_driver_unregister(ptr noundef nonnull @hns_nic_dev_driver) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_irq_handle(i32 noundef %irq, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %q = getelementptr inbounds %struct.hnae_ring, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %q, align 4
  %handle = getelementptr inbounds %struct.hnae_queue, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handle, align 64
  %dev1 = getelementptr inbounds %struct.hnae_handle, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  %ops = getelementptr inbounds %struct.hnae_ae_dev, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %toggle_ring_irq = getelementptr inbounds %struct.hnae_ae_ops, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %toggle_ring_irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %toggle_ring_irq, align 4
  tail call void %11(ptr noundef %1, i32 noundef 1) #14
  %napi = getelementptr inbounds %struct.hns_nic_ring_data, ptr %dev, i32 0, i32 1
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #14
  br i1 %call.i, label %if.then.i, label %entry.napi_schedule.exit_crit_edge

entry.napi_schedule.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %napi_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__napi_schedule(ptr noundef %napi) #14
  br label %napi_schedule.exit

napi_schedule.exit:                               ; preds = %if.then.i, %entry.napi_schedule.exit_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_apply_affinity_hint(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_nic_dev_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %addr.i.i = alloca [6 x i8], align 1
  %args.i = alloca %struct.of_phandle_args, align 4
  %port_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %port_id) #14
  %0 = ptrtoint ptr %port_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %port_id, align 4, !annotation !193
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 176, i32 noundef 16, i32 noundef 16) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup145_crit_edge, label %if.end

entry.cleanup145_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup145

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %dev3 = getelementptr i8, ptr %call, i32 2328
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %dev3, align 8
  %netdev = getelementptr i8, ptr %call, i32 2324
  %3 = ptrtoint ptr %netdev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %netdev, align 4
  %tobool.not.i = icmp eq ptr %dev1, null
  br i1 %tobool.not.i, label %if.end.if.else18_crit_edge, label %dev_of_node.exit

if.end.if.else18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else18

dev_of_node.exit:                                 ; preds = %if.end
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 8
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %dev_of_node.exit.if.else18_crit_edge, label %if.then6

dev_of_node.exit.if.else18_crit_edge:             ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else18

if.then6:                                         ; preds = %dev_of_node.exit
  %6 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node.i, align 8
  %call7 = tail call i32 @of_device_is_compatible(ptr noundef %7, ptr noundef nonnull @.str.14) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  %spec.select246 = select i1 %tobool8.not, i32 825635120, i32 3552816
  %8 = getelementptr i8, ptr %call, i32 2308
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.select246, ptr %8, align 4
  %10 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #14
  %12 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %11, ptr noundef nonnull @.str.15, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i223 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i223, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #14
  br label %cleanup

of_parse_phandle.exit:                            ; preds = %if.then6
  %13 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #14
  %tobool14.not = icmp eq ptr %14, null
  br i1 %tobool14.not, label %of_parse_phandle.exit.cleanup_crit_edge, label %if.end54

of_parse_phandle.exit.cleanup_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %of_parse_phandle.exit.cleanup_crit_edge, %of_parse_phandle.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev1, ptr noundef nonnull @.str.16) #17
  br label %out_read_prop_fail

if.else18:                                        ; preds = %dev_of_node.exit.if.else18_crit_edge, %if.end.if.else18_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24) #17
  br label %out_read_prop_fail

if.end54:                                         ; preds = %of_parse_phandle.exit
  %fwnode = getelementptr inbounds %struct.device_node, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %fwnode, ptr %add.ptr.i, align 8
  %call.i226 = call i32 @device_property_read_u32_array(ptr noundef nonnull %dev1, ptr noundef nonnull @.str.26, ptr noundef nonnull %port_id, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i226)
  %tobool56.not = icmp eq i32 %call.i226, 0
  br i1 %tobool56.not, label %if.end54.if.end62_crit_edge, label %if.then57

if.end54.if.end62_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end62

if.then57:                                        ; preds = %if.end54
  %call.i227 = call i32 @device_property_read_u32_array(ptr noundef nonnull %dev1, ptr noundef nonnull @.str.27, ptr noundef nonnull %port_id, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i227)
  %tobool59.not = icmp eq i32 %call.i227, 0
  br i1 %tobool59.not, label %if.end61, label %if.then57.out_read_prop_fail_crit_edge

if.then57.out_read_prop_fail_crit_edge:           ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_read_prop_fail

if.end61:                                         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp = icmp ult i32 %17, 2
  %cond.v = select i1 %cmp, i32 6, i32 -2
  %cond = add i32 %cond.v, %17
  %18 = ptrtoint ptr %port_id to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond, ptr %port_id, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.end54.if.end62_crit_edge
  %19 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port_id, align 4
  %port_id63 = getelementptr i8, ptr %call, i32 2312
  %21 = ptrtoint ptr %port_id63 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %port_id63, align 8
  %22 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev3, align 8
  %call1.i = call i32 @device_get_ethdev_address(ptr noundef %23, ptr noundef nonnull %call) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i228 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i228, label %if.end62.hns_init_mac_addr.exit_crit_edge, label %if.then.i

if.end62.hns_init_mac_addr.exit_crit_edge:        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  br label %hns_init_mac_addr.exit

if.then.i:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i.i) #14
  %24 = call ptr @memset(ptr %addr.i.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i.i, i32 noundef 6) #14
  %25 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %addr.i.i, align 1
  %27 = and i8 %26, -4
  %28 = or i8 %27, 2
  store i8 %28, ptr %addr.i.i, align 1
  call void @dev_addr_mod(ptr noundef nonnull %call, i32 noundef 0, ptr noundef nonnull %addr.i.i, i32 noundef 6) #14
  %addr_assign_type.i.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 55
  %29 = ptrtoint ptr %addr_assign_type.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %addr_assign_type.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i.i) #14
  %30 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev3, align 8
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 86
  %32 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_addr.i, align 64
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str.40, ptr noundef %33) #17
  br label %hns_init_mac_addr.exit

hns_init_mac_addr.exit:                           ; preds = %if.then.i, %if.end62.hns_init_mac_addr.exit_crit_edge
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 115
  %34 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 500, ptr %watchdog_timeo, align 4
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 15
  %35 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %priv_flags, align 16
  %or = or i64 %36, 4096
  store i64 %or, ptr %priv_flags, align 16
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %37 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @hns_nic_netdev_ops, ptr %netdev_ops, align 8
  call void @hns_ethtool_set_ops(ptr noundef nonnull %call) #14
  %features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 23
  %38 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %features, align 16
  %or64 = or i64 %39, 1099511646227
  store i64 %or64, ptr %features, align 16
  %vlan_features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 26
  %40 = ptrtoint ptr %vlan_features to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %vlan_features, align 8
  %or67 = or i64 %41, 1099511646227
  store i64 %or67, ptr %vlan_features, align 8
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 30
  %42 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 68, ptr %min_mtu, align 8
  %43 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 825635120, i32 %44)
  %cond150 = icmp eq i32 %44, 825635120
  br i1 %cond150, label %sw.bb, label %hns_init_mac_addr.exit.sw.epilog_crit_edge

hns_init_mac_addr.exit.sw.epilog_crit_edge:       ; preds = %hns_init_mac_addr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %hns_init_mac_addr.exit
  call void @__sanitizer_cov_trace_pc() #16
  %or70 = or i64 %39, 1374390667283
  %45 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %or70, ptr %features, align 16
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 24
  %46 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %hw_features, align 8
  %or71 = or i64 %47, 1099512760339
  store i64 %or71, ptr %hw_features, align 8
  %or73 = or i64 %41, 1099512760339
  %48 = ptrtoint ptr %vlan_features to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %or73, ptr %vlan_features, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %hns_init_mac_addr.exit.sw.epilog_crit_edge
  %.sink245 = phi i32 [ 9706, %sw.bb ], [ 9578, %hns_init_mac_addr.exit.sw.epilog_crit_edge ]
  %49 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 31
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %.sink245, ptr %49, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %51 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %dev1, ptr %parent, align 8
  %call.i230 = call i32 @dma_set_mask(ptr noundef nonnull %dev1, i64 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i230)
  %cmp.i = icmp eq i32 %call.i230, 0
  br i1 %cmp.i, label %do.body79, label %do.end91

do.body79:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i231 = call i32 @dma_set_coherent_mask(ptr noundef nonnull %dev1, i64 noundef -1) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hns_nic_dev_probe.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hns_nic_dev_probe, %if.then84)) #14
          to label %if.end92 [label %if.then84], !srcloc !202

if.then84:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hns_nic_dev_probe.__UNIQUE_ID_ddebug485, ptr noundef nonnull %dev1, ptr noundef nonnull @.str.29) #14
  br label %if.end92

do.end91:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev1, ptr noundef nonnull @.str.31) #17
  br label %if.end92

if.end92:                                         ; preds = %do.end91, %if.then84, %do.body79
  call void @netif_carrier_off(ptr noundef nonnull %call) #14
  %service_timer = getelementptr i8, ptr %call, i32 2372
  call void @init_timer_key(ptr noundef %service_timer, ptr noundef nonnull @hns_nic_service_timer, i32 noundef 0, ptr noundef nonnull @.str.33, ptr noundef nonnull @hns_nic_dev_probe.__key) #14
  %service_task = getelementptr i8, ptr %call, i32 2420
  call void @__init_work(ptr noundef %service_task, i32 noundef 0) #14
  %52 = ptrtoint ptr %service_task to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -64, ptr %service_task, align 4
  %lockdep_map = getelementptr i8, ptr %call, i32 2436
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.35, ptr noundef nonnull @hns_nic_dev_probe.__key.34, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry100 = getelementptr i8, ptr %call, i32 2424
  %53 = ptrtoint ptr %entry100 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %entry100, ptr %entry100, align 4
  %prev.i = getelementptr i8, ptr %call, i32 2428
  %54 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %entry100, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call, i32 2432
  %55 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @hns_nic_service_task, ptr %func, align 4
  %state = getelementptr i8, ptr %call, i32 2368
  call void @_set_bit(i32 noundef 6, ptr noundef %state) #14
  call void @_clear_bit(i32 noundef 7, ptr noundef %state) #14
  call void @_set_bit(i32 noundef 3, ptr noundef %state) #14
  %56 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %netdev, align 4
  %call107 = call fastcc i32 @hns_nic_try_get_ae(ptr noundef %57)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.end92.cleanup145_crit_edge, label %if.then109

if.end92.cleanup145_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup145

if.then109:                                       ; preds = %if.end92
  %notifier_block = getelementptr i8, ptr %call, i32 2464
  %58 = ptrtoint ptr %notifier_block to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @hns_nic_notifier_action, ptr %notifier_block, align 8
  %call111 = call i32 @hnae_register_notifier(ptr noundef %notifier_block) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %do.body118, label %do.end116

do.end116:                                        ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev1, ptr noundef nonnull @.str.37) #17
  %call136 = call zeroext i1 @cancel_work_sync(ptr noundef %service_task) #14
  br label %out_read_prop_fail

do.body118:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hns_nic_dev_probe.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hns_nic_dev_probe, %if.then130)) #14
          to label %cleanup145 [label %if.then130], !srcloc !202

if.then130:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hns_nic_dev_probe.__UNIQUE_ID_ddebug486, ptr noundef nonnull %dev1, ptr noundef nonnull @.str.39) #14
  br label %cleanup145

out_read_prop_fail:                               ; preds = %do.end116, %if.then57.out_read_prop_fail_crit_edge, %if.else18, %cleanup
  %ret.2 = phi i32 [ -19, %cleanup ], [ %call.i227, %if.then57.out_read_prop_fail_crit_edge ], [ %call111, %do.end116 ], [ -6, %if.else18 ]
  %59 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %add.ptr.i, align 8
  %tobool.not.i.i = icmp eq ptr %60, null
  %cmp.i.i = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %out_read_prop_fail.is_of_node.exit.thread_crit_edge, label %is_of_node.exit

out_read_prop_fail.is_of_node.exit.thread_crit_edge: ; preds = %out_read_prop_fail
  call void @__sanitizer_cov_trace_pc() #16
  br label %is_of_node.exit.thread

is_of_node.exit:                                  ; preds = %out_read_prop_fail
  call void @__sanitizer_cov_trace_pc() #16
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ops.i, align 4
  %cmp.i234 = icmp eq ptr %62, @of_fwnode_ops
  %add.ptr = getelementptr i8, ptr %60, i32 -12
  %spec.select = select i1 %cmp.i234, ptr %add.ptr, ptr null
  br label %is_of_node.exit.thread

is_of_node.exit.thread:                           ; preds = %is_of_node.exit, %out_read_prop_fail.is_of_node.exit.thread_crit_edge
  %63 = phi ptr [ null, %out_read_prop_fail.is_of_node.exit.thread_crit_edge ], [ %spec.select, %is_of_node.exit ]
  call void @of_node_put(ptr noundef %63) #14
  call void @free_netdev(ptr noundef nonnull %call) #14
  br label %cleanup145

cleanup145:                                       ; preds = %is_of_node.exit.thread, %if.then130, %do.body118, %if.end92.cleanup145_crit_edge, %entry.cleanup145_crit_edge
  %retval.0 = phi i32 [ %ret.2, %is_of_node.exit.thread ], [ -12, %entry.cleanup145_crit_edge ], [ 0, %if.then130 ], [ 0, %if.end92.cleanup145_crit_edge ], [ 0, %do.body118 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port_id) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_nic_dev_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %reg_state = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 121
  %2 = ptrtoint ptr %reg_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %reg_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %cmp.not = icmp eq i8 %bf.load, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @unregister_netdev(ptr noundef %1) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ring_data = getelementptr i8, ptr %1, i32 2348
  %3 = ptrtoint ptr %ring_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ring_data, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @hns_nic_uninit_ring_data(ptr noundef %add.ptr.i)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %5 = ptrtoint ptr %ring_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %ring_data, align 4
  %phydev = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 145
  %6 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phydev, align 16
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %if.end3.if.end8_crit_edge, label %if.then6

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @phy_disconnect(ptr noundef nonnull %7) #14
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end3.if.end8_crit_edge
  %ae_handle = getelementptr i8, ptr %1, i32 2332
  %8 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ae_handle, align 4
  %tobool.not.i = icmp eq ptr %9, null
  %cmp.i = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.end8.if.end12_crit_edge, label %if.then10

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @hnae_put_handle(ptr noundef nonnull %9) #14
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8.if.end12_crit_edge
  %10 = ptrtoint ptr %ae_handle to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %ae_handle, align 4
  %notifier_block = getelementptr i8, ptr %1, i32 2464
  %11 = ptrtoint ptr %notifier_block to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %notifier_block, align 8
  %tobool14.not = icmp eq ptr %12, null
  br i1 %tobool14.not, label %if.end12.if.end17_crit_edge, label %if.then15

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @hnae_unregister_notifier(ptr noundef %notifier_block) #14
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end12.if.end17_crit_edge
  %13 = ptrtoint ptr %notifier_block to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %notifier_block, align 8
  %state = getelementptr i8, ptr %1, i32 2368
  tail call void @_set_bit(i32 noundef 5, ptr noundef %state) #14
  %service_task = getelementptr i8, ptr %1, i32 2420
  %call20 = tail call zeroext i1 @cancel_work_sync(ptr noundef %service_task) #14
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 8
  %tobool.not.i.i = icmp eq ptr %15, null
  %cmp.i.i = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end17.is_of_node.exit.thread_crit_edge, label %is_of_node.exit

if.end17.is_of_node.exit.thread_crit_edge:        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %is_of_node.exit.thread

is_of_node.exit:                                  ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %cmp.i40 = icmp eq ptr %17, @of_fwnode_ops
  %add.ptr = getelementptr i8, ptr %15, i32 -12
  %spec.select = select i1 %cmp.i40, ptr %add.ptr, ptr null
  br label %is_of_node.exit.thread

is_of_node.exit.thread:                           ; preds = %is_of_node.exit, %if.end17.is_of_node.exit.thread_crit_edge
  %18 = phi ptr [ null, %if.end17.is_of_node.exit.thread_crit_edge ], [ %spec.select, %is_of_node.exit ]
  tail call void @of_node_put(ptr noundef %18) #14
  tail call void @free_netdev(ptr noundef %1) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hns_ethtool_set_ops(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_nic_service_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 100
  %call = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #14
  %state.i = getelementptr i8, ptr %t, i32 -4
  %1 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %state.i, align 4
  %3 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.hns_nic_task_schedule.exit_crit_edge

entry.hns_nic_task_schedule.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %hns_nic_task_schedule.exit

land.lhs.true.i:                                  ; preds = %entry
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %6 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not.i = icmp eq i32 %6, 0
  br i1 %tobool3.not.i, label %land.lhs.true4.i, label %land.lhs.true.i.hns_nic_task_schedule.exit_crit_edge

land.lhs.true.i.hns_nic_task_schedule.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hns_nic_task_schedule.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %call6.i = tail call i32 @_test_and_set_bit(i32 noundef 7, ptr noundef %state.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then.i, label %land.lhs.true4.i.hns_nic_task_schedule.exit_crit_edge

land.lhs.true4.i.hns_nic_task_schedule.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hns_nic_task_schedule.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  %service_task.i = getelementptr i8, ptr %t, i32 48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %service_task.i) #14
  br label %hns_nic_task_schedule.exit

hns_nic_task_schedule.exit:                       ; preds = %if.then.i, %land.lhs.true4.i.hns_nic_task_schedule.exit_crit_edge, %land.lhs.true.i.hns_nic_task_schedule.exit_crit_edge, %entry.hns_nic_task_schedule.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_nic_service_task(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ae_handle = getelementptr i8, ptr %work, i32 -88
  %0 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ae_handle, align 4
  %port_type.i = getelementptr inbounds %struct.hnae_handle, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %port_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_type.i, align 4
  %state.i = getelementptr i8, ptr %work, i32 -52
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %6 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %entry.hns_nic_reset_subtask.exit_crit_edge, label %if.end.i

entry.hns_nic_reset_subtask.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %hns_nic_reset_subtask.exit

if.end.i:                                         ; preds = %entry
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %state.i) #14
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i, align 4
  %9 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not.i = icmp eq i32 %9, 0
  br i1 %tobool4.not.i, label %lor.lhs.false.i, label %if.end.i.hns_nic_reset_subtask.exit_crit_edge

if.end.i.hns_nic_reset_subtask.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hns_nic_reset_subtask.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %12 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool7.not.i = icmp eq i32 %12, 0
  br i1 %tobool7.not.i, label %lor.lhs.false8.i, label %lor.lhs.false.i.hns_nic_reset_subtask.exit_crit_edge

lor.lhs.false.i.hns_nic_reset_subtask.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hns_nic_reset_subtask.exit

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false.i
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %state.i, align 4
  %15 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool11.not.i = icmp eq i32 %15, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %lor.lhs.false8.i.hns_nic_reset_subtask.exit_crit_edge

lor.lhs.false8.i.hns_nic_reset_subtask.exit_crit_edge: ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hns_nic_reset_subtask.exit

if.end13.i:                                       ; preds = %lor.lhs.false8.i
  %16 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ae_handle, align 4
  %dev.i15 = getelementptr inbounds %struct.hnae_handle, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %dev.i15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i15, align 4
  %ops1.i = getelementptr inbounds %struct.hnae_ae_dev, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %ops1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops1.i, align 4
  %get_regs_len.i = getelementptr inbounds %struct.hnae_ae_ops, ptr %21, i32 0, i32 39
  %22 = ptrtoint ptr %get_regs_len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %get_regs_len.i, align 4
  %tobool.not.i16 = icmp eq ptr %23, null
  br i1 %tobool.not.i16, label %if.end13.i.if.end18.i_crit_edge, label %land.lhs.true.i

if.end13.i.if.end18.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

land.lhs.true.i:                                  ; preds = %if.end13.i
  %get_regs.i = getelementptr inbounds %struct.hnae_ae_ops, ptr %21, i32 0, i32 38
  %24 = ptrtoint ptr %get_regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %get_regs.i, align 4
  %tobool2.not.i = icmp eq ptr %25, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end18.i_crit_edge, label %if.then.i17

land.lhs.true.i.if.end18.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

if.then.i17:                                      ; preds = %land.lhs.true.i
  %call.i = tail call i32 %23(ptr noundef %17) #14
  %add.i = add i32 %call.i, 3
  %and.i = and i32 %add.i, -4
  %26 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %and.i, i32 4) #14
  %27 = extractvalue { i32, i1 } %26, 1
  br i1 %27, label %if.then.i17.if.end18.i_crit_edge, label %if.end7.i.i.i, !prof !196

if.then.i17.if.end18.i_crit_edge:                 ; preds = %if.then.i17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

if.end7.i.i.i:                                    ; preds = %if.then.i17
  %28 = extractvalue { i32, i1 } %26, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %28, i32 noundef 3520) #18
  %tobool6.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool6.not.i, label %if.end7.i.i.i.if.end18.i_crit_edge, label %if.then7.i

if.end7.i.i.i.if.end18.i_crit_edge:               ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

if.then7.i:                                       ; preds = %if.end7.i.i.i
  %29 = ptrtoint ptr %get_regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %get_regs.i, align 4
  %31 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ae_handle, align 4
  tail call void %30(ptr noundef %32, ptr noundef nonnull %call8.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp95.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp95.not.i, label %if.then7.i.for.end.i_crit_edge, label %if.then7.i.do.end.i19_crit_edge

if.then7.i.do.end.i19_crit_edge:                  ; preds = %if.then7.i
  br label %do.end.i19

if.then7.i.for.end.i_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

do.end.i19:                                       ; preds = %do.end.i19.do.end.i19_crit_edge, %if.then7.i.do.end.i19_crit_edge
  %i.096.i = phi i32 [ %add17.i, %do.end.i19.do.end.i19_crit_edge ], [ 0, %if.then7.i.do.end.i19_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %call8.i.i.i, i32 %i.096.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i, align 16
  %add10.i = or i32 %i.096.i, 1
  %arrayidx11.i = getelementptr i32, ptr %call8.i.i.i, i32 %add10.i
  %35 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx11.i, align 4
  %add12.i = or i32 %i.096.i, 2
  %arrayidx13.i = getelementptr i32, ptr %call8.i.i.i, i32 %add12.i
  %37 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx13.i, align 8
  %add14.i = or i32 %i.096.i, 3
  %arrayidx15.i = getelementptr i32, ptr %call8.i.i.i, i32 %add14.i
  %39 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx15.i, align 4
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %i.096.i, i32 noundef %34, i32 noundef %36, i32 noundef %38, i32 noundef %40) #17
  %add17.i = add nuw i32 %i.096.i, 4
  %cmp.i18 = icmp ult i32 %add17.i, %and.i
  br i1 %cmp.i18, label %do.end.i19.do.end.i19_crit_edge, label %do.end.i19.for.end.i_crit_edge

do.end.i19.for.end.i_crit_edge:                   ; preds = %do.end.i19
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

do.end.i19.do.end.i19_crit_edge:                  ; preds = %do.end.i19
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i19

for.end.i:                                        ; preds = %do.end.i19.for.end.i_crit_edge, %if.then7.i.for.end.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #14
  br label %if.end18.i

if.end18.i:                                       ; preds = %for.end.i, %if.end7.i.i.i.if.end18.i_crit_edge, %if.then.i17.if.end18.i_crit_edge, %land.lhs.true.i.if.end18.i_crit_edge, %if.end13.i.if.end18.i_crit_edge
  %q_num.i = getelementptr inbounds %struct.hnae_handle, ptr %17, i32 0, i32 5
  %41 = ptrtoint ptr %q_num.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %q_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp2097.not.i = icmp eq i32 %42, 0
  br i1 %cmp2097.not.i, label %if.end18.i.hns_nic_dump.exit_crit_edge, label %if.end18.i.do.end24.i_crit_edge

if.end18.i.do.end24.i_crit_edge:                  ; preds = %if.end18.i
  br label %do.end24.i

if.end18.i.hns_nic_dump.exit_crit_edge:           ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hns_nic_dump.exit

do.end24.i:                                       ; preds = %do.end24.i.do.end24.i_crit_edge, %if.end18.i.do.end24.i_crit_edge
  %i.198.i = phi i32 [ %inc.i, %do.end24.i.do.end24.i_crit_edge ], [ 0, %if.end18.i.do.end24.i_crit_edge ]
  %arrayidx26.i = getelementptr %struct.hnae_handle, ptr %17, i32 0, i32 17, i32 %i.198.i
  %43 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx26.i, align 4
  %next_to_clean.i = getelementptr inbounds %struct.hnae_queue, ptr %44, i32 0, i32 6, i32 14
  %45 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %next_to_clean.i, align 4
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %i.198.i, i32 noundef %46) #17
  %47 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx26.i, align 4
  %next_to_use.i = getelementptr inbounds %struct.hnae_queue, ptr %48, i32 0, i32 6, i32 13
  %49 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %next_to_use.i, align 8
  %call35.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %i.198.i, i32 noundef %50) #17
  %51 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx26.i, align 4
  %next_to_clean42.i = getelementptr inbounds %struct.hnae_queue, ptr %52, i32 0, i32 4, i32 14
  %53 = ptrtoint ptr %next_to_clean42.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %next_to_clean42.i, align 4
  %call43.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %i.198.i, i32 noundef %54) #17
  %55 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx26.i, align 4
  %next_to_use51.i = getelementptr inbounds %struct.hnae_queue, ptr %56, i32 0, i32 4, i32 13
  %57 = ptrtoint ptr %next_to_use51.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %next_to_use51.i, align 8
  %call52.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %i.198.i, i32 noundef %58) #17
  %inc.i = add nuw i32 %i.198.i, 1
  %59 = ptrtoint ptr %q_num.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %q_num.i, align 4
  %cmp20.i = icmp ult i32 %inc.i, %60
  br i1 %cmp20.i, label %do.end24.i.do.end24.i_crit_edge, label %do.end24.i.hns_nic_dump.exit_crit_edge

do.end24.i.hns_nic_dump.exit_crit_edge:           ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hns_nic_dump.exit

do.end24.i.do.end24.i_crit_edge:                  ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end24.i

hns_nic_dump.exit:                                ; preds = %do.end24.i.hns_nic_dump.exit_crit_edge, %if.end18.i.hns_nic_dump.exit_crit_edge
  %netdev.i = getelementptr i8, ptr %work, i32 -96
  %61 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %netdev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %cond.i = select i1 %cmp.i, ptr @.str.59, ptr @.str.60
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %62, ptr noundef nonnull @.str.58, ptr noundef nonnull %cond.i) #17
  tail call void @rtnl_lock() #14
  %63 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %netdev.i, align 4
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %64, i32 0, i32 103
  %65 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %_tx.i.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %67 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %66, i32 0, i32 12
  %68 = ptrtoint ptr %trans_start.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %trans_start.i.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %67)
  %cmp.not.i.i.i = icmp eq i32 %69, %67
  br i1 %cmp.not.i.i.i, label %hns_nic_dump.exit.netif_trans_update.exit.i_crit_edge, label %do.body5.i.i.i

hns_nic_dump.exit.netif_trans_update.exit.i_crit_edge: ; preds = %hns_nic_dump.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %netif_trans_update.exit.i

do.body5.i.i.i:                                   ; preds = %hns_nic_dump.exit
  call void @__sanitizer_cov_trace_pc() #16
  %70 = ptrtoint ptr %trans_start.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile i32 %67, ptr %trans_start.i.i.i, align 16
  br label %netif_trans_update.exit.i

netif_trans_update.exit.i:                        ; preds = %do.body5.i.i.i, %hns_nic_dump.exit.netif_trans_update.exit.i_crit_edge
  %71 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %netdev.i, align 4
  tail call void @hns_nic_net_reinit(ptr noundef %72) #14
  tail call void @rtnl_unlock() #14
  br label %hns_nic_reset_subtask.exit

hns_nic_reset_subtask.exit:                       ; preds = %netif_trans_update.exit.i, %lor.lhs.false8.i.hns_nic_reset_subtask.exit_crit_edge, %lor.lhs.false.i.hns_nic_reset_subtask.exit_crit_edge, %if.end.i.hns_nic_reset_subtask.exit_crit_edge, %entry.hns_nic_reset_subtask.exit_crit_edge
  %netdev = getelementptr i8, ptr %work, i32 -96
  %73 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %netdev, align 4
  %ae_handle.i7 = getelementptr i8, ptr %74, i32 2332
  %75 = ptrtoint ptr %ae_handle.i7 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ae_handle.i7, align 4
  %phy_dev.i = getelementptr inbounds %struct.hnae_handle, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %phy_dev.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %phy_dev.i, align 4
  %tobool.not.i8 = icmp eq ptr %78, null
  br i1 %tobool.not.i8, label %hns_nic_reset_subtask.exit.if.end4.i_crit_edge, label %if.then.i

hns_nic_reset_subtask.exit.if.end4.i_crit_edge:   ; preds = %hns_nic_reset_subtask.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i

if.then.i:                                        ; preds = %hns_nic_reset_subtask.exit
  %phy_if.i = getelementptr inbounds %struct.hnae_handle, ptr %76, i32 0, i32 3
  %79 = ptrtoint ptr %phy_if.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %phy_if.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %80)
  %cmp.not.i = icmp eq i32 %80, 15
  br i1 %cmp.not.i, label %if.end.i9, label %if.then.i.hns_nic_update_link_status.exit_crit_edge

if.then.i.hns_nic_update_link_status.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hns_nic_update_link_status.exit

if.end.i9:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %call3.i = tail call i32 @genphy_read_status(ptr noundef nonnull %78) #14
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i9, %hns_nic_reset_subtask.exit.if.end4.i_crit_edge
  tail call void @hns_nic_adjust_link(ptr noundef %74) #14
  br label %hns_nic_update_link_status.exit

hns_nic_update_link_status.exit:                  ; preds = %if.end4.i, %if.then.i.hns_nic_update_link_status.exit_crit_edge
  %dev = getelementptr inbounds %struct.hnae_handle, ptr %1, i32 0, i32 1
  %81 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev, align 4
  %ops = getelementptr inbounds %struct.hnae_ae_dev, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ops, align 4
  %update_led_status = getelementptr inbounds %struct.hnae_ae_ops, ptr %84, i32 0, i32 36
  %85 = ptrtoint ptr %update_led_status to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %update_led_status, align 4
  tail call void %86(ptr noundef %1) #14
  %87 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %netdev, align 4
  %ae_handle.i10 = getelementptr i8, ptr %88, i32 2332
  %89 = ptrtoint ptr %ae_handle.i10 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ae_handle.i10, align 4
  %dev.i = getelementptr inbounds %struct.hnae_handle, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev.i, align 4
  %ops.i = getelementptr inbounds %struct.hnae_ae_dev, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ops.i, align 4
  %update_stats.i = getelementptr inbounds %struct.hnae_ae_ops, ptr %94, i32 0, i32 32
  %95 = ptrtoint ptr %update_stats.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %update_stats.i, align 4
  %stats.i = getelementptr inbounds %struct.net_device, ptr %88, i32 0, i32 36
  tail call void %96(ptr noundef %90, ptr noundef %stats.i) #14
  %97 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %state.i, align 4
  %99 = and i32 %98, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool.not.i12 = icmp eq i32 %99, 0
  br i1 %tobool.not.i12, label %do.end.i, label %hns_nic_update_link_status.exit.hns_nic_service_event_complete.exit_crit_edge, !prof !196

hns_nic_update_link_status.exit.hns_nic_service_event_complete.exit_crit_edge: ; preds = %hns_nic_update_link_status.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %hns_nic_service_event_complete.exit

do.end.i:                                         ; preds = %hns_nic_update_link_status.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 2034, i32 noundef 9, ptr noundef null) #14
  br label %hns_nic_service_event_complete.exit

hns_nic_service_event_complete.exit:              ; preds = %do.end.i, %hns_nic_update_link_status.exit.hns_nic_service_event_complete.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !203
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %state.i) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hns_nic_try_get_ae(ptr noundef %ndev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %netdev = getelementptr i8, ptr %ndev, i32 2324
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %dev = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %port_id = getelementptr i8, ptr %ndev, i32 2312
  %4 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_id, align 8
  %call1 = tail call ptr @hnae_get_handle(ptr noundef %dev, ptr noundef %3, i32 noundef %5, ptr noundef null) #14
  %tobool.not.i = icmp eq ptr %call1, null
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hns_nic_try_get_ae.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hns_nic_try_get_ae, %if.then6)) #14
          to label %cleanup [label %if.then6], !srcloc !202

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %dev7 = getelementptr i8, ptr %ndev, i32 2328
  %6 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev7, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hns_nic_try_get_ae.__UNIQUE_ID_ddebug484, ptr noundef %7, ptr noundef nonnull @.str.39) #14
  br label %cleanup

if.end8:                                          ; preds = %entry
  %ae_handle = getelementptr i8, ptr %ndev, i32 2332
  %8 = ptrtoint ptr %ae_handle to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1, ptr %ae_handle, align 4
  %call9 = tail call i32 @hns_nic_init_phy(ptr noundef %ndev, ptr noundef nonnull %call1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end16, label %do.end14

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %dev15 = getelementptr i8, ptr %ndev, i32 2328
  %9 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev15, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.76) #17
  br label %out_init_ring_data

if.end16:                                         ; preds = %if.end8
  %11 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ae_handle, align 4
  %enet_ver.i = getelementptr i8, ptr %ndev, i32 2308
  %13 = ptrtoint ptr %enet_ver.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %enet_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %14)
  %cmp.i52 = icmp eq i32 %14, 3552816
  %q_num.i = getelementptr inbounds %struct.hnae_handle, ptr %12, i32 0, i32 5
  %15 = ptrtoint ptr %q_num.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %q_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %16)
  %cmp1.i = icmp sgt i32 %16, 16
  br i1 %cmp1.i, label %if.then.i, label %if.end8.i.i.i

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %18, ptr noundef nonnull @.str.80, i32 noundef %16) #17
  br label %out_init_ring_data

if.end8.i.i.i:                                    ; preds = %if.end16
  %19 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %16, i32 256) #14
  %20 = extractvalue { i32, i1 } %19, 1
  %21 = extractvalue { i32, i1 } %19, 0
  %22 = shl nuw nsw i32 %21, 1
  %retval.0.i.i = select i1 %20, i32 -1, i32 %22
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i, i32 noundef 3520) #18
  %ring_data.i = getelementptr i8, ptr %ndev, i32 2348
  %23 = ptrtoint ptr %ring_data.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call9.i.i.i, ptr %ring_data.i, align 4
  %tobool.not.i53 = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i53, label %if.end8.i.i.i.out_init_ring_data_crit_edge, label %for.cond.preheader.i

if.end8.i.i.i.out_init_ring_data_crit_edge:       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_init_ring_data

for.cond.preheader.i:                             ; preds = %if.end8.i.i.i
  %24 = ptrtoint ptr %q_num.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %q_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp983.i = icmp sgt i32 %25, 0
  br i1 %cmp983.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.for.cond16.preheader.i_crit_edge

for.cond.preheader.i.for.cond16.preheader.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond16.preheader.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %cond.i = select i1 %cmp.i52, ptr @hns_nic_tx_fini_pro, ptr @hns_nic_tx_fini_pro_v2
  br label %for.body.i

for.cond16.preheader.i:                           ; preds = %for.body.i.for.cond16.preheader.i_crit_edge, %for.cond.preheader.i.for.cond16.preheader.i_crit_edge
  %.lcssa.i = phi i32 [ %25, %for.cond.preheader.i.for.cond16.preheader.i_crit_edge ], [ %42, %for.body.i.for.cond16.preheader.i_crit_edge ]
  %26 = ptrtoint ptr %q_num.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %q_num.i, align 4
  %mul85.i = shl i32 %27, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa.i, i32 %mul85.i)
  %cmp1886.i = icmp slt i32 %.lcssa.i, %mul85.i
  br i1 %cmp1886.i, label %for.body19.lr.ph.i, label %for.cond16.preheader.i.if.end20_crit_edge

for.cond16.preheader.i.if.end20_crit_edge:        ; preds = %for.cond16.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

for.body19.lr.ph.i:                               ; preds = %for.cond16.preheader.i
  %cond31.i = select i1 %cmp.i52, ptr @hns_nic_rx_fini_pro, ptr @hns_nic_rx_fini_pro_v2
  br label %for.body19.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.084.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %28 = ptrtoint ptr %ring_data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ring_data.i, align 4
  %arrayidx.i = getelementptr %struct.hns_nic_ring_data, ptr %29, i32 %i.084.i
  %queue_index.i = getelementptr %struct.hns_nic_ring_data, ptr %29, i32 %i.084.i, i32 3
  %30 = ptrtoint ptr %queue_index.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %i.084.i, ptr %queue_index.i, align 4
  %arrayidx11.i = getelementptr %struct.hnae_handle, ptr %12, i32 0, i32 17, i32 %i.084.i
  %31 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx11.i, align 4
  %tx_ring.i = getelementptr inbounds %struct.hnae_queue, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %tx_ring.i, ptr %arrayidx.i, align 8
  %poll_one.i = getelementptr %struct.hns_nic_ring_data, ptr %29, i32 %i.084.i, i32 4
  %34 = ptrtoint ptr %poll_one.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @hns_nic_tx_poll_one, ptr %poll_one.i, align 8
  %fini_process.i = getelementptr %struct.hns_nic_ring_data, ptr %29, i32 %i.084.i, i32 6
  %35 = ptrtoint ptr %fini_process.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %cond.i, ptr %fini_process.i, align 8
  %36 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %netdev, align 4
  %napi.i = getelementptr %struct.hns_nic_ring_data, ptr %29, i32 %i.084.i, i32 1
  tail call void @netif_napi_add(ptr noundef %37, ptr noundef %napi.i, ptr noundef nonnull @hns_nic_common_poll, i32 noundef 64) #14
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i, align 8
  %irq_init_flag.i = getelementptr inbounds %struct.hnae_ring, ptr %39, i32 0, i32 16
  %40 = ptrtoint ptr %irq_init_flag.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %irq_init_flag.i, align 4
  %inc.i = add nuw nsw i32 %i.084.i, 1
  %41 = ptrtoint ptr %q_num.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %q_num.i, align 4
  %cmp9.i = icmp slt i32 %inc.i, %42
  br i1 %cmp9.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.cond16.preheader.i_crit_edge

for.body.i.for.cond16.preheader.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond16.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body19.i:                                     ; preds = %for.body19.i.for.body19.i_crit_edge, %for.body19.lr.ph.i
  %43 = phi i32 [ %27, %for.body19.lr.ph.i ], [ %61, %for.body19.i.for.body19.i_crit_edge ]
  %i.187.i = phi i32 [ %.lcssa.i, %for.body19.lr.ph.i ], [ %inc38.i, %for.body19.i.for.body19.i_crit_edge ]
  %44 = ptrtoint ptr %ring_data.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ring_data.i, align 4
  %arrayidx21.i = getelementptr %struct.hns_nic_ring_data, ptr %45, i32 %i.187.i
  %sub.i = sub i32 %i.187.i, %43
  %queue_index23.i = getelementptr %struct.hns_nic_ring_data, ptr %45, i32 %i.187.i, i32 3
  %46 = ptrtoint ptr %queue_index23.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub.i, ptr %queue_index23.i, align 4
  %47 = ptrtoint ptr %q_num.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %q_num.i, align 4
  %sub26.i = sub i32 %i.187.i, %48
  %arrayidx27.i = getelementptr %struct.hnae_handle, ptr %12, i32 0, i32 17, i32 %sub26.i
  %49 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx27.i, align 4
  %rx_ring.i = getelementptr inbounds %struct.hnae_queue, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %rx_ring.i, ptr %arrayidx21.i, align 8
  %poll_one29.i = getelementptr %struct.hns_nic_ring_data, ptr %45, i32 %i.187.i, i32 4
  %52 = ptrtoint ptr %poll_one29.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @hns_nic_rx_poll_one, ptr %poll_one29.i, align 8
  %ex_process.i = getelementptr %struct.hns_nic_ring_data, ptr %45, i32 %i.187.i, i32 5
  %53 = ptrtoint ptr %ex_process.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @hns_nic_rx_up_pro, ptr %ex_process.i, align 4
  %fini_process32.i = getelementptr %struct.hns_nic_ring_data, ptr %45, i32 %i.187.i, i32 6
  %54 = ptrtoint ptr %fini_process32.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %cond31.i, ptr %fini_process32.i, align 8
  %55 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %netdev, align 4
  %napi34.i = getelementptr %struct.hns_nic_ring_data, ptr %45, i32 %i.187.i, i32 1
  tail call void @netif_napi_add(ptr noundef %56, ptr noundef %napi34.i, ptr noundef nonnull @hns_nic_common_poll, i32 noundef 64) #14
  %57 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx21.i, align 8
  %irq_init_flag36.i = getelementptr inbounds %struct.hnae_ring, ptr %58, i32 0, i32 16
  %59 = ptrtoint ptr %irq_init_flag36.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %irq_init_flag36.i, align 4
  %inc38.i = add nsw i32 %i.187.i, 1
  %60 = ptrtoint ptr %q_num.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %q_num.i, align 4
  %mul.i = shl i32 %61, 1
  %cmp18.i = icmp slt i32 %inc38.i, %mul.i
  br i1 %cmp18.i, label %for.body19.i.for.body19.i_crit_edge, label %for.body19.i.if.end20_crit_edge

for.body19.i.if.end20_crit_edge:                  ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

for.body19.i.for.body19.i_crit_edge:              ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body19.i

if.end20:                                         ; preds = %for.body19.i.if.end20_crit_edge, %for.cond16.preheader.i.if.end20_crit_edge
  %62 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ae_handle, align 4
  %64 = ptrtoint ptr %enet_ver.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %enet_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %65)
  %cmp.i57 = icmp eq i32 %65, 3552816
  %ops.i = getelementptr i8, ptr %ndev, i32 2336
  br i1 %cmp.i57, label %if.then.i58, label %if.else.i

if.then.i58:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  %66 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @fill_desc, ptr %ops.i, align 8
  %get_rxd_bnum.i = getelementptr i8, ptr %ndev, i32 2344
  %67 = ptrtoint ptr %get_rxd_bnum.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @get_rx_desc_bnum, ptr %get_rxd_bnum.i, align 8
  %maybe_stop_tx.i = getelementptr i8, ptr %ndev, i32 2340
  %68 = ptrtoint ptr %maybe_stop_tx.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @hns_nic_maybe_stop_tx, ptr %maybe_stop_tx.i, align 4
  br label %hns_nic_set_priv_ops.exit

if.else.i:                                        ; preds = %if.end20
  %get_rxd_bnum4.i = getelementptr i8, ptr %ndev, i32 2344
  %69 = ptrtoint ptr %get_rxd_bnum4.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @get_v2rx_desc_bnum, ptr %get_rxd_bnum4.i, align 8
  %features.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 23
  %70 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %features.i, align 16
  %72 = and i64 %71, 1114112
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %72)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %if.else13.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %74 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @fill_tso_desc, ptr %ops.i, align 8
  %gso_max_size.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 137
  %75 = ptrtoint ptr %gso_max_size.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile i32 28672, ptr %gso_max_size.i.i, align 8
  br label %if.end.i59

if.else13.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %76 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @fill_v2_desc, ptr %ops.i, align 8
  br label %if.end.i59

if.end.i59:                                       ; preds = %if.else13.i, %if.then8.i
  %hns_nic_maybe_stop_tso.sink.i = phi ptr [ @hns_nic_maybe_stop_tx, %if.else13.i ], [ @hns_nic_maybe_stop_tso, %if.then8.i ]
  %77 = getelementptr i8, ptr %ndev, i32 2340
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %hns_nic_maybe_stop_tso.sink.i, ptr %77, align 4
  %dev.i = getelementptr inbounds %struct.hnae_handle, ptr %63, i32 0, i32 1
  %79 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev.i, align 4
  %ops18.i = getelementptr inbounds %struct.hnae_ae_dev, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %ops18.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ops18.i, align 4
  %set_tso_stats.i = getelementptr inbounds %struct.hnae_ae_ops, ptr %82, i32 0, i32 31
  %83 = ptrtoint ptr %set_tso_stats.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %set_tso_stats.i, align 4
  tail call void %84(ptr noundef %63, i32 noundef 1) #14
  br label %hns_nic_set_priv_ops.exit

hns_nic_set_priv_ops.exit:                        ; preds = %if.end.i59, %if.then.i58
  %call21 = tail call i32 @register_netdev(ptr noundef %ndev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %hns_nic_set_priv_ops.exit.cleanup_crit_edge, label %do.end26

hns_nic_set_priv_ops.exit.cleanup_crit_edge:      ; preds = %hns_nic_set_priv_ops.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end26:                                         ; preds = %hns_nic_set_priv_ops.exit
  call void @__sanitizer_cov_trace_pc() #16
  %dev27 = getelementptr i8, ptr %ndev, i32 2328
  %85 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev27, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.78) #17
  tail call fastcc void @hns_nic_uninit_ring_data(ptr noundef %add.ptr.i)
  %ring_data = getelementptr i8, ptr %ndev, i32 2348
  %87 = ptrtoint ptr %ring_data to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %ring_data, align 4
  br label %out_init_ring_data

out_init_ring_data:                               ; preds = %do.end26, %if.end8.i.i.i.out_init_ring_data_crit_edge, %if.then.i, %do.end14
  %ret.0 = phi i32 [ %call9, %do.end14 ], [ %call21, %do.end26 ], [ -12, %if.then.i ], [ -12, %if.end8.i.i.i.out_init_ring_data_crit_edge ]
  %88 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ae_handle, align 4
  tail call void @hnae_put_handle(ptr noundef %89) #14
  %90 = ptrtoint ptr %ae_handle to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %ae_handle, align 4
  br label %cleanup

cleanup:                                          ; preds = %out_init_ring_data, %hns_nic_set_priv_ops.exit.cleanup_crit_edge, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %hns_nic_set_priv_ops.exit.cleanup_crit_edge ], [ -19, %if.then6 ], [ %ret.0, %out_init_ring_data ], [ -19, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_nic_notifier_action(ptr noundef %nb, i32 noundef %action, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr i8, ptr %nb, i32 -140
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %call = tail call fastcc i32 @hns_nic_try_get_ae(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @hnae_unregister_notifier(ptr noundef %nb) #14
  %2 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %nb, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hnae_register_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_nic_net_open(ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ae_handle = getelementptr i8, ptr %ndev, i32 2332
  %0 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ae_handle, align 4
  %state = getelementptr i8, ptr %ndev, i32 2368
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %link = getelementptr i8, ptr %ndev, i32 2352
  %4 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %link, align 8
  tail call void @netif_carrier_off(ptr noundef %ndev) #14
  %q_num = getelementptr inbounds %struct.hnae_handle, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %q_num to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %q_num, align 4
  %call2 = tail call i32 @netif_set_real_num_tx_queues(ptr noundef %ndev, i32 noundef %6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.43, i32 noundef %call2) #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %q_num to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %q_num, align 4
  %call6 = tail call i32 @netif_set_real_num_rx_queues(ptr noundef %ndev, i32 noundef %8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.44, i32 noundef %call6) #17
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %call10 = tail call fastcc i32 @hns_nic_net_up(ptr noundef %ndev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.then12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.45, i32 noundef %call10) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end9.cleanup_crit_edge, %if.then8, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then3 ], [ %call6, %if.then8 ], [ %call10, %if.then12 ], [ -16, %entry.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_nic_net_stop(ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @hns_nic_net_down(ptr noundef %ndev)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_nic_net_xmit(ptr noundef %skb, ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ring_data = getelementptr i8, ptr %ndev, i32 2348
  %0 = ptrtoint ptr %ring_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring_data, align 4
  %queue_mapping = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %2 = ptrtoint ptr %queue_mapping to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %queue_mapping, align 8
  %idxprom = zext i16 %3 to i32
  %arrayidx = getelementptr %struct.hns_nic_ring_data, ptr %1, i32 %idxprom
  %call1 = tail call i32 @hns_nic_net_xmit_hw(ptr noundef %ndev, ptr noundef %skb, ptr noundef %arrayidx)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @hns_nic_select_queue(ptr noundef %ndev, ptr noundef %skb, ptr nocapture noundef readnone %sb_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %enet_ver = getelementptr i8, ptr %ndev, i32 2308
  %0 = ptrtoint ptr %enet_ver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enet_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %1)
  %cmp = icmp eq i32 %1, 3552816
  br i1 %cmp, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %call2 = tail call zeroext i16 @netdev_pick_tx(ptr noundef %ndev, ptr noundef %skb, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %if.else, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i16 [ %call2, %if.else ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_nic_set_rx_mode(ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ae_handle = getelementptr i8, ptr %ndev, i32 2332
  %0 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ae_handle, align 4
  %dev = getelementptr inbounds %struct.hnae_handle, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %ops = getelementptr inbounds %struct.hnae_ae_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %set_promisc_mode = getelementptr inbounds %struct.hnae_ae_ops, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %set_promisc_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_promisc_mode, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %flags = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 14
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %and = lshr i32 %9, 8
  %and.lobit = and i32 %and, 1
  tail call void %7(ptr noundef %1, i32 noundef %and.lobit) #14
  br label %if.end9

if.end9:                                          ; preds = %if.then, %entry.if.end9_crit_edge
  %10 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ae_handle, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.47) #17
  br label %hns_set_multicast_list.exit

if.end.i:                                         ; preds = %if.end9
  %dev.i = getelementptr inbounds %struct.hnae_handle, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %ops.i = getelementptr inbounds %struct.hnae_ae_dev, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %clr_mc_addr.i = getelementptr inbounds %struct.hnae_ae_ops, ptr %15, i32 0, i32 28
  %16 = ptrtoint ptr %clr_mc_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clr_mc_addr.i, align 4
  %tobool1.not.i = icmp eq ptr %17, null
  br i1 %tobool1.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then2.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.i

if.then2.i:                                       ; preds = %if.end.i
  %call6.i = tail call i32 %17(ptr noundef nonnull %11) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then2.i.if.end10.i_crit_edge, label %if.then8.i

if.then2.i.if.end10.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.48) #17
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.then2.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  %ops12.i = getelementptr inbounds %struct.hnae_ae_dev, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %ops12.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops12.i, align 4
  %set_mc_addr.i = getelementptr inbounds %struct.hnae_ae_ops, ptr %21, i32 0, i32 29
  %22 = ptrtoint ptr %set_mc_addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_mc_addr.i, align 4
  %tobool13.not.i = icmp eq ptr %23, null
  br i1 %tobool13.not.i, label %if.end10.i.hns_set_multicast_list.exit_crit_edge, label %if.then14.i

if.end10.i.hns_set_multicast_list.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hns_set_multicast_list.exit

if.then14.i:                                      ; preds = %if.end10.i
  %mc.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 66
  %24 = ptrtoint ptr %mc.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %ha.047.i = load ptr, ptr %mc.i, align 4
  %cmp.not48.i = icmp eq ptr %ha.047.i, %mc.i
  br i1 %cmp.not48.i, label %if.then14.i.hns_set_multicast_list.exit_crit_edge, label %if.then14.i.for.body.i_crit_edge

if.then14.i.for.body.i_crit_edge:                 ; preds = %if.then14.i
  br label %for.body.i

if.then14.i.hns_set_multicast_list.exit_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hns_set_multicast_list.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then14.i.for.body.i_crit_edge
  %ha.049.i = phi ptr [ %ha.0.i, %for.inc.i.for.body.i_crit_edge ], [ %ha.047.i, %if.then14.i.for.body.i_crit_edge ]
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  %ops19.i = getelementptr inbounds %struct.hnae_ae_dev, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %ops19.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops19.i, align 4
  %set_mc_addr20.i = getelementptr inbounds %struct.hnae_ae_ops, ptr %28, i32 0, i32 29
  %29 = ptrtoint ptr %set_mc_addr20.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %set_mc_addr20.i, align 4
  %addr.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.049.i, i32 0, i32 2
  %call21.i = tail call i32 %30(ptr noundef nonnull %11, ptr noundef %addr.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then23.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then23.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.49) #17
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then23.i, %for.body.i.for.inc.i_crit_edge
  %31 = ptrtoint ptr %ha.049.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %ha.0.i = load ptr, ptr %ha.049.i, align 4
  %cmp.not.i = icmp eq ptr %ha.0.i, %mc.i
  br i1 %cmp.not.i, label %for.inc.i.hns_set_multicast_list.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.hns_set_multicast_list.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hns_set_multicast_list.exit

hns_set_multicast_list.exit:                      ; preds = %for.inc.i.hns_set_multicast_list.exit_crit_edge, %if.then14.i.hns_set_multicast_list.exit_crit_edge, %if.end10.i.hns_set_multicast_list.exit_crit_edge, %if.then.i
  %uc.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 65
  %call.i = tail call i32 @__hw_addr_sync_dev(ptr noundef %uc.i, ptr noundef %ndev, ptr noundef nonnull @hns_nic_uc_sync, ptr noundef nonnull @hns_nic_uc_unsync) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %hns_set_multicast_list.exit.if.end13_crit_edge, label %if.then12

hns_set_multicast_list.exit.if.end13_crit_edge:   ; preds = %hns_set_multicast_list.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then12:                                        ; preds = %hns_set_multicast_list.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.46) #17
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %hns_set_multicast_list.exit.if.end13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_nic_net_set_mac_address(ptr noundef %ndev, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ae_handle = getelementptr i8, ptr %ndev, i32 2332
  %0 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ae_handle, align 4
  %tobool.not = icmp eq ptr %p, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %2 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sa_data, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %lor.lhs.false
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %6 to i32
  %or.i.i = or i32 %3, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  %dev = getelementptr inbounds %struct.hnae_handle, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %ops = getelementptr inbounds %struct.hnae_ae_dev, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %set_mac_addr = getelementptr inbounds %struct.hnae_ae_ops, ptr %10, i32 0, i32 25
  %11 = ptrtoint ptr %set_mac_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_mac_addr, align 4
  %call4 = tail call i32 %12(ptr noundef %1, ptr noundef %sa_data) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.50, i32 noundef %call4) #17
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dev_addr_mod(ptr noundef %ndev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %is_valid_ether_addr.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then6 ], [ 0, %if.end7 ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ], [ -99, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_do_ioctl_running(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_nic_change_mtu(ptr noundef %ndev, i32 noundef %new_mtu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ae_handle = getelementptr i8, ptr %ndev, i32 2332
  %0 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ae_handle, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %new_mtu)
  %cmp = icmp slt i32 %new_mtu, 68
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %mtu = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 20
  %4 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %new_mtu)
  %cmp2 = icmp eq i32 %5, %new_mtu
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.hnae_handle, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %ops = getelementptr inbounds %struct.hnae_ae_dev, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %set_mtu = getelementptr inbounds %struct.hnae_ae_ops, ptr %9, i32 0, i32 30
  %10 = ptrtoint ptr %set_mtu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_mtu, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end4.cleanup_crit_edge, label %if.end6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.end4
  br i1 %tobool.i.not, label %if.end6.if.end10_crit_edge, label %if.then8

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @hns_nic_net_down(ptr noundef %ndev) #14
  tail call void @msleep(i32 noundef 100) #14
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6.if.end10_crit_edge
  %enet_ver = getelementptr i8, ptr %ndev, i32 2308
  %12 = ptrtoint ptr %enet_ver to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %enet_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %13)
  %cmp11.not = icmp eq i32 %13, 3552816
  br i1 %cmp11.not, label %if.end10.if.end21_crit_edge, label %land.lhs.true

if.end10.if.end21_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end10
  %14 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6001, i32 %15)
  %cmp13 = icmp ult i32 %15, 6001
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000, i32 %new_mtu)
  %cmp15 = icmp ugt i32 %new_mtu, 6000
  %or.cond = and i1 %cmp15, %cmp13
  br i1 %or.cond, label %if.then16, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then16:                                        ; preds = %land.lhs.true
  %q_num.i = getelementptr inbounds %struct.hnae_handle, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %q_num.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %q_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp22.i = icmp sgt i32 %17, 0
  br i1 %cmp22.i, label %if.then16.for.body.i_crit_edge, label %if.then16.hnae_reinit_all_ring_desc.exit_crit_edge

if.then16.hnae_reinit_all_ring_desc.exit_crit_edge: ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  br label %hnae_reinit_all_ring_desc.exit

if.then16.for.body.i_crit_edge:                   ; preds = %if.then16
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc8.i.for.body.i_crit_edge, %if.then16.for.body.i_crit_edge
  %i.023.i = phi i32 [ %inc9.i, %for.inc8.i.for.body.i_crit_edge ], [ 0, %if.then16.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.hnae_handle, ptr %1, i32 0, i32 17, i32 %i.023.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %desc_num.i = getelementptr inbounds %struct.hnae_queue, ptr %19, i32 0, i32 4, i32 9
  %20 = ptrtoint ptr %desc_num.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %desc_num.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp220.not.i = icmp eq i16 %21, 0
  br i1 %cmp220.not.i, label %for.body.i.for.inc8.i_crit_edge, label %for.body4.lr.ph.i

for.body.i.for.inc8.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc8.i

for.body4.lr.ph.i:                                ; preds = %for.body.i
  %desc_cb.i = getelementptr inbounds %struct.hnae_queue, ptr %19, i32 0, i32 4, i32 2
  %desc.i = getelementptr inbounds %struct.hnae_queue, ptr %19, i32 0, i32 4, i32 1
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.body4.i.for.body4.i_crit_edge, %for.body4.lr.ph.i
  %j.021.i = phi i32 [ 0, %for.body4.lr.ph.i ], [ %inc.i, %for.body4.i.for.body4.i_crit_edge ]
  %22 = ptrtoint ptr %desc_cb.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %desc_cb.i, align 8
  %arrayidx5.i = getelementptr %struct.hnae_desc_cb, ptr %23, i32 %j.021.i
  %24 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx5.i, align 4
  %conv6.i = zext i32 %25 to i64
  %26 = tail call i64 @llvm.bswap.i64(i64 %conv6.i) #14
  %27 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %desc.i, align 4
  %arrayidx7.i = getelementptr %struct.hnae_desc, ptr %28, i32 %j.021.i
  %29 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %26, ptr %arrayidx7.i, align 1
  %inc.i = add nuw nsw i32 %j.021.i, 1
  %30 = ptrtoint ptr %desc_num.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %desc_num.i, align 8
  %conv.i = zext i16 %31 to i32
  %cmp2.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp2.i, label %for.body4.i.for.body4.i_crit_edge, label %for.body4.i.for.inc8.i_crit_edge

for.body4.i.for.inc8.i_crit_edge:                 ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc8.i

for.body4.i.for.body4.i_crit_edge:                ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body4.i

for.inc8.i:                                       ; preds = %for.body4.i.for.inc8.i_crit_edge, %for.body.i.for.inc8.i_crit_edge
  %inc9.i = add nuw nsw i32 %i.023.i, 1
  %32 = ptrtoint ptr %q_num.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %q_num.i, align 4
  %cmp.i = icmp slt i32 %inc9.i, %33
  br i1 %cmp.i, label %for.inc8.i.for.body.i_crit_edge, label %for.inc8.i.hnae_reinit_all_ring_desc.exit_crit_edge

for.inc8.i.hnae_reinit_all_ring_desc.exit_crit_edge: ; preds = %for.inc8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hnae_reinit_all_ring_desc.exit

for.inc8.i.for.body.i_crit_edge:                  ; preds = %for.inc8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

hnae_reinit_all_ring_desc.exit:                   ; preds = %for.inc8.i.hnae_reinit_all_ring_desc.exit_crit_edge, %if.then16.hnae_reinit_all_ring_desc.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !204
  tail call void @arm_heavy_mb() #14
  %34 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ae_handle, align 4
  %dev.i = getelementptr inbounds %struct.hnae_handle, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 4
  %ops1.i = getelementptr inbounds %struct.hnae_ae_dev, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %ops1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops1.i, align 4
  %get_rss_indir_size.i = getelementptr inbounds %struct.hnae_ae_ops, ptr %39, i32 0, i32 41
  %40 = ptrtoint ptr %get_rss_indir_size.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %get_rss_indir_size.i, align 4
  %call2.i = tail call i32 %41(ptr noundef %35) #14
  %mul.i = shl i32 %call2.i, 2
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i, i32 noundef 3520) #18
  %tobool.not212.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not212.i, label %hnae_reinit_all_ring_desc.exit.hns_nic_clear_all_rx_fetch.exit_crit_edge, label %if.end8.i.i191.i

hnae_reinit_all_ring_desc.exit.hns_nic_clear_all_rx_fetch.exit_crit_edge: ; preds = %hnae_reinit_all_ring_desc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %hns_nic_clear_all_rx_fetch.exit

if.end8.i.i191.i:                                 ; preds = %hnae_reinit_all_ring_desc.exit
  %get_rss215.i = getelementptr inbounds %struct.hnae_ae_ops, ptr %39, i32 0, i32 42
  %42 = ptrtoint ptr %get_rss215.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %get_rss215.i, align 4
  %call4216.i = tail call i32 %43(ptr noundef %35, ptr noundef nonnull %call9.i.i.i, ptr noundef null, ptr noundef null) #14
  %call9.i.i190.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i, i32 noundef 3520) #18
  %tobool6.not.i = icmp eq ptr %call9.i.i190.i, null
  br i1 %tobool6.not.i, label %if.end8.i.i191.i.cur_indir_alloc_err.i_crit_edge, label %if.end8.i

if.end8.i.i191.i.cur_indir_alloc_err.i_crit_edge: ; preds = %if.end8.i.i191.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cur_indir_alloc_err.i

if.end8.i:                                        ; preds = %if.end8.i.i191.i
  %44 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ae_handle, align 4
  %dev.i.i = getelementptr inbounds %struct.hnae_handle, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i.i, align 4
  %ops1.i.i = getelementptr inbounds %struct.hnae_ae_dev, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %ops1.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops1.i.i, align 4
  %set_loopback.i.i = getelementptr inbounds %struct.hnae_ae_ops, ptr %49, i32 0, i32 14
  %50 = ptrtoint ptr %set_loopback.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %set_loopback.i.i, align 4
  %call2.i.i = tail call i32 %51(ptr noundef %45, i32 noundef 1, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end8.i.enable_serdes_lb_err.i_crit_edge

if.end8.i.enable_serdes_lb_err.i_crit_edge:       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %enable_serdes_lb_err.i

if.end.i.i:                                       ; preds = %if.end8.i
  %start.i.i = getelementptr inbounds %struct.hnae_ae_ops, ptr %49, i32 0, i32 4
  %52 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %start.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %53, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end8.i.i_crit_edge, label %cond.end.i.i

if.end.i.i.if.end8.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i.i

cond.end.i.i:                                     ; preds = %if.end.i.i
  %call5.i.i = tail call i32 %53(ptr noundef %45) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %cond.end.i.i.if.end8.i.i_crit_edge, label %cond.end.i.i.enable_serdes_lb_err.i_crit_edge

cond.end.i.i.enable_serdes_lb_err.i_crit_edge:    ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %enable_serdes_lb_err.i

cond.end.i.i.if.end8.i.i_crit_edge:               ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %cond.end.i.i.if.end8.i.i_crit_edge, %if.end.i.i.if.end8.i.i_crit_edge
  %phy_if.i.i = getelementptr inbounds %struct.hnae_handle, ptr %45, i32 0, i32 3
  %54 = ptrtoint ptr %phy_if.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %phy_if.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %55)
  %cmp.not.i.i = icmp eq i32 %55, 15
  %..i.i = select i1 %cmp.not.i.i, i32 10000, i32 1000
  %adjust_link.i.i = getelementptr inbounds %struct.hnae_ae_ops, ptr %49, i32 0, i32 12
  %56 = ptrtoint ptr %adjust_link.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %adjust_link.i.i, align 4
  tail call void %57(ptr noundef %45, i32 noundef %..i.i, i32 noundef 1) #14
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end8.i.i
  %__ms.029.i.i = phi i32 [ 300, %if.end8.i.i ], [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %__ms.029.i.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748000) #14
  %tobool11.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool11.not.i.i, label %for.cond.preheader.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

for.cond.preheader.i:                             ; preds = %while.body.i.i
  %q_num.i63 = getelementptr inbounds %struct.hnae_handle, ptr %35, i32 0, i32 5
  %59 = ptrtoint ptr %q_num.i63 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %q_num.i63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp243.i = icmp sgt i32 %60, 0
  br i1 %cmp243.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.out.i_crit_edge

for.cond.preheader.i.out.i_crit_edge:             ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %div161.i = and i32 %call2.i, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div161.i)
  %cmp32237.not.i = icmp eq i32 %div161.i, 0
  %set_rss.i = getelementptr inbounds %struct.hnae_ae_ops, ptr %39, i32 0, i32 43
  %ring_data.i = getelementptr i8, ptr %ndev, i32 2348
  br label %for.body.i66

for.body.i66:                                     ; preds = %for.inc89.i.for.body.i66_crit_edge, %for.body.lr.ph.i
  %i.0244.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc90.i, %for.inc89.i.for.body.i66_crit_edge ]
  %arrayidx.i64 = getelementptr %struct.hnae_handle, ptr %35, i32 0, i32 17, i32 %i.0244.i
  %61 = ptrtoint ptr %arrayidx.i64 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i64, align 4
  %rx_ring.i = getelementptr inbounds %struct.hnae_queue, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rx_ring.i, align 8
  %add.ptr.i65 = getelementptr i8, ptr %64, i32 28
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65) #14, !srcloc !205
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #14
  %67 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rx_ring.i, align 8
  %add.ptr16.i = getelementptr i8, ptr %68, i32 24
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #14, !srcloc !205
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #14
  %sub.i.i = sub i32 %70, %66
  %desc_num.i.i = getelementptr inbounds %struct.hnae_queue, ptr %62, i32 0, i32 4, i32 9
  %71 = ptrtoint ptr %desc_num.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %desc_num.i.i, align 8
  %conv.i.i = zext i16 %72 to i32
  %add.i.i = add i32 %sub.i.i, %conv.i.i
  %rem.i.i = srem i32 %add.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %65)
  %cmp20.not235.i = icmp eq i32 %69, %65
  br i1 %cmp20.not235.i, label %for.body.i66.for.inc89.i_crit_edge, label %while.body.lr.ph.i

for.body.i66.for.inc89.i_crit_edge:               ; preds = %for.body.i66
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc89.i

while.body.lr.ph.i:                               ; preds = %for.body.i66
  %desc_cb.i67 = getelementptr inbounds %struct.hnae_queue, ptr %62, i32 0, i32 4, i32 2
  %73 = ptrtoint ptr %desc_cb.i67 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %desc_cb.i67, align 8
  br label %while.body.i

while.body.i:                                     ; preds = %if.end24.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %head.0236.i = phi i32 [ %66, %while.body.lr.ph.i ], [ %spec.store.select.i, %if.end24.i.while.body.i_crit_edge ]
  %page_offset.i = getelementptr %struct.hnae_desc_cb, ptr %74, i32 %head.0236.i, i32 3
  %75 = ptrtoint ptr %page_offset.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %page_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp22.not.i = icmp eq i32 %76, 0
  br i1 %cmp22.not.i, label %if.end24.i, label %for.cond31.preheader.i

for.cond31.preheader.i:                           ; preds = %while.body.i
  br i1 %cmp32237.not.i, label %for.cond31.preheader.i.for.end.i_crit_edge, label %for.cond31.preheader.i.for.body34.i_crit_edge

for.cond31.preheader.i.for.body34.i_crit_edge:    ; preds = %for.cond31.preheader.i
  br label %for.body34.i

for.cond31.preheader.i.for.end.i_crit_edge:       ; preds = %for.cond31.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

if.end24.i:                                       ; preds = %while.body.i
  %inc.i68 = add i32 %head.0236.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i68, i32 %conv.i.i)
  %cmp25.i = icmp eq i32 %inc.i68, %conv.i.i
  %spec.store.select.i = select i1 %cmp25.i, i32 0, i32 %inc.i68
  %cmp20.not.i = icmp eq i32 %spec.store.select.i, %70
  br i1 %cmp20.not.i, label %if.end24.i.for.inc89.i_crit_edge, label %if.end24.i.while.body.i_crit_edge

if.end24.i.while.body.i_crit_edge:                ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

if.end24.i.for.inc89.i_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc89.i

for.body34.i:                                     ; preds = %for.body34.i.for.body34.i_crit_edge, %for.cond31.preheader.i.for.body34.i_crit_edge
  %j.0238.i = phi i32 [ %inc36.i, %for.body34.i.for.body34.i_crit_edge ], [ 0, %for.cond31.preheader.i.for.body34.i_crit_edge ]
  %arrayidx35.i = getelementptr i32, ptr %call9.i.i190.i, i32 %j.0238.i
  %77 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %i.0244.i, ptr %arrayidx35.i, align 4
  %inc36.i = add nuw nsw i32 %j.0238.i, 1
  %exitcond.not.i = icmp eq i32 %inc36.i, %div161.i
  br i1 %exitcond.not.i, label %for.body34.i.for.end.i_crit_edge, label %for.body34.i.for.body34.i_crit_edge

for.body34.i.for.body34.i_crit_edge:              ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body34.i

for.body34.i.for.end.i_crit_edge:                 ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.body34.i.for.end.i_crit_edge, %for.cond31.preheader.i.for.end.i_crit_edge
  %78 = ptrtoint ptr %set_rss.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %set_rss.i, align 4
  %call37.i = tail call i32 %79(ptr noundef %35, ptr noundef nonnull %call9.i.i190.i, ptr noundef null, i8 noundef zeroext 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %cmp39241.i = icmp sgt i32 %rem.i.i, 0
  br i1 %cmp39241.i, label %for.end.i.for.body41.i_crit_edge, label %for.end.i.for.inc89.i_crit_edge

for.end.i.for.inc89.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc89.i

for.end.i.for.body41.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body41.i

for.body41.i:                                     ; preds = %for.inc85.i.for.body41.i_crit_edge, %for.end.i.for.body41.i_crit_edge
  %j.1242.i = phi i32 [ %inc86.i, %for.inc85.i.for.body41.i_crit_edge ], [ 0, %for.end.i.for.body41.i_crit_edge ]
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 64, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #14
  %tobool.not.i194.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i194.i, label %for.body41.i.out.i_crit_edge, label %if.end45.i

for.body41.i.out.i_crit_edge:                     ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end45.i:                                       ; preds = %for.body41.i
  %call1.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 64) #14
  %80 = getelementptr inbounds %struct.anon.0, ptr %call.i.i.i, i32 0, i32 2
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %ndev, ptr %80, align 8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %82 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %84 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %len.i.i, align 4
  %86 = call ptr @memset(ptr %83, i32 255, i32 %85)
  %87 = load ptr, ptr %data.i.i, align 4
  %h_proto.i.i = getelementptr inbounds %struct.ethhdr, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %h_proto.i.i to i32
  call void @__asan_storeN_noabort(i32 %88, i32 2)
  store i16 2048, ptr %h_proto.i.i, align 1
  %89 = load i32, ptr %len.i.i, align 4
  %and.i.i = and i32 %89, -2
  %90 = load ptr, ptr %data.i.i, align 4
  %div.i.i = sdiv i32 %and.i.i, 2
  %arrayidx.i.i = getelementptr i8, ptr %90, i32 %div.i.i
  %sub.i195.i = add nsw i32 %div.i.i, -1
  %91 = call ptr @memset(ptr %arrayidx.i.i, i32 170, i32 %sub.i195.i)
  %queue_mapping.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 10
  %92 = ptrtoint ptr %queue_mapping.i.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 0, ptr %queue_mapping.i.i, align 8
  %93 = ptrtoint ptr %ring_data.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ring_data.i, align 4
  %call47.i = tail call i32 @hns_nic_net_xmit_hw(ptr noundef %ndev, ptr noundef nonnull %call.i.i.i, ptr noundef %94) #14
  br label %while.cond48.i

while.cond48.i:                                   ; preds = %while.body55.preheader.i.while.cond48.i_crit_edge, %if.end45.i
  %retry_times.0.i = phi i32 [ 0, %if.end45.i ], [ %inc49.i, %while.body55.preheader.i.while.cond48.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %retry_times.0.i)
  %exitcond251.not.i = icmp eq i32 %retry_times.0.i, 10
  br i1 %exitcond251.not.i, label %while.cond48.i.while.cond66.i.preheader_crit_edge, label %while.body55.preheader.i

while.cond48.i.while.cond66.i.preheader_crit_edge: ; preds = %while.cond48.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond66.i.preheader

while.body55.preheader.i:                         ; preds = %while.cond48.i
  %inc49.i = add nuw nsw i32 %retry_times.0.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %95(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %96(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %97 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %97(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %98 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %98(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %99 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %99(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %100(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %101(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %102 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %102(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %103 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %103(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %104(i32 noundef 214748000) #14
  %105 = ptrtoint ptr %ring_data.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ring_data.i, align 4
  %107 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ae_handle, align 4
  %q_num59.i = getelementptr inbounds %struct.hnae_handle, ptr %108, i32 0, i32 5
  %109 = ptrtoint ptr %q_num59.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %q_num59.i, align 4
  %add.i = add i32 %110, %i.0244.i
  %arrayidx60.i = getelementptr %struct.hns_nic_ring_data, ptr %106, i32 %add.i
  %poll_one.i = getelementptr %struct.hns_nic_ring_data, ptr %106, i32 %add.i, i32 4
  %111 = ptrtoint ptr %poll_one.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %poll_one.i, align 8
  %call61.i = tail call i32 %112(ptr noundef %arrayidx60.i, i32 noundef %rem.i.i, ptr noundef nonnull @hns_nic_drop_rx_fetch) #14
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %while.body55.preheader.i.while.cond48.i_crit_edge, label %while.body55.preheader.i.while.cond66.i.preheader_crit_edge

while.body55.preheader.i.while.cond66.i.preheader_crit_edge: ; preds = %while.body55.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond66.i.preheader

while.body55.preheader.i.while.cond48.i_crit_edge: ; preds = %while.body55.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond48.i

while.cond66.i.preheader:                         ; preds = %while.body55.preheader.i.while.cond66.i.preheader_crit_edge, %while.cond48.i.while.cond66.i.preheader_crit_edge
  br label %while.cond66.i

while.cond66.i:                                   ; preds = %while.body75.preheader.i.while.cond66.i_crit_edge, %while.cond66.i.preheader
  %retry_times.1.i = phi i32 [ %inc67.i, %while.body75.preheader.i.while.cond66.i_crit_edge ], [ 0, %while.cond66.i.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %retry_times.1.i)
  %exitcond252.not.i = icmp eq i32 %retry_times.1.i, 10
  br i1 %exitcond252.not.i, label %while.cond66.i.for.inc85.i_crit_edge, label %while.body75.preheader.i

while.cond66.i.for.inc85.i_crit_edge:             ; preds = %while.cond66.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc85.i

while.body75.preheader.i:                         ; preds = %while.cond66.i
  %inc67.i = add nuw nsw i32 %retry_times.1.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %113 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %113(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %114 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %114(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %115 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %115(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %116(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %117 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %117(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %118 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %118(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %119(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %120 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %120(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %121 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %121(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %122 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %122(i32 noundef 214748000) #14
  %123 = ptrtoint ptr %ring_data.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ring_data.i, align 4
  %poll_one79.i = getelementptr inbounds %struct.hns_nic_ring_data, ptr %124, i32 0, i32 4
  %125 = ptrtoint ptr %poll_one79.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %poll_one79.i, align 8
  %call80.i = tail call i32 %126(ptr noundef %124, i32 noundef %rem.i.i, ptr noundef null) #14
  %tobool81.not.i = icmp eq i32 %call80.i, 0
  br i1 %tobool81.not.i, label %while.body75.preheader.i.while.cond66.i_crit_edge, label %while.body75.preheader.i.for.inc85.i_crit_edge

while.body75.preheader.i.for.inc85.i_crit_edge:   ; preds = %while.body75.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc85.i

while.body75.preheader.i.while.cond66.i_crit_edge: ; preds = %while.body75.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond66.i

for.inc85.i:                                      ; preds = %while.body75.preheader.i.for.inc85.i_crit_edge, %while.cond66.i.for.inc85.i_crit_edge
  %inc86.i = add nuw nsw i32 %j.1242.i, 1
  %exitcond253.not.i = icmp eq i32 %inc86.i, %rem.i.i
  br i1 %exitcond253.not.i, label %for.inc85.i.for.inc89.i_crit_edge, label %for.inc85.i.for.body41.i_crit_edge

for.inc85.i.for.body41.i_crit_edge:               ; preds = %for.inc85.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body41.i

for.inc85.i.for.inc89.i_crit_edge:                ; preds = %for.inc85.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc89.i

for.inc89.i:                                      ; preds = %for.inc85.i.for.inc89.i_crit_edge, %for.end.i.for.inc89.i_crit_edge, %if.end24.i.for.inc89.i_crit_edge, %for.body.i66.for.inc89.i_crit_edge
  %inc90.i = add nuw nsw i32 %i.0244.i, 1
  %127 = ptrtoint ptr %q_num.i63 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %q_num.i63, align 4
  %cmp.i70 = icmp slt i32 %inc90.i, %128
  br i1 %cmp.i70, label %for.inc89.i.for.body.i66_crit_edge, label %for.inc89.i.out.i_crit_edge

for.inc89.i.out.i_crit_edge:                      ; preds = %for.inc89.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

for.inc89.i.for.body.i66_crit_edge:               ; preds = %for.inc89.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i66

out.i:                                            ; preds = %for.inc89.i.out.i_crit_edge, %for.body41.i.out.i_crit_edge, %for.cond.preheader.i.out.i_crit_edge
  %ret.0.i = phi i32 [ 0, %for.cond.preheader.i.out.i_crit_edge ], [ -12, %for.body41.i.out.i_crit_edge ], [ 0, %for.inc89.i.out.i_crit_edge ]
  %set_rss92.i = getelementptr inbounds %struct.hnae_ae_ops, ptr %39, i32 0, i32 43
  %129 = ptrtoint ptr %set_rss92.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %set_rss92.i, align 4
  %call93.i = tail call i32 %130(ptr noundef %35, ptr noundef nonnull %call9.i.i.i, ptr noundef null, i8 noundef zeroext 0) #14
  %131 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %ae_handle, align 4
  %dev.i198.i = getelementptr inbounds %struct.hnae_handle, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %dev.i198.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev.i198.i, align 4
  %ops1.i199.i = getelementptr inbounds %struct.hnae_ae_dev, ptr %134, i32 0, i32 2
  %135 = ptrtoint ptr %ops1.i199.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ops1.i199.i, align 4
  %stop.i.i = getelementptr inbounds %struct.hnae_ae_ops, ptr %136, i32 0, i32 5
  %137 = ptrtoint ptr %stop.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %stop.i.i, align 4
  tail call void %138(ptr noundef %132) #14
  %set_loopback.i200.i = getelementptr inbounds %struct.hnae_ae_ops, ptr %136, i32 0, i32 14
  %139 = ptrtoint ptr %set_loopback.i200.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %set_loopback.i200.i, align 4
  %call2.i201.i = tail call i32 %140(ptr noundef %132, i32 noundef 1, i32 noundef 0) #14
  br label %enable_serdes_lb_err.i

enable_serdes_lb_err.i:                           ; preds = %out.i, %cond.end.i.i.enable_serdes_lb_err.i_crit_edge, %if.end8.i.enable_serdes_lb_err.i_crit_edge
  %ret.1.i = phi i32 [ %ret.0.i, %out.i ], [ -22, %if.end8.i.enable_serdes_lb_err.i_crit_edge ], [ -22, %cond.end.i.i.enable_serdes_lb_err.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i190.i) #14
  br label %cur_indir_alloc_err.i

cur_indir_alloc_err.i:                            ; preds = %enable_serdes_lb_err.i, %if.end8.i.i191.i.cur_indir_alloc_err.i_crit_edge
  %ret.2.i = phi i32 [ %ret.1.i, %enable_serdes_lb_err.i ], [ -12, %if.end8.i.i191.i.cur_indir_alloc_err.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #14
  br label %hns_nic_clear_all_rx_fetch.exit

hns_nic_clear_all_rx_fetch.exit:                  ; preds = %cur_indir_alloc_err.i, %hnae_reinit_all_ring_desc.exit.hns_nic_clear_all_rx_fetch.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.2.i, %cur_indir_alloc_err.i ], [ -12, %hnae_reinit_all_ring_desc.exit.hns_nic_clear_all_rx_fetch.exit_crit_edge ]
  %141 = ptrtoint ptr %q_num.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %q_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %cmp39.i = icmp sgt i32 %142, 0
  br i1 %cmp39.i, label %hns_nic_clear_all_rx_fetch.exit.for.body.i74_crit_edge, label %hns_nic_clear_all_rx_fetch.exit.hnae_reinit_all_ring_page_off.exit_crit_edge

hns_nic_clear_all_rx_fetch.exit.hnae_reinit_all_ring_page_off.exit_crit_edge: ; preds = %hns_nic_clear_all_rx_fetch.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %hnae_reinit_all_ring_page_off.exit

hns_nic_clear_all_rx_fetch.exit.for.body.i74_crit_edge: ; preds = %hns_nic_clear_all_rx_fetch.exit
  br label %for.body.i74

for.body.i74:                                     ; preds = %for.inc19.i.for.body.i74_crit_edge, %hns_nic_clear_all_rx_fetch.exit.for.body.i74_crit_edge
  %i.040.i = phi i32 [ %inc20.i, %for.inc19.i.for.body.i74_crit_edge ], [ 0, %hns_nic_clear_all_rx_fetch.exit.for.body.i74_crit_edge ]
  %arrayidx.i72 = getelementptr %struct.hnae_handle, ptr %1, i32 0, i32 17, i32 %i.040.i
  %143 = ptrtoint ptr %arrayidx.i72 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %arrayidx.i72, align 4
  %desc_num.i73 = getelementptr inbounds %struct.hnae_queue, ptr %144, i32 0, i32 4, i32 9
  %145 = ptrtoint ptr %desc_num.i73 to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %desc_num.i73, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %146)
  %cmp237.not.i = icmp eq i16 %146, 0
  br i1 %cmp237.not.i, label %for.body.i74.for.inc19.i_crit_edge, label %for.body4.lr.ph.i77

for.body.i74.for.inc19.i_crit_edge:               ; preds = %for.body.i74
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc19.i

for.body4.lr.ph.i77:                              ; preds = %for.body.i74
  %desc_cb.i75 = getelementptr inbounds %struct.hnae_queue, ptr %144, i32 0, i32 4, i32 2
  %desc.i76 = getelementptr inbounds %struct.hnae_queue, ptr %144, i32 0, i32 4, i32 1
  br label %for.body4.i79

for.body4.i79:                                    ; preds = %for.inc.i.for.body4.i79_crit_edge, %for.body4.lr.ph.i77
  %j.038.i = phi i32 [ 0, %for.body4.lr.ph.i77 ], [ %inc.i80, %for.inc.i.for.body4.i79_crit_edge ]
  %147 = ptrtoint ptr %desc_cb.i75 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %desc_cb.i75, align 8
  %page_offset.i78 = getelementptr %struct.hnae_desc_cb, ptr %148, i32 %j.038.i, i32 3
  %149 = ptrtoint ptr %page_offset.i78 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 0, ptr %page_offset.i78, align 4
  %150 = ptrtoint ptr %desc.i76 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %desc.i76, align 4
  %arrayidx6.i = getelementptr %struct.hnae_desc, ptr %151, i32 %j.038.i
  %152 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_loadN_noabort(i32 %152, i32 8)
  %153 = load i64, ptr %arrayidx6.i, align 1
  %154 = load ptr, ptr %desc_cb.i75, align 8
  %arrayidx8.i = getelementptr %struct.hnae_desc_cb, ptr %154, i32 %j.038.i
  %155 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx8.i, align 4
  %conv9.i = zext i32 %156 to i64
  %157 = tail call i64 @llvm.bswap.i64(i64 %conv9.i) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %153, i64 %157)
  %cmp10.not.i = icmp eq i64 %153, %157
  br i1 %cmp10.not.i, label %for.body4.i79.for.inc.i_crit_edge, label %if.then.i

for.body4.i79.for.inc.i_crit_edge:                ; preds = %for.body4.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body4.i79
  call void @__sanitizer_cov_trace_pc() #16
  %158 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_storeN_noabort(i32 %158, i32 8)
  store i64 %157, ptr %arrayidx6.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body4.i79.for.inc.i_crit_edge
  %inc.i80 = add nuw nsw i32 %j.038.i, 1
  %159 = ptrtoint ptr %desc_num.i73 to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %desc_num.i73, align 8
  %conv.i81 = zext i16 %160 to i32
  %cmp2.i82 = icmp ult i32 %inc.i80, %conv.i81
  br i1 %cmp2.i82, label %for.inc.i.for.body4.i79_crit_edge, label %for.inc.i.for.inc19.i_crit_edge

for.inc.i.for.inc19.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc19.i

for.inc.i.for.body4.i79_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body4.i79

for.inc19.i:                                      ; preds = %for.inc.i.for.inc19.i_crit_edge, %for.body.i74.for.inc19.i_crit_edge
  %inc20.i = add nuw nsw i32 %i.040.i, 1
  %161 = ptrtoint ptr %q_num.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %q_num.i, align 4
  %cmp.i83 = icmp slt i32 %inc20.i, %162
  br i1 %cmp.i83, label %for.inc19.i.for.body.i74_crit_edge, label %for.inc19.i.hnae_reinit_all_ring_page_off.exit_crit_edge

for.inc19.i.hnae_reinit_all_ring_page_off.exit_crit_edge: ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hnae_reinit_all_ring_page_off.exit

for.inc19.i.for.body.i74_crit_edge:               ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i74

hnae_reinit_all_ring_page_off.exit:               ; preds = %for.inc19.i.hnae_reinit_all_ring_page_off.exit_crit_edge, %hns_nic_clear_all_rx_fetch.exit.hnae_reinit_all_ring_page_off.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !206
  tail call void @arm_heavy_mb() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool18.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool18.not, label %hnae_reinit_all_ring_page_off.exit.if.end21_crit_edge, label %if.then19

hnae_reinit_all_ring_page_off.exit.if.end21_crit_edge: ; preds = %hnae_reinit_all_ring_page_off.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then19:                                        ; preds = %hnae_reinit_all_ring_page_off.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.51) #17
  br label %out

if.end21:                                         ; preds = %hnae_reinit_all_ring_page_off.exit.if.end21_crit_edge, %land.lhs.true.if.end21_crit_edge, %if.end10.if.end21_crit_edge
  %163 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dev, align 4
  %ops23 = getelementptr inbounds %struct.hnae_ae_dev, ptr %164, i32 0, i32 2
  %165 = ptrtoint ptr %ops23 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %ops23, align 4
  %set_mtu24 = getelementptr inbounds %struct.hnae_ae_ops, ptr %166, i32 0, i32 30
  %167 = ptrtoint ptr %set_mtu24 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %set_mtu24, align 4
  %call25 = tail call i32 %168(ptr noundef %1, i32 noundef %new_mtu) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.52, i32 noundef %call25) #17
  br label %out

if.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  %169 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %new_mtu, ptr %mtu, align 4
  br label %out

out:                                              ; preds = %if.end28, %if.then27, %if.then19
  %ret.0 = phi i32 [ %retval.0.i, %if.then19 ], [ %call25, %if.then27 ], [ 0, %if.end28 ]
  br i1 %tobool.i.not, label %out.cleanup_crit_edge, label %if.then31

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then31:                                        ; preds = %out
  %call32 = tail call i32 @hns_nic_net_open(ptr noundef %ndev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then31.cleanup_crit_edge, label %if.then34

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then34:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.53) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %if.then31.cleanup_crit_edge, %out.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -524, %if.end4.cleanup_crit_edge ], [ -22, %if.then34 ], [ %ret.0, %if.then31.cleanup_crit_edge ], [ %ret.0, %out.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_nic_net_timeout(ptr noundef %ndev, i32 noundef %txqueue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 115
  %0 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %watchdog_timeo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000, i32 %1)
  %cmp = icmp slt i32 %1, 4000
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %mul = shl i32 %1, 1
  %2 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %mul, ptr %watchdog_timeo, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %ndev, ptr noundef nonnull @.str.54, i32 noundef %mul) #17
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 500, ptr %watchdog_timeo, align 4
  %state.i = getelementptr i8, ptr %ndev, i32 2368
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then.i:                                        ; preds = %if.else
  tail call void @_set_bit(i32 noundef 8, ptr noundef %state.i) #14
  %netdev.i = getelementptr i8, ptr %ndev, i32 2324
  %7 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev.i, align 4
  %tx_timeout_count.i = getelementptr i8, ptr %ndev, i32 2360
  %9 = ptrtoint ptr %tx_timeout_count.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %tx_timeout_count.i, align 8
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state.i, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %8, ptr noundef nonnull @.str.55, i64 noundef %10, i32 noundef %12) #17
  %13 = ptrtoint ptr %tx_timeout_count.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %tx_timeout_count.i, align 8
  %inc.i = add i64 %14, 1
  store i64 %inc.i, ptr %tx_timeout_count.i, align 8
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state.i, align 4
  %17 = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.then.i.if.end_crit_edge

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.i.i:                                ; preds = %if.then.i
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %state.i, align 4
  %20 = and i32 %19, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool3.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true4.i.i, label %land.lhs.true.i.i.if.end_crit_edge

land.lhs.true.i.i.if.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %call6.i.i = tail call i32 @_test_and_set_bit(i32 noundef 7, ptr noundef %state.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.then.i.i, label %land.lhs.true4.i.i.if.end_crit_edge

land.lhs.true4.i.i.if.end_crit_edge:              ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %service_task.i.i = getelementptr i8, ptr %ndev, i32 2420
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %21 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %21, ptr noundef %service_task.i.i) #14
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %land.lhs.true4.i.i.if.end_crit_edge, %land.lhs.true.i.i.if.end_crit_edge, %if.then.i.if.end_crit_edge, %if.else.if.end_crit_edge, %if.then
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_nic_get_stats64(ptr nocapture noundef readonly %ndev, ptr noundef writeonly %stats) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ae_handle = getelementptr i8, ptr %ndev, i32 2332
  %0 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ae_handle, align 4
  %q_num = getelementptr inbounds %struct.hnae_handle, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %q_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %q_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp132 = icmp sgt i32 %3, 0
  br i1 %cmp132, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %idx.0137 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %rx_pkts.0136 = phi i64 [ %add19, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %tx_pkts.0135 = phi i64 [ %add8, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %rx_bytes.0134 = phi i64 [ %add13, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %tx_bytes.0133 = phi i64 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.hnae_handle, ptr %1, i32 0, i32 17, i32 %idx.0137
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = getelementptr inbounds %struct.hnae_queue, ptr %5, i32 0, i32 6, i32 6, i32 3
  %tx_bytes2 = getelementptr inbounds %struct.hnae_queue, ptr %5, i32 0, i32 6, i32 6, i32 3, i32 0, i32 1
  %7 = ptrtoint ptr %tx_bytes2 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %tx_bytes2, align 8
  %add = add i64 %8, %tx_bytes.0133
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %6, align 8
  %add8 = add i64 %10, %tx_pkts.0135
  %11 = getelementptr inbounds %struct.hnae_queue, ptr %5, i32 0, i32 4, i32 6, i32 3
  %rx_bytes12 = getelementptr inbounds %struct.hnae_queue, ptr %5, i32 0, i32 4, i32 6, i32 3, i32 0, i32 1
  %12 = ptrtoint ptr %rx_bytes12 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %rx_bytes12, align 8
  %add13 = add i64 %13, %rx_bytes.0134
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %11, align 8
  %add19 = add i64 %15, %rx_pkts.0136
  %inc = add nuw nsw i32 %idx.0137, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %tx_bytes.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %rx_bytes.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %add13, %for.body.for.end_crit_edge ]
  %tx_pkts.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %add8, %for.body.for.end_crit_edge ]
  %rx_pkts.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %add19, %for.body.for.end_crit_edge ]
  %tx_bytes20 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 3
  %16 = ptrtoint ptr %tx_bytes20 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %tx_bytes.0.lcssa, ptr %tx_bytes20, align 8
  %tx_packets = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 1
  %17 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %tx_pkts.0.lcssa, ptr %tx_packets, align 8
  %rx_bytes21 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 2
  %18 = ptrtoint ptr %rx_bytes21 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %rx_bytes.0.lcssa, ptr %rx_bytes21, align 8
  %19 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %rx_pkts.0.lcssa, ptr %stats, align 8
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 4
  %20 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_errors, align 8
  %conv = zext i32 %21 to i64
  %rx_errors23 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 4
  %22 = ptrtoint ptr %rx_errors23 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv, ptr %rx_errors23, align 8
  %multicast = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 8
  %23 = ptrtoint ptr %multicast to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %multicast, align 8
  %conv25 = zext i32 %24 to i64
  %multicast26 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 8
  %25 = ptrtoint ptr %multicast26 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv25, ptr %multicast26, align 8
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 10
  %26 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_length_errors, align 8
  %conv28 = zext i32 %27 to i64
  %rx_length_errors29 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 10
  %28 = ptrtoint ptr %rx_length_errors29 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv28, ptr %rx_length_errors29, align 8
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 12
  %29 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_crc_errors, align 8
  %conv31 = zext i32 %30 to i64
  %rx_crc_errors32 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 12
  %31 = ptrtoint ptr %rx_crc_errors32 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv31, ptr %rx_crc_errors32, align 8
  %rx_missed_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 15
  %32 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_missed_errors, align 4
  %conv34 = zext i32 %33 to i64
  %rx_missed_errors35 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 15
  %34 = ptrtoint ptr %rx_missed_errors35 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv34, ptr %rx_missed_errors35, align 8
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 5
  %35 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_errors, align 4
  %conv37 = zext i32 %36 to i64
  %tx_errors38 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 5
  %37 = ptrtoint ptr %tx_errors38 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv37, ptr %tx_errors38, align 8
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 6
  %38 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rx_dropped, align 8
  %conv40 = zext i32 %39 to i64
  %rx_dropped41 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 6
  %40 = ptrtoint ptr %rx_dropped41 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %conv40, ptr %rx_dropped41, align 8
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 7
  %41 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx_dropped, align 4
  %conv43 = zext i32 %42 to i64
  %tx_dropped44 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 7
  %43 = ptrtoint ptr %tx_dropped44 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %conv43, ptr %tx_dropped44, align 8
  %collisions = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 9
  %44 = ptrtoint ptr %collisions to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %collisions, align 4
  %conv46 = zext i32 %45 to i64
  %collisions47 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 9
  %46 = ptrtoint ptr %collisions47 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %conv46, ptr %collisions47, align 8
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 11
  %47 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rx_over_errors, align 4
  %conv49 = zext i32 %48 to i64
  %rx_over_errors50 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 11
  %49 = ptrtoint ptr %rx_over_errors50 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv49, ptr %rx_over_errors50, align 8
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 13
  %50 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rx_frame_errors, align 4
  %conv52 = zext i32 %51 to i64
  %rx_frame_errors53 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 13
  %52 = ptrtoint ptr %rx_frame_errors53 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %conv52, ptr %rx_frame_errors53, align 8
  %rx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 14
  %53 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_fifo_errors, align 8
  %conv55 = zext i32 %54 to i64
  %rx_fifo_errors56 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 14
  %55 = ptrtoint ptr %rx_fifo_errors56 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %conv55, ptr %rx_fifo_errors56, align 8
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 16
  %56 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tx_aborted_errors, align 8
  %conv58 = zext i32 %57 to i64
  %tx_aborted_errors59 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 16
  %58 = ptrtoint ptr %tx_aborted_errors59 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %conv58, ptr %tx_aborted_errors59, align 8
  %tx_carrier_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 17
  %59 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tx_carrier_errors, align 4
  %conv61 = zext i32 %60 to i64
  %tx_carrier_errors62 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 17
  %61 = ptrtoint ptr %tx_carrier_errors62 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %conv61, ptr %tx_carrier_errors62, align 8
  %tx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 18
  %62 = ptrtoint ptr %tx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tx_fifo_errors, align 8
  %conv64 = zext i32 %63 to i64
  %tx_fifo_errors65 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 18
  %64 = ptrtoint ptr %tx_fifo_errors65 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %conv64, ptr %tx_fifo_errors65, align 8
  %tx_heartbeat_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 19
  %65 = ptrtoint ptr %tx_heartbeat_errors to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tx_heartbeat_errors, align 4
  %conv67 = zext i32 %66 to i64
  %tx_heartbeat_errors68 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 19
  %67 = ptrtoint ptr %tx_heartbeat_errors68 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %conv67, ptr %tx_heartbeat_errors68, align 8
  %tx_window_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 20
  %68 = ptrtoint ptr %tx_window_errors to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tx_window_errors, align 8
  %conv70 = zext i32 %69 to i64
  %tx_window_errors71 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 20
  %70 = ptrtoint ptr %tx_window_errors71 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %conv70, ptr %tx_window_errors71, align 8
  %rx_compressed = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 21
  %71 = ptrtoint ptr %rx_compressed to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rx_compressed, align 4
  %conv73 = zext i32 %72 to i64
  %rx_compressed74 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 21
  %73 = ptrtoint ptr %rx_compressed74 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %conv73, ptr %rx_compressed74, align 8
  %tx_compressed = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 22
  %74 = ptrtoint ptr %tx_compressed to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tx_compressed, align 8
  %conv76 = zext i32 %75 to i64
  %tx_compressed77 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 22
  %76 = ptrtoint ptr %tx_compressed77 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %conv76, ptr %tx_compressed77, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @hns_nic_fix_features(ptr nocapture noundef readonly %netdev, i64 noundef %features) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %enet_ver = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %enet_ver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enet_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %1)
  %cond = icmp eq i32 %1, 3552816
  %and = and i64 %features, -1114625
  %spec.select = select i1 %cond, i64 %and, i64 %features
  ret i64 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_nic_set_features(ptr noundef %netdev, i64 noundef %features) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %enet_ver = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %enet_ver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enet_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3552816, i32 %1)
  %cond = icmp eq i32 %1, 3552816
  %and = and i64 %features, 1114112
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.56) #17
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %ops5 = getelementptr i8, ptr %netdev, i32 2336
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %ops5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @fill_tso_desc, ptr %ops5, align 8
  %maybe_stop_tx = getelementptr i8, ptr %netdev, i32 2340
  %3 = ptrtoint ptr %maybe_stop_tx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @hns_nic_maybe_stop_tso, ptr %maybe_stop_tx, align 4
  %gso_max_size.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 137
  %4 = ptrtoint ptr %gso_max_size.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 28672, ptr %gso_max_size.i, align 8
  br label %sw.epilog

if.else:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %ops5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @fill_v2_desc, ptr %ops5, align 8
  %maybe_stop_tx8 = getelementptr i8, ptr %netdev, i32 2340
  %6 = ptrtoint ptr %maybe_stop_tx8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @hns_nic_maybe_stop_tx, ptr %maybe_stop_tx8, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.then3, %if.then, %sw.bb.sw.epilog_crit_edge
  %features10 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 23
  %7 = ptrtoint ptr %features10 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %features, ptr %features10, align 16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_tx_queues(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_rx_queues(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @netdev_pick_tx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_nic_uc_sync(ptr nocapture noundef readonly %netdev, ptr noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ae_handle = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ae_handle, align 4
  %dev = getelementptr inbounds %struct.hnae_handle, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %ops = getelementptr inbounds %struct.hnae_ae_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %add_uc_addr = getelementptr inbounds %struct.hnae_ae_ops, ptr %5, i32 0, i32 26
  %6 = ptrtoint ptr %add_uc_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add_uc_addr, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call4 = tail call i32 %7(ptr noundef %1, ptr noundef %addr) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_nic_uc_unsync(ptr nocapture noundef readonly %netdev, ptr noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ae_handle = getelementptr i8, ptr %netdev, i32 2332
  %0 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ae_handle, align 4
  %dev = getelementptr inbounds %struct.hnae_handle, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %ops = getelementptr inbounds %struct.hnae_ae_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %rm_uc_addr = getelementptr inbounds %struct.hnae_ae_ops, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %rm_uc_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rm_uc_addr, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call4 = tail call i32 %7(ptr noundef %1, ptr noundef %addr) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hw_addr_sync_dev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_nic_drop_rx_fetch(ptr nocapture noundef readnone %ring_data, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fill_tso_desc(ptr nocapture noundef %ring, ptr noundef %priv, i32 noundef %size, i32 noundef %dma, i32 noundef %frag_end, i32 noundef %buf_num, i32 noundef %type, i32 noundef %mtu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %size, 8190
  %div = sdiv i32 %sub, 8191
  %rem = srem i32 %size, 8191
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  %spec.select = select i1 %tobool.not, i32 8191, i32 %rem
  call void @__sanitizer_cov_trace_const_cmp4(i32 8190, i32 %sub)
  %cmp35 = icmp sgt i32 %sub, 8190
  br i1 %cmp35, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sub6 = add nsw i32 %div, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frag_end)
  %tobool13.not = icmp ne i32 %frag_end, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp17 = icmp eq i32 %type, 0
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %k.036 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %k.036)
  %cmp1 = icmp eq i32 %k.036, 0
  %spec.select34 = select i1 %cmp1, i32 %size, i32 0
  call void @__sanitizer_cov_trace_cmp4(i32 %k.036, i32 %sub6)
  %cmp7 = icmp eq i32 %k.036, %sub6
  %cond11 = select i1 %cmp7, i32 %spec.select, i32 8191
  %mul = mul nuw i32 %k.036, 8191
  %add12 = add i32 %mul, %dma
  %0 = select i1 %tobool13.not, i1 %cmp7, i1 false
  %cond16 = zext i1 %0 to i32
  %1 = select i1 %cmp17, i1 %cmp1, i1 false
  %not. = xor i1 %1, true
  %cond21 = zext i1 %not. to i32
  tail call fastcc void @fill_v2_desc_hw(ptr noundef %ring, ptr noundef %priv, i32 noundef %spec.select34, i32 noundef %cond11, i32 noundef %add12, i32 noundef %cond16, i32 noundef %buf_num, i32 noundef %cond21)
  %inc = add nuw nsw i32 %k.036, 1
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_nic_maybe_stop_tso(ptr nocapture noundef %out_skb, ptr nocapture noundef writeonly %bnum, ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %out_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %out_skb, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i, align 8
  %sub.i = add i32 %3, 8190
  %sub = sub i32 %sub.i, %5
  %div = sdiv i32 %sub, 8191
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nr_frags, align 2
  %conv = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp63.not = icmp eq i8 %9, 0
  br i1 %cmp63.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %buf_num.065 = phi i32 [ %add8, %for.body.for.body_crit_edge ], [ %div, %entry.for.body_crit_edge ]
  %i.064 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %7, i32 0, i32 12, i32 %i.064, i32 1
  %10 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bv_len.i, align 4
  %sub6 = add i32 %11, 8190
  %div7 = sdiv i32 %sub6, 8191
  %add8 = add i32 %div7, %buf_num.065
  %inc = add nuw nsw i32 %i.064, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %buf_num.0.lcssa = phi i32 [ %div, %entry.for.end_crit_edge ], [ %add8, %for.body.for.end_crit_edge ]
  %max_desc_num_per_pkt = getelementptr inbounds %struct.hnae_ring, ptr %ring, i32 0, i32 10
  %12 = ptrtoint ptr %max_desc_num_per_pkt to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %max_desc_num_per_pkt, align 2
  %conv9 = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %buf_num.0.lcssa, i32 %conv9)
  %cmp10 = icmp sgt i32 %buf_num.0.lcssa, %conv9
  br i1 %cmp10, label %if.then, label %if.else, !prof !196

if.then:                                          ; preds = %for.end
  %div15 = udiv i32 %sub.i, 8191
  %desc_num.i = getelementptr inbounds %struct.hnae_ring, ptr %ring, i32 0, i32 9
  %14 = ptrtoint ptr %desc_num.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %desc_num.i, align 8
  %conv.i = zext i16 %15 to i32
  %next_to_clean.i = getelementptr inbounds %struct.hnae_ring, ptr %ring, i32 0, i32 14
  %16 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %next_to_clean.i, align 4
  %next_to_use.i = getelementptr inbounds %struct.hnae_ring, ptr %ring, i32 0, i32 13
  %18 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %next_to_use.i, align 8
  %sub.i.i = sub i32 %conv.i, %17
  %add.i.i = add i32 %sub.i.i, %19
  %rem.i.i = srem i32 %add.i.i, %conv.i
  %20 = xor i32 %rem.i.i, -1
  %sub1.i = add i32 %20, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i, i32 %div15)
  %cmp17 = icmp slt i32 %sub1.i, %div15
  br i1 %cmp17, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call20 = tail call ptr @skb_copy(ptr noundef %1, i32 noundef 2592) #14
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.end.cleanup_crit_edge, label %if.end23

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__dev_kfree_skb_any(ptr noundef %1, i32 noundef 1) #14
  %21 = ptrtoint ptr %out_skb to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call20, ptr %out_skb, align 4
  br label %if.end29

if.else:                                          ; preds = %for.end
  %desc_num.i53 = getelementptr inbounds %struct.hnae_ring, ptr %ring, i32 0, i32 9
  %22 = ptrtoint ptr %desc_num.i53 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %desc_num.i53, align 8
  %conv.i54 = zext i16 %23 to i32
  %next_to_clean.i55 = getelementptr inbounds %struct.hnae_ring, ptr %ring, i32 0, i32 14
  %24 = ptrtoint ptr %next_to_clean.i55 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %next_to_clean.i55, align 4
  %next_to_use.i56 = getelementptr inbounds %struct.hnae_ring, ptr %ring, i32 0, i32 13
  %26 = ptrtoint ptr %next_to_use.i56 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %next_to_use.i56, align 8
  %sub.i.i57 = sub i32 %conv.i54, %25
  %add.i.i58 = add i32 %sub.i.i57, %27
  %rem.i.i59 = srem i32 %add.i.i58, %conv.i54
  %28 = xor i32 %rem.i.i59, -1
  %sub1.i60 = add i32 %28, %conv.i54
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i60, i32 %buf_num.0.lcssa)
  %cmp25 = icmp slt i32 %sub1.i60, %buf_num.0.lcssa
  br i1 %cmp25, label %if.else.cleanup_crit_edge, label %if.else.if.end29_crit_edge

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end29:                                         ; preds = %if.else.if.end29_crit_edge, %if.end23
  %buf_num.1 = phi i32 [ %div15, %if.end23 ], [ %buf_num.0.lcssa, %if.else.if.end29_crit_edge ]
  %29 = ptrtoint ptr %bnum to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %buf_num.1, ptr %bnum, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end29 ], [ -16, %if.then.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -16, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fill_v2_desc(ptr nocapture noundef %ring, ptr noundef %priv, i32 noundef %size, i32 noundef %dma, i32 noundef %frag_end, i32 noundef %buf_num, i32 noundef %type, i32 noundef %mtu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @fill_v2_desc_hw(ptr noundef %ring, ptr noundef %priv, i32 noundef %size, i32 noundef %size, i32 noundef %dma, i32 noundef %frag_end, i32 noundef %buf_num, i32 noundef %type)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_nic_maybe_stop_tx(ptr nocapture noundef %out_skb, ptr nocapture noundef writeonly %bnum, ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %out_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %out_skb, align 4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nr_frags, align 2
  %max_desc_num_per_pkt = getelementptr inbounds %struct.hnae_ring, ptr %ring, i32 0, i32 10
  %6 = ptrtoint ptr %max_desc_num_per_pkt to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %max_desc_num_per_pkt, align 2
  %8 = zext i8 %5 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %8)
  %cmp.not = icmp ugt i16 %7, %8
  br i1 %cmp.not, label %if.else, label %if.then, !prof !195

if.then:                                          ; preds = %entry
  %desc_num.i = getelementptr inbounds %struct.hnae_ring, ptr %ring, i32 0, i32 9
  %9 = ptrtoint ptr %desc_num.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %desc_num.i, align 8
  %conv.i = zext i16 %10 to i32
  %next_to_clean.i = getelementptr inbounds %struct.hnae_ring, ptr %ring, i32 0, i32 14
  %11 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %next_to_clean.i, align 4
  %next_to_use.i = getelementptr inbounds %struct.hnae_ring, ptr %ring, i32 0, i32 13
  %13 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %next_to_use.i, align 8
  %sub.i.i = sub i32 %conv.i, %12
  %add.i.i = add i32 %sub.i.i, %14
  %rem.i.i = srem i32 %add.i.i, %conv.i
  %15 = xor i32 %rem.i.i, -1
  %sub1.i = add i32 %15, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub1.i)
  %cmp5 = icmp slt i32 %sub1.i, 1
  br i1 %cmp5, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call8 = tail call ptr @skb_copy(ptr noundef %1, i32 noundef 2592) #14
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__dev_kfree_skb_any(ptr noundef %1, i32 noundef 1) #14
  %16 = ptrtoint ptr %out_skb to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call8, ptr %out_skb, align 4
  br label %if.end17

if.else:                                          ; preds = %entry
  %conv = zext i8 %5 to i32
  %add = add nuw nsw i32 %conv, 1
  %desc_num.i28 = getelementptr inbounds %struct.hnae_ring, ptr %ring, i32 0, i32 9
  %17 = ptrtoint ptr %desc_num.i28 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %desc_num.i28, align 8
  %conv.i29 = zext i16 %18 to i32
  %next_to_clean.i30 = getelementptr inbounds %struct.hnae_ring, ptr %ring, i32 0, i32 14
  %19 = ptrtoint ptr %next_to_clean.i30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %next_to_clean.i30, align 4
  %next_to_use.i31 = getelementptr inbounds %struct.hnae_ring, ptr %ring, i32 0, i32 13
  %21 = ptrtoint ptr %next_to_use.i31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %next_to_use.i31, align 8
  %sub.i.i32 = sub i32 %conv.i29, %20
  %add.i.i33 = add i32 %sub.i.i32, %22
  %rem.i.i34 = srem i32 %add.i.i33, %conv.i29
  %23 = xor i32 %rem.i.i34, -1
  %sub1.i35 = add i32 %23, %conv.i29
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i35, i32 %conv)
  %cmp13.not = icmp sgt i32 %sub1.i35, %conv
  br i1 %cmp13.not, label %if.else.if.end17_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.end17:                                         ; preds = %if.else.if.end17_crit_edge, %if.end11
  %buf_num.0 = phi i32 [ 1, %if.end11 ], [ %add, %if.else.if.end17_crit_edge ]
  %24 = ptrtoint ptr %bnum to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %buf_num.0, ptr %bnum, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ -16, %if.then.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -16, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fill_v2_desc_hw(ptr nocapture noundef %ring, ptr noundef %priv, i32 noundef %size, i32 noundef %send_sz, i32 noundef %dma, i32 noundef %frag_end, i32 noundef %buf_num, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  %vhdr.i.i = alloca %struct.vlan_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %desc1 = getelementptr inbounds %struct.hnae_ring, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc1, align 4
  %next_to_use = getelementptr inbounds %struct.hnae_ring, ptr %ring, i32 0, i32 13
  %2 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next_to_use, align 8
  %arrayidx = getelementptr %struct.hnae_desc, ptr %1, i32 %3
  %desc_cb2 = getelementptr inbounds %struct.hnae_ring, ptr %ring, i32 0, i32 2
  %4 = ptrtoint ptr %desc_cb2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc_cb2, align 8
  %arrayidx4 = getelementptr %struct.hnae_desc_cb, ptr %5, i32 %3
  %priv5 = getelementptr %struct.hnae_desc_cb, ptr %5, i32 %3, i32 2
  %6 = ptrtoint ptr %priv5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %priv, ptr %priv5, align 4
  %length = getelementptr %struct.hnae_desc_cb, ptr %5, i32 %3, i32 4
  %7 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %size, ptr %length, align 4
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %dma, ptr %arrayidx4, align 4
  %conv = trunc i32 %type to i16
  %type7 = getelementptr %struct.hnae_desc_cb, ptr %5, i32 %3, i32 6
  %9 = ptrtoint ptr %type7 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %type7, align 2
  %conv8 = zext i32 %dma to i64
  %10 = tail call i64 @llvm.bswap.i64(i64 %conv8)
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %10, ptr %arrayidx, align 1
  %conv9 = trunc i32 %send_sz to i16
  %12 = tail call i16 @llvm.bswap.i16(i16 %conv9)
  %13 = getelementptr %struct.hnae_desc, ptr %1, i32 %3, i32 1
  %send_size = getelementptr inbounds %struct.anon.149, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %send_size to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %12, ptr %send_size, align 1
  %q = getelementptr inbounds %struct.hnae_ring, ptr %ring, i32 0, i32 3
  %15 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %q, align 4
  %handle = getelementptr inbounds %struct.hnae_queue, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %handle, align 64
  %dport_id = getelementptr inbounds %struct.hnae_handle, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %dport_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dport_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp eq i32 %type, 0
  br i1 %cmp, label %if.then, label %entry.do.body165_crit_edge

entry.do.body165_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body165

if.then:                                          ; preds = %entry
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %priv, i32 0, i32 15
  %21 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load = load i16, ptr %ip_summed, align 8
  %22 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %22)
  %cmp37 = icmp eq i16 %22, 1536
  br i1 %cmp37, label %if.then39, label %if.then.do.body165_crit_edge

if.then.do.body165_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body165

if.then39:                                        ; preds = %if.then
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %priv, i32 0, i32 15, i32 0, i32 20
  %23 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %network_header.i, align 4
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %priv, i32 0, i32 15, i32 0, i32 21
  %25 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %mac_header.i, align 2
  %sub.i = sub i16 %24, %26
  %mac_len.i = getelementptr inbounds %struct.sk_buff, ptr %priv, i32 0, i32 8
  %27 = ptrtoint ptr %mac_len.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %sub.i, ptr %mac_len.i, align 4
  %protocol40 = getelementptr inbounds %struct.sk_buff, ptr %priv, i32 0, i32 15, i32 0, i32 18
  %28 = ptrtoint ptr %protocol40 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %protocol40, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %29)
  %cmp42 = icmp eq i16 %29, -32512
  br i1 %cmp42, label %if.then.i.i, label %if.then39.if.end_crit_edge

if.then39.if.end_crit_edge:                       ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then.i.i:                                      ; preds = %if.then39
  %conv.i.i = zext i16 %sub.i to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %26)
  %tobool.not.i.i = icmp eq i16 %24, %26
  br i1 %tobool.not.i.i, label %if.then.i.i.if.end26.i.i_crit_edge, label %if.then1.i.i

if.then.i.i.if.end26.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.i.i

if.then1.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %sub.i)
  %cmp.i.i = icmp ult i16 %sub.i, 4
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end25.i.i, !prof !196

do.end.i.i:                                       ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 598, i32 noundef 9, ptr noundef null) #14
  br label %vlan_get_protocol.exit

if.end25.i.i:                                     ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = add nsw i32 %conv.i.i, -4
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.end25.i.i, %if.then.i.i.if.end26.i.i_crit_edge
  %vlan_depth.0.i.i = phi i32 [ %sub.i.i, %if.end25.i.i ], [ 14, %if.then.i.i.if.end26.i.i_crit_edge ]
  %30 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i, i32 0, i32 1
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %priv, i32 0, i32 6
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %priv, i32 0, i32 7
  %tobool2.not.i.i.i.i = icmp eq ptr %priv, null
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %priv, i32 0, i32 19
  br label %do.body27.i.i

do.body27.i.i:                                    ; preds = %do.body27.backedge.i.i, %if.end26.i.i
  %vlan_depth.1.i.i = phi i32 [ %vlan_depth.0.i.i, %if.end26.i.i ], [ %add.i.i, %do.body27.backedge.i.i ]
  %parse_depth.0.i.i = phi i32 [ 8, %if.end26.i.i ], [ %dec.i.i, %do.body27.backedge.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i) #14
  %31 = ptrtoint ptr %vhdr.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -1, ptr %vhdr.i.i, align 2, !annotation !193
  %32 = ptrtoint ptr %30 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 -1, ptr %30, align 2, !annotation !193
  %33 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len.i.i.i.i, align 4
  %35 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %data_len.i.i.i.i, align 8
  %37 = add i32 %vlan_depth.1.i.i, %36
  %sub.i1.i.i.i = sub i32 %34, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i)
  %cmp.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i, 3
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %if.end.i.i.i.i, !prof !195

if.then.i.i.i.i:                                  ; preds = %do.body27.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %39, i32 %vlan_depth.1.i.i
  br label %skb_header_pointer.exit.i.i

if.end.i.i.i.i:                                   ; preds = %do.body27.i.i
  br i1 %tobool2.not.i.i.i.i, label %if.end.i.i.i.i.cleanup.thread.i.i_crit_edge, label %lor.lhs.false.i.i.i.i

if.end.i.i.i.i.cleanup.thread.i.i_crit_edge:      ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %priv, i32 noundef %vlan_depth.1.i.i, ptr noundef nonnull %vhdr.i.i, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp3.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  %spec.select.i.i.i.i = select i1 %cmp3.i.i.i.i, ptr null, ptr %vhdr.i.i, !prof !196
  br label %skb_header_pointer.exit.i.i

skb_header_pointer.exit.i.i:                      ; preds = %lor.lhs.false.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i, %if.then.i.i.i.i ], [ %spec.select.i.i.i.i, %lor.lhs.false.i.i.i.i ]
  %tobool29.not.i.i = icmp eq ptr %retval.0.i.i.i.i, null
  %dec.i.i = add nsw i32 %parse_depth.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool30.not.i.i = icmp eq i32 %dec.i.i, 0
  %40 = select i1 %tobool29.not.i.i, i1 true, i1 %tobool30.not.i.i, !prof !196
  br i1 %40, label %skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge, label %do.cond42.i.i, !prof !196

skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i.i

cleanup.thread.i.i:                               ; preds = %skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge, %if.end.i.i.i.i.cleanup.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i) #14
  br label %vlan_get_protocol.exit

do.cond42.i.i:                                    ; preds = %skb_header_pointer.exit.i.i
  %h_vlan_encapsulated_proto.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %h_vlan_encapsulated_proto.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i) #14
  %43 = zext i16 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.88)
  switch i16 %42, label %do.cond42.i.i.vlan_get_protocol.exit_crit_edge [
    i16 -30552, label %do.cond42.i.i.do.body27.backedge.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.do.body27.backedge.i.i_crit_edge37
  ]

do.cond42.i.i.do.body27.backedge.i.i_crit_edge37: ; preds = %do.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body27.backedge.i.i

do.cond42.i.i.do.body27.backedge.i.i_crit_edge:   ; preds = %do.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body27.backedge.i.i

do.cond42.i.i.vlan_get_protocol.exit_crit_edge:   ; preds = %do.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vlan_get_protocol.exit

do.body27.backedge.i.i:                           ; preds = %do.cond42.i.i.do.body27.backedge.i.i_crit_edge, %do.cond42.i.i.do.body27.backedge.i.i_crit_edge37
  %add.i.i = add nsw i32 %vlan_depth.1.i.i, 4
  br label %do.body27.i.i

vlan_get_protocol.exit:                           ; preds = %do.cond42.i.i.vlan_get_protocol.exit_crit_edge, %cleanup.thread.i.i, %do.end.i.i
  %retval.2.i.i = phi i16 [ 0, %do.end.i.i ], [ 0, %cleanup.thread.i.i ], [ %42, %do.cond42.i.i.vlan_get_protocol.exit_crit_edge ]
  %44 = ptrtoint ptr %protocol40 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %retval.2.i.i, ptr %protocol40, align 8
  br label %if.end

if.end:                                           ; preds = %vlan_get_protocol.exit, %if.then39.if.end_crit_edge
  %45 = phi i16 [ %retval.2.i.i, %vlan_get_protocol.exit ], [ %29, %if.then39.if.end_crit_edge ]
  %ip_offset.0 = phi i8 [ 18, %vlan_get_protocol.exit ], [ 14, %if.then39.if.end_crit_edge ]
  %46 = zext i16 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.89)
  switch i16 %45, label %if.end.if.end158_crit_edge [
    i16 2048, label %if.then52
    i16 -31011, label %do.body104
  ]

if.end.if.end158_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end158

if.then52:                                        ; preds = %if.end
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %priv, i32 0, i32 18
  %47 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %head.i.i, align 8
  %49 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %network_header.i, align 4
  %conv.i.i1 = zext i16 %50 to i32
  %add.ptr.i.i = getelementptr i8, ptr %48, i32 %conv.i.i1
  %protocol72 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %51 = ptrtoint ptr %protocol72 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %protocol72, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %52)
  %cmp74 = icmp eq i8 %52, 6
  br i1 %cmp74, label %land.lhs.true, label %if.then52.if.end158_crit_edge

if.then52.if.end158_crit_edge:                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end158

land.lhs.true:                                    ; preds = %if.then52
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %priv, i32 0, i32 17
  %53 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool.i.not = icmp eq i16 %56, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end158_crit_edge, label %do.body79

land.lhs.true.if.end158_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end158

do.body79:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %priv, i32 0, i32 15, i32 0, i32 19
  %57 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %58 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %48, i32 %conv.i.i.i
  br label %if.end158.sink.split

do.body104:                                       ; preds = %if.end
  %head.i.i9 = getelementptr inbounds %struct.sk_buff, ptr %priv, i32 0, i32 18
  %59 = ptrtoint ptr %head.i.i9 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %head.i.i9, align 8
  %61 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %network_header.i, align 4
  %conv.i.i11 = zext i16 %62 to i32
  %add.ptr.i.i12 = getelementptr i8, ptr %60, i32 %conv.i.i11
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i12, i32 0, i32 3
  %63 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %nexthdr, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %64)
  %cmp124 = icmp eq i8 %64, 6
  br i1 %cmp124, label %land.lhs.true126, label %do.body104.if.end158_crit_edge

do.body104.if.end158_crit_edge:                   ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end158

land.lhs.true126:                                 ; preds = %do.body104
  %end.i.i13 = getelementptr inbounds %struct.sk_buff, ptr %priv, i32 0, i32 17
  %65 = ptrtoint ptr %end.i.i13 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %end.i.i13, align 4
  %gso_size.i14 = getelementptr inbounds %struct.skb_shared_info, ptr %66, i32 0, i32 4
  %67 = ptrtoint ptr %gso_size.i14 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %gso_size.i14, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool.i15.not = icmp eq i16 %68, 0
  br i1 %tobool.i15.not, label %land.lhs.true126.if.end158_crit_edge, label %land.lhs.true129

land.lhs.true126.if.end158_crit_edge:             ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end158

land.lhs.true129:                                 ; preds = %land.lhs.true126
  %gso_type.i = getelementptr inbounds %struct.skb_shared_info, ptr %66, i32 0, i32 8
  %69 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %gso_type.i, align 8
  %and.i = and i32 %70, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i17.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i17.not, label %land.lhs.true129.if.end158_crit_edge, label %do.body133

land.lhs.true129.if.end158_crit_edge:             ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end158

do.body133:                                       ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #16
  %transport_header.i.i.i19 = getelementptr inbounds %struct.sk_buff, ptr %priv, i32 0, i32 15, i32 0, i32 19
  %71 = ptrtoint ptr %transport_header.i.i.i19 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %transport_header.i.i.i19, align 2
  %conv.i.i.i20 = zext i16 %72 to i32
  %add.ptr.i.i.i21 = getelementptr i8, ptr %60, i32 %conv.i.i.i20
  br label %if.end158.sink.split

if.end158.sink.split:                             ; preds = %do.body133, %do.body79
  %add.ptr.i.i.i.sink = phi ptr [ %add.ptr.i.i.i, %do.body79 ], [ %add.ptr.i.i.i21, %do.body133 ]
  %conv.i.i.i20.sink = phi i32 [ %conv.i.i.i, %do.body79 ], [ %conv.i.i.i20, %do.body133 ]
  %rrcfv.0.ph = phi i32 [ 44, %do.body79 ], [ 36, %do.body133 ]
  %tvsvsn.0.ph = phi i8 [ 1, %do.body79 ], [ 9, %do.body133 ]
  %mss.0.ph = phi i16 [ %56, %do.body79 ], [ %68, %do.body133 ]
  %doff.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i.sink, i32 0, i32 4
  %73 = ptrtoint ptr %doff.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %bf.load.i.i = load i16, ptr %doff.i.i, align 4
  %74 = lshr i16 %bf.load.i.i, 10
  %75 = and i16 %74, 60
  %mul.i.i24 = zext i16 %75 to i32
  %conv143 = trunc i16 %75 to i8
  %len146 = getelementptr inbounds %struct.sk_buff, ptr %priv, i32 0, i32 6
  %76 = ptrtoint ptr %len146 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %len146, align 4
  %78 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %mac_header.i, align 2
  %conv150 = zext i16 %79 to i32
  %80 = add i32 %77, %conv150
  %81 = add nuw nsw i32 %conv.i.i.i20.sink, %mul.i.i24
  %sub154 = sub i32 %80, %81
  %conv155 = trunc i32 %sub154 to i16
  br label %if.end158

if.end158:                                        ; preds = %if.end158.sink.split, %land.lhs.true129.if.end158_crit_edge, %land.lhs.true126.if.end158_crit_edge, %do.body104.if.end158_crit_edge, %land.lhs.true.if.end158_crit_edge, %if.then52.if.end158_crit_edge, %if.end.if.end158_crit_edge
  %rrcfv.0 = phi i32 [ 44, %land.lhs.true.if.end158_crit_edge ], [ 44, %if.then52.if.end158_crit_edge ], [ 36, %land.lhs.true129.if.end158_crit_edge ], [ 36, %land.lhs.true126.if.end158_crit_edge ], [ 36, %do.body104.if.end158_crit_edge ], [ 32, %if.end.if.end158_crit_edge ], [ %rrcfv.0.ph, %if.end158.sink.split ]
  %tvsvsn.0 = phi i8 [ 0, %land.lhs.true.if.end158_crit_edge ], [ 0, %if.then52.if.end158_crit_edge ], [ 8, %land.lhs.true129.if.end158_crit_edge ], [ 8, %land.lhs.true126.if.end158_crit_edge ], [ 8, %do.body104.if.end158_crit_edge ], [ 0, %if.end.if.end158_crit_edge ], [ %tvsvsn.0.ph, %if.end158.sink.split ]
  %mss.0 = phi i16 [ 0, %land.lhs.true.if.end158_crit_edge ], [ 0, %if.then52.if.end158_crit_edge ], [ 0, %land.lhs.true129.if.end158_crit_edge ], [ 0, %land.lhs.true126.if.end158_crit_edge ], [ 0, %do.body104.if.end158_crit_edge ], [ 0, %if.end.if.end158_crit_edge ], [ %mss.0.ph, %if.end158.sink.split ]
  %l4_len.0 = phi i8 [ 0, %land.lhs.true.if.end158_crit_edge ], [ 0, %if.then52.if.end158_crit_edge ], [ 0, %land.lhs.true129.if.end158_crit_edge ], [ 0, %land.lhs.true126.if.end158_crit_edge ], [ 0, %do.body104.if.end158_crit_edge ], [ 0, %if.end.if.end158_crit_edge ], [ %conv143, %if.end158.sink.split ]
  %paylen.0 = phi i16 [ 0, %land.lhs.true.if.end158_crit_edge ], [ 0, %if.then52.if.end158_crit_edge ], [ 0, %land.lhs.true129.if.end158_crit_edge ], [ 0, %land.lhs.true126.if.end158_crit_edge ], [ 0, %do.body104.if.end158_crit_edge ], [ 0, %if.end.if.end158_crit_edge ], [ %conv155, %if.end158.sink.split ]
  %82 = getelementptr inbounds %struct.anon.149, ptr %13, i32 0, i32 2
  %ip_offset159 = getelementptr inbounds %struct.anon.152, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %ip_offset159 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %ip_offset.0, ptr %ip_offset159, align 1
  %tse_vlan_snap_v6_sctp_nth = getelementptr inbounds %struct.anon.152, ptr %82, i32 0, i32 3
  %84 = ptrtoint ptr %tse_vlan_snap_v6_sctp_nth to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %tvsvsn.0, ptr %tse_vlan_snap_v6_sctp_nth, align 1
  %85 = call i16 @llvm.bswap.i16(i16 %mss.0)
  %mss160 = getelementptr inbounds %struct.anon.149, ptr %13, i32 0, i32 3
  %86 = ptrtoint ptr %mss160 to i32
  call void @__asan_storeN_noabort(i32 %86, i32 2)
  store i16 %85, ptr %mss160, align 1
  %l4_len161 = getelementptr inbounds %struct.anon.149, ptr %13, i32 0, i32 4
  %87 = ptrtoint ptr %l4_len161 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %l4_len.0, ptr %l4_len161, align 1
  %88 = call i16 @llvm.bswap.i16(i16 %paylen.0)
  %paylen162 = getelementptr inbounds %struct.anon.149, ptr %13, i32 0, i32 6
  %89 = ptrtoint ptr %paylen162 to i32
  call void @__asan_storeN_noabort(i32 %89, i32 2)
  store i16 %88, ptr %paylen162, align 1
  br label %do.body165

do.body165:                                       ; preds = %if.end158, %if.then.do.body165_crit_edge, %entry.do.body165_crit_edge
  %rrcfv.1 = phi i32 [ %rrcfv.0, %if.end158 ], [ 32, %if.then.do.body165_crit_edge ], [ 32, %entry.do.body165_crit_edge ]
  %90 = add i32 %buf_num, 7
  %conv27 = and i32 %90, 7
  %shl28 = shl i32 %20, 4
  %and29 = and i32 %shl28, 112
  %or31 = or i32 %and29, %conv27
  %conv32 = trunc i32 %or31 to i8
  %and167 = and i32 %rrcfv.1, 239
  %shl169 = shl i32 %frag_end, 4
  %and170 = and i32 %shl169, 16
  %or172 = or i32 %and167, %and170
  %conv173 = trunc i32 %or172 to i8
  %91 = getelementptr inbounds %struct.anon.149, ptr %13, i32 0, i32 2
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv32, ptr %91, align 1
  %ra_ri_cs_fe_vld = getelementptr inbounds %struct.anon.152, ptr %91, i32 0, i32 1
  %93 = ptrtoint ptr %ra_ri_cs_fe_vld to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv173, ptr %ra_ri_cs_fe_vld, align 1
  %94 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %next_to_use, align 8
  %add178 = add i32 %95, 1
  %desc_num = getelementptr inbounds %struct.hnae_ring, ptr %ring, i32 0, i32 9
  %96 = ptrtoint ptr %desc_num to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %desc_num, align 8
  %conv179 = zext i16 %97 to i32
  %rem = srem i32 %add178, %conv179
  store i32 %rem, ptr %next_to_use, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_status(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hnae_get_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hns_nic_uninit_ring_data(ptr nocapture noundef readonly %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ae_handle = getelementptr inbounds %struct.hns_nic_priv, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %ae_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ae_handle, align 4
  %q_num = getelementptr inbounds %struct.hnae_handle, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %q_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %q_num, align 4
  %mul33 = shl i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul33)
  %cmp34 = icmp sgt i32 %mul33, 0
  br i1 %cmp34, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ring_data = getelementptr inbounds %struct.hns_nic_priv, ptr %priv, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %ring_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ring_data, align 4
  %napi = getelementptr %struct.hns_nic_ring_data, ptr %5, i32 %i.035, i32 1
  tail call void @__netif_napi_del(ptr noundef %napi) #14
  tail call void @synchronize_net() #14
  %6 = ptrtoint ptr %ring_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ring_data, align 4
  %arrayidx2 = getelementptr %struct.hns_nic_ring_data, ptr %7, i32 %i.035
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2, align 8
  %irq_init_flag = getelementptr inbounds %struct.hnae_ring, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %irq_init_flag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq_init_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp3 = icmp eq i32 %11, 1
  br i1 %cmp3, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %irq = getelementptr inbounds %struct.hnae_ring, ptr %9, i32 0, i32 4
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 8
  %call.i.i = tail call i32 @__irq_apply_affinity_hint(i32 noundef %13, ptr noundef null, i1 noundef zeroext true) #14
  %14 = ptrtoint ptr %ring_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ring_data, align 4
  %arrayidx8 = getelementptr %struct.hns_nic_ring_data, ptr %15, i32 %i.035
  %16 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx8, align 8
  %irq10 = getelementptr inbounds %struct.hnae_ring, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %irq10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq10, align 8
  %call13 = tail call ptr @free_irq(i32 noundef %19, ptr noundef %arrayidx8) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %20 = ptrtoint ptr %ring_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ring_data, align 4
  %arrayidx15 = getelementptr %struct.hns_nic_ring_data, ptr %21, i32 %i.035
  %22 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx15, align 8
  %irq_init_flag17 = getelementptr inbounds %struct.hnae_ring, ptr %23, i32 0, i32 16
  %24 = ptrtoint ptr %irq_init_flag17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %irq_init_flag17, align 4
  %inc = add nuw nsw i32 %i.035, 1
  %25 = ptrtoint ptr %q_num to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %q_num, align 4
  %mul = shl i32 %26, 1
  %cmp = icmp slt i32 %inc, %mul
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %ring_data18 = getelementptr inbounds %struct.hns_nic_priv, ptr %priv, i32 0, i32 9
  %27 = ptrtoint ptr %ring_data18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ring_data18, align 4
  tail call void @kfree(ptr noundef %28) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hnae_put_handle(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_nic_tx_poll_one(ptr nocapture noundef readonly %ring_data, i32 noundef %budget, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring_data, align 8
  %dev = getelementptr inbounds %struct.hns_nic_ring_data, ptr %ring_data, i32 0, i32 1, i32 7
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 28
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !205
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !207
  %next_to_use.i = getelementptr inbounds %struct.hnae_ring, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %next_to_use.i, align 8
  %next_to_clean.i = getelementptr inbounds %struct.hnae_ring, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %next_to_clean.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.i = icmp eq i32 %9, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %11)
  %cmp = icmp eq i32 %7, %11
  %or.cond = select i1 %cmp.i, i1 true, i1 %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %desc_num.i = getelementptr inbounds %struct.hnae_ring, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %desc_num.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %desc_num.i, align 8
  %conv.i88 = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.i88)
  %cmp.i89 = icmp sgt i32 %7, %conv.i88
  br i1 %cmp.i89, label %if.end.if.then6_crit_edge, label %if.end.i, !prof !196

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then6

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp3.i = icmp sgt i32 %9, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %7)
  %cmp5.i = icmp slt i32 %11, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp7.i = icmp sge i32 %9, %7
  br i1 %cmp3.i, label %cond.true.i, label %is_valid_clean_head.exit

cond.true.i:                                      ; preds = %if.end.i
  %narrow27.i = select i1 %cmp5.i, i1 %cmp7.i, i1 false
  br i1 %narrow27.i, label %cond.true.i.while.cond.preheader_crit_edge, label %cond.true.i.if.then6_crit_edge

cond.true.i.if.then6_crit_edge:                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then6

cond.true.i.while.cond.preheader_crit_edge:       ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.preheader

is_valid_clean_head.exit:                         ; preds = %if.end.i
  %narrow.i = select i1 %cmp5.i, i1 true, i1 %cmp7.i
  br i1 %narrow.i, label %is_valid_clean_head.exit.while.cond.preheader_crit_edge, label %is_valid_clean_head.exit.if.then6_crit_edge

is_valid_clean_head.exit.if.then6_crit_edge:      ; preds = %is_valid_clean_head.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then6

is_valid_clean_head.exit.while.cond.preheader_crit_edge: ; preds = %is_valid_clean_head.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %is_valid_clean_head.exit.while.cond.preheader_crit_edge, %cond.true.i.while.cond.preheader_crit_edge
  %14 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %next_to_clean.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %15)
  %cmp10.not114 = icmp eq i32 %7, %15
  br i1 %cmp10.not114, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %desc_cb1.i = getelementptr inbounds %struct.hnae_ring, ptr %1, i32 0, i32 2
  %q.i.i = getelementptr inbounds %struct.hnae_ring, ptr %1, i32 0, i32 3
  %desc.i.i.i = getelementptr inbounds %struct.hnae_ring, ptr %1, i32 0, i32 1
  br label %while.body

if.then6:                                         ; preds = %is_valid_clean_head.exit.if.then6_crit_edge, %cond.true.i.if.then6_crit_edge, %if.end.if.then6_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.81, i32 noundef %7, i32 noundef %9, i32 noundef %11) #17
  %stats = getelementptr inbounds %struct.hnae_ring, ptr %1, i32 0, i32 6
  br label %cleanup.sink.split

while.body:                                       ; preds = %hns_nic_reclaim_one_desc.exit.while.body_crit_edge, %while.body.lr.ph
  %16 = phi i32 [ %15, %while.body.lr.ph ], [ %45, %hns_nic_reclaim_one_desc.exit.while.body_crit_edge ]
  %pkts.0116 = phi i32 [ 0, %while.body.lr.ph ], [ %add.i, %hns_nic_reclaim_one_desc.exit.while.body_crit_edge ]
  %bytes.0115 = phi i32 [ 0, %while.body.lr.ph ], [ %add3.i, %hns_nic_reclaim_one_desc.exit.while.body_crit_edge ]
  %17 = ptrtoint ptr %desc_cb1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %desc_cb1.i, align 8
  %type.i = getelementptr %struct.hnae_desc_cb, ptr %18, i32 %16, i32 6
  %19 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp.i93 = icmp eq i16 %20, 0
  %conv2.i = zext i1 %cmp.i93 to i32
  %add.i = add i32 %pkts.0116, %conv2.i
  %length.i = getelementptr %struct.hnae_desc_cb, ptr %18, i32 %16, i32 4
  %21 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %length.i, align 4
  %add3.i = add i32 %22, %bytes.0115
  %arrayidx.i.i = getelementptr %struct.hnae_desc_cb, ptr %18, i32 %16
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i, label %while.body.hns_nic_reclaim_one_desc.exit_crit_edge, label %if.end.i.i

while.body.hns_nic_reclaim_one_desc.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %hns_nic_reclaim_one_desc.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %q.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %q.i.i, align 4
  %handle.i.i = getelementptr inbounds %struct.hnae_queue, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %handle.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %handle.i.i, align 64
  %bops1.i.i = getelementptr inbounds %struct.hnae_handle, ptr %28, i32 0, i32 16
  %29 = ptrtoint ptr %bops1.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bops1.i.i, align 4
  %unmap_buffer.i.i.i = getelementptr inbounds %struct.hnae_buf_ops, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %unmap_buffer.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %unmap_buffer.i.i.i, align 4
  tail call void %32(ptr noundef %1, ptr noundef %arrayidx.i.i) #14
  %33 = ptrtoint ptr %desc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %desc.i.i.i, align 4
  %arrayidx1.i.i.i = getelementptr %struct.hnae_desc, ptr %34, i32 %16
  %35 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 8)
  store i64 0, ptr %arrayidx1.i.i.i, align 1
  %free_buffer.i.i = getelementptr inbounds %struct.hnae_buf_ops, ptr %30, i32 0, i32 1
  %36 = ptrtoint ptr %free_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %free_buffer.i.i, align 4
  tail call void %37(ptr noundef %1, ptr noundef %arrayidx.i.i) #14
  br label %hns_nic_reclaim_one_desc.exit

hns_nic_reclaim_one_desc.exit:                    ; preds = %if.end.i.i, %while.body.hns_nic_reclaim_one_desc.exit_crit_edge
  %38 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %next_to_clean.i, align 4
  %add6.i = add i32 %39, 1
  %40 = ptrtoint ptr %desc_num.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %desc_num.i, align 8
  %conv7.i = zext i16 %41 to i32
  %rem.i = srem i32 %add6.i, %conv7.i
  store i32 %rem.i, ptr %next_to_clean.i, align 4
  %42 = ptrtoint ptr %desc_cb1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %desc_cb1.i, align 8
  %arrayidx = getelementptr %struct.hnae_desc_cb, ptr %43, i32 %rem.i
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %arrayidx) #14, !srcloc !208
  %44 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %next_to_clean.i, align 4
  %cmp10.not = icmp eq i32 %7, %45
  br i1 %cmp10.not, label %hns_nic_reclaim_one_desc.exit.while.end_crit_edge, label %hns_nic_reclaim_one_desc.exit.while.body_crit_edge

hns_nic_reclaim_one_desc.exit.while.body_crit_edge: ; preds = %hns_nic_reclaim_one_desc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

hns_nic_reclaim_one_desc.exit.while.end_crit_edge: ; preds = %hns_nic_reclaim_one_desc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %hns_nic_reclaim_one_desc.exit.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %bytes.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %add3.i, %hns_nic_reclaim_one_desc.exit.while.end_crit_edge ]
  %pkts.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %add.i, %hns_nic_reclaim_one_desc.exit.while.end_crit_edge ]
  %conv = sext i32 %pkts.0.lcssa to i64
  %46 = getelementptr inbounds %struct.hnae_ring, ptr %1, i32 0, i32 6, i32 3
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %46, align 8
  %add = add i64 %48, %conv
  store i64 %add, ptr %46, align 8
  %conv13 = sext i32 %bytes.0.lcssa to i64
  %tx_bytes = getelementptr inbounds %struct.hnae_ring, ptr %1, i32 0, i32 6, i32 3, i32 0, i32 1
  %49 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %tx_bytes, align 8
  %add15 = add i64 %50, %conv13
  store i64 %add15, ptr %tx_bytes, align 8
  %queue_index = getelementptr inbounds %struct.hns_nic_ring_data, ptr %ring_data, i32 0, i32 3
  %51 = ptrtoint ptr %queue_index to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %queue_index, align 4
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %53 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %_tx.i, align 128
  %arrayidx.i = getelementptr %struct.netdev_queue, ptr %54, i32 %52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes.0.lcssa)
  %tobool.not.i = icmp eq i32 %bytes.0.lcssa, 0
  br i1 %tobool.not.i, label %while.end.netdev_tx_completed_queue.exit_crit_edge, label %if.end.i96, !prof !196

while.end.netdev_tx_completed_queue.exit_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %netdev_tx_completed_queue.exit

if.end.i96:                                       ; preds = %while.end
  %dql.i = getelementptr %struct.netdev_queue, ptr %54, i32 %52, i32 15
  tail call void @dql_completed(ptr noundef %dql.i, i32 noundef %bytes.0.lcssa) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !209
  %adj_limit.i.i = getelementptr %struct.netdev_queue, ptr %54, i32 %52, i32 15, i32 1
  %55 = ptrtoint ptr %adj_limit.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %adj_limit.i.i, align 4
  %57 = ptrtoint ptr %dql.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %dql.i, align 128
  %sub.i.i = sub i32 %56, %58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i95 = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i95, label %if.end.i96.netdev_tx_completed_queue.exit_crit_edge, label %if.end14.i, !prof !196

if.end.i96.netdev_tx_completed_queue.exit_crit_edge: ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #16
  br label %netdev_tx_completed_queue.exit

if.end14.i:                                       ; preds = %if.end.i96
  %state.i = getelementptr %struct.netdev_queue, ptr %54, i32 %52, i32 13
  %call15.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %state.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end14.i.netdev_tx_completed_queue.exit_crit_edge, label %if.then17.i

if.end14.i.netdev_tx_completed_queue.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %netdev_tx_completed_queue.exit

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @netif_schedule_queue(ptr noundef %arrayidx.i) #14
  br label %netdev_tx_completed_queue.exit

netdev_tx_completed_queue.exit:                   ; preds = %if.then17.i, %if.end14.i.netdev_tx_completed_queue.exit_crit_edge, %if.end.i96.netdev_tx_completed_queue.exit_crit_edge, %while.end.netdev_tx_completed_queue.exit_crit_edge
  %link = getelementptr i8, ptr %3, i32 2352
  %59 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %link, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool17.not = icmp eq i32 %60, 0
  br i1 %tobool17.not, label %netdev_tx_completed_queue.exit.if.end23_crit_edge, label %land.rhs

netdev_tx_completed_queue.exit.if.end23_crit_edge: ; preds = %netdev_tx_completed_queue.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

land.rhs:                                         ; preds = %netdev_tx_completed_queue.exit
  %state.i97 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %61 = ptrtoint ptr %state.i97 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %state.i97, align 4
  %63 = and i32 %62, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.i98.not = icmp eq i32 %63, 0
  br i1 %tobool.not.i98.not, label %land.rhs.if.end23_crit_edge, label %if.then22, !prof !195

land.rhs.if.end23_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then22:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @netif_carrier_on(ptr noundef %3) #14
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %land.rhs.if.end23_crit_edge, %netdev_tx_completed_queue.exit.if.end23_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pkts.0.lcssa)
  %tobool24.not = icmp eq i32 %pkts.0.lcssa, 0
  br i1 %tobool24.not, label %if.end23.cleanup_crit_edge, label %land.lhs.true

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end23
  %state.i99 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %64 = ptrtoint ptr %state.i99 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %state.i99, align 4
  %66 = and i32 %65, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.i100 = icmp eq i32 %66, 0
  br i1 %tobool.not.i100, label %land.rhs27, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.rhs27:                                       ; preds = %land.lhs.true
  %67 = ptrtoint ptr %desc_num.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %desc_num.i, align 8
  %conv.i102 = zext i16 %68 to i32
  %69 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %next_to_clean.i, align 4
  %71 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %next_to_use.i, align 8
  %sub.i.i105 = sub i32 %conv.i102, %70
  %add.i.i = add i32 %sub.i.i105, %72
  %rem.i.i = srem i32 %add.i.i, %conv.i102
  %73 = xor i32 %rem.i.i, -1
  %sub1.i = add i32 %73, %conv.i102
  %max_desc_num_per_pkt = getelementptr inbounds %struct.hnae_ring, ptr %1, i32 0, i32 10
  %74 = ptrtoint ptr %max_desc_num_per_pkt to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %max_desc_num_per_pkt, align 2
  %conv29 = zext i16 %75 to i32
  %mul = shl nuw nsw i32 %conv29, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i, i32 %mul)
  %cmp30.not = icmp slt i32 %sub1.i, %mul
  br i1 %cmp30.not, label %land.rhs27.cleanup_crit_edge, label %do.end, !prof !195

land.rhs27.cleanup_crit_edge:                     ; preds = %land.rhs27
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %land.rhs27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !210
  %state.i106 = getelementptr %struct.netdev_queue, ptr %54, i32 %52, i32 13
  %76 = ptrtoint ptr %state.i106 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %state.i106, align 4
  %and1.i.i = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %do.end.cleanup_crit_edge, label %land.lhs.true45

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true45:                                  ; preds = %do.end
  %state = getelementptr i8, ptr %3, i32 2368
  %78 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %state, align 4
  %80 = and i32 %79, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool47.not = icmp eq i32 %80, 0
  br i1 %tobool47.not, label %if.then48, label %land.lhs.true45.cleanup_crit_edge

land.lhs.true45.cleanup_crit_edge:                ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then48:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i) #14
  %restart_queue = getelementptr inbounds %struct.hnae_ring, ptr %1, i32 0, i32 6, i32 3, i32 0, i32 3
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then48, %if.then6
  %restart_queue.sink118 = phi ptr [ %restart_queue, %if.then48 ], [ %stats, %if.then6 ]
  %retval.0.ph = phi i32 [ 0, %if.then48 ], [ -5, %if.then6 ]
  %81 = ptrtoint ptr %restart_queue.sink118 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %restart_queue.sink118, align 8
  %inc50 = add i64 %82, 1
  store i64 %inc50, ptr %restart_queue.sink118, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true45.cleanup_crit_edge, %do.end.cleanup_crit_edge, %land.rhs27.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %land.lhs.true45.cleanup_crit_edge ], [ 0, %land.rhs27.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @hns_nic_tx_fini_pro(ptr nocapture noundef readonly %ring_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring_data, align 8
  %q = getelementptr inbounds %struct.hnae_ring, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %q, align 4
  %handle = getelementptr inbounds %struct.hnae_queue, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handle, align 64
  %dev = getelementptr inbounds %struct.hnae_handle, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %ops = getelementptr inbounds %struct.hnae_ae_dev, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %toggle_ring_irq = getelementptr inbounds %struct.hnae_ae_ops, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %toggle_ring_irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %toggle_ring_irq, align 4
  tail call void %11(ptr noundef %1, i32 noundef 0) #14
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %13, i32 28
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !205
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %next_to_clean = getelementptr inbounds %struct.hnae_ring, ptr %1, i32 0, i32 14
  %16 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %next_to_clean, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp.not = icmp eq i32 %15, %17
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %ring_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ring_data, align 8
  %q4 = getelementptr inbounds %struct.hnae_ring, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %q4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %q4, align 4
  %handle5 = getelementptr inbounds %struct.hnae_queue, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %handle5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %handle5, align 64
  %dev6 = getelementptr inbounds %struct.hnae_handle, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev6, align 4
  %ops7 = getelementptr inbounds %struct.hnae_ae_dev, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %ops7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops7, align 4
  %toggle_ring_irq8 = getelementptr inbounds %struct.hnae_ae_ops, ptr %27, i32 0, i32 11
  %28 = ptrtoint ptr %toggle_ring_irq8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %toggle_ring_irq8, align 4
  tail call void %29(ptr noundef %19, i32 noundef 1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  ret i1 %cmp.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @hns_nic_tx_fini_pro_v2(ptr nocapture noundef readonly %ring_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring_data, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 28
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !205
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %next_to_clean = getelementptr inbounds %struct.hnae_ring, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %next_to_clean, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp eq i32 %5, %7
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_nic_common_poll(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %poll_one = getelementptr i8, ptr %napi, i32 232
  %2 = ptrtoint ptr %poll_one to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %poll_one, align 8
  %ex_process = getelementptr i8, ptr %napi, i32 236
  %4 = ptrtoint ptr %ex_process to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ex_process, align 4
  %call = tail call i32 %3(ptr noundef %add.ptr, i32 noundef %budget, ptr noundef %5) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %budget)
  %cmp = icmp slt i32 %call, %budget
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %entry
  %fini_process = getelementptr i8, ptr %napi, i32 240
  %6 = ptrtoint ptr %fini_process to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fini_process, align 8
  %call2 = tail call zeroext i1 %7(ptr noundef %add.ptr) #14
  br i1 %call2, label %if.then3, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef 0) #14
  %q = getelementptr inbounds %struct.hnae_ring, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %q, align 4
  %handle = getelementptr inbounds %struct.hnae_queue, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handle, align 64
  %dev = getelementptr inbounds %struct.hnae_handle, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %ops = getelementptr inbounds %struct.hnae_ae_dev, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %toggle_ring_irq = getelementptr inbounds %struct.hnae_ae_ops, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %toggle_ring_irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %toggle_ring_irq, align 4
  tail call void %17(ptr noundef %1, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %budget, %if.then.cleanup_crit_edge ], [ %call, %if.then3 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_nic_rx_poll_one(ptr noundef %ring_data, i32 noundef %budget, ptr nocapture noundef readonly %v) #0 align 64 {
entry:
  %bnum.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring_data, align 8
  %next_to_clean.i = getelementptr inbounds %struct.hnae_ring, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next_to_clean.i, align 4
  %next_to_use.i = getelementptr inbounds %struct.hnae_ring, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %next_to_use.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not.i = icmp slt i32 %3, %5
  br i1 %cmp.not.i, label %cond.false.i, label %entry.hns_desc_unused.exit_crit_edge

entry.hns_desc_unused.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %hns_desc_unused.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %desc_num.i = getelementptr inbounds %struct.hnae_ring, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %desc_num.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %desc_num.i, align 8
  %conv.i = zext i16 %7 to i32
  br label %hns_desc_unused.exit

hns_desc_unused.exit:                             ; preds = %cond.false.i, %entry.hns_desc_unused.exit_crit_edge
  %cond.i = phi i32 [ %conv.i, %cond.false.i ], [ 0, %entry.hns_desc_unused.exit_crit_edge ]
  %add.i = sub i32 %3, %5
  %sub.i = add i32 %cond.i, %add.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %9, i32 32
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !205
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !211
  %sub = sub i32 %11, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp88 = icmp sgt i32 %budget, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp389 = icmp sgt i32 %sub, 0
  %or.cond90 = select i1 %cmp88, i1 %cmp389, i1 false
  br i1 %or.cond90, label %while.body.lr.ph, label %hns_desc_unused.exit.out_crit_edge

hns_desc_unused.exit.out_crit_edge:               ; preds = %hns_desc_unused.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

while.body.lr.ph:                                 ; preds = %hns_desc_unused.exit
  %desc_num.i52 = getelementptr inbounds %struct.hnae_ring, ptr %1, i32 0, i32 9
  %napi.i = getelementptr inbounds %struct.hns_nic_ring_data, ptr %ring_data, i32 0, i32 1
  %dev.i = getelementptr inbounds %struct.hns_nic_ring_data, ptr %ring_data, i32 0, i32 1, i32 7
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %unused_count.094 = phi i32 [ %sub.i, %while.body.lr.ph ], [ %unused_count.1, %while.cond.backedge.while.body_crit_edge ]
  %clean_count.093 = phi i32 [ 0, %while.body.lr.ph ], [ %add14126, %while.cond.backedge.while.body_crit_edge ]
  %recv_bds.092 = phi i32 [ 0, %while.body.lr.ph ], [ %add13124, %while.cond.backedge.while.body_crit_edge ]
  %recv_pkts.091 = phi i32 [ 0, %while.body.lr.ph ], [ %recv_pkts.0.be, %while.cond.backedge.while.body_crit_edge ]
  %add = add i32 %unused_count.094, %clean_count.093
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %add)
  %cmp4 = icmp sgt i32 %add, 15
  br i1 %cmp4, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %while.body
  call fastcc void @hns_nic_alloc_rx_buffers(ptr noundef %ring_data, i32 noundef %add)
  %12 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %next_to_clean.i, align 4
  %14 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %next_to_use.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.not.i51 = icmp slt i32 %13, %15
  br i1 %cmp.not.i51, label %cond.false.i54, label %if.then.hns_desc_unused.exit58_crit_edge

if.then.hns_desc_unused.exit58_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %hns_desc_unused.exit58

cond.false.i54:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %desc_num.i52 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %desc_num.i52, align 8
  %conv.i53 = zext i16 %17 to i32
  br label %hns_desc_unused.exit58

hns_desc_unused.exit58:                           ; preds = %cond.false.i54, %if.then.hns_desc_unused.exit58_crit_edge
  %cond.i55 = phi i32 [ %conv.i53, %cond.false.i54 ], [ 0, %if.then.hns_desc_unused.exit58_crit_edge ]
  %add.i56 = sub i32 %13, %15
  %sub.i57 = add i32 %add.i56, %cond.i55
  br label %if.end

if.end:                                           ; preds = %hns_desc_unused.exit58, %while.body.if.end_crit_edge
  %clean_count.1 = phi i32 [ 0, %hns_desc_unused.exit58 ], [ %clean_count.093, %while.body.if.end_crit_edge ]
  %unused_count.1 = phi i32 [ %sub.i57, %hns_desc_unused.exit58 ], [ %unused_count.094, %while.body.if.end_crit_edge ]
  %18 = ptrtoint ptr %ring_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ring_data, align 8
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bnum.i) #14
  %22 = ptrtoint ptr %bnum.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %bnum.i, align 4, !annotation !193
  %desc2.i = getelementptr inbounds %struct.hnae_ring, ptr %19, i32 0, i32 1
  %23 = ptrtoint ptr %desc2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %desc2.i, align 4
  %next_to_clean.i59 = getelementptr inbounds %struct.hnae_ring, ptr %19, i32 0, i32 14
  %25 = ptrtoint ptr %next_to_clean.i59 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %next_to_clean.i59, align 4
  %arrayidx.i = getelementptr %struct.hnae_desc, ptr %24, i32 %26
  %desc_cb3.i = getelementptr inbounds %struct.hnae_ring, ptr %19, i32 0, i32 2
  %27 = ptrtoint ptr %desc_cb3.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %desc_cb3.i, align 8
  %arrayidx5.i = getelementptr %struct.hnae_desc_cb, ptr %28, i32 %26
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %arrayidx.i) #14, !srcloc !208
  %buf.i = getelementptr %struct.hnae_desc_cb, ptr %28, i32 %26, i32 1
  %29 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buf.i, align 4
  %page_offset.i = getelementptr %struct.hnae_desc_cb, ptr %28, i32 %26, i32 3
  %31 = ptrtoint ptr %page_offset.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %page_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 %32
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %add.ptr.i) #14, !srcloc !208
  %call.i.i = call ptr @__napi_alloc_skb(ptr noundef %napi.i, i32 noundef 256, i32 noundef 2592) #14
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %hns_nic_poll_rx_skb.exit.thread, label %if.end.i, !prof !196

hns_nic_poll_rx_skb.exit.thread:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %sw_err_cnt.i = getelementptr inbounds %struct.hnae_ring, ptr %19, i32 0, i32 6, i32 1
  %33 = ptrtoint ptr %sw_err_cnt.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %sw_err_cnt.i, align 8
  %inc.i = add i64 %34, 1
  store i64 %inc.i, ptr %sw_err_cnt.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bnum.i) #14
  br label %out

if.end.i:                                         ; preds = %if.end
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %35 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i, align 4
  call void @llvm.prefetch.p0(ptr %36, i32 1, i32 3, i32 1) #14
  %37 = getelementptr %struct.hnae_desc, ptr %24, i32 %26, i32 1
  %pkt_len.i = getelementptr inbounds %struct.anon.153, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %pkt_len.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %pkt_len.i, align 1
  %40 = call i16 @llvm.bswap.i16(i16 %39) #14
  %conv.i60 = zext i16 %40 to i32
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %37, align 1
  %43 = call i32 @llvm.bswap.i32(i32 %42) #14
  %get_rxd_bnum.i = getelementptr i8, ptr %21, i32 2344
  %44 = ptrtoint ptr %get_rxd_bnum.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %get_rxd_bnum.i, align 8
  call void %45(i32 noundef %43, ptr noundef nonnull %bnum.i) #14
  %46 = ptrtoint ptr %bnum.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bnum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 257, i16 %40)
  %cmp.i = icmp ult i16 %40, 257
  br i1 %cmp.i, label %if.then12.i, label %if.else42.i

if.then12.i:                                      ; preds = %if.end.i
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %48 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.i.not.i.i = icmp eq i32 %49, 0
  br i1 %tobool.i.not.i.i, label %__skb_put.exit.i, label %do.body3.i.i, !prof !195

do.body3.i.i:                                     ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #14, !srcloc !212
  unreachable

__skb_put.exit.i:                                 ; preds = %if.then12.i
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %50 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i243.i = getelementptr i8, ptr %51, i32 %conv.i60
  store ptr %add.ptr.i243.i, ptr %tail.i.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %52 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %53, %conv.i60
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %add.i61 = add nuw nsw i32 %conv.i60, 3
  %and.i = and i32 %add.i61, 131068
  %54 = call ptr @memcpy(ptr %51, ptr %add.ptr.i, i32 %and.i)
  %priv14.i = getelementptr %struct.hnae_desc_cb, ptr %28, i32 %26, i32 2
  %55 = ptrtoint ptr %priv14.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %priv14.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %cmp.i.not.i.i = icmp eq i32 %58, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %page_to_nid.exit.i, !prof !196

if.then.i.i:                                      ; preds = %__skb_put.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @dump_page(ptr noundef %56, ptr noundef nonnull @.str.85) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #14, !srcloc !213
  unreachable

page_to_nid.exit.i:                               ; preds = %__skb_put.exit.i
  %reuse_flag.i = getelementptr %struct.hnae_desc_cb, ptr %28, i32 %26, i32 5
  %59 = ptrtoint ptr %reuse_flag.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 1, ptr %reuse_flag.i, align 4
  %60 = ptrtoint ptr %next_to_clean.i59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %next_to_clean.i59, align 4
  %add29.i = add i32 %61, 1
  %desc_num.i62 = getelementptr inbounds %struct.hnae_ring, ptr %19, i32 0, i32 9
  %62 = ptrtoint ptr %desc_num.i62 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %desc_num.i62, align 8
  %conv30.i = zext i16 %63 to i32
  %rem.i = srem i32 %add29.i, %conv30.i
  store i32 %rem.i, ptr %next_to_clean.i59, align 4
  %64 = ptrtoint ptr %bnum.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bnum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp32.not.i = icmp eq i32 %65, 1
  br i1 %cmp32.not.i, label %page_to_nid.exit.i.lor.rhs.i_crit_edge, label %page_to_nid.exit.i.out_bnum_err.i.thread_crit_edge, !prof !195

page_to_nid.exit.i.out_bnum_err.i.thread_crit_edge: ; preds = %page_to_nid.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_bnum_err.i.thread

page_to_nid.exit.i.lor.rhs.i_crit_edge:           ; preds = %page_to_nid.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.rhs.i

if.else42.i:                                      ; preds = %if.end.i
  %seg_pkt_cnt.i = getelementptr inbounds %struct.hnae_ring, ptr %19, i32 0, i32 6, i32 2
  %66 = ptrtoint ptr %seg_pkt_cnt.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %seg_pkt_cnt.i, align 8
  %inc44.i = add i64 %67, 1
  store i64 %inc44.i, ptr %seg_pkt_cnt.i, align 8
  %call45.i = call i32 @eth_get_headlen(ptr noundef %21, ptr noundef %add.ptr.i, i32 noundef 256) #14
  %data_len.i.i244.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %68 = ptrtoint ptr %data_len.i.i244.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %data_len.i.i244.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.i.not.i245.i = icmp eq i32 %69, 0
  br i1 %tobool.i.not.i245.i, label %__skb_put.exit251.i, label %do.body3.i246.i, !prof !195

do.body3.i246.i:                                  ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #14, !srcloc !212
  unreachable

__skb_put.exit251.i:                              ; preds = %if.else42.i
  %tail.i.i247.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %70 = ptrtoint ptr %tail.i.i247.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %tail.i.i247.i, align 8
  %add.ptr.i248.i = getelementptr i8, ptr %71, i32 %call45.i
  store ptr %add.ptr.i248.i, ptr %tail.i.i247.i, align 8
  %len9.i249.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %72 = ptrtoint ptr %len9.i249.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %len9.i249.i, align 4
  %add.i250.i = add i32 %73, %call45.i
  store i32 %add.i250.i, ptr %len9.i249.i, align 4
  %add47.i = add i32 %call45.i, 3
  %and48.i = and i32 %add47.i, -4
  %74 = call ptr @memcpy(ptr %71, ptr %add.ptr.i, i32 %and48.i)
  call fastcc void @hns_nic_reuse_page(ptr noundef nonnull %call.i.i, i32 noundef 0, ptr noundef %19, i32 noundef %call45.i, ptr noundef %arrayidx5.i) #14
  %75 = ptrtoint ptr %next_to_clean.i59 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %next_to_clean.i59, align 4
  %add50.i = add i32 %76, 1
  %desc_num51.i = getelementptr inbounds %struct.hnae_ring, ptr %19, i32 0, i32 9
  %77 = ptrtoint ptr %desc_num51.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %desc_num51.i, align 8
  %conv52.i = zext i16 %78 to i32
  %rem53.i = srem i32 %add50.i, %conv52.i
  store i32 %rem53.i, ptr %next_to_clean.i59, align 4
  %79 = ptrtoint ptr %bnum.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %bnum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %80)
  %cmp55.i = icmp sgt i32 %80, 16
  br i1 %cmp55.i, label %__skb_put.exit251.i.out_bnum_err.i.thread_crit_edge, label %for.cond.preheader.i, !prof !196

__skb_put.exit251.i.out_bnum_err.i.thread_crit_edge: ; preds = %__skb_put.exit251.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_bnum_err.i.thread

for.cond.preheader.i:                             ; preds = %__skb_put.exit251.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %80)
  %cmp65255.i = icmp sgt i32 %80, 1
  br i1 %cmp65255.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.if.end80.i_crit_edge

for.cond.preheader.i.if.end80.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end80.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0256.i = phi i32 [ %inc79.i, %for.body.i.for.body.i_crit_edge ], [ 1, %for.cond.preheader.i.for.body.i_crit_edge ]
  %81 = ptrtoint ptr %desc2.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %desc2.i, align 4
  %83 = ptrtoint ptr %next_to_clean.i59 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %next_to_clean.i59, align 4
  %85 = ptrtoint ptr %desc_cb3.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %desc_cb3.i, align 8
  %arrayidx72.i = getelementptr %struct.hnae_desc_cb, ptr %86, i32 %84
  call fastcc void @hns_nic_reuse_page(ptr noundef nonnull %call.i.i, i32 noundef %i.0256.i, ptr noundef %19, i32 noundef 0, ptr noundef %arrayidx72.i) #14
  %87 = ptrtoint ptr %next_to_clean.i59 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %next_to_clean.i59, align 4
  %add74.i = add i32 %88, 1
  %89 = ptrtoint ptr %desc_num51.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %desc_num51.i, align 8
  %conv76.i = zext i16 %90 to i32
  %rem77.i = srem i32 %add74.i, %conv76.i
  store i32 %rem77.i, ptr %next_to_clean.i59, align 4
  %inc79.i = add nuw nsw i32 %i.0256.i, 1
  %91 = ptrtoint ptr %bnum.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %bnum.i, align 4
  %cmp65.i = icmp slt i32 %inc79.i, %92
  br i1 %cmp65.i, label %for.body.i.for.body.i_crit_edge, label %for.cond.if.end80_crit_edge.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.cond.if.end80_crit_edge.i:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx69.le.i = getelementptr %struct.hnae_desc, ptr %82, i32 %84
  br label %if.end80.i

if.end80.i:                                       ; preds = %for.cond.if.end80_crit_edge.i, %for.cond.preheader.i.if.end80.i_crit_edge
  %desc.0.lcssa.i = phi ptr [ %arrayidx69.le.i, %for.cond.if.end80_crit_edge.i ], [ %arrayidx.i, %for.cond.preheader.i.if.end80.i_crit_edge ]
  %.lcssa.i = phi i32 [ %92, %for.cond.if.end80_crit_edge.i ], [ %80, %for.cond.preheader.i.if.end80.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.lcssa.i)
  %tobool81.not.i = icmp eq i32 %.lcssa.i, 0
  br i1 %tobool81.not.i, label %if.end80.i.out_bnum_err.i_crit_edge, label %if.end80.i.lor.rhs.i_crit_edge, !prof !196

if.end80.i.lor.rhs.i_crit_edge:                   ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.rhs.i

if.end80.i.out_bnum_err.i_crit_edge:              ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_bnum_err.i

lor.rhs.i:                                        ; preds = %if.end80.i.lor.rhs.i_crit_edge, %page_to_nid.exit.i.lor.rhs.i_crit_edge
  %desc.1254.i = phi ptr [ %desc.0.lcssa.i, %if.end80.i.lor.rhs.i_crit_edge ], [ %arrayidx.i, %page_to_nid.exit.i.lor.rhs.i_crit_edge ]
  %93 = phi i32 [ %.lcssa.i, %if.end80.i.lor.rhs.i_crit_edge ], [ 1, %page_to_nid.exit.i.lor.rhs.i_crit_edge ]
  %max_desc_num_per_pkt.i = getelementptr inbounds %struct.hnae_ring, ptr %19, i32 0, i32 10
  %94 = ptrtoint ptr %max_desc_num_per_pkt.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %max_desc_num_per_pkt.i, align 2
  %conv82.i = zext i16 %95 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %conv82.i)
  %cmp83.i = icmp sgt i32 %93, %conv82.i
  br i1 %cmp83.i, label %lor.rhs.i.out_bnum_err.i_crit_edge, label %if.end99.i, !prof !196

lor.rhs.i.out_bnum_err.i_crit_edge:               ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_bnum_err.i

out_bnum_err.i:                                   ; preds = %lor.rhs.i.out_bnum_err.i_crit_edge, %if.end80.i.out_bnum_err.i_crit_edge
  %desc.2.i = phi ptr [ %desc.1254.i, %lor.rhs.i.out_bnum_err.i_crit_edge ], [ %desc.0.lcssa.i, %if.end80.i.out_bnum_err.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool92.not.i = icmp eq i32 %47, 0
  %spec.select = select i1 %tobool92.not.i, i32 1, i32 %47
  br label %out_bnum_err.i.thread

out_bnum_err.i.thread:                            ; preds = %out_bnum_err.i, %__skb_put.exit251.i.out_bnum_err.i.thread_crit_edge, %page_to_nid.exit.i.out_bnum_err.i.thread_crit_edge
  %desc.2.i67 = phi ptr [ %arrayidx.i, %__skb_put.exit251.i.out_bnum_err.i.thread_crit_edge ], [ %arrayidx.i, %page_to_nid.exit.i.out_bnum_err.i.thread_crit_edge ], [ %desc.2.i, %out_bnum_err.i ]
  %96 = phi i32 [ 1, %__skb_put.exit251.i.out_bnum_err.i.thread_crit_edge ], [ 1, %page_to_nid.exit.i.out_bnum_err.i.thread_crit_edge ], [ %spec.select, %out_bnum_err.i ]
  %97 = ptrtoint ptr %bnum.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %bnum.i, align 4
  %max_desc_num_per_pkt93.i = getelementptr inbounds %struct.hnae_ring, ptr %19, i32 0, i32 10
  %99 = ptrtoint ptr %max_desc_num_per_pkt93.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %max_desc_num_per_pkt93.i, align 2
  %conv94.i = zext i16 %100 to i32
  %101 = ptrtoint ptr %desc.2.i67 to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %desc.2.i67, align 8
  %arrayidx96.i = getelementptr i64, ptr %desc.2.i67, i32 1
  %103 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %arrayidx96.i, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %21, ptr noundef nonnull @.str.83, i32 noundef %98, i32 noundef %conv94.i, i32 noundef %conv.i60, i32 noundef 17, i64 noundef %102, i64 noundef %104) #17
  %err_bd_num.i = getelementptr inbounds %struct.hnae_ring, ptr %19, i32 0, i32 6, i32 3, i32 0, i32 6
  br label %if.then22

if.end99.i:                                       ; preds = %lor.rhs.i
  %105 = getelementptr %struct.hnae_desc, ptr %desc.1254.i, i32 0, i32 1
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_loadN_noabort(i32 %106, i32 4)
  %107 = load i32, ptr %105, align 1
  %108 = call i32 @llvm.bswap.i32(i32 %107) #14
  %109 = and i32 %108, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool102.not.i = icmp eq i32 %109, 0
  br i1 %tobool102.not.i, label %if.then111.i, label %if.end116.i, !prof !196

if.then111.i:                                     ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #16
  %110 = ptrtoint ptr %desc.1254.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %desc.1254.i, align 8
  %112 = ptrtoint ptr %105 to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %105, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %21, ptr noundef nonnull @.str.84, i64 noundef %111, i64 noundef %113) #17
  %non_vld_descs.i = getelementptr inbounds %struct.hnae_ring, ptr %19, i32 0, i32 6, i32 3, i32 0, i32 5
  br label %if.then22

if.end116.i:                                      ; preds = %if.end99.i
  %pkt_len117.i = getelementptr inbounds %struct.hnae_desc, ptr %desc.1254.i, i32 0, i32 1, i32 0, i32 2
  %114 = ptrtoint ptr %pkt_len117.i to i32
  call void @__asan_loadN_noabort(i32 %114, i32 2)
  %115 = load i16, ptr %pkt_len117.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %115)
  %tobool118.not.i = icmp eq i16 %115, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool122.i = icmp slt i32 %108, 0
  %spec.select242.i = select i1 %tobool118.not.i, i1 true, i1 %tobool122.i, !prof !196
  br i1 %spec.select242.i, label %if.then130.i, label %if.end133.i, !prof !196

if.then130.i:                                     ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #16
  %err_pkt_len.i = getelementptr inbounds %struct.hnae_ring, ptr %19, i32 0, i32 6, i32 3, i32 0, i32 4
  br label %if.then22

if.end133.i:                                      ; preds = %if.end116.i
  %116 = and i32 %108, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool136.not.i = icmp eq i32 %116, 0
  br i1 %tobool136.not.i, label %if.end146.i, label %if.then143.i, !prof !195

if.then143.i:                                     ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #16
  %l2_err.i = getelementptr inbounds %struct.hnae_ring, ptr %19, i32 0, i32 6, i32 3, i32 0, i32 7
  br label %if.then22

if.end146.i:                                      ; preds = %if.end133.i
  %117 = getelementptr inbounds %struct.hnae_ring, ptr %19, i32 0, i32 6, i32 3
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %117, align 8
  %inc148.i = add i64 %119, 1
  store i64 %inc148.i, ptr %117, align 8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %120 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %len.i, align 4
  %conv149.i = zext i32 %121 to i64
  %rx_bytes.i = getelementptr inbounds %struct.hnae_ring, ptr %19, i32 0, i32 6, i32 3, i32 0, i32 1
  %122 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %rx_bytes.i, align 8
  %add151.i = add i64 %123, %conv149.i
  store i64 %add151.i, ptr %rx_bytes.i, align 8
  %124 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev.i, align 8
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %125, i32 0, i32 23
  %126 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %features.i.i, align 16
  %and.i.i = and i64 %127, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i.i = icmp ne i64 %and.i.i, 0
  %128 = and i32 %108, 605814784
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %129 = icmp eq i32 %128, 0
  %or.cond.i.i = and i1 %129, %tobool.not.i.i
  br i1 %or.cond.i.i, label %if.end31.i.i, label %if.end146.i.if.end23_crit_edge, !prof !214

if.end146.i.if.end23_crit_edge:                   ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.end31.i.i:                                     ; preds = %if.end146.i
  %and5.i.i = lshr i32 %108, 21
  %shr6.i.i = and i32 %and5.i.i, 15
  %130 = zext i32 %shr6.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %130, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %shr6.i.i, label %if.end31.i.i.if.end23_crit_edge [
    i32 1, label %if.end31.i.i.if.end38.i.i_crit_edge
    i32 0, label %if.end31.i.i.if.end38.i.i_crit_edge210
    i32 3, label %if.end31.i.i.if.end38.i.i_crit_edge211
  ]

if.end31.i.i.if.end38.i.i_crit_edge211:           ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38.i.i

if.end31.i.i.if.end38.i.i_crit_edge210:           ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38.i.i

if.end31.i.i.if.end38.i.i_crit_edge:              ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38.i.i

if.end31.i.i.if.end23_crit_edge:                  ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.end38.i.i:                                     ; preds = %if.end31.i.i.if.end38.i.i_crit_edge, %if.end31.i.i.if.end38.i.i_crit_edge210, %if.end31.i.i.if.end38.i.i_crit_edge211
  %131 = and i32 %108, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool41.not.i.i = icmp eq i32 %131, 0
  br i1 %tobool41.not.i.i, label %if.end49.i.i, label %if.end38.i.i.if.end23_crit_edge, !prof !195

if.end38.i.i.if.end23_crit_edge:                  ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.end49.i.i:                                     ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15
  %132 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.clear.i.i = and i16 %bf.load.i.i, -1537
  %bf.set.i.i = or i16 %bf.clear.i.i, 512
  store i16 %bf.set.i.i, ptr %ip_summed.i.i, align 8
  br label %if.end23

if.then22:                                        ; preds = %if.then143.i, %if.then130.i, %if.then111.i, %out_bnum_err.i.thread
  %err_bd_num.i.sink148 = phi ptr [ %err_bd_num.i, %out_bnum_err.i.thread ], [ %non_vld_descs.i, %if.then111.i ], [ %err_pkt_len.i, %if.then130.i ], [ %l2_err.i, %if.then143.i ]
  %bnum.2 = phi i32 [ %96, %out_bnum_err.i.thread ], [ %47, %if.then111.i ], [ %47, %if.then130.i ], [ %47, %if.then143.i ]
  %133 = ptrtoint ptr %err_bd_num.i.sink148 to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %err_bd_num.i.sink148, align 8
  %inc98.i = add i64 %134, 1
  store i64 %inc98.i, ptr %err_bd_num.i.sink148, align 8
  call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i, i32 noundef 1) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bnum.i) #14
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end23, %if.then22
  %bnum.2.pn = phi i32 [ %bnum.2, %if.then22 ], [ %47, %if.end23 ]
  %add13124 = add i32 %bnum.2.pn, %recv_bds.092
  %add14126 = add i32 %bnum.2.pn, %clean_count.1
  %recv_pkts.0.be = add nuw nsw i32 %recv_pkts.091, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %recv_pkts.0.be, i32 %budget)
  %cmp = icmp slt i32 %recv_pkts.0.be, %budget
  call void @__sanitizer_cov_trace_cmp4(i32 %add13124, i32 %sub)
  %cmp3 = icmp slt i32 %add13124, %sub
  %or.cond = select i1 %cmp, i1 %cmp3, i1 false
  br i1 %or.cond, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.out_crit_edge

while.cond.backedge.out_crit_edge:                ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.end23:                                         ; preds = %if.end49.i.i, %if.end38.i.i.if.end23_crit_edge, %if.end31.i.i.if.end23_crit_edge, %if.end146.i.if.end23_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bnum.i) #14
  call void %v(ptr noundef %ring_data, ptr noundef nonnull %call.i.i) #14
  br label %while.cond.backedge

out:                                              ; preds = %while.cond.backedge.out_crit_edge, %hns_nic_poll_rx_skb.exit.thread, %hns_desc_unused.exit.out_crit_edge
  %recv_pkts.087 = phi i32 [ %recv_pkts.091, %hns_nic_poll_rx_skb.exit.thread ], [ 0, %hns_desc_unused.exit.out_crit_edge ], [ %recv_pkts.0.be, %while.cond.backedge.out_crit_edge ]
  %clean_count.2 = phi i32 [ %clean_count.1, %hns_nic_poll_rx_skb.exit.thread ], [ 0, %hns_desc_unused.exit.out_crit_edge ], [ %add14126, %while.cond.backedge.out_crit_edge ]
  %unused_count.2 = phi i32 [ %unused_count.1, %hns_nic_poll_rx_skb.exit.thread ], [ %sub.i, %hns_desc_unused.exit.out_crit_edge ], [ %unused_count.1, %while.cond.backedge.out_crit_edge ]
  %add25 = add i32 %unused_count.2, %clean_count.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add25)
  %cmp26 = icmp sgt i32 %add25, 0
  br i1 %cmp26, label %if.then27, label %out.if.end29_crit_edge

out.if.end29_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then27:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @hns_nic_alloc_rx_buffers(ptr noundef %ring_data, i32 noundef %add25)
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %out.if.end29_crit_edge
  ret i32 %recv_pkts.087
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hns_nic_rx_up_pro(ptr noundef %ring_data, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %napi = getelementptr inbounds %struct.hns_nic_ring_data, ptr %ring_data, i32 0, i32 1
  %dev = getelementptr inbounds %struct.hns_nic_ring_data, ptr %ring_data, i32 0, i32 1, i32 7
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %call = tail call zeroext i16 @eth_type_trans(ptr noundef %skb, ptr noundef %1) #14
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %2 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %call, ptr %protocol, align 8
  %call2 = tail call i32 @napi_gro_receive(ptr noundef %napi, ptr noundef %skb) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @hns_nic_rx_fini_pro(ptr nocapture noundef readonly %ring_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring_data, align 8
  %q.i = getelementptr inbounds %struct.hnae_ring, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %q.i, align 4
  %handle.i = getelementptr inbounds %struct.hnae_queue, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handle.i, align 64
  %coal_adapt_en.i = getelementptr inbounds %struct.hnae_handle, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %coal_adapt_en.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %coal_adapt_en.i, align 4, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.hns_update_rx_rate.exit_crit_edge, label %lor.lhs.false.i

entry.hns_update_rx_rate.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %hns_update_rx_rate.exit

lor.lhs.false.i:                                  ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %coal_last_jiffies.i = getelementptr inbounds %struct.hnae_ring, ptr %1, i32 0, i32 18
  %9 = ptrtoint ptr %coal_last_jiffies.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %coal_last_jiffies.i, align 8
  %add.neg.i = add i32 %8, -6
  %sub.i = sub i32 %add.neg.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %lor.lhs.false.i.hns_update_rx_rate.exit_crit_edge, label %if.end.i

lor.lhs.false.i.hns_update_rx_rate.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hns_update_rx_rate.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %coal_last_rx_bytes.i = getelementptr inbounds %struct.hnae_ring, ptr %1, i32 0, i32 17
  %11 = ptrtoint ptr %coal_last_rx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %coal_last_rx_bytes.i, align 8
  %rx_bytes.i = getelementptr inbounds %struct.hnae_ring, ptr %1, i32 0, i32 6, i32 3, i32 0, i32 1
  %13 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %rx_bytes.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %12)
  %cmp2.i = icmp ult i64 %14, %12
  br i1 %cmp2.i, label %if.end.i.cleanup.sink.split.i_crit_edge, label %if.end8.i

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split.i

if.end8.i:                                        ; preds = %if.end.i
  %sub12.i = sub i64 %14, %12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %sub14.i = sub i32 %15, %10
  %call.i = tail call i32 @jiffies_to_msecs(i32 noundef %sub14.i) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub12.i)
  %cmp185.i = icmp ult i64 %sub12.i, 4294967296
  br i1 %cmp185.i, label %if.then189.i, label %if.else195.i, !prof !195

if.then189.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv190.i = trunc i64 %sub12.i to i32
  %div193.i = udiv i32 %conv190.i, %call.i
  %16 = lshr i32 %div193.i, 10
  br label %if.end199.i

if.else195.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  %17 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call.i, i64 %sub12.i) #19, !srcloc !216
  %asmresult1.i.i = extractvalue { i64, i64 } %17, 1
  %extract330.i = lshr i64 %asmresult1.i.i, 10
  %extract.t331.i = trunc i64 %extract330.i to i32
  br label %if.end199.i

if.end199.i:                                      ; preds = %if.else195.i, %if.then189.i
  %total_bytes.0.off10.i = phi i32 [ %16, %if.then189.i ], [ %extract.t331.i, %if.else195.i ]
  %coal_rx_rate.i = getelementptr inbounds %struct.hnae_ring, ptr %1, i32 0, i32 20
  %18 = ptrtoint ptr %coal_rx_rate.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %total_bytes.0.off10.i, ptr %coal_rx_rate.i, align 8
  %19 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %rx_bytes.i, align 8
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end199.i, %if.end.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i64 [ %20, %if.end199.i ], [ %14, %if.end.i.cleanup.sink.split.i_crit_edge ]
  %21 = ptrtoint ptr %coal_last_rx_bytes.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %.sink.i, ptr %coal_last_rx_bytes.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %23 = ptrtoint ptr %coal_last_jiffies.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %coal_last_jiffies.i, align 8
  br label %hns_update_rx_rate.exit

hns_update_rx_rate.exit:                          ; preds = %cleanup.sink.split.i, %lor.lhs.false.i.hns_update_rx_rate.exit_crit_edge, %entry.hns_update_rx_rate.exit_crit_edge
  %24 = ptrtoint ptr %ring_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ring_data, align 8
  %q = getelementptr inbounds %struct.hnae_ring, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %q, align 4
  %handle = getelementptr inbounds %struct.hnae_queue, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %handle, align 64
  %dev = getelementptr inbounds %struct.hnae_handle, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %ops = getelementptr inbounds %struct.hnae_ae_dev, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops, align 4
  %toggle_ring_irq = getelementptr inbounds %struct.hnae_ae_ops, ptr %33, i32 0, i32 11
  %34 = ptrtoint ptr %toggle_ring_irq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %toggle_ring_irq, align 4
  tail call void %35(ptr noundef %1, i32 noundef 0) #14
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %37, i32 32
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !205
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %40 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %q.i, align 4
  %handle.i25 = getelementptr inbounds %struct.hnae_queue, ptr %41, i32 0, i32 7
  %42 = ptrtoint ptr %handle.i25 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %handle.i25, align 64
  %coal_adapt_en.i26 = getelementptr inbounds %struct.hnae_handle, ptr %43, i32 0, i32 12
  %44 = ptrtoint ptr %coal_adapt_en.i26 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %coal_adapt_en.i26, align 4, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i27 = icmp eq i8 %45, 0
  br i1 %tobool.not.i27, label %hns_coal_rx_bdnum.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %hns_update_rx_rate.exit
  %coal_last_rx_bytes.i28 = getelementptr inbounds %struct.hnae_ring, ptr %1, i32 0, i32 17
  %46 = ptrtoint ptr %coal_last_rx_bytes.i28 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %coal_last_rx_bytes.i28, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 27, i64 %47)
  %cmp.i29 = icmp ugt i64 %47, 27
  br i1 %cmp.i29, label %hns_coal_rx_bdnum.exit.thread, label %hns_coal_rx_bdnum.exit.thread37

hns_coal_rx_bdnum.exit:                           ; preds = %hns_update_rx_rate.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.not.not = icmp eq i32 %38, 0
  br i1 %cmp.not.not, label %hns_coal_rx_bdnum.exit.if.end14_crit_edge, label %hns_coal_rx_bdnum.exit.if.else_crit_edge

hns_coal_rx_bdnum.exit.if.else_crit_edge:         ; preds = %hns_coal_rx_bdnum.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

hns_coal_rx_bdnum.exit.if.end14_crit_edge:        ; preds = %hns_coal_rx_bdnum.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

hns_coal_rx_bdnum.exit.thread37:                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.not38.not = icmp eq i32 %38, 0
  br i1 %cmp.not38.not, label %hns_coal_rx_bdnum.exit.thread37.if.then6_crit_edge, label %hns_coal_rx_bdnum.exit.thread37.if.else_crit_edge

hns_coal_rx_bdnum.exit.thread37.if.else_crit_edge: ; preds = %hns_coal_rx_bdnum.exit.thread37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

hns_coal_rx_bdnum.exit.thread37.if.then6_crit_edge: ; preds = %hns_coal_rx_bdnum.exit.thread37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then6

hns_coal_rx_bdnum.exit.thread:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %39)
  %cmp.not31 = icmp ugt i32 %39, 3
  br i1 %cmp.not31, label %hns_coal_rx_bdnum.exit.thread.if.else_crit_edge, label %hns_coal_rx_bdnum.exit.thread.if.then6_crit_edge

hns_coal_rx_bdnum.exit.thread.if.then6_crit_edge: ; preds = %hns_coal_rx_bdnum.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then6

hns_coal_rx_bdnum.exit.thread.if.else_crit_edge:  ; preds = %hns_coal_rx_bdnum.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then6:                                         ; preds = %hns_coal_rx_bdnum.exit.thread.if.then6_crit_edge, %hns_coal_rx_bdnum.exit.thread37.if.then6_crit_edge
  tail call fastcc void @hns_nic_adpt_coalesce(ptr noundef %ring_data)
  br label %if.end14

if.else:                                          ; preds = %hns_coal_rx_bdnum.exit.thread.if.else_crit_edge, %hns_coal_rx_bdnum.exit.thread37.if.else_crit_edge, %hns_coal_rx_bdnum.exit.if.else_crit_edge
  %48 = ptrtoint ptr %ring_data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ring_data, align 8
  %q8 = getelementptr inbounds %struct.hnae_ring, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %q8 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %q8, align 4
  %handle9 = getelementptr inbounds %struct.hnae_queue, ptr %51, i32 0, i32 7
  %52 = ptrtoint ptr %handle9 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %handle9, align 64
  %dev10 = getelementptr inbounds %struct.hnae_handle, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev10, align 4
  %ops11 = getelementptr inbounds %struct.hnae_ae_dev, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %ops11 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops11, align 4
  %toggle_ring_irq12 = getelementptr inbounds %struct.hnae_ae_ops, ptr %57, i32 0, i32 11
  %58 = ptrtoint ptr %toggle_ring_irq12 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %toggle_ring_irq12, align 4
  tail call void %59(ptr noundef %49, i32 noundef 1) #14
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then6, %hns_coal_rx_bdnum.exit.if.end14_crit_edge
  %cmp.not32 = phi i1 [ true, %if.then6 ], [ false, %if.else ], [ true, %hns_coal_rx_bdnum.exit.if.end14_crit_edge ]
  ret i1 %cmp.not32
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @hns_nic_rx_fini_pro_v2(ptr nocapture noundef readonly %ring_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring_data, align 8
  %q.i = getelementptr inbounds %struct.hnae_ring, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %q.i, align 4
  %handle.i = getelementptr inbounds %struct.hnae_queue, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handle.i, align 64
  %coal_adapt_en.i = getelementptr inbounds %struct.hnae_handle, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %coal_adapt_en.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %coal_adapt_en.i, align 4, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.hns_update_rx_rate.exit_crit_edge, label %lor.lhs.false.i

entry.hns_update_rx_rate.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %hns_update_rx_rate.exit

lor.lhs.false.i:                                  ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %coal_last_jiffies.i = getelementptr inbounds %struct.hnae_ring, ptr %1, i32 0, i32 18
  %9 = ptrtoint ptr %coal_last_jiffies.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %coal_last_jiffies.i, align 8
  %add.neg.i = add i32 %8, -6
  %sub.i = sub i32 %add.neg.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %lor.lhs.false.i.hns_update_rx_rate.exit_crit_edge, label %if.end.i

lor.lhs.false.i.hns_update_rx_rate.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hns_update_rx_rate.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %coal_last_rx_bytes.i = getelementptr inbounds %struct.hnae_ring, ptr %1, i32 0, i32 17
  %11 = ptrtoint ptr %coal_last_rx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %coal_last_rx_bytes.i, align 8
  %rx_bytes.i = getelementptr inbounds %struct.hnae_ring, ptr %1, i32 0, i32 6, i32 3, i32 0, i32 1
  %13 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %rx_bytes.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %12)
  %cmp2.i = icmp ult i64 %14, %12
  br i1 %cmp2.i, label %if.end.i.cleanup.sink.split.i_crit_edge, label %if.end8.i

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split.i

if.end8.i:                                        ; preds = %if.end.i
  %sub12.i = sub i64 %14, %12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %sub14.i = sub i32 %15, %10
  %call.i = tail call i32 @jiffies_to_msecs(i32 noundef %sub14.i) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub12.i)
  %cmp185.i = icmp ult i64 %sub12.i, 4294967296
  br i1 %cmp185.i, label %if.then189.i, label %if.else195.i, !prof !195

if.then189.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv190.i = trunc i64 %sub12.i to i32
  %div193.i = udiv i32 %conv190.i, %call.i
  %16 = lshr i32 %div193.i, 10
  br label %if.end199.i

if.else195.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  %17 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call.i, i64 %sub12.i) #19, !srcloc !216
  %asmresult1.i.i = extractvalue { i64, i64 } %17, 1
  %extract330.i = lshr i64 %asmresult1.i.i, 10
  %extract.t331.i = trunc i64 %extract330.i to i32
  br label %if.end199.i

if.end199.i:                                      ; preds = %if.else195.i, %if.then189.i
  %total_bytes.0.off10.i = phi i32 [ %16, %if.then189.i ], [ %extract.t331.i, %if.else195.i ]
  %coal_rx_rate.i = getelementptr inbounds %struct.hnae_ring, ptr %1, i32 0, i32 20
  %18 = ptrtoint ptr %coal_rx_rate.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %total_bytes.0.off10.i, ptr %coal_rx_rate.i, align 8
  %19 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %rx_bytes.i, align 8
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end199.i, %if.end.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i64 [ %20, %if.end199.i ], [ %14, %if.end.i.cleanup.sink.split.i_crit_edge ]
  %21 = ptrtoint ptr %coal_last_rx_bytes.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %.sink.i, ptr %coal_last_rx_bytes.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %23 = ptrtoint ptr %coal_last_jiffies.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %coal_last_jiffies.i, align 8
  br label %hns_update_rx_rate.exit

hns_update_rx_rate.exit:                          ; preds = %cleanup.sink.split.i, %lor.lhs.false.i.hns_update_rx_rate.exit_crit_edge, %entry.hns_update_rx_rate.exit_crit_edge
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %25, i32 32
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !205
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %q.i, align 4
  %handle.i11 = getelementptr inbounds %struct.hnae_queue, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %handle.i11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %handle.i11, align 64
  %coal_adapt_en.i12 = getelementptr inbounds %struct.hnae_handle, ptr %31, i32 0, i32 12
  %32 = ptrtoint ptr %coal_adapt_en.i12 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %coal_adapt_en.i12, align 4, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i13 = icmp eq i8 %33, 0
  br i1 %tobool.not.i13, label %hns_coal_rx_bdnum.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %hns_update_rx_rate.exit
  %coal_last_rx_bytes.i14 = getelementptr inbounds %struct.hnae_ring, ptr %1, i32 0, i32 17
  %34 = ptrtoint ptr %coal_last_rx_bytes.i14 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %coal_last_rx_bytes.i14, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 27, i64 %35)
  %cmp.i15 = icmp ugt i64 %35, 27
  br i1 %cmp.i15, label %hns_coal_rx_bdnum.exit.thread, label %hns_coal_rx_bdnum.exit.thread22

hns_coal_rx_bdnum.exit:                           ; preds = %hns_update_rx_rate.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.not = icmp eq i32 %26, 0
  br label %cleanup

hns_coal_rx_bdnum.exit.thread22:                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.not23.not = icmp eq i32 %26, 0
  br i1 %cmp.not23.not, label %hns_coal_rx_bdnum.exit.thread22.if.then3_crit_edge, label %hns_coal_rx_bdnum.exit.thread22.cleanup_crit_edge

hns_coal_rx_bdnum.exit.thread22.cleanup_crit_edge: ; preds = %hns_coal_rx_bdnum.exit.thread22
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

hns_coal_rx_bdnum.exit.thread22.if.then3_crit_edge: ; preds = %hns_coal_rx_bdnum.exit.thread22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then3

hns_coal_rx_bdnum.exit.thread:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp.not17 = icmp ugt i32 %27, 3
  br i1 %cmp.not17, label %hns_coal_rx_bdnum.exit.thread.cleanup_crit_edge, label %hns_coal_rx_bdnum.exit.thread.if.then3_crit_edge

hns_coal_rx_bdnum.exit.thread.if.then3_crit_edge: ; preds = %hns_coal_rx_bdnum.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then3

hns_coal_rx_bdnum.exit.thread.cleanup_crit_edge:  ; preds = %hns_coal_rx_bdnum.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then3:                                         ; preds = %hns_coal_rx_bdnum.exit.thread.if.then3_crit_edge, %hns_coal_rx_bdnum.exit.thread22.if.then3_crit_edge
  tail call fastcc void @hns_nic_adpt_coalesce(ptr noundef %ring_data)
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %hns_coal_rx_bdnum.exit.thread.cleanup_crit_edge, %hns_coal_rx_bdnum.exit.thread22.cleanup_crit_edge, %hns_coal_rx_bdnum.exit
  %cmp.not19 = phi i1 [ false, %hns_coal_rx_bdnum.exit.thread.cleanup_crit_edge ], [ true, %if.then3 ], [ false, %hns_coal_rx_bdnum.exit.thread22.cleanup_crit_edge ], [ %cmp.not, %hns_coal_rx_bdnum.exit ]
  ret i1 %cmp.not19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_completed(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_schedule_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hns_nic_alloc_rx_buffers(ptr nocapture noundef readonly %ring_data, i32 noundef %cleand_count) unnamed_addr #0 align 64 {
entry:
  %res_cbs = alloca %struct.hnae_desc_cb, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %res_cbs) #14
  %0 = call ptr @memset(ptr %res_cbs, i32 255, i32 24)
  %1 = ptrtoint ptr %ring_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ring_data, align 8
  %dev = getelementptr inbounds %struct.hns_nic_ring_data, ptr %ring_data, i32 0, i32 1, i32 7
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cleand_count)
  %cmp42 = icmp sgt i32 %cleand_count, 0
  br i1 %cmp42, label %for.body.lr.ph, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

for.body.lr.ph:                                   ; preds = %entry
  %desc_cb2 = getelementptr inbounds %struct.hnae_ring, ptr %2, i32 0, i32 2
  %next_to_use = getelementptr inbounds %struct.hnae_ring, ptr %2, i32 0, i32 13
  %reuse_pg_cnt = getelementptr inbounds %struct.hnae_ring, ptr %2, i32 0, i32 6, i32 3, i32 0, i32 3
  %desc.i = getelementptr inbounds %struct.hnae_ring, ptr %2, i32 0, i32 1
  %q.i = getelementptr inbounds %struct.hnae_ring, ptr %2, i32 0, i32 3
  %desc_num = getelementptr inbounds %struct.hnae_ring, ptr %2, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %for.body.lr.ph
  %i.043 = phi i32 [ 0, %for.body.lr.ph ], [ %inc12, %if.end9.for.body_crit_edge ]
  %5 = ptrtoint ptr %desc_cb2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %desc_cb2, align 8
  %7 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %next_to_use, align 8
  %reuse_flag = getelementptr %struct.hnae_desc_cb, ptr %6, i32 %8, i32 5
  %9 = ptrtoint ptr %reuse_flag to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %reuse_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not = icmp eq i16 %10, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %reuse_pg_cnt to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %reuse_pg_cnt, align 8
  %inc = add i64 %12, 1
  store i64 %inc, ptr %reuse_pg_cnt, align 8
  %13 = ptrtoint ptr %reuse_flag to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %reuse_flag, align 4
  %14 = ptrtoint ptr %desc_cb2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc_cb2, align 8
  %arrayidx2.i = getelementptr %struct.hnae_desc_cb, ptr %15, i32 %8
  %16 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx2.i, align 4
  %page_offset.i = getelementptr %struct.hnae_desc_cb, ptr %15, i32 %8, i32 3
  %18 = ptrtoint ptr %page_offset.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %page_offset.i, align 4
  %add.i = add i32 %19, %17
  br label %if.end9

if.else:                                          ; preds = %for.body
  %20 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %q.i, align 4
  %handle.i = getelementptr inbounds %struct.hnae_queue, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %handle.i, align 64
  %bops1.i = getelementptr inbounds %struct.hnae_handle, ptr %23, i32 0, i32 16
  %24 = ptrtoint ptr %bops1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bops1.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %call.i = call i32 %27(ptr noundef %2, ptr noundef nonnull %res_cbs) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else.if.then5_crit_edge

if.else.if.then5_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then5

if.end.i:                                         ; preds = %if.else
  %map_buffer.i = getelementptr inbounds %struct.hnae_buf_ops, ptr %25, i32 0, i32 2
  %28 = ptrtoint ptr %map_buffer.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %map_buffer.i, align 4
  %call2.i = call i32 %29(ptr noundef %2, ptr noundef nonnull %res_cbs) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end, label %out_with_buf.i

out_with_buf.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %free_buffer.i = getelementptr inbounds %struct.hnae_buf_ops, ptr %25, i32 0, i32 1
  %30 = ptrtoint ptr %free_buffer.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %free_buffer.i, align 4
  call void %31(ptr noundef %2, ptr noundef nonnull %res_cbs) #14
  br label %if.then5

if.then5:                                         ; preds = %out_with_buf.i, %if.else.if.then5_crit_edge
  %sw_err_cnt = getelementptr inbounds %struct.hnae_ring, ptr %2, i32 0, i32 6, i32 1
  %32 = ptrtoint ptr %sw_err_cnt to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %sw_err_cnt, align 8
  %inc7 = add i64 %33, 1
  store i64 %inc7, ptr %sw_err_cnt, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.82) #17
  br label %do.body

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %next_to_use, align 8
  %36 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %q.i, align 4
  %handle.i29 = getelementptr inbounds %struct.hnae_queue, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %handle.i29 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %handle.i29, align 64
  %bops1.i30 = getelementptr inbounds %struct.hnae_handle, ptr %39, i32 0, i32 16
  %40 = ptrtoint ptr %bops1.i30 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bops1.i30, align 4
  %unmap_buffer.i = getelementptr inbounds %struct.hnae_buf_ops, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %unmap_buffer.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %unmap_buffer.i, align 4
  %44 = ptrtoint ptr %desc_cb2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %desc_cb2, align 8
  %arrayidx.i = getelementptr %struct.hnae_desc_cb, ptr %45, i32 %35
  call void %43(ptr noundef %2, ptr noundef %arrayidx.i) #14
  %46 = ptrtoint ptr %desc_cb2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %desc_cb2, align 8
  %arrayidx3.i = getelementptr %struct.hnae_desc_cb, ptr %47, i32 %35
  %48 = call ptr @memcpy(ptr %arrayidx3.i, ptr %res_cbs, i32 24)
  %49 = load ptr, ptr %desc_cb2, align 8
  %arrayidx5.i32 = getelementptr %struct.hnae_desc_cb, ptr %49, i32 %35
  %50 = ptrtoint ptr %arrayidx5.i32 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx5.i32, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then
  %.sink = phi i32 [ %51, %if.end ], [ %add.i, %if.then ]
  %.sink56 = phi i32 [ %35, %if.end ], [ %8, %if.then ]
  %conv.i33 = zext i32 %.sink to i64
  %52 = call i64 @llvm.bswap.i64(i64 %conv.i33) #14
  %53 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %desc.i, align 4
  %arrayidx6.i = getelementptr %struct.hnae_desc, ptr %54, i32 %.sink56
  %55 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_storeN_noabort(i32 %55, i32 8)
  store i64 %52, ptr %arrayidx6.i, align 1
  %56 = load ptr, ptr %desc.i, align 4
  %57 = getelementptr %struct.hnae_desc, ptr %56, i32 %.sink56, i32 1
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 0, ptr %57, align 1
  %59 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %next_to_use, align 8
  %add = add i32 %60, 1
  %61 = ptrtoint ptr %desc_num to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %desc_num, align 8
  %conv = zext i16 %62 to i32
  %rem = srem i32 %add, %conv
  store i32 %rem, ptr %next_to_use, align 8
  %inc12 = add nuw nsw i32 %i.043, 1
  %exitcond.not = icmp eq i32 %inc12, %cleand_count
  br i1 %exitcond.not, label %if.end9.do.body_crit_edge, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end9.do.body_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.body:                                          ; preds = %if.end9.do.body_crit_edge, %if.then5, %entry.do.body_crit_edge
  %i.039 = phi i32 [ %i.043, %if.then5 ], [ 0, %entry.do.body_crit_edge ], [ %cleand_count, %if.end9.do.body_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !217
  call void @arm_heavy_mb() #14
  %63 = call i32 @llvm.bswap.i32(i32 %i.039)
  %64 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %2, align 8
  %add.ptr = getelementptr i8, ptr %65, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %63) #14, !srcloc !201
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %res_cbs) #14
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_get_headlen(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hns_nic_reuse_page(ptr noundef %skb, i32 noundef %i, ptr nocapture noundef readonly %ring, i32 noundef %pull_len, ptr nocapture noundef %desc_cb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %buf_size = getelementptr inbounds %struct.hnae_ring, ptr %ring, i32 0, i32 8
  %0 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buf_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %1)
  %cmp = icmp eq i32 %1, 2048
  %desc1 = getelementptr inbounds %struct.hnae_ring, ptr %ring, i32 0, i32 1
  %2 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc1, align 4
  %next_to_clean = getelementptr inbounds %struct.hnae_ring, ptr %ring, i32 0, i32 14
  %4 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %next_to_clean, align 4
  %6 = getelementptr %struct.hnae_desc, ptr %3, i32 %5, i32 1
  %size2 = getelementptr inbounds %struct.anon.153, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %size2 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %size2, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %conv = zext i16 %9 to i32
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add = add nuw nsw i32 %conv, 127
  %and = and i32 %add, 130944
  %dec.i = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i)
  %tobool.not.i.i = icmp ult i32 %dec.i, 4096
  %shr.i = lshr i32 %dec.i, 12
  %10 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #14, !range !218
  %sub.i.i = sub nuw nsw i32 32, %10
  %sub.i.i.op = shl i32 4096, %sub.i.i
  %shl = select i1 %tobool.not.i.i, i32 4096, i32 %sub.i.i.op
  %sub = sub i32 %shl, %1
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %truesize.0 = phi i32 [ %and, %if.else ], [ 2048, %entry.if.end_crit_edge ]
  %last_offset.0 = phi i32 [ %sub, %if.else ], [ -1, %entry.if.end_crit_edge ]
  %priv = getelementptr inbounds %struct.hnae_desc_cb, ptr %desc_cb, i32 0, i32 2
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 4
  %page_offset = getelementptr inbounds %struct.hnae_desc_cb, ptr %desc_cb, i32 0, i32 3
  %13 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %page_offset, align 4
  %add6 = add i32 %14, %pull_len
  %sub7 = sub i32 %conv, %pull_len
  tail call void @skb_add_rx_frag(ptr noundef %skb, i32 noundef %i, ptr noundef %12, i32 noundef %add6, i32 noundef %sub7, i32 noundef %truesize.0) #14
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp.i.not.i = icmp eq i32 %18, -1
  br i1 %cmp.i.not.i, label %if.then.i67, label %page_to_nid.exit, !prof !196

if.then.i67:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %16, ptr noundef nonnull @.str.85) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #14, !srcloc !213
  unreachable

page_to_nid.exit:                                 ; preds = %if.end
  br i1 %cmp, label %if.then18, label %if.end33

if.then18:                                        ; preds = %page_to_nid.exit
  %19 = getelementptr inbounds %struct.page, ptr %16, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  %and.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i68 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i68, label %if.end.i.i, label %if.then.i.i, !prof !195

if.then.i.i:                                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i69 = add i32 %21, -1
  br label %page_count.exit

if.end.i.i:                                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %16 to i32
  br label %page_count.exit

page_count.exit:                                  ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i69, %if.then.i.i ], [ %22, %if.end.i.i ]
  %23 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i = getelementptr inbounds %struct.page, ptr %23, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i, i32 noundef 4) #14
  %24 = ptrtoint ptr %_refcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %_refcount.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp21 = icmp eq i32 %25, 1
  br i1 %cmp21, label %if.then29, label %page_count.exit.cleanup_crit_edge, !prof !195

page_count.exit.cleanup_crit_edge:                ; preds = %page_count.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then29:                                        ; preds = %page_count.exit
  %26 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %page_offset, align 4
  %xor = xor i32 %27, %truesize.0
  store i32 %xor, ptr %page_offset, align 4
  %reuse_flag = getelementptr inbounds %struct.hnae_desc_cb, ptr %desc_cb, i32 0, i32 5
  %28 = ptrtoint ptr %reuse_flag to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %reuse_flag, align 4
  %29 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv, align 4
  %31 = getelementptr inbounds %struct.page, ptr %30, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  %and.i.i70 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i70)
  %tobool.not.i.i71 = icmp eq i32 %and.i.i70, 0
  br i1 %tobool.not.i.i71, label %if.end.i.i74, label %if.then.i.i73, !prof !195

if.then.i.i73:                                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i72 = add i32 %33, -1
  br label %_compound_head.exit.i

if.end.i.i74:                                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %30 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i74, %if.then.i.i73
  %retval.0.i.i75 = phi i32 [ %sub.i.i72, %if.then.i.i73 ], [ %34, %if.end.i.i74 ]
  %35 = inttoptr i32 %retval.0.i.i75 to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %35, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #14
  %36 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %37, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !196

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %35, ptr noundef nonnull @.str.87) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #14, !srcloc !219
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #14
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #14, !srcloc !220
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@hns_nic_reuse_page, %cleanup.sink.split)) #14
          to label %cleanup [label %cleanup.sink.split], !srcloc !202

if.end33:                                         ; preds = %page_to_nid.exit
  %39 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %page_offset, align 4
  %add35 = add i32 %40, %truesize.0
  store i32 %add35, ptr %page_offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add35, i32 %last_offset.0)
  %cmp37.not = icmp ugt i32 %add35, %last_offset.0
  br i1 %cmp37.not, label %if.end33.cleanup_crit_edge, label %if.then39

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then39:                                        ; preds = %if.end33
  %reuse_flag40 = getelementptr inbounds %struct.hnae_desc_cb, ptr %desc_cb, i32 0, i32 5
  %41 = ptrtoint ptr %reuse_flag40 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %reuse_flag40, align 4
  %42 = getelementptr inbounds %struct.page, ptr %16, i32 0, i32 1
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %42, align 4
  %and.i.i76 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i76)
  %tobool.not.i.i77 = icmp eq i32 %and.i.i76, 0
  br i1 %tobool.not.i.i77, label %if.end.i.i80, label %if.then.i.i79, !prof !195

if.then.i.i79:                                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i78 = add i32 %44, -1
  br label %_compound_head.exit.i86

if.end.i.i80:                                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #16
  %45 = ptrtoint ptr %16 to i32
  br label %_compound_head.exit.i86

_compound_head.exit.i86:                          ; preds = %if.end.i.i80, %if.then.i.i79
  %retval.0.i.i81 = phi i32 [ %sub.i.i78, %if.then.i.i79 ], [ %45, %if.end.i.i80 ]
  %46 = inttoptr i32 %retval.0.i.i81 to ptr
  %_refcount.i.i.i.i82 = getelementptr inbounds %struct.page, ptr %46, i32 0, i32 3
  %call.i.i.i.i.i.i83 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i82, i32 noundef 4) #14
  %47 = ptrtoint ptr %_refcount.i.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %_refcount.i.i.i.i82, align 4
  %add.i.i84 = add i32 %48, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i84)
  %cmp.i.i85 = icmp ult i32 %add.i.i84, 128
  br i1 %cmp.i.i85, label %if.then.i1.i87, label %do.end5.i.i89, !prof !196

if.then.i1.i87:                                   ; preds = %_compound_head.exit.i86
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %46, ptr noundef nonnull @.str.87) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #14, !srcloc !219
  unreachable

do.end5.i.i89:                                    ; preds = %_compound_head.exit.i86
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i.i9.i.i88 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i82, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i82, i32 1, i32 3, i32 1) #14
  %49 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i82, ptr %_refcount.i.i.i.i82, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i82) #14, !srcloc !220
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@hns_nic_reuse_page, %cleanup.sink.split)) #14
          to label %cleanup [label %cleanup.sink.split], !srcloc !202

cleanup.sink.split:                               ; preds = %do.end5.i.i89, %do.end5.i.i
  %.sink = phi ptr [ %35, %do.end5.i.i ], [ %46, %do.end5.i.i89 ]
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__page_ref_mod(ptr noundef %.sink, i32 noundef 1) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end5.i.i89, %if.end33.cleanup_crit_edge, %do.end5.i.i, %page_count.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__napi_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_add_rx_frag(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hns_nic_adpt_coalesce(ptr nocapture noundef readonly %ring_data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring_data, align 8
  %q = getelementptr inbounds %struct.hnae_ring, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %q, align 4
  %handle2 = getelementptr inbounds %struct.hnae_queue, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %handle2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handle2, align 64
  %coal_param = getelementptr inbounds %struct.hnae_ring, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %coal_param to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %coal_param, align 4
  %coal_rx_rate = getelementptr inbounds %struct.hnae_ring, ptr %1, i32 0, i32 20
  %8 = ptrtoint ptr %coal_rx_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %coal_rx_rate, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %9)
  %cmp = icmp ult i32 %9, 27
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %9)
  %cmp4 = icmp ult i32 %9, 80
  %. = select i1 %cmp4, i32 80, i32 150
  %new_coal_param.0 = select i1 %cmp, i32 30, i32 %.
  call void @__sanitizer_cov_trace_cmp4(i32 %new_coal_param.0, i32 %7)
  %cmp8 = icmp eq i32 %new_coal_param.0, %7
  br i1 %cmp8, label %land.lhs.true, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

land.lhs.true:                                    ; preds = %entry
  %coal_param9 = getelementptr inbounds %struct.hnae_handle, ptr %5, i32 0, i32 8
  %10 = ptrtoint ptr %coal_param9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %coal_param9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %11)
  %cmp10 = icmp eq i32 %7, %11
  br i1 %cmp10, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %entry.if.end12_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %new_coal_param.0, i32 %7)
  %cmp.i = icmp ugt i32 %new_coal_param.0, %7
  %sub.i = sub i32 %new_coal_param.0, %7
  %sub1.i = sub i32 %7, %new_coal_param.0
  %cond.i = select i1 %cmp.i, i32 %sub.i, i32 %sub1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %cond.i)
  %cmp2.i = icmp ugt i32 %cond.i, 8
  %shr.i = lshr i32 %cond.i, 3
  %gap.0.i = select i1 %cmp2.i, i32 %shr.i, i32 %cond.i
  %12 = sub nsw i32 0, %gap.0.i
  %retval.0.p.i = select i1 %cmp.i, i32 %gap.0.i, i32 %12
  %retval.0.i = add i32 %retval.0.p.i, %7
  %13 = ptrtoint ptr %coal_param to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %retval.0.i, ptr %coal_param, align 4
  %coal_param14 = getelementptr inbounds %struct.hnae_handle, ptr %5, i32 0, i32 8
  %14 = ptrtoint ptr %coal_param14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %coal_param14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %15)
  %cmp15 = icmp eq i32 %retval.0.i, %15
  br i1 %cmp15, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %coal_last_jiffies = getelementptr inbounds %struct.hnae_handle, ptr %5, i32 0, i32 7
  %17 = ptrtoint ptr %coal_last_jiffies to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %coal_last_jiffies, align 4
  %queue_index = getelementptr inbounds %struct.hns_nic_ring_data, ptr %ring_data, i32 0, i32 3
  %18 = ptrtoint ptr %queue_index to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %queue_index, align 4
  %coal_ring_idx = getelementptr inbounds %struct.hnae_handle, ptr %5, i32 0, i32 9
  %20 = ptrtoint ptr %coal_ring_idx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %coal_ring_idx, align 4
  br label %cleanup

if.else17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %15)
  %cmp19 = icmp ugt i32 %retval.0.i, %15
  br i1 %cmp19, label %if.else17.if.then26_crit_edge, label %lor.lhs.false

if.else17.if.then26_crit_edge:                    ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then26

lor.lhs.false:                                    ; preds = %if.else17
  %coal_ring_idx20 = getelementptr inbounds %struct.hnae_handle, ptr %5, i32 0, i32 9
  %21 = ptrtoint ptr %coal_ring_idx20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %coal_ring_idx20, align 4
  %queue_index21 = getelementptr inbounds %struct.hns_nic_ring_data, ptr %ring_data, i32 0, i32 3
  %23 = ptrtoint ptr %queue_index21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %queue_index21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp22 = icmp eq i32 %22, %24
  br i1 %cmp22, label %lor.lhs.false.if.then26_crit_edge, label %lor.lhs.false23

lor.lhs.false.if.then26_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then26

lor.lhs.false23:                                  ; preds = %lor.lhs.false
  %coal_last_jiffies24 = getelementptr inbounds %struct.hnae_handle, ptr %5, i32 0, i32 7
  %25 = ptrtoint ptr %coal_last_jiffies24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %coal_last_jiffies24, align 4
  %add = add i32 %26, 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp25 = icmp slt i32 %sub, 0
  br i1 %cmp25, label %lor.lhs.false23.if.then26_crit_edge, label %lor.lhs.false23.cleanup_crit_edge

lor.lhs.false23.cleanup_crit_edge:                ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false23.if.then26_crit_edge:              ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then26

if.then26:                                        ; preds = %lor.lhs.false23.if.then26_crit_edge, %lor.lhs.false.if.then26_crit_edge, %if.else17.if.then26_crit_edge
  %dev = getelementptr inbounds %struct.hnae_handle, ptr %5, i32 0, i32 1
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %ops = getelementptr inbounds %struct.hnae_ae_dev, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops, align 4
  %set_coalesce_usecs = getelementptr inbounds %struct.hnae_ae_ops, ptr %31, i32 0, i32 20
  %32 = ptrtoint ptr %set_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_coalesce_usecs, align 4
  %call27 = tail call i32 %33(ptr noundef %5, i32 noundef %retval.0.i) #14
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  %ops29 = getelementptr inbounds %struct.hnae_ae_dev, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %ops29 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops29, align 4
  %set_coalesce_frames = getelementptr inbounds %struct.hnae_ae_ops, ptr %37, i32 0, i32 21
  %38 = ptrtoint ptr %set_coalesce_frames to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %set_coalesce_frames, align 4
  %call30 = tail call i32 %39(ptr noundef %5, i32 noundef 1, i32 noundef %retval.0.i) #14
  %40 = ptrtoint ptr %coal_param14 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %retval.0.i, ptr %coal_param14, align 4
  %queue_index32 = getelementptr inbounds %struct.hns_nic_ring_data, ptr %ring_data, i32 0, i32 3
  %41 = ptrtoint ptr %queue_index32 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %queue_index32, align 4
  %coal_ring_idx33 = getelementptr inbounds %struct.hnae_handle, ptr %5, i32 0, i32 9
  %43 = ptrtoint ptr %coal_ring_idx33 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %coal_ring_idx33, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %coal_last_jiffies34 = getelementptr inbounds %struct.hnae_handle, ptr %5, i32 0, i32 7
  %45 = ptrtoint ptr %coal_last_jiffies34 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %coal_last_jiffies34, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %lor.lhs.false23.cleanup_crit_edge, %if.then16, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fill_desc(ptr nocapture noundef %ring, ptr noundef %priv, i32 noundef %size, i32 noundef %dma, i32 noundef %frag_end, i32 noundef %buf_num, i32 noundef %type, i32 noundef %mtu) #0 align 64 {
entry:
  %vhdr.i.i = alloca %struct.vlan_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %desc1 = getelementptr inbounds %struct.hnae_ring, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc1, align 4
  %next_to_use = getelementptr inbounds %struct.hnae_ring, ptr %ring, i32 0, i32 13
  %2 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next_to_use, align 8
  %arrayidx = getelementptr %struct.hnae_desc, ptr %1, i32 %3
  %desc_cb2 = getelementptr inbounds %struct.hnae_ring, ptr %ring, i32 0, i32 2
  %4 = ptrtoint ptr %desc_cb2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc_cb2, align 8
  %arrayidx4 = getelementptr %struct.hnae_desc_cb, ptr %5, i32 %3
  %priv5 = getelementptr %struct.hnae_desc_cb, ptr %5, i32 %3, i32 2
  %6 = ptrtoint ptr %priv5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %priv, ptr %priv5, align 4
  %length = getelementptr %struct.hnae_desc_cb, ptr %5, i32 %3, i32 4
  %7 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %size, ptr %length, align 4
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %dma, ptr %arrayidx4, align 4
  %conv = trunc i32 %type to i16
  %type7 = getelementptr %struct.hnae_desc_cb, ptr %5, i32 %3, i32 6
  %9 = ptrtoint ptr %type7 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %type7, align 2
  %conv8 = zext i32 %dma to i64
  %10 = tail call i64 @llvm.bswap.i64(i64 %conv8)
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %10, ptr %arrayidx, align 1
  %conv9 = trunc i32 %size to i16
  %12 = tail call i16 @llvm.bswap.i16(i16 %conv9)
  %13 = getelementptr %struct.hnae_desc, ptr %1, i32 %3, i32 1
  %send_size = getelementptr inbounds %struct.anon.149, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %send_size to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %12, ptr %send_size, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp eq i32 %type, 0
  br i1 %cmp, label %if.then, label %entry.if.end40_crit_edge

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

if.then:                                          ; preds = %entry
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %priv, i32 0, i32 15
  %15 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load = load i16, ptr %ip_summed, align 8
  %16 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %16)
  %cmp13 = icmp eq i16 %16, 1536
  br i1 %cmp13, label %if.then15, label %if.then.if.end40_crit_edge

if.then.if.end40_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

if.then15:                                        ; preds = %if.then
  %protocol16 = getelementptr inbounds %struct.sk_buff, ptr %priv, i32 0, i32 15, i32 0, i32 18
  %17 = ptrtoint ptr %protocol16 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %protocol16, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %18)
  %cmp18 = icmp eq i16 %18, -32512
  br i1 %cmp18, label %if.then.i.i, label %if.then15.if.end_crit_edge

if.then15.if.end_crit_edge:                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then.i.i:                                      ; preds = %if.then15
  %mac_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %priv, i32 0, i32 8
  %19 = ptrtoint ptr %mac_len.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %mac_len.i.i, align 4
  %conv.i.i = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.not.i.i = icmp eq i16 %20, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.if.end26.i.i_crit_edge, label %if.then1.i.i

if.then.i.i.if.end26.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.i.i

if.then1.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %20)
  %cmp.i.i = icmp ult i16 %20, 4
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end25.i.i, !prof !196

do.end.i.i:                                       ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 598, i32 noundef 9, ptr noundef null) #14
  br label %vlan_get_protocol.exit

if.end25.i.i:                                     ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = add nsw i32 %conv.i.i, -4
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.end25.i.i, %if.then.i.i.if.end26.i.i_crit_edge
  %vlan_depth.0.i.i = phi i32 [ %sub.i.i, %if.end25.i.i ], [ 14, %if.then.i.i.if.end26.i.i_crit_edge ]
  %21 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i, i32 0, i32 1
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %priv, i32 0, i32 6
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %priv, i32 0, i32 7
  %tobool2.not.i.i.i.i = icmp eq ptr %priv, null
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %priv, i32 0, i32 19
  br label %do.body27.i.i

do.body27.i.i:                                    ; preds = %do.body27.backedge.i.i, %if.end26.i.i
  %vlan_depth.1.i.i = phi i32 [ %vlan_depth.0.i.i, %if.end26.i.i ], [ %add.i.i, %do.body27.backedge.i.i ]
  %parse_depth.0.i.i = phi i32 [ 8, %if.end26.i.i ], [ %dec.i.i, %do.body27.backedge.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i) #14
  %22 = ptrtoint ptr %vhdr.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -1, ptr %vhdr.i.i, align 2, !annotation !193
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -1, ptr %21, align 2, !annotation !193
  %24 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len.i.i.i.i, align 4
  %26 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_len.i.i.i.i, align 8
  %28 = add i32 %vlan_depth.1.i.i, %27
  %sub.i1.i.i.i = sub i32 %25, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i)
  %cmp.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i, 3
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %if.end.i.i.i.i, !prof !195

if.then.i.i.i.i:                                  ; preds = %do.body27.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %30, i32 %vlan_depth.1.i.i
  br label %skb_header_pointer.exit.i.i

if.end.i.i.i.i:                                   ; preds = %do.body27.i.i
  br i1 %tobool2.not.i.i.i.i, label %if.end.i.i.i.i.cleanup.thread.i.i_crit_edge, label %lor.lhs.false.i.i.i.i

if.end.i.i.i.i.cleanup.thread.i.i_crit_edge:      ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %priv, i32 noundef %vlan_depth.1.i.i, ptr noundef nonnull %vhdr.i.i, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp3.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  %spec.select.i.i.i.i = select i1 %cmp3.i.i.i.i, ptr null, ptr %vhdr.i.i, !prof !196
  br label %skb_header_pointer.exit.i.i

skb_header_pointer.exit.i.i:                      ; preds = %lor.lhs.false.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i, %if.then.i.i.i.i ], [ %spec.select.i.i.i.i, %lor.lhs.false.i.i.i.i ]
  %tobool29.not.i.i = icmp eq ptr %retval.0.i.i.i.i, null
  %dec.i.i = add nsw i32 %parse_depth.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool30.not.i.i = icmp eq i32 %dec.i.i, 0
  %31 = select i1 %tobool29.not.i.i, i1 true, i1 %tobool30.not.i.i, !prof !196
  br i1 %31, label %skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge, label %do.cond42.i.i, !prof !196

skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i.i

cleanup.thread.i.i:                               ; preds = %skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge, %if.end.i.i.i.i.cleanup.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i) #14
  br label %vlan_get_protocol.exit

do.cond42.i.i:                                    ; preds = %skb_header_pointer.exit.i.i
  %h_vlan_encapsulated_proto.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %h_vlan_encapsulated_proto.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i) #14
  %34 = zext i16 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.91)
  switch i16 %33, label %do.cond42.i.i.vlan_get_protocol.exit_crit_edge [
    i16 -30552, label %do.cond42.i.i.do.body27.backedge.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.do.body27.backedge.i.i_crit_edge81
  ]

do.cond42.i.i.do.body27.backedge.i.i_crit_edge81: ; preds = %do.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body27.backedge.i.i

do.cond42.i.i.do.body27.backedge.i.i_crit_edge:   ; preds = %do.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body27.backedge.i.i

do.cond42.i.i.vlan_get_protocol.exit_crit_edge:   ; preds = %do.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %vlan_get_protocol.exit

do.body27.backedge.i.i:                           ; preds = %do.cond42.i.i.do.body27.backedge.i.i_crit_edge, %do.cond42.i.i.do.body27.backedge.i.i_crit_edge81
  %add.i.i = add nsw i32 %vlan_depth.1.i.i, 4
  br label %do.body27.i.i

vlan_get_protocol.exit:                           ; preds = %do.cond42.i.i.vlan_get_protocol.exit_crit_edge, %cleanup.thread.i.i, %do.end.i.i
  %retval.2.i.i = phi i16 [ 0, %do.end.i.i ], [ 0, %cleanup.thread.i.i ], [ %33, %do.cond42.i.i.vlan_get_protocol.exit_crit_edge ]
  %35 = ptrtoint ptr %protocol16 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %retval.2.i.i, ptr %protocol16, align 8
  br label %if.end

if.end:                                           ; preds = %vlan_get_protocol.exit, %if.then15.if.end_crit_edge
  %ip_offset.0 = phi i32 [ 294912, %vlan_get_protocol.exit ], [ 229376, %if.then15.if.end_crit_edge ]
  %36 = ptrtoint ptr %protocol16 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %protocol16, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %37)
  %switch.selectcmp = icmp eq i16 %37, -31011
  %switch.select = select i1 %switch.selectcmp, i32 9216, i32 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %37)
  %switch.selectcmp78 = icmp eq i16 %37, 2048
  %switch.select79 = select i1 %switch.selectcmp78, i32 11264, i32 %switch.select
  %or38 = or i32 %switch.select79, %ip_offset.0
  br label %if.end40

if.end40:                                         ; preds = %if.end, %if.then.if.end40_crit_edge, %entry.if.end40_crit_edge
  %flag_ipoffset.1 = phi i32 [ %or38, %if.end ], [ 8192, %if.then.if.end40_crit_edge ], [ 8192, %entry.if.end40_crit_edge ]
  %shl41 = shl i32 %frag_end, 12
  %or42 = or i32 %flag_ipoffset.1, %shl41
  %buf_num.tr = trunc i32 %buf_num to i16
  %38 = and i16 %buf_num.tr, 255
  %39 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 %38, ptr %13, align 1
  %40 = call i32 @llvm.bswap.i32(i32 %or42)
  %41 = getelementptr inbounds %struct.anon.149, ptr %13, i32 0, i32 2
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %40, ptr %41, align 1
  %43 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %next_to_use, align 8
  %add45 = add i32 %44, 1
  %desc_num = getelementptr inbounds %struct.hnae_ring, ptr %ring, i32 0, i32 9
  %45 = ptrtoint ptr %desc_num to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %desc_num, align 8
  %conv46 = zext i16 %46 to i32
  %rem = srem i32 %add45, %conv46
  store i32 %rem, ptr %next_to_use, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @get_rx_desc_bnum(i32 noundef %bnum_flag, ptr nocapture noundef writeonly %out_bnum) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %and = lshr i32 %bnum_flag, 8
  %shr = and i32 %and, 3
  %0 = ptrtoint ptr %out_bnum to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %shr, ptr %out_bnum, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @get_v2rx_desc_bnum(i32 noundef %bnum_flag, ptr nocapture noundef writeonly %out_bnum) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %and = lshr i32 %bnum_flag, 8
  %shr = and i32 %and, 3
  %add = add nuw nsw i32 %shr, 1
  %0 = ptrtoint ptr %out_bnum to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %add, ptr %out_bnum, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hnae_unregister_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !18, !20, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !41, !43, !45, !47, !49, !50, !51, !52, !53, !54, !55, !57, !58, !60, !61, !62, !64, !66, !68, !69, !70, !72, !73, !74, !76, !77, !79, !80, !82, !83, !84, !86, !87, !89, !91, !92, !93, !94, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !159, !160, !161, !163, !164, !165, !167, !169, !171, !173, !175, !177, !179, !181}
!llvm.named.register.sp = !{!183}
!llvm.module.flags = !{!184, !185, !186, !187, !188, !189, !190, !191}
!llvm.ident = !{!192}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 326, i32 20}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 340, i32 20}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 353, i32 21}
!6 = !{ptr @__initcall__kmod_hns_enet_drv__487_2441_hns_nic_dev_driver_init6, !7, !"__initcall__kmod_hns_enet_drv__487_2441_hns_nic_dev_driver_init6", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 2441, i32 1}
!8 = !{ptr @__exitcall_hns_nic_dev_driver_exit, !7, !"__exitcall_hns_nic_dev_driver_exit", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description488, !10, !"__UNIQUE_ID_description488", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 2443, i32 1}
!11 = !{ptr @__UNIQUE_ID_author489, !12, !"__UNIQUE_ID_author489", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 2444, i32 1}
!13 = !{ptr @__UNIQUE_ID_file490, !14, !"__UNIQUE_ID_file490", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 2445, i32 1}
!15 = !{ptr @__UNIQUE_ID_license491, !14, !"__UNIQUE_ID_license491", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_alias492, !17, !"__UNIQUE_ID_alias492", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 2446, i32 1}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 1121, i32 22}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 1124, i32 22}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 1334, i32 20}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 1291, i32 5}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 1292, i32 29}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 1292, i32 36}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 1300, i32 29}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 2433, i32 11}
!41 = !{ptr @hns_nic_dev_driver, !42, !"hns_nic_dev_driver", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 2431, i32 31}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 2267, i32 10}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 2272, i32 44}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 2275, i32 4}
!49 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @hns_nic_dev_probe._entry, !48, !"_entry", i1 false, i1 false}
!54 = !{ptr @hns_nic_dev_probe._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @hns_nic_dev_probe._entry.21, !56, !"_entry", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 2295, i32 4}
!57 = !{ptr @hns_nic_dev_probe._entry_ptr.22, !56, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 2304, i32 3}
!60 = !{ptr @hns_nic_dev_probe._entry.23, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @hns_nic_dev_probe._entry_ptr.25, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 2309, i32 38}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 2312, i32 39}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 2356, i32 3}
!68 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @hns_nic_dev_probe.__UNIQUE_ID_ddebug485, !67, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 2358, i32 3}
!72 = !{ptr @hns_nic_dev_probe._entry.30, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @hns_nic_dev_probe._entry_ptr.32, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @hns_nic_dev_probe.__key, !75, !"__key", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 2363, i32 2}
!76 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @hns_nic_dev_probe.__key.34, !78, !"__key", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 2364, i32 2}
!79 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 2374, i32 4}
!82 = !{ptr @hns_nic_dev_probe._entry.36, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @hns_nic_dev_probe._entry_ptr.38, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 2377, i32 3}
!86 = !{ptr @hns_nic_dev_probe.__UNIQUE_ID_ddebug486, !85, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!87 = distinct !{null, !88, !"hns_enet_acpi_match", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 138, i32 36}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 1217, i32 3}
!91 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @hns_init_mac_addr._entry, !90, !"_entry", i1 false, i1 false}
!94 = !{ptr @hns_init_mac_addr._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @hns_nic_netdev_ops, !96, !"hns_nic_netdev_ops", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 1941, i32 36}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 1455, i32 20}
!99 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 1463, i32 7}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 1470, i32 7}
!103 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 1878, i32 20}
!105 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 1848, i32 20}
!107 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 1854, i32 21}
!109 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 1859, i32 22}
!111 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 1193, i32 20}
!113 = !{ptr @.str.51, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 1744, i32 21}
!115 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 1751, i32 20}
!117 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 1762, i32 21}
!119 = !{ptr @.str.54, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 1492, i32 21}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 2081, i32 8}
!123 = !{ptr @.str.56, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 1778, i32 24}
!125 = !{ptr @.str.57, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!127 = !{ptr @.str.58, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 2020, i32 28}
!129 = !{ptr @.str.59, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 2021, i32 34}
!131 = !{ptr @.str.60, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 2021, i32 44}
!133 = !{ptr @.str.61, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 1985, i32 5}
!135 = !{ptr @.str.62, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @hns_nic_dump._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @hns_nic_dump._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 1993, i32 3}
!140 = !{ptr @hns_nic_dump._entry.63, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @hns_nic_dump._entry_ptr.65, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.67, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 1995, i32 3}
!144 = !{ptr @hns_nic_dump._entry.66, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @hns_nic_dump._entry_ptr.68, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 1997, i32 3}
!148 = !{ptr @hns_nic_dump._entry.69, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @hns_nic_dump._entry_ptr.71, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.73, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 1999, i32 3}
!152 = !{ptr @hns_nic_dump._entry.72, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @hns_nic_dump._entry_ptr.74, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.75, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 2193, i32 3}
!156 = !{ptr @hns_nic_try_get_ae.__UNIQUE_ID_ddebug484, !155, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!157 = !{ptr @.str.76, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 2200, i32 3}
!159 = !{ptr @hns_nic_try_get_ae._entry, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @hns_nic_try_get_ae._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.78, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 2214, i32 3}
!163 = !{ptr @hns_nic_try_get_ae._entry.77, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @hns_nic_try_get_ae._entry_ptr.79, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.80, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 2096, i32 28}
!167 = !{ptr @.str.81, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 965, i32 20}
!169 = !{ptr @.str.82, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 679, i32 22}
!171 = !{ptr @.str.83, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 618, i32 20}
!173 = !{ptr @.str.84, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 630, i32 20}
!175 = !{ptr @.str.85, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../include/linux/mm.h", i32 1368, i32 10}
!177 = distinct !{null, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../include/linux/mm.h", i32 717, i32 2}
!179 = !{ptr @.str.87, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!181 = !{ptr @hns_enet_of_match, !182, !"hns_enet_of_match", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/hisilicon/hns/hns_enet.c", i32 2423, i32 34}
!183 = !{!"sp"}
!184 = !{i32 1, !"wchar_size", i32 2}
!185 = !{i32 1, !"min_enum_size", i32 4}
!186 = !{i32 8, !"branch-target-enforcement", i32 0}
!187 = !{i32 8, !"sign-return-address", i32 0}
!188 = !{i32 8, !"sign-return-address-all", i32 0}
!189 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!190 = !{i32 7, !"uwtable", i32 1}
!191 = !{i32 7, !"frame-pointer", i32 2}
!192 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!193 = !{!"auto-init"}
!194 = !{i64 2158438835}
!195 = !{!"branch_weights", i32 2000, i32 1}
!196 = !{!"branch_weights", i32 1, i32 2000}
!197 = !{i64 2154918161, i64 2154918661, i64 2154918198, i64 2154918254, i64 2154918288, i64 2154918312, i64 2154918353, i64 2154918374, i64 2154918402, i64 2154918436}
!198 = !{i64 2154919505}
!199 = !{i64 2155866969}
!200 = !{i64 2158438077}
!201 = !{i64 6135984}
!202 = !{i64 2148783330, i64 2148783335, i64 2148783348, i64 2148783392, i64 2148783426, i64 2148783447}
!203 = !{i64 2158477234}
!204 = !{i64 2158257663}
!205 = !{i64 6136402}
!206 = !{i64 2158258238}
!207 = !{i64 2158451920}
!208 = !{i64 799006}
!209 = !{i64 2155868040}
!210 = !{i64 2158452260}
!211 = !{i64 2158450451}
!212 = !{i64 2154673591, i64 2154674079, i64 2154673628, i64 2154673684, i64 2154673718, i64 2154673742, i64 2154673783, i64 2154673804, i64 2154673832, i64 2154673866}
!213 = !{i64 2153426341, i64 2153426825, i64 2153426378, i64 2153426434, i64 2153426468, i64 2153426492, i64 2153426533, i64 2153426554, i64 2153426582, i64 2153426616}
!214 = !{!"branch_weights", i32 -294967296, i32 -282961295}
!215 = !{i8 0, i8 2}
!216 = !{i64 2148692049, i64 2148692329, i64 2148692663, i64 2148692997}
!217 = !{i64 2158443679}
!218 = !{i32 0, i32 33}
!219 = !{i64 2153420559, i64 2153421043, i64 2153420596, i64 2153420652, i64 2153420686, i64 2153420710, i64 2153420751, i64 2153420772, i64 2153420800, i64 2153420834}
!220 = !{i64 2148301515, i64 2148301541, i64 2148301570, i64 2148301604, i64 2148301635, i64 2148301658}

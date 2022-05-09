; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/atheros/alx/main.c_pt.bc'
source_filename = "../drivers/net/ethernet/atheros/alx/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_error_handlers = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.127, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%union.anon.127 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.132, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.149, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.132 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.149 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.alx_priv = type { ptr, %struct.alx_hw, i32, %struct.anon.150, [8 x ptr], i32, i32, i32, %struct.spinlock, i32, i32, i32, i32, %struct.work_struct, %struct.work_struct, i16, %struct.spinlock, %struct.mutex }
%struct.alx_hw = type { ptr, ptr, [6 x i8], [6 x i8], i16, i16, i8, i8, i32, i32, [2 x i32], i32, i32, i8, i8, i32, %struct.spinlock, %struct.mdio_if_info, [2 x i16], i8, %struct.alx_hw_stats }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.alx_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.150 = type { i32, ptr, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.alx_napi = type { %struct.napi_struct, ptr, ptr, ptr, i32, i32, [24 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.alx_tx_queue = type { ptr, ptr, ptr, i32, ptr, i16, i16, i16, i16, i16, i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.alx_txd = type { i16, i16, i32, %union.anon.151 }
%union.anon.151 = type { i64 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.anon.60 = type { i16, i16 }
%struct.page = type { i32, %union.anon.2, %union.anon.124, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.124 = type { %struct.atomic_t }
%struct.alx_buffer = type { ptr, i32, i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ifreq = type { %union.anon.133, %union.anon.134 }
%union.anon.133 = type { [16 x i8] }
%union.anon.134 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.alx_rx_queue = type { ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i16, i16, i16, i16, i16 }
%struct.alx_rrd = type { i32, i32, i32, i32 }
%struct.alx_rfd = type { i64 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__initcall__kmod_alx__515_2056_alx_driver_init6 = internal global ptr @alx_driver_init, section ".initcall6.init", align 4
@alx_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @alx_drv_name, ptr @alx_pci_tbl, ptr @alx_probe, ptr @alx_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @alx_err_handlers, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @alx_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_alx_driver_exit = internal global ptr @alx_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author516 = internal constant [53 x i8] c"alx.author=Johannes Berg <johannes@sipsolutions.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_author517 = internal constant [32 x i8] c"alx.author=Qualcomm Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description518 = internal constant [80 x i8] c"alx.description=Qualcomm Atheros(R) AR816x/AR817x PCI-E Ethernet Network Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file519 = internal constant [46 x i8] c"alx.file=drivers/net/ethernet/atheros/alx/alx\00", section ".modinfo", align 1
@__UNIQUE_ID_license520 = internal constant [16 x i8] c"alx.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"alx\00", [28 x i8] zeroinitializer }, align 32
@alx_drv_name = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"alx\00", [28 x i8] zeroinitializer }, align 32
@alx_pci_tbl = internal constant { [8 x %struct.pci_device_id], [64 x i8] } { [8 x %struct.pci_device_id] [%struct.pci_device_id { i32 6505, i32 4241, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 6505, i32 57489, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 6505, i32 57505, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 6505, i32 57521, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 6505, i32 4240, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 6505, i32 4257, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6505, i32 4256, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@alx_err_handlers = internal constant { %struct.pci_error_handlers, [40 x i8] } { %struct.pci_error_handlers { ptr @alx_pci_error_detected, ptr null, ptr @alx_pci_error_slot_reset, ptr null, ptr null, ptr @alx_pci_error_resume }, [40 x i8] zeroinitializer }, align 32
@alx_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @alx_suspend, ptr @alx_resume, ptr @alx_suspend, ptr @alx_resume, ptr @alx_suspend, ptr @alx_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@alx_probe.__UNIQUE_ID_ddebug514 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 -79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"alx_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/ethernet/atheros/alx/main.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DMA to 64-BIT addresses\0A\00", [39 x i8] zeroinitializer }, align 32
@alx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1736, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"No usable DMA config, aborting\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@alx_probe._entry_ptr = internal global ptr @alx_probe._entry, section ".printk_index", align 4
@alx_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 1744, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pci_request_mem_regions failed\0A\00", [32 x i8] zeroinitializer }, align 32
@alx_probe._entry_ptr.9 = internal global ptr @alx_probe._entry.7, section ".printk_index", align 4
@alx_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 1753, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Can't find power management capability, aborting\0A\00", [46 x i8] zeroinitializer }, align 32
@alx_probe._entry_ptr.12 = internal global ptr @alx_probe._entry.10, section ".printk_index", align 4
@alx_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&alx->hw.mdio_lock\00", [45 x i8] zeroinitializer }, align 32
@alx_probe.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&alx->irq_lock\00", [17 x i8] zeroinitializer }, align 32
@alx_probe.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&alx->stats_lock\00", [47 x i8] zeroinitializer }, align 32
@alx_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 1779, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot map device registers\0A\00", [35 x i8] zeroinitializer }, align 32
@alx_probe._entry_ptr.20 = internal global ptr @alx_probe._entry.18, section ".printk_index", align 4
@alx_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @alx_open, ptr @alx_stop, ptr @alx_start_xmit, ptr null, ptr null, ptr null, ptr @alx_set_rx_mode, ptr @alx_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @alx_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @alx_change_mtu, ptr null, ptr @alx_tx_timeout, ptr @alx_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @alx_poll_controller, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @alx_fix_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@alx_ethtool_ops = external dso_local constant %struct.ethtool_ops, align 4
@alx_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 1794, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"net device private data init failed\0A\00", [59 x i8] zeroinitializer }, align 32
@alx_probe._entry_ptr.23 = internal global ptr @alx_probe._entry.21, section ".printk_index", align 4
@alx_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 1809, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MAC Reset failed, error = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@alx_probe._entry_ptr.26 = internal global ptr @alx_probe._entry.24, section ".printk_index", align 4
@alx_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.1, ptr @.str.2, i32 1819, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to configure PHY speed/duplex (err=%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@alx_probe._entry_ptr.29 = internal global ptr @alx_probe._entry.27, section ".printk_index", align 4
@alx_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.1, ptr @.str.2, i32 1832, ptr @.str.32, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Invalid permanent address programmed, using random one\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@alx_probe._entry_ptr.33 = internal global ptr @alx_probe._entry.30, section ".printk_index", align 4
@alx_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.1, ptr @.str.2, i32 1851, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to identify PHY\0A\00", [40 x i8] zeroinitializer }, align 32
@alx_probe._entry_ptr.36 = internal global ptr @alx_probe._entry.34, section ".printk_index", align 4
@alx_probe.__key.37 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&alx->link_check_wk)\00", [57 x i8] zeroinitializer }, align 32
@alx_probe.__key.39 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&alx->reset_wk)\00", [62 x i8] zeroinitializer }, align 32
@alx_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.1, ptr @.str.2, i32 1864, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"register netdevice failed\0A\00", [37 x i8] zeroinitializer }, align 32
@alx_probe._entry_ptr.43 = internal global ptr @alx_probe._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Qualcomm Atheros AR816x/AR817x Ethernet [%pM]\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Enabling MSI-X interrupts failed!\0A\00", [61 x i8] zeroinitializer }, align 32
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@tx_pidx_reg = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 5618, i16 5616, i16 5658, i16 5656], [24 x i8] zeroinitializer }, align 32
@tx_cidx_reg = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 5622, i16 5620, i16 5662, i16 5660], [24 x i8] zeroinitializer }, align 32
@tx_vect_mask = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 32768, i32 32, i32 64, i32 128], [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"error allocating internal structures\0A\00", [58 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.49 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Allocation of tx buffer failed!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Allocation of rx buffer failed!\0A\00", [63 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"IRQ registration failed!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s-TxRx-%u\00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-tx-%u\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-rx-%u\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s-unused\00", [22 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"fatal interrupt 0x%x, resetting\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"alert interrupt: 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@txq_vec_mapping_shift = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 16, i32 0, i32 20, i32 1, i32 16, i32 1, i32 20], [32 x i8] zeroinitializer }, align 32
@txring_header_reg = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 5504, i16 5500, i16 5344, i16 5348], [24 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@alx_init_sw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 1054, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unrecognized chip, aborting\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"alx_init_sw\00", [20 x i8] zeroinitializer }, align 32
@alx_init_sw._entry_ptr = internal global ptr @alx_init_sw._entry, section ".printk_index", align 4
@alx_init_sw.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&alx->mtx\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"NIC Up: %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Link Down\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"1 Gbps Full\00", [20 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"100 Mbps Full\00", [18 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"100 Mbps Half\00", [18 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"10 Mbps Full\00", [19 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"10 Mbps Half\00", [19 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Unknown speed\00", [18 x i8] zeroinitializer }, align 32
@alx_pci_error_detected._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 1963, ptr @.str.71, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pci error detected\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"alx_pci_error_detected\00", [41 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@alx_pci_error_detected._entry_ptr = internal global ptr @alx_pci_error_detected._entry, section ".printk_index", align 4
@alx_pci_error_slot_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 1988, ptr @.str.71, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pci error slot reset\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"alx_pci_error_slot_reset\00", [39 x i8] zeroinitializer }, align 32
@alx_pci_error_slot_reset._entry_ptr = internal global ptr @alx_pci_error_slot_reset._entry, section ".printk_index", align 4
@alx_pci_error_slot_reset._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.2, i32 1993, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to re-enable PCI device after reset\0A\00", [52 x i8] zeroinitializer }, align 32
@alx_pci_error_slot_reset._entry_ptr.76 = internal global ptr @alx_pci_error_slot_reset._entry.74, section ".printk_index", align 4
@alx_pci_error_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 2013, ptr @.str.71, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pci error resume\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"alx_pci_error_resume\00", [43 x i8] zeroinitializer }, align 32
@alx_pci_error_resume._entry_ptr = internal global ptr @alx_pci_error_resume._entry, section ".printk_index", align 4
@___asan_gen_.79 = private unnamed_addr constant [11 x i8] c"alx_driver\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 2047, i32 26 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 2056, i32 1 }
@___asan_gen_.85 = private unnamed_addr constant [13 x i8] c"alx_drv_name\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 52, i32 19 }
@___asan_gen_.88 = private unnamed_addr constant [12 x i8] c"alx_pci_tbl\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 2031, i32 35 }
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"alx_err_handlers\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 2025, i32 40 }
@___asan_gen_.94 = private unnamed_addr constant [11 x i8] c"alx_pm_ops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1949, i32 8 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1732, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1736, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1743, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1752, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1767, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1768, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1769, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1779, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [15 x i8] c"alx_netdev_ops\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1698, i32 36 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1794, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1809, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1817, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1831, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1851, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1858, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1859, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1864, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1869, i32 7 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 841, i32 25 }
@___asan_gen_.214 = private unnamed_addr constant [12 x i8] c"tx_pidx_reg\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 728, i32 18 }
@___asan_gen_.217 = private unnamed_addr constant [12 x i8] c"tx_cidx_reg\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 730, i32 18 }
@___asan_gen_.220 = private unnamed_addr constant [13 x i8] c"tx_vect_mask\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 732, i32 18 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 795, i32 23 }
@___asan_gen_.230 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 326, i32 6 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 676, i32 25 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 683, i32 24 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1015, i32 24 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 869, i32 25 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 872, i32 25 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 875, i32 25 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 878, i32 25 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 336, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 343, i32 25 }
@___asan_gen_.259 = private unnamed_addr constant [22 x i8] c"txq_vec_mapping_shift\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 800, i32 18 }
@___asan_gen_.262 = private unnamed_addr constant [18 x i8] c"txring_header_reg\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 446, i32 18 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1054, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1094, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1318, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1329, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1276, i32 10 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1278, i32 10 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1280, i32 10 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1282, i32 10 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1284, i32 10 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1286, i32 10 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1963, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1988, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1993, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.337 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.338 = private constant [43 x i8] c"../drivers/net/ethernet/atheros/alx/main.c\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 2013, i32 2 }
@llvm.compiler.used = appending global [110 x ptr] [ptr @__UNIQUE_ID_author516, ptr @__UNIQUE_ID_author517, ptr @__UNIQUE_ID_description518, ptr @__UNIQUE_ID_file519, ptr @__UNIQUE_ID_license520, ptr @__exitcall_alx_driver_exit, ptr @__initcall__kmod_alx__515_2056_alx_driver_init6, ptr @alx_driver_exit, ptr @alx_init_sw._entry, ptr @alx_init_sw._entry_ptr, ptr @alx_pci_error_detected._entry, ptr @alx_pci_error_detected._entry_ptr, ptr @alx_pci_error_resume._entry, ptr @alx_pci_error_resume._entry_ptr, ptr @alx_pci_error_slot_reset._entry, ptr @alx_pci_error_slot_reset._entry.74, ptr @alx_pci_error_slot_reset._entry_ptr, ptr @alx_pci_error_slot_reset._entry_ptr.76, ptr @alx_probe._entry, ptr @alx_probe._entry.10, ptr @alx_probe._entry.18, ptr @alx_probe._entry.21, ptr @alx_probe._entry.24, ptr @alx_probe._entry.27, ptr @alx_probe._entry.30, ptr @alx_probe._entry.34, ptr @alx_probe._entry.41, ptr @alx_probe._entry.7, ptr @alx_probe._entry_ptr, ptr @alx_probe._entry_ptr.12, ptr @alx_probe._entry_ptr.20, ptr @alx_probe._entry_ptr.23, ptr @alx_probe._entry_ptr.26, ptr @alx_probe._entry_ptr.29, ptr @alx_probe._entry_ptr.33, ptr @alx_probe._entry_ptr.36, ptr @alx_probe._entry_ptr.43, ptr @alx_probe._entry_ptr.9, ptr @alx_driver, ptr @.str, ptr @alx_drv_name, ptr @alx_pci_tbl, ptr @alx_err_handlers, ptr @alx_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @alx_probe.__key, ptr @.str.13, ptr @alx_probe.__key.14, ptr @.str.15, ptr @alx_probe.__key.16, ptr @.str.17, ptr @.str.19, ptr @alx_netdev_ops, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.32, ptr @.str.35, ptr @alx_probe.__key.37, ptr @.str.38, ptr @alx_probe.__key.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @tx_pidx_reg, ptr @tx_cidx_reg, ptr @tx_vect_mask, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @txq_vec_mapping_shift, ptr @txring_header_reg, ptr @.str.58, ptr @.str.59, ptr @alx_init_sw.__key, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.78], section "llvm.metadata"
@0 = internal global [87 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alx_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alx_drv_name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alx_pci_tbl to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alx_err_handlers to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alx_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alx_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alx_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alx_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alx_probe.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alx_probe.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alx_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alx_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alx_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alx_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alx_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alx_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alx_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alx_probe.__key.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alx_probe.__key.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alx_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_pidx_reg to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_cidx_reg to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_vect_mask to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txq_vec_mapping_shift to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txring_header_reg to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alx_init_sw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alx_init_sw.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alx_pci_error_detected._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alx_pci_error_slot_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alx_pci_error_slot_reset._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alx_pci_error_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @alx_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @alx_driver, ptr noundef null, ptr noundef nonnull @.str) #13
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @alx_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @pci_unregister_driver(ptr noundef nonnull @alx_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alx_probe(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device_mem(ptr noundef %pdev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %do.body, label %if.else

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef -1) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alx_probe.__UNIQUE_ID_ddebug514, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alx_probe, %if.then8)) #13
          to label %if.end20 [label %if.then8], !srcloc !182

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alx_probe.__UNIQUE_ID_ddebug514, ptr noundef %dev, ptr noundef nonnull @.str.3) #13
  br label %if.end20

if.else:                                          ; preds = %if.end
  %call.i278 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i278)
  %cmp.i279 = icmp eq i32 %call.i278, 0
  br i1 %cmp.i279, label %dma_set_mask_and_coherent.exit282.thread, label %do.end17

dma_set_mask_and_coherent.exit282.thread:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i280 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #13
  br label %if.end20

do.end17:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #16
  br label %out_pci_disable

if.end20:                                         ; preds = %dma_set_mask_and_coherent.exit282.thread, %if.then8, %do.body
  %call.i283 = tail call i32 @pci_select_bars(ptr noundef %pdev, i32 noundef 512) #13
  %call1.i284 = tail call i32 @pci_request_selected_regions(ptr noundef %pdev, i32 noundef %call.i283, ptr noundef nonnull @alx_drv_name) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i284)
  %tobool22.not = icmp eq i32 %call1.i284, 0
  br i1 %tobool22.not, label %if.end28, label %do.end26

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #16
  br label %out_pci_disable

if.end28:                                         ; preds = %if.end20
  %call29 = tail call i32 @pci_enable_pcie_error_reporting(ptr noundef %pdev) #13
  tail call void @pci_set_master(ptr noundef %pdev) #13
  %pm_cap = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 32
  %0 = ptrtoint ptr %pm_cap to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_cap, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool30.not = icmp eq i8 %1, 0
  br i1 %tobool30.not, label %do.end34, label %if.end36

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #16
  br label %out_pci_release

if.end36:                                         ; preds = %if.end28
  %call37 = tail call ptr @alloc_etherdev_mqs(i32 noundef 896, i32 noundef 4, i32 noundef 1) #13
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.end36.out_pci_release_crit_edge, label %if.end40

if.end36.out_pci_release_crit_edge:               ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_pci_release

if.end40:                                         ; preds = %if.end36
  %parent = getelementptr inbounds %struct.net_device, ptr %call37, i32 0, i32 133, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call37, i32 2304
  %hw45 = getelementptr i8, ptr %call37, i32 2312
  %mdio_lock = getelementptr i8, ptr %call37, i32 2372
  tail call void @__raw_spin_lock_init(ptr noundef %mdio_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @alx_probe.__key, i16 noundef signext 3) #13
  %irq_lock = getelementptr i8, ptr %call37, i32 2908
  tail call void @__raw_spin_lock_init(ptr noundef %irq_lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @alx_probe.__key.14, i16 noundef signext 3) #13
  %stats_lock = getelementptr i8, ptr %call37, i32 3060
  tail call void @__raw_spin_lock_init(ptr noundef %stats_lock, ptr noundef nonnull @.str.17, ptr noundef nonnull @alx_probe.__key.16, i16 noundef signext 3) #13
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call37, ptr %add.ptr.i, align 8
  %4 = ptrtoint ptr %hw45 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pdev, ptr %hw45, align 8
  %msg_enable = getelementptr i8, ptr %call37, i32 3056
  %5 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 24804, ptr %msg_enable, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %driver_data.i.i, align 4
  %call61 = tail call ptr @pci_ioremap_bar(ptr noundef %pdev, i32 noundef 0) #13
  %hw_addr = getelementptr i8, ptr %call37, i32 2316
  %7 = ptrtoint ptr %hw_addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call61, ptr %hw_addr, align 4
  %tobool63.not = icmp eq ptr %call61, null
  br i1 %tobool63.not, label %do.end67, label %if.end69

do.end67:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #16
  br label %out_free_netdev

if.end69:                                         ; preds = %if.end40
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call37, i32 0, i32 16
  %8 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @alx_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call37, i32 0, i32 44
  %9 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @alx_ethtool_ops, ptr %ethtool_ops, align 16
  %call70 = tail call i32 @pci_irq_vector(ptr noundef %pdev, i32 noundef 0) #13
  %irq = getelementptr inbounds %struct.net_device, ptr %call37, i32 0, i32 64
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call70, ptr %irq, align 4
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call37, i32 0, i32 115
  %11 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 500, ptr %watchdog_timeo, align 4
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %12 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %driver_data, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool71.not = icmp eq i32 %and, 0
  br i1 %tobool71.not, label %if.end69.if.end74_crit_edge, label %if.then72

if.end69.if.end74_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

if.then72:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #15
  %dev_flags = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 50
  %14 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %dev_flags, align 2
  %16 = or i16 %15, 1
  store i16 %16, ptr %dev_flags, align 2
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %if.end69.if.end74_crit_edge
  %call75 = tail call fastcc i32 @alx_init_sw(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end82, label %do.end80

do.end80:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #16
  br label %out_unmap

if.end82:                                         ; preds = %if.end74
  %mtx = getelementptr i8, ptr %call37, i32 3104
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #13
  tail call void @alx_reset_pcie(ptr noundef %hw45) #13
  %call83 = tail call zeroext i1 @alx_phy_configured(ptr noundef %hw45) #13
  br i1 %call83, label %if.end87, label %if.end87.thread

if.end87:                                         ; preds = %if.end82
  %call88 = tail call i32 @alx_reset_mac(ptr noundef %hw45) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end87.if.end106_crit_edge, label %if.end87.do.end93_crit_edge

if.end87.do.end93_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end93

if.end87.if.end106_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end106

if.end87.thread:                                  ; preds = %if.end82
  tail call void @alx_reset_phy(ptr noundef %hw45) #13
  %call88288 = tail call i32 @alx_reset_mac(ptr noundef %hw45) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88288)
  %tobool89.not289 = icmp eq i32 %call88288, 0
  br i1 %tobool89.not289, label %if.then97, label %if.end87.thread.do.end93_crit_edge

if.end87.thread.do.end93_crit_edge:               ; preds = %if.end87.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end93

do.end93:                                         ; preds = %if.end87.thread.do.end93_crit_edge, %if.end87.do.end93_crit_edge
  %call88290 = phi i32 [ %call88288, %if.end87.thread.do.end93_crit_edge ], [ %call88, %if.end87.do.end93_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %call88290) #16
  br label %out_unlock

if.then97:                                        ; preds = %if.end87.thread
  %adv_cfg = getelementptr i8, ptr %call37, i32 2368
  %17 = ptrtoint ptr %adv_cfg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %adv_cfg, align 8
  %flowctrl = getelementptr i8, ptr %call37, i32 2365
  %19 = ptrtoint ptr %flowctrl to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %flowctrl, align 1
  %call98 = tail call i32 @alx_setup_speed_duplex(ptr noundef %hw45, i32 noundef %18, i8 noundef zeroext %20) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.then97.if.end106_crit_edge, label %do.end103

if.then97.if.end106_crit_edge:                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end106

do.end103:                                        ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %call98) #16
  br label %out_unlock

if.end106:                                        ; preds = %if.then97.if.end106_crit_edge, %if.end87.if.end106_crit_edge
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call37, i32 0, i32 24
  %21 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 1099512741897, ptr %hw_features, align 8
  %perm_addr = getelementptr i8, ptr %call37, i32 2326
  %call107 = tail call i32 @alx_get_perm_macaddr(ptr noundef %hw45, ptr noundef %perm_addr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.end106.if.end117_crit_edge, label %do.end112

if.end106.if.end117_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end117

do.end112:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.31) #16
  tail call fastcc void @eth_hw_addr_random(ptr noundef nonnull %call37)
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call37, i32 0, i32 86
  %22 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_addr, align 64
  %addr_len = getelementptr inbounds %struct.net_device, ptr %call37, i32 0, i32 56
  %24 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %addr_len, align 1
  %conv116 = zext i8 %25 to i32
  %26 = call ptr @memcpy(ptr %perm_addr, ptr %23, i32 %conv116)
  br label %if.end117

if.end117:                                        ; preds = %do.end112, %if.end106.if.end117_crit_edge
  %mac_addr = getelementptr i8, ptr %call37, i32 2320
  %27 = call ptr @memcpy(ptr %mac_addr, ptr %perm_addr, i32 6)
  tail call void @dev_addr_mod(ptr noundef nonnull %call37, i32 noundef 0, ptr noundef %mac_addr, i32 noundef 6) #13
  %perm_addr123 = getelementptr inbounds %struct.net_device, ptr %call37, i32 0, i32 54
  %28 = call ptr @memcpy(ptr %perm_addr123, ptr %perm_addr, i32 6)
  %mdio = getelementptr i8, ptr %call37, i32 2416
  %29 = ptrtoint ptr %mdio to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %mdio, align 8
  %mmds = getelementptr i8, ptr %call37, i32 2420
  %30 = ptrtoint ptr %mmds to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %mmds, align 4
  %dev129 = getelementptr i8, ptr %call37, i32 2428
  %31 = ptrtoint ptr %dev129 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call37, ptr %dev129, align 4
  %mode_support = getelementptr i8, ptr %call37, i32 2424
  %32 = ptrtoint ptr %mode_support to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 7, ptr %mode_support, align 8
  %mdio_read = getelementptr i8, ptr %call37, i32 2432
  %33 = ptrtoint ptr %mdio_read to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @alx_mdio_read, ptr %mdio_read, align 8
  %mdio_write = getelementptr i8, ptr %call37, i32 2436
  %34 = ptrtoint ptr %mdio_write to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @alx_mdio_write, ptr %mdio_write, align 4
  %call133 = tail call zeroext i1 @alx_get_phy_info(ptr noundef %hw45) #13
  br i1 %call133, label %if.end139, label %do.end137

do.end137:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35) #16
  br label %out_unlock

if.end139:                                        ; preds = %if.end117
  tail call void @mutex_unlock(ptr noundef %mtx) #13
  %link_check_wk = getelementptr i8, ptr %call37, i32 2968
  tail call void @__init_work(ptr noundef %link_check_wk, i32 noundef 0) #13
  %35 = ptrtoint ptr %link_check_wk to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -64, ptr %link_check_wk, align 8
  %lockdep_map = getelementptr i8, ptr %call37, i32 2984
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.38, ptr noundef nonnull @alx_probe.__key.37, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry145 = getelementptr i8, ptr %call37, i32 2972
  %36 = ptrtoint ptr %entry145 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %entry145, ptr %entry145, align 4
  %prev.i = getelementptr i8, ptr %call37, i32 2976
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %entry145, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call37, i32 2980
  %38 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @alx_link_check, ptr %func, align 4
  %reset_wk = getelementptr i8, ptr %call37, i32 3012
  tail call void @__init_work(ptr noundef %reset_wk, i32 noundef 0) #13
  %39 = ptrtoint ptr %reset_wk to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -64, ptr %reset_wk, align 4
  %lockdep_map155 = getelementptr i8, ptr %call37, i32 3028
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map155, ptr noundef nonnull @.str.40, ptr noundef nonnull @alx_probe.__key.39, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry157 = getelementptr i8, ptr %call37, i32 3016
  %40 = ptrtoint ptr %entry157 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %entry157, ptr %entry157, align 4
  %prev.i285 = getelementptr i8, ptr %call37, i32 3020
  %41 = ptrtoint ptr %prev.i285 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %entry157, ptr %prev.i285, align 4
  %func159 = getelementptr i8, ptr %call37, i32 3024
  %42 = ptrtoint ptr %func159 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @alx_reset, ptr %func159, align 4
  tail call void @netif_carrier_off(ptr noundef nonnull %call37) #13
  %call162 = tail call i32 @register_netdev(ptr noundef nonnull %call37) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162)
  %tobool163.not = icmp eq i32 %call162, 0
  br i1 %tobool163.not, label %if.end169, label %do.end167

do.end167:                                        ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.42) #16
  br label %out_unmap

if.end169:                                        ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #15
  %dev_addr170 = getelementptr inbounds %struct.net_device, ptr %call37, i32 0, i32 86
  %43 = ptrtoint ptr %dev_addr170 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev_addr170, align 64
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %call37, ptr noundef nonnull @.str.44, ptr noundef %44) #16
  br label %cleanup

out_unlock:                                       ; preds = %do.end137, %do.end103, %do.end93
  %err.0 = phi i32 [ %call88290, %do.end93 ], [ -5, %do.end137 ], [ %call98, %do.end103 ]
  tail call void @mutex_unlock(ptr noundef %mtx) #13
  br label %out_unmap

out_unmap:                                        ; preds = %out_unlock, %do.end167, %do.end80
  %err.1 = phi i32 [ %call75, %do.end80 ], [ %err.0, %out_unlock ], [ %call162, %do.end167 ]
  %45 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw_addr, align 4
  tail call void @iounmap(ptr noundef %46) #13
  br label %out_free_netdev

out_free_netdev:                                  ; preds = %out_unmap, %do.end67
  %err.2 = phi i32 [ %err.1, %out_unmap ], [ -5, %do.end67 ]
  tail call void @free_netdev(ptr noundef nonnull %call37) #13
  br label %out_pci_release

out_pci_release:                                  ; preds = %out_free_netdev, %if.end36.out_pci_release_crit_edge, %do.end34
  %err.3 = phi i32 [ %err.2, %out_free_netdev ], [ -5, %do.end34 ], [ -12, %if.end36.out_pci_release_crit_edge ]
  %call.i286 = tail call i32 @pci_select_bars(ptr noundef %pdev, i32 noundef 512) #13
  tail call void @pci_release_selected_regions(ptr noundef %pdev, i32 noundef %call.i286) #13
  %call173 = tail call i32 @pci_disable_pcie_error_reporting(ptr noundef %pdev) #13
  br label %out_pci_disable

out_pci_disable:                                  ; preds = %out_pci_release, %do.end26, %do.end17
  %err.4 = phi i32 [ %call.i278, %do.end17 ], [ %call1.i284, %do.end26 ], [ %err.3, %out_pci_release ]
  tail call void @pci_disable_device(ptr noundef %pdev) #13
  br label %cleanup

cleanup:                                          ; preds = %out_pci_disable, %if.end169, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.4, %out_pci_disable ], [ 0, %if.end169 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alx_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hw1 = getelementptr inbounds %struct.alx_priv, ptr %1, i32 0, i32 1
  %perm_addr = getelementptr inbounds %struct.alx_priv, ptr %1, i32 0, i32 1, i32 3
  tail call void @alx_set_macaddr(ptr noundef %hw1, ptr noundef %perm_addr) #13
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void @unregister_netdev(ptr noundef %3) #13
  %hw_addr = getelementptr inbounds %struct.alx_priv, ptr %1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_addr, align 4
  tail call void @iounmap(ptr noundef %5) #13
  %call.i = tail call i32 @pci_select_bars(ptr noundef %pdev, i32 noundef 512) #13
  tail call void @pci_release_selected_regions(ptr noundef %pdev, i32 noundef %call.i) #13
  %call2 = tail call i32 @pci_disable_pcie_error_reporting(ptr noundef %pdev) #13
  tail call void @pci_disable_device(ptr noundef %pdev) #13
  %mtx = getelementptr inbounds %struct.alx_priv, ptr %1, i32 0, i32 17
  tail call void @mutex_destroy(ptr noundef %mtx) #13
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  tail call void @free_netdev(ptr noundef %7) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device_mem(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_pcie_error_reporting(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alx_init_sw(ptr noundef %alx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 1
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %revision.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %revision.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %revision.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %3)
  %cmp.i = icmp ugt i8 %3, 31
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.58) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %3)
  %cmp2.inv.i = icmp ult i8 %3, 16
  %conv.i = select i1 %cmp2.inv.i, i8 2, i8 4
  %max_dma_chnl.i = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 1, i32 7
  %4 = ptrtoint ptr %max_dma_chnl.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv.i, ptr %max_dma_chnl.i, align 1
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4241, i16 %6)
  %cmp = icmp eq i16 %6, 4241
  br i1 %cmp, label %land.lhs.true, label %if.end.land.end_crit_edge

if.end.land.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.lhs.true:                                    ; preds = %if.end
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %subsystem_vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6505, i16 %8)
  %cmp6 = icmp eq i16 %8, 6505
  br i1 %cmp6, label %land.lhs.true8, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.lhs.true8:                                   ; preds = %land.lhs.true
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %subsystem_device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 145, i16 %10)
  %cmp10 = icmp eq i16 %10, 145
  br i1 %cmp10, label %land.rhs, label %land.lhs.true8.land.end_crit_edge

land.lhs.true8.land.end_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %revision.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %revision.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp13 = icmp eq i8 %12, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true8.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %if.end.land.end_crit_edge
  %13 = phi i1 [ false, %land.lhs.true8.land.end_crit_edge ], [ false, %land.lhs.true.land.end_crit_edge ], [ false, %if.end.land.end_crit_edge ], [ %cmp13, %land.rhs ]
  %lnk_patch = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 1, i32 19
  %frombool = zext i1 %13 to i8
  %14 = ptrtoint ptr %lnk_patch to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %frombool, ptr %lnk_patch, align 4
  %smb_timer = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 1, i32 11
  %15 = ptrtoint ptr %smb_timer to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 400, ptr %smb_timer, align 4
  %16 = ptrtoint ptr %alx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %alx, align 8
  %mtu = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 20
  %18 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mtu, align 4
  %conv17 = trunc i32 %19 to i16
  %mtu18 = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 1, i32 4
  %20 = ptrtoint ptr %mtu18 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv17, ptr %mtu18, align 4
  %conv20 = and i32 %19, 65535
  %add24 = add nuw nsw i32 %conv20, 45
  %and = and i32 %add24, 131064
  %rxbuf_size = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 12
  %21 = ptrtoint ptr %rxbuf_size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and, ptr %rxbuf_size, align 4
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 30
  %22 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 34, ptr %min_mtu, align 8
  %23 = load ptr, ptr %alx, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 31
  %24 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 9256, ptr %max_mtu, align 4
  %tx_ringsz = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 10
  %25 = ptrtoint ptr %tx_ringsz to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 256, ptr %tx_ringsz, align 4
  %rx_ringsz = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 11
  %26 = ptrtoint ptr %rx_ringsz to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 512, ptr %rx_ringsz, align 8
  %imt = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 1, i32 5
  %27 = ptrtoint ptr %imt to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 200, ptr %imt, align 2
  %int_mask = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 9
  %28 = ptrtoint ptr %int_mask to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 67110407, ptr %int_mask, align 8
  %29 = ptrtoint ptr %max_dma_chnl.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %max_dma_chnl.i, align 1
  %dma_chnl = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 1, i32 6
  %31 = ptrtoint ptr %dma_chnl to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %dma_chnl, align 8
  %ith_tpd = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 1, i32 8
  %32 = ptrtoint ptr %ith_tpd to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 85, ptr %ith_tpd, align 4
  %link_speed = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 1, i32 12
  %33 = ptrtoint ptr %link_speed to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %link_speed, align 8
  %duplex = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 1, i32 13
  %34 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -1, ptr %duplex, align 4
  %adv_cfg = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 1, i32 15
  %35 = ptrtoint ptr %adv_cfg to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 111, ptr %adv_cfg, align 8
  %flowctrl = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 1, i32 14
  %36 = ptrtoint ptr %flowctrl to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 7, ptr %flowctrl, align 1
  %rx_ctrl = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 1, i32 9
  %37 = ptrtoint ptr %rx_ctrl to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1677728972, ptr %rx_ctrl, align 8
  %mtx = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 17
  tail call void @__mutex_init(ptr noundef %mtx, ptr noundef nonnull @.str.60, ptr noundef nonnull @alx_init_sw.__key) #13
  br label %cleanup

cleanup:                                          ; preds = %land.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %land.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @alx_reset_pcie(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @alx_phy_configured(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @alx_reset_phy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alx_reset_mac(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alx_setup_speed_duplex(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alx_get_perm_macaddr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @eth_hw_addr_random(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #13
  %0 = call ptr @memset(ptr %addr, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr, i32 noundef 6) #13
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr, align 1
  %3 = and i8 %2, -4
  %4 = or i8 %3, 2
  store i8 %4, ptr %addr, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #13
  %addr_assign_type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %5 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %addr_assign_type, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alx_mdio_read(ptr noundef %netdev, i32 noundef %prtad, i32 noundef %devad, i16 noundef zeroext %addr) #2 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 2312
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #13
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !183
  %mdio = getelementptr i8, ptr %netdev, i32 2416
  %1 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mdio, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %prtad)
  %cmp.not = icmp eq i32 %2, %prtad
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %devad)
  %cmp3 = icmp eq i32 %devad, -1
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call5 = call i32 @alx_read_phy_reg(ptr noundef %hw1, i16 noundef zeroext %addr, ptr noundef nonnull %val) #13
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %conv = trunc i32 %devad to i8
  %call6 = call i32 @alx_read_phy_ext(ptr noundef %hw1, i8 noundef zeroext %conv, i16 noundef zeroext %addr, ptr noundef nonnull %val) #13
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4
  %err.0 = phi i32 [ %call5, %if.then4 ], [ %call6, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool.not = icmp eq i32 %err.0, 0
  br i1 %tobool.not, label %if.end9, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %val, align 2
  %conv10 = zext i16 %4 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv10, %if.end9 ], [ -22, %entry.cleanup_crit_edge ], [ %err.0, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alx_mdio_write(ptr noundef %netdev, i32 noundef %prtad, i32 noundef %devad, i16 noundef zeroext %addr, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 2312
  %mdio = getelementptr i8, ptr %netdev, i32 2416
  %0 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mdio, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %prtad)
  %cmp.not = icmp eq i32 %1, %prtad
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %devad)
  %cmp3 = icmp eq i32 %devad, -1
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call5 = tail call i32 @alx_write_phy_reg(ptr noundef %hw1, i16 noundef zeroext %addr, i16 noundef zeroext %val) #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %conv = trunc i32 %devad to i8
  %call7 = tail call i32 @alx_write_phy_ext(ptr noundef %hw1, i8 noundef zeroext %conv, i16 noundef zeroext %addr, i16 noundef zeroext %val) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then4 ], [ %call7, %if.end6 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @alx_get_phy_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alx_link_check(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -664
  %mtx = getelementptr i8, ptr %work, i32 136
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #13
  %hw1.i = getelementptr i8, ptr %work, i32 -656
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr i8, ptr %work, i32 200
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !184

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1297, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %call25.i = tail call i32 @alx_clear_phy_intr(ptr noundef %hw1.i) #13
  %link_speed.i = getelementptr i8, ptr %work, i32 -608
  %1 = ptrtoint ptr %link_speed.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %link_speed.i, align 8
  %call26.i = tail call i32 @alx_read_phy_link(ptr noundef %hw1.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp27.i = icmp slt i32 %call26.i, 0
  br i1 %cmp27.i, label %if.end.i.reset.i_crit_edge, label %do.body31.i

if.end.i.reset.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %reset.i

do.body31.i:                                      ; preds = %if.end.i
  %irq_lock.i = getelementptr i8, ptr %work, i32 -60
  %call35.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i) #13
  %int_mask.i = getelementptr i8, ptr %work, i32 -16
  %3 = ptrtoint ptr %int_mask.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %int_mask.i, align 8
  %or.i = or i32 %4, 4096
  store i32 %or.i, ptr %int_mask.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !185
  tail call void @arm_heavy_mb() #13
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i) #13
  %hw_addr.i.i = getelementptr i8, ptr %work, i32 -652
  %6 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 5636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %5) #13, !srcloc !186
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i, i32 noundef %call35.i) #13
  %8 = ptrtoint ptr %link_speed.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %link_speed.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %9)
  %cmp43.i = icmp eq i32 %2, %9
  br i1 %cmp43.i, label %do.body31.i.alx_check_link.exit_crit_edge, label %if.end46.i

do.body31.i.alx_check_link.exit_crit_edge:        ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alx_check_link.exit

if.end46.i:                                       ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp48.not.i = icmp eq i32 %9, -1
  br i1 %cmp48.not.i, label %if.else.i, label %do.body51.i

do.body51.i:                                      ; preds = %if.end46.i
  %msg_enable.i = getelementptr i8, ptr %work, i32 88
  %10 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %msg_enable.i, align 8
  %12 = and i16 %11, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool53.not.i = icmp eq i16 %12, 0
  br i1 %tobool53.not.i, label %do.body51.i.do.end58.i_crit_edge, label %if.then54.i

do.body51.i.do.end58.i_crit_edge:                 ; preds = %do.body51.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end58.i

if.then54.i:                                      ; preds = %do.body51.i
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 8
  %15 = ptrtoint ptr %link_speed.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %link_speed.i, align 8
  %duplex.i = getelementptr i8, ptr %work, i32 -604
  %17 = ptrtoint ptr %duplex.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %duplex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %16)
  %cmp.i.i8 = icmp eq i32 %16, 1000
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp1.i.i = icmp eq i8 %18, 1
  %or.cond.i.i = and i1 %cmp.i.i8, %cmp1.i.i
  br i1 %or.cond.i.i, label %if.then54.i.alx_speed_desc.exit_crit_edge, label %if.end.i.i

if.then54.i.alx_speed_desc.exit_crit_edge:        ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alx_speed_desc.exit

if.end.i.i:                                       ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %16)
  %cmp3.i.i = icmp eq i32 %16, 100
  %or.cond43.i.i = and i1 %cmp3.i.i, %cmp1.i.i
  br i1 %or.cond43.i.i, label %if.end.i.i.alx_speed_desc.exit_crit_edge, label %if.end10.i.i

if.end.i.i.alx_speed_desc.exit_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alx_speed_desc.exit

if.end10.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp15.i.i = icmp eq i8 %18, 0
  %or.cond44.i.i = and i1 %cmp3.i.i, %cmp15.i.i
  br i1 %or.cond44.i.i, label %if.end10.i.i.alx_speed_desc.exit_crit_edge, label %if.end18.i.i

if.end10.i.i.alx_speed_desc.exit_crit_edge:       ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alx_speed_desc.exit

if.end18.i.i:                                     ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %16)
  %cmp19.i.i = icmp eq i32 %16, 10
  %or.cond45.i.i = and i1 %cmp19.i.i, %cmp1.i.i
  br i1 %or.cond45.i.i, label %if.end18.i.i.alx_speed_desc.exit_crit_edge, label %alx_speed_to_ethadv.exit.i

if.end18.i.i.alx_speed_desc.exit_crit_edge:       ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alx_speed_desc.exit

alx_speed_to_ethadv.exit.i:                       ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %or.cond46.i.i = and i1 %cmp19.i.i, %cmp15.i.i
  %.str.67..str.68.i = select i1 %or.cond46.i.i, ptr @.str.67, ptr @.str.68
  br label %alx_speed_desc.exit

alx_speed_desc.exit:                              ; preds = %alx_speed_to_ethadv.exit.i, %if.end18.i.i.alx_speed_desc.exit_crit_edge, %if.end10.i.i.alx_speed_desc.exit_crit_edge, %if.end.i.i.alx_speed_desc.exit_crit_edge, %if.then54.i.alx_speed_desc.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.63, %if.then54.i.alx_speed_desc.exit_crit_edge ], [ %.str.67..str.68.i, %alx_speed_to_ethadv.exit.i ], [ @.str.64, %if.end.i.i.alx_speed_desc.exit_crit_edge ], [ @.str.65, %if.end10.i.i.alx_speed_desc.exit_crit_edge ], [ @.str.66, %if.end18.i.i.alx_speed_desc.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %14, ptr noundef nonnull @.str.61, ptr noundef nonnull %retval.0.i) #16
  br label %do.end58.i

do.end58.i:                                       ; preds = %alx_speed_desc.exit, %do.body51.i.do.end58.i_crit_edge
  tail call void @alx_post_phy_link(ptr noundef %hw1.i) #13
  tail call void @alx_enable_aspm(ptr noundef %hw1.i, i1 noundef zeroext true, i1 noundef zeroext true) #13
  tail call void @alx_start_mac(ptr noundef %hw1.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp59.i = icmp eq i32 %2, -1
  br i1 %cmp59.i, label %if.then61.i, label %do.end58.i.alx_check_link.exit_crit_edge

do.end58.i.alx_check_link.exit_crit_edge:         ; preds = %do.end58.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alx_check_link.exit

if.then61.i:                                      ; preds = %do.end58.i
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr, align 8
  %num_tx_queues.i.i.i = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 104
  %21 = ptrtoint ptr %num_tx_queues.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_tx_queues.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp4.not.i.i.i = icmp eq i32 %22, 0
  br i1 %cmp4.not.i.i.i, label %if.then61.i.netif_tx_wake_all_queues.exit.i.i_crit_edge, label %for.body.lr.ph.i.i.i

if.then61.i.netif_tx_wake_all_queues.exit.i.i_crit_edge: ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %netif_tx_wake_all_queues.exit.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.then61.i
  %_tx.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 103
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.05.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %23 = ptrtoint ptr %_tx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %_tx.i.i.i.i, align 128
  %arrayidx.i.i.i.i = getelementptr %struct.netdev_queue, ptr %24, i32 %i.05.i.i.i
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i.i.i) #13
  %inc.i.i.i = add nuw i32 %i.05.i.i.i, 1
  %25 = ptrtoint ptr %num_tx_queues.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_tx_queues.i.i.i, align 4
  %cmp.i.i.i = icmp ult i32 %inc.i.i.i, %26
  br i1 %cmp.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %for.body.i.i.i.netif_tx_wake_all_queues.exit.i.i_crit_edge

for.body.i.i.i.netif_tx_wake_all_queues.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %netif_tx_wake_all_queues.exit.i.i

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i.i

netif_tx_wake_all_queues.exit.i.i:                ; preds = %for.body.i.i.i.netif_tx_wake_all_queues.exit.i.i_crit_edge, %if.then61.i.netif_tx_wake_all_queues.exit.i.i_crit_edge
  %num_napi.i.i = getelementptr i8, ptr %work, i32 -64
  %27 = ptrtoint ptr %num_napi.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_napi.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp7.i.i = icmp sgt i32 %28, 0
  br i1 %cmp7.i.i, label %netif_tx_wake_all_queues.exit.i.i.for.body.i.i_crit_edge, label %netif_tx_wake_all_queues.exit.i.i.alx_netif_start.exit.i_crit_edge

netif_tx_wake_all_queues.exit.i.i.alx_netif_start.exit.i_crit_edge: ; preds = %netif_tx_wake_all_queues.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alx_netif_start.exit.i

netif_tx_wake_all_queues.exit.i.i.for.body.i.i_crit_edge: ; preds = %netif_tx_wake_all_queues.exit.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %netif_tx_wake_all_queues.exit.i.i.for.body.i.i_crit_edge
  %i.08.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %netif_tx_wake_all_queues.exit.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.alx_priv, ptr %add.ptr, i32 0, i32 4, i32 %i.08.i.i
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @napi_enable(ptr noundef %30) #13
  %inc.i.i = add nuw nsw i32 %i.08.i.i, 1
  %31 = ptrtoint ptr %num_napi.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_napi.i.i, align 8
  %cmp.i.i = icmp slt i32 %inc.i.i, %32
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.alx_netif_start.exit.i_crit_edge

for.body.i.i.alx_netif_start.exit.i_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alx_netif_start.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

alx_netif_start.exit.i:                           ; preds = %for.body.i.i.alx_netif_start.exit.i_crit_edge, %netif_tx_wake_all_queues.exit.i.i.alx_netif_start.exit.i_crit_edge
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr, align 8
  tail call void @netif_carrier_on(ptr noundef %34) #13
  br label %alx_check_link.exit

if.else.i:                                        ; preds = %if.end46.i
  tail call fastcc void @alx_netif_stop(ptr noundef %add.ptr) #13
  %msg_enable64.i = getelementptr i8, ptr %work, i32 88
  %35 = ptrtoint ptr %msg_enable64.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %msg_enable64.i, align 8
  %37 = and i16 %36, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool67.not.i = icmp eq i16 %37, 0
  br i1 %tobool67.not.i, label %if.else.i.do.end72.i_crit_edge, label %if.then68.i

if.else.i.do.end72.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end72.i

if.then68.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %39, ptr noundef nonnull @.str.62) #16
  br label %do.end72.i

do.end72.i:                                       ; preds = %if.then68.i, %if.else.i.do.end72.i_crit_edge
  %call73.i = tail call i32 @alx_reset_mac(ptr noundef %hw1.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i)
  %tobool74.not.i = icmp eq i32 %call73.i, 0
  br i1 %tobool74.not.i, label %if.end76.i, label %do.end72.i.reset.i_crit_edge

do.end72.i.reset.i_crit_edge:                     ; preds = %do.end72.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %reset.i

if.end76.i:                                       ; preds = %do.end72.i
  tail call fastcc void @alx_irq_disable(ptr noundef %add.ptr) #13
  %call77.i = tail call fastcc i32 @alx_reinit_rings(ptr noundef %add.ptr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i)
  %tobool78.not.i = icmp eq i32 %call77.i, 0
  br i1 %tobool78.not.i, label %if.end80.i, label %if.end76.i.reset.i_crit_edge

if.end76.i.reset.i_crit_edge:                     ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %reset.i

if.end80.i:                                       ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @alx_configure_basic(ptr noundef %hw1.i) #13
  tail call void @alx_disable_rss(ptr noundef %hw1.i) #13
  %40 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr, align 8
  tail call fastcc void @__alx_set_rx_mode(ptr noundef %41) #13
  %rx_ctrl.i = getelementptr i8, ptr %work, i32 -624
  %42 = ptrtoint ptr %rx_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rx_ctrl.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !185
  tail call void @arm_heavy_mb() #13
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #13
  %45 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i6 = getelementptr i8, ptr %46, i32 5248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i6, i32 %44) #13, !srcloc !186
  tail call void @alx_enable_aspm(ptr noundef %hw1.i, i1 noundef zeroext false, i1 noundef zeroext true) #13
  tail call void @alx_post_phy_link(ptr noundef %hw1.i) #13
  tail call fastcc void @alx_irq_enable(ptr noundef %add.ptr) #13
  br label %alx_check_link.exit

reset.i:                                          ; preds = %if.end76.i.reset.i_crit_edge, %do.end72.i.reset.i_crit_edge, %if.end.i.reset.i_crit_edge
  %reset_wk.i.i = getelementptr i8, ptr %work, i32 44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %47 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %47, ptr noundef %reset_wk.i.i) #13
  br label %alx_check_link.exit

alx_check_link.exit:                              ; preds = %reset.i, %if.end80.i, %alx_netif_start.exit.i, %do.end58.i.alx_check_link.exit_crit_edge, %do.body31.i.alx_check_link.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mtx) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alx_reset(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mtx = getelementptr i8, ptr %work, i32 92
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.alx_reinit.exit_crit_edge, label %land.rhs.i

entry.alx_reinit.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %alx_reinit.exit

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr i8, ptr %work, i32 156
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.alx_reinit.exit_crit_edge, !prof !184

land.rhs.i.alx_reinit.exit_crit_edge:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alx_reinit.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1169, i32 noundef 9, ptr noundef null) #13
  br label %alx_reinit.exit

alx_reinit.exit:                                  ; preds = %do.end.i, %land.rhs.i.alx_reinit.exit_crit_edge, %entry.alx_reinit.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %work, i32 -708
  tail call fastcc void @alx_halt(ptr noundef %add.ptr) #13
  tail call fastcc void @alx_activate(ptr noundef %add.ptr) #13
  tail call void @mutex_unlock(ptr noundef %mtx) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_disable_pcie_error_reporting(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_selected_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_select_bars(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alx_open(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %mtx = getelementptr i8, ptr %netdev, i32 3104
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #13
  %call1 = tail call fastcc i32 @__alx_open(ptr noundef %add.ptr.i, i1 noundef zeroext false)
  tail call void @mutex_unlock(ptr noundef %mtx) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alx_stop(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %mtx = getelementptr i8, ptr %netdev, i32 3104
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #13
  tail call fastcc void @__alx_stop(ptr noundef %add.ptr.i)
  tail call void @mutex_unlock(ptr noundef %mtx) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alx_start_xmit(ptr noundef %skb, ptr nocapture noundef readonly %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %0 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %queue_mapping.i, align 8
  %conv.i = zext i16 %1 to i32
  %num_txq.i = getelementptr i8, ptr %netdev, i32 2896
  %2 = ptrtoint ptr %num_txq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_txq.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i)
  %cmp.not.i = icmp ugt i32 %3, %conv.i
  br i1 %cmp.not.i, label %entry.alx_tx_queue_mapping.exit_crit_edge, label %if.then.i

entry.alx_tx_queue_mapping.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %alx_tx_queue_mapping.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %rem.i = urem i32 %conv.i, %3
  br label %alx_tx_queue_mapping.exit

alx_tx_queue_mapping.exit:                        ; preds = %if.then.i, %entry.alx_tx_queue_mapping.exit_crit_edge
  %r_idx.0.i = phi i32 [ %rem.i, %if.then.i ], [ %conv.i, %entry.alx_tx_queue_mapping.exit_crit_edge ]
  %arrayidx.i = getelementptr %struct.alx_priv, ptr %add.ptr.i, i32 0, i32 4, i32 %r_idx.0.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %txq.i = getelementptr inbounds %struct.alx_napi, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %txq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %txq.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %write_idx.i.i = getelementptr inbounds %struct.alx_tx_queue, ptr %7, i32 0, i32 6
  %10 = ptrtoint ptr %write_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %write_idx.i.i, align 2
  %conv.i.i = zext i16 %11 to i32
  %read_idx.i.i = getelementptr inbounds %struct.alx_tx_queue, ptr %7, i32 0, i32 7
  %12 = ptrtoint ptr %read_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %read_idx.i.i, align 4
  %conv1.i.i = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %11)
  %cmp.not.i.i = icmp ugt i16 %13, %11
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %alx_tx_queue_mapping.exit
  call void @__sanitizer_cov_trace_pc() #15
  %count.i.i = getelementptr inbounds %struct.alx_tx_queue, ptr %7, i32 0, i32 5
  %14 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %count.i.i, align 4
  %conv3.i.i = zext i16 %15 to i32
  %16 = xor i32 %conv.i.i, -1
  %add.i.i = add nsw i32 %conv1.i.i, %16
  %sub8.i.i = add nsw i32 %add.i.i, %conv3.i.i
  br label %alx_tpd_avail.exit.i

if.end.i.i:                                       ; preds = %alx_tx_queue_mapping.exit
  call void @__sanitizer_cov_trace_pc() #15
  %17 = xor i32 %conv.i.i, -1
  %sub14.i.i = add nsw i32 %conv1.i.i, %17
  br label %alx_tpd_avail.exit.i

alx_tpd_avail.exit.i:                             ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub8.i.i, %if.then.i.i ], [ %sub14.i.i, %if.end.i.i ]
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %18 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %end.i.i.i, align 4
  %nr_frags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %nr_frags.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %nr_frags.i.i, align 2
  %conv.i2.i = zext i8 %21 to i32
  %add.i3.i = add nuw nsw i32 %conv.i2.i, 1
  %gso_size.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %19, i32 0, i32 4
  %22 = ptrtoint ptr %gso_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %gso_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.i.not.i.i = icmp eq i16 %23, 0
  br i1 %tobool.i.not.i.i, label %alx_tpd_avail.exit.i.alx_tpd_req.exit.i_crit_edge, label %land.lhs.true.i.i

alx_tpd_avail.exit.i.alx_tpd_req.exit.i_crit_edge: ; preds = %alx_tpd_avail.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alx_tpd_req.exit.i

land.lhs.true.i.i:                                ; preds = %alx_tpd_avail.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %gso_type.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %19, i32 0, i32 8
  %24 = ptrtoint ptr %gso_type.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %gso_type.i.i, align 8
  %and.i.i = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %inc.i.i = add nuw nsw i32 %conv.i2.i, 2
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 %add.i3.i, i32 %inc.i.i
  br label %alx_tpd_req.exit.i

alx_tpd_req.exit.i:                               ; preds = %land.lhs.true.i.i, %alx_tpd_avail.exit.i.alx_tpd_req.exit.i_crit_edge
  %num.0.i.i = phi i32 [ %add.i3.i, %alx_tpd_avail.exit.i.alx_tpd_req.exit.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %num.0.i.i)
  %cmp.i = icmp slt i32 %retval.0.i.i, %num.0.i.i
  br i1 %cmp.i, label %if.then.i4, label %if.end.i

if.then.i4:                                       ; preds = %alx_tpd_req.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %queue_idx.i.i = getelementptr inbounds %struct.alx_tx_queue, ptr %7, i32 0, i32 8
  %26 = ptrtoint ptr %queue_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %queue_idx.i.i, align 2
  %conv.i5.i = zext i16 %27 to i32
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 103
  %28 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %29, i32 %conv.i5.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  br label %drop.i

if.end.i:                                         ; preds = %alx_tpd_req.exit.i
  %tpd.i = getelementptr inbounds %struct.alx_tx_queue, ptr %7, i32 0, i32 2
  %30 = ptrtoint ptr %tpd.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tpd.i, align 4
  %arrayidx.i5 = getelementptr %struct.alx_txd, ptr %31, i32 %conv.i.i
  %32 = call ptr @memset(ptr %arrayidx.i5, i32 0, i32 16)
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %33 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %34 = and i16 %bf.load.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %34)
  %cmp.not.i6.i = icmp eq i16 %34, 1536
  br i1 %cmp.not.i6.i, label %if.end.i9.i, label %if.end.i.if.end11.i_crit_edge

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11.i

if.end.i9.i:                                      ; preds = %if.end.i
  %35 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %end.i.i.i, align 4
  %gso_size.i.i7.i = getelementptr inbounds %struct.skb_shared_info, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %gso_size.i.i7.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %gso_size.i.i7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool.i.not.i8.i = icmp eq i16 %38, 0
  br i1 %tobool.i.not.i8.i, label %if.end.i18.i, label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.end.i9.i
  %cloned.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %39 = ptrtoint ptr %cloned.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load.i.i.i.i = load i8, ptr %cloned.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i.i)
  %tobool.not.i.i.i.i = icmp sgt i8 %bf.load.i.i.i.i, -1
  br i1 %tobool.not.i.i.i.i, label %if.end3.i.i.if.end8.i.i_crit_edge, label %skb_header_cloned.exit.i.i.i

if.end3.i.i.if.end8.i.i_crit_edge:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i

skb_header_cloned.exit.i.i.i:                     ; preds = %if.end3.i.i
  %dataref1.i.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %36, i32 0, i32 10
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i.i, i32 noundef 4) #13
  %40 = ptrtoint ptr %dataref1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %dataref1.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %41, 65535
  %shr.i.i.i.i = ashr i32 %41, 16
  %sub.i.i.i.i = sub nsw i32 %and.i.i.i.i, %shr.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i.i)
  %cmp.i.not.i.i.i = icmp eq i32 %sub.i.i.i.i, 1
  br i1 %cmp.i.not.i.i.i, label %skb_header_cloned.exit.i.i.i.if.end8.i.i_crit_edge, label %skb_cow_head.exit.i.i

skb_header_cloned.exit.i.i.i.if.end8.i.i_crit_edge: ; preds = %skb_header_cloned.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i

skb_cow_head.exit.i.i:                            ; preds = %skb_header_cloned.exit.i.i.i
  %call4.i.i.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i.i)
  %cmp5.i.i = icmp slt i32 %call4.i.i.i.i, 0
  br i1 %cmp5.i.i, label %skb_cow_head.exit.i.i.drop.i_crit_edge, label %skb_cow_head.exit.i.i.if.end8.i.i_crit_edge

skb_cow_head.exit.i.i.if.end8.i.i_crit_edge:      ; preds = %skb_cow_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i

skb_cow_head.exit.i.i.drop.i_crit_edge:           ; preds = %skb_cow_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %drop.i

if.end8.i.i:                                      ; preds = %skb_cow_head.exit.i.i.if.end8.i.i_crit_edge, %skb_header_cloned.exit.i.i.i.if.end8.i.i_crit_edge, %if.end3.i.i.if.end8.i.i_crit_edge
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %42 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %protocol.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %43)
  %cmp10.i.i = icmp eq i16 %43, 2048
  br i1 %cmp10.i.i, label %if.then12.i.i, label %if.else.i.i

if.then12.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %44 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %head.i.i.i.i, align 8
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %46 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %47 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %45, i32 %conv.i.i.i.i
  %check.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 7
  %48 = ptrtoint ptr %check.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %check.i.i, align 2
  %saddr.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 8
  %49 = ptrtoint ptr %saddr.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %saddr.i.i, align 4
  %daddr.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 9
  %51 = ptrtoint ptr %daddr.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %daddr.i.i, align 4
  %53 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %52, i32 %50, i32 6) #17, !srcloc !187
  %54 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %53) #17, !srcloc !188
  %neg.i.i.i.i = xor i32 %54, -1
  %shr.i.i54.i.i = lshr i32 %neg.i.i.i.i, 16
  %conv.i.i55.i.i = trunc i32 %shr.i.i54.i.i to i16
  %neg.i.i = xor i16 %conv.i.i55.i.i, -1
  %55 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %head.i.i.i.i, align 8
  %transport_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %57 = ptrtoint ptr %transport_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %transport_header.i.i.i.i, align 2
  %conv.i.i57.i.i = zext i16 %58 to i32
  %add.ptr.i.i58.i.i = getelementptr i8, ptr %56, i32 %conv.i.i57.i.i
  %check18.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i58.i.i, i32 0, i32 6
  %59 = ptrtoint ptr %check18.i.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %neg.i.i, ptr %check18.i.i, align 4
  br label %if.end24.sink.split.i.i

if.else.i.i:                                      ; preds = %if.end8.i.i
  %60 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %end.i.i.i, align 4
  %gso_type.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %61, i32 0, i32 8
  %62 = ptrtoint ptr %gso_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %gso_type.i.i.i, align 8
  %and.i.i.i = and i32 %63, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i60.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i60.not.i.i, label %if.else.i.i.if.else.i_crit_edge, label %if.then20.i.i

if.else.i.i.if.else.i_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.then20.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %head.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %64 = ptrtoint ptr %head.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %head.i.i.i.i.i, align 8
  %network_header.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %66 = ptrtoint ptr %network_header.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %network_header.i.i.i.i.i, align 4
  %conv.i.i.i.i.i = zext i16 %67 to i32
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %65, i32 %conv.i.i.i.i.i
  %transport_header.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %68 = ptrtoint ptr %transport_header.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %transport_header.i.i.i.i.i, align 2
  %conv.i.i8.i.i.i = zext i16 %69 to i32
  %add.ptr.i.i9.i.i.i = getelementptr i8, ptr %65, i32 %conv.i.i8.i.i.i
  %payload_len.i.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i.i.i, i32 0, i32 2
  %70 = ptrtoint ptr %payload_len.i.i.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 0, ptr %payload_len.i.i.i, align 4
  %saddr.i.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i.i.i, i32 0, i32 5
  %daddr.i.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i.i.i, i32 0, i32 6
  %call.i.i.i.i.i = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr.i.i.i, ptr noundef %daddr.i.i.i, i32 noundef 0, i32 noundef 6, i32 noundef 0) #13
  %71 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i.i.i.i) #17, !srcloc !188
  %neg.i.i.i.i.i.i = xor i32 %71, -1
  %shr.i.i.i.i.i.i = lshr i32 %neg.i.i.i.i.i.i, 16
  %conv.i.i.i.i.i.i = trunc i32 %shr.i.i.i.i.i.i to i16
  %neg.i.i.i = xor i16 %conv.i.i.i.i.i.i, -1
  %check.i.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i9.i.i.i, i32 0, i32 6
  %72 = ptrtoint ptr %check.i.i.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %neg.i.i.i, ptr %check.i.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %73 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %len.i.i, align 4
  %adrl.i.i = getelementptr %struct.alx_txd, ptr %31, i32 %conv.i.i, i32 3
  %75 = ptrtoint ptr %adrl.i.i to i32
  call void @__asan_storeN_noabort(i32 %75, i32 4)
  store i32 %74, ptr %adrl.i.i, align 1
  br label %if.end24.sink.split.i.i

if.end24.sink.split.i.i:                          ; preds = %if.then20.i.i, %if.then12.i.i
  %.sink67.i.i = phi i32 [ 8192, %if.then20.i.i ], [ 65536, %if.then12.i.i ]
  %word1.i.i = getelementptr %struct.alx_txd, ptr %31, i32 %conv.i.i, i32 2
  %76 = ptrtoint ptr %word1.i.i to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %word1.i.i, align 1
  %or22.i.i = or i32 %77, %.sink67.i.i
  store i32 %or22.i.i, ptr %word1.i.i, align 1
  br label %if.else.i

if.else.i:                                        ; preds = %if.end24.sink.split.i.i, %if.else.i.i.if.else.i_crit_edge
  %word125.i.i = getelementptr %struct.alx_txd, ptr %31, i32 %conv.i.i, i32 2
  %78 = ptrtoint ptr %word125.i.i to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %word125.i.i, align 1
  %or26.i.i = or i32 %79, 4096
  store i32 %or26.i.i, ptr %word125.i.i, align 1
  %head.i.i61.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %80 = ptrtoint ptr %head.i.i61.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %head.i.i61.i.i, align 8
  %transport_header.i.i62.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %82 = ptrtoint ptr %transport_header.i.i62.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %transport_header.i.i62.i.i, align 2
  %conv.i.i63.i.i = zext i16 %83 to i32
  %add.ptr.i.i64.i.i = getelementptr i8, ptr %81, i32 %conv.i.i63.i.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %84 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i64.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %85 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %and.i10.i = and i32 %sub.ptr.sub.i.i.i, 255
  %or29.i.i = or i32 %and.i10.i, %or26.i.i
  store i32 %or29.i.i, ptr %word125.i.i, align 1
  %86 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %end.i.i.i, align 4
  %gso_size.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %87, i32 0, i32 4
  %88 = ptrtoint ptr %gso_size.i.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %gso_size.i.i, align 4
  %90 = and i16 %89, 8191
  %and32.i.i = zext i16 %90 to i32
  %shl33.i.i = shl nuw nsw i32 %and32.i.i, 18
  %or35.i.i = or i32 %shl33.i.i, %or29.i.i
  store i32 %or35.i.i, ptr %word125.i.i, align 1
  br label %if.end11.i

if.end.i18.i:                                     ; preds = %if.end.i9.i
  %91 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %91, align 8
  %conv.i.i.i = zext i16 %93 to i32
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %94 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %data.i.i.i.i, align 4
  %head.i.i.i15.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %96 = ptrtoint ptr %head.i.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %head.i.i.i15.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %95 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %97 to i32
  %sub.ptr.sub.i.neg.i.i.i = sub i32 %conv.i.i.i, %sub.ptr.lhs.cast.i.i.i.i
  %sub.i.i.i = add i32 %sub.ptr.sub.i.neg.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %and.i16.i = and i32 %sub.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %tobool.not.i17.i, label %if.end5.i.i, label %if.end.i18.i.drop.i_crit_edge

if.end.i18.i.drop.i_crit_edge:                    ; preds = %if.end.i18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %drop.i

if.end5.i.i:                                      ; preds = %if.end.i18.i
  call void @__sanitizer_cov_trace_pc() #15
  %csum_offset.i.i = getelementptr inbounds %struct.anon.60, ptr %91, i32 0, i32 1
  %98 = ptrtoint ptr %csum_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %csum_offset.i.i, align 2
  %conv7.i.i = zext i16 %99 to i32
  %add.i19.i = add i32 %sub.i.i.i, %conv7.i.i
  %100 = shl i32 %sub.i.i.i, 23
  %101 = and i32 %100, 2130706432
  %word1.i20.i = getelementptr %struct.alx_txd, ptr %31, i32 %conv.i.i, i32 2
  %102 = ptrtoint ptr %word1.i20.i to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %103 = load i32, ptr %word1.i20.i, align 1
  %104 = shl i32 %add.i19.i, 17
  %shl12.i.i = and i32 %104, 33292288
  %105 = tail call i32 @llvm.bswap.i32(i32 %shl12.i.i) #13
  %or.i.i = or i32 %101, %103
  %or14.i.i = or i32 %or.i.i, %105
  %or16.i.i = or i32 %or14.i.i, 65536
  %106 = ptrtoint ptr %word1.i20.i to i32
  call void @__asan_storeN_noabort(i32 %106, i32 4)
  store i32 %or16.i.i, ptr %word1.i20.i, align 1
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end5.i.i, %if.else.i, %if.end.i.if.end11.i_crit_edge
  %107 = ptrtoint ptr %write_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %write_idx.i.i, align 2
  %conv.i23.i = zext i16 %108 to i32
  %109 = ptrtoint ptr %tpd.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %tpd.i, align 4
  %arrayidx.i.i = getelementptr %struct.alx_txd, ptr %110, i32 %conv.i23.i
  %word1.i24.i = getelementptr %struct.alx_txd, ptr %110, i32 %conv.i23.i, i32 2
  %111 = ptrtoint ptr %word1.i24.i to i32
  call void @__asan_loadN_noabort(i32 %111, i32 4)
  %112 = load i32, ptr %word1.i24.i, align 1
  %and.i25.i = and i32 %112, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i25.i)
  %tobool.not.i26.i = icmp eq i32 %and.i25.i, 0
  br i1 %tobool.not.i26.i, label %if.end11.i.if.end17.i.i_crit_edge, label %if.then.i29.i

if.end11.i.if.end17.i.i_crit_edge:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17.i.i

if.then.i29.i:                                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  %inc.i27.i = add i16 %108, 1
  %count.i28.i = getelementptr inbounds %struct.alx_tx_queue, ptr %7, i32 0, i32 5
  %113 = ptrtoint ptr %count.i28.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %count.i28.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i27.i, i16 %114)
  %cmp.i.i = icmp eq i16 %inc.i27.i, %114
  %spec.store.select178.i.i = select i1 %cmp.i.i, i16 0, i16 %inc.i27.i
  %115 = ptrtoint ptr %write_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %spec.store.select178.i.i, ptr %write_idx.i.i, align 2
  %idxprom11.i.i = zext i16 %spec.store.select178.i.i to i32
  %arrayidx12.i.i = getelementptr %struct.alx_txd, ptr %110, i32 %idxprom11.i.i
  %116 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_loadN_noabort(i32 %116, i32 2)
  %117 = load i16, ptr %arrayidx.i.i, align 1
  %118 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_storeN_noabort(i32 %118, i32 2)
  store i16 %117, ptr %arrayidx12.i.i, align 1
  %vlan_tag.i.i = getelementptr %struct.alx_txd, ptr %110, i32 %conv.i23.i, i32 1
  %119 = ptrtoint ptr %vlan_tag.i.i to i32
  call void @__asan_loadN_noabort(i32 %119, i32 2)
  %120 = load i16, ptr %vlan_tag.i.i, align 1
  %vlan_tag14.i.i = getelementptr %struct.alx_txd, ptr %110, i32 %idxprom11.i.i, i32 1
  %121 = ptrtoint ptr %vlan_tag14.i.i to i32
  call void @__asan_storeN_noabort(i32 %121, i32 2)
  store i16 %120, ptr %vlan_tag14.i.i, align 1
  %122 = ptrtoint ptr %word1.i24.i to i32
  call void @__asan_loadN_noabort(i32 %122, i32 4)
  %123 = load i32, ptr %word1.i24.i, align 1
  %word116.i.i = getelementptr %struct.alx_txd, ptr %110, i32 %idxprom11.i.i, i32 2
  %124 = ptrtoint ptr %word116.i.i to i32
  call void @__asan_storeN_noabort(i32 %124, i32 4)
  store i32 %123, ptr %word116.i.i, align 1
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.then.i29.i, %if.end11.i.if.end17.i.i_crit_edge
  %tpd.0.i.i = phi ptr [ %arrayidx12.i.i, %if.then.i29.i ], [ %arrayidx.i.i, %if.end11.i.if.end17.i.i_crit_edge ]
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %125 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %127 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i30.i = sub i32 %126, %128
  %dev.i.i = getelementptr inbounds %struct.alx_tx_queue, ptr %7, i32 0, i32 1
  %129 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %131 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %132) #13
  br i1 %call.i.i.i, label %land.rhs.i.i.i, label %dma_map_single_attrs.exit.i.i

land.rhs.i.i.i:                                   ; preds = %if.end17.i.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.dma_map_single_attrs.exit.thread.i.i_crit_edge, label %if.then.i.i.i, !prof !189

land.rhs.i.i.i.dma_map_single_attrs.exit.thread.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_single_attrs.exit.thread.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = tail call ptr @dev_driver_string(ptr noundef %130) #13
  %init_name.i.i.i.i = getelementptr inbounds %struct.device, ptr %130, i32 0, i32 3
  %133 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i31.i = icmp eq ptr %134, null
  br i1 %tobool.not.i.i.i31.i, label %if.end.i.i.i.i, label %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %135 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %130, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %136, %if.end.i.i.i.i ], [ %134, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.48, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #13
  br label %dma_map_single_attrs.exit.thread.i.i

dma_map_single_attrs.exit.thread.i.i:             ; preds = %dev_name.exit.i.i.i, %land.rhs.i.i.i.dma_map_single_attrs.exit.thread.i.i_crit_edge
  %137 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev.i.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %138, i32 noundef -1) #13
  br label %err_dma.i.i

dma_map_single_attrs.exit.i.i:                    ; preds = %if.end17.i.i
  tail call void @debug_dma_map_single(ptr noundef %130, ptr noundef %132, i32 noundef %sub.i.i30.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %139 = load ptr, ptr @mem_map, align 4
  %140 = ptrtoint ptr %132 to i32
  %sub.i182.i.i = add i32 %140, 1073741824
  %shr.i.i.i = lshr i32 %sub.i182.i.i, 12
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %139, i32 %shr.i.i.i
  %and.i.i32.i = and i32 %140, 4095
  %call41.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %130, ptr noundef %add.ptr.i.i.i, i32 noundef %and.i.i32.i, i32 noundef %sub.i.i30.i, i32 noundef 1, i32 noundef 0) #13
  %141 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev.i.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %142, i32 noundef %call41.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call41.i.i.i, -1
  br i1 %cmp.i.i.i, label %dma_map_single_attrs.exit.i.i.err_dma.i.i_crit_edge, label %if.end23.i.i

dma_map_single_attrs.exit.i.i.err_dma.i.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_dma.i.i

if.end23.i.i:                                     ; preds = %dma_map_single_attrs.exit.i.i
  %bufs.i.i = getelementptr inbounds %struct.alx_tx_queue, ptr %7, i32 0, i32 4
  %143 = ptrtoint ptr %bufs.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %bufs.i.i, align 4
  %145 = ptrtoint ptr %write_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %write_idx.i.i, align 2
  %idxprom25.i.i = zext i16 %146 to i32
  %size.i.i = getelementptr %struct.alx_buffer, ptr %144, i32 %idxprom25.i.i, i32 2
  %147 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %sub.i.i30.i, ptr %size.i.i, align 4
  %148 = load ptr, ptr %bufs.i.i, align 4
  %149 = load i16, ptr %write_idx.i.i, align 2
  %idxprom29.i.i = zext i16 %149 to i32
  %dma31.i.i = getelementptr %struct.alx_buffer, ptr %148, i32 %idxprom29.i.i, i32 1
  %150 = ptrtoint ptr %dma31.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %call41.i.i.i, ptr %dma31.i.i, align 4
  %conv32.i.i = zext i32 %call41.i.i.i to i64
  %151 = tail call i64 @llvm.bswap.i64(i64 %conv32.i.i) #13
  %adrl.i33.i = getelementptr inbounds %struct.alx_txd, ptr %tpd.0.i.i, i32 0, i32 3
  %152 = ptrtoint ptr %adrl.i33.i to i32
  call void @__asan_storeN_noabort(i32 %152, i32 8)
  store i64 %151, ptr %adrl.i33.i, align 1
  %conv33.i.i = trunc i32 %sub.i.i30.i to i16
  %153 = tail call i16 @llvm.bswap.i16(i16 %conv33.i.i) #13
  %154 = ptrtoint ptr %tpd.0.i.i to i32
  call void @__asan_storeN_noabort(i32 %154, i32 2)
  store i16 %153, ptr %tpd.0.i.i, align 1
  %155 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %end.i.i.i, align 4
  %nr_frags197.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %156, i32 0, i32 2
  %157 = ptrtoint ptr %nr_frags197.i.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %nr_frags197.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %cmp37199.not.i.i = icmp eq i8 %158, 0
  br i1 %cmp37199.not.i.i, label %if.end23.i.i.if.end15.i_crit_edge, label %for.body.lr.ph.i.i

if.end23.i.i.if.end15.i_crit_edge:                ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.i

for.body.lr.ph.i.i:                               ; preds = %if.end23.i.i
  %count44.i.i = getelementptr inbounds %struct.alx_tx_queue, ptr %7, i32 0, i32 5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %159 = phi ptr [ %156, %for.body.lr.ph.i.i ], [ %193, %for.inc.i.i.for.body.i.i_crit_edge ]
  %f.0200.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc79.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx40.i.i = getelementptr %struct.skb_shared_info, ptr %159, i32 0, i32 12, i32 %f.0200.i.i
  %160 = ptrtoint ptr %write_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %write_idx.i.i, align 2
  %inc42.i.i = add i16 %161, 1
  %162 = ptrtoint ptr %count44.i.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %count44.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc42.i.i, i16 %163)
  %cmp46.i.i = icmp eq i16 %inc42.i.i, %163
  %spec.store.select179.i.i = select i1 %cmp46.i.i, i16 0, i16 %inc42.i.i
  %164 = ptrtoint ptr %write_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %spec.store.select179.i.i, ptr %write_idx.i.i, align 2
  %165 = ptrtoint ptr %tpd.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %tpd.i, align 4
  %idxprom53.i.i = zext i16 %spec.store.select179.i.i to i32
  %167 = ptrtoint ptr %word1.i24.i to i32
  call void @__asan_loadN_noabort(i32 %167, i32 4)
  %168 = load i32, ptr %word1.i24.i, align 1
  %word156.i.i = getelementptr %struct.alx_txd, ptr %166, i32 %idxprom53.i.i, i32 2
  %169 = ptrtoint ptr %word156.i.i to i32
  call void @__asan_storeN_noabort(i32 %169, i32 4)
  store i32 %168, ptr %word156.i.i, align 1
  %bv_len.i.i.i = getelementptr %struct.skb_shared_info, ptr %159, i32 0, i32 12, i32 %f.0200.i.i, i32 1
  %170 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %bv_len.i.i.i, align 4
  %172 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dev.i.i, align 4
  %174 = ptrtoint ptr %arrayidx40.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %arrayidx40.i.i, align 4
  %bv_offset.i.i.i.i = getelementptr %struct.skb_shared_info, ptr %159, i32 0, i32 12, i32 %f.0200.i.i, i32 2
  %176 = ptrtoint ptr %bv_offset.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %bv_offset.i.i.i.i, align 4
  %call2.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %173, ptr noundef %175, i32 noundef %177, i32 noundef %171, i32 noundef 1, i32 noundef 0) #13
  %178 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %dev.i.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %179, i32 noundef %call2.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i.i.i)
  %cmp.i184.not.i.i = icmp eq i32 %call2.i.i.i, -1
  br i1 %cmp.i184.not.i.i, label %for.body.i.i.err_dma.i.i_crit_edge, label %for.inc.i.i

for.body.i.i.err_dma.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_dma.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %arrayidx54.i.i = getelementptr %struct.alx_txd, ptr %166, i32 %idxprom53.i.i
  %180 = ptrtoint ptr %bufs.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %bufs.i.i, align 4
  %182 = ptrtoint ptr %write_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %write_idx.i.i, align 2
  %idxprom67.i.i = zext i16 %183 to i32
  %size69.i.i = getelementptr %struct.alx_buffer, ptr %181, i32 %idxprom67.i.i, i32 2
  %184 = ptrtoint ptr %size69.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %171, ptr %size69.i.i, align 4
  %185 = load ptr, ptr %bufs.i.i, align 4
  %186 = load i16, ptr %write_idx.i.i, align 2
  %idxprom72.i.i = zext i16 %186 to i32
  %dma74.i.i = getelementptr %struct.alx_buffer, ptr %185, i32 %idxprom72.i.i, i32 1
  %187 = ptrtoint ptr %dma74.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %call2.i.i.i, ptr %dma74.i.i, align 4
  %conv75.i.i = zext i32 %call2.i.i.i to i64
  %188 = tail call i64 @llvm.bswap.i64(i64 %conv75.i.i) #13
  %adrl76.i.i = getelementptr %struct.alx_txd, ptr %166, i32 %idxprom53.i.i, i32 3
  %189 = ptrtoint ptr %adrl76.i.i to i32
  call void @__asan_storeN_noabort(i32 %189, i32 8)
  store i64 %188, ptr %adrl76.i.i, align 1
  %conv77.i.i = trunc i32 %171 to i16
  %190 = tail call i16 @llvm.bswap.i16(i16 %conv77.i.i) #13
  %191 = ptrtoint ptr %arrayidx54.i.i to i32
  call void @__asan_storeN_noabort(i32 %191, i32 2)
  store i16 %190, ptr %arrayidx54.i.i, align 1
  %inc79.i.i = add nuw nsw i32 %f.0200.i.i, 1
  %192 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %end.i.i.i, align 4
  %nr_frags.i35.i = getelementptr inbounds %struct.skb_shared_info, ptr %193, i32 0, i32 2
  %194 = ptrtoint ptr %nr_frags.i35.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %nr_frags.i35.i, align 2
  %conv36.i.i = zext i8 %195 to i32
  %cmp37.i.i = icmp ult i32 %inc79.i.i, %conv36.i.i
  br i1 %cmp37.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.if.end15.i_crit_edge

for.inc.i.i.if.end15.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

err_dma.i.i:                                      ; preds = %for.body.i.i.err_dma.i.i_crit_edge, %dma_map_single_attrs.exit.i.i.err_dma.i.i_crit_edge, %dma_map_single_attrs.exit.thread.i.i
  %196 = ptrtoint ptr %write_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %write_idx.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %108, i16 %197)
  %cmp98.not202.i.i = icmp eq i16 %108, %197
  br i1 %cmp98.not202.i.i, label %err_dma.i.i.drop.i_crit_edge, label %while.body.lr.ph.i.i

err_dma.i.i.drop.i_crit_edge:                     ; preds = %err_dma.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %drop.i

while.body.lr.ph.i.i:                             ; preds = %err_dma.i.i
  %bufs.i.i.i = getelementptr inbounds %struct.alx_tx_queue, ptr %7, i32 0, i32 4
  %count101.i.i = getelementptr inbounds %struct.alx_tx_queue, ptr %7, i32 0, i32 5
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %alx_free_txbuf.exit.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %f.1203.i.i = phi i32 [ %conv.i23.i, %while.body.lr.ph.i.i ], [ %spec.store.select.i.i, %alx_free_txbuf.exit.i.i.while.body.i.i_crit_edge ]
  %198 = ptrtoint ptr %bufs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %bufs.i.i.i, align 4
  %arrayidx.i.i37.i = getelementptr %struct.alx_buffer, ptr %199, i32 %f.1203.i.i
  %size.i.i.i = getelementptr %struct.alx_buffer, ptr %199, i32 %f.1203.i.i, i32 2
  %200 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %tobool.not.i.i.i = icmp eq i32 %201, 0
  br i1 %tobool.not.i.i.i, label %while.body.i.i.if.end.i.i.i_crit_edge, label %if.then.i186.i.i

while.body.i.i.if.end.i.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i

if.then.i186.i.i:                                 ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %202 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %dev.i.i, align 4
  %dma.i.i.i = getelementptr %struct.alx_buffer, ptr %199, i32 %f.1203.i.i, i32 1
  %204 = ptrtoint ptr %dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %dma.i.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %203, i32 noundef %205, i32 noundef %201, i32 noundef 1, i32 noundef 0) #13
  %206 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 0, ptr %size.i.i.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i186.i.i, %while.body.i.i.if.end.i.i.i_crit_edge
  %207 = ptrtoint ptr %arrayidx.i.i37.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %arrayidx.i.i37.i, align 4
  %tobool4.not.i.i.i = icmp eq ptr %208, null
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.alx_free_txbuf.exit.i.i_crit_edge, label %if.then5.i.i.i

if.end.i.i.i.alx_free_txbuf.exit.i.i_crit_edge:   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alx_free_txbuf.exit.i.i

if.then5.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %208, i32 noundef 1) #13
  %209 = ptrtoint ptr %arrayidx.i.i37.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr null, ptr %arrayidx.i.i37.i, align 4
  br label %alx_free_txbuf.exit.i.i

alx_free_txbuf.exit.i.i:                          ; preds = %if.then5.i.i.i, %if.end.i.i.i.alx_free_txbuf.exit.i.i_crit_edge
  %inc100.i.i = add i32 %f.1203.i.i, 1
  %210 = ptrtoint ptr %count101.i.i to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %count101.i.i, align 4
  %conv102.i.i = zext i16 %211 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc100.i.i, i32 %conv102.i.i)
  %cmp103.i.i = icmp eq i32 %inc100.i.i, %conv102.i.i
  %spec.store.select.i.i = select i1 %cmp103.i.i, i32 0, i32 %inc100.i.i
  %212 = ptrtoint ptr %write_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %write_idx.i.i, align 2
  %conv97.i.i = zext i16 %213 to i32
  %cmp98.not.i.i = icmp eq i32 %spec.store.select.i.i, %conv97.i.i
  br i1 %cmp98.not.i.i, label %alx_free_txbuf.exit.i.i.drop.i_crit_edge, label %alx_free_txbuf.exit.i.i.while.body.i.i_crit_edge

alx_free_txbuf.exit.i.i.while.body.i.i_crit_edge: ; preds = %alx_free_txbuf.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

alx_free_txbuf.exit.i.i.drop.i_crit_edge:         ; preds = %alx_free_txbuf.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %drop.i

if.end15.i:                                       ; preds = %for.inc.i.i.if.end15.i_crit_edge, %if.end23.i.i.if.end15.i_crit_edge
  %tpd.1.lcssa.i.i = phi ptr [ %tpd.0.i.i, %if.end23.i.i.if.end15.i_crit_edge ], [ %arrayidx54.i.i, %for.inc.i.i.if.end15.i_crit_edge ]
  %word180.i.i = getelementptr inbounds %struct.alx_txd, ptr %tpd.1.lcssa.i.i, i32 0, i32 2
  %214 = ptrtoint ptr %word180.i.i to i32
  call void @__asan_loadN_noabort(i32 %214, i32 4)
  %215 = load i32, ptr %word180.i.i, align 1
  %or.i36.i = or i32 %215, 128
  store i32 %or.i36.i, ptr %word180.i.i, align 1
  %216 = ptrtoint ptr %bufs.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %bufs.i.i, align 4
  %218 = ptrtoint ptr %write_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %218)
  %219 = load i16, ptr %write_idx.i.i, align 2
  %idxprom83.i.i = zext i16 %219 to i32
  %arrayidx84.i.i = getelementptr %struct.alx_buffer, ptr %217, i32 %idxprom83.i.i
  %220 = ptrtoint ptr %arrayidx84.i.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %skb, ptr %arrayidx84.i.i, align 4
  %221 = load i16, ptr %write_idx.i.i, align 2
  %inc87.i.i = add i16 %221, 1
  %count89.i.i = getelementptr inbounds %struct.alx_tx_queue, ptr %7, i32 0, i32 5
  %222 = ptrtoint ptr %count89.i.i to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %count89.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc87.i.i, i16 %223)
  %cmp91.i.i = icmp eq i16 %inc87.i.i, %223
  %spec.store.select181.i.i = select i1 %cmp91.i.i, i16 0, i16 %inc87.i.i
  %224 = ptrtoint ptr %write_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %224)
  store i16 %spec.store.select181.i.i, ptr %write_idx.i.i, align 2
  %225 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %7, align 4
  %queue_idx.i39.i = getelementptr inbounds %struct.alx_tx_queue, ptr %7, i32 0, i32 8
  %227 = ptrtoint ptr %queue_idx.i39.i to i32
  call void @__asan_load2_noabort(i32 %227)
  %228 = load i16, ptr %queue_idx.i39.i, align 2
  %conv.i40.i = zext i16 %228 to i32
  %_tx.i.i41.i = getelementptr inbounds %struct.net_device, ptr %226, i32 0, i32 103
  %229 = ptrtoint ptr %_tx.i.i41.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %_tx.i.i41.i, align 128
  %231 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %len.i.i.i, align 4
  %dql.i.i = getelementptr %struct.netdev_queue, ptr %230, i32 %conv.i40.i, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %232)
  %cmp.i.i43.i = icmp ugt i32 %232, 268435455
  br i1 %cmp.i.i43.i, label %do.body2.i.i.i, label %dql_queued.exit.i.i, !prof !184

do.body2.i.i.i:                                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #13, !srcloc !190
  unreachable

dql_queued.exit.i.i:                              ; preds = %if.end15.i
  %last_obj_cnt.i.i.i = getelementptr %struct.netdev_queue, ptr %230, i32 %conv.i40.i, i32 15, i32 2
  %233 = ptrtoint ptr %last_obj_cnt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %232, ptr %last_obj_cnt.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !191
  %234 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %dql.i.i, align 128
  %add.i.i.i = add i32 %235, %232
  store i32 %add.i.i.i, ptr %dql.i.i, align 128
  %adj_limit.i.i.i = getelementptr %struct.netdev_queue, ptr %230, i32 %conv.i40.i, i32 15, i32 1
  %236 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %238 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i.i44.i = sub i32 %237, %238
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i44.i)
  %cmp.i45.i = icmp sgt i32 %sub.i.i44.i, -1
  br i1 %cmp.i45.i, label %dql_queued.exit.i.i.netdev_tx_sent_queue.exit.i_crit_edge, label %if.end.i47.i, !prof !189

dql_queued.exit.i.i.netdev_tx_sent_queue.exit.i_crit_edge: ; preds = %dql_queued.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %netdev_tx_sent_queue.exit.i

if.end.i47.i:                                     ; preds = %dql_queued.exit.i.i
  %state.i46.i = getelementptr %struct.netdev_queue, ptr %230, i32 %conv.i40.i, i32 13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state.i46.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !192
  %239 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %241 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i22.i.i = sub i32 %240, %242
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i22.i.i)
  %cmp7.i.i = icmp sgt i32 %sub.i22.i.i, -1
  br i1 %cmp7.i.i, label %if.then14.i.i, label %if.end.i47.i.netdev_tx_sent_queue.exit.i_crit_edge, !prof !184

if.end.i47.i.netdev_tx_sent_queue.exit.i_crit_edge: ; preds = %if.end.i47.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %netdev_tx_sent_queue.exit.i

if.then14.i.i:                                    ; preds = %if.end.i47.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i46.i) #13
  br label %netdev_tx_sent_queue.exit.i

netdev_tx_sent_queue.exit.i:                      ; preds = %if.then14.i.i, %if.end.i47.i.netdev_tx_sent_queue.exit.i_crit_edge, %dql_queued.exit.i.i.netdev_tx_sent_queue.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !193
  tail call void @arm_heavy_mb() #13
  %p_reg.i = getelementptr inbounds %struct.alx_tx_queue, ptr %7, i32 0, i32 9
  %243 = ptrtoint ptr %p_reg.i to i32
  call void @__asan_load2_noabort(i32 %243)
  %244 = load i16, ptr %p_reg.i, align 4
  %conv.i6 = zext i16 %244 to i32
  %245 = ptrtoint ptr %write_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %245)
  %246 = load i16, ptr %write_idx.i.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !194
  tail call void @arm_heavy_mb() #13
  %247 = tail call i16 @llvm.bswap.i16(i16 %246) #13
  %hw_addr.i.i = getelementptr i8, ptr %9, i32 2316
  %248 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i48.i = getelementptr i8, ptr %249, i32 %conv.i6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i48.i, i16 %247) #13, !srcloc !195
  %250 = ptrtoint ptr %write_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %250)
  %251 = load i16, ptr %write_idx.i.i, align 2
  %conv.i50.i = zext i16 %251 to i32
  %252 = ptrtoint ptr %read_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %252)
  %253 = load i16, ptr %read_idx.i.i, align 4
  %conv1.i52.i = zext i16 %253 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %253, i16 %251)
  %cmp.not.i53.i = icmp ugt i16 %253, %251
  br i1 %cmp.not.i53.i, label %if.end.i60.i, label %if.then.i58.i

if.then.i58.i:                                    ; preds = %netdev_tx_sent_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %254 = ptrtoint ptr %count89.i.i to i32
  call void @__asan_load2_noabort(i32 %254)
  %255 = load i16, ptr %count89.i.i, align 4
  %conv3.i55.i = zext i16 %255 to i32
  %256 = xor i32 %conv.i50.i, -1
  %add.i56.i = add nsw i32 %conv1.i52.i, %256
  %sub8.i57.i = add nsw i32 %add.i56.i, %conv3.i55.i
  br label %alx_tpd_avail.exit62.i

if.end.i60.i:                                     ; preds = %netdev_tx_sent_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %257 = xor i32 %conv.i50.i, -1
  %sub14.i59.i = add nsw i32 %conv1.i52.i, %257
  br label %alx_tpd_avail.exit62.i

alx_tpd_avail.exit62.i:                           ; preds = %if.end.i60.i, %if.then.i58.i
  %retval.0.i61.i = phi i32 [ %sub8.i57.i, %if.then.i58.i ], [ %sub14.i59.i, %if.end.i60.i ]
  %258 = ptrtoint ptr %count89.i.i to i32
  call void @__asan_load2_noabort(i32 %258)
  %259 = load i16, ptr %count89.i.i, align 4
  %260 = lshr i16 %259, 3
  %div.i = zext i16 %260 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i61.i, i32 %div.i)
  %cmp20.i = icmp slt i32 %retval.0.i61.i, %div.i
  br i1 %cmp20.i, label %if.then22.i, label %alx_tpd_avail.exit62.i.alx_start_xmit_ring.exit_crit_edge

alx_tpd_avail.exit62.i.alx_start_xmit_ring.exit_crit_edge: ; preds = %alx_tpd_avail.exit62.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alx_start_xmit_ring.exit

if.then22.i:                                      ; preds = %alx_tpd_avail.exit62.i
  call void @__sanitizer_cov_trace_pc() #15
  %261 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %7, align 4
  %263 = ptrtoint ptr %queue_idx.i39.i to i32
  call void @__asan_load2_noabort(i32 %263)
  %264 = load i16, ptr %queue_idx.i39.i, align 2
  %conv.i64.i = zext i16 %264 to i32
  %_tx.i.i65.i = getelementptr inbounds %struct.net_device, ptr %262, i32 0, i32 103
  %265 = ptrtoint ptr %_tx.i.i65.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %_tx.i.i65.i, align 128
  %state.i1.i = getelementptr %struct.netdev_queue, ptr %266, i32 %conv.i64.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i1.i) #13
  br label %alx_start_xmit_ring.exit

drop.i:                                           ; preds = %alx_free_txbuf.exit.i.i.drop.i_crit_edge, %err_dma.i.i.drop.i_crit_edge, %if.end.i18.i.drop.i_crit_edge, %skb_cow_head.exit.i.i.drop.i_crit_edge, %if.then.i4
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #13
  br label %alx_start_xmit_ring.exit

alx_start_xmit_ring.exit:                         ; preds = %drop.i, %if.then22.i, %alx_tpd_avail.exit62.i.alx_start_xmit_ring.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alx_set_rx_mode(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__alx_set_rx_mode(ptr noundef %netdev)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alx_set_mac_address(ptr noundef %netdev, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 2312
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sa_data, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %data, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %or.i.i = or i32 %1, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  %addr_assign_type = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 55
  %5 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %addr_assign_type, align 4
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %xor = xor i8 %6, 1
  %8 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %xor, ptr %addr_assign_type, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  tail call void @dev_addr_mod(ptr noundef %netdev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #13
  %mac_addr = getelementptr i8, ptr %netdev, i32 2320
  %addr_len = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 56
  %9 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %addr_len, align 1
  %conv13 = zext i8 %10 to i32
  %11 = call ptr @memcpy(ptr %mac_addr, ptr %sa_data, i32 %conv13)
  tail call void @alx_set_macaddr(ptr noundef %hw1, ptr noundef %mac_addr) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alx_ioctl(ptr noundef %netdev, ptr noundef %ifr, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %mdio = getelementptr i8, ptr %netdev, i32 2416
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %call3 = tail call i32 @mdio_mii_ioctl(ptr noundef %mdio, ptr noundef %ifr_ifru.i, i32 noundef %cmd) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -11, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alx_change_mtu(ptr noundef %netdev, i32 noundef %mtu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %add4 = add i32 %mtu, 45
  %and = and i32 %add4, -8
  %mtu5 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 20
  %0 = ptrtoint ptr %mtu5 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %mtu, ptr %mtu5, align 4
  %conv = trunc i32 %mtu to i16
  %mtu6 = getelementptr i8, ptr %netdev, i32 2332
  %1 = ptrtoint ptr %mtu6 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv, ptr %mtu6, align 4
  %2 = tail call i32 @llvm.smax.i32(i32 %and, i32 1544)
  %rxbuf_size = getelementptr i8, ptr %netdev, i32 2964
  %3 = ptrtoint ptr %rxbuf_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %rxbuf_size, align 4
  tail call void @netdev_update_features(ptr noundef %netdev) #13
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %mtx = getelementptr i8, ptr %netdev, i32 3104
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.then.alx_reinit.exit_crit_edge, label %land.rhs.i

if.then.alx_reinit.exit_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %alx_reinit.exit

land.rhs.i:                                       ; preds = %if.then
  %dep_map.i = getelementptr i8, ptr %netdev, i32 3168
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.alx_reinit.exit_crit_edge, !prof !184

land.rhs.i.alx_reinit.exit_crit_edge:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alx_reinit.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1169, i32 noundef 9, ptr noundef null) #13
  br label %alx_reinit.exit

alx_reinit.exit:                                  ; preds = %do.end.i, %land.rhs.i.alx_reinit.exit_crit_edge, %if.then.alx_reinit.exit_crit_edge
  tail call fastcc void @alx_halt(ptr noundef %add.ptr.i) #13
  tail call fastcc void @alx_activate(ptr noundef %add.ptr.i) #13
  tail call void @mutex_unlock(ptr noundef %mtx) #13
  br label %if.end

if.end:                                           ; preds = %alx_reinit.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alx_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %reset_wk.i = getelementptr i8, ptr %dev, i32 3012
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %reset_wk.i) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alx_get_stats64(ptr noundef %dev, ptr nocapture noundef %net_stats) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev, i32 2312
  %stats = getelementptr i8, ptr %dev, i32 2448
  %stats_lock = getelementptr i8, ptr %dev, i32 3060
  tail call void @_raw_spin_lock(ptr noundef %stats_lock) #13
  tail call void @alx_update_hw_stats(ptr noundef %hw) #13
  %tx_byte_cnt = getelementptr i8, ptr %dev, i32 2696
  %0 = ptrtoint ptr %tx_byte_cnt to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %tx_byte_cnt, align 8
  %tx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats, i32 0, i32 3
  %2 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %tx_bytes, align 8
  %rx_byte_cnt = getelementptr i8, ptr %dev, i32 2504
  %3 = ptrtoint ptr %rx_byte_cnt to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %rx_byte_cnt, align 8
  %rx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats, i32 0, i32 2
  %5 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %rx_bytes, align 8
  %rx_mcast = getelementptr i8, ptr %dev, i32 2464
  %6 = ptrtoint ptr %rx_mcast to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %rx_mcast, align 8
  %multicast = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats, i32 0, i32 8
  %8 = ptrtoint ptr %multicast to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %multicast, align 8
  %tx_single_col = getelementptr i8, ptr %dev, i32 2760
  %9 = ptrtoint ptr %tx_single_col to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %tx_single_col, align 8
  %tx_multi_col = getelementptr i8, ptr %dev, i32 2768
  %11 = ptrtoint ptr %tx_multi_col to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %tx_multi_col, align 8
  %add = add i64 %12, %10
  %tx_late_col = getelementptr i8, ptr %dev, i32 2776
  %13 = ptrtoint ptr %tx_late_col to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %tx_late_col, align 8
  %add2 = add i64 %add, %14
  %tx_abort_col = getelementptr i8, ptr %dev, i32 2784
  %15 = ptrtoint ptr %tx_abort_col to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %tx_abort_col, align 8
  %add3 = add i64 %add2, %16
  %collisions = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats, i32 0, i32 9
  %17 = ptrtoint ptr %collisions to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %add3, ptr %collisions, align 8
  %rx_frag = getelementptr i8, ptr %dev, i32 2520
  %18 = ptrtoint ptr %rx_frag to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %rx_frag, align 8
  %rx_fcs_err = getelementptr i8, ptr %dev, i32 2488
  %20 = ptrtoint ptr %rx_fcs_err to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %rx_fcs_err, align 8
  %add4 = add i64 %21, %19
  %rx_len_err = getelementptr i8, ptr %dev, i32 2496
  %22 = ptrtoint ptr %rx_len_err to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %rx_len_err, align 8
  %add5 = add i64 %add4, %23
  %rx_ov_sz = getelementptr i8, ptr %dev, i32 2584
  %24 = ptrtoint ptr %rx_ov_sz to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %rx_ov_sz, align 8
  %add6 = add i64 %add5, %25
  %rx_ov_rrd = getelementptr i8, ptr %dev, i32 2600
  %26 = ptrtoint ptr %rx_ov_rrd to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %rx_ov_rrd, align 8
  %add7 = add i64 %add6, %27
  %rx_align_err = getelementptr i8, ptr %dev, i32 2608
  %28 = ptrtoint ptr %rx_align_err to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %rx_align_err, align 8
  %add8 = add i64 %add7, %29
  %rx_ov_rxf = getelementptr i8, ptr %dev, i32 2592
  %30 = ptrtoint ptr %rx_ov_rxf to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %rx_ov_rxf, align 8
  %add9 = add i64 %add8, %31
  %rx_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats, i32 0, i32 4
  %32 = ptrtoint ptr %rx_errors to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %add9, ptr %rx_errors, align 8
  %33 = load i64, ptr %rx_ov_rxf, align 8
  %rx_fifo_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats, i32 0, i32 14
  %34 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %rx_fifo_errors, align 8
  %35 = load i64, ptr %rx_len_err, align 8
  %rx_length_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats, i32 0, i32 10
  %36 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %rx_length_errors, align 8
  %37 = load i64, ptr %rx_fcs_err, align 8
  %rx_crc_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats, i32 0, i32 12
  %38 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %rx_crc_errors, align 8
  %39 = load i64, ptr %rx_align_err, align 8
  %rx_frame_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats, i32 0, i32 13
  %40 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %rx_frame_errors, align 8
  %41 = load i64, ptr %rx_ov_rrd, align 8
  %rx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats, i32 0, i32 6
  %42 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %rx_dropped, align 8
  %43 = load i64, ptr %tx_late_col, align 8
  %44 = load i64, ptr %tx_abort_col, align 8
  %add17 = add i64 %44, %43
  %tx_underrun = getelementptr i8, ptr %dev, i32 2792
  %45 = ptrtoint ptr %tx_underrun to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %tx_underrun, align 8
  %add18 = add i64 %add17, %46
  %tx_trunc = getelementptr i8, ptr %dev, i32 2816
  %47 = ptrtoint ptr %tx_trunc to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %tx_trunc, align 8
  %add19 = add i64 %add18, %48
  %tx_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats, i32 0, i32 5
  %49 = ptrtoint ptr %tx_errors to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %add19, ptr %tx_errors, align 8
  %50 = load i64, ptr %tx_abort_col, align 8
  %tx_aborted_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats, i32 0, i32 16
  %51 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %tx_aborted_errors, align 8
  %52 = load i64, ptr %tx_underrun, align 8
  %tx_fifo_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats, i32 0, i32 18
  %53 = ptrtoint ptr %tx_fifo_errors to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %tx_fifo_errors, align 8
  %54 = load i64, ptr %tx_late_col, align 8
  %tx_window_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats, i32 0, i32 20
  %55 = ptrtoint ptr %tx_window_errors to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %tx_window_errors, align 8
  %tx_ok = getelementptr i8, ptr %dev, i32 2640
  %56 = ptrtoint ptr %tx_ok to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %tx_ok, align 8
  %add24 = add i64 %57, %add19
  %tx_packets = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats, i32 0, i32 1
  %58 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %add24, ptr %tx_packets, align 8
  %59 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %stats, align 8
  %add26 = add i64 %60, %add9
  %61 = ptrtoint ptr %net_stats to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %add26, ptr %net_stats, align 8
  tail call void @_raw_spin_unlock(ptr noundef %stats_lock) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alx_poll_controller(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %hw = getelementptr i8, ptr %netdev, i32 2312
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %msix_enabled = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 49
  %2 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_loadN_noabort(i32 %2, i32 5)
  %bf.load = load i40, ptr %msix_enabled, align 1
  %3 = and i40 %bf.load, 67108864
  %tobool.not = icmp eq i40 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call void @alx_mask_msix(ptr noundef %hw, i32 noundef 0, i1 noundef zeroext true) #13
  %hw_addr.i.i = getelementptr i8, ptr %netdev, i32 2316
  %4 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 5632
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !197
  %int_mask.i = getelementptr i8, ptr %netdev, i32 2952
  %7 = ptrtoint ptr %int_mask.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %int_mask.i, align 8
  %9 = and i32 %6, 528478343
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #13
  %and2.i = and i32 %10, %8
  %call3.i = tail call fastcc zeroext i1 @alx_intr_handle_misc(ptr noundef %add.ptr.i, i32 noundef %and2.i) #13
  br i1 %call3.i, label %if.then.alx_intr_msix_misc.exit_crit_edge, label %if.end.i

if.then.alx_intr_msix_misc.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %alx_intr_msix_misc.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !185
  tail call void @arm_heavy_mb() #13
  %11 = tail call i32 @llvm.bswap.i32(i32 %and2.i) #13
  %12 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %13, i32 5632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 %11) #13, !srcloc !186
  tail call void @alx_mask_msix(ptr noundef %hw, i32 noundef 0, i1 noundef zeroext false) #13
  br label %alx_intr_msix_misc.exit

alx_intr_msix_misc.exit:                          ; preds = %if.end.i, %if.then.alx_intr_msix_misc.exit_crit_edge
  %num_txq = getelementptr i8, ptr %netdev, i32 2896
  %14 = ptrtoint ptr %num_txq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_txq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp33 = icmp sgt i32 %15, 0
  br i1 %cmp33, label %alx_intr_msix_misc.exit.for.body_crit_edge, label %alx_intr_msix_misc.exit.if.end14_crit_edge

alx_intr_msix_misc.exit.if.end14_crit_edge:       ; preds = %alx_intr_msix_misc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

alx_intr_msix_misc.exit.for.body_crit_edge:       ; preds = %alx_intr_msix_misc.exit
  br label %for.body

for.body:                                         ; preds = %alx_intr_msix_ring.exit.for.body_crit_edge, %alx_intr_msix_misc.exit.for.body_crit_edge
  %i.034 = phi i32 [ %inc, %alx_intr_msix_ring.exit.for.body_crit_edge ], [ 0, %alx_intr_msix_misc.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.alx_priv, ptr %add.ptr.i, i32 0, i32 4, i32 %i.034
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %alx.i = getelementptr inbounds %struct.alx_napi, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %alx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %alx.i, align 8
  %hw1.i23 = getelementptr inbounds %struct.alx_priv, ptr %19, i32 0, i32 1
  %vec_idx.i = getelementptr inbounds %struct.alx_napi, ptr %17, i32 0, i32 4
  %20 = ptrtoint ptr %vec_idx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vec_idx.i, align 4
  tail call void @alx_mask_msix(ptr noundef %hw1.i23, i32 noundef %21, i1 noundef zeroext true) #13
  %vec_mask.i = getelementptr inbounds %struct.alx_napi, ptr %17, i32 0, i32 5
  %22 = ptrtoint ptr %vec_mask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vec_mask.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !185
  tail call void @arm_heavy_mb() #13
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #13
  %hw_addr.i.i24 = getelementptr inbounds %struct.alx_priv, ptr %19, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %hw_addr.i.i24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw_addr.i.i24, align 4
  %add.ptr.i.i25 = getelementptr i8, ptr %26, i32 5632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i25, i32 %24) #13, !srcloc !186
  %call.i.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %17) #13
  br i1 %call.i.i, label %if.then.i.i, label %for.body.alx_intr_msix_ring.exit_crit_edge

for.body.alx_intr_msix_ring.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %alx_intr_msix_ring.exit

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__napi_schedule(ptr noundef %17) #13
  br label %alx_intr_msix_ring.exit

alx_intr_msix_ring.exit:                          ; preds = %if.then.i.i, %for.body.alx_intr_msix_ring.exit_crit_edge
  %inc = add nuw nsw i32 %i.034, 1
  %27 = ptrtoint ptr %num_txq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_txq, align 8
  %cmp = icmp slt i32 %inc, %28
  br i1 %cmp, label %alx_intr_msix_ring.exit.for.body_crit_edge, label %alx_intr_msix_ring.exit.if.end14_crit_edge

alx_intr_msix_ring.exit.if.end14_crit_edge:       ; preds = %alx_intr_msix_ring.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

alx_intr_msix_ring.exit.for.body_crit_edge:       ; preds = %alx_intr_msix_ring.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.else:                                          ; preds = %entry
  %29 = and i40 %bf.load, 134217728
  %tobool9.not = icmp eq i40 %29, 0
  %hw_addr.i.i28 = getelementptr i8, ptr %netdev, i32 2316
  %30 = ptrtoint ptr %hw_addr.i.i28 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw_addr.i.i28, align 4
  %add.ptr.i.i29 = getelementptr i8, ptr %31, i32 5632
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i29) #13
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13
  br i1 %tobool9.not, label %if.else12, label %if.else.if.end14.sink.split_crit_edge

if.else.if.end14.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14.sink.split

if.else12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %tobool.not.i = icmp sgt i32 %33, -1
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.else12.if.end14_crit_edge

if.else12.if.end14_crit_edge:                     ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

lor.lhs.false.i:                                  ; preds = %if.else12
  %int_mask.i30 = getelementptr i8, ptr %netdev, i32 2952
  %34 = ptrtoint ptr %int_mask.i30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %int_mask.i30, align 8
  %and2.i31 = and i32 %35, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i31)
  %tobool3.not.i = icmp eq i32 %and2.i31, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.if.end14_crit_edge, label %lor.lhs.false.i.if.end14.sink.split_crit_edge

lor.lhs.false.i.if.end14.sink.split_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14.sink.split

lor.lhs.false.i.if.end14_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.end14.sink.split:                              ; preds = %lor.lhs.false.i.if.end14.sink.split_crit_edge, %if.else.if.end14.sink.split_crit_edge
  tail call fastcc void @alx_intr_handle(ptr noundef %add.ptr.i, i32 noundef %33) #13
  br label %if.end14

if.end14:                                         ; preds = %if.end14.sink.split, %lor.lhs.false.i.if.end14_crit_edge, %if.else12.if.end14_crit_edge, %alx_intr_msix_ring.exit.if.end14_crit_edge, %alx_intr_msix_misc.exit.if.end14_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @alx_fix_features(ptr nocapture noundef readonly %netdev, i64 noundef %features) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mtu = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 20
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7168, i32 %1)
  %cmp = icmp ugt i32 %1, 7168
  %and = and i64 %features, -1114113
  %spec.select = select i1 %cmp, i64 %and, i64 %features
  ret i64 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__alx_open(ptr noundef %alx, i1 noundef zeroext %resume) unnamed_addr #2 align 64 {
entry:
  %tbl.i.i = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %0 = load volatile i32, ptr @__num_online_cpus, align 4
  %1 = tail call i32 @llvm.smin.i32(i32 %0, i32 4) #13
  %2 = tail call i32 @llvm.smax.i32(i32 %1, i32 1) #13
  %add.i = add nuw nsw i32 %2, 1
  %hw.i = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 1
  %3 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw.i, align 8
  %call.i.i = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %4, i32 noundef %add.i, i32 noundef %add.i, i32 noundef 4, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp8.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp8.i, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %alx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %alx, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %6, ptr noundef nonnull @.str.45) #16
  %7 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw.i, align 8
  %call.i.i55 = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %8, i32 noundef 1, i32 noundef 1, i32 noundef 3, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i55)
  %cmp.i = icmp slt i32 %call.i.i55, 0
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %.sink81 = phi i32 [ %add.i, %entry.if.end3_crit_edge ], [ 1, %if.then.if.end3_crit_edge ]
  %.sink80 = phi i32 [ %2, %entry.if.end3_crit_edge ], [ 1, %if.then.if.end3_crit_edge ]
  %.sink = phi i32 [ %1, %entry.if.end3_crit_edge ], [ 1, %if.then.if.end3_crit_edge ]
  %num_vec.i = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 2
  %9 = ptrtoint ptr %num_vec.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink81, ptr %num_vec.i, align 8
  %num_napi.i56 = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 7
  %10 = ptrtoint ptr %num_napi.i56 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink80, ptr %num_napi.i56, align 8
  %num_txq.i = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 5
  %11 = ptrtoint ptr %num_txq.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %num_txq.i, align 8
  %num_rxq.i = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 6
  %12 = ptrtoint ptr %num_rxq.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %num_rxq.i, align 4
  br i1 %resume, label %if.end3.if.end6_crit_edge, label %if.then5

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %alx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %alx, align 8
  tail call void @netif_carrier_off(ptr noundef %14) #13
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3.if.end6_crit_edge
  %call7 = tail call fastcc i32 @alx_alloc_napis(ptr noundef %alx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.out_disable_adv_intr_crit_edge

if.end6.out_disable_adv_intr_crit_edge:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_disable_adv_intr

if.end10:                                         ; preds = %if.end6
  %call11 = tail call fastcc i32 @alx_alloc_rings(ptr noundef %alx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.out_free_rings_crit_edge

if.end10.out_free_rings_crit_edge:                ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_rings

if.end14:                                         ; preds = %if.end10
  tail call void @alx_configure_basic(ptr noundef %hw.i) #13
  tail call void @alx_disable_rss(ptr noundef %hw.i) #13
  %15 = ptrtoint ptr %alx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %alx, align 8
  tail call fastcc void @__alx_set_rx_mode(ptr noundef %16) #13
  %rx_ctrl.i = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 1, i32 9
  %17 = ptrtoint ptr %rx_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_ctrl.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !185
  tail call void @arm_heavy_mb() #13
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #13
  %hw_addr.i.i = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 5248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %19) #13, !srcloc !186
  %22 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw.i, align 8
  %imt.i = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 1, i32 5
  %24 = ptrtoint ptr %imt.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %imt.i, align 2
  %26 = lshr i16 %25, 1
  %27 = zext i16 %26 to i32
  %msix_enabled.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 49
  %28 = ptrtoint ptr %msix_enabled.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 5)
  %bf.load.i = load i40, ptr %msix_enabled.i, align 1
  %29 = and i40 %bf.load.i, 67108864
  %tobool.not.i = icmp eq i40 %29, 0
  br i1 %tobool.not.i, label %if.end14.if.end12.i_crit_edge, label %if.then.i62

if.end14.if.end12.i_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12.i

if.then.i62:                                      ; preds = %if.end14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !185
  tail call void @arm_heavy_mb() #13
  %30 = tail call i32 @llvm.bswap.i32(i32 %27) #13
  %31 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i60 = getelementptr i8, ptr %32, i32 6432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i60, i32 %30) #13, !srcloc !186
  %33 = ptrtoint ptr %alx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %alx, align 8
  %35 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw.i, align 8
  %call.i.i61 = tail call i32 @pci_irq_vector(ptr noundef %36, i32 noundef 0) #13
  %call.i.i.i = tail call i32 @request_threaded_irq(i32 noundef %call.i.i61, ptr noundef nonnull @alx_intr_msix_misc, ptr noundef null, i32 noundef 0, ptr noundef %34, ptr noundef %alx) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %for.cond.preheader.i.i, label %if.then.i62.if.end.i63_crit_edge

if.then.i62.if.end.i63_crit_edge:                 ; preds = %if.then.i62
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i63

for.cond.preheader.i.i:                           ; preds = %if.then.i62
  %num_napi.i.i = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 7
  %37 = ptrtoint ptr %num_napi.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_napi.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp119.i.i = icmp sgt i32 %38, 0
  br i1 %cmp119.i.i, label %for.cond.preheader.i.i.for.body.i.i_crit_edge, label %for.cond.preheader.i.i.if.then35.i_crit_edge

for.cond.preheader.i.i.if.then35.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then35.i

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %if.end41.i.i
  %39 = ptrtoint ptr %num_napi.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_napi.i.i, align 8
  %cmp.i.i = icmp slt i32 %inc.i.i, %40
  br i1 %cmp.i.i, label %for.cond.i.i.for.body.i.i_crit_edge, label %for.cond.i.i.if.then35.i_crit_edge

for.cond.i.i.if.then35.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then35.i

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %vector.0121.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.alx_priv, ptr %alx, i32 0, i32 4, i32 %vector.0121.i.i
  %41 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i.i, align 4
  %inc.i.i = add nuw nsw i32 %vector.0121.i.i, 1
  %txq.i.i = getelementptr inbounds %struct.alx_napi, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %txq.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %txq.i.i, align 8
  %tobool2.not.i.i = icmp eq ptr %44, null
  %rxq22.i.i = getelementptr inbounds %struct.alx_napi, ptr %42, i32 0, i32 2
  %45 = ptrtoint ptr %rxq22.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rxq22.i.i, align 4
  %tobool23.not.i.i = icmp eq ptr %46, null
  %irq_lbl34.i.i = getelementptr inbounds %struct.alx_napi, ptr %42, i32 0, i32 6
  br i1 %tobool2.not.i.i, label %if.else21.i.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %queue_idx18.i.i = getelementptr inbounds %struct.alx_tx_queue, ptr %44, i32 0, i32 8
  %47 = ptrtoint ptr %queue_idx18.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %queue_idx18.i.i, align 2
  %conv19.i.i = zext i16 %48 to i32
  br i1 %tobool23.not.i.i, label %if.then12.i.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call9.i.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %irq_lbl34.i.i, ptr noundef nonnull @.str.52, ptr noundef %34, i32 noundef %conv19.i.i) #13
  br label %if.end41.i.i

if.then12.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call20.i.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %irq_lbl34.i.i, ptr noundef nonnull @.str.53, ptr noundef %34, i32 noundef %conv19.i.i) #13
  br label %if.end41.i.i

if.else21.i.i:                                    ; preds = %for.body.i.i
  br i1 %tobool23.not.i.i, label %if.else33.i.i, label %if.then24.i.i

if.then24.i.i:                                    ; preds = %if.else21.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %queue_idx30.i.i = getelementptr inbounds %struct.alx_rx_queue, ptr %46, i32 0, i32 12
  %49 = ptrtoint ptr %queue_idx30.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %queue_idx30.i.i, align 4
  %conv31.i.i = zext i16 %50 to i32
  %call32.i.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %irq_lbl34.i.i, ptr noundef nonnull @.str.54, ptr noundef %34, i32 noundef %conv31.i.i) #13
  br label %if.end41.i.i

if.else33.i.i:                                    ; preds = %if.else21.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call38.i.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %irq_lbl34.i.i, ptr noundef nonnull @.str.55, ptr noundef %34) #13
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %if.else33.i.i, %if.then24.i.i, %if.then12.i.i, %if.then4.i.i
  %vec_idx.i.i = getelementptr inbounds %struct.alx_napi, ptr %42, i32 0, i32 4
  %51 = ptrtoint ptr %vec_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %inc.i.i, ptr %vec_idx.i.i, align 4
  %52 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw.i, align 8
  %call44.i.i = tail call i32 @pci_irq_vector(ptr noundef %53, i32 noundef %inc.i.i) #13
  %call.i116.i.i = tail call i32 @request_threaded_irq(i32 noundef %call44.i.i, ptr noundef nonnull @alx_intr_msix_ring, ptr noundef null, i32 noundef 0, ptr noundef %irq_lbl34.i.i, ptr noundef %42) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116.i.i)
  %tobool48.not.i.i = icmp eq i32 %call.i116.i.i, 0
  br i1 %tobool48.not.i.i, label %for.cond.i.i, label %out_free.i.i

out_free.i.i:                                     ; preds = %if.end41.i.i
  %54 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw.i, align 8
  %call55.i.i = tail call i32 @pci_irq_vector(ptr noundef %55, i32 noundef 0) #13
  %call56.i.i = tail call ptr @free_irq(i32 noundef %call55.i.i, ptr noundef %alx) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vector.0121.i.i)
  %cmp58122.not.i.i = icmp eq i32 %vector.0121.i.i, 0
  br i1 %cmp58122.not.i.i, label %out_free.i.i.if.end.i63_crit_edge, label %out_free.i.i.for.body60.i.i_crit_edge

out_free.i.i.for.body60.i.i_crit_edge:            ; preds = %out_free.i.i
  br label %for.body60.i.i

out_free.i.i.if.end.i63_crit_edge:                ; preds = %out_free.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i63

for.body60.i.i:                                   ; preds = %for.body60.i.i.for.body60.i.i_crit_edge, %out_free.i.i.for.body60.i.i_crit_edge
  %free_vector.0124.i.i = phi i32 [ %inc63.i.i, %for.body60.i.i.for.body60.i.i_crit_edge ], [ 1, %out_free.i.i.for.body60.i.i_crit_edge ]
  %i.1123.i.i = phi i32 [ %inc69.i.i, %for.body60.i.i.for.body60.i.i_crit_edge ], [ 0, %out_free.i.i.for.body60.i.i_crit_edge ]
  %56 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hw.i, align 8
  %inc63.i.i = add nuw nsw i32 %free_vector.0124.i.i, 1
  %call64.i.i = tail call i32 @pci_irq_vector(ptr noundef %57, i32 noundef %free_vector.0124.i.i) #13
  %arrayidx66.i.i = getelementptr %struct.alx_priv, ptr %alx, i32 0, i32 4, i32 %i.1123.i.i
  %58 = ptrtoint ptr %arrayidx66.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx66.i.i, align 4
  %call67.i.i = tail call ptr @free_irq(i32 noundef %call64.i.i, ptr noundef %59) #13
  %inc69.i.i = add nuw nsw i32 %i.1123.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc69.i.i, %vector.0121.i.i
  br i1 %exitcond.not.i.i, label %for.body60.i.i.if.end.i63_crit_edge, label %for.body60.i.i.for.body60.i.i_crit_edge

for.body60.i.i.for.body60.i.i_crit_edge:          ; preds = %for.body60.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body60.i.i

for.body60.i.i.if.end.i63_crit_edge:              ; preds = %for.body60.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i63

if.end.i63:                                       ; preds = %for.body60.i.i.if.end.i63_crit_edge, %out_free.i.i.if.end.i63_crit_edge, %if.then.i62.if.end.i63_crit_edge
  tail call fastcc void @alx_free_rings(ptr noundef %alx) #13
  %num_napi.i.i.i = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 7
  %60 = ptrtoint ptr %num_napi.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_napi.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp12.i.i.i = icmp sgt i32 %61, 0
  br i1 %cmp12.i.i.i, label %if.end.i63.for.body.i.i.i_crit_edge, label %if.end.i63.alx_free_napis.exit.i.i_crit_edge

if.end.i63.alx_free_napis.exit.i.i_crit_edge:     ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #15
  br label %alx_free_napis.exit.i.i

if.end.i63.for.body.i.i.i_crit_edge:              ; preds = %if.end.i63
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end.i63.for.body.i.i.i_crit_edge
  %i.013.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end.i63.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.alx_priv, ptr %alx, i32 0, i32 4, i32 %i.013.i.i.i
  %62 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %63, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %if.end.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__netif_napi_del(ptr noundef nonnull %63) #13
  tail call void @synchronize_net() #13
  %txq.i.i.i = getelementptr inbounds %struct.alx_napi, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %txq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %txq.i.i.i, align 8
  tail call void @kfree(ptr noundef %65) #13
  %rxq.i.i.i = getelementptr inbounds %struct.alx_napi, ptr %63, i32 0, i32 2
  %66 = ptrtoint ptr %rxq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rxq.i.i.i, align 4
  tail call void @kfree(ptr noundef %67) #13
  tail call void @kfree(ptr noundef nonnull %63) #13
  %68 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %arrayidx.i.i.i, align 4
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.end.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw nsw i32 %i.013.i.i.i, 1
  %69 = ptrtoint ptr %num_napi.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_napi.i.i.i, align 8
  %cmp.i.i.i = icmp slt i32 %inc.i.i.i, %70
  br i1 %cmp.i.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, label %for.inc.i.i.i.alx_free_napis.exit.i.i_crit_edge

for.inc.i.i.i.alx_free_napis.exit.i.i_crit_edge:  ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alx_free_napis.exit.i.i

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i.i

alx_free_napis.exit.i.i:                          ; preds = %for.inc.i.i.i.alx_free_napis.exit.i.i_crit_edge, %if.end.i63.alx_free_napis.exit.i.i_crit_edge
  %71 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hw.i, align 8
  tail call void @pci_free_irq_vectors(ptr noundef %72) #13
  %73 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hw.i, align 8
  %call.i.i.i.i64 = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %74, i32 noundef 1, i32 noundef 1, i32 noundef 3, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i64)
  %cmp.i19.i.i = icmp slt i32 %call.i.i.i.i64, 0
  br i1 %cmp.i19.i.i, label %alx_free_napis.exit.i.i.alx_request_irq.exit_crit_edge, label %if.end.i.i

alx_free_napis.exit.i.i.alx_request_irq.exit_crit_edge: ; preds = %alx_free_napis.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alx_request_irq.exit

if.end.i.i:                                       ; preds = %alx_free_napis.exit.i.i
  %num_vec.i.i.i = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 2
  %75 = ptrtoint ptr %num_vec.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1, ptr %num_vec.i.i.i, align 8
  %76 = ptrtoint ptr %num_napi.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %num_napi.i.i.i, align 8
  %num_txq.i.i.i = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 5
  %77 = ptrtoint ptr %num_txq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1, ptr %num_txq.i.i.i, align 8
  %num_rxq.i.i.i = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 6
  %78 = ptrtoint ptr %num_rxq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1, ptr %num_rxq.i.i.i, align 4
  %call1.i.i = tail call fastcc i32 @alx_alloc_napis(ptr noundef %alx) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i60.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i60.i, label %alx_realloc_resources.exit.i, label %if.end.i.i.alx_request_irq.exit_crit_edge

if.end.i.i.alx_request_irq.exit_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alx_request_irq.exit

alx_realloc_resources.exit.i:                     ; preds = %if.end.i.i
  %call5.i.i = tail call fastcc i32 @alx_alloc_rings(ptr noundef %alx) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool9.not.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool9.not.i, label %alx_realloc_resources.exit.i.if.end12.i_crit_edge, label %alx_realloc_resources.exit.i.alx_request_irq.exit_crit_edge

alx_realloc_resources.exit.i.alx_request_irq.exit_crit_edge: ; preds = %alx_realloc_resources.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alx_request_irq.exit

alx_realloc_resources.exit.i.if.end12.i_crit_edge: ; preds = %alx_realloc_resources.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12.i

if.end12.i:                                       ; preds = %alx_realloc_resources.exit.i.if.end12.i_crit_edge, %if.end14.if.end12.i_crit_edge
  %79 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hw.i, align 8
  %msi_enabled.i = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 49
  %81 = ptrtoint ptr %msi_enabled.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 5)
  %bf.load15.i = load i40, ptr %msi_enabled.i, align 1
  %82 = and i40 %bf.load15.i, 134217728
  %tobool19.not.i = icmp eq i40 %82, 0
  br i1 %tobool19.not.i, label %if.end12.i.out.i_crit_edge, label %if.then20.i

if.end12.i.out.i_crit_edge:                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i

if.then20.i:                                      ; preds = %if.end12.i
  %or.i = or i32 %27, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !185
  tail call void @arm_heavy_mb() #13
  %83 = tail call i32 @llvm.bswap.i32(i32 %or.i) #13
  %84 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i63.i = getelementptr i8, ptr %85, i32 6432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63.i, i32 %83) #13, !srcloc !186
  %call21.i = tail call i32 @pci_irq_vector(ptr noundef %23, i32 noundef 0) #13
  %86 = ptrtoint ptr %alx to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %alx, align 8
  %call.i64.i = tail call i32 @request_threaded_irq(i32 noundef %call21.i, ptr noundef nonnull @alx_intr_msi, ptr noundef null, i32 noundef 0, ptr noundef %87, ptr noundef %alx) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64.i)
  %tobool23.not.i = icmp eq i32 %call.i64.i, 0
  br i1 %tobool23.not.i, label %if.then20.i.if.then35.i_crit_edge, label %if.end25.i

if.then20.i.if.then35.i_crit_edge:                ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then35.i

if.end25.i:                                       ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #15
  %88 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hw.i, align 8
  tail call void @pci_free_irq_vectors(ptr noundef %89) #13
  br label %out.i

out.i:                                            ; preds = %if.end25.i, %if.end12.i.out.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !185
  tail call void @arm_heavy_mb() #13
  %90 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i66.i = getelementptr i8, ptr %91, i32 6432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66.i, i32 0) #13, !srcloc !186
  %call29.i = tail call i32 @pci_irq_vector(ptr noundef %23, i32 noundef 0) #13
  %92 = ptrtoint ptr %alx to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %alx, align 8
  %call.i67.i = tail call i32 @request_threaded_irq(i32 noundef %call29.i, ptr noundef nonnull @alx_intr_legacy, ptr noundef null, i32 noundef 128, ptr noundef %93, ptr noundef %alx) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67.i)
  %tobool34.not.i = icmp eq i32 %call.i67.i, 0
  br i1 %tobool34.not.i, label %out.i.if.then35.i_crit_edge, label %out.i.alx_request_irq.exit_crit_edge

out.i.alx_request_irq.exit_crit_edge:             ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alx_request_irq.exit

out.i.if.then35.i_crit_edge:                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then35.i

if.then35.i:                                      ; preds = %out.i.if.then35.i_crit_edge, %if.then20.i.if.then35.i_crit_edge, %for.cond.i.i.if.then35.i_crit_edge, %for.cond.preheader.i.i.if.then35.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tbl.i.i) #13
  %94 = ptrtoint ptr %tbl.i.i to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 0, ptr %tbl.i.i, align 8
  %95 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hw.i, align 8
  %msix_enabled.i.i = getelementptr inbounds %struct.pci_dev, ptr %96, i32 0, i32 49
  %97 = ptrtoint ptr %msix_enabled.i.i to i32
  call void @__asan_loadN_noabort(i32 %97, i32 5)
  %bf.load.i.i = load i40, ptr %msix_enabled.i.i, align 1
  %98 = and i40 %bf.load.i.i, 67108864
  %tobool.not.i68.i = icmp eq i40 %98, 0
  br i1 %tobool.not.i68.i, label %if.then35.i.if.end18_crit_edge, label %for.cond.preheader.i69.i

if.then35.i.if.end18_crit_edge:                   ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

for.cond.preheader.i69.i:                         ; preds = %if.then35.i
  %num_txq.i.i = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 5
  %99 = ptrtoint ptr %num_txq.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %num_txq.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp23.i.i = icmp sgt i32 %100, 0
  br i1 %cmp23.i.i, label %for.cond.preheader.i69.i.for.body.i73.i_crit_edge, label %for.cond.preheader.i69.i.for.end.i.i_crit_edge

for.cond.preheader.i69.i.for.end.i.i_crit_edge:   ; preds = %for.cond.preheader.i69.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.cond.preheader.i69.i.for.body.i73.i_crit_edge: ; preds = %for.cond.preheader.i69.i
  br label %for.body.i73.i

for.body.i73.i:                                   ; preds = %for.body.i73.i.for.body.i73.i_crit_edge, %for.cond.preheader.i69.i.for.body.i73.i_crit_edge
  %vector.025.i.i = phi i32 [ %inc6.i.i, %for.body.i73.i.for.body.i73.i_crit_edge ], [ 1, %for.cond.preheader.i69.i.for.body.i73.i_crit_edge ]
  %i.024.i.i = phi i32 [ %inc.i71.i, %for.body.i73.i.for.body.i73.i_crit_edge ], [ 0, %for.cond.preheader.i69.i.for.body.i73.i_crit_edge ]
  %mul.i.i = shl nuw i32 %i.024.i.i, 1
  %arrayidx.i70.i = getelementptr [8 x i32], ptr @txq_vec_mapping_shift, i32 0, i32 %mul.i.i
  %101 = ptrtoint ptr %arrayidx.i70.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx.i70.i, align 4
  %add.i.i = or i32 %mul.i.i, 1
  %arrayidx4.i.i = getelementptr [8 x i32], ptr @txq_vec_mapping_shift, i32 0, i32 %add.i.i
  %103 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx4.i.i, align 4
  %shl.i.i = shl i32 %vector.025.i.i, %104
  %arrayidx5.i.i = getelementptr [2 x i32], ptr %tbl.i.i, i32 0, i32 %102
  %105 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx5.i.i, align 4
  %or.i.i = or i32 %106, %shl.i.i
  store i32 %or.i.i, ptr %arrayidx5.i.i, align 4
  %inc.i71.i = add nuw nsw i32 %i.024.i.i, 1
  %inc6.i.i = add nuw i32 %vector.025.i.i, 1
  %exitcond.not.i72.i = icmp eq i32 %inc.i71.i, %100
  br i1 %exitcond.not.i72.i, label %for.body.i73.i.for.end.i.i_crit_edge, label %for.body.i73.i.for.body.i73.i_crit_edge

for.body.i73.i.for.body.i73.i_crit_edge:          ; preds = %for.body.i73.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i73.i

for.body.i73.i.for.end.i.i_crit_edge:             ; preds = %for.body.i73.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i73.i.for.end.i.i_crit_edge, %for.cond.preheader.i69.i.for.end.i.i_crit_edge
  %107 = ptrtoint ptr %tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %tbl.i.i, align 8
  %or8.i.i = or i32 %108, 1
  store i32 %or8.i.i, ptr %tbl.i.i, align 8
  br label %if.end18

alx_request_irq.exit:                             ; preds = %out.i.alx_request_irq.exit_crit_edge, %alx_realloc_resources.exit.i.alx_request_irq.exit_crit_edge, %if.end.i.i.alx_request_irq.exit_crit_edge, %alx_free_napis.exit.i.i.alx_request_irq.exit_crit_edge
  %err.091.i = phi i32 [ %call.i67.i, %out.i.alx_request_irq.exit_crit_edge ], [ %call5.i.i, %alx_realloc_resources.exit.i.alx_request_irq.exit_crit_edge ], [ %call.i.i.i.i64, %alx_free_napis.exit.i.i.alx_request_irq.exit_crit_edge ], [ %call1.i.i, %if.end.i.i.alx_request_irq.exit_crit_edge ]
  %109 = ptrtoint ptr %alx to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %alx, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %110, ptr noundef nonnull @.str.51) #16
  br label %out_free_rings

if.end18:                                         ; preds = %for.end.i.i, %if.then35.i.if.end18_crit_edge
  %111 = ptrtoint ptr %tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %tbl.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !185
  tail call void @arm_heavy_mb() #13
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #13
  %114 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %115, i32 5584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %113) #13, !srcloc !186
  %arrayidx10.i.i = getelementptr inbounds [2 x i32], ptr %tbl.i.i, i32 0, i32 1
  %116 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx10.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !185
  tail call void @arm_heavy_mb() #13
  %118 = tail call i32 @llvm.bswap.i32(i32 %117) #13
  %119 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i20.i.i = getelementptr i8, ptr %120, i32 5592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i.i, i32 %118) #13, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !185
  tail call void @arm_heavy_mb() #13
  %121 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i22.i.i = getelementptr i8, ptr %122, i32 5588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i.i, i32 0) #13, !srcloc !186
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tbl.i.i) #13
  %call19 = tail call fastcc i32 @alx_reinit_rings(ptr noundef %alx)
  %123 = ptrtoint ptr %alx to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %alx, align 8
  %num_txq = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 5
  %125 = ptrtoint ptr %num_txq to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %num_txq, align 8
  %call21 = tail call i32 @netif_set_real_num_tx_queues(ptr noundef %124, i32 noundef %126) #13
  %127 = ptrtoint ptr %alx to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %alx, align 8
  %num_rxq = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 6
  %129 = ptrtoint ptr %num_rxq to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %num_rxq, align 4
  %call23 = tail call i32 @netif_set_real_num_rx_queues(ptr noundef %128, i32 noundef %130) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !185
  tail call void @arm_heavy_mb() #13
  %131 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %132, i32 5632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -129) #13, !srcloc !186
  tail call fastcc void @alx_irq_enable(ptr noundef %alx)
  br i1 %resume, label %if.end18.if.end27_crit_edge, label %if.then25

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then25:                                        ; preds = %if.end18
  %133 = ptrtoint ptr %alx to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %alx, align 8
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %134, i32 0, i32 104
  %135 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %cmp4.not.i = icmp eq i32 %136, 0
  br i1 %cmp4.not.i, label %if.then25.if.end27_crit_edge, label %for.body.lr.ph.i

if.then25.if.end27_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

for.body.lr.ph.i:                                 ; preds = %if.then25
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %134, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %137 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %138, i32 %i.05.i, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  %inc.i = add nuw i32 %i.05.i, 1
  %139 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i65 = icmp ult i32 %inc.i, %140
  br i1 %cmp.i65, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end27_crit_edge

for.body.i.if.end27_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.end27:                                         ; preds = %for.body.i.if.end27_crit_edge, %if.then25.if.end27_crit_edge, %if.end18.if.end27_crit_edge
  %link_check_wk.i = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %141 = load ptr, ptr @system_wq, align 4
  %call.i.i.i66 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %141, ptr noundef %link_check_wk.i) #13
  br label %cleanup

out_free_rings:                                   ; preds = %alx_request_irq.exit, %if.end10.out_free_rings_crit_edge
  %err.0 = phi i32 [ %call11, %if.end10.out_free_rings_crit_edge ], [ %err.091.i, %alx_request_irq.exit ]
  tail call fastcc void @alx_free_rings(ptr noundef %alx)
  %num_napi.i67 = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 7
  %142 = ptrtoint ptr %num_napi.i67 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %num_napi.i67, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %cmp12.i = icmp sgt i32 %143, 0
  br i1 %cmp12.i, label %out_free_rings.for.body.i69_crit_edge, label %out_free_rings.out_disable_adv_intr_crit_edge

out_free_rings.out_disable_adv_intr_crit_edge:    ; preds = %out_free_rings
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_disable_adv_intr

out_free_rings.for.body.i69_crit_edge:            ; preds = %out_free_rings
  br label %for.body.i69

for.body.i69:                                     ; preds = %for.inc.i.for.body.i69_crit_edge, %out_free_rings.for.body.i69_crit_edge
  %i.013.i = phi i32 [ %inc.i71, %for.inc.i.for.body.i69_crit_edge ], [ 0, %out_free_rings.for.body.i69_crit_edge ]
  %arrayidx.i = getelementptr %struct.alx_priv, ptr %alx, i32 0, i32 4, i32 %i.013.i
  %144 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i68 = icmp eq ptr %145, null
  br i1 %tobool.not.i68, label %for.body.i69.for.inc.i_crit_edge, label %if.end.i70

for.body.i69.for.inc.i_crit_edge:                 ; preds = %for.body.i69
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end.i70:                                       ; preds = %for.body.i69
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__netif_napi_del(ptr noundef nonnull %145) #13
  tail call void @synchronize_net() #13
  %txq.i = getelementptr inbounds %struct.alx_napi, ptr %145, i32 0, i32 3
  %146 = ptrtoint ptr %txq.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %txq.i, align 8
  tail call void @kfree(ptr noundef %147) #13
  %rxq.i = getelementptr inbounds %struct.alx_napi, ptr %145, i32 0, i32 2
  %148 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %rxq.i, align 4
  tail call void @kfree(ptr noundef %149) #13
  tail call void @kfree(ptr noundef nonnull %145) #13
  %150 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr null, ptr %arrayidx.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i70, %for.body.i69.for.inc.i_crit_edge
  %inc.i71 = add nuw nsw i32 %i.013.i, 1
  %151 = ptrtoint ptr %num_napi.i67 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %num_napi.i67, align 8
  %cmp.i72 = icmp slt i32 %inc.i71, %152
  br i1 %cmp.i72, label %for.inc.i.for.body.i69_crit_edge, label %for.inc.i.out_disable_adv_intr_crit_edge

for.inc.i.out_disable_adv_intr_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_disable_adv_intr

for.inc.i.for.body.i69_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i69

out_disable_adv_intr:                             ; preds = %for.inc.i.out_disable_adv_intr_crit_edge, %out_free_rings.out_disable_adv_intr_crit_edge, %if.end6.out_disable_adv_intr_crit_edge
  %err.1 = phi i32 [ %call7, %if.end6.out_disable_adv_intr_crit_edge ], [ %err.0, %out_free_rings.out_disable_adv_intr_crit_edge ], [ %err.0, %for.inc.i.out_disable_adv_intr_crit_edge ]
  %153 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %hw.i, align 8
  tail call void @pci_free_irq_vectors(ptr noundef %154) #13
  br label %cleanup

cleanup:                                          ; preds = %out_disable_adv_intr, %if.end27, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %out_disable_adv_intr ], [ 0, %if.end27 ], [ %call.i.i55, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alx_alloc_napis(ptr noundef %alx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %int_mask = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 9
  %0 = ptrtoint ptr %int_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %int_mask, align 8
  %and = and i32 %1, -2014281953
  store i32 %and, ptr %int_mask, align 8
  %num_napi = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 7
  %2 = ptrtoint ptr %num_napi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_napi, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp106 = icmp sgt i32 %3, 0
  br i1 %cmp106, label %entry.for.body_crit_edge, label %entry.for.cond2.preheader_crit_edge

entry.for.cond2.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond2.preheader

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond2.preheader:                              ; preds = %if.end.for.cond2.preheader_crit_edge, %entry.for.cond2.preheader_crit_edge
  %num_txq = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 5
  %4 = ptrtoint ptr %num_txq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_txq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3108 = icmp sgt i32 %5, 0
  br i1 %cmp3108, label %for.body4.lr.ph, label %for.cond2.preheader.for.end24_crit_edge

for.cond2.preheader.for.end24_crit_edge:          ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end24

for.body4.lr.ph:                                  ; preds = %for.cond2.preheader
  %tx_ringsz = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 10
  %hw = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 1
  br label %for.body4

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0107 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 272) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %for.body.err_out_crit_edge, label %if.end

for.body.err_out_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_out

if.end:                                           ; preds = %for.body
  %alx1 = getelementptr inbounds %struct.alx_napi, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %alx1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %alx, ptr %alx1, align 8
  %8 = ptrtoint ptr %alx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %alx, align 8
  tail call void @netif_napi_add(ptr noundef %9, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @alx_poll, i32 noundef 64) #13
  %arrayidx = getelementptr %struct.alx_priv, ptr %alx, i32 0, i32 4, i32 %i.0107
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.0107, 1
  %11 = ptrtoint ptr %num_napi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_napi, align 8
  %cmp = icmp slt i32 %inc, %12
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.cond2.preheader_crit_edge

if.end.for.cond2.preheader_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond2.preheader

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body4:                                        ; preds = %if.end10.for.body4_crit_edge, %for.body4.lr.ph
  %i.1109 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc23, %if.end10.for.body4_crit_edge ]
  %arrayidx6 = getelementptr %struct.alx_priv, ptr %alx, i32 0, i32 4, i32 %i.1109
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx6, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i100 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 32) #18
  %tobool8.not = icmp eq ptr %call7.i.i100, null
  br i1 %tobool8.not, label %for.body4.err_out_crit_edge, label %if.end10

for.body4.err_out_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_out

if.end10:                                         ; preds = %for.body4
  %txq11 = getelementptr inbounds %struct.alx_napi, ptr %14, i32 0, i32 3
  %16 = ptrtoint ptr %txq11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i100, ptr %txq11, align 8
  %arrayidx12 = getelementptr [4 x i16], ptr @tx_pidx_reg, i32 0, i32 %i.1109
  %17 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx12, align 2
  %p_reg = getelementptr inbounds %struct.alx_tx_queue, ptr %call7.i.i100, i32 0, i32 9
  %19 = ptrtoint ptr %p_reg to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %p_reg, align 4
  %arrayidx13 = getelementptr [4 x i16], ptr @tx_cidx_reg, i32 0, i32 %i.1109
  %20 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx13, align 2
  %c_reg = getelementptr inbounds %struct.alx_tx_queue, ptr %call7.i.i100, i32 0, i32 10
  %22 = ptrtoint ptr %c_reg to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %c_reg, align 2
  %conv = trunc i32 %i.1109 to i16
  %queue_idx = getelementptr inbounds %struct.alx_tx_queue, ptr %call7.i.i100, i32 0, i32 8
  %23 = ptrtoint ptr %queue_idx to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv, ptr %queue_idx, align 2
  %24 = ptrtoint ptr %tx_ringsz to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_ringsz, align 4
  %conv14 = trunc i32 %25 to i16
  %count = getelementptr inbounds %struct.alx_tx_queue, ptr %call7.i.i100, i32 0, i32 5
  %26 = ptrtoint ptr %count to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv14, ptr %count, align 4
  %27 = ptrtoint ptr %alx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %alx, align 8
  %29 = ptrtoint ptr %call7.i.i100 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %call7.i.i100, align 8
  %30 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw, align 8
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %dev17 = getelementptr inbounds %struct.alx_tx_queue, ptr %call7.i.i100, i32 0, i32 1
  %32 = ptrtoint ptr %dev17 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %dev16, ptr %dev17, align 4
  %arrayidx18 = getelementptr [4 x i32], ptr @tx_vect_mask, i32 0, i32 %i.1109
  %33 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx18, align 4
  %vec_mask = getelementptr inbounds %struct.alx_napi, ptr %14, i32 0, i32 5
  %35 = ptrtoint ptr %vec_mask to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vec_mask, align 8
  %or = or i32 %36, %34
  store i32 %or, ptr %vec_mask, align 8
  %37 = ptrtoint ptr %int_mask to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %int_mask, align 8
  %or21 = or i32 %38, %34
  store i32 %or21, ptr %int_mask, align 8
  %inc23 = add nuw nsw i32 %i.1109, 1
  %39 = ptrtoint ptr %num_txq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_txq, align 8
  %cmp3 = icmp slt i32 %inc23, %40
  br i1 %cmp3, label %if.end10.for.body4_crit_edge, label %if.end10.for.end24_crit_edge

if.end10.for.end24_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end24

if.end10.for.body4_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body4

for.end24:                                        ; preds = %if.end10.for.end24_crit_edge, %for.cond2.preheader.for.end24_crit_edge
  %qnapi25 = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 4
  %41 = ptrtoint ptr %qnapi25 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %qnapi25, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %43 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i101 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %43, i32 noundef 3520, i32 noundef 44) #18
  %tobool28.not = icmp eq ptr %call7.i.i101, null
  br i1 %tobool28.not, label %for.end24.err_out_crit_edge, label %if.end30

for.end24.err_out_crit_edge:                      ; preds = %for.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_out

if.end30:                                         ; preds = %for.end24
  call void @__sanitizer_cov_trace_pc() #15
  %rxq31 = getelementptr inbounds %struct.alx_napi, ptr %42, i32 0, i32 2
  %44 = ptrtoint ptr %rxq31 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call7.i.i101, ptr %rxq31, align 4
  %45 = ptrtoint ptr %qnapi25 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %qnapi25, align 8
  %np34 = getelementptr inbounds %struct.alx_rx_queue, ptr %call7.i.i101, i32 0, i32 2
  %47 = ptrtoint ptr %np34 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %np34, align 8
  %queue_idx35 = getelementptr inbounds %struct.alx_rx_queue, ptr %call7.i.i101, i32 0, i32 12
  %48 = ptrtoint ptr %queue_idx35 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %queue_idx35, align 8
  %rx_ringsz = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 11
  %49 = ptrtoint ptr %rx_ringsz to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rx_ringsz, align 8
  %conv36 = trunc i32 %50 to i16
  %count37 = getelementptr inbounds %struct.alx_rx_queue, ptr %call7.i.i101, i32 0, i32 8
  %51 = ptrtoint ptr %count37 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv36, ptr %count37, align 8
  %52 = ptrtoint ptr %alx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %alx, align 8
  %54 = ptrtoint ptr %call7.i.i101 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %call7.i.i101, align 8
  %hw40 = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 1
  %55 = ptrtoint ptr %hw40 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hw40, align 8
  %dev42 = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  %dev43 = getelementptr inbounds %struct.alx_rx_queue, ptr %call7.i.i101, i32 0, i32 1
  %57 = ptrtoint ptr %dev43 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %dev42, ptr %dev43, align 4
  %vec_mask44 = getelementptr inbounds %struct.alx_napi, ptr %42, i32 0, i32 5
  %58 = ptrtoint ptr %vec_mask44 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %vec_mask44, align 8
  %or45 = or i32 %59, 65536
  store i32 %or45, ptr %vec_mask44, align 8
  %60 = ptrtoint ptr %int_mask to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %int_mask, align 8
  %or47 = or i32 %61, 65536
  store i32 %or47, ptr %int_mask, align 8
  br label %cleanup

err_out:                                          ; preds = %for.end24.err_out_crit_edge, %for.body4.err_out_crit_edge, %for.body.err_out_crit_edge
  %62 = ptrtoint ptr %alx to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %alx, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %63, ptr noundef nonnull @.str.46) #16
  %64 = ptrtoint ptr %num_napi to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_napi, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp12.i = icmp sgt i32 %65, 0
  br i1 %cmp12.i, label %err_out.for.body.i_crit_edge, label %err_out.cleanup_crit_edge

err_out.cleanup_crit_edge:                        ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

err_out.for.body.i_crit_edge:                     ; preds = %err_out
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %err_out.for.body.i_crit_edge
  %i.013.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %err_out.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.alx_priv, ptr %alx, i32 0, i32 4, i32 %i.013.i
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %67, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__netif_napi_del(ptr noundef nonnull %67) #13
  tail call void @synchronize_net() #13
  %txq.i = getelementptr inbounds %struct.alx_napi, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %txq.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %txq.i, align 8
  tail call void @kfree(ptr noundef %69) #13
  %rxq.i = getelementptr inbounds %struct.alx_napi, ptr %67, i32 0, i32 2
  %70 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rxq.i, align 4
  tail call void @kfree(ptr noundef %71) #13
  tail call void @kfree(ptr noundef nonnull %67) #13
  %72 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %arrayidx.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.013.i, 1
  %73 = ptrtoint ptr %num_napi to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num_napi, align 8
  %cmp.i = icmp slt i32 %inc.i, %74
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %err_out.cleanup_crit_edge, %if.end30
  %retval.0 = phi i32 [ 0, %if.end30 ], [ -12, %err_out.cleanup_crit_edge ], [ -12, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alx_alloc_rings(ptr noundef %alx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ringsz = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 10
  %0 = ptrtoint ptr %tx_ringsz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_ringsz, align 4
  %num_txq = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 5
  %2 = ptrtoint ptr %num_txq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_txq, align 8
  %mul1 = mul i32 %3, %1
  %rx_ringsz = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 11
  %4 = ptrtoint ptr %rx_ringsz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_ringsz, align 8
  %mul4 = shl i32 %5, 3
  %reass.add = add i32 %5, %mul1
  %reass.mul = shl i32 %reass.add, 4
  %add5 = add i32 %reass.mul, %mul4
  %descmem = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 3
  %size = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add5, ptr %size, align 4
  %hw = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 1
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %add5, ptr noundef %descmem, i32 noundef 3264, i32 noundef 0) #13
  %virt = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %virt, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %10 = ptrtoint ptr %num_txq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_txq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp100 = icmp sgt i32 %11, 0
  br i1 %cmp100, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond:                                         ; preds = %alx_alloc_tx_ring.exit
  %inc = add nuw nsw i32 %i.0101, 1
  %12 = ptrtoint ptr %num_txq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_txq, align 8
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %offset.0102 = phi i32 [ %add5.i, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.0101 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.alx_priv, ptr %alx, i32 0, i32 4, i32 %i.0101
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %txq = getelementptr inbounds %struct.alx_napi, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %txq, align 8
  %count.i = getelementptr inbounds %struct.alx_tx_queue, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %count.i, align 4
  %conv.i = zext i16 %19 to i32
  %20 = mul nuw nsw i32 %conv.i, 12
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %20, i32 noundef 3520) #19
  %bufs.i = getelementptr inbounds %struct.alx_tx_queue, ptr %17, i32 0, i32 4
  %21 = ptrtoint ptr %bufs.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call8.i.i.i, ptr %bufs.i, align 4
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %for.body.cleanup.sink.split_crit_edge, label %alx_alloc_tx_ring.exit

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

alx_alloc_tx_ring.exit:                           ; preds = %for.body
  %22 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %virt, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 %offset.0102
  %tpd.i = getelementptr inbounds %struct.alx_tx_queue, ptr %17, i32 0, i32 2
  %24 = ptrtoint ptr %tpd.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr.i, ptr %tpd.i, align 4
  %25 = ptrtoint ptr %descmem to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %descmem, align 4
  %add.i = add i32 %26, %offset.0102
  %tpd_dma.i = getelementptr inbounds %struct.alx_tx_queue, ptr %17, i32 0, i32 3
  %27 = ptrtoint ptr %tpd_dma.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add.i, ptr %tpd_dma.i, align 4
  %28 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %count.i, align 4
  %conv4.i = zext i16 %29 to i32
  %mul.i = shl nuw nsw i32 %conv4.i, 4
  %add5.i = add nuw i32 %mul.i, %offset.0102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add5.i)
  %cmp17 = icmp slt i32 %add5.i, 0
  br i1 %cmp17, label %alx_alloc_tx_ring.exit.cleanup.sink.split_crit_edge, label %for.cond

alx_alloc_tx_ring.exit.cleanup.sink.split_crit_edge: ; preds = %alx_alloc_tx_ring.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %offset.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %add5.i, %for.cond.for.end_crit_edge ]
  %qnapi21 = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 4
  %30 = ptrtoint ptr %qnapi21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %qnapi21, align 8
  %rxq = getelementptr inbounds %struct.alx_napi, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rxq, align 4
  %count.i50 = getelementptr inbounds %struct.alx_rx_queue, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %count.i50 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %count.i50, align 4
  %conv.i51 = zext i16 %35 to i32
  %36 = mul nuw nsw i32 %conv.i51, 12
  %call8.i.i.i80 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %36, i32 noundef 3520) #19
  %bufs.i83 = getelementptr inbounds %struct.alx_rx_queue, ptr %33, i32 0, i32 7
  %37 = ptrtoint ptr %bufs.i83 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call8.i.i.i80, ptr %bufs.i83, align 4
  %tobool.not.i84 = icmp eq ptr %call8.i.i.i80, null
  br i1 %tobool.not.i84, label %for.end.cleanup.sink.split_crit_edge, label %alx_alloc_rx_ring.exit

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

alx_alloc_rx_ring.exit:                           ; preds = %for.end
  %38 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %virt, align 4
  %add.ptr.i88 = getelementptr i8, ptr %39, i32 %offset.0.lcssa
  %rrd.i = getelementptr inbounds %struct.alx_rx_queue, ptr %33, i32 0, i32 3
  %40 = ptrtoint ptr %rrd.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr.i88, ptr %rrd.i, align 4
  %41 = ptrtoint ptr %descmem to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %descmem, align 4
  %add.i89 = add i32 %42, %offset.0.lcssa
  %rrd_dma.i = getelementptr inbounds %struct.alx_rx_queue, ptr %33, i32 0, i32 4
  %43 = ptrtoint ptr %rrd_dma.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add.i89, ptr %rrd_dma.i, align 4
  %44 = ptrtoint ptr %count.i50 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %count.i50, align 4
  %conv4.i90 = zext i16 %45 to i32
  %mul.i91 = shl nuw nsw i32 %conv4.i90, 4
  %add5.i92 = add nuw i32 %mul.i91, %offset.0.lcssa
  %46 = load ptr, ptr %virt, align 4
  %add.ptr8.i = getelementptr i8, ptr %46, i32 %add5.i92
  %rfd.i = getelementptr inbounds %struct.alx_rx_queue, ptr %33, i32 0, i32 5
  %47 = ptrtoint ptr %rfd.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %add.ptr8.i, ptr %rfd.i, align 4
  %48 = load i32, ptr %descmem, align 4
  %add11.i = add i32 %48, %add5.i92
  %rfd_dma.i = getelementptr inbounds %struct.alx_rx_queue, ptr %33, i32 0, i32 6
  %49 = ptrtoint ptr %rfd_dma.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add11.i, ptr %rfd_dma.i, align 4
  %mul14.i = shl nuw nsw i32 %conv4.i90, 3
  %add15.i = add nuw i32 %add5.i92, %mul14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add15.i)
  %cmp24 = icmp slt i32 %add15.i, 0
  br i1 %cmp24, label %alx_alloc_rx_ring.exit.cleanup.sink.split_crit_edge, label %alx_alloc_rx_ring.exit.cleanup_crit_edge

alx_alloc_rx_ring.exit.cleanup_crit_edge:         ; preds = %alx_alloc_rx_ring.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

alx_alloc_rx_ring.exit.cleanup.sink.split_crit_edge: ; preds = %alx_alloc_rx_ring.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %alx_alloc_rx_ring.exit.cleanup.sink.split_crit_edge, %for.end.cleanup.sink.split_crit_edge, %alx_alloc_tx_ring.exit.cleanup.sink.split_crit_edge, %for.body.cleanup.sink.split_crit_edge
  %.str.50.sink = phi ptr [ @.str.50, %for.end.cleanup.sink.split_crit_edge ], [ @.str.50, %alx_alloc_rx_ring.exit.cleanup.sink.split_crit_edge ], [ @.str.49, %for.body.cleanup.sink.split_crit_edge ], [ @.str.49, %alx_alloc_tx_ring.exit.cleanup.sink.split_crit_edge ]
  %50 = ptrtoint ptr %alx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %alx, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %51, ptr noundef nonnull %.str.50.sink) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %alx_alloc_rx_ring.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %alx_alloc_rx_ring.exit.cleanup_crit_edge ], [ -12, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alx_reinit_rings(ptr nocapture noundef readonly %alx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @alx_free_buffers(ptr noundef %alx)
  %num_napi.i = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 7
  %0 = ptrtoint ptr %num_napi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_napi.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp69.i = icmp sgt i32 %1, 0
  br i1 %cmp69.i, label %for.body.lr.ph.i, label %entry.alx_init_ring_ptrs.exit_crit_edge

entry.alx_init_ring_ptrs.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %alx_init_ring_ptrs.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %hw_addr.i.i = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 1, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.070.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.alx_priv, ptr %alx, i32 0, i32 4, i32 %i.070.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %txq.i = getelementptr inbounds %struct.alx_napi, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %txq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %txq.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %read_idx.i = getelementptr inbounds %struct.alx_tx_queue, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %read_idx.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %read_idx.i, align 4
  %7 = ptrtoint ptr %txq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %txq.i, align 8
  %write_idx.i = getelementptr inbounds %struct.alx_tx_queue, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %write_idx.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %write_idx.i, align 2
  %10 = load ptr, ptr %txq.i, align 8
  %queue_idx.i = getelementptr inbounds %struct.alx_tx_queue, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %queue_idx.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %queue_idx.i, align 2
  %idxprom.i = zext i16 %12 to i32
  %arrayidx7.i = getelementptr [4 x i16], ptr @txring_header_reg, i32 0, i32 %idxprom.i
  %13 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx7.i, align 2
  %conv8.i = zext i16 %14 to i32
  %tpd_dma.i = getelementptr inbounds %struct.alx_tx_queue, ptr %10, i32 0, i32 3
  %15 = ptrtoint ptr %tpd_dma.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tpd_dma.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !185
  tail call void @arm_heavy_mb() #13
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #13
  %18 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %conv8.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %17) #13, !srcloc !186
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %rxq.i = getelementptr inbounds %struct.alx_napi, ptr %3, i32 0, i32 2
  %20 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rxq.i, align 4
  %tobool10.not.i = icmp eq ptr %21, null
  br i1 %tobool10.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.then11.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %read_idx13.i = getelementptr inbounds %struct.alx_rx_queue, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %read_idx13.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %read_idx13.i, align 4
  %23 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rxq.i, align 4
  %write_idx15.i = getelementptr inbounds %struct.alx_rx_queue, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %write_idx15.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %write_idx15.i, align 2
  %26 = load ptr, ptr %rxq.i, align 4
  %rrd_read_idx.i = getelementptr inbounds %struct.alx_rx_queue, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %rrd_read_idx.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %rrd_read_idx.i, align 2
  %28 = load ptr, ptr %rxq.i, align 4
  %rrd_dma.i = getelementptr inbounds %struct.alx_rx_queue, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %rrd_dma.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rrd_dma.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !185
  tail call void @arm_heavy_mb() #13
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #13
  %32 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i52.i = getelementptr i8, ptr %33, i32 5480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52.i, i32 %31) #13, !srcloc !186
  %34 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rxq.i, align 4
  %rfd_dma.i = getelementptr inbounds %struct.alx_rx_queue, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %rfd_dma.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rfd_dma.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !185
  tail call void @arm_heavy_mb() #13
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #13
  %39 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i54.i = getelementptr i8, ptr %40, i32 5456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54.i, i32 %38) #13, !srcloc !186
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then11.i, %if.end.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.070.i, 1
  %41 = ptrtoint ptr %num_napi.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_napi.i, align 8
  %cmp.i = icmp slt i32 %inc.i, %42
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.alx_init_ring_ptrs.exit_crit_edge

for.inc.i.alx_init_ring_ptrs.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alx_init_ring_ptrs.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

alx_init_ring_ptrs.exit:                          ; preds = %for.inc.i.alx_init_ring_ptrs.exit_crit_edge, %entry.alx_init_ring_ptrs.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !185
  tail call void @arm_heavy_mb() #13
  %hw_addr.i55.i = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %hw_addr.i55.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw_addr.i55.i, align 4
  %add.ptr.i56.i = getelementptr i8, ptr %44, i32 5444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56.i, i32 0) #13, !srcloc !186
  %tx_ringsz.i = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 10
  %45 = ptrtoint ptr %tx_ringsz.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_ringsz.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !185
  tail call void @arm_heavy_mb() #13
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #13
  %48 = ptrtoint ptr %hw_addr.i55.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw_addr.i55.i, align 4
  %add.ptr.i58.i = getelementptr i8, ptr %49, i32 5508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58.i, i32 %47) #13, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !185
  tail call void @arm_heavy_mb() #13
  %50 = ptrtoint ptr %hw_addr.i55.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw_addr.i55.i, align 4
  %add.ptr.i60.i = getelementptr i8, ptr %51, i32 5440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60.i, i32 0) #13, !srcloc !186
  %rx_ringsz.i = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 11
  %52 = ptrtoint ptr %rx_ringsz.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rx_ringsz.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !185
  tail call void @arm_heavy_mb() #13
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #13
  %55 = ptrtoint ptr %hw_addr.i55.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hw_addr.i55.i, align 4
  %add.ptr.i62.i = getelementptr i8, ptr %56, i32 5496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62.i, i32 %54) #13, !srcloc !186
  %57 = ptrtoint ptr %rx_ringsz.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rx_ringsz.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !185
  tail call void @arm_heavy_mb() #13
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #13
  %60 = ptrtoint ptr %hw_addr.i55.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw_addr.i55.i, align 4
  %add.ptr.i64.i = getelementptr i8, ptr %61, i32 5472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64.i, i32 %59) #13, !srcloc !186
  %rxbuf_size.i = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 12
  %62 = ptrtoint ptr %rxbuf_size.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rxbuf_size.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !185
  tail call void @arm_heavy_mb() #13
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #13
  %65 = ptrtoint ptr %hw_addr.i55.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hw_addr.i55.i, align 4
  %add.ptr.i66.i = getelementptr i8, ptr %66, i32 5476
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66.i, i32 %64) #13, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !185
  tail call void @arm_heavy_mb() #13
  %67 = ptrtoint ptr %hw_addr.i55.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hw_addr.i55.i, align 4
  %add.ptr.i68.i = getelementptr i8, ptr %68, i32 5428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68.i, i32 16777216) #13, !srcloc !186
  %call = tail call fastcc i32 @alx_refill_rx_ring(ptr noundef %alx, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_tx_queues(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_rx_queues(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alx_irq_enable(ptr noundef %alx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !185
  tail call void @arm_heavy_mb() #13
  %hw_addr.i = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 5632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #13, !srcloc !186
  %int_mask = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 9
  %2 = ptrtoint ptr %int_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %int_mask, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !185
  tail call void @arm_heavy_mb() #13
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #13
  %5 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %6, i32 5636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %4) #13, !srcloc !186
  %7 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_addr.i, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !198
  %10 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw1, align 8
  %msix_enabled = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 49
  %12 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_loadN_noabort(i32 %12, i32 5)
  %bf.load = load i40, ptr %msix_enabled, align 1
  %13 = and i40 %bf.load, 67108864
  %tobool.not = icmp eq i40 %13, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %num_vec = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 2
  %14 = ptrtoint ptr %num_vec to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_vec, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp14 = icmp sgt i32 %15, 0
  br i1 %cmp14, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end_crit_edge

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.015 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  tail call void @alx_mask_msix(ptr noundef %hw1, i32 noundef %i.015, i1 noundef zeroext false) #13
  %inc = add nuw nsw i32 %i.015, 1
  %16 = ptrtoint ptr %num_vec to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_vec, align 8
  %cmp = icmp slt i32 %inc, %17
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alx_free_rings(ptr nocapture noundef readonly %alx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @alx_free_buffers(ptr noundef %alx)
  %num_txq = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 5
  %0 = ptrtoint ptr %num_txq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_txq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp47 = icmp sgt i32 %1, 0
  br i1 %cmp47, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.048 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.alx_priv, ptr %alx, i32 0, i32 4, i32 %i.048
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %txq = getelementptr inbounds %struct.alx_napi, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %txq, align 8
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %bufs = getelementptr inbounds %struct.alx_tx_queue, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %bufs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bufs, align 4
  tail call void @kfree(ptr noundef %7) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.048, 1
  %8 = ptrtoint ptr %num_txq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_txq, align 8
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %qnapi7 = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 4
  %10 = ptrtoint ptr %qnapi7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qnapi7, align 8
  %tobool9.not = icmp eq ptr %11, null
  br i1 %tobool9.not, label %for.end.if.end19_crit_edge, label %land.lhs.true10

for.end.if.end19_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

land.lhs.true10:                                  ; preds = %for.end
  %rxq = getelementptr inbounds %struct.alx_napi, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rxq, align 4
  %tobool13.not = icmp eq ptr %13, null
  br i1 %tobool13.not, label %land.lhs.true10.if.end19_crit_edge, label %if.then14

land.lhs.true10.if.end19_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then14:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #15
  %bufs18 = getelementptr inbounds %struct.alx_rx_queue, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %bufs18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bufs18, align 4
  tail call void @kfree(ptr noundef %15) #13
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %land.lhs.true10.if.end19_crit_edge, %for.end.if.end19_crit_edge
  %virt = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %virt, align 4
  %tobool20.not = icmp eq ptr %17, null
  br i1 %tobool20.not, label %if.end19.if.end26_crit_edge, label %if.then21

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %descmem = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 3
  %hw = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 1
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %size = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 3, i32 2
  %20 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size, align 4
  %22 = ptrtoint ptr %descmem to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %descmem, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %21, ptr noundef nonnull %17, i32 noundef %23, i32 noundef 0) #13
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.end19.if.end26_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alx_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %alx1 = getelementptr inbounds %struct.alx_napi, ptr %napi, i32 0, i32 1
  %0 = ptrtoint ptr %alx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alx1, align 8
  %hw2 = getelementptr inbounds %struct.alx_priv, ptr %1, i32 0, i32 1
  %txq = getelementptr inbounds %struct.alx_napi, ptr %napi, i32 0, i32 3
  %2 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %txq, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 2304
  %queue_idx.i.i = getelementptr inbounds %struct.alx_tx_queue, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %queue_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %queue_idx.i.i, align 2
  %conv.i.i = zext i16 %7 to i32
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i.i, align 128
  %arrayidx.i.i.i = getelementptr %struct.netdev_queue, ptr %9, i32 %conv.i.i
  %read_idx.i = getelementptr inbounds %struct.alx_tx_queue, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %read_idx.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %read_idx.i, align 4
  %c_reg.i = getelementptr inbounds %struct.alx_tx_queue, ptr %3, i32 0, i32 10
  %12 = ptrtoint ptr %c_reg.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %c_reg.i, align 2
  %conv.i = zext i16 %13 to i32
  %hw_addr.i.i = getelementptr i8, ptr %5, i32 2316
  %14 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i64.i = getelementptr i8, ptr %15, i32 %conv.i
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i64.i) #13, !srcloc !199
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !200
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %17)
  %cmp.not.i = icmp eq i16 %11, %17
  br i1 %cmp.not.i, label %if.then.if.end23.i_crit_edge, label %while.cond.preheader.i

if.then.if.end23.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.i

while.cond.preheader.i:                           ; preds = %if.then
  %bufs.i = getelementptr inbounds %struct.alx_tx_queue, ptr %3, i32 0, i32 4
  %dev.i.i = getelementptr inbounds %struct.alx_tx_queue, ptr %3, i32 0, i32 1
  %count.i = getelementptr inbounds %struct.alx_tx_queue, ptr %3, i32 0, i32 5
  br label %while.body.i

while.body.i:                                     ; preds = %alx_free_txbuf.exit.i.while.body.i_crit_edge, %while.cond.preheader.i
  %budget.078.i = phi i32 [ 128, %while.cond.preheader.i ], [ %budget.1.i, %alx_free_txbuf.exit.i.while.body.i_crit_edge ]
  %total_bytes.076.i = phi i32 [ 0, %while.cond.preheader.i ], [ %total_bytes.1.i, %alx_free_txbuf.exit.i.while.body.i_crit_edge ]
  %sw_read_idx.075.i = phi i16 [ %11, %while.cond.preheader.i ], [ %spec.store.select.i, %alx_free_txbuf.exit.i.while.body.i_crit_edge ]
  %conv679.i = zext i16 %sw_read_idx.075.i to i32
  %18 = ptrtoint ptr %bufs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bufs.i, align 4
  %arrayidx.i = getelementptr %struct.alx_buffer, ptr %19, i32 %conv679.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %while.body.i.if.end.i_crit_edge, label %if.then13.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then13.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len.i, align 4
  %add.i = add i32 %23, %total_bytes.076.i
  %dec.i = add nsw i32 %budget.078.i, -1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then13.i, %while.body.i.if.end.i_crit_edge
  %total_bytes.1.i = phi i32 [ %add.i, %if.then13.i ], [ %total_bytes.076.i, %while.body.i.if.end.i_crit_edge ]
  %budget.1.i = phi i32 [ %dec.i, %if.then13.i ], [ %budget.078.i, %while.body.i.if.end.i_crit_edge ]
  %size.i.i = getelementptr %struct.alx_buffer, ptr %19, i32 %conv679.i, i32 2
  %24 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end.i.i_crit_edge, label %if.then.i.i

if.end.i.if.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i.i, align 4
  %dma.i.i = getelementptr %struct.alx_buffer, ptr %19, i32 %conv679.i, i32 1
  %28 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %27, i32 noundef %29, i32 noundef %25, i32 noundef 1, i32 noundef 0) #13
  %30 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %size.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end.i.if.end.i.i_crit_edge
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 4
  %tobool4.not.i.i = icmp eq ptr %32, null
  br i1 %tobool4.not.i.i, label %if.end.i.i.alx_free_txbuf.exit.i_crit_edge, label %if.then5.i.i

if.end.i.i.alx_free_txbuf.exit.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alx_free_txbuf.exit.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %32, i32 noundef 1) #13
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %arrayidx.i, align 4
  br label %alx_free_txbuf.exit.i

alx_free_txbuf.exit.i:                            ; preds = %if.then5.i.i, %if.end.i.i.alx_free_txbuf.exit.i_crit_edge
  %inc15.i = add i16 %sw_read_idx.075.i, 1
  %34 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc15.i, i16 %35)
  %cmp18.i = icmp eq i16 %inc15.i, %35
  %spec.store.select.i = select i1 %cmp18.i, i16 0, i16 %inc15.i
  call void @__sanitizer_cov_trace_cmp2(i16 %spec.store.select.i, i16 %17)
  %cmp8.not.i = icmp ne i16 %spec.store.select.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget.1.i)
  %cmp10.i = icmp sgt i32 %budget.1.i, 0
  %or.cond.i = select i1 %cmp8.not.i, i1 %cmp10.i, i1 false
  br i1 %or.cond.i, label %alx_free_txbuf.exit.i.while.body.i_crit_edge, label %while.end.i

alx_free_txbuf.exit.i.while.body.i_crit_edge:     ; preds = %alx_free_txbuf.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.end.i:                                      ; preds = %alx_free_txbuf.exit.i
  %36 = ptrtoint ptr %read_idx.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %spec.store.select.i, ptr %read_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %total_bytes.1.i)
  %tobool.not.i65.i = icmp eq i32 %total_bytes.1.i, 0
  br i1 %tobool.not.i65.i, label %while.end.i.if.end23.i_crit_edge, label %if.end.i66.i, !prof !184

while.end.i.if.end23.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.i

if.end.i66.i:                                     ; preds = %while.end.i
  %dql.i.i = getelementptr %struct.netdev_queue, ptr %9, i32 %conv.i.i, i32 15
  tail call void @dql_completed(ptr noundef %dql.i.i, i32 noundef %total_bytes.1.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !201
  %adj_limit.i.i.i = getelementptr %struct.netdev_queue, ptr %9, i32 %conv.i.i, i32 15, i32 1
  %37 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %39 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i.i.i = sub i32 %38, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i, label %if.end.i66.i.if.end23.i_crit_edge, label %if.end14.i.i, !prof !184

if.end.i66.i.if.end23.i_crit_edge:                ; preds = %if.end.i66.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.i

if.end14.i.i:                                     ; preds = %if.end.i66.i
  %state.i.i = getelementptr %struct.netdev_queue, ptr %9, i32 %conv.i.i, i32 13
  %call15.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %state.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end14.i.i.if.end23.i_crit_edge, label %if.then17.i.i

if.end14.i.i.if.end23.i_crit_edge:                ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.i

if.then17.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @netif_schedule_queue(ptr noundef %arrayidx.i.i.i) #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then17.i.i, %if.end14.i.i.if.end23.i_crit_edge, %if.end.i66.i.if.end23.i_crit_edge, %while.end.i.if.end23.i_crit_edge, %if.then.if.end23.i_crit_edge
  %sw_read_idx.1.i = phi i16 [ %11, %if.then.if.end23.i_crit_edge ], [ %spec.store.select.i, %while.end.i.if.end23.i_crit_edge ], [ %spec.store.select.i, %if.end.i66.i.if.end23.i_crit_edge ], [ %spec.store.select.i, %if.end14.i.i.if.end23.i_crit_edge ], [ %spec.store.select.i, %if.then17.i.i ]
  %state.i67.i = getelementptr %struct.netdev_queue, ptr %9, i32 %conv.i.i, i32 13
  %41 = ptrtoint ptr %state.i67.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %state.i67.i, align 4
  %and1.i.i.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end23.i.alx_clean_tx_irq.exit_crit_edge, label %land.lhs.true.i

if.end23.i.alx_clean_tx_irq.exit_crit_edge:       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alx_clean_tx_irq.exit

land.lhs.true.i:                                  ; preds = %if.end23.i
  %43 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr.i.i, align 8
  %state.i68.i = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %state.i68.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %state.i68.i, align 4
  %47 = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i69.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i69.i, label %land.lhs.true28.i, label %land.lhs.true.i.alx_clean_tx_irq.exit_crit_edge

land.lhs.true.i.alx_clean_tx_irq.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alx_clean_tx_irq.exit

land.lhs.true28.i:                                ; preds = %land.lhs.true.i
  %write_idx.i.i = getelementptr inbounds %struct.alx_tx_queue, ptr %3, i32 0, i32 6
  %48 = ptrtoint ptr %write_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %write_idx.i.i, align 2
  %conv.i70.i = zext i16 %49 to i32
  %50 = ptrtoint ptr %read_idx.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %read_idx.i, align 4
  %conv1.i.i = zext i16 %51 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %51, i16 %49)
  %cmp.not.i.i = icmp ugt i16 %51, %49
  br i1 %cmp.not.i.i, label %if.end.i72.i, label %if.then.i71.i

if.then.i71.i:                                    ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #15
  %count.i.i = getelementptr inbounds %struct.alx_tx_queue, ptr %3, i32 0, i32 5
  %52 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %count.i.i, align 4
  %conv3.i.i = zext i16 %53 to i32
  %54 = xor i32 %conv.i70.i, -1
  %add.i.i = add nsw i32 %conv1.i.i, %54
  %sub8.i.i = add nsw i32 %add.i.i, %conv3.i.i
  br label %alx_tpd_avail.exit.i

if.end.i72.i:                                     ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #15
  %55 = xor i32 %conv.i70.i, -1
  %sub14.i.i = add nsw i32 %conv1.i.i, %55
  br label %alx_tpd_avail.exit.i

alx_tpd_avail.exit.i:                             ; preds = %if.end.i72.i, %if.then.i71.i
  %retval.0.i.i = phi i32 [ %sub8.i.i, %if.then.i71.i ], [ %sub14.i.i, %if.end.i72.i ]
  %count30.i = getelementptr inbounds %struct.alx_tx_queue, ptr %3, i32 0, i32 5
  %56 = ptrtoint ptr %count30.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %count30.i, align 4
  %58 = lshr i16 %57, 2
  %div.i = zext i16 %58 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %div.i)
  %cmp32.i = icmp sgt i32 %retval.0.i.i, %div.i
  br i1 %cmp32.i, label %if.then34.i, label %alx_tpd_avail.exit.i.alx_clean_tx_irq.exit_crit_edge

alx_tpd_avail.exit.i.alx_clean_tx_irq.exit_crit_edge: ; preds = %alx_tpd_avail.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alx_clean_tx_irq.exit

if.then34.i:                                      ; preds = %alx_tpd_avail.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i.i) #13
  br label %alx_clean_tx_irq.exit

alx_clean_tx_irq.exit:                            ; preds = %if.then34.i, %alx_tpd_avail.exit.i.alx_clean_tx_irq.exit_crit_edge, %land.lhs.true.i.alx_clean_tx_irq.exit_crit_edge, %if.end23.i.alx_clean_tx_irq.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp2(i16 %sw_read_idx.1.i, i16 %17)
  %cmp38.i = icmp ne i16 %sw_read_idx.1.i, %17
  br label %if.end

if.end:                                           ; preds = %alx_clean_tx_irq.exit, %entry.if.end_crit_edge
  %tx_complete.0.off0 = phi i1 [ %cmp38.i, %alx_clean_tx_irq.exit ], [ false, %entry.if.end_crit_edge ]
  %rxq = getelementptr inbounds %struct.alx_napi, ptr %napi, i32 0, i32 2
  %59 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rxq, align 4
  %tobool4.not = icmp eq ptr %60, null
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then5:                                         ; preds = %if.end
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %add.ptr.i.i50 = getelementptr i8, ptr %62, i32 2304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp134.i = icmp sgt i32 %budget, 0
  br i1 %cmp134.i, label %while.body.lr.ph.i, label %if.then5.if.end8_crit_edge

if.then5.if.end8_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

while.body.lr.ph.i:                               ; preds = %if.then5
  %rrd1.i = getelementptr inbounds %struct.alx_rx_queue, ptr %60, i32 0, i32 3
  %rrd_read_idx.i = getelementptr inbounds %struct.alx_rx_queue, ptr %60, i32 0, i32 11
  %read_idx.i51 = getelementptr inbounds %struct.alx_rx_queue, ptr %60, i32 0, i32 10
  %bufs.i52 = getelementptr inbounds %struct.alx_rx_queue, ptr %60, i32 0, i32 7
  %dev.i = getelementptr inbounds %struct.alx_rx_queue, ptr %60, i32 0, i32 1
  %np.i = getelementptr inbounds %struct.alx_rx_queue, ptr %60, i32 0, i32 2
  %count.i53 = getelementptr inbounds %struct.alx_rx_queue, ptr %60, i32 0, i32 8
  br label %while.body.i55

while.body.i55:                                   ; preds = %if.end77.i.while.body.i55_crit_edge, %while.body.lr.ph.i
  %work.0136.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %work.1.i, %if.end77.i.while.body.i55_crit_edge ]
  %rfd_cleaned.0135.i = phi i16 [ 0, %while.body.lr.ph.i ], [ %rfd_cleaned.1.i, %if.end77.i.while.body.i55_crit_edge ]
  %63 = ptrtoint ptr %rrd1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rrd1.i, align 4
  %65 = ptrtoint ptr %rrd_read_idx.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %rrd_read_idx.i, align 2
  %idxprom.i = zext i16 %66 to i32
  %word3.i = getelementptr %struct.alx_rrd, ptr %64, i32 %idxprom.i, i32 3
  %67 = ptrtoint ptr %word3.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %word3.i, align 1
  %and.i = and i32 %68, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i54 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i54, label %while.body.i55.while.end.i62_crit_edge, label %if.end.i59

while.body.i55.while.end.i62_crit_edge:           ; preds = %while.body.i55
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i62

if.end.i59:                                       ; preds = %while.body.i55
  %arrayidx.i56 = getelementptr %struct.alx_rrd, ptr %64, i32 %idxprom.i
  %and3.i = and i32 %68, -129
  %69 = ptrtoint ptr %word3.i to i32
  call void @__asan_storeN_noabort(i32 %69, i32 4)
  store i32 %and3.i, ptr %word3.i, align 1
  %70 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %arrayidx.i56, align 1
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #13
  %shr.i = lshr i32 %72, 20
  %73 = ptrtoint ptr %read_idx.i51 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %read_idx.i51, align 4
  %conv.i57 = zext i16 %74 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %conv.i57)
  %cmp5.not.i = icmp eq i32 %shr.i, %conv.i57
  %75 = and i32 %72, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %75)
  %cmp10.not.i = icmp eq i32 %75, 65536
  %or.cond.i58 = and i1 %cmp5.not.i, %cmp10.not.i
  br i1 %or.cond.i58, label %if.end13.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #15
  %reset_wk.i.i = getelementptr i8, ptr %62, i32 3012
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %76 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %76, ptr noundef %reset_wk.i.i) #13
  br label %if.end8

if.end13.i:                                       ; preds = %if.end.i59
  %77 = ptrtoint ptr %bufs.i52 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bufs.i52, align 4
  %arrayidx16.i = getelementptr %struct.alx_buffer, ptr %78, i32 %shr.i
  %79 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev.i, align 4
  %dma.i = getelementptr %struct.alx_buffer, ptr %78, i32 %shr.i, i32 1
  %81 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %dma.i, align 4
  %size.i = getelementptr %struct.alx_buffer, ptr %78, i32 %shr.i, i32 2
  %83 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %size.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %80, i32 noundef %82, i32 noundef %84, i32 noundef 2, i32 noundef 0) #13
  %85 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %size.i, align 4
  %86 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx16.i, align 4
  store ptr null, ptr %arrayidx16.i, align 4
  %88 = ptrtoint ptr %word3.i to i32
  call void @__asan_loadN_noabort(i32 %88, i32 4)
  %89 = load i32, ptr %word3.i, align 1
  %90 = and i32 %89, 4160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %if.end29.i, label %if.then27.i

if.then27.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  %92 = ptrtoint ptr %word3.i to i32
  call void @__asan_storeN_noabort(i32 %92, i32 4)
  store i32 0, ptr %word3.i, align 1
  tail call void @__dev_kfree_skb_any(ptr noundef %87, i32 noundef 1) #13
  br label %next_pkt.i

if.end29.i:                                       ; preds = %if.end13.i
  %93 = and i32 %89, -12648448
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #13
  %conv33.i = add nuw nsw i32 %94, 65532
  %conv34.i = and i32 %conv33.i, 65535
  %call35.i = tail call ptr @skb_put(ptr noundef %87, i32 noundef %conv34.i) #13
  %95 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %60, align 4
  %call37.i = tail call zeroext i16 @eth_type_trans(ptr noundef %87, ptr noundef %96) #13
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %87, i32 0, i32 15, i32 0, i32 18
  %97 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %call37.i, ptr %protocol.i, align 8
  %98 = ptrtoint ptr %add.ptr.i.i50 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %add.ptr.i.i50, align 8
  %features.i = getelementptr inbounds %struct.net_device, ptr %99, i32 0, i32 23
  %100 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %features.i, align 16
  %and39.i = and i64 %101, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and39.i)
  %tobool40.not.i = icmp eq i64 %and39.i, 0
  br i1 %tobool40.not.i, label %if.end29.i.if.end47.i_crit_edge, label %land.lhs.true.i60

if.end29.i.if.end47.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47.i

land.lhs.true.i60:                                ; preds = %if.end29.i
  %102 = ptrtoint ptr %word3.i to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %103 = load i32, ptr %word3.i, align 1
  %and42.i = and i32 %103, 12582912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  br i1 %tobool43.not.i, label %if.then44.i, label %land.lhs.true.i60.if.end47.i_crit_edge

land.lhs.true.i60.if.end47.i_crit_edge:           ; preds = %land.lhs.true.i60
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47.i

if.then44.i:                                      ; preds = %land.lhs.true.i60
  %word2.i = getelementptr %struct.alx_rrd, ptr %64, i32 %idxprom.i, i32 2
  %104 = ptrtoint ptr %word2.i to i32
  call void @__asan_loadN_noabort(i32 %104, i32 4)
  %105 = load i32, ptr %word2.i, align 1
  %106 = lshr i32 %105, 8
  %trunc.i = trunc i32 %106 to i8
  %trunc.off.i = add i8 %trunc.i, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %trunc.off.i)
  %switch.i = icmp ult i8 %trunc.off.i, 4
  br i1 %switch.i, label %sw.bb.i, label %if.then44.i.if.end47.i_crit_edge

if.then44.i.if.end47.i_crit_edge:                 ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47.i

sw.bb.i:                                          ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #15
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %87, i32 0, i32 15
  %107 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  %bf.set.i = or i16 %bf.clear.i, 512
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  br label %if.end47.i

if.end47.i:                                       ; preds = %sw.bb.i, %if.then44.i.if.end47.i_crit_edge, %land.lhs.true.i60.if.end47.i_crit_edge, %if.end29.i.if.end47.i_crit_edge
  %108 = ptrtoint ptr %np.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %np.i, align 4
  %call48.i = tail call i32 @napi_gro_receive(ptr noundef %109, ptr noundef %87) #13
  %inc.i = add nsw i32 %work.0136.i, 1
  br label %next_pkt.i

next_pkt.i:                                       ; preds = %if.end47.i, %if.then27.i
  %work.1.i = phi i32 [ %work.0136.i, %if.then27.i ], [ %inc.i, %if.end47.i ]
  %110 = ptrtoint ptr %read_idx.i51 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %read_idx.i51, align 4
  %inc50.i = add i16 %111, 1
  %112 = ptrtoint ptr %count.i53 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %count.i53, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc50.i, i16 %113)
  %cmp53.i = icmp eq i16 %inc50.i, %113
  %spec.store.select.i61 = select i1 %cmp53.i, i16 0, i16 %inc50.i
  %114 = ptrtoint ptr %read_idx.i51 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %spec.store.select.i61, ptr %read_idx.i51, align 4
  %115 = ptrtoint ptr %rrd_read_idx.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %rrd_read_idx.i, align 2
  %inc59.i = add i16 %116, 1
  call void @__sanitizer_cov_trace_cmp2(i16 %inc59.i, i16 %113)
  %cmp63.i = icmp eq i16 %inc59.i, %113
  %spec.store.select130.i = select i1 %cmp63.i, i16 0, i16 %inc59.i
  %117 = ptrtoint ptr %rrd_read_idx.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %spec.store.select130.i, ptr %rrd_read_idx.i, align 2
  %inc68.i = add i16 %rfd_cleaned.0135.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %inc68.i)
  %cmp70.i = icmp ugt i16 %inc68.i, 32
  br i1 %cmp70.i, label %if.then72.i, label %next_pkt.i.if.end77.i_crit_edge

next_pkt.i.if.end77.i_crit_edge:                  ; preds = %next_pkt.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77.i

if.then72.i:                                      ; preds = %next_pkt.i
  call void @__sanitizer_cov_trace_pc() #15
  %call73.i = tail call fastcc i32 @alx_refill_rx_ring(ptr noundef %add.ptr.i.i50, i32 noundef 2592) #13
  %118 = trunc i32 %call73.i to i16
  %conv76.i = sub i16 %inc68.i, %118
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.then72.i, %next_pkt.i.if.end77.i_crit_edge
  %rfd_cleaned.1.i = phi i16 [ %conv76.i, %if.then72.i ], [ %inc68.i, %next_pkt.i.if.end77.i_crit_edge ]
  %cmp.i = icmp slt i32 %work.1.i, %budget
  br i1 %cmp.i, label %if.end77.i.while.body.i55_crit_edge, label %if.end77.i.while.end.i62_crit_edge

if.end77.i.while.end.i62_crit_edge:               ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i62

if.end77.i.while.body.i55_crit_edge:              ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i55

while.end.i62:                                    ; preds = %if.end77.i.while.end.i62_crit_edge, %while.body.i55.while.end.i62_crit_edge
  %rfd_cleaned.0.lcssa.i = phi i16 [ %rfd_cleaned.1.i, %if.end77.i.while.end.i62_crit_edge ], [ %rfd_cleaned.0135.i, %while.body.i55.while.end.i62_crit_edge ]
  %work.0.lcssa.i = phi i32 [ %work.1.i, %if.end77.i.while.end.i62_crit_edge ], [ %work.0136.i, %while.body.i55.while.end.i62_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rfd_cleaned.0.lcssa.i)
  %tobool78.not.i = icmp eq i16 %rfd_cleaned.0.lcssa.i, 0
  br i1 %tobool78.not.i, label %while.end.i62.if.end8_crit_edge, label %if.then79.i

while.end.i62.if.end8_crit_edge:                  ; preds = %while.end.i62
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then79.i:                                      ; preds = %while.end.i62
  call void @__sanitizer_cov_trace_pc() #15
  %call80.i = tail call fastcc i32 @alx_refill_rx_ring(ptr noundef %add.ptr.i.i50, i32 noundef 2592) #13
  br label %if.end8

if.end8:                                          ; preds = %if.then79.i, %while.end.i62.if.end8_crit_edge, %if.then12.i, %if.then5.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %work.0 = phi i32 [ 0, %if.end.if.end8_crit_edge ], [ %work.0.lcssa.i, %while.end.i62.if.end8_crit_edge ], [ %work.0.lcssa.i, %if.then79.i ], [ %work.0136.i, %if.then12.i ], [ 0, %if.then5.if.end8_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %work.0, i32 %budget)
  %cmp = icmp eq i32 %work.0, %budget
  %or.cond = select i1 %tx_complete.0.off0, i1 true, i1 %cmp
  br i1 %or.cond, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %call13 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %work.0) #13
  %119 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %hw2, align 8
  %msix_enabled = getelementptr inbounds %struct.pci_dev, ptr %120, i32 0, i32 49
  %121 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_loadN_noabort(i32 %121, i32 5)
  %bf.load = load i40, ptr %msix_enabled, align 1
  %122 = and i40 %bf.load, 67108864
  %tobool15.not = icmp eq i40 %122, 0
  br i1 %tobool15.not, label %do.body17, label %if.then16

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %vec_idx = getelementptr inbounds %struct.alx_napi, ptr %napi, i32 0, i32 4
  %123 = ptrtoint ptr %vec_idx to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %vec_idx, align 4
  tail call void @alx_mask_msix(ptr noundef %hw2, i32 noundef %124, i1 noundef zeroext false) #13
  br label %if.end26

do.body17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %irq_lock = getelementptr inbounds %struct.alx_priv, ptr %1, i32 0, i32 8
  %call21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #13
  %int_mask = getelementptr inbounds %struct.alx_priv, ptr %1, i32 0, i32 9
  %125 = ptrtoint ptr %int_mask to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %int_mask, align 8
  %or = or i32 %126, 98304
  store i32 %or, ptr %int_mask, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !185
  tail call void @arm_heavy_mb() #13
  %127 = tail call i32 @llvm.bswap.i32(i32 %or) #13
  %hw_addr.i = getelementptr inbounds %struct.alx_priv, ptr %1, i32 0, i32 1, i32 1
  %128 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %129, i32 5636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %127) #13, !srcloc !186
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call21) #13
  br label %if.end26

if.end26:                                         ; preds = %do.body17, %if.then16
  %hw_addr.i63 = getelementptr inbounds %struct.alx_priv, ptr %1, i32 0, i32 1, i32 1
  %130 = ptrtoint ptr %hw_addr.i63 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %hw_addr.i63, align 4
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %131) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !198
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ %work.0, %if.end26 ], [ %budget, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @alx_mask_msix(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_completed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_schedule_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alx_refill_rx_ring(ptr nocapture noundef readonly %alx, i32 noundef %gfp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %qnapi = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 4
  %0 = ptrtoint ptr %qnapi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qnapi, align 8
  %rxq1 = getelementptr inbounds %struct.alx_napi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rxq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rxq1, align 4
  %write_idx = getelementptr inbounds %struct.alx_rx_queue, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %write_idx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %write_idx, align 2
  %rx_ringsz = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 11
  %bufs = getelementptr inbounds %struct.alx_rx_queue, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %bufs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bufs, align 4
  %idxprom = zext i16 %5 to i32
  %arrayidx3 = getelementptr %struct.alx_buffer, ptr %7, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx3, align 4
  %tobool.not140 = icmp eq ptr %9, null
  br i1 %tobool.not140, label %land.rhs.lr.ph, label %entry.if.end78_crit_edge

entry.if.end78_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end78

land.rhs.lr.ph:                                   ; preds = %entry
  %10 = ptrtoint ptr %rx_ringsz to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_ringsz, align 8
  %inc = add i16 %5, 1
  %conv = zext i16 %inc to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv)
  %cmp = icmp eq i32 %11, %conv
  %spec.store.select = select i1 %cmp, i16 0, i16 %inc
  %read_idx = getelementptr inbounds %struct.alx_rx_queue, ptr %3, i32 0, i32 10
  %rfd9 = getelementptr inbounds %struct.alx_rx_queue, ptr %3, i32 0, i32 5
  %rxbuf_size = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 12
  %hw = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %cleanup.land.rhs_crit_edge, %land.rhs.lr.ph
  %count.0144 = phi i16 [ 0, %land.rhs.lr.ph ], [ %inc70, %cleanup.land.rhs_crit_edge ]
  %next.0143 = phi i16 [ %spec.store.select, %land.rhs.lr.ph ], [ %spec.store.select87, %cleanup.land.rhs_crit_edge ]
  %cur.0142 = phi i16 [ %5, %land.rhs.lr.ph ], [ %next.0143, %cleanup.land.rhs_crit_edge ]
  %cur_buf.0141 = phi ptr [ %arrayidx3, %land.rhs.lr.ph ], [ %arrayidx69, %cleanup.land.rhs_crit_edge ]
  %conv5 = zext i16 %next.0143 to i32
  %12 = ptrtoint ptr %read_idx to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %read_idx, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %next.0143, i16 %13)
  %cmp7.not = icmp eq i16 %next.0143, %13
  br i1 %cmp7.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %14 = ptrtoint ptr %rfd9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rfd9, align 4
  %idxprom10 = zext i16 %cur.0142 to i32
  %arrayidx11 = getelementptr %struct.alx_rfd, ptr %15, i32 %idxprom10
  %16 = ptrtoint ptr %alx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %alx, align 8
  %18 = ptrtoint ptr %rxbuf_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rxbuf_size, align 4
  %add = add i32 %19, 64
  %call = tail call ptr @__netdev_alloc_skb(ptr noundef %17, i32 noundef %add, i32 noundef %gfp) #13
  %tobool12.not = icmp eq ptr %call, null
  br i1 %tobool12.not, label %while.body.while.end_crit_edge, label %if.end14

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end14:                                         ; preds = %while.body
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %22 = ptrtoint ptr %21 to i32
  %and = and i32 %22, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 4032, i32 %and)
  %cmp15 = icmp eq i32 %and, 4032
  br i1 %cmp15, label %if.then17, label %if.end14.if.end18_crit_edge

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %21, i32 64
  %23 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr.i, ptr %data, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 16
  %24 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %25, i32 64
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end14.if.end18_crit_edge
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 8
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %30 = ptrtoint ptr %rxbuf_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rxbuf_size, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %29) #13
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end18
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !189

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev19) #13
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44, i32 3
  %32 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev19, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %35, %if.end.i.i ], [ %33, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.48, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #13
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @debug_dma_map_single(ptr noundef %dev19, ptr noundef %29, i32 noundef %31) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %36 = load ptr, ptr @mem_map, align 4
  %37 = ptrtoint ptr %29 to i32
  %sub.i = add i32 %37, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i124 = getelementptr %struct.page, ptr %36, i32 %shr.i
  %and.i = and i32 %37, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev19, ptr noundef %add.ptr.i124, i32 noundef %and.i, i32 noundef %31, i32 noundef 2, i32 noundef 0) #13
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %38 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw, align 8
  %dev25 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev25, i32 noundef %retval.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.while.end.sink.split_crit_edge, label %if.end29

dma_map_single_attrs.exit.while.end.sink.split_crit_edge: ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.sink.split

if.end29:                                         ; preds = %dma_map_single_attrs.exit
  %and30 = and i32 %retval.0.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %cleanup, label %do.end, !prof !189

do.end:                                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 115, i32 noundef 9, ptr noundef null) #13
  br label %while.end.sink.split

cleanup:                                          ; preds = %if.end29
  %40 = ptrtoint ptr %cur_buf.0141 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call, ptr %cur_buf.0141, align 4
  %41 = ptrtoint ptr %rxbuf_size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rxbuf_size, align 4
  %size = getelementptr inbounds %struct.alx_buffer, ptr %cur_buf.0141, i32 0, i32 2
  %43 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %size, align 4
  %dma58 = getelementptr inbounds %struct.alx_buffer, ptr %cur_buf.0141, i32 0, i32 1
  %44 = ptrtoint ptr %dma58 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %retval.0.i, ptr %dma58, align 4
  %conv59 = zext i32 %retval.0.i to i64
  %45 = tail call i64 @llvm.bswap.i64(i64 %conv59)
  %46 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 8)
  store i64 %45, ptr %arrayidx11, align 1
  %inc60 = add i16 %next.0143, 1
  %conv61 = zext i16 %inc60 to i32
  %47 = ptrtoint ptr %rx_ringsz to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rx_ringsz, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %conv61)
  %cmp63 = icmp eq i32 %48, %conv61
  %spec.store.select87 = select i1 %cmp63, i16 0, i16 %inc60
  %49 = ptrtoint ptr %bufs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bufs, align 4
  %arrayidx69 = getelementptr %struct.alx_buffer, ptr %50, i32 %conv5
  %inc70 = add i16 %count.0144, 1
  %51 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx69, align 4
  %tobool.not = icmp eq ptr %52, null
  br i1 %tobool.not, label %cleanup.land.rhs_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

cleanup.land.rhs_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

while.end.sink.split:                             ; preds = %do.end, %dma_map_single_attrs.exit.while.end.sink.split_crit_edge
  tail call void @consume_skb(ptr noundef nonnull %call) #13
  br label %while.end

while.end:                                        ; preds = %while.end.sink.split, %cleanup.while.end_crit_edge, %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %cur.0138 = phi i16 [ %cur.0142, %while.end.sink.split ], [ %cur.0142, %land.rhs.while.end_crit_edge ], [ %next.0143, %cleanup.while.end_crit_edge ], [ %cur.0142, %while.body.while.end_crit_edge ]
  %count.0135 = phi i16 [ %count.0144, %while.end.sink.split ], [ %count.0144, %land.rhs.while.end_crit_edge ], [ %inc70, %cleanup.while.end_crit_edge ], [ %count.0144, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %count.0135)
  %tobool71.not = icmp eq i16 %count.0135, 0
  br i1 %tobool71.not, label %while.end.if.end78_crit_edge, label %do.body73

while.end.if.end78_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end78

do.body73:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !202
  tail call void @arm_heavy_mb() #13
  %53 = ptrtoint ptr %write_idx to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %cur.0138, ptr %write_idx, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !194
  tail call void @arm_heavy_mb() #13
  %54 = tail call i16 @llvm.bswap.i16(i16 %cur.0138) #13
  %hw_addr.i = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 1, i32 1
  %55 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i125 = getelementptr i8, ptr %56, i32 5600
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i125, i16 %54) #13, !srcloc !195
  br label %if.end78

if.end78:                                         ; preds = %do.body73, %while.end.if.end78_crit_edge, %entry.if.end78_crit_edge
  %count.0135158 = phi i16 [ %count.0135, %do.body73 ], [ 0, %while.end.if.end78_crit_edge ], [ 0, %entry.if.end78_crit_edge ]
  %conv79 = zext i16 %count.0135158 to i32
  ret i32 %conv79
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @alx_configure_basic(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @alx_disable_rss(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__alx_set_rx_mode(ptr noundef %netdev) unnamed_addr #2 align 64 {
entry:
  %mc_hash = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mc_hash) #13
  %0 = ptrtoint ptr %mc_hash to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %mc_hash, align 8
  %flags = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 8
  %and = and i32 %2, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %mc = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66
  %3 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %3)
  %ha.046 = load ptr, ptr %mc, align 4
  %cmp.not47 = icmp eq ptr %ha.046, %mc
  br i1 %cmp.not47, label %if.then.for.end_crit_edge, label %if.then.alx_add_mc_addr.exit_crit_edge

if.then.alx_add_mc_addr.exit_crit_edge:           ; preds = %if.then
  br label %alx_add_mc_addr.exit

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

alx_add_mc_addr.exit:                             ; preds = %alx_add_mc_addr.exit.alx_add_mc_addr.exit_crit_edge, %if.then.alx_add_mc_addr.exit_crit_edge
  %ha.048 = phi ptr [ %ha.0, %alx_add_mc_addr.exit.alx_add_mc_addr.exit_crit_edge ], [ %ha.046, %if.then.alx_add_mc_addr.exit_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.048, i32 0, i32 2
  %call.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #20
  %4 = and i32 %call.i, 255
  %arrayidx.i.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %conv2.i.i.i = zext i8 %6 to i32
  %shr22.i = lshr i32 %conv2.i.i.i, 7
  %shr24.i = lshr i32 %conv2.i.i.i, 2
  %and25.i = and i32 %shr24.i, 31
  %shl26.i = shl nuw i32 1, %and25.i
  %arrayidx.i = getelementptr i32, ptr %mc_hash, i32 %shr22.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %or27.i = or i32 %shl26.i, %8
  store i32 %or27.i, ptr %arrayidx.i, align 4
  %9 = ptrtoint ptr %ha.048 to i32
  call void @__asan_load4_noabort(i32 %9)
  %ha.0 = load ptr, ptr %ha.048, align 4
  %cmp.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp.not, label %alx_add_mc_addr.exit.for.end_crit_edge, label %alx_add_mc_addr.exit.alx_add_mc_addr.exit_crit_edge

alx_add_mc_addr.exit.alx_add_mc_addr.exit_crit_edge: ; preds = %alx_add_mc_addr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %alx_add_mc_addr.exit

alx_add_mc_addr.exit.for.end_crit_edge:           ; preds = %alx_add_mc_addr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %alx_add_mc_addr.exit.for.end_crit_edge, %if.then.for.end_crit_edge
  %10 = ptrtoint ptr %mc_hash to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mc_hash, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !185
  tail call void @arm_heavy_mb() #13
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #13
  %hw_addr.i = getelementptr i8, ptr %netdev, i32 2316
  %13 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i41 = getelementptr i8, ptr %14, i32 5264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 %12) #13, !srcloc !186
  %arrayidx11 = getelementptr inbounds [2 x i32], ptr %mc_hash, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx11, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !185
  tail call void @arm_heavy_mb() #13
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #13
  %18 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i43 = getelementptr i8, ptr %19, i32 5268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 %17) #13, !srcloc !186
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  %rx_ctrl = getelementptr i8, ptr %netdev, i32 2344
  %20 = ptrtoint ptr %rx_ctrl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_ctrl, align 8
  %and12 = and i32 %21, -33587201
  store i32 %and12, ptr %rx_ctrl, align 8
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 8
  %and14 = and i32 %23, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end.if.end18_crit_edge, label %if.then16

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %or = or i32 %and12, 32768
  %24 = ptrtoint ptr %rx_ctrl to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or, ptr %rx_ctrl, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end.if.end18_crit_edge
  %and20 = and i32 %23, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end18.if.end25_crit_edge, label %if.then22

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %rx_ctrl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_ctrl, align 8
  %or24 = or i32 %26, 33554432
  store i32 %or24, ptr %rx_ctrl, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end18.if.end25_crit_edge
  %27 = ptrtoint ptr %rx_ctrl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_ctrl, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !185
  tail call void @arm_heavy_mb() #13
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #13
  %hw_addr.i44 = getelementptr i8, ptr %netdev, i32 2316
  %30 = ptrtoint ptr %hw_addr.i44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw_addr.i44, align 4
  %add.ptr.i45 = getelementptr i8, ptr %31, i32 5248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %29) #13, !srcloc !186
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mc_hash) #13
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alx_intr_msi(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i = getelementptr inbounds %struct.alx_priv, ptr %data, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 5632
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !196
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !197
  tail call fastcc void @alx_intr_handle(ptr noundef %data, i32 noundef %3)
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alx_intr_legacy(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i = getelementptr inbounds %struct.alx_priv, ptr %data, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 5632
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !196
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !197
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not = icmp sgt i32 %3, -1
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %int_mask = getelementptr inbounds %struct.alx_priv, ptr %data, i32 0, i32 9
  %4 = ptrtoint ptr %int_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %int_mask, align 8
  %and2 = and i32 %5, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @alx_intr_handle(ptr noundef %data, i32 noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alx_intr_msix_misc(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.alx_priv, ptr %data, i32 0, i32 1
  tail call void @alx_mask_msix(ptr noundef %hw1, i32 noundef 0, i1 noundef zeroext true) #13
  %hw_addr.i = getelementptr inbounds %struct.alx_priv, ptr %data, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 5632
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !197
  %int_mask = getelementptr inbounds %struct.alx_priv, ptr %data, i32 0, i32 9
  %3 = ptrtoint ptr %int_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %int_mask, align 8
  %5 = and i32 %2, 528478343
  %6 = call i32 @llvm.bswap.i32(i32 %5)
  %and2 = and i32 %6, %4
  %call3 = tail call fastcc zeroext i1 @alx_intr_handle_misc(ptr noundef %data, i32 noundef %and2)
  br i1 %call3, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !185
  tail call void @arm_heavy_mb() #13
  %7 = tail call i32 @llvm.bswap.i32(i32 %and2) #13
  %8 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %9, i32 5632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %7) #13, !srcloc !186
  tail call void @alx_mask_msix(ptr noundef %hw1, i32 noundef 0, i1 noundef zeroext false) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alx_intr_msix_ring(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %alx = getelementptr inbounds %struct.alx_napi, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %alx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alx, align 8
  %hw1 = getelementptr inbounds %struct.alx_priv, ptr %1, i32 0, i32 1
  %vec_idx = getelementptr inbounds %struct.alx_napi, ptr %data, i32 0, i32 4
  %2 = ptrtoint ptr %vec_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vec_idx, align 4
  tail call void @alx_mask_msix(ptr noundef %hw1, i32 noundef %3, i1 noundef zeroext true) #13
  %vec_mask = getelementptr inbounds %struct.alx_napi, ptr %data, i32 0, i32 5
  %4 = ptrtoint ptr %vec_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vec_mask, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !185
  tail call void @arm_heavy_mb() #13
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #13
  %hw_addr.i = getelementptr inbounds %struct.alx_priv, ptr %1, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 5632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #13, !srcloc !186
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %data) #13
  br i1 %call.i, label %if.then.i, label %entry.napi_schedule.exit_crit_edge

entry.napi_schedule.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %napi_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__napi_schedule(ptr noundef %data) #13
  br label %napi_schedule.exit

napi_schedule.exit:                               ; preds = %if.then.i, %entry.napi_schedule.exit_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @alx_intr_handle_misc(ptr noundef %alx, i32 noundef %intr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %intr, 67110400
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end5, label %do.body

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 15
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %msg_enable, align 8
  %2 = and i16 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool3.not = icmp eq i16 %2, 0
  br i1 %tobool3.not, label %do.body.do.end_crit_edge, label %if.then4

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %alx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %alx, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %4, ptr noundef nonnull @.str.56, i32 noundef %intr) #16
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body.do.end_crit_edge
  %reset_wk.i = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 14
  br label %cleanup.sink.split

if.end5:                                          ; preds = %entry
  %and6 = and i32 %intr, 280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end5.if.end10_crit_edge, label %if.then8

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %alx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %alx, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %6, ptr noundef nonnull @.str.57, i32 noundef %intr) #16
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end5.if.end10_crit_edge
  %and11 = and i32 %intr, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.then13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %int_mask = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 9
  %7 = ptrtoint ptr %int_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %int_mask, align 8
  %and14 = and i32 %8, -4097
  store i32 %and14, ptr %int_mask, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !185
  tail call void @arm_heavy_mb() #13
  %9 = tail call i32 @llvm.bswap.i32(i32 %and14) #13
  %hw_addr.i = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 5636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #13, !srcloc !186
  %link_check_wk.i = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then13, %do.end
  %link_check_wk.i.sink = phi ptr [ %link_check_wk.i, %if.then13 ], [ %reset_wk.i, %do.end ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %12 = load ptr, ptr @system_wq, align 4
  %call.i.i.i28 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %link_check_wk.i.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end10.cleanup_crit_edge
  %13 = xor i1 %tobool.not, true
  ret i1 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alx_intr_handle(ptr noundef %alx, i32 noundef %intr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_lock = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %irq_lock) #13
  %or = or i32 %intr, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !185
  tail call void @arm_heavy_mb() #13
  %0 = tail call i32 @llvm.bswap.i32(i32 %or) #13
  %hw_addr.i = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 5632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #13, !srcloc !186
  %int_mask = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 9
  %3 = ptrtoint ptr %int_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %int_mask, align 8
  %and = and i32 %4, %intr
  %call = tail call fastcc zeroext i1 @alx_intr_handle_misc(ptr noundef %alx, i32 noundef %and)
  br i1 %call, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %entry
  %and2 = and i32 %and, 98304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then3:                                         ; preds = %if.end
  %qnapi = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 4
  %5 = ptrtoint ptr %qnapi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %qnapi, align 8
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %6) #13
  br i1 %call.i, label %if.then.i, label %if.then3.napi_schedule.exit_crit_edge

if.then3.napi_schedule.exit_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %napi_schedule.exit

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__napi_schedule(ptr noundef %6) #13
  br label %napi_schedule.exit

napi_schedule.exit:                               ; preds = %if.then.i, %if.then3.napi_schedule.exit_crit_edge
  %7 = ptrtoint ptr %int_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %int_mask, align 8
  %and5 = and i32 %8, -2014281953
  store i32 %and5, ptr %int_mask, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !185
  tail call void @arm_heavy_mb() #13
  %9 = tail call i32 @llvm.bswap.i32(i32 %and5) #13
  %10 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i2 = getelementptr i8, ptr %11, i32 5636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 %9) #13, !srcloc !186
  br label %if.end7

if.end7:                                          ; preds = %napi_schedule.exit, %if.end.if.end7_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !185
  tail call void @arm_heavy_mb() #13
  %12 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %13, i32 5632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 0) #13, !srcloc !186
  br label %out

out:                                              ; preds = %if.end7, %entry.out_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %irq_lock) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alx_free_buffers(ptr nocapture noundef readonly %alx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %num_txq = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 5
  %0 = ptrtoint ptr %num_txq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_txq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp42 = icmp sgt i32 %1, 0
  br i1 %cmp42, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.043 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.alx_priv, ptr %alx, i32 0, i32 4, i32 %i.043
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %txq = getelementptr inbounds %struct.alx_napi, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %txq, align 8
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %bufs.i = getelementptr inbounds %struct.alx_tx_queue, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %bufs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bufs.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then.for.inc_crit_edge, label %for.cond.preheader.i

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.cond.preheader.i:                             ; preds = %if.then
  %count.i = getelementptr inbounds %struct.alx_tx_queue, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp20.not.i = icmp eq i16 %9, 0
  br i1 %cmp20.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %dev.i.i = getelementptr inbounds %struct.alx_tx_queue, ptr %5, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %alx_free_txbuf.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.021.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %alx_free_txbuf.exit.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %bufs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bufs.i, align 4
  %arrayidx.i.i = getelementptr %struct.alx_buffer, ptr %11, i32 %i.021.i
  %size.i.i = getelementptr %struct.alx_buffer, ptr %11, i32 %i.021.i, i32 2
  %12 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i, label %for.body.i.if.end.i.i_crit_edge, label %if.then.i.i

for.body.i.if.end.i.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i, align 4
  %dma.i.i = getelementptr %struct.alx_buffer, ptr %11, i32 %i.021.i, i32 1
  %16 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %15, i32 noundef %17, i32 noundef %13, i32 noundef 1, i32 noundef 0) #13
  %18 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %size.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body.i.if.end.i.i_crit_edge
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %20, null
  br i1 %tobool4.not.i.i, label %if.end.i.i.alx_free_txbuf.exit.i_crit_edge, label %if.then5.i.i

if.end.i.i.alx_free_txbuf.exit.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alx_free_txbuf.exit.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %20, i32 noundef 1) #13
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %arrayidx.i.i, align 4
  br label %alx_free_txbuf.exit.i

alx_free_txbuf.exit.i:                            ; preds = %if.then5.i.i, %if.end.i.i.alx_free_txbuf.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %22 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %count.i, align 4
  %conv.i = zext i16 %23 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %alx_free_txbuf.exit.i.for.body.i_crit_edge, label %for.end.loopexit.i

alx_free_txbuf.exit.i.for.body.i_crit_edge:       ; preds = %alx_free_txbuf.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.loopexit.i:                               ; preds = %alx_free_txbuf.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.le = zext i16 %23 to i32
  %phi.bo.i = mul nuw nsw i32 %conv.i.le, 12
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.loopexit.i, %for.cond.preheader.i.for.end.i_crit_edge
  %.lcssa.i = phi i32 [ %phi.bo.i, %for.end.loopexit.i ], [ 0, %for.cond.preheader.i.for.end.i_crit_edge ]
  %24 = ptrtoint ptr %bufs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bufs.i, align 4
  %26 = call ptr @memset(ptr %25, i32 0, i32 %.lcssa.i)
  %tpd.i = getelementptr inbounds %struct.alx_tx_queue, ptr %5, i32 0, i32 2
  %27 = ptrtoint ptr %tpd.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tpd.i, align 4
  %29 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %count.i, align 4
  %conv6.i = zext i16 %30 to i32
  %mul7.i = shl nuw nsw i32 %conv6.i, 4
  %31 = call ptr @memset(ptr %28, i32 0, i32 %mul7.i)
  %write_idx.i = getelementptr inbounds %struct.alx_tx_queue, ptr %5, i32 0, i32 6
  %32 = ptrtoint ptr %write_idx.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %write_idx.i, align 2
  %read_idx.i = getelementptr inbounds %struct.alx_tx_queue, ptr %5, i32 0, i32 7
  %33 = ptrtoint ptr %read_idx.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %read_idx.i, align 4
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %5, align 4
  %queue_idx.i.i = getelementptr inbounds %struct.alx_tx_queue, ptr %5, i32 0, i32 8
  %36 = ptrtoint ptr %queue_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %queue_idx.i.i, align 2
  %conv.i.i = zext i16 %37 to i32
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 103
  %38 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %39, i32 %conv.i.i, i32 13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i) #13
  %dql.i.i = getelementptr %struct.netdev_queue, ptr %39, i32 %conv.i.i, i32 15
  tail call void @dql_reset(ptr noundef %dql.i.i) #13
  br label %for.inc

for.inc:                                          ; preds = %for.end.i, %if.then.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.043, 1
  %40 = ptrtoint ptr %num_txq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_txq, align 8
  %cmp = icmp slt i32 %inc, %41
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %qnapi7 = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 4
  %42 = ptrtoint ptr %qnapi7 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %qnapi7, align 8
  %tobool9.not = icmp eq ptr %43, null
  br i1 %tobool9.not, label %for.end.if.end18_crit_edge, label %land.lhs.true10

for.end.if.end18_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

land.lhs.true10:                                  ; preds = %for.end
  %rxq = getelementptr inbounds %struct.alx_napi, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rxq, align 4
  %tobool13.not = icmp eq ptr %45, null
  br i1 %tobool13.not, label %land.lhs.true10.if.end18_crit_edge, label %if.then14

land.lhs.true10.if.end18_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then14:                                        ; preds = %land.lhs.true10
  %bufs.i32 = getelementptr inbounds %struct.alx_rx_queue, ptr %45, i32 0, i32 7
  %46 = ptrtoint ptr %bufs.i32 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bufs.i32, align 4
  %tobool.not.i33 = icmp eq ptr %47, null
  br i1 %tobool.not.i33, label %if.then14.if.end18_crit_edge, label %for.cond.preheader.i35

if.then14.if.end18_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

for.cond.preheader.i35:                           ; preds = %if.then14
  %count.i34 = getelementptr inbounds %struct.alx_rx_queue, ptr %45, i32 0, i32 8
  %48 = ptrtoint ptr %count.i34 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %count.i34, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %cmp27.not.i = icmp eq i16 %49, 0
  br i1 %cmp27.not.i, label %for.cond.preheader.i35.for.end.i41_crit_edge, label %for.body.lr.ph.i36

for.cond.preheader.i35.for.end.i41_crit_edge:     ; preds = %for.cond.preheader.i35
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i41

for.body.lr.ph.i36:                               ; preds = %for.cond.preheader.i35
  %dev.i = getelementptr inbounds %struct.alx_rx_queue, ptr %45, i32 0, i32 1
  br label %for.body.i37

for.body.i37:                                     ; preds = %for.inc.i.for.body.i37_crit_edge, %for.body.lr.ph.i36
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i36 ], [ %indvars.iv.next.i, %for.inc.i.for.body.i37_crit_edge ]
  %50 = ptrtoint ptr %bufs.i32 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bufs.i32, align 4
  %add.ptr.i = getelementptr %struct.alx_buffer, ptr %51, i32 %indvars.iv.i
  %52 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %add.ptr.i, align 4
  %tobool5.not.i = icmp eq ptr %53, null
  br i1 %tobool5.not.i, label %for.body.i37.for.inc.i_crit_edge, label %if.then6.i

for.body.i37.for.inc.i_crit_edge:                 ; preds = %for.body.i37
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then6.i:                                       ; preds = %for.body.i37
  call void @__sanitizer_cov_trace_pc() #15
  %54 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i, align 4
  %dma.i = getelementptr %struct.alx_buffer, ptr %51, i32 %indvars.iv.i, i32 1
  %56 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dma.i, align 4
  %size.i = getelementptr %struct.alx_buffer, ptr %51, i32 %indvars.iv.i, i32 2
  %58 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %size.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %55, i32 noundef %57, i32 noundef %59, i32 noundef 2, i32 noundef 0) #13
  %60 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %add.ptr.i, align 4
  tail call void @consume_skb(ptr noundef %61) #13
  %62 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %add.ptr.i, align 4
  %63 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %size.i, align 4
  %64 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %dma.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %for.body.i37.for.inc.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %65 = ptrtoint ptr %count.i34 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %count.i34, align 4
  %67 = zext i16 %66 to i32
  %cmp.i38 = icmp ult i32 %indvars.iv.next.i, %67
  br i1 %cmp.i38, label %for.inc.i.for.body.i37_crit_edge, label %for.inc.i.for.end.i41_crit_edge

for.inc.i.for.end.i41_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i41

for.inc.i.for.body.i37_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i37

for.end.i41:                                      ; preds = %for.inc.i.for.end.i41_crit_edge, %for.cond.preheader.i35.for.end.i41_crit_edge
  %write_idx.i39 = getelementptr inbounds %struct.alx_rx_queue, ptr %45, i32 0, i32 9
  %68 = ptrtoint ptr %write_idx.i39 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 0, ptr %write_idx.i39, align 2
  %read_idx.i40 = getelementptr inbounds %struct.alx_rx_queue, ptr %45, i32 0, i32 10
  %69 = ptrtoint ptr %read_idx.i40 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 0, ptr %read_idx.i40, align 4
  %rrd_read_idx.i = getelementptr inbounds %struct.alx_rx_queue, ptr %45, i32 0, i32 11
  %70 = ptrtoint ptr %rrd_read_idx.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 0, ptr %rrd_read_idx.i, align 2
  br label %if.end18

if.end18:                                         ; preds = %for.end.i41, %if.then14.if.end18_crit_edge, %land.lhs.true10.if.end18_crit_edge, %for.end.if.end18_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__alx_stop(ptr noundef %alx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 17, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !184

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1260, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %hw.i = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 1
  %1 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw.i, align 8
  %call.i33 = tail call i32 @pci_irq_vector(ptr noundef %2, i32 noundef 0) #13
  %call2.i = tail call ptr @free_irq(i32 noundef %call.i33, ptr noundef %alx) #13
  %3 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw.i, align 8
  %msix_enabled.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 49
  %5 = ptrtoint ptr %msix_enabled.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 5)
  %bf.load.i = load i40, ptr %msix_enabled.i, align 1
  %6 = and i40 %bf.load.i, 67108864
  %tobool.not.i = icmp eq i40 %6, 0
  br i1 %tobool.not.i, label %if.end.alx_free_irq.exit_crit_edge, label %for.cond.preheader.i

if.end.alx_free_irq.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %alx_free_irq.exit

for.cond.preheader.i:                             ; preds = %if.end
  %num_napi.i = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 7
  %7 = ptrtoint ptr %num_napi.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_napi.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp16.i = icmp sgt i32 %8, 0
  br i1 %cmp16.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.alx_free_irq.exit_crit_edge

for.cond.preheader.i.alx_free_irq.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alx_free_irq.exit

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.017.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %i.017.i, 1
  %call5.i = tail call i32 @pci_irq_vector(ptr noundef %2, i32 noundef %add.i) #13
  %arrayidx.i = getelementptr %struct.alx_priv, ptr %alx, i32 0, i32 4, i32 %i.017.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %call6.i = tail call ptr @free_irq(i32 noundef %call5.i, ptr noundef %10) #13
  %11 = ptrtoint ptr %num_napi.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_napi.i, align 8
  %cmp.i = icmp slt i32 %add.i, %12
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.alx_free_irq.exit_crit_edge

for.body.i.alx_free_irq.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alx_free_irq.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

alx_free_irq.exit:                                ; preds = %for.body.i.alx_free_irq.exit_crit_edge, %for.cond.preheader.i.alx_free_irq.exit_crit_edge, %if.end.alx_free_irq.exit_crit_edge
  tail call void @pci_free_irq_vectors(ptr noundef %2) #13
  %link_check_wk = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 13
  %call24 = tail call zeroext i1 @cancel_work_sync(ptr noundef %link_check_wk) #13
  %reset_wk = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 14
  %call25 = tail call zeroext i1 @cancel_work_sync(ptr noundef %reset_wk) #13
  tail call fastcc void @alx_halt(ptr noundef %alx)
  tail call fastcc void @alx_free_rings(ptr noundef %alx)
  %num_napi.i34 = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 7
  %13 = ptrtoint ptr %num_napi.i34 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_napi.i34, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp12.i = icmp sgt i32 %14, 0
  br i1 %cmp12.i, label %alx_free_irq.exit.for.body.i37_crit_edge, label %alx_free_irq.exit.alx_free_napis.exit_crit_edge

alx_free_irq.exit.alx_free_napis.exit_crit_edge:  ; preds = %alx_free_irq.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %alx_free_napis.exit

alx_free_irq.exit.for.body.i37_crit_edge:         ; preds = %alx_free_irq.exit
  br label %for.body.i37

for.body.i37:                                     ; preds = %for.inc.i.for.body.i37_crit_edge, %alx_free_irq.exit.for.body.i37_crit_edge
  %i.013.i = phi i32 [ %inc.i, %for.inc.i.for.body.i37_crit_edge ], [ 0, %alx_free_irq.exit.for.body.i37_crit_edge ]
  %arrayidx.i35 = getelementptr %struct.alx_priv, ptr %alx, i32 0, i32 4, i32 %i.013.i
  %15 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i35, align 4
  %tobool.not.i36 = icmp eq ptr %16, null
  br i1 %tobool.not.i36, label %for.body.i37.for.inc.i_crit_edge, label %if.end.i

for.body.i37.for.inc.i_crit_edge:                 ; preds = %for.body.i37
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i37
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__netif_napi_del(ptr noundef nonnull %16) #13
  tail call void @synchronize_net() #13
  %txq.i = getelementptr inbounds %struct.alx_napi, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %txq.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %txq.i, align 8
  tail call void @kfree(ptr noundef %18) #13
  %rxq.i = getelementptr inbounds %struct.alx_napi, ptr %16, i32 0, i32 2
  %19 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rxq.i, align 4
  tail call void @kfree(ptr noundef %20) #13
  tail call void @kfree(ptr noundef nonnull %16) #13
  %21 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %arrayidx.i35, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i37.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.013.i, 1
  %22 = ptrtoint ptr %num_napi.i34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_napi.i34, align 8
  %cmp.i38 = icmp slt i32 %inc.i, %23
  br i1 %cmp.i38, label %for.inc.i.for.body.i37_crit_edge, label %for.inc.i.alx_free_napis.exit_crit_edge

for.inc.i.alx_free_napis.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alx_free_napis.exit

for.inc.i.for.body.i37_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i37

alx_free_napis.exit:                              ; preds = %for.inc.i.alx_free_napis.exit_crit_edge, %alx_free_irq.exit.alx_free_napis.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alx_halt(ptr noundef %alx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 17, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !184

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1126, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %hw1 = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 1
  tail call fastcc void @alx_netif_stop(ptr noundef %alx)
  %link_speed = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 1, i32 12
  %1 = ptrtoint ptr %link_speed to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %link_speed, align 8
  %duplex = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 1, i32 13
  %2 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %duplex, align 4
  %call25 = tail call i32 @alx_reset_mac(ptr noundef %hw1) #13
  tail call void @alx_enable_aspm(ptr noundef %hw1, i1 noundef zeroext false, i1 noundef zeroext false) #13
  tail call fastcc void @alx_irq_disable(ptr noundef %alx)
  tail call fastcc void @alx_free_buffers(ptr noundef %alx)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alx_netif_stop(ptr nocapture noundef readonly %alx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %alx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alx, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 12
  %5 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %4)
  %cmp.not.i.i = icmp eq i32 %6, %4
  br i1 %cmp.not.i.i, label %entry.netif_trans_update.exit_crit_edge, label %do.body5.i.i

entry.netif_trans_update.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 %4, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %entry.netif_trans_update.exit_crit_edge
  %8 = ptrtoint ptr %alx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %alx, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.then, label %netif_trans_update.exit.if.end_crit_edge

netif_trans_update.exit.if.end_crit_edge:         ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %netif_trans_update.exit
  tail call void @netif_carrier_off(ptr noundef %9) #13
  %13 = ptrtoint ptr %alx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %alx, align 8
  tail call fastcc void @local_bh_disable() #13
  %15 = tail call i32 @llvm.read_register.i32(metadata !172) #13
  %and.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu1.i, align 4
  %tx_global_lock.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %tx_global_lock.i) #13
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 104
  %19 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp13.not.i = icmp eq i32 %20, 0
  br i1 %cmp13.not.i, label %if.then.netif_tx_disable.exit_crit_edge, label %for.body.lr.ph.i

if.then.netif_tx_disable.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %netif_tx_disable.exit

for.body.lr.ph.i:                                 ; preds = %if.then
  %_tx.i.i11 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %21 = ptrtoint ptr %_tx.i.i11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %_tx.i.i11, align 128
  %_xmit_lock.i.i = getelementptr %struct.netdev_queue, ptr %22, i32 %i.014.i, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #13
  %xmit_lock_owner.i.i = getelementptr %struct.netdev_queue, ptr %22, i32 %i.014.i, i32 11
  %23 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 %18, ptr %xmit_lock_owner.i.i, align 4
  %state.i.i = getelementptr %struct.netdev_queue, ptr %22, i32 %i.014.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  %24 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #13
  %inc.i = add nuw i32 %i.014.i, 1
  %25 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %26
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_disable.exit_crit_edge

for.body.i.netif_tx_disable.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %netif_tx_disable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

netif_tx_disable.exit:                            ; preds = %for.body.i.netif_tx_disable.exit_crit_edge, %if.then.netif_tx_disable.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_global_lock.i) #13
  tail call fastcc void @local_bh_enable() #13
  %num_napi = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 7
  %27 = ptrtoint ptr %num_napi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_napi, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp12 = icmp sgt i32 %28, 0
  br i1 %cmp12, label %netif_tx_disable.exit.for.body_crit_edge, label %netif_tx_disable.exit.if.end_crit_edge

netif_tx_disable.exit.if.end_crit_edge:           ; preds = %netif_tx_disable.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

netif_tx_disable.exit.for.body_crit_edge:         ; preds = %netif_tx_disable.exit
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %netif_tx_disable.exit.for.body_crit_edge
  %i.013 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %netif_tx_disable.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.alx_priv, ptr %alx, i32 0, i32 4, i32 %i.013
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  tail call void @napi_disable(ptr noundef %30) #13
  %inc = add nuw nsw i32 %i.013, 1
  %31 = ptrtoint ptr %num_napi to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_napi, align 8
  %cmp = icmp slt i32 %inc, %32
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %netif_tx_disable.exit.if.end_crit_edge, %netif_trans_update.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @alx_enable_aspm(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alx_irq_disable(ptr noundef %alx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !185
  tail call void @arm_heavy_mb() #13
  %hw_addr.i = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 5632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 128) #13, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !185
  tail call void @arm_heavy_mb() #13
  %2 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %3, i32 5636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 0) #13, !srcloc !186
  %4 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_addr.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #13, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !198
  %7 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw1, align 8
  %msix_enabled = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 49
  %9 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_loadN_noabort(i32 %9, i32 5)
  %bf.load = load i40, ptr %msix_enabled, align 1
  %10 = and i40 %bf.load, 67108864
  %tobool.not = icmp eq i40 %10, 0
  br i1 %tobool.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %num_vec = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 2
  %11 = ptrtoint ptr %num_vec to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_vec, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp21 = icmp sgt i32 %12, 0
  br i1 %cmp21, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end_crit_edge

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.022 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  tail call void @alx_mask_msix(ptr noundef %hw1, i32 noundef %i.022, i1 noundef zeroext true) #13
  %13 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw1, align 8
  %call = tail call i32 @pci_irq_vector(ptr noundef %14, i32 noundef %i.022) #13
  tail call void @synchronize_irq(i32 noundef %call) #13
  %inc = add nuw nsw i32 %i.022, 1
  %15 = ptrtoint ptr %num_vec to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_vec, align 8
  %cmp = icmp slt i32 %inc, %16
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call7 = tail call i32 @pci_irq_vector(ptr noundef %8, i32 noundef 0) #13
  tail call void @synchronize_irq(i32 noundef %call7) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %for.body.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @alx_set_macaddr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdio_mii_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_update_features(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alx_activate(ptr noundef %alx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 17, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !184

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1153, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %call24 = tail call fastcc i32 @alx_reinit_rings(ptr noundef %alx)
  %hw1.i = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 1
  tail call void @alx_configure_basic(ptr noundef %hw1.i) #13
  tail call void @alx_disable_rss(ptr noundef %hw1.i) #13
  %1 = ptrtoint ptr %alx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %alx, align 8
  tail call fastcc void @__alx_set_rx_mode(ptr noundef %2) #13
  %rx_ctrl.i = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 1, i32 9
  %3 = ptrtoint ptr %rx_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_ctrl.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !185
  tail call void @arm_heavy_mb() #13
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #13
  %hw_addr.i.i = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 5248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %5) #13, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !185
  tail call void @arm_heavy_mb() #13
  %8 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 5632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -129) #13, !srcloc !186
  tail call fastcc void @alx_irq_enable(ptr noundef %alx)
  %link_check_wk.i = getelementptr inbounds %struct.alx_priv, ptr %alx, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %link_check_wk.i) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @alx_update_hw_stats(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alx_read_phy_reg(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alx_read_phy_ext(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alx_write_phy_reg(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alx_write_phy_ext(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alx_clear_phy_intr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alx_read_phy_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @alx_post_phy_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @alx_start_mac(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_selected_regions(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alx_pci_error_detected(ptr noundef %pdev, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.69) #16
  %mtx = getelementptr inbounds %struct.alx_priv, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #13
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @netif_device_detach(ptr noundef %3) #13
  tail call fastcc void @alx_halt(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %state)
  %cmp = icmp eq i32 %state, 3
  br i1 %cmp, label %if.end.if.end4_crit_edge, label %if.else

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @pci_disable_device(ptr noundef %pdev) #13
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.end.if.end4_crit_edge
  %rc.0 = phi i32 [ 3, %if.else ], [ 4, %if.end.if.end4_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mtx) #13
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alx_pci_error_slot_reset(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.72) #16
  %mtx = getelementptr inbounds %struct.alx_priv, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #13
  %call2 = tail call i32 @pci_enable_device(ptr noundef %pdev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end5

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.75) #16
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %hw1 = getelementptr inbounds %struct.alx_priv, ptr %1, i32 0, i32 1
  tail call void @pci_set_master(ptr noundef %pdev) #13
  tail call void @alx_reset_pcie(ptr noundef %hw1) #13
  %call7 = tail call i32 @alx_reset_mac(ptr noundef %hw1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  %spec.select = select i1 %tobool8.not, i32 5, i32 4
  br label %out

out:                                              ; preds = %if.end, %do.end5
  %rc.0 = phi i32 [ 4, %do.end5 ], [ %spec.select, %if.end ]
  tail call void @mutex_unlock(ptr noundef %mtx) #13
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alx_pci_error_resume(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.77) #16
  %mtx = getelementptr inbounds %struct.alx_priv, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #13
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @alx_activate(ptr noundef %1)
  tail call void @netif_device_attach(ptr noundef %3) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mtx) #13
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alx_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @netif_device_detach(ptr noundef %3) #13
  %mtx = getelementptr inbounds %struct.alx_priv, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #13
  tail call fastcc void @__alx_stop(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %mtx) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alx_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hw1 = getelementptr inbounds %struct.alx_priv, ptr %1, i32 0, i32 1
  %mtx = getelementptr inbounds %struct.alx_priv, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #13
  tail call void @alx_reset_phy(ptr noundef %hw1) #13
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlock

if.end:                                           ; preds = %entry
  %call4 = tail call fastcc i32 @__alx_open(ptr noundef %1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.unlock_crit_edge

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlock

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  tail call void @netif_device_attach(ptr noundef %7) #13
  br label %unlock

unlock:                                           ; preds = %if.end6, %if.end.unlock_crit_edge, %entry.unlock_crit_edge
  %err.0 = phi i32 [ %call4, %if.end.unlock_crit_edge ], [ 0, %if.end6 ], [ 0, %entry.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mtx) #13
  ret i32 %err.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind readonly }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readnone }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !15, !17, !19, !21, !22, !23, !24, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !77, !78, !80, !81, !82, !84, !86, !88, !90, !92, !93, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !127, !128, !129, !131, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !153, !154, !155, !156, !158, !159, !160, !161, !163, !164, !165, !167, !168, !169, !170}
!llvm.named.register.sp = !{!172}
!llvm.module.flags = !{!173, !174, !175, !176, !177, !178, !179, !180}
!llvm.ident = !{!181}

!0 = !{ptr @__initcall__kmod_alx__515_2056_alx_driver_init6, !1, !"__initcall__kmod_alx__515_2056_alx_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 2056, i32 1}
!2 = !{ptr @__exitcall_alx_driver_exit, !1, !"__exitcall_alx_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author516, !4, !"__UNIQUE_ID_author516", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 2058, i32 1}
!5 = !{ptr @__UNIQUE_ID_author517, !6, !"__UNIQUE_ID_author517", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 2059, i32 1}
!7 = !{ptr @__UNIQUE_ID_description518, !8, !"__UNIQUE_ID_description518", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 2060, i32 1}
!9 = !{ptr @__UNIQUE_ID_file519, !10, !"__UNIQUE_ID_file519", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 2062, i32 1}
!11 = !{ptr @__UNIQUE_ID_license520, !10, !"__UNIQUE_ID_license520", i1 false, i1 false}
!12 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @alx_driver, !14, !"alx_driver", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 2047, i32 26}
!15 = !{ptr @alx_drv_name, !16, !"alx_drv_name", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 52, i32 19}
!17 = !{ptr @alx_pci_tbl, !18, !"alx_pci_tbl", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 2031, i32 35}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 1732, i32 3}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @alx_probe.__UNIQUE_ID_ddebug514, !20, !"__UNIQUE_ID_ddebug514", i1 false, i1 false}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 1736, i32 4}
!26 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @alx_probe._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @alx_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 1743, i32 3}
!32 = !{ptr @alx_probe._entry.7, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @alx_probe._entry_ptr.9, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 1752, i32 3}
!36 = !{ptr @alx_probe._entry.10, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @alx_probe._entry_ptr.12, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @alx_probe.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 1767, i32 2}
!40 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @alx_probe.__key.14, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 1768, i32 2}
!43 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @alx_probe.__key.16, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 1769, i32 2}
!46 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 1779, i32 3}
!49 = !{ptr @alx_probe._entry.18, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @alx_probe._entry_ptr.20, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 1794, i32 3}
!53 = !{ptr @alx_probe._entry.21, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @alx_probe._entry_ptr.23, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 1809, i32 3}
!57 = !{ptr @alx_probe._entry.24, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @alx_probe._entry_ptr.26, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 1817, i32 4}
!61 = !{ptr @alx_probe._entry.27, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @alx_probe._entry_ptr.29, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 1831, i32 3}
!65 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @alx_probe._entry.30, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @alx_probe._entry_ptr.33, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 1851, i32 3}
!70 = !{ptr @alx_probe._entry.34, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @alx_probe._entry_ptr.36, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @alx_probe.__key.37, !73, !"__key", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 1858, i32 2}
!74 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @alx_probe.__key.39, !76, !"__key", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 1859, i32 2}
!77 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 1864, i32 3}
!80 = !{ptr @alx_probe._entry.41, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @alx_probe._entry_ptr.43, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 1869, i32 7}
!84 = !{ptr @alx_netdev_ops, !85, !"alx_netdev_ops", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 1698, i32 36}
!86 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 841, i32 25}
!88 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 795, i32 23}
!90 = distinct !{null, !91, !"__already_done", i1 false, i1 false}
!91 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!92 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @tx_pidx_reg, !95, !"tx_pidx_reg", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 728, i32 18}
!96 = !{ptr @tx_cidx_reg, !97, !"tx_cidx_reg", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 730, i32 18}
!98 = !{ptr @tx_vect_mask, !99, !"tx_vect_mask", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 732, i32 18}
!100 = distinct !{null, !101, !"rx_vect_mask", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 734, i32 18}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 676, i32 25}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 683, i32 24}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 1015, i32 24}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 869, i32 25}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 872, i32 25}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 875, i32 25}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 878, i32 25}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 336, i32 3}
!118 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 343, i32 25}
!120 = !{ptr @txq_vec_mapping_shift, !121, !"txq_vec_mapping_shift", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 800, i32 18}
!122 = !{ptr @txring_header_reg, !123, !"txring_header_reg", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 446, i32 18}
!124 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 1054, i32 3}
!126 = !{ptr @.str.59, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @alx_init_sw._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @alx_init_sw._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @alx_init_sw.__key, !130, !"__key", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 1094, i32 2}
!131 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.61, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 1318, i32 3}
!134 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 1329, i32 3}
!136 = !{ptr @.str.63, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 1276, i32 10}
!138 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 1278, i32 10}
!140 = !{ptr @.str.65, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 1280, i32 10}
!142 = !{ptr @.str.66, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 1282, i32 10}
!144 = !{ptr @.str.67, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 1284, i32 10}
!146 = !{ptr @.str.68, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 1286, i32 10}
!148 = !{ptr @alx_err_handlers, !149, !"alx_err_handlers", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 2025, i32 40}
!150 = !{ptr @.str.69, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 1963, i32 2}
!152 = !{ptr @.str.70, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.71, !151, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @alx_pci_error_detected._entry, !151, !"_entry", i1 false, i1 false}
!155 = !{ptr @alx_pci_error_detected._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.72, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 1988, i32 2}
!158 = !{ptr @.str.73, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @alx_pci_error_slot_reset._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @alx_pci_error_slot_reset._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.75, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 1993, i32 3}
!163 = !{ptr @alx_pci_error_slot_reset._entry.74, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @alx_pci_error_slot_reset._entry_ptr.76, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.77, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 2013, i32 2}
!167 = !{ptr @.str.78, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @alx_pci_error_resume._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @alx_pci_error_resume._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @alx_pm_ops, !171, !"alx_pm_ops", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/atheros/alx/main.c", i32 1949, i32 8}
!172 = !{!"sp"}
!173 = !{i32 1, !"wchar_size", i32 2}
!174 = !{i32 1, !"min_enum_size", i32 4}
!175 = !{i32 8, !"branch-target-enforcement", i32 0}
!176 = !{i32 8, !"sign-return-address", i32 0}
!177 = !{i32 8, !"sign-return-address-all", i32 0}
!178 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!179 = !{i32 7, !"uwtable", i32 1}
!180 = !{i32 7, !"frame-pointer", i32 2}
!181 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!182 = !{i64 2149000160, i64 2149000165, i64 2149000178, i64 2149000222, i64 2149000256, i64 2149000277}
!183 = !{!"auto-init"}
!184 = !{!"branch_weights", i32 1, i32 2000}
!185 = !{i64 2158129335}
!186 = !{i64 5026590}
!187 = !{i64 7345357, i64 7345398, i64 7345443}
!188 = !{i64 7344255}
!189 = !{!"branch_weights", i32 2000, i32 1}
!190 = !{i64 2155452623, i64 2155453123, i64 2155452660, i64 2155452716, i64 2155452750, i64 2155452774, i64 2155452815, i64 2155452836, i64 2155452864, i64 2155452898}
!191 = !{i64 2155453967}
!192 = !{i64 2156264336}
!193 = !{i64 2158180686}
!194 = !{i64 2158128122}
!195 = !{i64 5025970}
!196 = !{i64 5027008}
!197 = !{i64 2158130165}
!198 = !{i64 2158130796}
!199 = !{i64 5026170}
!200 = !{i64 2158128952}
!201 = !{i64 2156265407}
!202 = !{i64 2158133089}

; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/synopsys/dwc-xlgmac-common.c_pt.bc'
source_filename = "../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
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
%struct.xlgmac_resources = type { ptr, i32 }
%struct.xlgmac_pdata = type { ptr, ptr, %struct.xlgmac_hw_ops, %struct.xlgmac_desc_ops, %struct.xlgmac_stats, i32, ptr, %struct.xlgmac_hw_features, %struct.work_struct, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], [6 x i8], i64, %struct.napi_struct, [128 x i32], i32, %struct.mutex, [40 x i8], [256 x i32], i32, i32, [32 x i8], [32 x i8] }
%struct.xlgmac_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xlgmac_desc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xlgmac_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xlgmac_hw_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.xlgmac_ring = type { %struct.xlgmac_pkt_info, ptr, i32, i32, ptr, %struct.xlgmac_page_alloc, %struct.xlgmac_page_alloc, i32, i32, i32, %union.anon.122, [120 x i8] }
%struct.xlgmac_pkt_info = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i64, i32, i32 }
%struct.xlgmac_page_alloc = type { ptr, i32, i32, i32 }
%union.anon.122 = type { %struct.anon.123 }
%struct.anon.123 = type { i32, i32, i16, i16 }
%struct.xlgmac_desc_data = type { ptr, i32, ptr, i32, i32, %struct.xlgmac_tx_desc_data, %struct.xlgmac_rx_desc_data, i32, i32, %struct.anon.121 }
%struct.xlgmac_tx_desc_data = type { i32, i32 }
%struct.xlgmac_rx_desc_data = type { %struct.xlgmac_buffer_data, %struct.xlgmac_buffer_data, i16, i16 }
%struct.xlgmac_buffer_data = type { %struct.xlgmac_page_alloc, %struct.xlgmac_page_alloc, i32, i32, i32 }
%struct.anon.121 = type { ptr, i32, i32 }
%struct.xlgmac_dma_desc = type { i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }

@__UNIQUE_ID_file351 = internal constant [57 x i8] c"dwc_xlgmac.file=drivers/net/ethernet/synopsys/dwc-xlgmac\00", section ".modinfo", align 1
@__UNIQUE_ID_license352 = internal constant [32 x i8] c"dwc_xlgmac.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [17 x i8] c"dwc_xlgmac.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype353 = internal constant [30 x i8] c"dwc_xlgmac.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug354 = internal constant [67 x i8] c"dwc_xlgmac.parm=debug:DWC ethernet debug level (0=none,...,16=all)\00", section ".modinfo", align 1
@xlgmac_drv_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 238, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"alloc_etherdev failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xlgmac_drv_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/ethernet/synopsys/dwc-xlgmac-common.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xlgmac_drv_probe._entry_ptr = internal global ptr @xlgmac_drv_probe._entry, section ".printk_index", align 4
@xlgmac_drv_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&pdata->rss_mutex\00", [46 x i8] zeroinitializer }, align 32
@xlgmac_drv_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 256, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xlgmac init failed\0A\00", [44 x i8] zeroinitializer }, align 32
@xlgmac_drv_probe._entry_ptr.8 = internal global ptr @xlgmac_drv_probe._entry.6, section ".printk_index", align 4
@xlgmac_drv_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 262, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"net device registration failed\0A\00", [32 x i8] zeroinitializer }, align 32
@xlgmac_drv_probe._entry_ptr.11 = internal global ptr @xlgmac_drv_probe._entry.9, section ".printk_index", align 4
@xlgmac_dump_tx_desc.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dwc_xlgmac\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xlgmac_dump_tx_desc\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"TX: dma_desc=%p, dma_desc_addr=%pad\0A\00", [59 x i8] zeroinitializer }, align 32
@xlgmac_dump_tx_desc.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.2, ptr @.str.15, i8 0, i8 76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"TX_NORMAL_DESC[%d %s] = %08x:%08x:%08x:%08x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QUEUED FOR TX\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TX BY DEVICE\00", [19 x i8] zeroinitializer }, align 32
@xlgmac_dump_rx_desc.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xlgmac_dump_rx_desc\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"RX: dma_desc=%p, dma_desc_addr=%pad\0A\00", [59 x i8] zeroinitializer }, align 32
@xlgmac_dump_rx_desc.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.18, ptr @.str.2, ptr @.str.20, i8 0, i8 82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"RX_NORMAL_DESC[%d RX BY DEVICE] = %08x:%08x:%08x:%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@xlgmac_print_pkt.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xlgmac_print_pkt\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\0A************** SKB dump ****************\0A\00", [53 x i8] zeroinitializer }, align 32
@xlgmac_print_pkt.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.21, ptr @.str.2, ptr @.str.23, i8 0, i8 85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s packet of %d bytes\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TX\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RX\00", [29 x i8] zeroinitializer }, align 32
@xlgmac_print_pkt.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.21, ptr @.str.2, ptr @.str.26, i8 0, i8 86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Dst MAC addr: %pM\0A\00", [45 x i8] zeroinitializer }, align 32
@xlgmac_print_pkt.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.21, ptr @.str.2, ptr @.str.27, i8 0, i8 86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Src MAC addr: %pM\0A\00", [45 x i8] zeroinitializer }, align 32
@xlgmac_print_pkt.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.21, ptr @.str.2, ptr @.str.28, i8 0, i8 86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Protocol: %#06hx\0A\00", [46 x i8] zeroinitializer }, align 32
@xlgmac_print_pkt.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.21, ptr @.str.2, ptr @.str.29, i8 0, i8 88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"  %#06x: %s\0A\00", [19 x i8] zeroinitializer }, align 32
@xlgmac_print_pkt.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@xlgmac_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 99, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"dma_set_mask_and_coherent failed\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xlgmac_init\00", [20 x i8] zeroinitializer }, align 32
@xlgmac_init._entry_ptr = internal global ptr @xlgmac_init._entry, section ".printk_index", align 4
@xlgmac_init._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.2, i32 114, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"tx descriptor count (%d) is not valid\0A\00", [57 x i8] zeroinitializer }, align 32
@xlgmac_init._entry_ptr.60 = internal global ptr @xlgmac_init._entry.58, section ".printk_index", align 4
@xlgmac_init._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str.2, i32 122, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"rx descriptor count (%d) is not valid\0A\00", [57 x i8] zeroinitializer }, align 32
@xlgmac_init._entry_ptr.63 = internal global ptr @xlgmac_init._entry.61, section ".printk_index", align 4
@xlgmac_init._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.57, ptr @.str.2, i32 134, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error setting real tx queue count\0A\00", [61 x i8] zeroinitializer }, align 32
@xlgmac_init._entry_ptr.66 = internal global ptr @xlgmac_init._entry.64, section ".printk_index", align 4
@xlgmac_init._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.57, ptr @.str.2, i32 146, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error setting real rx queue count\0A\00", [61 x i8] zeroinitializer }, align 32
@xlgmac_init._entry_ptr.69 = internal global ptr @xlgmac_init._entry.67, section ".printk_index", align 4
@.str.70 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dwc-xlgmac\00", [21 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.0.0\00", [26 x i8] zeroinitializer }, align 32
@dev_addr = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\00U{\B5}\F7", [26 x i8] zeroinitializer }, align 32
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@switch.table.xlgmac_get_all_hw_features = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 64, i32 128, i32 256], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.72 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 26, i32 12 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 238, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 251, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 256, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 262, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 297, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 299, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 321, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 323, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 339, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 341, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 344, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 345, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 346, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 353, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 99, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 113, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 121, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 134, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 146, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 57, i32 27 }
@___asan_gen_.201 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 58, i32 26 }
@___asan_gen_.204 = private unnamed_addr constant [9 x i8] c"dev_addr\00", align 1
@___asan_gen_.205 = private constant [53 x i8] c"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 32, i32 22 }
@___asan_gen_.207 = private unnamed_addr constant [40 x i8] c"switch.table.xlgmac_get_all_hw_features\00", align 1
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_debug354, ptr @__UNIQUE_ID_debugtype353, ptr @__UNIQUE_ID_file351, ptr @__UNIQUE_ID_license352, ptr @__param_debug, ptr @xlgmac_drv_probe._entry, ptr @xlgmac_drv_probe._entry.6, ptr @xlgmac_drv_probe._entry.9, ptr @xlgmac_drv_probe._entry_ptr, ptr @xlgmac_drv_probe._entry_ptr.11, ptr @xlgmac_drv_probe._entry_ptr.8, ptr @xlgmac_init._entry, ptr @xlgmac_init._entry.58, ptr @xlgmac_init._entry.61, ptr @xlgmac_init._entry.64, ptr @xlgmac_init._entry.67, ptr @xlgmac_init._entry_ptr, ptr @xlgmac_init._entry_ptr.60, ptr @xlgmac_init._entry_ptr.63, ptr @xlgmac_init._entry_ptr.66, ptr @xlgmac_init._entry_ptr.69, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @xlgmac_drv_probe.__key, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @dev_addr, ptr @switch.table.xlgmac_get_all_hw_features], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlgmac_drv_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlgmac_drv_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlgmac_drv_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlgmac_drv_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlgmac_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlgmac_init._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlgmac_init._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlgmac_init._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlgmac_init._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_addr to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xlgmac_get_all_hw_features to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xlgmac_drv_probe(ptr noundef %dev, ptr nocapture noundef readonly %res) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 3008, i32 noundef 16, i32 noundef 16) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %dev3 = getelementptr i8, ptr %call, i32 2308
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev3, align 4
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %add.ptr.i, align 8
  %irq = getelementptr inbounds %struct.xlgmac_resources, ptr %res, i32 0, i32 1
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %dev_irq = getelementptr i8, ptr %call, i32 3256
  %6 = ptrtoint ptr %dev_irq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %dev_irq, align 8
  %7 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %res, align 4
  %mac_regs = getelementptr i8, ptr %call, i32 2980
  %9 = ptrtoint ptr %mac_regs to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %mac_regs, align 4
  %rss_mutex = getelementptr i8, ptr %call, i32 4084
  tail call void @__mutex_init(ptr noundef %rss_mutex, ptr noundef nonnull @.str.5, ptr noundef nonnull @xlgmac_drv_probe.__key) #7
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %10)
  %cmp1.i = icmp ugt i32 %10, 31
  br i1 %cmp1.i, label %if.end.netif_msg_init.exit_crit_edge, label %if.end.i

if.end.netif_msg_init.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %netif_msg_init.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp2.i = icmp eq i32 %10, 0
  br i1 %cmp2.i, label %if.end.i.netif_msg_init.exit_crit_edge, label %if.end4.i

if.end.i.netif_msg_init.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %netif_msg_init.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %notmask.i = shl nsw i32 -1, %10
  %sub.i = xor i32 %notmask.i, -1
  br label %netif_msg_init.exit

netif_msg_init.exit:                              ; preds = %if.end4.i, %if.end.i.netif_msg_init.exit_crit_edge, %if.end.netif_msg_init.exit_crit_edge
  %retval.0.i = phi i32 [ %sub.i, %if.end4.i ], [ 52, %if.end.netif_msg_init.exit_crit_edge ], [ 0, %if.end.i.netif_msg_init.exit_crit_edge ]
  %msg_enable = getelementptr i8, ptr %call, i32 2976
  %11 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %retval.0.i, ptr %msg_enable, align 8
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 8
  %tx_osp_mode.i.i = getelementptr i8, ptr %call, i32 3208
  %14 = ptrtoint ptr %tx_osp_mode.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %tx_osp_mode.i.i, align 8
  %tx_sf_mode.i.i = getelementptr i8, ptr %call, i32 3196
  %15 = ptrtoint ptr %tx_sf_mode.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %tx_sf_mode.i.i, align 4
  %rx_sf_mode.i.i = getelementptr i8, ptr %call, i32 3212
  %16 = ptrtoint ptr %rx_sf_mode.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %rx_sf_mode.i.i, align 4
  %pblx8.i.i = getelementptr i8, ptr %call, i32 3192
  %17 = ptrtoint ptr %pblx8.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %pblx8.i.i, align 8
  %tx_pbl.i.i = getelementptr i8, ptr %call, i32 3204
  %18 = ptrtoint ptr %tx_pbl.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 32, ptr %tx_pbl.i.i, align 4
  %rx_pbl.i.i = getelementptr i8, ptr %call, i32 3220
  %19 = ptrtoint ptr %rx_pbl.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 32, ptr %rx_pbl.i.i, align 4
  %tx_threshold.i.i = getelementptr i8, ptr %call, i32 3200
  %20 = ptrtoint ptr %tx_threshold.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 3, ptr %tx_threshold.i.i, align 8
  %rx_threshold.i.i = getelementptr i8, ptr %call, i32 3216
  %21 = ptrtoint ptr %rx_threshold.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %rx_threshold.i.i, align 8
  %tx_pause.i.i = getelementptr i8, ptr %call, i32 3248
  %22 = ptrtoint ptr %tx_pause.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %tx_pause.i.i, align 8
  %rx_pause.i.i = getelementptr i8, ptr %call, i32 3252
  %23 = ptrtoint ptr %rx_pause.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %rx_pause.i.i, align 4
  %phy_speed.i.i = getelementptr i8, ptr %call, i32 5244
  %24 = ptrtoint ptr %phy_speed.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 25000, ptr %phy_speed.i.i, align 4
  %sysclk_rate.i.i = getelementptr i8, ptr %call, i32 4080
  %25 = ptrtoint ptr %sysclk_rate.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 125000000, ptr %sysclk_rate.i.i, align 8
  %drv_name.i.i = getelementptr i8, ptr %call, i32 5248
  %call.i.i = tail call i32 @strlcpy(ptr noundef %drv_name.i.i, ptr noundef nonnull @.str.70, i32 noundef 32) #7
  %drv_ver.i.i = getelementptr i8, ptr %call, i32 5280
  %call2.i.i = tail call i32 @strlcpy(ptr noundef %drv_ver.i.i, ptr noundef nonnull @.str.71, i32 noundef 32) #7
  %26 = ptrtoint ptr %dev_irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dev_irq, align 8
  %irq.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 64
  %28 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %irq.i, align 4
  %29 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mac_regs, align 4
  %31 = ptrtoint ptr %30 to i32
  %base_addr.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 5
  %32 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %base_addr.i, align 32
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i, align 8
  %mac_addr.i.i = getelementptr i8, ptr %call, i32 3328
  %addr_len.i.i = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 56
  %35 = ptrtoint ptr %addr_len.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %addr_len.i.i, align 1
  %conv.i.i = zext i8 %36 to i32
  %37 = call ptr @memcpy(ptr %mac_addr.i.i, ptr @dev_addr, i32 %conv.i.i)
  tail call void @dev_addr_mod(ptr noundef %13, i32 noundef 0, ptr noundef %mac_addr.i.i, i32 noundef 6) #7
  %desc_ops.i.i = getelementptr i8, ptr %call, i32 2528
  tail call void @xlgmac_init_desc_ops(ptr noundef %desc_ops.i.i) #7
  %hw_ops.i.i = getelementptr i8, ptr %call, i32 2312
  tail call void @xlgmac_init_hw_ops(ptr noundef %hw_ops.i.i) #7
  %exit.i = getelementptr i8, ptr %call, i32 2316
  %38 = ptrtoint ptr %exit.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %exit.i, align 4
  %call.i = tail call i32 %39(ptr noundef %add.ptr.i) #7
  tail call void @xlgmac_get_all_hw_features(ptr noundef %add.ptr.i) #7
  %40 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev3, align 4
  %dma_width.i = getelementptr i8, ptr %call, i32 3056
  %42 = ptrtoint ptr %dma_width.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dma_width.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %43)
  %cmp.i = icmp eq i32 %43, 64
  br i1 %cmp.i, label %netif_msg_init.exit.cond.end.i_crit_edge, label %cond.false.i

netif_msg_init.exit.cond.end.i_crit_edge:         ; preds = %netif_msg_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i

cond.false.i:                                     ; preds = %netif_msg_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %sh_prom.i = zext i32 %43 to i64
  %notmask.i45 = shl nsw i64 -1, %sh_prom.i
  %sub.i46 = xor i64 %notmask.i45, -1
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %netif_msg_init.exit.cond.end.i_crit_edge
  %cond.i = phi i64 [ %sub.i46, %cond.false.i ], [ -1, %netif_msg_init.exit.cond.end.i_crit_edge ]
  %call.i416.i = tail call i32 @dma_set_mask(ptr noundef %41, i64 noundef %cond.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i416.i)
  %cmp.i.i = icmp eq i32 %call.i416.i, 0
  br i1 %cmp.i.i, label %do.end9.i, label %cond.end.i.do.end14_crit_edge

cond.end.i.do.end14_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

do.end9.i:                                        ; preds = %cond.end.i
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %41, i64 noundef %cond.i) #7
  %tx_desc_count.i = getelementptr i8, ptr %call, i32 3176
  %44 = ptrtoint ptr %tx_desc_count.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1024, ptr %tx_desc_count.i, align 8
  %rx_desc_count.i = getelementptr i8, ptr %call, i32 3180
  %45 = ptrtoint ptr %rx_desc_count.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1024, ptr %rx_desc_count.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %46 = load volatile i32, ptr @__num_online_cpus, align 4
  %tx_ch_cnt.i = getelementptr i8, ptr %call, i32 3104
  %47 = ptrtoint ptr %tx_ch_cnt.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tx_ch_cnt.i, align 8
  %49 = tail call i32 @llvm.umin.i32(i32 %46, i32 %48) #7
  %tx_ring_count.i = getelementptr i8, ptr %call, i32 3168
  %tx_q_cnt.i = getelementptr i8, ptr %call, i32 3096
  %50 = ptrtoint ptr %tx_q_cnt.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_q_cnt.i, align 8
  %52 = tail call i32 @llvm.umin.i32(i32 %49, i32 %51) #7
  %53 = ptrtoint ptr %tx_ring_count.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %tx_ring_count.i, align 8
  %tx_q_count.i = getelementptr i8, ptr %call, i32 3184
  %54 = ptrtoint ptr %tx_q_count.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %52, ptr %tx_q_count.i, align 8
  %call54.i = tail call i32 @netif_set_real_num_tx_queues(ptr noundef %13, i32 noundef %52) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %tobool55.not.i = icmp eq i32 %call54.i, 0
  br i1 %tobool55.not.i, label %if.end61.i, label %do.end9.i.do.end14_crit_edge

do.end9.i.do.end14_crit_edge:                     ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

if.end61.i:                                       ; preds = %do.end9.i
  %call62.i = tail call i32 @netif_get_num_default_rss_queues() #7
  %rx_ch_cnt.i = getelementptr i8, ptr %call, i32 3100
  %55 = ptrtoint ptr %rx_ch_cnt.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rx_ch_cnt.i, align 4
  %57 = tail call i32 @llvm.umin.i32(i32 %call62.i, i32 %56) #7
  %rx_ring_count.i = getelementptr i8, ptr %call, i32 3172
  %rx_q_cnt.i = getelementptr i8, ptr %call, i32 3092
  %58 = ptrtoint ptr %rx_q_cnt.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rx_q_cnt.i, align 4
  %60 = tail call i32 @llvm.umin.i32(i32 %57, i32 %59) #7
  %61 = ptrtoint ptr %rx_ring_count.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %rx_ring_count.i, align 4
  %rx_q_count.i = getelementptr i8, ptr %call, i32 3188
  %62 = ptrtoint ptr %rx_q_count.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %60, ptr %rx_q_count.i, align 4
  %call81.i = tail call i32 @netif_set_real_num_rx_queues(ptr noundef %13, i32 noundef %60) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81.i)
  %tobool82.not.i = icmp eq i32 %call81.i, 0
  br i1 %tobool82.not.i, label %if.end88.i, label %if.end61.i.do.end14_crit_edge

if.end61.i.do.end14_crit_edge:                    ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

if.end88.i:                                       ; preds = %if.end61.i
  %63 = ptrtoint ptr %tx_ring_count.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tx_ring_count.i, align 8
  %65 = ptrtoint ptr %rx_ring_count.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rx_ring_count.i, align 4
  %67 = tail call i32 @llvm.umax.i32(i32 %64, i32 %66) #7
  %channel_count.i = getelementptr i8, ptr %call, i32 3164
  %68 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %channel_count.i, align 4
  %rss_key.i = getelementptr i8, ptr %call, i32 4176
  tail call void @netdev_rss_key_fill(ptr noundef %rss_key.i, i32 noundef 40) #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end88.i
  %i.0417.i = phi i32 [ 0, %if.end88.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.xlgmac_pdata, ptr %add.ptr.i, i32 0, i32 43, i32 %i.0417.i
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i, align 4
  %71 = ptrtoint ptr %rx_ring_count.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rx_ring_count.i, align 4
  %rem.i = urem i32 %i.0417.i, %72
  %and108.i = and i32 %rem.i, 15
  %and119.i = and i32 %70, -16
  %or.i = or i32 %and108.i, %and119.i
  store i32 %or.i, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.0417.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %rss_options.i = getelementptr i8, ptr %call, i32 5240
  %73 = ptrtoint ptr %rss_options.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rss_options.i, align 8
  %or209.i = or i32 %74, 14
  store i32 %or209.i, ptr %rss_options.i, align 8
  %call211.i = tail call ptr @xlgmac_get_netdev_ops() #7
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 16
  %75 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call211.i, ptr %netdev_ops.i, align 8
  %call212.i = tail call ptr @xlgmac_get_ethtool_ops() #7
  %ethtool_ops.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 44
  %76 = ptrtoint ptr %ethtool_ops.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call212.i, ptr %ethtool_ops.i, align 16
  %tso.i = getelementptr i8, ptr %call, i32 3068
  %77 = ptrtoint ptr %tso.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %tso.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool214.not.i = icmp eq i32 %78, 0
  br i1 %tobool214.not.i, label %if.else.i, label %for.end.i.if.end231.sink.split.i_crit_edge

for.end.i.if.end231.sink.split.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end231.sink.split.i

if.else.i:                                        ; preds = %for.end.i
  %tx_coe.i = getelementptr i8, ptr %call, i32 3024
  %79 = ptrtoint ptr %tx_coe.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tx_coe.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool225.not.i = icmp eq i32 %80, 0
  br i1 %tobool225.not.i, label %if.else.i.if.end231.i_crit_edge, label %if.else.i.if.end231.sink.split.i_crit_edge

if.else.i.if.end231.sink.split.i_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end231.sink.split.i

if.else.i.if.end231.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end231.i

if.end231.sink.split.i:                           ; preds = %if.else.i.if.end231.sink.split.i_crit_edge, %for.end.i.if.end231.sink.split.i_crit_edge
  %.sink.i = phi i64 [ 1114131, %for.end.i.if.end231.sink.split.i_crit_edge ], [ 18, %if.else.i.if.end231.sink.split.i_crit_edge ]
  %hw_features227.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 24
  %81 = ptrtoint ptr %hw_features227.i to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %.sink.i, ptr %hw_features227.i, align 8
  br label %if.end231.i

if.end231.i:                                      ; preds = %if.end231.sink.split.i, %if.else.i.if.end231.i_crit_edge
  %rx_coe.i = getelementptr i8, ptr %call, i32 3028
  %82 = ptrtoint ptr %rx_coe.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %rx_coe.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool233.not.i = icmp eq i32 %83, 0
  br i1 %tobool233.not.i, label %if.end231.i.if.end239.i_crit_edge, label %if.then234.i

if.end231.i.if.end239.i_crit_edge:                ; preds = %if.end231.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end239.i

if.then234.i:                                     ; preds = %if.end231.i
  call void @__sanitizer_cov_trace_pc() #9
  %hw_features235.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 24
  %84 = ptrtoint ptr %hw_features235.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %hw_features235.i, align 8
  %or238.i = or i64 %85, 1099511644160
  store i64 %or238.i, ptr %hw_features235.i, align 8
  br label %if.end239.i

if.end239.i:                                      ; preds = %if.then234.i, %if.end231.i.if.end239.i_crit_edge
  %rss.i = getelementptr i8, ptr %call, i32 3076
  %86 = ptrtoint ptr %rss.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rss.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool241.not.i = icmp eq i32 %87, 0
  br i1 %tobool241.not.i, label %if.end239.i.if.end245.i_crit_edge, label %if.then242.i

if.end239.i.if.end245.i_crit_edge:                ; preds = %if.end239.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end245.i

if.then242.i:                                     ; preds = %if.end239.i
  call void @__sanitizer_cov_trace_pc() #9
  %hw_features243.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 24
  %88 = ptrtoint ptr %hw_features243.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %hw_features243.i, align 8
  %or244.i = or i64 %89, 549755813888
  store i64 %or244.i, ptr %hw_features243.i, align 8
  br label %if.end245.i

if.end245.i:                                      ; preds = %if.then242.i, %if.end239.i.if.end245.i_crit_edge
  %hw_features246.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 24
  %90 = ptrtoint ptr %hw_features246.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %hw_features246.i, align 8
  %vlan_features.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 26
  %92 = ptrtoint ptr %vlan_features.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %vlan_features.i, align 8
  %or247.i = or i64 %93, %91
  store i64 %or247.i, ptr %vlan_features.i, align 8
  %or249.i = or i64 %91, 256
  store i64 %or249.i, ptr %hw_features246.i, align 8
  %sa_vlan_ins.i = getelementptr i8, ptr %call, i32 3040
  %94 = ptrtoint ptr %sa_vlan_ins.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %sa_vlan_ins.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool251.not.i = icmp eq i32 %95, 0
  br i1 %tobool251.not.i, label %if.end245.i.if.end255.i_crit_edge, label %if.then252.i

if.end245.i.if.end255.i_crit_edge:                ; preds = %if.end245.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end255.i

if.then252.i:                                     ; preds = %if.end245.i
  call void @__sanitizer_cov_trace_pc() #9
  %or254.i = or i64 %91, 384
  %96 = ptrtoint ptr %hw_features246.i to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %or254.i, ptr %hw_features246.i, align 8
  br label %if.end255.i

if.end255.i:                                      ; preds = %if.then252.i, %if.end245.i.if.end255.i_crit_edge
  %vlhash.i = getelementptr i8, ptr %call, i32 2992
  %97 = ptrtoint ptr %vlhash.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %vlhash.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool257.not.i = icmp eq i32 %98, 0
  br i1 %tobool257.not.i, label %if.end255.i.if.end15_crit_edge, label %if.then258.i

if.end255.i.if.end15_crit_edge:                   ; preds = %if.end255.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then258.i:                                     ; preds = %if.end255.i
  call void @__sanitizer_cov_trace_pc() #9
  %99 = ptrtoint ptr %hw_features246.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %hw_features246.i, align 8
  %or260.i = or i64 %100, 512
  store i64 %or260.i, ptr %hw_features246.i, align 8
  br label %if.end15

do.end14:                                         ; preds = %if.end61.i.do.end14_crit_edge, %do.end9.i.do.end14_crit_edge, %cond.end.i.do.end14_crit_edge
  %.str.56.sink = phi ptr [ @.str.56, %cond.end.i.do.end14_crit_edge ], [ @.str.65, %do.end9.i.do.end14_crit_edge ], [ @.str.68, %if.end61.i.do.end14_crit_edge ]
  %retval.0.i47.ph = phi i32 [ %call.i416.i, %cond.end.i.do.end14_crit_edge ], [ %call54.i, %do.end9.i.do.end14_crit_edge ], [ %call81.i, %if.end61.i.do.end14_crit_edge ]
  %101 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull %.str.56.sink) #10
  br label %err_free_netdev

if.end15:                                         ; preds = %if.then258.i, %if.end255.i.if.end15_crit_edge
  %103 = ptrtoint ptr %hw_features246.i to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %hw_features246.i, align 8
  %features.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 23
  %105 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %features.i, align 16
  %or263.i = or i64 %106, %104
  store i64 %or263.i, ptr %features.i, align 16
  %netdev_features.i = getelementptr i8, ptr %call, i32 3336
  %107 = ptrtoint ptr %netdev_features.i to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %or263.i, ptr %netdev_features.i, align 8
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 15
  %108 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %priv_flags.i, align 16
  %or265.i = or i64 %109, 4096
  store i64 %or265.i, ptr %priv_flags.i, align 16
  %watchdog_timeo.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 115
  %110 = ptrtoint ptr %watchdog_timeo.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %watchdog_timeo.i, align 4
  %tx_usecs.i = getelementptr i8, ptr %call, i32 3224
  %111 = ptrtoint ptr %tx_usecs.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 1000, ptr %tx_usecs.i, align 8
  %tx_frames.i = getelementptr i8, ptr %call, i32 3228
  %112 = ptrtoint ptr %tx_frames.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 25, ptr %tx_frames.i, align 4
  %usec_to_riwt.i = getelementptr i8, ptr %call, i32 2452
  %113 = ptrtoint ptr %usec_to_riwt.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %usec_to_riwt.i, align 4
  %call266.i = tail call i32 %114(ptr noundef %add.ptr.i, i32 noundef 30) #7
  %rx_riwt.i = getelementptr i8, ptr %call, i32 3232
  %115 = ptrtoint ptr %rx_riwt.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %call266.i, ptr %rx_riwt.i, align 8
  %rx_usecs.i = getelementptr i8, ptr %call, i32 3236
  %116 = ptrtoint ptr %rx_usecs.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 30, ptr %rx_usecs.i, align 4
  %rx_frames.i = getelementptr i8, ptr %call, i32 3240
  %117 = ptrtoint ptr %rx_frames.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 25, ptr %rx_frames.i, align 8
  %call16 = tail call i32 @register_netdev(ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %if.end15.err_free_netdev_crit_edge

if.end15.err_free_netdev_crit_edge:               ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_netdev

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_free_netdev:                                  ; preds = %if.end15.err_free_netdev_crit_edge, %do.end14
  %.str.10.sink = phi ptr [ @.str.7, %do.end14 ], [ @.str.10, %if.end15.err_free_netdev_crit_edge ]
  %ret.0 = phi i32 [ %retval.0.i47.ph, %do.end14 ], [ %call16, %if.end15.err_free_netdev_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.10.sink) #10
  tail call void @free_netdev(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %err_free_netdev, %if.end15.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.0, %err_free_netdev ], [ -12, %do.end ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xlgmac_drv_remove(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @unregister_netdev(ptr noundef %1) #7
  tail call void @free_netdev(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xlgmac_dump_tx_desc(ptr nocapture noundef readonly %pdata, ptr nocapture noundef readonly %ring, i32 noundef %idx, i32 noundef %count, i32 noundef %flag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not45 = icmp eq i32 %count, 0
  br i1 %tobool.not45, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %desc_data_head = getelementptr inbounds %struct.xlgmac_ring, ptr %ring, i32 0, i32 4
  %dma_desc_count = getelementptr inbounds %struct.xlgmac_ring, ptr %ring, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %flag)
  %cmp = icmp eq i32 %flag, 1
  %cond = select i1 %cmp, ptr @.str.16, ptr @.str.17
  br label %while.body

while.body:                                       ; preds = %do.end29.while.body_crit_edge, %while.body.lr.ph
  %dec47.in = phi i32 [ %count, %while.body.lr.ph ], [ %dec47, %do.end29.while.body_crit_edge ]
  %idx.addr.046 = phi i32 [ %idx, %while.body.lr.ph ], [ %inc, %do.end29.while.body_crit_edge ]
  %dec47 = add i32 %dec47.in, -1
  %0 = ptrtoint ptr %desc_data_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc_data_head, align 4
  %2 = ptrtoint ptr %dma_desc_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_desc_count, align 8
  %sub = add i32 %3, -1
  %and = and i32 %sub, %idx.addr.046
  %add.ptr = getelementptr %struct.xlgmac_desc_data, ptr %1, i32 %and
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xlgmac_dump_tx_desc.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xlgmac_dump_tx_desc, %if.then)) #7
          to label %do.body11 [label %if.then], !srcloc !158

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata, align 8
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %dma_desc_addr = getelementptr %struct.xlgmac_desc_data, ptr %1, i32 %and, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xlgmac_dump_tx_desc.__UNIQUE_ID_ddebug367, ptr noundef %7, ptr noundef nonnull @.str.14, ptr noundef %9, ptr noundef %dma_desc_addr) #7
  br label %do.body11

do.body11:                                        ; preds = %if.then, %while.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xlgmac_dump_tx_desc.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xlgmac_dump_tx_desc, %if.then23)) #7
          to label %do.end29 [label %if.then23], !srcloc !158

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdata, align 8
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %5, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %desc1 = getelementptr inbounds %struct.xlgmac_dma_desc, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %desc1, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %desc2 = getelementptr inbounds %struct.xlgmac_dma_desc, ptr %5, i32 0, i32 2
  %18 = ptrtoint ptr %desc2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %desc2, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %desc3 = getelementptr inbounds %struct.xlgmac_dma_desc, ptr %5, i32 0, i32 3
  %21 = ptrtoint ptr %desc3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %desc3, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xlgmac_dump_tx_desc.__UNIQUE_ID_ddebug368, ptr noundef %11, ptr noundef nonnull @.str.15, i32 noundef %idx.addr.046, ptr noundef nonnull %cond, i32 noundef %14, i32 noundef %17, i32 noundef %20, i32 noundef %23) #7
  br label %do.end29

do.end29:                                         ; preds = %if.then23, %do.body11
  %inc = add i32 %idx.addr.046, 1
  %tobool.not = icmp eq i32 %dec47, 0
  br i1 %tobool.not, label %do.end29.while.end_crit_edge, label %do.end29.while.body_crit_edge

do.end29.while.body_crit_edge:                    ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

do.end29.while.end_crit_edge:                     ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %do.end29.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xlgmac_dump_rx_desc(ptr nocapture noundef readonly %pdata, ptr nocapture noundef readonly %ring, i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %desc_data_head = getelementptr inbounds %struct.xlgmac_ring, ptr %ring, i32 0, i32 4
  %0 = ptrtoint ptr %desc_data_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc_data_head, align 4
  %dma_desc_count = getelementptr inbounds %struct.xlgmac_ring, ptr %ring, i32 0, i32 3
  %2 = ptrtoint ptr %dma_desc_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_desc_count, align 8
  %sub = add i32 %3, -1
  %and = and i32 %sub, %idx
  %add.ptr = getelementptr %struct.xlgmac_desc_data, ptr %1, i32 %and
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xlgmac_dump_rx_desc.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xlgmac_dump_rx_desc, %if.then)) #7
          to label %do.body10 [label %if.then], !srcloc !158

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata, align 8
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %dma_desc_addr = getelementptr %struct.xlgmac_desc_data, ptr %1, i32 %and, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xlgmac_dump_rx_desc.__UNIQUE_ID_ddebug369, ptr noundef %7, ptr noundef nonnull @.str.19, ptr noundef %9, ptr noundef %dma_desc_addr) #7
  br label %do.body10

do.body10:                                        ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xlgmac_dump_rx_desc.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xlgmac_dump_rx_desc, %if.then22)) #7
          to label %do.end28 [label %if.then22], !srcloc !158

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdata, align 8
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %5, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %desc1 = getelementptr inbounds %struct.xlgmac_dma_desc, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %desc1, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %desc2 = getelementptr inbounds %struct.xlgmac_dma_desc, ptr %5, i32 0, i32 2
  %18 = ptrtoint ptr %desc2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %desc2, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %desc3 = getelementptr inbounds %struct.xlgmac_dma_desc, ptr %5, i32 0, i32 3
  %21 = ptrtoint ptr %desc3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %desc3, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xlgmac_dump_rx_desc.__UNIQUE_ID_ddebug370, ptr noundef %11, ptr noundef nonnull @.str.20, i32 noundef %idx, i32 noundef %14, i32 noundef %17, i32 noundef %20, i32 noundef %23) #7
  br label %do.end28

do.end28:                                         ; preds = %if.then22, %do.body10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xlgmac_print_pkt(ptr noundef %netdev, ptr nocapture noundef readonly %skb, i1 noundef zeroext %tx_rx) local_unnamed_addr #0 align 64 {
entry:
  %buffer = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buffer) #7
  %2 = call ptr @memset(ptr %buffer, i32 255, i32 128)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xlgmac_print_pkt.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xlgmac_print_pkt, %if.then)) #7
          to label %do.body8 [label %if.then], !srcloc !158

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xlgmac_print_pkt.__UNIQUE_ID_ddebug371, ptr noundef %netdev, ptr noundef nonnull @.str.22) #7
  br label %do.body8

do.body8:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xlgmac_print_pkt.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xlgmac_print_pkt, %if.then20)) #7
          to label %do.body28 [label %if.then20], !srcloc !158

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  %cond = select i1 %tx_rx, ptr @.str.24, ptr @.str.25
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xlgmac_print_pkt.__UNIQUE_ID_ddebug372, ptr noundef %netdev, ptr noundef nonnull @.str.23, ptr noundef nonnull %cond, i32 noundef %4) #7
  br label %do.body28

do.body28:                                        ; preds = %if.then20, %do.body8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xlgmac_print_pkt.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xlgmac_print_pkt, %if.then40)) #7
          to label %do.body47 [label %if.then40], !srcloc !158

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xlgmac_print_pkt.__UNIQUE_ID_ddebug373, ptr noundef %netdev, ptr noundef nonnull @.str.26, ptr noundef %1) #7
  br label %do.body47

do.body47:                                        ; preds = %if.then40, %do.body28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xlgmac_print_pkt.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xlgmac_print_pkt, %if.then59)) #7
          to label %do.body67 [label %if.then59], !srcloc !158

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #9
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xlgmac_print_pkt.__UNIQUE_ID_ddebug374, ptr noundef %netdev, ptr noundef nonnull @.str.27, ptr noundef %h_source) #7
  br label %do.body67

do.body67:                                        ; preds = %if.then59, %do.body47
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xlgmac_print_pkt.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xlgmac_print_pkt, %if.then79)) #7
          to label %do.end84 [label %if.then79], !srcloc !158

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #9
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %h_proto, align 1
  %conv = zext i16 %6 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xlgmac_print_pkt.__UNIQUE_ID_ddebug375, ptr noundef %netdev, ptr noundef nonnull @.str.28, i32 noundef %conv) #7
  br label %do.end84

do.end84:                                         ; preds = %if.then79, %do.body67
  %len85 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len85 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp178.not = icmp eq i32 %8, 0
  br i1 %cmp178.not, label %do.end84.do.body117_crit_edge, label %do.end84.for.body_crit_edge

do.end84.for.body_crit_edge:                      ; preds = %do.end84
  br label %for.body

do.end84.do.body117_crit_edge:                    ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body117

for.body:                                         ; preds = %do.end115.for.body_crit_edge, %do.end84.for.body_crit_edge
  %9 = phi i32 [ %14, %do.end115.for.body_crit_edge ], [ %8, %do.end84.for.body_crit_edge ]
  %i.0179 = phi i32 [ %add, %do.end115.for.body_crit_edge ], [ 0, %do.end84.for.body_crit_edge ]
  %sub = sub i32 %9, %i.0179
  %10 = call i32 @llvm.umin.i32(i32 %sub, i32 32)
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %12, i32 %i.0179
  %call95 = call i32 @hex_dump_to_buffer(ptr noundef %arrayidx, i32 noundef %10, i32 noundef 32, i32 noundef 1, ptr noundef nonnull %buffer, i32 noundef 128, i1 noundef zeroext false) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xlgmac_print_pkt.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xlgmac_print_pkt, %if.then109)) #7
          to label %do.end115 [label %if.then109], !srcloc !158

if.then109:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xlgmac_print_pkt.__UNIQUE_ID_ddebug378, ptr noundef %netdev, ptr noundef nonnull @.str.29, i32 noundef %i.0179, ptr noundef nonnull %buffer) #7
  br label %do.end115

do.end115:                                        ; preds = %if.then109, %for.body
  %add = add i32 %i.0179, 32
  %13 = ptrtoint ptr %len85 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len85, align 4
  %cmp = icmp ugt i32 %14, %add
  br i1 %cmp, label %do.end115.for.body_crit_edge, label %do.end115.do.body117_crit_edge

do.end115.do.body117_crit_edge:                   ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body117

do.end115.for.body_crit_edge:                     ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.body117:                                       ; preds = %do.end115.do.body117_crit_edge, %do.end84.do.body117_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xlgmac_print_pkt.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xlgmac_print_pkt, %if.then129)) #7
          to label %do.end134 [label %if.then129], !srcloc !158

if.then129:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xlgmac_print_pkt.__UNIQUE_ID_ddebug379, ptr noundef %netdev, ptr noundef nonnull @.str.22) #7
  br label %do.end134

do.end134:                                        ; preds = %if.then129, %do.body117
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buffer) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_dump_to_buffer(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xlgmac_get_all_hw_features(ptr noundef %pdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_feat1 = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7
  %mac_regs = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  %0 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 284
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !159
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !160
  %4 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac_regs, align 4
  %add.ptr6 = getelementptr i8, ptr %5, i32 288
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !159
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  %8 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mac_regs, align 4
  %add.ptr13 = getelementptr i8, ptr %9, i32 292
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #7, !srcloc !159
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  %12 = call ptr @memset(ptr %hw_feat1, i32 0, i32 132)
  %13 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mac_regs, align 4
  %add.ptr20 = getelementptr i8, ptr %14, i32 272
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #7, !srcloc !159
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  %17 = ptrtoint ptr %hw_feat1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %hw_feat1, align 4
  %and29 = lshr i32 %3, 1
  %shr30 = and i32 %and29, 3
  %phyifsel = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 1
  %18 = ptrtoint ptr %phyifsel to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shr30, ptr %phyifsel, align 4
  %and43 = lshr i32 %3, 4
  %shr44 = and i32 %and43, 1
  %vlhash = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 2
  %19 = ptrtoint ptr %vlhash to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shr44, ptr %vlhash, align 4
  %and57 = lshr i32 %3, 5
  %shr58 = and i32 %and57, 1
  %sma = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 3
  %20 = ptrtoint ptr %sma to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shr58, ptr %sma, align 4
  %and71 = lshr i32 %3, 6
  %shr72 = and i32 %and71, 1
  %rwk = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 4
  %21 = ptrtoint ptr %rwk to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shr72, ptr %rwk, align 4
  %and85 = lshr i32 %3, 7
  %shr86 = and i32 %and85, 1
  %mgk = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 5
  %22 = ptrtoint ptr %mgk to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shr86, ptr %mgk, align 4
  %and99 = lshr i32 %3, 8
  %shr100 = and i32 %and99, 1
  %mmc = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 6
  %23 = ptrtoint ptr %mmc to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shr100, ptr %mmc, align 4
  %and113 = lshr i32 %3, 9
  %shr114 = and i32 %and113, 1
  %aoe = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 7
  %24 = ptrtoint ptr %aoe to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shr114, ptr %aoe, align 4
  %and127 = lshr i32 %3, 12
  %shr128 = and i32 %and127, 1
  %ts = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 8
  %25 = ptrtoint ptr %ts to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shr128, ptr %ts, align 4
  %and141 = lshr i32 %3, 13
  %shr142 = and i32 %and141, 1
  %eee = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 9
  %26 = ptrtoint ptr %eee to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %shr142, ptr %eee, align 4
  %and155 = lshr i32 %3, 14
  %shr156 = and i32 %and155, 1
  %tx_coe = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 10
  %27 = ptrtoint ptr %tx_coe to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %shr156, ptr %tx_coe, align 4
  %and169 = lshr i32 %3, 16
  %shr170 = and i32 %and169, 1
  %rx_coe = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 11
  %28 = ptrtoint ptr %rx_coe to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %shr170, ptr %rx_coe, align 4
  %and183 = lshr i32 %3, 18
  %shr184 = and i32 %and183, 31
  %addn_mac = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 12
  %29 = ptrtoint ptr %addn_mac to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shr184, ptr %addn_mac, align 4
  %and197 = lshr i32 %3, 25
  %shr198 = and i32 %and197, 3
  %ts_src = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 13
  %30 = ptrtoint ptr %ts_src to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %shr198, ptr %ts_src, align 4
  %and211 = lshr i32 %3, 27
  %shr212 = and i32 %and211, 1
  %sa_vlan_ins = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 14
  %31 = ptrtoint ptr %sa_vlan_ins to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %shr212, ptr %sa_vlan_ins, align 4
  %and225 = and i32 %7, 31
  %rx_fifo_size = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 15
  %32 = ptrtoint ptr %rx_fifo_size to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and225, ptr %rx_fifo_size, align 4
  %and239 = lshr i32 %7, 6
  %shr240 = and i32 %and239, 31
  %tx_fifo_size = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 16
  %33 = ptrtoint ptr %tx_fifo_size to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %shr240, ptr %tx_fifo_size, align 4
  %and253 = lshr i32 %7, 13
  %shr254 = and i32 %and253, 1
  %adv_ts_hi = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 17
  %34 = ptrtoint ptr %adv_ts_hi to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %shr254, ptr %adv_ts_hi, align 4
  %and281 = lshr i32 %7, 16
  %shr282 = and i32 %and281, 1
  %dcb = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 19
  %35 = ptrtoint ptr %dcb to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %shr282, ptr %dcb, align 4
  %and295 = lshr i32 %7, 17
  %shr296 = and i32 %and295, 1
  %sph = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 20
  %36 = ptrtoint ptr %sph to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %shr296, ptr %sph, align 4
  %and309 = lshr i32 %7, 18
  %shr310 = and i32 %and309, 1
  %tso = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 21
  %37 = ptrtoint ptr %tso to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %shr310, ptr %tso, align 4
  %and323 = lshr i32 %7, 19
  %shr324 = and i32 %and323, 1
  %dma_debug = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 22
  %38 = ptrtoint ptr %dma_debug to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %shr324, ptr %dma_debug, align 4
  %and337 = lshr i32 %7, 20
  %shr338 = and i32 %and337, 1
  %rss = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 23
  %39 = ptrtoint ptr %rss to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %shr338, ptr %rss, align 4
  %and365 = lshr i32 %7, 24
  %shr366 = and i32 %and365, 7
  %hash_table_size = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 25
  %40 = ptrtoint ptr %hash_table_size to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %shr366, ptr %hash_table_size, align 4
  %and379 = lshr i32 %7, 27
  %shr380 = and i32 %and379, 15
  %l3l4_filter_num = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 26
  %41 = ptrtoint ptr %l3l4_filter_num to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %shr380, ptr %l3l4_filter_num, align 4
  %and449 = lshr i32 %11, 24
  %shr450 = and i32 %and449, 7
  %pps_out_num = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 31
  %42 = ptrtoint ptr %pps_out_num to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %shr450, ptr %pps_out_num, align 4
  %and463 = lshr i32 %11, 28
  %shr464 = and i32 %and463, 7
  %aux_snap_num = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 32
  %43 = ptrtoint ptr %aux_snap_num to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %shr464, ptr %aux_snap_num, align 4
  %switch.tableidx = add nsw i32 %shr366, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %44 = icmp ult i32 %switch.tableidx, 3
  br i1 %44, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.xlgmac_get_all_hw_features, i32 0, i32 %switch.tableidx
  %45 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %45)
  %switch.load = load i32, ptr %switch.gep, align 4
  %46 = ptrtoint ptr %hash_table_size to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %switch.load, ptr %hash_table_size, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %tx_ch_cnt = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 30
  %and435 = lshr i32 %11, 18
  %shr436 = and i32 %and435, 15
  %rx_ch_cnt = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 29
  %and421 = lshr i32 %11, 12
  %shr422 = and i32 %and421, 15
  %tx_q_cnt = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 28
  %and407 = lshr i32 %11, 6
  %shr408 = and i32 %and407, 15
  %rx_q_cnt = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 27
  %and393 = and i32 %11, 15
  %tc_cnt = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 24
  %and351 = lshr i32 %7, 21
  %shr352 = and i32 %and351, 7
  %dma_width = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 18
  %and267 = lshr i32 %7, 14
  %shr268 = and i32 %and267, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr268)
  %switch.selectcmp = icmp eq i32 %shr268, 1
  %switch.select = select i1 %switch.selectcmp, i32 40, i32 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr268)
  %switch.selectcmp634 = icmp eq i32 %shr268, 2
  %switch.select635 = select i1 %switch.selectcmp634, i32 48, i32 %switch.select
  %47 = ptrtoint ptr %dma_width to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %switch.select635, ptr %dma_width, align 4
  %inc = add nuw nsw i32 %and393, 1
  %48 = ptrtoint ptr %rx_q_cnt to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %inc, ptr %rx_q_cnt, align 4
  %inc482 = add nuw nsw i32 %shr408, 1
  %49 = ptrtoint ptr %tx_q_cnt to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %inc482, ptr %tx_q_cnt, align 4
  %inc484 = add nuw nsw i32 %shr422, 1
  %50 = ptrtoint ptr %rx_ch_cnt to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %inc484, ptr %rx_ch_cnt, align 4
  %inc486 = add nuw nsw i32 %shr436, 1
  %51 = ptrtoint ptr %tx_ch_cnt to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %inc486, ptr %tx_ch_cnt, align 4
  %inc488 = add nuw nsw i32 %shr352, 1
  %52 = ptrtoint ptr %tc_cnt to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %inc488, ptr %tc_cnt, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @xlgmac_print_all_hw_features(ptr nocapture noundef %pdata) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_tx_queues(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_get_num_default_rss_queues() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_rx_queues(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_rss_key_fill(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xlgmac_get_netdev_ops() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xlgmac_get_ethtool_ops() local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xlgmac_init_desc_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xlgmac_init_hw_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !120, !122, !124, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !147}
!llvm.module.flags = !{!149, !150, !151, !152, !153, !154, !155, !156}
!llvm.ident = !{!157}

!0 = !{ptr @__UNIQUE_ID_file351, !1, !"__UNIQUE_ID_file351", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_license352, !1, !"__UNIQUE_ID_license352", i1 false, i1 false}
!3 = !{ptr @__param_debug, !4, !"__param_debug", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 27, i32 1}
!5 = !{ptr @__UNIQUE_ID_debugtype353, !4, !"__UNIQUE_ID_debugtype353", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_debug354, !7, !"__UNIQUE_ID_debug354", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 28, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 238, i32 3}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @xlgmac_drv_probe._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @xlgmac_drv_probe._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @xlgmac_drv_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 251, i32 2}
!18 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 256, i32 3}
!21 = !{ptr @xlgmac_drv_probe._entry.6, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @xlgmac_drv_probe._entry_ptr.8, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 262, i32 3}
!25 = !{ptr @xlgmac_drv_probe._entry.9, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @xlgmac_drv_probe._entry_ptr.11, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 297, i32 3}
!29 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @xlgmac_dump_tx_desc.__UNIQUE_ID_ddebug367, !28, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 299, i32 3}
!34 = !{ptr @xlgmac_dump_tx_desc.__UNIQUE_ID_ddebug368, !33, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!35 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 321, i32 2}
!39 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @xlgmac_dump_rx_desc.__UNIQUE_ID_ddebug369, !38, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 323, i32 2}
!43 = !{ptr @xlgmac_dump_rx_desc.__UNIQUE_ID_ddebug370, !42, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 339, i32 2}
!46 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @xlgmac_print_pkt.__UNIQUE_ID_ddebug371, !45, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 341, i32 2}
!50 = !{ptr @xlgmac_print_pkt.__UNIQUE_ID_ddebug372, !49, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!51 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 344, i32 2}
!55 = !{ptr @xlgmac_print_pkt.__UNIQUE_ID_ddebug373, !54, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 345, i32 2}
!58 = !{ptr @xlgmac_print_pkt.__UNIQUE_ID_ddebug374, !57, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 346, i32 2}
!61 = !{ptr @xlgmac_print_pkt.__UNIQUE_ID_ddebug375, !60, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 353, i32 3}
!64 = !{ptr @xlgmac_print_pkt.__UNIQUE_ID_ddebug378, !63, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!65 = !{ptr @xlgmac_print_pkt.__UNIQUE_ID_ddebug379, !66, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 356, i32 2}
!67 = distinct !{null, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 549, i32 9}
!69 = distinct !{null, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 552, i32 9}
!71 = distinct !{null, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 555, i32 9}
!73 = distinct !{null, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 558, i32 9}
!75 = distinct !{null, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 569, i32 9}
!77 = distinct !{null, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 572, i32 9}
!79 = distinct !{null, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 575, i32 9}
!81 = distinct !{null, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 578, i32 9}
!83 = distinct !{null, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 581, i32 9}
!85 = distinct !{null, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 584, i32 9}
!87 = distinct !{null, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 587, i32 9}
!89 = distinct !{null, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 590, i32 9}
!91 = distinct !{null, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 593, i32 9}
!93 = distinct !{null, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 596, i32 9}
!95 = distinct !{null, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 599, i32 9}
!97 = distinct !{null, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 602, i32 9}
!99 = distinct !{null, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 684, i32 9}
!101 = distinct !{null, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 687, i32 9}
!103 = distinct !{null, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 690, i32 9}
!105 = distinct !{null, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 693, i32 9}
!107 = distinct !{null, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 696, i32 9}
!109 = distinct !{null, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 705, i32 9}
!111 = distinct !{null, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 708, i32 9}
!113 = distinct !{null, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 711, i32 9}
!115 = distinct !{null, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 714, i32 9}
!117 = distinct !{null, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 717, i32 9}
!119 = !{ptr @__param_str_debug, !4, !"__param_str_debug", i1 false, i1 false}
!120 = !{ptr @debug, !121, !"debug", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 26, i32 12}
!122 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 99, i32 3}
!124 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @xlgmac_init._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @xlgmac_init._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 113, i32 3}
!129 = !{ptr @xlgmac_init._entry.58, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @xlgmac_init._entry_ptr.60, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.62, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 121, i32 3}
!133 = !{ptr @xlgmac_init._entry.61, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @xlgmac_init._entry_ptr.63, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.65, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 134, i32 3}
!137 = !{ptr @xlgmac_init._entry.64, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @xlgmac_init._entry_ptr.66, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.68, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 146, i32 3}
!141 = !{ptr @xlgmac_init._entry.67, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @xlgmac_init._entry_ptr.69, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.70, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 57, i32 27}
!145 = !{ptr @.str.71, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 58, i32 26}
!147 = !{ptr @dev_addr, !148, !"dev_addr", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-common.c", i32 32, i32 22}
!149 = !{i32 1, !"wchar_size", i32 2}
!150 = !{i32 1, !"min_enum_size", i32 4}
!151 = !{i32 8, !"branch-target-enforcement", i32 0}
!152 = !{i32 8, !"sign-return-address", i32 0}
!153 = !{i32 8, !"sign-return-address-all", i32 0}
!154 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!155 = !{i32 7, !"uwtable", i32 1}
!156 = !{i32 7, !"frame-pointer", i32 2}
!157 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!158 = !{i64 2148710249, i64 2148710254, i64 2148710267, i64 2148710311, i64 2148710345, i64 2148710366}
!159 = !{i64 6255134}
!160 = !{i64 2156643903}
!161 = !{i64 2156644424}
!162 = !{i64 2156644945}
!163 = !{i64 2156645466}

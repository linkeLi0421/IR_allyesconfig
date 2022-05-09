; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/micrel/ks8842.c_pt.bc'
source_filename = "../drivers/net/ethernet/micrel/ks8842.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ks8842_platform_data = type { [6 x i8], i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.ks8842_adapter = type { ptr, i32, i32, %struct.tasklet_struct, %struct.spinlock, %struct.work_struct, ptr, ptr, %struct.ks8842_tx_dma_ctl, %struct.ks8842_rx_dma_ctl }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.121, i32 }
%union.anon.121 = type { ptr }
%struct.ks8842_tx_dma_ctl = type { ptr, ptr, ptr, %struct.scatterlist, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ks8842_rx_dma_ctl = type { ptr, ptr, ptr, %struct.scatterlist, %struct.tasklet_struct, i32 }
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
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_ks8842__359_1254_ks8842_platform_driver_init6 = internal global ptr @ks8842_platform_driver_init, section ".initcall6.init", align 4
@ks8842_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ks8842_probe, ptr @ks8842_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ks8842_platform_driver_exit = internal global ptr @ks8842_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description360 = internal constant [53 x i8] c"ks8842.description=Timberdale KS8842 ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author361 = internal constant [57 x i8] c"ks8842.author=Mocean Laboratories <info@mocean-labs.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file362 = internal constant [47 x i8] c"ks8842.file=drivers/net/ethernet/micrel/ks8842\00", section ".modinfo", align 1
@__UNIQUE_ID_license363 = internal constant [22 x i8] c"ks8842.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias364 = internal constant [29 x i8] c"ks8842.alias=platform:ks8842\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ks8842\00", [25 x i8] zeroinitializer }, align 32
@ks8842_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1141, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid resource\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ks8842_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/ethernet/micrel/ks8842.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ks8842_probe._entry_ptr = internal global ptr @ks8842_probe._entry, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@ks8842_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&adapter->timeout_work)\00", [54 x i8] zeroinitializer }, align 32
@ks8842_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&adapter->lock\00", [17 x i8] zeroinitializer }, align 32
@ks8842_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @ks8842_open, ptr @ks8842_close, ptr @ks8842_xmit_frame, ptr null, ptr null, ptr null, ptr null, ptr @ks8842_set_mac, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ks8842_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ks8842_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"eth%d\00", [26 x i8] zeroinitializer }, align 32
@ks8842_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016ks8842: Found chip, family: 0x%x, id: 0x%x, rev: 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@ks8842_probe._entry_ptr.12 = internal global ptr @ks8842_probe._entry.10, section ".printk_index", align 4
@ks8842_tx_timeout_work.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.3, ptr @.str.14, i8 1, i8 14, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ks8842_tx_timeout_work\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: entry\0A\00", [21 x i8] zeroinitializer }, align 32
@__ks8842_start_new_rx_dma._entry = internal constant %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 588, ptr null, ptr null }, align 1
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013ks8842: Failed to start RX DMA: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"__ks8842_start_new_rx_dma\00", [38 x i8] zeroinitializer }, align 32
@__ks8842_start_new_rx_dma._entry_ptr = internal global ptr @__ks8842_start_new_rx_dma._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@ks8842_dma_rx_cb.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 0, i8 -47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ks8842_dma_rx_cb\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX DMA finished\0A\00", [47 x i8] zeroinitializer }, align 32
@ks8842_tasklet.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.3, ptr @.str.22, i8 0, i8 -72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ks8842_tasklet\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s - ISR: 0x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@ks8842_handle_rx.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.3, ptr @.str.24, i8 0, i8 -81, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ks8842_handle_rx\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s Entry - rx_data: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@ks8842_rx_frame.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 0, i8 -96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ks8842_rx_frame\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s - rx_data: status: %x\0A\00", [38 x i8] zeroinitializer }, align 32
@ks8842_rx_frame.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 0, i8 -94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ks8842_update_rx_counters.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.3, ptr @.str.28, i8 0, i8 -123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ks8842_update_rx_counters\00", [38 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RX packet, len: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@ks8842_update_rx_err_counters.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 0, i8 -126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ks8842_update_rx_err_counters\00", [34 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RX error, status: %x\0A\00", [42 x i8] zeroinitializer }, align 32
@ks8842_handle_tx.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.3, ptr @.str.32, i8 0, i8 -79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ks8842_handle_tx\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - entry, sr: %x\0A\00", [44 x i8] zeroinitializer }, align 32
@ks8842_handle_rx_overrun.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.3, ptr @.str.14, i8 0, i8 -76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ks8842_handle_rx_overrun\00", [39 x i8] zeroinitializer }, align 32
@ks8842_open.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.3, ptr @.str.35, i8 0, i8 -13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ks8842_open\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s - entry\0A\00", [20 x i8] zeroinitializer }, align 32
@ks8842_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.3, i32 987, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014ks8842: Failed to initiate DMA, running PIO\0A\00", [49 x i8] zeroinitializer }, align 32
@ks8842_open._entry_ptr = internal global ptr @ks8842_open._entry, section ".printk_index", align 4
@ks8842_open._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.34, ptr @.str.3, i32 1004, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013ks8842: Failed to request IRQ: %d: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@ks8842_open._entry_ptr.39 = internal global ptr @ks8842_open._entry.37, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ks8842_rx_frame_dma_tasklet.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.3, ptr @.str.26, i8 0, i8 -103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ks8842_rx_frame_dma_tasklet\00", [36 x i8] zeroinitializer }, align 32
@ks8842_irq.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.3, ptr @.str.22, i8 0, i8 -55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ks8842_irq\00", [21 x i8] zeroinitializer }, align 32
@ks8842_close.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.3, ptr @.str.35, i8 0, i8 -3, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ks8842_close\00", [19 x i8] zeroinitializer }, align 32
@ks8842_xmit_frame.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.3, ptr @.str.14, i8 1, i8 3, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ks8842_xmit_frame\00", [46 x i8] zeroinitializer }, align 32
@ks8842_tx_frame_dma.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.3, ptr @.str.45, i8 0, i8 107, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ks8842_tx_frame_dma\00", [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: TX ongoing\0A\00", [16 x i8] zeroinitializer }, align 32
@ks8842_dma_tx_cb.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.3, ptr @.str.47, i8 0, i8 -44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ks8842_dma_tx_cb\00", [47 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TX DMA finished\0A\00", [47 x i8] zeroinitializer }, align 32
@ks8842_tx_frame.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.3, ptr @.str.49, i8 0, i8 118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ks8842_tx_frame\00", [16 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: len %u head %p data %p tail %p end %p\0A\00", [53 x i8] zeroinitializer }, align 32
@ks8842_set_mac.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.3, ptr @.str.14, i8 1, i8 10, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ks8842_set_mac\00", [17 x i8] zeroinitializer }, align 32
@ks8842_tx_timeout.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.3, ptr @.str.14, i8 1, i8 21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ks8842_tx_timeout\00", [46 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.52 = private unnamed_addr constant [23 x i8] c"ks8842_platform_driver\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1246, i32 31 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1248, i32 11 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1141, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1155, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1182, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [18 x i8] c"ks8842_netdev_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1116, i32 36 }
@___asan_gen_.91 = private unnamed_addr constant [19 x i8] c"ks8842_ethtool_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1125, i32 33 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1208, i32 23 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1215, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1082, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 588, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 326, i32 6 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 837, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 739, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 700, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 641, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 534, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 520, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 711, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 720, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 973, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 986, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1004, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 611, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 806, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1015, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1037, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 428, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 849, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 472, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1064, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.218 = private constant [40 x i8] c"../drivers/net/ethernet/micrel/ks8842.c\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1111, i32 2 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__UNIQUE_ID_alias364, ptr @__UNIQUE_ID_author361, ptr @__UNIQUE_ID_description360, ptr @__UNIQUE_ID_file362, ptr @__UNIQUE_ID_license363, ptr @__exitcall_ks8842_platform_driver_exit, ptr @__initcall__kmod_ks8842__359_1254_ks8842_platform_driver_init6, ptr @__ks8842_start_new_rx_dma._entry, ptr @__ks8842_start_new_rx_dma._entry_ptr, ptr @ks8842_open._entry, ptr @ks8842_open._entry.37, ptr @ks8842_open._entry_ptr, ptr @ks8842_open._entry_ptr.39, ptr @ks8842_platform_driver_exit, ptr @ks8842_probe._entry, ptr @ks8842_probe._entry.10, ptr @ks8842_probe._entry_ptr, ptr @ks8842_probe._entry_ptr.12, ptr @ks8842_platform_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ks8842_probe.__key, ptr @.str.6, ptr @ks8842_probe.__key.7, ptr @.str.8, ptr @ks8842_netdev_ops, ptr @ks8842_ethtool_ops, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8842_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8842_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8842_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8842_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8842_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8842_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8842_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8842_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8842_open._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ks8842_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ks8842_platform_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ks8842_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @ks8842_platform_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks8842_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %addr.i190 = alloca [6 x i8], align 1
  %addr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call1, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call1, i32 0, i32 1
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %3
  %add.i = add i32 %sub.i, %5
  %call4 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %3, i32 noundef %add.i, ptr noundef nonnull @.str, i32 noundef 0) #8
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @alloc_etherdev_mqs(i32 noundef 228, i32 noundef 1, i32 noundef 1) #8
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end7.err_alloc_etherdev_crit_edge, label %if.end11

if.end7.err_alloc_etherdev_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_alloc_etherdev

if.end11:                                         ; preds = %if.end7
  %parent = getelementptr inbounds %struct.net_device, ptr %call8, i32 0, i32 133, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call8, i32 2304
  %netdev15 = getelementptr i8, ptr %call8, i32 2428
  %7 = ptrtoint ptr %netdev15 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call8, ptr %netdev15, align 4
  %timeout_work = getelementptr i8, ptr %call8, i32 2384
  tail call void @__init_work(ptr noundef %timeout_work, i32 noundef 0) #8
  %8 = ptrtoint ptr %timeout_work to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %timeout_work, align 4
  %lockdep_map = getelementptr i8, ptr %call8, i32 2400
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @ks8842_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry20 = getelementptr i8, ptr %call8, i32 2388
  %9 = ptrtoint ptr %entry20 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry20, ptr %entry20, align 4
  %prev.i = getelementptr i8, ptr %call8, i32 2392
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry20, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call8, i32 2396
  %11 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ks8842_tx_timeout_work, ptr %func, align 4
  %12 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call1, align 4
  %14 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %end.i, align 4
  %sub.i188 = sub i32 1, %13
  %add.i189 = add i32 %sub.i188, %15
  %call26 = tail call ptr @ioremap(i32 noundef %13, i32 noundef %add.i189) #8
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call26, ptr %add.ptr.i, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %call1, i32 0, i32 3
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %conf_flags = getelementptr i8, ptr %call8, i32 2312
  %19 = ptrtoint ptr %conf_flags to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %conf_flags, align 4
  %tobool28.not = icmp eq ptr %call26, null
  br i1 %tobool28.not, label %if.end11.err_ioremap_crit_edge, label %if.end30

if.end11.err_ioremap_crit_edge:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_ioremap

if.end30:                                         ; preds = %if.end11
  %call31 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  %irq = getelementptr i8, ptr %call8, i32 2308
  %20 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call31, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp = icmp slt i32 %call31, 0
  br i1 %cmp, label %if.end30.err_get_irq_crit_edge, label %if.end35

if.end30.err_get_irq_crit_edge:                   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_get_irq

if.end35:                                         ; preds = %if.end30
  %parent37 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %parent37 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent37, align 8
  %tobool38.not = icmp eq ptr %22, null
  %dev. = select i1 %tobool38.not, ptr %dev, ptr %22
  %dev42 = getelementptr i8, ptr %call8, i32 2432
  %23 = ptrtoint ptr %dev42 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dev., ptr %dev42, align 4
  %24 = ptrtoint ptr %conf_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %conf_flags, align 4
  %and = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool44.not = icmp ne i32 %and, 0
  %tobool45.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool44.not, i1 true, i1 %tobool45.not
  br i1 %or.cond, label %if.end35.if.else_crit_edge, label %land.lhs.true46

if.end35.if.else_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true46:                                  ; preds = %if.end35
  %tx_dma_channel = getelementptr inbounds %struct.ks8842_platform_data, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %tx_dma_channel to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_dma_channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp47.not = icmp eq i32 %27, -1
  br i1 %cmp47.not, label %land.lhs.true46.if.else_crit_edge, label %land.lhs.true48

land.lhs.true46.if.else_crit_edge:                ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true48:                                  ; preds = %land.lhs.true46
  %rx_dma_channel = getelementptr inbounds %struct.ks8842_platform_data, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %rx_dma_channel to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_dma_channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp49.not = icmp eq i32 %29, -1
  br i1 %cmp49.not, label %land.lhs.true48.if.else_crit_edge, label %if.then50

land.lhs.true48.if.else_crit_edge:                ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then50:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #10
  %channel = getelementptr i8, ptr %call8, i32 2528
  %30 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %channel, align 4
  %31 = ptrtoint ptr %tx_dma_channel to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_dma_channel, align 4
  br label %if.end58

if.else:                                          ; preds = %land.lhs.true48.if.else_crit_edge, %land.lhs.true46.if.else_crit_edge, %if.end35.if.else_crit_edge
  %channel55 = getelementptr i8, ptr %call8, i32 2528
  %33 = ptrtoint ptr %channel55 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %channel55, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.then50
  %.sink = phi i32 [ -1, %if.else ], [ %32, %if.then50 ]
  %channel57 = getelementptr i8, ptr %call8, i32 2468
  %34 = ptrtoint ptr %channel57 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink, ptr %channel57, align 4
  %tasklet = getelementptr i8, ptr %call8, i32 2316
  tail call void @tasklet_setup(ptr noundef %tasklet, ptr noundef nonnull @ks8842_tasklet) #8
  %lock = getelementptr i8, ptr %call8, i32 2340
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @ks8842_probe.__key.7, i16 noundef signext 3) #8
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call8, i32 0, i32 16
  %35 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @ks8842_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call8, i32 0, i32 44
  %36 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @ks8842_ethtool_ops, ptr %ethtool_ops, align 16
  %addr_len = getelementptr inbounds %struct.net_device, ptr %call8, i32 0, i32 56
  %37 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %addr_len, align 1
  %conv = zext i8 %38 to i32
  br i1 %tobool45.not, label %if.end58.if.end81_crit_edge, label %for.cond.preheader

if.end58.if.end81_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

for.cond.preheader:                               ; preds = %if.end58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp67198.not = icmp eq i8 %38, 0
  br i1 %cmp67198.not, label %for.cond.preheader.if.end81_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end81_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0199 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [6 x i8], ptr %1, i32 0, i32 %i.0199
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp70.not = icmp eq i8 %40, 0
  br i1 %cmp70.not, label %for.inc, label %if.then78

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0199, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.if.end81_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.if.end81_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

if.then78:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dev_addr_mod(ptr noundef %call8, i32 noundef 0, ptr noundef nonnull %1, i32 noundef 6) #8
  br label %if.end81

if.end81:                                         ; preds = %if.then78, %for.inc.if.end81_crit_edge, %for.cond.preheader.if.end81_crit_edge, %if.end58.if.end81_crit_edge
  %i.1 = phi i32 [ %i.0199, %if.then78 ], [ %conv, %if.end58.if.end81_crit_edge ], [ 0, %for.cond.preheader.if.end81_crit_edge ], [ %conv, %for.inc.if.end81_crit_edge ]
  %41 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %addr_len, align 1
  %conv83 = zext i8 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %conv83)
  %cmp84 = icmp eq i32 %i.1, %conv83
  br i1 %cmp84, label %if.then86, label %if.end81.if.end90_crit_edge

if.end81.if.end90_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

if.then86:                                        ; preds = %if.end81
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #8
  %43 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 1
  %44 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 2
  %45 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 3
  %46 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 4
  %47 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 5
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %49, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 512) #8, !srcloc !138
  %50 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr.i, align 4
  %52 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %51) #8, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  %53 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %47, align 1
  %54 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i.1.i = getelementptr i8, ptr %55, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.1.i, i16 512) #8, !srcloc !138
  %56 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.1.i = getelementptr i8, ptr %57, i32 1
  %58 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.1.i) #8, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  %59 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %46, align 1
  %60 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i.2.i = getelementptr i8, ptr %61, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.2.i, i16 512) #8, !srcloc !138
  %62 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.2.i = getelementptr i8, ptr %63, i32 2
  %64 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.2.i) #8, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  %65 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %45, align 1
  %66 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i.3.i = getelementptr i8, ptr %67, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.3.i, i16 512) #8, !srcloc !138
  %68 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.3.i = getelementptr i8, ptr %69, i32 3
  %70 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.3.i) #8, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  %71 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %44, align 1
  %72 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i.4.i = getelementptr i8, ptr %73, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.4.i, i16 512) #8, !srcloc !138
  %74 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.4.i = getelementptr i8, ptr %75, i32 4
  %76 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.4.i) #8, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  %77 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %43, align 1
  %78 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i.5.i = getelementptr i8, ptr %79, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.5.i, i16 512) #8, !srcloc !138
  %80 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.5.i = getelementptr i8, ptr %81, i32 5
  %82 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.5.i) #8, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  %83 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %addr.i, align 1
  %84 = ptrtoint ptr %netdev15 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %netdev15, align 4
  call void @dev_addr_mod(ptr noundef %85, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #8
  %86 = ptrtoint ptr %conf_flags to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %conf_flags, align 4
  %and.i = and i32 %87, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %88 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i40.i = getelementptr i8, ptr %89, i32 14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i40.i, i16 512) #8
  %90 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %add.ptr.i, align 4
  %92 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %91) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  %93 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i41.i = getelementptr i8, ptr %94, i32 14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i41.i, i16 9984) #8
  %95 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %add.ptr.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i32.i = getelementptr i8, ptr %96, i32 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i32.i, i16 %92) #8, !srcloc !138
  %97 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i33.i = getelementptr i8, ptr %98, i32 14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i33.i, i16 512) #8, !srcloc !138
  %99 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i34.i = getelementptr i8, ptr %100, i32 2
  %101 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i34.i) #8, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %102 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i35.i = getelementptr i8, ptr %103, i32 14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i35.i, i16 9984) #8, !srcloc !138
  %104 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i36.i = getelementptr i8, ptr %105, i32 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i36.i, i16 %101) #8, !srcloc !138
  %106 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i37.i = getelementptr i8, ptr %107, i32 14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i37.i, i16 512) #8, !srcloc !138
  %108 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i38.i = getelementptr i8, ptr %109, i32 4
  %110 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i38.i) #8, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %111 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i39.i = getelementptr i8, ptr %112, i32 14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i39.i, i16 9984) #8, !srcloc !138
  %113 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %add.ptr.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %114, i16 %110) #8, !srcloc !138
  br label %ks8842_init_mac_addr.exit

if.else.i:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %96, i16 %92) #8, !srcloc !138
  %115 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i42.i = getelementptr i8, ptr %116, i32 14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i42.i, i16 512) #8, !srcloc !138
  %117 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i43.i = getelementptr i8, ptr %118, i32 2
  %119 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i43.i) #8, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %120 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i44.i = getelementptr i8, ptr %121, i32 14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i44.i, i16 9984) #8, !srcloc !138
  %122 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i45.i = getelementptr i8, ptr %123, i32 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i45.i, i16 %119) #8, !srcloc !138
  %124 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i46.i = getelementptr i8, ptr %125, i32 14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i46.i, i16 512) #8, !srcloc !138
  %126 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i47.i = getelementptr i8, ptr %127, i32 4
  %128 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i47.i) #8, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %129 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i48.i = getelementptr i8, ptr %130, i32 14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i48.i, i16 9984) #8, !srcloc !138
  %131 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i49.i = getelementptr i8, ptr %132, i32 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i49.i, i16 %128) #8, !srcloc !138
  br label %ks8842_init_mac_addr.exit

ks8842_init_mac_addr.exit:                        ; preds = %if.else.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call8, i32 0, i32 86
  %133 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev_addr, align 64
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %134, align 4
  %137 = and i32 %136, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool.i.not.i = icmp eq i32 %137, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %ks8842_init_mac_addr.exit.if.then88_crit_edge

ks8842_init_mac_addr.exit.if.then88_crit_edge:    ; preds = %ks8842_init_mac_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then88

is_valid_ether_addr.exit:                         ; preds = %ks8842_init_mac_addr.exit
  %add.ptr.i.i = getelementptr i8, ptr %134, i32 4
  %138 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %139 to i32
  %or.i.i = or i32 %136, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.then88_crit_edge, label %is_valid_ether_addr.exit.if.end90_crit_edge

is_valid_ether_addr.exit.if.end90_crit_edge:      ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

is_valid_ether_addr.exit.if.then88_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then88

if.then88:                                        ; preds = %is_valid_ether_addr.exit.if.then88_crit_edge, %ks8842_init_mac_addr.exit.if.then88_crit_edge
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i190) #8
  %140 = call ptr @memset(ptr %addr.i190, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i190, i32 noundef 6) #8
  %141 = ptrtoint ptr %addr.i190 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %addr.i190, align 1
  %143 = and i8 %142, -4
  %144 = or i8 %143, 2
  store i8 %144, ptr %addr.i190, align 1
  call void @dev_addr_mod(ptr noundef %call8, i32 noundef 0, ptr noundef nonnull %addr.i190, i32 noundef 6) #8
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %call8, i32 0, i32 55
  %145 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i190) #8
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %is_valid_ether_addr.exit.if.end90_crit_edge, %if.end81.if.end90_crit_edge
  %146 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i191 = getelementptr i8, ptr %147, i32 14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i191, i16 8192) #8, !srcloc !138
  %148 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %add.ptr.i, align 4
  %150 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %149) #8, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %151 = call ptr @memcpy(ptr %call8, ptr @.str.9, i32 6)
  %call94 = call i32 @register_netdev(ptr noundef nonnull %call8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %if.end90.err_get_irq_crit_edge

if.end90.err_get_irq_crit_edge:                   ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_get_irq

if.end97:                                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  %152 = call i16 @llvm.bswap.i16(i16 %150) #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %153 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %call8, ptr %driver_data.i.i, align 4
  %conv101 = zext i16 %152 to i32
  %154 = lshr i32 %conv101, 8
  %155 = lshr i32 %conv101, 4
  %and105 = and i32 %155, 15
  %156 = lshr i32 %conv101, 1
  %and108 = and i32 %156, 7
  %call109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %154, i32 noundef %and105, i32 noundef %and108) #11
  br label %cleanup

err_get_irq:                                      ; preds = %if.end90.err_get_irq_crit_edge, %if.end30.err_get_irq_crit_edge
  %err.0 = phi i32 [ %call94, %if.end90.err_get_irq_crit_edge ], [ %call31, %if.end30.err_get_irq_crit_edge ]
  %157 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %add.ptr.i, align 4
  call void @iounmap(ptr noundef %158) #8
  br label %err_ioremap

err_ioremap:                                      ; preds = %err_get_irq, %if.end11.err_ioremap_crit_edge
  %err.1 = phi i32 [ %err.0, %err_get_irq ], [ -12, %if.end11.err_ioremap_crit_edge ]
  call void @free_netdev(ptr noundef nonnull %call8) #8
  br label %err_alloc_etherdev

err_alloc_etherdev:                               ; preds = %err_ioremap, %if.end7.err_alloc_etherdev_crit_edge
  %err.2 = phi i32 [ %err.1, %err_ioremap ], [ -12, %if.end7.err_alloc_etherdev_crit_edge ]
  %159 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %call1, align 4
  %161 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %end.i, align 4
  %sub.i193 = sub i32 1, %160
  %add.i194 = add i32 %sub.i193, %162
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %160, i32 noundef %add.i194) #8
  br label %cleanup

cleanup:                                          ; preds = %err_alloc_etherdev, %if.end97, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end97 ], [ -22, %do.end ], [ %err.2, %err_alloc_etherdev ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks8842_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  tail call void @unregister_netdev(ptr noundef %1) #8
  %tasklet = getelementptr i8, ptr %1, i32 2316
  tail call void @tasklet_kill(ptr noundef %tasklet) #8
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  tail call void @iounmap(ptr noundef %3) #8
  tail call void @free_netdev(ptr noundef %1) #8
  %4 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call2, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call2, i32 0, i32 1
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %5
  %add.i = add i32 %sub.i, %7
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %5, i32 noundef %add.i) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks8842_tx_timeout_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -80
  %netdev1 = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks8842_tx_timeout_work.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks8842_tx_timeout_work, %if.then)) #8
          to label %do.body9 [label %if.then], !srcloc !143

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks8842_tx_timeout_work.__UNIQUE_ID_ddebug357, ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13) #8
  br label %do.body9

do.body9:                                         ; preds = %if.then, %entry
  %lock = getelementptr i8, ptr %work, i32 -44
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %channel = getelementptr i8, ptr %work, i32 84
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp17.not = icmp eq i32 %3, -1
  br i1 %cmp17.not, label %do.body9.if.end23_crit_edge, label %land.lhs.true

do.body9.if.end23_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

land.lhs.true:                                    ; preds = %do.body9
  %channel19 = getelementptr i8, ptr %work, i32 144
  %4 = ptrtoint ptr %channel19 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp20.not = icmp eq i32 %5, -1
  br i1 %cmp20.not, label %land.lhs.true.if.end23_crit_edge, label %if.then22

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then22:                                        ; preds = %land.lhs.true
  %dma_tx.i = getelementptr i8, ptr %work, i32 52
  %dma_rx.i = getelementptr i8, ptr %work, i32 88
  %adesc.i = getelementptr i8, ptr %work, i32 56
  %6 = ptrtoint ptr %adesc.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %adesc.i, align 4
  %7 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma_tx.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.then22.if.end.i_crit_edge, label %if.then.i

if.then22.if.end.i_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.then22
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 47
  %11 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 %12(ptr noundef nonnull %8) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i.i, %if.then.i.if.end.i_crit_edge, %if.then22.if.end.i_crit_edge
  %adesc2.i = getelementptr i8, ptr %work, i32 92
  %13 = ptrtoint ptr %adesc2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %adesc2.i, align 4
  %14 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_rx.i, align 4
  %tobool4.not.i = icmp eq ptr %15, null
  br i1 %tobool4.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then5.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %device_terminate_all.i30.i = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 47
  %18 = ptrtoint ptr %device_terminate_all.i30.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device_terminate_all.i30.i, align 4
  %tobool.not.i31.i = icmp eq ptr %19, null
  br i1 %tobool.not.i31.i, label %if.then5.i.if.end8.i_crit_edge, label %if.then.i33.i

if.then5.i.if.end8.i_crit_edge:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then.i33.i:                                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i32.i = tail call i32 %19(ptr noundef nonnull %15) #8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then.i33.i, %if.then5.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  %dma_address.i = getelementptr i8, ptr %work, i32 112
  %20 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_address.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool9.not.i = icmp eq i32 %21, 0
  br i1 %tobool9.not.i, label %if.end8.i.ks8842_stop_dma.exit_crit_edge, label %if.then10.i

if.end8.i.ks8842_stop_dma.exit_crit_edge:         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ks8842_stop_dma.exit

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr i8, ptr %work, i32 48
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %23, i32 noundef %21, i32 noundef 2048, i32 noundef 2, i32 noundef 0) #8
  br label %ks8842_stop_dma.exit

ks8842_stop_dma.exit:                             ; preds = %if.then10.i, %if.end8.i.ks8842_stop_dma.exit_crit_edge
  %24 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %dma_address.i, align 4
  %skb.i = getelementptr i8, ptr %work, i32 96
  %25 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %skb.i, align 4
  tail call void @consume_skb(ptr noundef %26) #8
  %27 = ptrtoint ptr %skb.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %skb.i, align 4
  br label %if.end23

if.end23:                                         ; preds = %ks8842_stop_dma.exit, %land.lhs.true.if.end23_crit_edge, %do.body9.if.end23_crit_edge
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 4608) #8, !srcloc !138
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %31, i16 0) #8, !srcloc !138
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i53 = getelementptr i8, ptr %33, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i53, i16 4608) #8, !srcloc !138
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i = getelementptr i8, ptr %35, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 -1) #8, !srcloc !138
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %36 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %37, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #8
  tail call fastcc void @ks8842_reset_hw(ptr noundef %add.ptr)
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %38 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_addr, align 64
  tail call fastcc void @ks8842_write_mac_addr(ptr noundef %add.ptr, ptr noundef %39)
  %40 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %41, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 11520) #8, !srcloc !138
  %42 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i54 = getelementptr i8, ptr %43, i32 2
  %44 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i54) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %45 = and i16 %44, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool.not.i55 = icmp eq i16 %45, 0
  br i1 %tobool.not.i55, label %if.else.i, label %if.then.i56

if.then.i56:                                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @netif_carrier_on(ptr noundef %1) #8
  %46 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %47) #8
  br label %ks8842_update_link_status.exit

if.else.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %49, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #8
  tail call void @netif_carrier_off(ptr noundef %1) #8
  br label %ks8842_update_link_status.exit

ks8842_update_link_status.exit:                   ; preds = %if.else.i, %if.then.i56
  %50 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %cmp27.not = icmp eq i32 %51, -1
  br i1 %cmp27.not, label %ks8842_update_link_status.exit.if.end36_crit_edge, label %land.lhs.true29

ks8842_update_link_status.exit.if.end36_crit_edge: ; preds = %ks8842_update_link_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

land.lhs.true29:                                  ; preds = %ks8842_update_link_status.exit
  %channel31 = getelementptr i8, ptr %work, i32 144
  %52 = ptrtoint ptr %channel31 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %channel31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %cmp32.not = icmp eq i32 %53, -1
  br i1 %cmp32.not, label %land.lhs.true29.if.end36_crit_edge, label %if.then34

land.lhs.true29.if.end36_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then34:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  %call35 = tail call fastcc i32 @__ks8842_start_new_rx_dma(ptr noundef %1)
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %land.lhs.true29.if.end36_crit_edge, %ks8842_update_link_status.exit.if.end36_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks8842_tasklet(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -12
  %netdev1 = getelementptr i8, ptr %t, i32 112
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 4
  %lock = getelementptr i8, ptr %t, i32 24
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %add.ptr7 = getelementptr i8, ptr %3, i32 14
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr7) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #8
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 4608) #8, !srcloc !138
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 2
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #8, !srcloc !141
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks8842_tasklet.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks8842_tasklet, %if.then)) #8
          to label %do.end21 [label %if.then], !srcloc !143

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv17 = zext i16 %10 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks8842_tasklet.__UNIQUE_ID_ddebug349, ptr noundef %1, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef %conv17) #8
  br label %do.end21

do.end21:                                         ; preds = %if.then, %entry
  %channel = getelementptr i8, ptr %t, i32 152
  %11 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp22.not = icmp eq i32 %12, -1
  br i1 %cmp22.not, label %do.end21.if.end30_crit_edge, label %land.lhs.true

do.end21.if.end30_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

land.lhs.true:                                    ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #10
  %channel24 = getelementptr i8, ptr %t, i32 212
  %13 = ptrtoint ptr %channel24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %channel24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp25.not = icmp eq i32 %14, -1
  %15 = and i16 %10, -8193
  %spec.select = select i1 %cmp25.not, i16 %10, i16 %15
  br label %if.end30

if.end30:                                         ; preds = %land.lhs.true, %do.end21.if.end30_crit_edge
  %isr.0 = phi i16 [ %10, %do.end21.if.end30_crit_edge ], [ %spec.select, %land.lhs.true ]
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i166 = getelementptr i8, ptr %17, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i166, i16 4608) #8, !srcloc !138
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i167 = getelementptr i8, ptr %19, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  %20 = tail call i16 @llvm.bswap.i16(i16 %isr.0) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i167, i16 %20) #8, !srcloc !138
  %conf_flags = getelementptr i8, ptr %t, i32 -4
  %21 = ptrtoint ptr %conf_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %conf_flags, align 4
  %and31 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.then33, label %if.end30.if.end36_crit_edge

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr, align 4
  %add.ptr35 = getelementptr i8, ptr %24, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 16777216) #8, !srcloc !145
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end30.if.end36_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %25 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end36.cleanup_crit_edge, label %if.end39

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end39:                                         ; preds = %if.end36
  %conv40 = zext i16 %isr.0 to i32
  %and41 = and i32 %conv40, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end39.if.end44_crit_edge, label %if.then43

if.end39.if.end44_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then43:                                        ; preds = %if.end39
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %28, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 11520) #8, !srcloc !138
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i168 = getelementptr i8, ptr %30, i32 2
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i168) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %32 = and i16 %31, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool.not.i = icmp eq i16 %32, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @netif_carrier_on(ptr noundef %1) #8
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %33 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %34) #8
  br label %if.end44

if.else.i:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  %_tx.i.i4.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %35 = ptrtoint ptr %_tx.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %_tx.i.i4.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %36, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #8
  tail call void @netif_carrier_off(ptr noundef %1) #8
  br label %if.end44

if.end44:                                         ; preds = %if.else.i, %if.then.i, %if.end39.if.end44_crit_edge
  %and46 = and i32 %conv40, 8320
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end44.if.end59_crit_edge, label %land.lhs.true48

if.end44.if.end59_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

land.lhs.true48:                                  ; preds = %if.end44
  %37 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp51.not = icmp eq i32 %38, -1
  br i1 %cmp51.not, label %land.lhs.true48.if.then58_crit_edge, label %land.lhs.true53

land.lhs.true48.if.then58_crit_edge:              ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then58

land.lhs.true53:                                  ; preds = %land.lhs.true48
  %channel55 = getelementptr i8, ptr %t, i32 212
  %39 = ptrtoint ptr %channel55 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %channel55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp56.not = icmp eq i32 %40, -1
  br i1 %cmp56.not, label %land.lhs.true53.if.then58_crit_edge, label %land.lhs.true53.if.end59_crit_edge

land.lhs.true53.if.end59_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

land.lhs.true53.if.then58_crit_edge:              ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then58

if.then58:                                        ; preds = %land.lhs.true53.if.then58_crit_edge, %land.lhs.true48.if.then58_crit_edge
  tail call fastcc void @ks8842_handle_rx(ptr noundef %1, ptr noundef %add.ptr)
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %land.lhs.true53.if.end59_crit_edge, %if.end44.if.end59_crit_edge
  %and61 = and i32 %conv40, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end59.if.end64_crit_edge, label %if.then63

if.end59.if.end64_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then63:                                        ; preds = %if.end59
  %41 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i.i169 = getelementptr i8, ptr %42, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i169, i16 4096) #8, !srcloc !138
  %43 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i170 = getelementptr i8, ptr %44, i32 2
  %45 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i170) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks8842_handle_tx.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks8842_tasklet, %if.then.i171)) #8
          to label %do.end6.i [label %if.then.i171], !srcloc !143

if.then.i171:                                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  %46 = tail call i16 @llvm.bswap.i16(i16 %45) #8
  %conv.i = zext i16 %46 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks8842_handle_tx.__UNIQUE_ID_ddebug347, ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i32 noundef %conv.i) #8
  br label %do.end6.i

do.end6.i:                                        ; preds = %if.then.i171, %if.then63
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 1
  %47 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tx_packets.i, align 4
  %inc.i = add i32 %48, 1
  store i32 %inc.i, ptr %tx_packets.i, align 4
  %_tx.i.i.i172 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %49 = ptrtoint ptr %_tx.i.i.i172 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %_tx.i.i.i172, align 128
  %state.i.i.i173 = getelementptr inbounds %struct.netdev_queue, ptr %50, i32 0, i32 13
  %51 = ptrtoint ptr %state.i.i.i173 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %state.i.i.i173, align 4
  %and1.i.i.i.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %do.end6.i.if.end64_crit_edge, label %if.then8.i

do.end6.i.if.end64_crit_edge:                     ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then8.i:                                       ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @netif_tx_wake_queue(ptr noundef %50) #8
  br label %if.end64

if.end64:                                         ; preds = %if.then8.i, %do.end6.i.if.end64_crit_edge, %if.end59.if.end64_crit_edge
  %and66 = and i32 %conv40, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end64.if.end69_crit_edge, label %if.then68

if.end64.if.end69_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then68:                                        ; preds = %if.end64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks8842_handle_rx_overrun.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks8842_tasklet, %if.then.i174)) #8
          to label %ks8842_handle_rx_overrun.exit [label %if.then.i174], !srcloc !143

if.then.i174:                                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks8842_handle_rx_overrun.__UNIQUE_ID_ddebug348, ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.33) #8
  br label %ks8842_handle_rx_overrun.exit

ks8842_handle_rx_overrun.exit:                    ; preds = %if.then.i174, %if.then68
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %53 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_errors.i, align 8
  %inc.i175 = add i32 %54, 1
  store i32 %inc.i175, ptr %rx_errors.i, align 8
  %rx_fifo_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 14
  %55 = ptrtoint ptr %rx_fifo_errors.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rx_fifo_errors.i, align 8
  %inc6.i = add i32 %56, 1
  store i32 %inc6.i, ptr %rx_fifo_errors.i, align 8
  br label %if.end69

if.end69:                                         ; preds = %ks8842_handle_rx_overrun.exit, %if.end64.if.end69_crit_edge
  %and71 = and i32 %conv40, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.end69.if.end74_crit_edge, label %if.then73

if.end69.if.end74_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i.i176 = getelementptr i8, ptr %58, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i176, i16 4096) #8, !srcloc !138
  %59 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %add.ptr, align 4
  %61 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %60) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %62 = and i16 %61, -257
  %63 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %add.ptr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %64, i16 %62) #8, !srcloc !138
  %65 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i.i177 = getelementptr i8, ptr %66, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i177, i16 4096) #8, !srcloc !138
  %67 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %add.ptr, align 4
  %69 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %68) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %70 = or i16 %69, 256
  %71 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %add.ptr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %72, i16 %70) #8, !srcloc !138
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %if.end69.if.end74_crit_edge
  %and76 = and i32 %conv40, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end74.do.body81_crit_edge, label %if.then78

if.end74.do.body81_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body81

if.then78:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i.i178 = getelementptr i8, ptr %74, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i178, i16 4096) #8, !srcloc !138
  %75 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i179 = getelementptr i8, ptr %76, i32 4
  %77 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i179) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %78 = and i16 %77, -257
  %79 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %add.ptr, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %80, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4.i.i, i16 %78) #8, !srcloc !138
  %81 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i.i180 = getelementptr i8, ptr %82, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i180, i16 4096) #8, !srcloc !138
  %83 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i181 = getelementptr i8, ptr %84, i32 4
  %85 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i181) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %86 = or i16 %85, 256
  %87 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %add.ptr, align 4
  %add.ptr4.i.i182 = getelementptr i8, ptr %88, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4.i.i182, i16 %86) #8, !srcloc !138
  br label %do.body81

do.body81:                                        ; preds = %if.then78, %if.end74.do.body81_crit_edge
  %call89 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %89 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %90)
  %cmp96.not = icmp eq i32 %90, -1
  br i1 %cmp96.not, label %do.body81.if.else_crit_edge, label %land.lhs.true98

do.body81.if.else_crit_edge:                      ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true98:                                  ; preds = %do.body81
  %channel100 = getelementptr i8, ptr %t, i32 212
  %91 = ptrtoint ptr %channel100 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %channel100, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %92)
  %cmp101.not = icmp eq i32 %92, -1
  br i1 %cmp101.not, label %land.lhs.true98.if.else_crit_edge, label %if.then103

land.lhs.true98.if.else_crit_edge:                ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then103:                                       ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i183 = getelementptr i8, ptr %94, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i183, i16 4608) #8, !srcloc !138
  %95 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %add.ptr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %96, i16 -32597) #8, !srcloc !138
  br label %if.end104

if.else:                                          ; preds = %land.lhs.true98.if.else_crit_edge, %do.body81.if.else_crit_edge
  %97 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i184 = getelementptr i8, ptr %98, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i184, i16 4608) #8, !srcloc !138
  %99 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %add.ptr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %100, i16 -32533) #8, !srcloc !138
  br label %if.end104

if.end104:                                        ; preds = %if.else, %if.then103
  %101 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %add.ptr, align 4
  %add.ptr106 = getelementptr i8, ptr %102, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr106, i16 %4) #8, !srcloc !138
  %103 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %104)
  %cmp109.not = icmp eq i32 %104, -1
  br i1 %cmp109.not, label %if.end104.if.end117_crit_edge, label %land.lhs.true111

if.end104.if.end117_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end117

land.lhs.true111:                                 ; preds = %if.end104
  %channel113 = getelementptr i8, ptr %t, i32 212
  %105 = ptrtoint ptr %channel113 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %channel113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %106)
  %cmp114.not = icmp eq i32 %106, -1
  br i1 %cmp114.not, label %land.lhs.true111.if.end117_crit_edge, label %if.then116

land.lhs.true111.if.end117_crit_edge:             ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end117

if.then116:                                       ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #10
  %107 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i185 = getelementptr i8, ptr %108, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i185, i32 16777216) #8, !srcloc !145
  br label %if.end117

if.end117:                                        ; preds = %if.then116, %land.lhs.true111.if.end117_crit_edge, %if.end104.if.end117_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call89) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end117, %if.end36.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ks8842_reset_hw(ptr noundef readonly %adapter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conf_flags.i = getelementptr inbounds %struct.ks8842_adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %conf_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %conf_flags.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 768) #8, !srcloc !138
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 256) #8, !srcloc !138
  tail call void @msleep(i32 noundef 10) #8
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 0) #8, !srcloc !138
  br label %ks8842_reset.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr2.i = getelementptr i8, ptr %3, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 16777216) #8, !srcloc !145
  tail call void @msleep(i32 noundef 20) #8
  br label %ks8842_reset.exit

ks8842_reset.exit:                                ; preds = %if.else.i, %if.then.i
  %8 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter, align 4
  %add.ptr.i.i27 = getelementptr i8, ptr %9, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i27, i16 4096) #8, !srcloc !138
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %11, i16 3584) #8, !srcloc !138
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 4
  %add.ptr.i.i28 = getelementptr i8, ptr %13, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i28, i16 4096) #8, !srcloc !138
  %14 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter, align 4
  %add.ptr.i29 = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i29, i16 -6140) #8, !srcloc !138
  %16 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter, align 4
  %add.ptr.i.i30 = getelementptr i8, ptr %17, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i30, i16 4352) #8, !srcloc !138
  %18 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter, align 4
  %add.ptr.i31 = getelementptr i8, ptr %19, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i31, i16 64) #8, !srcloc !138
  %20 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter, align 4
  %add.ptr.i.i32 = getelementptr i8, ptr %21, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i32, i16 4352) #8, !srcloc !138
  %22 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter, align 4
  %add.ptr.i33 = getelementptr i8, ptr %23, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i33, i16 64) #8, !srcloc !138
  %24 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter, align 4
  %add.ptr.i.i34 = getelementptr i8, ptr %25, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i34, i16 0) #8, !srcloc !138
  %26 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter, align 4
  %add.ptr.i35 = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i35, i16 16) #8, !srcloc !138
  %28 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adapter, align 4
  %add.ptr.i.i36 = getelementptr i8, ptr %29, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i36, i16 8192) #8, !srcloc !138
  %30 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adapter, align 4
  %add.ptr.i37 = getelementptr i8, ptr %31, i32 2
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i37) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %33 = or i16 %32, 1
  %34 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adapter, align 4
  %add.ptr4.i = getelementptr i8, ptr %35, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4.i, i16 %33) #8, !srcloc !138
  %36 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %adapter, align 4
  %add.ptr.i.i38 = getelementptr i8, ptr %37, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i38, i16 8192) #8, !srcloc !138
  %38 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adapter, align 4
  %add.ptr.i39 = getelementptr i8, ptr %39, i32 4
  %40 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i39) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %41 = or i16 %40, 2048
  %42 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %adapter, align 4
  %add.ptr4.i41 = getelementptr i8, ptr %43, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4.i41, i16 %41) #8, !srcloc !138
  %44 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %adapter, align 4
  %add.ptr.i.i42 = getelementptr i8, ptr %45, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i42, i16 12288) #8, !srcloc !138
  %46 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %adapter, align 4
  %add.ptr.i43 = getelementptr i8, ptr %47, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i43, i16 1822) #8, !srcloc !138
  %48 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %adapter, align 4
  %add.ptr.i.i44 = getelementptr i8, ptr %49, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i44, i16 12544) #8, !srcloc !138
  %50 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %adapter, align 4
  %add.ptr.i45 = getelementptr i8, ptr %51, i32 2
  %52 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i45) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %53 = or i16 %52, 32
  %54 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %adapter, align 4
  %add.ptr4.i47 = getelementptr i8, ptr %55, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4.i47, i16 %53) #8, !srcloc !138
  %56 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %adapter, align 4
  %add.ptr.i.i.i48 = getelementptr i8, ptr %57, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i48, i16 4096) #8, !srcloc !138
  %58 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %adapter, align 4
  %60 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %59) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %61 = or i16 %60, 256
  %62 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %adapter, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %63, i16 %61) #8, !srcloc !138
  %64 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %adapter, align 4
  %add.ptr.i.i.i49 = getelementptr i8, ptr %65, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i49, i16 4096) #8, !srcloc !138
  %66 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %adapter, align 4
  %add.ptr.i.i50 = getelementptr i8, ptr %67, i32 4
  %68 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i50) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %69 = or i16 %68, 256
  %70 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %adapter, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %71, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4.i.i, i16 %69) #8, !srcloc !138
  %72 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %adapter, align 4
  %add.ptr.i.i51 = getelementptr i8, ptr %73, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i51, i16 4608) #8, !srcloc !138
  %74 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %adapter, align 4
  %add.ptr.i52 = getelementptr i8, ptr %75, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i52, i16 -1) #8, !srcloc !138
  %channel = getelementptr inbounds %struct.ks8842_adapter, ptr %adapter, i32 0, i32 8, i32 4
  %76 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %77)
  %cmp.not = icmp eq i32 %77, -1
  br i1 %cmp.not, label %ks8842_reset.exit.if.else_crit_edge, label %land.lhs.true

ks8842_reset.exit.if.else_crit_edge:              ; preds = %ks8842_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %ks8842_reset.exit
  %channel1 = getelementptr inbounds %struct.ks8842_adapter, ptr %adapter, i32 0, i32 9, i32 5
  %78 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %channel1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %79)
  %cmp2.not = icmp eq i32 %79, -1
  br i1 %cmp2.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %adapter, align 4
  %add.ptr = getelementptr i8, ptr %81, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 -32629) #8, !srcloc !138
  %82 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %adapter, align 4
  %add.ptr.i.i53 = getelementptr i8, ptr %83, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i53, i16 4608) #8, !srcloc !138
  %84 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %adapter, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %85, i16 -32597) #8, !srcloc !138
  br label %if.end6

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %ks8842_reset.exit.if.else_crit_edge
  %86 = ptrtoint ptr %conf_flags.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %conf_flags.i, align 4
  %and = and i32 %87, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then3, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %88 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %adapter, align 4
  %add.ptr5 = getelementptr i8, ptr %89, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5, i16 -32533) #8, !srcloc !138
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.else.if.end_crit_edge
  %90 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %adapter, align 4
  %add.ptr.i.i54 = getelementptr i8, ptr %91, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i54, i16 4608) #8, !srcloc !138
  %92 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %adapter, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %93, i16 -32533) #8, !srcloc !138
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  %94 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %adapter, align 4
  %add.ptr.i.i55 = getelementptr i8, ptr %95, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i55, i16 8192) #8, !srcloc !138
  %96 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %adapter, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %97, i16 256) #8, !srcloc !138
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ks8842_write_mac_addr(ptr noundef %adapter, ptr nocapture noundef readonly %mac) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ks8842_adapter, ptr %adapter, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %conf_flags = getelementptr inbounds %struct.ks8842_adapter, ptr %adapter, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.053 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %sub7 = sub nuw nsw i32 5, %i.053
  %arrayidx = getelementptr i8, ptr %mac, i32 %sub7
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 512) #8, !srcloc !138
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %i.053
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %1) #8, !srcloc !147
  %6 = ptrtoint ptr %conf_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %conf_flags, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 4
  %add.ptr.i.i41 = getelementptr i8, ptr %11, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i41, i16 9984) #8, !srcloc !138
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 4
  %add.ptr.i42 = getelementptr i8, ptr %13, i32 %i.053
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i42, i8 %9) #8, !srcloc !147
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.053, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  %14 = ptrtoint ptr %conf_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %conf_flags, align 4
  %and13 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %for.end.if.end20_crit_edge, label %if.then15

for.end.if.end20_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then15:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter, align 4
  %add.ptr.i.i43 = getelementptr i8, ptr %17, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i43, i16 512) #8, !srcloc !138
  %18 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter, align 4
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %19) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %21 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adapter, align 4
  %add.ptr.i.i44 = getelementptr i8, ptr %22, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i44, i16 9984) #8, !srcloc !138
  %23 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter, align 4
  %add.ptr.i45 = getelementptr i8, ptr %24, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i45, i16 %20) #8, !srcloc !138
  %25 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter, align 4
  %add.ptr.i.i46 = getelementptr i8, ptr %26, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i46, i16 512) #8, !srcloc !138
  %27 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter, align 4
  %add.ptr.i47 = getelementptr i8, ptr %28, i32 2
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i47) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %30 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adapter, align 4
  %add.ptr.i.i48 = getelementptr i8, ptr %31, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i48, i16 9984) #8, !srcloc !138
  %32 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %adapter, align 4
  %add.ptr.i49 = getelementptr i8, ptr %33, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i49, i16 %29) #8, !srcloc !138
  %34 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adapter, align 4
  %add.ptr.i.i50 = getelementptr i8, ptr %35, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i50, i16 512) #8, !srcloc !138
  %36 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %adapter, align 4
  %add.ptr.i51 = getelementptr i8, ptr %37, i32 4
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i51) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %39 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %adapter, align 4
  %add.ptr.i.i52 = getelementptr i8, ptr %40, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i52, i16 9984) #8, !srcloc !138
  %41 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %adapter, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %42, i16 %38) #8, !srcloc !138
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %for.end.if.end20_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ks8842_start_new_rx_dma(ptr noundef %netdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_rx = getelementptr i8, ptr %netdev, i32 2472
  %sg1 = getelementptr i8, ptr %netdev, i32 2484
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %netdev, i32 noundef 2048, i32 noundef 2592) #8
  %skb = getelementptr i8, ptr %netdev, i32 2480
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %skb, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call void @sg_init_table(ptr noundef %sg1, i32 noundef 1) #8
  %dev = getelementptr i8, ptr %netdev, i32 2432
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %3 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %call.i64 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %6) #8
  br i1 %call.i64, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.then
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !148

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %2) #8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %2, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #8
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @debug_dma_map_single(ptr noundef %2, ptr noundef %6, i32 noundef 2048) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %11 = load ptr, ptr @mem_map, align 4
  %12 = ptrtoint ptr %6 to i32
  %sub.i = add i32 %12, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i65 = getelementptr %struct.page, ptr %11, i32 %shr.i
  %and.i = and i32 %12, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %2, ptr noundef %add.ptr.i65, i32 noundef %and.i, i32 noundef 2048, i32 noundef 2, i32 noundef 0) #8
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %dma_address = getelementptr i8, ptr %netdev, i32 2496
  %13 = ptrtoint ptr %dma_address to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %retval.0.i, ptr %dma_address, align 4
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %15, i32 noundef %retval.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %if.then10, label %if.end

if.then10:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %dma_address to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %dma_address, align 4
  br label %out

if.end:                                           ; preds = %dma_map_single_attrs.exit
  %dma_length = getelementptr i8, ptr %netdev, i32 2500
  %17 = ptrtoint ptr %dma_length to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2048, ptr %dma_length, align 4
  %18 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dma_rx, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end.dmaengine_prep_slave_sg.exit.thread_crit_edge, label %lor.lhs.false.i

if.end.dmaengine_prep_slave_sg.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_prep_slave_sg.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %tobool1.not.i = icmp eq ptr %21, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.dmaengine_prep_slave_sg.exit.thread_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.dmaengine_prep_slave_sg.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_prep_slave_sg.exit.thread

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %21, i32 0, i32 39
  %22 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %23, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.dmaengine_prep_slave_sg.exit.thread_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.dmaengine_prep_slave_sg.exit.thread_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_prep_slave_sg.exit.thread

dmaengine_prep_slave_sg.exit.thread:              ; preds = %lor.lhs.false2.i.dmaengine_prep_slave_sg.exit.thread_crit_edge, %lor.lhs.false.i.dmaengine_prep_slave_sg.exit.thread_crit_edge, %if.end.dmaengine_prep_slave_sg.exit.thread_crit_edge
  %adesc70 = getelementptr i8, ptr %netdev, i32 2476
  %24 = ptrtoint ptr %adesc70 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %adesc70, align 4
  br label %out

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i66 = tail call ptr %23(ptr noundef nonnull %19, ptr noundef %sg1, i32 noundef 1, i32 noundef 2, i32 noundef 1, ptr noundef null) #8
  %adesc = getelementptr i8, ptr %netdev, i32 2476
  %25 = ptrtoint ptr %adesc to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i66, ptr %adesc, align 4
  %tobool14.not = icmp eq ptr %call.i66, null
  br i1 %tobool14.not, label %dmaengine_prep_slave_sg.exit.out_crit_edge, label %if.end16

dmaengine_prep_slave_sg.exit.out_crit_edge:       ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end16:                                         ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i66, i32 0, i32 8
  %26 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %netdev, ptr %callback_param, align 4
  %27 = ptrtoint ptr %adesc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adesc, align 4
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @ks8842_dma_rx_cb, ptr %callback, align 4
  %30 = load ptr, ptr %adesc, align 4
  %tx_submit = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %tx_submit to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tx_submit, align 4
  %call21 = tail call i32 %32(ptr noundef %30) #8
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dma_address22 = getelementptr i8, ptr %netdev, i32 2496
  %33 = ptrtoint ptr %dma_address22 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %dma_address22, align 4
  br label %out

out:                                              ; preds = %if.else, %dmaengine_prep_slave_sg.exit.out_crit_edge, %dmaengine_prep_slave_sg.exit.thread, %if.then10
  %dma_address24 = getelementptr i8, ptr %netdev, i32 2496
  %34 = ptrtoint ptr %dma_address24 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_address24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool25.not = icmp eq i32 %35, 0
  br i1 %tobool25.not, label %out.if.end29_crit_edge, label %if.then26

out.if.end29_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then26:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %dev27 = getelementptr i8, ptr %netdev, i32 2432
  %36 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev27, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %37, i32 noundef %35, i32 noundef 2048, i32 noundef 2, i32 noundef 0) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %out.if.end29_crit_edge
  %38 = ptrtoint ptr %dma_address24 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %dma_address24, align 4
  %39 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %skb, align 4
  tail call void @consume_skb(ptr noundef %40) #8
  %41 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %skb, align 4
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef -12) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end16
  %retval.0 = phi i32 [ -12, %if.end29 ], [ 0, %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks8842_dma_rx_cb(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks8842_dma_rx_cb.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks8842_dma_rx_cb, %if.then)) #8
          to label %do.end6 [label %if.then], !srcloc !143

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks8842_dma_rx_cb.__UNIQUE_ID_ddebug351, ptr noundef %data, ptr noundef nonnull @.str.20) #8
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %adesc = getelementptr i8, ptr %data, i32 2476
  %0 = ptrtoint ptr %adesc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adesc, align 4
  %tobool7.not = icmp eq ptr %1, null
  br i1 %tobool7.not, label %do.end6.if.end10_crit_edge, label %if.then8

do.end6.if.end10_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then8:                                         ; preds = %do.end6
  %state.i = getelementptr i8, ptr %data, i32 2508
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then8.if.end10_crit_edge

if.then8.if.end10_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %tasklet = getelementptr i8, ptr %data, i32 2504
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then.i, %if.then8.if.end10_crit_edge, %do.end6.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ks8842_handle_rx(ptr noundef %netdev, ptr nocapture noundef readonly %adapter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 4096) #8, !srcloc !138
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 10
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %5 = and i16 %4, -225
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks8842_handle_rx.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks8842_handle_rx, %if.then)) #8
          to label %do.end8 [label %if.then], !srcloc !143

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv6 = zext i16 %6 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks8842_handle_rx.__UNIQUE_ID_ddebug346, ptr noundef %netdev, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, i32 noundef %conv6) #8
  br label %do.end8

do.end8:                                          ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool9.not21 = icmp eq i16 %5, 0
  br i1 %tobool9.not21, label %do.end8.while.end_crit_edge, label %do.end8.while.body_crit_edge

do.end8.while.body_crit_edge:                     ; preds = %do.end8
  br label %while.body

do.end8.while.end_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end8.while.body_crit_edge
  tail call fastcc void @ks8842_rx_frame(ptr noundef %netdev, ptr noundef %adapter)
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter, align 4
  %add.ptr.i.i18 = getelementptr i8, ptr %8, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i18, i16 4096) #8, !srcloc !138
  %9 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adapter, align 4
  %add.ptr.i19 = getelementptr i8, ptr %10, i32 10
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i19) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %12 = and i16 %11, -225
  %tobool9.not = icmp eq i16 %12, 0
  br i1 %tobool9.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.end8.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ks8842_rx_frame(ptr noundef %netdev, ptr nocapture noundef readonly %adapter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conf_flags = getelementptr inbounds %struct.ks8842_adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %conf_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %conf_flags, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 4
  %add.ptr.i.i115 = getelementptr i8, ptr %3, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i115, i16 4352) #8
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 4
  %add.ptr.i116 = getelementptr i8, ptr %5, i32 8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i116) #8, !srcloc !141
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %conv = zext i16 %7 to i32
  %8 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter, align 4
  %add.ptr.i.i113 = getelementptr i8, ptr %9, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i113, i16 4352) #8, !srcloc !138
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 4
  %add.ptr.i114 = getelementptr i8, ptr %11, i32 10
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i114) #8, !srcloc !141
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %conv2 = zext i16 %13 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks8842_rx_frame.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks8842_rx_frame, %if.then8)) #8
          to label %if.end33 [label %if.then8], !srcloc !143

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks8842_rx_frame.__UNIQUE_ID_ddebug344, ptr noundef %netdev, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25, i32 noundef %conv) #8
  br label %if.end33

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i116) #8, !srcloc !149
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  %shr = lshr i32 %15, 16
  %and12 = and i32 %shr, 2047
  %and13 = and i32 %15, 65535
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks8842_rx_frame.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks8842_rx_frame, %if.then27)) #8
          to label %if.end33 [label %if.then27], !srcloc !143

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks8842_rx_frame.__UNIQUE_ID_ddebug345, ptr noundef %netdev, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25, i32 noundef %and13) #8
  br label %if.end33

if.end33:                                         ; preds = %if.then27, %if.else, %if.then8, %if.then
  %len.0 = phi i32 [ %conv2, %if.then8 ], [ %and12, %if.then27 ], [ %conv2, %if.then ], [ %and12, %if.else ]
  %status.0 = phi i32 [ %conv, %if.then8 ], [ %and13, %if.then27 ], [ %conv, %if.then ], [ %and13, %if.else ]
  %16 = and i32 %status.0, 32775
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %16)
  %17 = icmp eq i32 %16, 32768
  br i1 %17, label %if.then38, label %if.else70

if.then38:                                        ; preds = %if.end33
  %add.i.i = add nuw nsw i32 %len.0, 5
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %netdev, i32 noundef %add.i.i, i32 noundef 2592) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.else68, label %if.then41

if.then41:                                        ; preds = %if.then38
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %18 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %20 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %21, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks8842_update_rx_counters.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks8842_rx_frame, %if.then.i)) #8
          to label %do.end4.i [label %if.then.i], !srcloc !143

if.then.i:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks8842_update_rx_counters.__UNIQUE_ID_ddebug342, ptr noundef %netdev, ptr noundef nonnull @.str.28, i32 noundef %len.0) #8
  br label %do.end4.i

do.end4.i:                                        ; preds = %if.then.i, %if.then41
  %stats.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36
  %22 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %stats.i, align 8
  %inc.i = add i32 %23, 1
  store i32 %inc.i, ptr %stats.i, align 8
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 2
  %24 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_bytes.i, align 8
  %add.i = add i32 %25, %len.0
  store i32 %add.i, ptr %rx_bytes.i, align 8
  %and.i = and i32 %status.0, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %do.end4.i.ks8842_update_rx_counters.exit_crit_edge, label %if.then7.i

do.end4.i.ks8842_update_rx_counters.exit_crit_edge: ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ks8842_update_rx_counters.exit

if.then7.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %multicast.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 8
  %26 = ptrtoint ptr %multicast.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %multicast.i, align 8
  %inc9.i = add i32 %27, 1
  store i32 %inc9.i, ptr %multicast.i, align 8
  br label %ks8842_update_rx_counters.exit

ks8842_update_rx_counters.exit:                   ; preds = %if.then7.i, %do.end4.i.ks8842_update_rx_counters.exit_crit_edge
  %28 = ptrtoint ptr %conf_flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %conf_flags, align 4
  %and43 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  %call54 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %len.0) #8
  %30 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adapter, align 4
  %add.ptr.i118 = getelementptr i8, ptr %31, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i118, i16 4352) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0)
  %cmp56137.not = icmp eq i32 %len.0, 0
  br i1 %tobool44.not, label %if.else53, label %if.then45

if.then45:                                        ; preds = %ks8842_update_rx_counters.exit
  br i1 %cmp56137.not, label %if.then45.if.end65_crit_edge, label %if.then45.while.body_crit_edge

if.then45.while.body_crit_edge:                   ; preds = %if.then45
  br label %while.body

if.then45.if.end65_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then45.while.body_crit_edge
  %data16.0136 = phi ptr [ %incdec.ptr52, %while.body.while.body_crit_edge ], [ %call54, %if.then45.while.body_crit_edge ]
  %len.1135 = phi i32 [ %sub, %while.body.while.body_crit_edge ], [ %len.0, %if.then45.while.body_crit_edge ]
  %32 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %adapter, align 4
  %add.ptr = getelementptr i8, ptr %33, i32 8
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #8, !srcloc !141
  %35 = tail call i16 @llvm.bswap.i16(i16 %34) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %incdec.ptr = getelementptr i16, ptr %data16.0136, i32 1
  %36 = ptrtoint ptr %data16.0136 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %data16.0136, align 2
  %37 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %adapter, align 4
  %add.ptr50 = getelementptr i8, ptr %38, i32 10
  %39 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr50) #8, !srcloc !141
  %40 = tail call i16 @llvm.bswap.i16(i16 %39) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %incdec.ptr52 = getelementptr i16, ptr %data16.0136, i32 2
  %41 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %incdec.ptr, align 2
  %sub = add nsw i32 %len.1135, -4
  %cmp = icmp ugt i32 %len.1135, 4
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.if.end65_crit_edge

while.body.if.end65_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.else53:                                        ; preds = %ks8842_update_rx_counters.exit
  br i1 %cmp56137.not, label %if.else53.if.end65_crit_edge, label %if.else53.while.body58_crit_edge

if.else53.while.body58_crit_edge:                 ; preds = %if.else53
  br label %while.body58

if.else53.if.end65_crit_edge:                     ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

while.body58:                                     ; preds = %while.body58.while.body58_crit_edge, %if.else53.while.body58_crit_edge
  %data.0139 = phi ptr [ %incdec.ptr62, %while.body58.while.body58_crit_edge ], [ %call54, %if.else53.while.body58_crit_edge ]
  %len.2138 = phi i32 [ %sub63, %while.body58.while.body58_crit_edge ], [ %len.0, %if.else53.while.body58_crit_edge ]
  %42 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %adapter, align 4
  %add.ptr60 = getelementptr i8, ptr %43, i32 8
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60) #8, !srcloc !149
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  %incdec.ptr62 = getelementptr i32, ptr %data.0139, i32 1
  %46 = ptrtoint ptr %data.0139 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %data.0139, align 4
  %sub63 = add nsw i32 %len.2138, -4
  %cmp56 = icmp ugt i32 %len.2138, 4
  br i1 %cmp56, label %while.body58.while.body58_crit_edge, label %while.body58.if.end65_crit_edge

while.body58.if.end65_crit_edge:                  ; preds = %while.body58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

while.body58.while.body58_crit_edge:              ; preds = %while.body58
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body58

if.end65:                                         ; preds = %while.body58.if.end65_crit_edge, %if.else53.if.end65_crit_edge, %while.body.if.end65_crit_edge, %if.then45.if.end65_crit_edge
  %call66 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i.i, ptr noundef %netdev) #8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %47 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %call66, ptr %protocol, align 8
  %call67 = tail call i32 @netif_rx(ptr noundef nonnull %call.i.i) #8
  br label %if.end71

if.else68:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 6
  %48 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rx_dropped, align 8
  %inc = add i32 %49, 1
  store i32 %inc, ptr %rx_dropped, align 8
  br label %if.end71

if.else70:                                        ; preds = %if.end33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks8842_update_rx_err_counters.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks8842_rx_frame, %if.then.i119)) #8
          to label %do.end4.i122 [label %if.then.i119], !srcloc !143

if.then.i119:                                     ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks8842_update_rx_err_counters.__UNIQUE_ID_ddebug341, ptr noundef %netdev, ptr noundef nonnull @.str.30, i32 noundef %status.0) #8
  br label %do.end4.i122

do.end4.i122:                                     ; preds = %if.then.i119, %if.else70
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 4
  %50 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rx_errors.i, align 8
  %inc.i120 = add i32 %51, 1
  store i32 %inc.i120, ptr %rx_errors.i, align 8
  %and.i121 = and i32 %status.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i121)
  %tobool5.not.i = icmp eq i32 %and.i121, 0
  br i1 %tobool5.not.i, label %do.end4.i122.if.end9.i_crit_edge, label %if.then6.i

do.end4.i122.if.end9.i_crit_edge:                 ; preds = %do.end4.i122
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then6.i:                                       ; preds = %do.end4.i122
  call void @__sanitizer_cov_trace_pc() #10
  %rx_length_errors.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 10
  %52 = ptrtoint ptr %rx_length_errors.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rx_length_errors.i, align 8
  %inc8.i = add i32 %53, 1
  store i32 %inc8.i, ptr %rx_length_errors.i, align 8
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %do.end4.i122.if.end9.i_crit_edge
  %and10.i = and i32 %status.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end9.i.if.end15.i_crit_edge, label %if.then12.i

if.end9.i.if.end15.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx_crc_errors.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 12
  %54 = ptrtoint ptr %rx_crc_errors.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rx_crc_errors.i, align 8
  %inc14.i = add i32 %55, 1
  store i32 %inc14.i, ptr %rx_crc_errors.i, align 8
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then12.i, %if.end9.i.if.end15.i_crit_edge
  %and16.i = and i32 %status.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end15.i.if.end71_crit_edge, label %if.then18.i

if.end15.i.if.end71_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx_frame_errors.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 13
  %56 = ptrtoint ptr %rx_frame_errors.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rx_frame_errors.i, align 4
  %inc20.i = add i32 %57, 1
  store i32 %inc20.i, ptr %rx_frame_errors.i, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then18.i, %if.end15.i.if.end71_crit_edge, %if.else68, %if.end65
  %58 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %adapter, align 4
  %add.ptr.i.i123 = getelementptr i8, ptr %59, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i123, i16 0) #8, !srcloc !138
  %60 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %adapter, align 4
  %add.ptr.i124 = getelementptr i8, ptr %61, i32 4
  %62 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i124) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %63 = and i16 %62, -17
  %64 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %adapter, align 4
  %add.ptr4.i = getelementptr i8, ptr %65, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4.i, i16 %63) #8, !srcloc !138
  %66 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %adapter, align 4
  %add.ptr.i.i126 = getelementptr i8, ptr %67, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i126, i16 4352) #8, !srcloc !138
  %68 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %adapter, align 4
  %add.ptr.i127 = getelementptr i8, ptr %69, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i127, i16 256) #8, !srcloc !138
  %70 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %adapter, align 4
  %add.ptr.i.i128 = getelementptr i8, ptr %71, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i128, i16 0) #8, !srcloc !138
  %72 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %adapter, align 4
  %add.ptr.i129 = getelementptr i8, ptr %73, i32 4
  %74 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i129) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %75 = or i16 %74, 16
  %76 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %adapter, align 4
  %add.ptr4.i130 = getelementptr i8, ptr %77, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4.i130, i16 %75) #8, !srcloc !138
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks8842_open(ptr noundef %netdev) #2 align 64 {
entry:
  %mask.i = alloca %struct.dma_cap_mask_t, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks8842_open.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks8842_open, %if.then)) #8
          to label %do.end6 [label %if.then], !srcloc !143

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks8842_open.__UNIQUE_ID_ddebug353, ptr noundef %netdev, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.34) #8
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %channel = getelementptr i8, ptr %netdev, i32 2468
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.not = icmp eq i32 %1, -1
  br i1 %cmp.not, label %do.end6.if.end30_crit_edge, label %land.lhs.true

do.end6.if.end30_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

land.lhs.true:                                    ; preds = %do.end6
  %channel7 = getelementptr i8, ptr %netdev, i32 2528
  %2 = ptrtoint ptr %channel7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp8.not = icmp eq i32 %3, -1
  br i1 %cmp8.not, label %land.lhs.true.if.end30_crit_edge, label %if.then9

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then9:                                         ; preds = %land.lhs.true
  %dma_tx.i = getelementptr i8, ptr %netdev, i32 2436
  %dma_rx.i = getelementptr i8, ptr %netdev, i32 2472
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #8
  %4 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %mask.i, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %mask.i) #8
  call void @_set_bit(i32 noundef 9, ptr noundef nonnull %mask.i) #8
  %sg.i = getelementptr i8, ptr %netdev, i32 2448
  call void @sg_init_table(ptr noundef %sg.i, i32 noundef 1) #8
  %5 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel, align 4
  %7 = inttoptr i32 %6 to ptr
  %call1.i = call ptr @__dma_request_channel(ptr noundef nonnull %mask.i, ptr noundef nonnull @ks8842_dma_filter_fn, ptr noundef %7, ptr noundef null) #8
  %8 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1.i, ptr %dma_tx.i, align 4
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.then9.ks8842_alloc_dma_bufs.exit_crit_edge, label %if.end.i

if.then9.ks8842_alloc_dma_bufs.exit_crit_edge:    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %ks8842_alloc_dma_bufs.exit

if.end.i:                                         ; preds = %if.then9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 2048) #12
  %buf.i = getelementptr i8, ptr %netdev, i32 2444
  %10 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %buf.i, align 4
  %tobool5.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not.i, label %if.end.i.ks8842_alloc_dma_bufs.exit_crit_edge, label %if.end7.i

if.end.i.ks8842_alloc_dma_bufs.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ks8842_alloc_dma_bufs.exit

if.end7.i:                                        ; preds = %if.end.i
  %dev.i = getelementptr i8, ptr %netdev, i32 2432
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %call.i.i = call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call7.i.i) #8
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end7.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !148

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = call ptr @dev_driver_string(ptr noundef %12) #8
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %16, %if.end.i.i.i ], [ %14, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #8
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @debug_dma_map_single(ptr noundef %12, ptr noundef nonnull %call7.i.i, i32 noundef 2048) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %17 = load ptr, ptr @mem_map, align 4
  %18 = ptrtoint ptr %call7.i.i to i32
  %sub.i.i = add i32 %18, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i48.i = getelementptr %struct.page, ptr %17, i32 %shr.i.i
  %and.i.i = and i32 %18, 4088
  %call41.i.i = call i32 @dma_map_page_attrs(ptr noundef %12, ptr noundef %add.ptr.i48.i, i32 noundef %and.i.i, i32 noundef 2048, i32 noundef 1, i32 noundef 0) #8
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %dma_address.i = getelementptr i8, ptr %netdev, i32 2460
  %19 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %retval.0.i.i, ptr %dma_address.i, align 4
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  call void @debug_dma_mapping_error(ptr noundef %21, i32 noundef %retval.0.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i, label %if.then16.i, label %if.end19.i

if.then16.i:                                      ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %dma_address.i, align 4
  br label %ks8842_alloc_dma_bufs.exit

if.end19.i:                                       ; preds = %dma_map_single_attrs.exit.i
  %23 = ptrtoint ptr %channel7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %channel7, align 4
  %25 = inttoptr i32 %24 to ptr
  %call21.i = call ptr @__dma_request_channel(ptr noundef nonnull %mask.i, ptr noundef nonnull @ks8842_dma_filter_fn, ptr noundef %25, ptr noundef null) #8
  %26 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call21.i, ptr %dma_rx.i, align 4
  %tobool24.not.i = icmp eq ptr %call21.i, null
  br i1 %tobool24.not.i, label %if.end19.i.ks8842_alloc_dma_bufs.exit_crit_edge, label %if.then12

if.end19.i.ks8842_alloc_dma_bufs.exit_crit_edge:  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ks8842_alloc_dma_bufs.exit

ks8842_alloc_dma_bufs.exit:                       ; preds = %if.end19.i.ks8842_alloc_dma_bufs.exit_crit_edge, %if.then16.i, %if.end.i.ks8842_alloc_dma_bufs.exit_crit_edge, %if.then9.ks8842_alloc_dma_bufs.exit_crit_edge
  call fastcc void @ks8842_dealloc_dma_bufs(ptr noundef %add.ptr.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #8
  br label %do.end22

if.then12:                                        ; preds = %if.end19.i
  %tasklet.i = getelementptr i8, ptr %netdev, i32 2504
  call void @tasklet_setup(ptr noundef %tasklet.i, ptr noundef nonnull @ks8842_rx_frame_dma_tasklet) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #8
  %call13 = call fastcc i32 @__ks8842_start_new_rx_dma(ptr noundef %netdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.if.end30_crit_edge, label %if.then15

if.then12.if.end30_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @ks8842_dealloc_dma_bufs(ptr noundef %add.ptr.i)
  br label %do.end22

do.end22:                                         ; preds = %if.then15, %ks8842_alloc_dma_bufs.exit
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #11
  call fastcc void @ks8842_dealloc_dma_bufs(ptr noundef %add.ptr.i)
  %27 = ptrtoint ptr %channel7 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %channel7, align 4
  %28 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %channel, align 4
  br label %if.end30

if.end30:                                         ; preds = %do.end22, %if.then12.if.end30_crit_edge, %land.lhs.true.if.end30_crit_edge, %do.end6.if.end30_crit_edge
  call fastcc void @ks8842_reset_hw(ptr noundef %add.ptr.i)
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 86
  %29 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_addr, align 64
  call fastcc void @ks8842_write_mac_addr(ptr noundef %add.ptr.i, ptr noundef %30)
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %32, i32 14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 11520) #8, !srcloc !138
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i64 = getelementptr i8, ptr %34, i32 2
  %35 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i64) #8, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %36 = and i16 %35, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool.not.i65 = icmp eq i16 %36, 0
  br i1 %tobool.not.i65, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  call void @netif_carrier_on(ptr noundef %netdev) #8
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %37 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %_tx.i.i.i, align 128
  call void @netif_tx_wake_queue(ptr noundef %38) #8
  br label %ks8842_update_link_status.exit

if.else.i:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %_tx.i.i4.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %39 = ptrtoint ptr %_tx.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %_tx.i.i4.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %40, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #8
  call void @netif_carrier_off(ptr noundef %netdev) #8
  br label %ks8842_update_link_status.exit

ks8842_update_link_status.exit:                   ; preds = %if.else.i, %if.then.i
  %irq = getelementptr i8, ptr %netdev, i32 2308
  %41 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irq, align 4
  %call.i = call i32 @request_threaded_irq(i32 noundef %42, ptr noundef nonnull @ks8842_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %netdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool32.not = icmp eq i32 %call.i, 0
  br i1 %tobool32.not, label %ks8842_update_link_status.exit.cleanup_crit_edge, label %do.end36

ks8842_update_link_status.exit.cleanup_crit_edge: ; preds = %ks8842_update_link_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end36:                                         ; preds = %ks8842_update_link_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %irq, align 4
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %44, i32 noundef %call.i) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %ks8842_update_link_status.exit.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks8842_close(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks8842_close.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks8842_close, %if.then)) #8
          to label %do.end6 [label %if.then], !srcloc !143

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks8842_close.__UNIQUE_ID_ddebug354, ptr noundef %netdev, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.42) #8
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %timeout_work = getelementptr i8, ptr %netdev, i32 2384
  %call7 = tail call zeroext i1 @cancel_work_sync(ptr noundef %timeout_work) #8
  %channel = getelementptr i8, ptr %netdev, i32 2468
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.not = icmp eq i32 %1, -1
  br i1 %cmp.not, label %do.end6.if.end11_crit_edge, label %land.lhs.true

do.end6.if.end11_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

land.lhs.true:                                    ; preds = %do.end6
  %channel8 = getelementptr i8, ptr %netdev, i32 2528
  %2 = ptrtoint ptr %channel8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp9.not = icmp eq i32 %3, -1
  br i1 %cmp9.not, label %land.lhs.true.if.end11_crit_edge, label %if.then10

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ks8842_dealloc_dma_bufs(ptr noundef %add.ptr.i)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %land.lhs.true.if.end11_crit_edge, %do.end6.if.end11_crit_edge
  %irq = getelementptr i8, ptr %netdev, i32 2308
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call12 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %netdev) #8
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 8192) #8, !srcloc !138
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %9, i16 0) #8, !srcloc !138
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks8842_xmit_frame(ptr noundef %skb, ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks8842_xmit_frame.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks8842_xmit_frame, %if.then)) #8
          to label %do.end6 [label %if.then], !srcloc !143

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks8842_xmit_frame.__UNIQUE_ID_ddebug355, ptr noundef %netdev, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.43) #8
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %channel = getelementptr i8, ptr %netdev, i32 2468
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.not = icmp eq i32 %1, -1
  br i1 %cmp.not, label %do.end6.if.end26_crit_edge, label %land.lhs.true

do.end6.if.end26_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

land.lhs.true:                                    ; preds = %do.end6
  %channel7 = getelementptr i8, ptr %netdev, i32 2528
  %2 = ptrtoint ptr %channel7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp8.not = icmp eq i32 %3, -1
  br i1 %cmp8.not, label %land.lhs.true.if.end26_crit_edge, label %if.then9

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then9:                                         ; preds = %land.lhs.true
  %call10 = tail call fastcc i32 @ks8842_tx_frame_dma(ptr noundef %skb, ptr noundef %netdev)
  %lock = getelementptr i8, ptr %netdev, i32 2340
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %adesc = getelementptr i8, ptr %netdev, i32 2440
  %4 = ptrtoint ptr %adesc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adesc, align 4
  %tobool22.not = icmp eq ptr %5, null
  br i1 %tobool22.not, label %if.then9.if.end24_crit_edge, label %if.then23

if.then9.if.end24_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then23:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %7, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.then9.if.end24_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call16) #8
  br label %cleanup

if.end26:                                         ; preds = %land.lhs.true.if.end26_crit_edge, %do.end6.if.end26_crit_edge
  %call27 = tail call fastcc i32 @ks8842_tx_frame(ptr noundef %skb, ptr noundef %netdev)
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 4096) #8, !srcloc !138
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 8
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %13 = and i16 %12, -225
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #8
  %conv29 = zext i16 %14 to i32
  %mtu = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 20
  %15 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mtu, align 4
  %add = add i32 %16, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv29)
  %cmp30 = icmp ugt i32 %add, %conv29
  br i1 %cmp30, label %if.then32, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then32:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %_tx.i.i48 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %17 = ptrtoint ptr %_tx.i.i48 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %_tx.i.i48, align 128
  %state.i.i49 = getelementptr inbounds %struct.netdev_queue, ptr %18, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i49) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.end26.cleanup_crit_edge, %if.end24
  %retval.0 = phi i32 [ %call10, %if.end24 ], [ %call27, %if.then32 ], [ %call27, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks8842_set_mac(ptr noundef %netdev, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks8842_set_mac.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks8842_set_mac, %if.then)) #8
          to label %do.end6 [label %if.then], !srcloc !143

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks8842_set_mac.__UNIQUE_ID_ddebug356, ptr noundef %netdev, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.50) #8
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %0 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sa_data, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %do.end6.cleanup_crit_edge

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %do.end6
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %or.i.i = or i32 %1, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end11

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dev_addr_mod(ptr noundef %netdev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #8
  tail call fastcc void @ks8842_write_mac_addr(ptr noundef %add.ptr.i, ptr noundef %sa_data)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %is_valid_ether_addr.exit.cleanup_crit_edge, %do.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -99, %do.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks8842_tx_timeout(ptr noundef %netdev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks8842_tx_timeout.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks8842_tx_timeout, %if.then)) #8
          to label %do.end6 [label %if.then], !srcloc !143

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks8842_tx_timeout.__UNIQUE_ID_ddebug358, ptr noundef %netdev, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.51) #8
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %timeout_work = getelementptr i8, ptr %netdev, i32 2384
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %timeout_work) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ks8842_dealloc_dma_bufs(ptr noundef %adapter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_tx = getelementptr inbounds %struct.ks8842_adapter, ptr %adapter, i32 0, i32 8
  %dma_rx = getelementptr inbounds %struct.ks8842_adapter, ptr %adapter, i32 0, i32 9
  %adesc.i = getelementptr inbounds %struct.ks8842_adapter, ptr %adapter, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %adesc.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %adesc.i, align 4
  %1 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dma_tx, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 47
  %5 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 %6(ptr noundef nonnull %2) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i.i, %if.then.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %adesc2.i = getelementptr inbounds %struct.ks8842_adapter, ptr %adapter, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %adesc2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %adesc2.i, align 4
  %8 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_rx, align 4
  %tobool4.not.i = icmp eq ptr %9, null
  br i1 %tobool4.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then5.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %device_terminate_all.i30.i = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 47
  %12 = ptrtoint ptr %device_terminate_all.i30.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device_terminate_all.i30.i, align 4
  %tobool.not.i31.i = icmp eq ptr %13, null
  br i1 %tobool.not.i31.i, label %if.then5.i.if.end8.i_crit_edge, label %if.then.i33.i

if.then5.i.if.end8.i_crit_edge:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then.i33.i:                                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i32.i = tail call i32 %13(ptr noundef nonnull %9) #8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then.i33.i, %if.then5.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  %dma_address.i = getelementptr inbounds %struct.ks8842_adapter, ptr %adapter, i32 0, i32 9, i32 3, i32 3
  %14 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_address.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool9.not.i = icmp eq i32 %15, 0
  br i1 %tobool9.not.i, label %if.end8.i.ks8842_stop_dma.exit_crit_edge, label %if.then10.i

if.end8.i.ks8842_stop_dma.exit_crit_edge:         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ks8842_stop_dma.exit

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.ks8842_adapter, ptr %adapter, i32 0, i32 7
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %17, i32 noundef %15, i32 noundef 2048, i32 noundef 2, i32 noundef 0) #8
  br label %ks8842_stop_dma.exit

ks8842_stop_dma.exit:                             ; preds = %if.then10.i, %if.end8.i.ks8842_stop_dma.exit_crit_edge
  %18 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %dma_address.i, align 4
  %skb.i = getelementptr inbounds %struct.ks8842_adapter, ptr %adapter, i32 0, i32 9, i32 2
  %19 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %skb.i, align 4
  tail call void @consume_skb(ptr noundef %20) #8
  %21 = ptrtoint ptr %skb.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %skb.i, align 4
  %22 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dma_tx, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %ks8842_stop_dma.exit.if.end_crit_edge, label %if.then

ks8842_stop_dma.exit.if.end_crit_edge:            ; preds = %ks8842_stop_dma.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %ks8842_stop_dma.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef nonnull %23) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %ks8842_stop_dma.exit.if.end_crit_edge
  %24 = ptrtoint ptr %dma_tx to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %dma_tx, align 4
  %25 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dma_rx, align 4
  %tobool4.not = icmp eq ptr %26, null
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef nonnull %26) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %27 = ptrtoint ptr %dma_rx to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %dma_rx, align 4
  %tasklet = getelementptr inbounds %struct.ks8842_adapter, ptr %adapter, i32 0, i32 9, i32 4
  tail call void @tasklet_kill(ptr noundef %tasklet) #8
  %dma_address = getelementptr inbounds %struct.ks8842_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 3
  %28 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma_address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool9.not = icmp eq i32 %29, 0
  br i1 %tobool9.not, label %if.end7.if.end13_crit_edge, label %if.then10

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.ks8842_adapter, ptr %adapter, i32 0, i32 7
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %31, i32 noundef %29, i32 noundef 2048, i32 noundef 1, i32 noundef 0) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end7.if.end13_crit_edge
  %32 = ptrtoint ptr %dma_address to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %dma_address, align 4
  %buf = getelementptr inbounds %struct.ks8842_adapter, ptr %adapter, i32 0, i32 8, i32 2
  %33 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buf, align 4
  tail call void @kfree(ptr noundef %34) #8
  %35 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %buf, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks8842_irq(i32 noundef %irq, ptr noundef %devid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %devid, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 14
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 4608) #8, !srcloc !138
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %6, i32 2
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i30) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks8842_irq.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks8842_irq, %if.then)) #8
          to label %do.end8 [label %if.then], !srcloc !143

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #8
  %conv = zext i16 %8 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks8842_irq.__UNIQUE_ID_ddebug350, ptr noundef %devid, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.41, i32 noundef %conv) #8
  br label %do.end8

do.end8:                                          ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool9.not = icmp eq i16 %7, 0
  br i1 %tobool9.not, label %do.end8.if.end17_crit_edge, label %if.then10

do.end8.if.end17_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then10:                                        ; preds = %do.end8
  %channel = getelementptr i8, ptr %devid, i32 2468
  %9 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.not = icmp eq i32 %10, -1
  br i1 %cmp.not, label %if.then10.if.else_crit_edge, label %land.lhs.true

if.then10.if.else_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.then10
  %channel12 = getelementptr i8, ptr %devid, i32 2528
  %11 = ptrtoint ptr %channel12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %channel12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp13.not = icmp eq i32 %12, -1
  br i1 %cmp13.not, label %land.lhs.true.if.else_crit_edge, label %if.then15

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i31 = getelementptr i8, ptr %14, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i31, i16 4608) #8, !srcloc !138
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %16, i16 32) #8, !srcloc !138
  br label %if.end16

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then10.if.else_crit_edge
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i32 = getelementptr i8, ptr %18, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i32, i16 4608) #8, !srcloc !138
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %20, i16 0) #8, !srcloc !138
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then15
  %state.i = getelementptr i8, ptr %devid, i32 2320
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end16.if.end17_crit_edge

if.end16.if.end17_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %tasklet = getelementptr i8, ptr %devid, i32 2316
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #8
  br label %if.end17

if.end17:                                         ; preds = %if.then.i, %if.end16.if.end17_crit_edge, %do.end8.if.end17_crit_edge
  %ret.0 = phi i32 [ 0, %do.end8.if.end17_crit_edge ], [ 1, %if.end16.if.end17_crit_edge ], [ 1, %if.then.i ]
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr19 = getelementptr i8, ptr %22, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr19, i16 %2) #8, !srcloc !138
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %24, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 16777216) #8, !srcloc !145
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ks8842_dma_filter_fn(ptr nocapture noundef readonly %chan, ptr noundef %filter_param) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chan_id = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 4
  %0 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan_id, align 4
  %2 = ptrtoint ptr %filter_param to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %2)
  %cmp = icmp eq i32 %1, %2
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks8842_rx_frame_dma_tasklet(ptr nocapture noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr i8, ptr %t, i32 -76
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 4
  %skb2 = getelementptr i8, ptr %t, i32 -24
  %2 = ptrtoint ptr %skb2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb2, align 4
  %dma_address = getelementptr i8, ptr %t, i32 -8
  %4 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_address, align 4
  %adesc = getelementptr i8, ptr %t, i32 -28
  %6 = ptrtoint ptr %adesc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %adesc, align 4
  %call = tail call fastcc i32 @__ks8842_start_new_rx_dma(ptr noundef %1)
  %dev = getelementptr i8, ptr %t, i32 -72
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %8, i32 noundef %5, i32 noundef 2048, i32 noundef 2, i32 noundef 0) #8
  %data = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks8842_rx_frame_dma_tasklet.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks8842_rx_frame_dma_tasklet, %if.then)) #8
          to label %do.end9 [label %if.then], !srcloc !143

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and = and i32 %12, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks8842_rx_frame_dma_tasklet.__UNIQUE_ID_ddebug343, ptr noundef %1, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.40, i32 noundef %and) #8
  br label %do.end9

do.end9:                                          ; preds = %if.then, %entry
  %13 = and i32 %12, 32775
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %13)
  %14 = icmp eq i32 %13, 32768
  br i1 %14, label %if.then14, label %if.else

if.then14:                                        ; preds = %do.end9
  %shr = lshr i32 %12, 16
  %and15 = and i32 %shr, 2047
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks8842_update_rx_counters.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks8842_rx_frame_dma_tasklet, %if.then.i)) #8
          to label %do.end4.i [label %if.then.i], !srcloc !143

if.then.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks8842_update_rx_counters.__UNIQUE_ID_ddebug342, ptr noundef %1, ptr noundef nonnull @.str.28, i32 noundef %and15) #8
  br label %do.end4.i

do.end4.i:                                        ; preds = %if.then.i, %if.then14
  %stats.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %15 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %stats.i, align 8
  %inc.i = add i32 %16, 1
  store i32 %inc.i, ptr %stats.i, align 8
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %17 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_bytes.i, align 8
  %add.i = add i32 %18, %and15
  store i32 %add.i, ptr %rx_bytes.i, align 8
  %and.i = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %do.end4.i.ks8842_update_rx_counters.exit_crit_edge, label %if.then7.i

do.end4.i.ks8842_update_rx_counters.exit_crit_edge: ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ks8842_update_rx_counters.exit

if.then7.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %multicast.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 8
  %19 = ptrtoint ptr %multicast.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %multicast.i, align 8
  %inc9.i = add i32 %20, 1
  store i32 %inc9.i, ptr %multicast.i, align 8
  br label %ks8842_update_rx_counters.exit

ks8842_update_rx_counters.exit:                   ; preds = %if.then7.i, %do.end4.i.ks8842_update_rx_counters.exit_crit_edge
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 4
  store ptr %add.ptr.i, ptr %data, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 16
  %23 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %24, i32 4
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call16 = tail call ptr @skb_put(ptr noundef %3, i32 noundef %and15) #8
  %call17 = tail call zeroext i16 @eth_type_trans(ptr noundef %3, ptr noundef %1) #8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 15, i32 0, i32 18
  %25 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %call17, ptr %protocol, align 8
  %call18 = tail call i32 @netif_rx(ptr noundef %3) #8
  br label %if.end19

if.else:                                          ; preds = %do.end9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks8842_update_rx_err_counters.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks8842_rx_frame_dma_tasklet, %if.then.i40)) #8
          to label %do.end4.i43 [label %if.then.i40], !srcloc !143

if.then.i40:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks8842_update_rx_err_counters.__UNIQUE_ID_ddebug341, ptr noundef %1, ptr noundef nonnull @.str.30, i32 noundef %12) #8
  br label %do.end4.i43

do.end4.i43:                                      ; preds = %if.then.i40, %if.else
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %26 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_errors.i, align 8
  %inc.i41 = add i32 %27, 1
  store i32 %inc.i41, ptr %rx_errors.i, align 8
  %and.i42 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i42)
  %tobool5.not.i = icmp eq i32 %and.i42, 0
  br i1 %tobool5.not.i, label %do.end4.i43.if.end9.i_crit_edge, label %if.then6.i

do.end4.i43.if.end9.i_crit_edge:                  ; preds = %do.end4.i43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then6.i:                                       ; preds = %do.end4.i43
  call void @__sanitizer_cov_trace_pc() #10
  %rx_length_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 10
  %28 = ptrtoint ptr %rx_length_errors.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_length_errors.i, align 8
  %inc8.i = add i32 %29, 1
  store i32 %inc8.i, ptr %rx_length_errors.i, align 8
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %do.end4.i43.if.end9.i_crit_edge
  %and10.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end9.i.if.end15.i_crit_edge, label %if.then12.i

if.end9.i.if.end15.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx_crc_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 12
  %30 = ptrtoint ptr %rx_crc_errors.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_crc_errors.i, align 8
  %inc14.i = add i32 %31, 1
  store i32 %inc14.i, ptr %rx_crc_errors.i, align 8
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then12.i, %if.end9.i.if.end15.i_crit_edge
  %and16.i = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end15.i.ks8842_update_rx_err_counters.exit_crit_edge, label %if.then18.i

if.end15.i.ks8842_update_rx_err_counters.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ks8842_update_rx_err_counters.exit

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx_frame_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 13
  %32 = ptrtoint ptr %rx_frame_errors.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_frame_errors.i, align 4
  %inc20.i = add i32 %33, 1
  store i32 %inc20.i, ptr %rx_frame_errors.i, align 4
  br label %ks8842_update_rx_err_counters.exit

ks8842_update_rx_err_counters.exit:               ; preds = %if.then18.i, %if.end15.i.ks8842_update_rx_err_counters.exit_crit_edge
  tail call void @consume_skb(ptr noundef %3) #8
  br label %if.end19

if.end19:                                         ; preds = %ks8842_update_rx_err_counters.exit, %ks8842_update_rx_counters.exit
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ks8842_tx_frame_dma(ptr noundef %skb, ptr noundef %netdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_tx = getelementptr i8, ptr %netdev, i32 2436
  %adesc = getelementptr i8, ptr %netdev, i32 2440
  %0 = ptrtoint ptr %adesc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adesc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end10, label %do.body2

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks8842_tx_frame_dma.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks8842_tx_frame_dma, %if.then7)) #8
          to label %cleanup [label %if.then7], !srcloc !143

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks8842_tx_frame_dma.__UNIQUE_ID_ddebug339, ptr noundef %netdev, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.44) #8
  br label %cleanup

if.end10:                                         ; preds = %entry
  %buf1 = getelementptr i8, ptr %netdev, i32 2444
  %2 = ptrtoint ptr %buf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf1, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %add = add i32 %5, 4
  %sg = getelementptr i8, ptr %netdev, i32 2448
  %dma_length = getelementptr i8, ptr %netdev, i32 2464
  %6 = ptrtoint ptr %dma_length to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %dma_length, align 4
  %incdec.ptr = getelementptr i8, ptr %3, i32 1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %3, align 1
  %incdec.ptr11 = getelementptr i8, ptr %3, i32 2
  %8 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %incdec.ptr, align 1
  %9 = load i32, ptr %len, align 4
  %conv = trunc i32 %9 to i8
  %incdec.ptr13 = getelementptr i8, ptr %3, i32 3
  %10 = ptrtoint ptr %incdec.ptr11 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %incdec.ptr11, align 1
  %11 = load i32, ptr %len, align 4
  %shr = lshr i32 %11, 8
  %conv16 = trunc i32 %shr to i8
  %incdec.ptr17 = getelementptr i8, ptr %3, i32 4
  %12 = ptrtoint ptr %incdec.ptr13 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv16, ptr %incdec.ptr13, align 1
  %13 = load i32, ptr %len, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %16 = call ptr @memcpy(ptr %incdec.ptr17, ptr %15, i32 %13)
  %dev = getelementptr i8, ptr %netdev, i32 2432
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %dma_address = getelementptr i8, ptr %netdev, i32 2460
  %19 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma_address, align 4
  %21 = load i32, ptr %dma_length, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %18, i32 noundef %20, i32 noundef %21, i32 noundef 1) #8
  %22 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_length, align 4
  %rem = and i32 %23, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool24.not = icmp eq i32 %rem, 0
  br i1 %tobool24.not, label %if.end10.if.end32_crit_edge, label %if.then25

if.end10.if.end32_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then25:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add i32 %23, 4
  %add31 = and i32 %sub, -4
  %24 = ptrtoint ptr %dma_length to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add31, ptr %dma_length, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then25, %if.end10.if.end32_crit_edge
  %25 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dma_tx, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.end32.dmaengine_prep_slave_sg.exit.thread_crit_edge, label %lor.lhs.false.i

if.end32.dmaengine_prep_slave_sg.exit.thread_crit_edge: ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_prep_slave_sg.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end32
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %tobool1.not.i = icmp eq ptr %28, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.dmaengine_prep_slave_sg.exit.thread_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.dmaengine_prep_slave_sg.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_prep_slave_sg.exit.thread

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %28, i32 0, i32 39
  %29 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %30, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.dmaengine_prep_slave_sg.exit.thread_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.dmaengine_prep_slave_sg.exit.thread_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_prep_slave_sg.exit.thread

dmaengine_prep_slave_sg.exit.thread:              ; preds = %lor.lhs.false2.i.dmaengine_prep_slave_sg.exit.thread_crit_edge, %lor.lhs.false.i.dmaengine_prep_slave_sg.exit.thread_crit_edge, %if.end32.dmaengine_prep_slave_sg.exit.thread_crit_edge
  %31 = ptrtoint ptr %adesc to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %adesc, align 4
  br label %cleanup

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i = tail call ptr %30(ptr noundef nonnull %26, ptr noundef %sg, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  %32 = ptrtoint ptr %adesc to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %adesc, align 4
  %tobool37.not = icmp eq ptr %call.i, null
  br i1 %tobool37.not, label %dmaengine_prep_slave_sg.exit.cleanup_crit_edge, label %if.end39

dmaengine_prep_slave_sg.exit.cleanup_crit_edge:   ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end39:                                         ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 8
  %33 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %netdev, ptr %callback_param, align 4
  %34 = ptrtoint ptr %adesc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adesc, align 4
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @ks8842_dma_tx_cb, ptr %callback, align 4
  %37 = load ptr, ptr %adesc, align 4
  %tx_submit = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %tx_submit to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tx_submit, align 4
  %call44 = tail call i32 %39(ptr noundef %37) #8
  %40 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 3
  %42 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tx_bytes, align 4
  %add46 = add i32 %43, %41
  store i32 %add46, ptr %tx_bytes, align 4
  tail call void @consume_skb(ptr noundef %skb) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %dmaengine_prep_slave_sg.exit.cleanup_crit_edge, %dmaengine_prep_slave_sg.exit.thread, %if.then7, %do.body2
  %retval.0 = phi i32 [ 0, %if.end39 ], [ 16, %if.then7 ], [ 16, %dmaengine_prep_slave_sg.exit.cleanup_crit_edge ], [ 16, %do.body2 ], [ 16, %dmaengine_prep_slave_sg.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ks8842_tx_frame(ptr noundef %skb, ptr noundef %netdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks8842_tx_frame.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks8842_tx_frame, %if.then)) #8
          to label %do.end10 [label %if.then], !srcloc !143

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len1, align 4
  %head = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i, align 8
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %10 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %end.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks8842_tx_frame.__UNIQUE_ID_ddebug340, ptr noundef %netdev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48, i32 noundef %3, ptr noundef %5, ptr noundef %7, ptr noundef %9, ptr noundef %11) #8
  br label %do.end10

do.end10:                                         ; preds = %if.then, %entry
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 4096) #8, !srcloc !138
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 8
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %17 = and i16 %16, -225
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #8
  %conv = zext i16 %18 to i32
  %add = add i32 %1, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp = icmp sgt i32 %add, %conv
  br i1 %cmp, label %do.end10.cleanup_crit_edge, label %if.end14

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %do.end10
  %conf_flags = getelementptr i8, ptr %netdev, i32 2312
  %19 = ptrtoint ptr %conf_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %conf_flags, align 4
  %and = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  %data25 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %21 = ptrtoint ptr %data25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data25, align 4
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end14
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i69 = getelementptr i8, ptr %24, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i69, i16 4352) #8, !srcloc !138
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i70 = getelementptr i8, ptr %26, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i70, i16 129) #8, !srcloc !138
  %conv18 = trunc i32 %1 to i16
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i71 = getelementptr i8, ptr %28, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i71, i16 4352) #8, !srcloc !138
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i72 = getelementptr i8, ptr %30, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  %31 = tail call i16 @llvm.bswap.i16(i16 %conv18) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i72, i16 %31) #8, !srcloc !138
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 3
  %32 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_bytes, align 4
  %add19 = add i32 %33, %1
  store i32 %add19, ptr %tx_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp2078 = icmp sgt i32 %1, 0
  br i1 %cmp2078, label %if.then16.while.body_crit_edge, label %if.then16.if.end38_crit_edge

if.then16.if.end38_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then16.while.body_crit_edge:                   ; preds = %if.then16
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then16.while.body_crit_edge
  %ptr16.080 = phi ptr [ %incdec.ptr22, %while.body.while.body_crit_edge ], [ %22, %if.then16.while.body_crit_edge ]
  %len.079 = phi i32 [ %sub, %while.body.while.body_crit_edge ], [ %1, %if.then16.while.body_crit_edge ]
  %incdec.ptr = getelementptr i16, ptr %ptr16.080, i32 1
  %34 = ptrtoint ptr %ptr16.080 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %ptr16.080, align 2
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr = getelementptr i8, ptr %37, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  %38 = tail call i16 @llvm.bswap.i16(i16 %35) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %38) #8, !srcloc !138
  %incdec.ptr22 = getelementptr i16, ptr %ptr16.080, i32 2
  %39 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %incdec.ptr, align 2
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr24 = getelementptr i8, ptr %42, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  %43 = tail call i16 @llvm.bswap.i16(i16 %40) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr24, i16 %43) #8, !srcloc !138
  %sub = add nsw i32 %len.079, -4
  %cmp20 = icmp ugt i32 %len.079, 4
  br i1 %cmp20, label %while.body.while.body_crit_edge, label %while.body.if.end38_crit_edge

while.body.if.end38_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.else:                                          ; preds = %if.end14
  %shl = shl i32 %1, 16
  %or = or i32 %shl, 33024
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i73 = getelementptr i8, ptr %45, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i73, i16 4352) #8, !srcloc !138
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i74 = getelementptr i8, ptr %47, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %48 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74, i32 %48) #8, !srcloc !145
  %tx_bytes27 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 3
  %49 = ptrtoint ptr %tx_bytes27 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tx_bytes27, align 4
  %add28 = add i32 %50, %1
  store i32 %add28, ptr %tx_bytes27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp3081 = icmp sgt i32 %1, 0
  br i1 %cmp3081, label %if.else.while.body32_crit_edge, label %if.else.if.end38_crit_edge

if.else.if.end38_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.else.while.body32_crit_edge:                   ; preds = %if.else
  br label %while.body32

while.body32:                                     ; preds = %while.body32.while.body32_crit_edge, %if.else.while.body32_crit_edge
  %ptr.083 = phi ptr [ %incdec.ptr36, %while.body32.while.body32_crit_edge ], [ %22, %if.else.while.body32_crit_edge ]
  %len.182 = phi i32 [ %sub35, %while.body32.while.body32_crit_edge ], [ %1, %if.else.while.body32_crit_edge ]
  %51 = ptrtoint ptr %ptr.083 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ptr.083, align 4
  %53 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr34 = getelementptr i8, ptr %54, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %55 = tail call i32 @llvm.bswap.i32(i32 %52) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %55) #8, !srcloc !145
  %sub35 = add nsw i32 %len.182, -4
  %incdec.ptr36 = getelementptr i32, ptr %ptr.083, i32 1
  %cmp30 = icmp ugt i32 %len.182, 4
  br i1 %cmp30, label %while.body32.while.body32_crit_edge, label %while.body32.if.end38_crit_edge

while.body32.if.end38_crit_edge:                  ; preds = %while.body32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

while.body32.while.body32_crit_edge:              ; preds = %while.body32
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body32

if.end38:                                         ; preds = %while.body32.if.end38_crit_edge, %if.else.if.end38_crit_edge, %while.body.if.end38_crit_edge, %if.then16.if.end38_crit_edge
  %56 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i75 = getelementptr i8, ptr %57, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i75, i16 4352) #8, !srcloc !138
  %58 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %59, i16 256) #8, !srcloc !138
  tail call void @consume_skb(ptr noundef %skb) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %do.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end38 ], [ 16, %do.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks8842_dma_tx_cb(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks8842_dma_tx_cb.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks8842_dma_tx_cb, %if.then)) #8
          to label %do.end6 [label %if.then], !srcloc !143

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks8842_dma_tx_cb.__UNIQUE_ID_ddebug352, ptr noundef %data, ptr noundef nonnull @.str.47) #8
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %adesc = getelementptr i8, ptr %data, i32 2440
  %0 = ptrtoint ptr %adesc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adesc, align 4
  %tobool7.not = icmp eq ptr %1, null
  br i1 %tobool7.not, label %do.end6.cleanup_crit_edge, label %if.end9

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %do.end6
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %data, i32 0, i32 36, i32 1
  %2 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %tx_packets, align 4
  %4 = ptrtoint ptr %adesc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %adesc, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %data, i32 0, i32 103
  %5 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %if.end9.cleanup_crit_edge, label %if.then12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @netif_tx_wake_queue(ptr noundef %6) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end9.cleanup_crit_edge, %do.end6.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !125, !126}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133, !134, !135}
!llvm.ident = !{!136}

!0 = !{ptr @__initcall__kmod_ks8842__359_1254_ks8842_platform_driver_init6, !1, !"__initcall__kmod_ks8842__359_1254_ks8842_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/micrel/ks8842.c", i32 1254, i32 1}
!2 = !{ptr @__exitcall_ks8842_platform_driver_exit, !1, !"__exitcall_ks8842_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description360, !4, !"__UNIQUE_ID_description360", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/micrel/ks8842.c", i32 1256, i32 1}
!5 = !{ptr @__UNIQUE_ID_author361, !6, !"__UNIQUE_ID_author361", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/micrel/ks8842.c", i32 1257, i32 1}
!7 = !{ptr @__UNIQUE_ID_file362, !8, !"__UNIQUE_ID_file362", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/micrel/ks8842.c", i32 1258, i32 1}
!9 = !{ptr @__UNIQUE_ID_license363, !8, !"__UNIQUE_ID_license363", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias364, !11, !"__UNIQUE_ID_alias364", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/micrel/ks8842.c", i32 1259, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/micrel/ks8842.c", i32 1248, i32 11}
!14 = !{ptr @ks8842_platform_driver, !15, !"ks8842_platform_driver", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/micrel/ks8842.c", i32 1246, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/micrel/ks8842.c", i32 1141, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ks8842_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ks8842_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @ks8842_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/micrel/ks8842.c", i32 1155, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ks8842_probe.__key.7, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/micrel/ks8842.c", i32 1182, i32 2}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/micrel/ks8842.c", i32 1208, i32 23}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/micrel/ks8842.c", i32 1215, i32 2}
!34 = !{ptr @ks8842_probe._entry.10, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ks8842_probe._entry_ptr.12, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/micrel/ks8842.c", i32 1082, i32 2}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ks8842_tx_timeout_work.__UNIQUE_ID_ddebug357, !37, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/micrel/ks8842.c", i32 588, i32 2}
!42 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @__ks8842_start_new_rx_dma._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @__ks8842_start_new_rx_dma._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!47 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/micrel/ks8842.c", i32 837, i32 2}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ks8842_dma_rx_cb.__UNIQUE_ID_ddebug351, !50, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/micrel/ks8842.c", i32 739, i32 2}
!55 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @ks8842_tasklet.__UNIQUE_ID_ddebug349, !54, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/micrel/ks8842.c", i32 700, i32 2}
!59 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @ks8842_handle_rx.__UNIQUE_ID_ddebug346, !58, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/micrel/ks8842.c", i32 641, i32 3}
!63 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @ks8842_rx_frame.__UNIQUE_ID_ddebug344, !62, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!65 = !{ptr @ks8842_rx_frame.__UNIQUE_ID_ddebug345, !66, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/micrel/ks8842.c", i32 647, i32 3}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/micrel/ks8842.c", i32 534, i32 2}
!69 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @ks8842_update_rx_counters.__UNIQUE_ID_ddebug342, !68, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/micrel/ks8842.c", i32 520, i32 2}
!73 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @ks8842_update_rx_err_counters.__UNIQUE_ID_ddebug341, !72, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/micrel/ks8842.c", i32 711, i32 2}
!77 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @ks8842_handle_tx.__UNIQUE_ID_ddebug347, !76, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/micrel/ks8842.c", i32 720, i32 2}
!81 = !{ptr @ks8842_handle_rx_overrun.__UNIQUE_ID_ddebug348, !80, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!82 = !{ptr @ks8842_netdev_ops, !83, !"ks8842_netdev_ops", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/micrel/ks8842.c", i32 1116, i32 36}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/micrel/ks8842.c", i32 973, i32 2}
!86 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @ks8842_open.__UNIQUE_ID_ddebug353, !85, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/micrel/ks8842.c", i32 986, i32 4}
!90 = !{ptr @ks8842_open._entry, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @ks8842_open._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/micrel/ks8842.c", i32 1004, i32 3}
!94 = !{ptr @ks8842_open._entry.37, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @ks8842_open._entry_ptr.39, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/micrel/ks8842.c", i32 611, i32 2}
!98 = !{ptr @ks8842_rx_frame_dma_tasklet.__UNIQUE_ID_ddebug343, !97, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/micrel/ks8842.c", i32 806, i32 2}
!101 = !{ptr @ks8842_irq.__UNIQUE_ID_ddebug350, !100, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/micrel/ks8842.c", i32 1015, i32 2}
!104 = !{ptr @ks8842_close.__UNIQUE_ID_ddebug354, !103, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!105 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/micrel/ks8842.c", i32 1037, i32 2}
!107 = !{ptr @ks8842_xmit_frame.__UNIQUE_ID_ddebug355, !106, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/micrel/ks8842.c", i32 428, i32 3}
!110 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @ks8842_tx_frame_dma.__UNIQUE_ID_ddebug339, !109, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!112 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/micrel/ks8842.c", i32 849, i32 2}
!114 = !{ptr @.str.47, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @ks8842_dma_tx_cb.__UNIQUE_ID_ddebug352, !113, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!116 = !{ptr @.str.48, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/micrel/ks8842.c", i32 472, i32 2}
!118 = !{ptr @.str.49, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @ks8842_tx_frame.__UNIQUE_ID_ddebug340, !117, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!120 = !{ptr @.str.50, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/micrel/ks8842.c", i32 1064, i32 2}
!122 = !{ptr @ks8842_set_mac.__UNIQUE_ID_ddebug356, !121, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!123 = !{ptr @.str.51, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/micrel/ks8842.c", i32 1111, i32 2}
!125 = !{ptr @ks8842_tx_timeout.__UNIQUE_ID_ddebug358, !124, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!126 = !{ptr @ks8842_ethtool_ops, !127, !"ks8842_ethtool_ops", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/micrel/ks8842.c", i32 1125, i32 33}
!128 = !{i32 1, !"wchar_size", i32 2}
!129 = !{i32 1, !"min_enum_size", i32 4}
!130 = !{i32 8, !"branch-target-enforcement", i32 0}
!131 = !{i32 8, !"sign-return-address", i32 0}
!132 = !{i32 8, !"sign-return-address-all", i32 0}
!133 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!134 = !{i32 7, !"uwtable", i32 1}
!135 = !{i32 7, !"frame-pointer", i32 2}
!136 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!137 = !{i64 2151770245}
!138 = !{i64 4228053}
!139 = !{i64 4228871}
!140 = !{i64 2151768216}
!141 = !{i64 4228253}
!142 = !{i64 2151768828}
!143 = !{i64 2148747865, i64 2148747870, i64 2148747883, i64 2148747927, i64 2148747961, i64 2148747982}
!144 = !{i64 2151770795}
!145 = !{i64 4228673}
!146 = !{i64 2151769821}
!147 = !{i64 4228476}
!148 = !{!"branch_weights", i32 2000, i32 1}
!149 = !{i64 4229091}
!150 = !{i64 2151769440}

; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/neterion/vxge/vxge-config.c_pt.bc'
source_filename = "../drivers/net/ethernet/neterion/vxge/vxge-config.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.vxge_hw_mempool_cbs = type { ptr }
%struct.__vxge_hw_device = type { i32, ptr, ptr, ptr, %struct.vxge_hw_device_config, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, [17 x ptr], [17 x ptr], [17 x ptr], ptr, ptr, [40 x i8], [17 x %struct.__vxge_hw_virtualpath], i64, i64, i32, [4 x i64], [4 x i32], %struct.__vxge_hw_blockpool, %struct.vxge_hw_device_stats, i32, i32, i32, i32, [8 x i16], [56 x i8] }
%struct.vxge_hw_device_config = type { i32, i32, i32, i8, [17 x %struct.vxge_hw_vp_config] }
%struct.vxge_hw_vp_config = type { i32, i32, %struct.vxge_hw_ring_config, %struct.vxge_hw_fifo_config, %struct.vxge_hw_tim_intr_config, %struct.vxge_hw_tim_intr_config, i32, i32 }
%struct.vxge_hw_ring_config = type { i32, i32, i32, i32, i64 }
%struct.vxge_hw_fifo_config = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.vxge_hw_tim_intr_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.__vxge_hw_virtualpath = type { i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i64, i64, i64, [48 x i8], ptr, [124 x i8], ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.spinlock, [56 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.__vxge_hw_blockpool = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head }
%struct.vxge_hw_device_stats = type { ptr, %struct.vxge_hw_device_stats_hw_info, %struct.vxge_hw_device_stats_sw_err, %struct.vxge_hw_device_stats_sw_info }
%struct.vxge_hw_device_stats_hw_info = type <{ [17 x ptr], [17 x %struct.vxge_hw_vpath_stats_hw_info] }>
%struct.vxge_hw_vpath_stats_hw_info = type { i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vxge_hw_xmac_vpath_tx_stats, %struct.vxge_hw_xmac_vpath_rx_stats, i64, i32, i32, i32, i32, i16, [6 x i8], i32, i32, i16, [6 x i8], i16, i16, i16, i16, i64, i64, i64 }
%struct.vxge_hw_xmac_vpath_tx_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64 }
%struct.vxge_hw_xmac_vpath_rx_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i16, i16, i16, i16, i64 }
%struct.vxge_hw_device_stats_sw_err = type { i32 }
%struct.vxge_hw_device_stats_sw_info = type { i32, i32, i32, i32, [17 x %struct.vxge_hw_vpath_stats_sw_info] }
%struct.vxge_hw_vpath_stats_sw_info = type { i32, %struct.vxge_hw_vpath_stats_sw_err, %struct.vxge_hw_vpath_stats_sw_ring_info, %struct.vxge_hw_vpath_stats_sw_fifo_info }
%struct.vxge_hw_vpath_stats_sw_err = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vxge_hw_vpath_stats_sw_ring_info = type { %struct.vxge_hw_vpath_stats_sw_common_info, [16 x i32] }
%struct.vxge_hw_vpath_stats_sw_common_info = type { i32, i32, i32, i32, i32 }
%struct.vxge_hw_vpath_stats_sw_fifo_info = type { %struct.vxge_hw_vpath_stats_sw_common_info, i32, i32, [16 x i32] }
%struct.vxge_hw_vpath_reg = type { [768 x i8], i64, [1784 x i8], i64, i64, [32 x i8], i64, i64, i64, i64, [16 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [320 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [16 x i8], i64, i64, i64, [8 x i8], i64, i64, i64, i64, i64, i64, [80 x i8], i64, i64, i64, i64, i64, [8 x i8], i64, i64, i64, i64, i64, [40 x i8], i64, i64, i64, i64, [608 x i8], [4 x i64], [4 x i64], [4 x i64], i64, i64, i64, i64, i64, i64, [112 x i8], i64, i64, i64, i64, i64, i64, i64, [72 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [376 x i8], i64, [120 x i8], i64, [120 x i8], i64, [72 x i8], i64, i64, [16 x i8], i64, [2312 x i8], i64, i64, [16 x i8], i64, i64, i64, [104 x i8], i64, i64, [336 x i8], i64, i64, i64, i64, i64, i64, i64, [8 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [104 x i8], i64, i64, i64, i64, i64, [40 x i8], i64, [160 x i8], i64, i64, i64, [8 x i8], i64, [64 x i8], i64, i64, [8 x i8], i64, i64, i64, i64, i64, [8 x i8], i64, i64, i64, [56 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [752 x i8] }
%struct.eprom_image = type { i8, i8, i8, i16 }
%struct.vxge_hw_toc_reg = type { [80 x i8], i64, i64, [17 x i64], [248 x i8], i64, [17 x i64], [8 x i8], [17 x i64], [144 x i8], [17 x i64], [136 x i8], i64, i64, i64, i64 }
%struct.vxge_hw_common_reg = type { [2560 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, [184 x i8], i64, i64, [112 x i8], i64, i64, i64, i64, i64, i64, [80 x i8], i64, i64, i64, i64, i64, [216 x i8], i64, i64, i64, i64, i64, [24 x i8], i64, i64, [88 x i8], [4 x i64], [4 x i64], i64, i64, [4 x i64], [4 x i64], [4 x i64], i64, i64, [8 x i8], i64, [8 x i8], i64, i64, i64, i64, i64, i64, i64, i64, [16 x i8], i64, i64, i64, i64, [208 x i8], i64, [184 x i8], i64, [56 x i8], i64, [56 x i8], i64, i64, i64, i64, [8 x i8], i64, i64, [200 x i8], i64, i64, i64, i64, i64, i64, i64 }
%struct.vxge_hw_device_hw_info = type { i32, i64, i32, i64, %struct.vxge_hw_device_version, %struct.vxge_hw_device_date, %struct.vxge_hw_device_version, %struct.vxge_hw_device_date, [64 x i8], [64 x i8], [64 x i8], [17 x [6 x i8]], [17 x [6 x i8]] }
%struct.vxge_hw_device_version = type { i32, i32, i32, [32 x i8] }
%struct.vxge_hw_device_date = type { i32, i32, i32, [32 x i8] }
%struct.vxge_hw_vpmgmt_reg = type { [64 x i8], i64, i64, i64, i64, [160 x i8], i64, [56 x i8], i64, [120 x i8], i64, i64, i64, [3 x i64], [3 x i64], [56 x i8], i64, [24 x i8], i64, [2 x i64], i64, i64, i64, [3 x i64], [24 x i8], i64, [3 x i64], [32 x i8], i64, i64, i64, [72 x i8], i64, i64, [16 x i8], i64 }
%struct.vxge_hw_mrpcim_reg = type { i64, i64, i64, i64, i64, [2520 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [136 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8], i64, i64, i64, i64, i64, i64, i64, i64, [248 x i8], i64, i64, i64, i64, i64, [24 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [152 x i8], i64, [152 x i8], i64, [152 x i8], i64, i64, i64, [128 x i8], i64, [1272 x i8], i64, i64, [8 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [72 x i8], i64, [24 x i8], [3 x i64], [24 x i8], [3 x i64], [3 x i64], [24 x i8], [3 x i64], [3 x i64], [3 x i64], [3 x i64], [24 x i8], [3 x i64], [24 x i8], i64, i64, [24 x i8], i64, i64, i64, i64, i64, [64 x i8], i64, [208 x i8], i64, [144 x i8], [17 x i64], [888 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [2 x i64], [112 x i8], i64, i64, i64, i64, i64, [24 x i8], i64, i64, i64, [3 x i64], [2 x i64], [96 x i8], i64, i64, i64, [8 x i8], i64, i64, i64, i64, i64, [8 x i8], [2 x i64], [2 x i64], [2 x i64], i64, [2 x i64], [2 x i64], [2 x i64], [2 x i64], [8 x i8], [2 x i64], [2 x i64], [2 x i64], [2 x i64], [2 x i64], [2 x i64], [2 x i64], [2 x i64], [2 x i64], [2 x i64], [2 x i64], [2 x i64], [2 x i64], [2 x i64], [1328 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [56 x i8], i64, i64, i64, i64, i64, [304 x i8], i64, i64, i64, i64, i64, [1752 x i8], i64, i64, i64, i64, i64, i64, i64, i64, [192 x i8], i64, [688 x i8], i64, [64 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [400 x i8], i64, i64, [1008 x i8], i64, i64, [1520 x i8], i64, i64, [2056 x i8], i64, i64, i64, i64, i64, i64, [17 x i64], [48 x i8], i64, i64, i64, [17 x i64], [17 x i64], [216 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [936 x i8], i64, i64, i64, i64, i64, i64, i64, i64, [16 x i8], i64, i64, i64, i64, [656 x i8], i64, i64, i64, i64, i64, i64, i64, i64, [256 x i8], i64, i64, i64, i64, [32 x i8], i64, i64, i64, i64, i64, i64, [592 x i8], i64, i64, i64, i64, i64, i64, [40 x i8], i64, [8 x i8], i64, [80 x i8], i64, [312 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [16 x i8], i64, i64, [24 x i8], i64, [96 x i8], i64, i64, i64, i64, i64, i64, i64, i64, [56 x i8], i64, [32 x i8], [3 x i64], [3 x i64], [3 x i64], [3 x i64], [32 x i8], i64, i64, i64, i64, [776 x i8], [17 x i64], [1616 x i8], [17 x i64], [17 x i64], i64, i64, i64, [17 x i64], [17 x i64], [2472 x i8], i64, i64, i64, i64, [8 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [8 x i8], i64, i64, i64, [8 x i8], i64, i64, i64, [8 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, [16 x i8], [17 x i64], [17 x i64], [17 x i64], [48 x i8], i64, i64, [120 x i8], i64, i64, i64, [17 x i64], [17 x i64], [96 x i8], i64, i64, i64, i64, [1072 x i8], i64, [656 x i8], i64, i64, [312 x i8], i64, [17 x i64], [17 x i64], [17 x i64], i64, i64, i64, i64, i64, [16 x i8], [6 x i64], i64, [192 x i8], i64, i64, [4080 x i8], i64, i64, i64, i64, i64, [984 x i8], i64, i64, i64, i64, i64, [984 x i8], i64, i64, i64, i64, i64, [728 x i8], [17 x i64], [168 x i8], [2 x i64], [2 x i64], [2 x i64], [2 x i64], [2 x i64], [16 x i8], [2 x i64], [160 x i8], [2 x i64], [2 x i64], [2 x i64], [16 x i8], [2 x i64], [2 x i64], [2 x i64], [2 x i64], [2 x i64], [16 x i8], [2 x i64], [2 x i64], [2 x i64], [2 x i64], [16 x i8], [2 x i64], [2 x i64], [2 x i64], [2 x i64], [2 x i64], [896 x i8], [17 x i64], [376 x i8], [17 x i64], [2056 x i8] }
%struct.vxge_hw_legacy_reg = type { [16 x i8], i64, i64, i64, i64, i64, i64, i64 }
%struct.vxge_hw_device_attr = type { ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.99 = type { ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.__vxge_hw_blockpool_entry = type { %struct.list_head, i32, ptr, i32, ptr, ptr }
%struct.vxge_hw_xmac_aggr_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.vxge_hw_xmac_stats = type { [2 x %struct.vxge_hw_xmac_aggr_stats], [3 x %struct.vxge_hw_xmac_port_stats], [17 x %struct.vxge_hw_xmac_vpath_tx_stats], [17 x %struct.vxge_hw_xmac_vpath_rx_stats] }
%struct.vxge_hw_xmac_port_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.__vxge_hw_vpath_handle = type { %struct.list_head, ptr }
%struct.__vxge_hw_ring = type { %struct.__vxge_hw_channel, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i64, ptr, ptr, ptr, [28 x i8], ptr, ptr, [120 x i8] }
%struct.__vxge_hw_channel = type { %struct.list_head, i32, ptr, ptr, i32, i32, ptr, i32, i32, ptr, [84 x i8], i32, [124 x i8], i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, [92 x i8] }
%struct.vxge_hw_vpath_attr = type { i32, %struct.vxge_hw_ring_attr, %struct.vxge_hw_fifo_attr }
%struct.vxge_hw_ring_attr = type { ptr, ptr, ptr, ptr, i32 }
%struct.vxge_hw_fifo_attr = type { ptr, ptr, ptr, i32 }
%struct.__vxge_hw_fifo = type { %struct.__vxge_hw_channel, ptr, ptr, ptr, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, ptr, ptr, [48 x i8], ptr, [124 x i8] }
%struct.vxge_hw_mempool = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.vxge_hw_fifo_txd = type { i64, i64, i64, i64 }
%struct.__vxge_hw_fifo_txdl_priv = type { i32, ptr, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.vxge_hw_mempool_dma = type { i32, ptr, ptr }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@vxge_hw_vpath_wait_receive_idle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\011%s: Still Receiving traffic. Abort wait\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"vxge_hw_vpath_wait_receive_idle\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/ethernet/neterion/vxge/vxge-config.c\00", [47 x i8] zeroinitializer }, align 32
@vxge_hw_vpath_wait_receive_idle._entry_ptr = internal global ptr @vxge_hw_vpath_wait_receive_idle._entry, section ".printk_index", align 4
@vxge_hw_flash_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: FW upgrade failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vxge_hw_flash_fw\00", [47 x i8] zeroinitializer }, align 32
@vxge_hw_flash_fw._entry_ptr = internal global ptr @vxge_hw_flash_fw._entry, section ".printk_index", align 4
@vxge_hw_flash_fw._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: FW commit failed with error %d\0A\00", [60 x i8] zeroinitializer }, align 32
@vxge_hw_flash_fw._entry_ptr.7 = internal global ptr @vxge_hw_flash_fw._entry.5, section ".printk_index", align 4
@vxge_update_fw_image._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c" %s: Upgrade start cmd failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vxge_update_fw_image\00", [43 x i8] zeroinitializer }, align 32
@vxge_update_fw_image._entry_ptr = internal global ptr @vxge_update_fw_image._entry, section ".printk_index", align 4
@vxge_update_fw_image._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: Upgrade send failed\0A\00", [39 x i8] zeroinitializer }, align 32
@vxge_update_fw_image._entry_ptr.12 = internal global ptr @vxge_update_fw_image._entry.10, section ".printk_index", align 4
@vxge_update_fw_image._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.2, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013corrupted data from .ncf file\0A\00", [63 x i8] zeroinitializer }, align 32
@vxge_update_fw_image._entry_ptr.15 = internal global ptr @vxge_update_fw_image._entry.13, section ".printk_index", align 4
@vxge_update_fw_image._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.2, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013invalid .ncf file\0A\00", [43 x i8] zeroinitializer }, align 32
@vxge_update_fw_image._entry_ptr.18 = internal global ptr @vxge_update_fw_image._entry.16, section ".printk_index", align 4
@vxge_update_fw_image._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.9, ptr @.str.2, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\013buffer overflow\0A\00", [45 x i8] zeroinitializer }, align 32
@vxge_update_fw_image._entry_ptr.21 = internal global ptr @vxge_update_fw_image._entry.19, section ".printk_index", align 4
@vxge_update_fw_image._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.9, ptr @.str.2, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013failed to flash the image\0A\00", [35 x i8] zeroinitializer }, align 32
@vxge_update_fw_image._entry_ptr.24 = internal global ptr @vxge_update_fw_image._entry.22, section ".printk_index", align 4
@vxge_update_fw_image._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.9, ptr @.str.2, i32 351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013generic error. Unknown error type\0A\00", [59 x i8] zeroinitializer }, align 32
@vxge_update_fw_image._entry_ptr.27 = internal global ptr @vxge_update_fw_image._entry.25, section ".printk_index", align 4
@vxge_update_fw_image._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.9, ptr @.str.2, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013Unknown error of type %d\0A\00", [36 x i8] zeroinitializer }, align 32
@vxge_update_fw_image._entry_ptr.30 = internal global ptr @vxge_update_fw_image._entry.28, section ".printk_index", align 4
@vxge_update_fw_image._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.9, ptr @.str.2, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013Unknown FW error: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@vxge_update_fw_image._entry_ptr.33 = internal global ptr @vxge_update_fw_image._entry.31, section ".printk_index", align 4
@vxge_hw_device_hw_info_get.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&vpath.lock\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%2.2d/%2.2d/%4.4d\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d.%d.%d\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__vxge_hw_vp_initialize.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&vpath->lock\00", [19 x i8] zeroinitializer }, align 32
@__vxge_hw_ring_create.ring_mp_callback = internal constant %struct.vxge_hw_mempool_cbs { ptr @__vxge_hw_ring_mempool_item_alloc }, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.40 = internal global [12 x i64] [i64 10, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.43 = internal global [6 x i64] [i64 4, i64 64, i64 81985529216486895, i64 -9168023830246607881, i64 -1167088121787636991, i64 -597899502893742976]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4294967295]
@__sancov_gen_cov_switch_values.45 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 5, i64 7]
@__sancov_gen_cov_switch_values.46 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.47 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.54 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.55 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.56 = internal global [6 x i64] [i64 4, i64 32, i64 6, i64 8, i64 9, i64 12]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 12]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 12]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 89, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 261, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 267, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 293, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 312, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 333, i32 5 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 341, i32 5 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 344, i32 5 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 347, i32 5 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 350, i32 5 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 354, i32 5 }
@___asan_gen_.147 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 361, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1057, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 828, i32 45 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 838, i32 51 }
@___asan_gen_.169 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 326, i32 6 }
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.172 = private constant [52 x i8] c"../drivers/net/ethernet/neterion/vxge/vxge-config.c\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 4653, i32 2 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @vxge_hw_flash_fw._entry, ptr @vxge_hw_flash_fw._entry.5, ptr @vxge_hw_flash_fw._entry_ptr, ptr @vxge_hw_flash_fw._entry_ptr.7, ptr @vxge_hw_vpath_wait_receive_idle._entry, ptr @vxge_hw_vpath_wait_receive_idle._entry_ptr, ptr @vxge_update_fw_image._entry, ptr @vxge_update_fw_image._entry.10, ptr @vxge_update_fw_image._entry.13, ptr @vxge_update_fw_image._entry.16, ptr @vxge_update_fw_image._entry.19, ptr @vxge_update_fw_image._entry.22, ptr @vxge_update_fw_image._entry.25, ptr @vxge_update_fw_image._entry.28, ptr @vxge_update_fw_image._entry.31, ptr @vxge_update_fw_image._entry_ptr, ptr @vxge_update_fw_image._entry_ptr.12, ptr @vxge_update_fw_image._entry_ptr.15, ptr @vxge_update_fw_image._entry_ptr.18, ptr @vxge_update_fw_image._entry_ptr.21, ptr @vxge_update_fw_image._entry_ptr.24, ptr @vxge_update_fw_image._entry_ptr.27, ptr @vxge_update_fw_image._entry_ptr.30, ptr @vxge_update_fw_image._entry_ptr.33, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @vxge_hw_device_hw_info_get.__key, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxge_hw_vpath_wait_receive_idle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxge_hw_flash_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxge_hw_flash_fw._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxge_update_fw_image._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxge_update_fw_image._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxge_update_fw_image._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxge_update_fw_image._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxge_update_fw_image._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxge_update_fw_image._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxge_update_fw_image._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxge_update_fw_image._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxge_update_fw_image._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxge_hw_device_hw_info_get.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_vpath_wait_receive_idle(ptr nocapture noundef readonly %hldev, i32 noundef %vp_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %vp_reg1 = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %vp_id, i32 4
  %0 = ptrtoint ptr %vp_reg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vp_reg1, align 16
  %rxmac_vcfg0.i = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %1, i32 0, i32 40
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxmac_vcfg0.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i.i = getelementptr i32, ptr %rxmac_vcfg0.i, i32 1
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %4 = and i32 %3, -65344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxmac_vcfg0.i, i32 %2) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %4) #16, !srcloc !81
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxmac_vcfg0.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %prc_cfg6 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %1, i32 0, i32 13
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %prc_cfg6) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i = getelementptr i32, ptr %prc_cfg6, i32 1
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %9 = call i32 @llvm.bswap.i32(i32 %7)
  %10 = lshr i32 %9, 18
  %11 = and i32 %10, 1022
  %narrow = add nuw nsw i32 %11, 2
  %mul = zext i32 %narrow to i64
  %prc_rxd_doorbell = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %1, i32 0, i32 16
  %add.ptr.i25 = getelementptr i32, ptr %prc_rxd_doorbell, i32 1
  %frm_in_progress_cnt = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %1, i32 0, i32 19
  %add.ptr.i26 = getelementptr i32, ptr %frm_in_progress_cnt, i32 1
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %count.0 = phi i32 [ 0, %entry ], [ %count.1, %do.body.do.body_crit_edge ]
  %total_count.0 = phi i32 [ 0, %entry ], [ %inc5, %do.body.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #16
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %prc_rxd_doorbell) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %15 = zext i32 %14 to i64
  %16 = zext i32 %13 to i64
  %17 = shl nuw i64 %16, 32
  %18 = or i64 %17, %15
  %19 = tail call i64 @llvm.bswap.i64(i64 %18) #16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %frm_in_progress_cnt) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %22 = zext i32 %21 to i64
  %23 = zext i32 %20 to i64
  %24 = shl nuw i64 %23, 32
  %25 = or i64 %24, %22
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %mul)
  %cmp.not = icmp ugt i64 %19, %mul
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %25)
  %cmp4.not = icmp eq i64 %25, 0
  %or.cond = select i1 %cmp.not, i1 %cmp4.not, i1 false
  %inc = add nsw i32 %count.0, 1
  %count.1 = select i1 %or.cond, i32 %inc, i32 0
  %inc5 = add nuw nsw i32 %total_count.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %count.1)
  %cmp6 = icmp slt i32 %count.1, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %total_count.0)
  %cmp7 = icmp ult i32 %total_count.0, 99
  %or.cond24 = select i1 %cmp6, i1 %cmp7, i1 false
  br i1 %or.cond24, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 98, i32 %total_count.0)
  %cmp8 = icmp ugt i32 %total_count.0, 98
  br i1 %cmp8, label %do.end12, label %do.end.if.end14_crit_edge

do.end.if.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

do.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  br label %if.end14

if.end14:                                         ; preds = %do.end12, %do.end.if.end14_crit_edge
  ret i32 %inc5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vxge_hw_device_wait_receive_idle(ptr nocapture noundef readonly %hldev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %vpaths_deployed = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %total_count.011 = phi i32 [ 0, %entry ], [ %total_count.1, %for.inc.for.body_crit_edge ]
  %i.09 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %vpaths_deployed to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %vpaths_deployed, align 8
  %sh_prom = zext i32 %i.09 to i64
  %shr = lshr i64 -9223372036854775808, %sh_prom
  %and = and i64 %1, %shr
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call = tail call i32 @vxge_hw_vpath_wait_receive_idle(ptr noundef %hldev, i32 noundef %i.09)
  %add = add i32 %call, %total_count.011
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %add)
  %cmp1 = icmp sgt i32 %add, 99
  br i1 %cmp1, label %if.end.for.end_crit_edge, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %total_count.1 = phi i32 [ %add, %if.end.for.inc_crit_edge ], [ %total_count.011, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_upgrade_read_version(ptr noundef %hldev, ptr nocapture noundef writeonly %major, ptr nocapture noundef writeonly %minor, ptr nocapture noundef writeonly %build) local_unnamed_addr #0 align 64 {
entry:
  %data0 = alloca i64, align 8
  %data1 = alloca i64, align 8
  %steer_ctrl = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data0) #16
  %0 = ptrtoint ptr %data0 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %data0, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data1) #16
  %1 = ptrtoint ptr %data1 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %data1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %steer_ctrl) #16
  %2 = ptrtoint ptr %steer_ctrl to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %steer_ctrl, align 8
  %first_vp_id = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 23
  %3 = ptrtoint ptr %first_vp_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %first_vp_id, align 16
  %arrayidx = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %4
  %call = call fastcc i32 @vxge_hw_vpath_fw_api(ptr noundef %arrayidx, i32 noundef 16, i32 noundef 13, i32 noundef 5, ptr noundef nonnull %data0, ptr noundef nonnull %data1, ptr noundef nonnull %steer_ctrl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %5 = ptrtoint ptr %data0 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %data0, align 8
  %7 = trunc i64 %6 to i32
  %8 = lshr i32 %7, 24
  %9 = ptrtoint ptr %major to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %major, align 4
  %10 = lshr i32 %7, 16
  %conv3 = and i32 %10, 255
  %11 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv3, ptr %minor, align 4
  %conv6 = and i32 %7, 65535
  %12 = ptrtoint ptr %build to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv6, ptr %build, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %steer_ctrl) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data1) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data0) #16
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vxge_hw_vpath_fw_api(ptr noundef %vpath, i32 noundef %action, i32 noundef %fw_memo, i32 noundef %offset, ptr nocapture noundef %data0, ptr nocapture noundef %data1, ptr nocapture noundef %steer_ctrl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %vp_reg1 = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %vpath, i32 0, i32 4
  %0 = ptrtoint ptr %vp_reg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vp_reg1, align 16
  %lock = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %vpath, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %lock) #16
  %vp_open = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %vpath, i32 0, i32 1
  %2 = ptrtoint ptr %vp_open to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vp_open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %max_retry.0 = phi i32 [ 3, %entry.if.end_crit_edge ], [ 100, %if.then ]
  %4 = ptrtoint ptr %data0 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %data0, align 8
  %rts_access_steer_data0 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %1, i32 0, i32 43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  %conv.i = trunc i64 %5 to i32
  %6 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rts_access_steer_data0, i32 %6) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %shr.i = lshr i64 %5, 32
  %conv3.i = trunc i64 %shr.i to i32
  %7 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #16
  %add.ptr.i = getelementptr i8, ptr %rts_access_steer_data0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #16, !srcloc !81
  %8 = ptrtoint ptr %data1 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %data1, align 8
  %rts_access_steer_data1 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %1, i32 0, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  %conv.i56 = trunc i64 %9 to i32
  %10 = tail call i32 @llvm.bswap.i32(i32 %conv.i56) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rts_access_steer_data1, i32 %10) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %shr.i57 = lshr i64 %9, 32
  %conv3.i58 = trunc i64 %shr.i57 to i32
  %11 = tail call i32 @llvm.bswap.i32(i32 %conv3.i58) #16
  %add.ptr.i59 = getelementptr i8, ptr %rts_access_steer_data1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %11) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !83
  tail call void @arm_heavy_mb() #16
  %conv = zext i32 %action to i64
  %shl = shl i64 %conv, 56
  %conv3 = zext i32 %fw_memo to i64
  %shl4 = shl i64 %conv3, 52
  %or = or i64 %shl, %shl4
  %conv5 = zext i32 %offset to i64
  %shl6 = shl nuw nsw i64 %conv5, 16
  %or7 = or i64 %or, %shl6
  %12 = ptrtoint ptr %steer_ctrl to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %steer_ctrl, align 8
  %or8 = or i64 %or7, %13
  %or9 = or i64 %or8, 281474976710656
  %rts_access_steer_ctrl = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %1, i32 0, i32 42
  %call = tail call fastcc i32 @__vxge_hw_pio_mem_write64(i64 noundef %or9, ptr noundef %rts_access_steer_ctrl, i32 noundef 1000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not64 = icmp eq i32 %call, 0
  br i1 %cmp.not64, label %if.end.if.end22.critedge_crit_edge, label %land.rhs.lr.ph

if.end.if.end22.critedge_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22.critedge

land.rhs.lr.ph:                                   ; preds = %if.end
  %add.ptr.i.i = getelementptr i32, ptr %rts_access_steer_ctrl, i32 1
  br label %while.body

land.rhs.loopexit:                                ; preds = %if.end6.i
  %inc = add nuw nsw i32 %inc71, 1
  %exitcond67.not = icmp eq i32 %inc71, %max_retry.0
  br i1 %exitcond67.not, label %land.rhs.loopexit.out_crit_edge, label %land.rhs.loopexit.while.body_crit_edge

land.rhs.loopexit.while.body_crit_edge:           ; preds = %land.rhs.loopexit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

land.rhs.loopexit.out_crit_edge:                  ; preds = %land.rhs.loopexit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

while.body:                                       ; preds = %land.rhs.loopexit.while.body_crit_edge, %land.rhs.lr.ph
  %inc71 = phi i32 [ 1, %land.rhs.lr.ph ], [ %inc, %land.rhs.loopexit.while.body_crit_edge ]
  %14 = ptrtoint ptr %vp_open to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vp_open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool14.not = icmp eq i32 %15, 0
  br i1 %tobool14.not, label %if.then15, label %while.body.if.end16_crit_edge

while.body.if.end16_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.then15:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @msleep(i32 noundef 20) #16
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %while.body.if.end16_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 2147480) #16
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.end16
  %i.0.i = phi i32 [ 0, %if.end16 ], [ %inc.i, %if.end.i.do.body.i_crit_edge ]
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rts_access_steer_ctrl) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %19 = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %do.body.i.if.end22.critedge_crit_edge, label %if.end.i

do.body.i.if.end22.critedge_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22.critedge

if.end.i:                                         ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 21474800) #16
  %inc.i = add nuw nsw i32 %i.0.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %if.end.i.do.body1.i_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

if.end.i.do.body1.i_crit_edge:                    ; preds = %if.end.i
  br label %do.body1.i

do.body1.i:                                       ; preds = %if.end6.i.do.body1.i_crit_edge, %if.end.i.do.body1.i_crit_edge
  %i.1.i = phi i32 [ %inc8.i, %if.end6.i.do.body1.i_crit_edge ], [ 0, %if.end.i.do.body1.i_crit_edge ]
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rts_access_steer_ctrl) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %23 = and i32 %22, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool4.not.i = icmp eq i32 %23, 0
  br i1 %tobool4.not.i, label %do.body1.i.if.end22.critedge_crit_edge, label %if.end6.i

do.body1.i.if.end22.critedge_crit_edge:           ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22.critedge

if.end6.i:                                        ; preds = %do.body1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #16
  %inc8.i = add nuw nsw i32 %i.1.i, 1
  %exitcond = icmp eq i32 %inc8.i, 1001
  br i1 %exitcond, label %land.rhs.loopexit, label %if.end6.i.do.body1.i_crit_edge

if.end6.i.do.body1.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body1.i

if.end22.critedge:                                ; preds = %do.body1.i.if.end22.critedge_crit_edge, %do.body.i.if.end22.critedge_crit_edge, %if.end.if.end22.critedge_crit_edge
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rts_access_steer_ctrl) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i60 = getelementptr i32, ptr %rts_access_steer_ctrl, i32 1
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i60) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %27 = zext i32 %26 to i64
  %28 = zext i32 %25 to i64
  %29 = shl nuw i64 %28, 32
  %30 = or i64 %29, %27
  %31 = tail call i64 @llvm.bswap.i64(i64 %30) #16
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %31)
  %tobool25.not = icmp sgt i64 %31, -1
  br i1 %tobool25.not, label %if.end22.critedge.out_crit_edge, label %if.then26

if.end22.critedge.out_crit_edge:                  ; preds = %if.end22.critedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then26:                                        ; preds = %if.end22.critedge
  call void @__sanitizer_cov_trace_pc() #18
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rts_access_steer_data0) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %34 = zext i32 %33 to i64
  %35 = zext i32 %32 to i64
  %36 = shl nuw i64 %35, 32
  %37 = or i64 %36, %34
  %38 = tail call i64 @llvm.bswap.i64(i64 %37) #16
  %39 = ptrtoint ptr %data0 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %data0, align 8
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rts_access_steer_data1) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %42 = zext i32 %41 to i64
  %43 = zext i32 %40 to i64
  %44 = shl nuw i64 %43, 32
  %45 = or i64 %44, %42
  %46 = tail call i64 @llvm.bswap.i64(i64 %45) #16
  %47 = ptrtoint ptr %data1 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %data1, align 8
  %48 = ptrtoint ptr %steer_ctrl to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %31, ptr %steer_ctrl, align 8
  br label %out

out:                                              ; preds = %if.then26, %if.end22.critedge.out_crit_edge, %land.rhs.loopexit.out_crit_edge
  %status.1 = phi i32 [ 0, %if.then26 ], [ 1, %if.end22.critedge.out_crit_edge ], [ 1, %land.rhs.loopexit.out_crit_edge ]
  %49 = ptrtoint ptr %vp_open to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %vp_open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool33.not = icmp eq i32 %50, 0
  br i1 %tobool33.not, label %out.if.end36_crit_edge, label %if.then34

out.if.end36_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

if.then34:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %out.if.end36_crit_edge
  ret i32 %status.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_flash_fw(ptr noundef %hldev) local_unnamed_addr #0 align 64 {
entry:
  %data0 = alloca i64, align 8
  %data1 = alloca i64, align 8
  %steer_ctrl = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data0) #16
  %0 = ptrtoint ptr %data0 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %data0, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data1) #16
  %1 = ptrtoint ptr %data1 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %data1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %steer_ctrl) #16
  %2 = ptrtoint ptr %steer_ctrl to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %steer_ctrl, align 8
  %first_vp_id = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 23
  %3 = ptrtoint ptr %first_vp_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %first_vp_id, align 16
  %arrayidx = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %4
  %call = call fastcc i32 @vxge_hw_vpath_fw_api(ptr noundef %arrayidx, i32 noundef 16, i32 noundef 13, i32 noundef 4, ptr noundef nonnull %data0, ptr noundef nonnull %data1, ptr noundef nonnull %steer_ctrl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #19
  br label %exit

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %steer_ctrl to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %steer_ctrl, align 8
  %shr = lshr i64 %6, 56
  %7 = trunc i64 %shr to i32
  %conv = and i32 %7, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv)
  %cmp6.not = icmp eq i32 %conv, 1
  br i1 %cmp6.not, label %if.end.exit_crit_edge, label %do.end12

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef %conv) #19
  br label %exit

exit:                                             ; preds = %do.end12, %if.end.exit_crit_edge, %do.end
  %status.0 = phi i32 [ %call, %do.end ], [ 1, %do.end12 ], [ 0, %if.end.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %steer_ctrl) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data1) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data0) #16
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_update_fw_image(ptr noundef %hldev, ptr nocapture noundef readonly %fwdata, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %data0 = alloca i64, align 8
  %data1 = alloca i64, align 8
  %steer_ctrl = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data0) #16
  %0 = ptrtoint ptr %data0 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %data0, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data1) #16
  %1 = ptrtoint ptr %data1 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %data1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %steer_ctrl) #16
  %2 = ptrtoint ptr %steer_ctrl to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %steer_ctrl, align 8
  %first_vp_id = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 23
  %3 = ptrtoint ptr %first_vp_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %first_vp_id, align 16
  %arrayidx = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %4
  %call = call fastcc i32 @vxge_hw_vpath_fw_api(ptr noundef %arrayidx, i32 noundef 16, i32 noundef 13, i32 noundef 2, ptr noundef nonnull %data0, ptr noundef nonnull %data1, ptr noundef nonnull %steer_ctrl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.cond.preheader, label %do.end

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp587 = icmp sgt i32 %size, 0
  br i1 %cmp587, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #19
  br label %cleanup

for.body:                                         ; preds = %sw.epilog66.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %fwdata.addr.089 = phi ptr [ %add.ptr67, %sw.epilog66.for.body_crit_edge ], [ %fwdata, %for.cond.preheader.for.body_crit_edge ]
  %size.addr.088 = phi i32 [ %sub, %sw.epilog66.for.body_crit_edge ], [ %size, %for.cond.preheader.for.body_crit_edge ]
  %5 = ptrtoint ptr %steer_ctrl to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %steer_ctrl, align 8
  %6 = ptrtoint ptr %fwdata.addr.089 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %fwdata.addr.089, align 8
  %8 = ptrtoint ptr %data0 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %data0, align 8
  %add.ptr = getelementptr i64, ptr %fwdata.addr.089, i32 1
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %add.ptr, align 8
  %11 = ptrtoint ptr %data1 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %data1, align 8
  %call6 = call fastcc i32 @vxge_hw_vpath_fw_api(ptr noundef %arrayidx, i32 noundef 16, i32 noundef 13, i32 noundef 3, ptr noundef nonnull %data0, ptr noundef nonnull %data1, ptr noundef nonnull %steer_ctrl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, 0
  br i1 %cmp7.not, label %if.end17, label %do.end12

do.end12:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9) #19
  br label %cleanup

if.end17:                                         ; preds = %for.body
  %12 = ptrtoint ptr %data0 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %data0, align 8
  %trunc = trunc i64 %13 to i8
  %14 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %do.end63 [
    i8 0, label %if.end17.sw.epilog66_crit_edge
    i8 3, label %sw.bb
    i8 1, label %if.end17.cleanup_crit_edge
    i8 2, label %sw.bb21
  ]

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end17.sw.epilog66_crit_edge:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog66

sw.bb:                                            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  %shr = lshr i64 %13, 8
  %idx.ext = trunc i64 %shr to i32
  %add.ptr19 = getelementptr i8, ptr %fwdata.addr.089, i32 %idx.ext
  br label %sw.epilog66

sw.bb21:                                          ; preds = %if.end17
  %15 = trunc i64 %13 to i32
  %16 = lshr i32 %15, 8
  %trunc85 = trunc i32 %16 to i8
  %17 = zext i8 %trunc85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %trunc85, label %do.end57 [
    i8 1, label %sw.bb21.do.end28_crit_edge
    i8 7, label %sw.bb21.do.end28_crit_edge100
    i8 3, label %sw.bb21.do.end34_crit_edge
    i8 4, label %sw.bb21.do.end34_crit_edge101
    i8 5, label %sw.bb21.do.end34_crit_edge102
    i8 6, label %sw.bb21.do.end34_crit_edge103
    i8 8, label %sw.bb21.do.end34_crit_edge104
    i8 2, label %do.end40
    i8 10, label %do.end46
    i8 9, label %do.end52
  ]

sw.bb21.do.end34_crit_edge104:                    ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end34

sw.bb21.do.end34_crit_edge103:                    ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end34

sw.bb21.do.end34_crit_edge102:                    ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end34

sw.bb21.do.end34_crit_edge101:                    ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end34

sw.bb21.do.end34_crit_edge:                       ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end34

sw.bb21.do.end28_crit_edge100:                    ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end28

sw.bb21.do.end28_crit_edge:                       ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end28

do.end28:                                         ; preds = %sw.bb21.do.end28_crit_edge, %sw.bb21.do.end28_crit_edge100
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #19
  br label %cleanup

do.end34:                                         ; preds = %sw.bb21.do.end34_crit_edge, %sw.bb21.do.end34_crit_edge101, %sw.bb21.do.end34_crit_edge102, %sw.bb21.do.end34_crit_edge103, %sw.bb21.do.end34_crit_edge104
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #19
  br label %cleanup

do.end40:                                         ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #18
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #19
  br label %cleanup

do.end46:                                         ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #18
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #19
  br label %cleanup

do.end52:                                         ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #18
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #19
  br label %cleanup

do.end57:                                         ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #18
  %conv24 = and i32 %16, 255
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %conv24) #19
  br label %cleanup

do.end63:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  %18 = trunc i64 %13 to i32
  %conv = and i32 %18, 255
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %conv) #19
  br label %cleanup

sw.epilog66:                                      ; preds = %sw.bb, %if.end17.sw.epilog66_crit_edge
  %fwdata.addr.1 = phi ptr [ %add.ptr19, %sw.bb ], [ %fwdata.addr.089, %if.end17.sw.epilog66_crit_edge ]
  %add.ptr67 = getelementptr i8, ptr %fwdata.addr.1, i32 16
  %sub = add nsw i32 %size.addr.088, -16
  %cmp5 = icmp sgt i32 %size.addr.088, 16
  br i1 %cmp5, label %sw.epilog66.for.body_crit_edge, label %sw.epilog66.cleanup_crit_edge

sw.epilog66.cleanup_crit_edge:                    ; preds = %sw.epilog66
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.epilog66.for.body_crit_edge:                   ; preds = %sw.epilog66
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

cleanup:                                          ; preds = %sw.epilog66.cleanup_crit_edge, %do.end63, %do.end57, %do.end52, %do.end46, %do.end40, %do.end34, %do.end28, %if.end17.cleanup_crit_edge, %do.end12, %do.end, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 1, %do.end12 ], [ 1, %do.end63 ], [ 1, %do.end57 ], [ 1, %do.end52 ], [ 1, %do.end46 ], [ 1, %do.end40 ], [ 1, %do.end34 ], [ 1, %do.end28 ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ], [ 0, %sw.epilog66.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %steer_ctrl) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data1) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data0) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_vpath_eprom_img_ver_get(ptr noundef %hldev, ptr nocapture noundef %img) local_unnamed_addr #0 align 64 {
entry:
  %data0 = alloca i64, align 8
  %data1 = alloca i64, align 8
  %steer_ctrl = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data0) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data1) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %steer_ctrl) #16
  %first_vp_id = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 23
  %0 = ptrtoint ptr %first_vp_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %first_vp_id, align 16
  %arrayidx = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %1
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.029 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %conv28 = zext i32 %i.029 to i64
  %shl = shl i64 %conv28, 40
  %2 = ptrtoint ptr %data0 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %shl, ptr %data0, align 8
  %3 = ptrtoint ptr %steer_ctrl to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %steer_ctrl, align 8
  %4 = ptrtoint ptr %data1 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %data1, align 8
  %call = call fastcc i32 @vxge_hw_vpath_fw_api(ptr noundef %arrayidx, i32 noundef 31, i32 noundef 13, i32 noundef 0, ptr noundef nonnull %data0, ptr noundef nonnull %data1, ptr noundef nonnull %steer_ctrl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1.not = icmp eq i32 %call, 0
  br i1 %cmp1.not, label %if.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end:                                           ; preds = %for.body
  %5 = ptrtoint ptr %data0 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %data0, align 8
  %arrayidx4 = getelementptr %struct.eprom_image, ptr %img, i32 %i.029
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %arrayidx4, align 2
  %sh.diff = lshr i64 %6, 25
  %tr.sh.diff = trunc i64 %sh.diff to i8
  %bf.shl = and i8 %tr.sh.diff, -128
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.shl, %bf.clear
  store i8 %bf.set, ptr %arrayidx4, align 2
  %shr5 = lshr i64 %6, 40
  %conv7 = trunc i64 %shr5 to i8
  %index = getelementptr %struct.eprom_image, ptr %img, i32 %i.029, i32 1
  %8 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv7, ptr %index, align 1
  %shr9 = lshr i64 %6, 16
  %conv11 = trunc i64 %shr9 to i8
  %type = getelementptr %struct.eprom_image, ptr %img, i32 %i.029, i32 2
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv11, ptr %type, align 2
  %conv15 = trunc i64 %6 to i16
  %version = getelementptr %struct.eprom_image, ptr %img, i32 %i.029, i32 3
  %10 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv15, ptr %version, align 2
  %inc = add nuw nsw i32 %i.029, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %steer_ctrl) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data1) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data0) #16
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @__vxge_hw_device_is_privilaged(i32 noundef %host_type, i32 noundef %func_id) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %host_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %host_type, label %entry.__vxge_hw_device_access_rights_get.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb3.i
  ]

entry.__vxge_hw_device_access_rights_get.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_device_access_rights_get.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %func_id)
  %cmp.i.not = icmp eq i32 %func_id, 0
  %phi.sel = select i1 %cmp.i.not, i32 0, i32 217
  br label %__vxge_hw_device_access_rights_get.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_device_access_rights_get.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_device_access_rights_get.exit

__vxge_hw_device_access_rights_get.exit:          ; preds = %sw.bb3.i, %sw.bb1.i, %sw.bb.i, %entry.__vxge_hw_device_access_rights_get.exit_crit_edge
  %access_rights.0.i = phi i32 [ 0, %sw.bb3.i ], [ 0, %sw.bb1.i ], [ %phi.sel, %sw.bb.i ], [ 217, %entry.__vxge_hw_device_access_rights_get.exit_crit_edge ]
  ret i32 %access_rights.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_device_hw_info_get(ptr noundef %bar0, ptr noundef %hw_info) local_unnamed_addr #0 align 64 {
entry:
  %data0.i139 = alloca i64, align 8
  %data1.i140 = alloca i64, align 8
  %steer_ctrl.i141 = alloca i64, align 8
  %data0.i131 = alloca i64, align 8
  %data1.i132 = alloca i64, align 8
  %steer_ctrl.i133 = alloca i64, align 8
  %data0.i = alloca i64, align 8
  %data1.i = alloca i64, align 8
  %steer_ctrl.i = alloca i64, align 8
  %vpath = alloca %struct.__vxge_hw_virtualpath, align 128
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %vpath) #16
  %0 = call ptr @memset(ptr %vpath, i32 255, i32 384)
  %1 = call ptr @memset(ptr %hw_info, i32 0, i32 608)
  %call = tail call fastcc ptr @__vxge_hw_device_toc_get(ptr noundef %bar0)
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end:                                           ; preds = %entry
  %toc_common_pointer = getelementptr inbounds %struct.vxge_hw_toc_reg, ptr %call, i32 0, i32 1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %toc_common_pointer) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i = getelementptr i32, ptr %toc_common_pointer, i32 1
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %4 = call i32 @llvm.bswap.i32(i32 %2)
  %add.ptr = getelementptr i8, ptr %bar0, i32 %4
  %vpath_rst_in_prog = getelementptr inbounds %struct.vxge_hw_common_reg, ptr %add.ptr, i32 0, i32 59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 2147480) #16
  %add.ptr.i.i.i = getelementptr i32, ptr %vpath_rst_in_prog, i32 1
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i.do.body.i.i_crit_edge, %if.end
  %i.0.i.i = phi i32 [ 0, %if.end ], [ %inc.i.i, %if.end.i.i.do.body.i.i_crit_edge ]
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vpath_rst_in_prog) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %8 = and i32 %7, 8454143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.if.end5_crit_edge, label %if.end.i.i

do.body.i.i.if.end5_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.end.i.i:                                       ; preds = %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 21474800) #16
  %inc.i.i = add nuw nsw i32 %i.0.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 10
  br i1 %exitcond.not.i.i, label %if.end.i.i.do.body1.i.i_crit_edge, label %if.end.i.i.do.body.i.i_crit_edge

if.end.i.i.do.body.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i

if.end.i.i.do.body1.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %do.body1.i.i

do.body1.i.i:                                     ; preds = %if.end6.i.i.do.body1.i.i_crit_edge, %if.end.i.i.do.body1.i.i_crit_edge
  %i.1.i.i = phi i32 [ %inc8.i.i, %if.end6.i.i.do.body1.i.i_crit_edge ], [ 0, %if.end.i.i.do.body1.i.i_crit_edge ]
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vpath_rst_in_prog) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %12 = and i32 %11, 8454143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool4.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool4.not.i.i, label %do.body1.i.i.if.end5_crit_edge, label %if.end6.i.i

do.body1.i.i.if.end5_crit_edge:                   ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.end6.i.i:                                      ; preds = %do.body1.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #16
  %inc8.i.i = add nuw nsw i32 %i.1.i.i, 1
  %exitcond.i = icmp eq i32 %inc8.i.i, 1001
  br i1 %exitcond.i, label %if.end6.i.i.exit_crit_edge, label %if.end6.i.i.do.body1.i.i_crit_edge

if.end6.i.i.do.body1.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body1.i.i

if.end6.i.i.exit_crit_edge:                       ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end5:                                          ; preds = %do.body1.i.i.if.end5_crit_edge, %do.body.i.i.if.end5_crit_edge
  %vpath_assignments = getelementptr inbounds %struct.vxge_hw_common_reg, ptr %add.ptr, i32 0, i32 69
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vpath_assignments) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i125 = getelementptr i32, ptr %vpath_assignments, i32 1
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i125) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %16 = zext i32 %15 to i64
  %17 = zext i32 %14 to i64
  %18 = shl nuw i64 %17, 32
  %19 = or i64 %18, %16
  %20 = tail call i64 @llvm.bswap.i64(i64 %19) #16
  %vpath_mask = getelementptr inbounds %struct.vxge_hw_device_hw_info, ptr %hw_info, i32 0, i32 3
  %21 = ptrtoint ptr %vpath_mask to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %vpath_mask, align 8
  %host_type_assignments = getelementptr inbounds %struct.vxge_hw_common_reg, ptr %add.ptr, i32 0, i32 71
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %host_type_assignments) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i126 = getelementptr i32, ptr %host_type_assignments, i32 1
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i126) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %conv = and i32 %23, 7
  %24 = ptrtoint ptr %hw_info to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv, ptr %hw_info, align 8
  %25 = ptrtoint ptr %vpath_mask to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %vpath_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %26)
  %tobool.not = icmp sgt i64 %26, -1
  br i1 %tobool.not, label %for.inc, label %if.end5.if.end14_crit_edge

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.end14:                                         ; preds = %for.inc.15.if.end14_crit_edge, %for.inc.14.if.end14_crit_edge, %for.inc.13.if.end14_crit_edge, %for.inc.12.if.end14_crit_edge, %for.inc.11.if.end14_crit_edge, %for.inc.10.if.end14_crit_edge, %for.inc.9.if.end14_crit_edge, %for.inc.8.if.end14_crit_edge, %for.inc.7.if.end14_crit_edge, %for.inc.6.if.end14_crit_edge, %for.inc.5.if.end14_crit_edge, %for.inc.4.if.end14_crit_edge, %for.inc.3.if.end14_crit_edge, %for.inc.2.if.end14_crit_edge, %for.inc.1.if.end14_crit_edge, %for.inc.if.end14_crit_edge, %if.end5.if.end14_crit_edge
  %i.0167.lcssa = phi i32 [ 0, %if.end5.if.end14_crit_edge ], [ 1, %for.inc.if.end14_crit_edge ], [ 2, %for.inc.1.if.end14_crit_edge ], [ 3, %for.inc.2.if.end14_crit_edge ], [ 4, %for.inc.3.if.end14_crit_edge ], [ 5, %for.inc.4.if.end14_crit_edge ], [ 6, %for.inc.5.if.end14_crit_edge ], [ 7, %for.inc.6.if.end14_crit_edge ], [ 8, %for.inc.7.if.end14_crit_edge ], [ 9, %for.inc.8.if.end14_crit_edge ], [ 10, %for.inc.9.if.end14_crit_edge ], [ 11, %for.inc.10.if.end14_crit_edge ], [ 12, %for.inc.11.if.end14_crit_edge ], [ 13, %for.inc.12.if.end14_crit_edge ], [ 14, %for.inc.13.if.end14_crit_edge ], [ 15, %for.inc.14.if.end14_crit_edge ], [ 16, %for.inc.15.if.end14_crit_edge ]
  %arrayidx = getelementptr %struct.vxge_hw_toc_reg, ptr %call, i32 0, i32 8, i32 %i.0167.lcssa
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i127 = getelementptr i32, ptr %arrayidx, i32 1
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i127) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %29 = call i32 @llvm.bswap.i32(i32 %27)
  %add.ptr17 = getelementptr i8, ptr %bar0, i32 %29
  %vpath_to_func_map_cfg1.i = getelementptr inbounds %struct.vxge_hw_vpmgmt_reg, ptr %add.ptr17, i32 0, i32 1
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vpath_to_func_map_cfg1.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i.i = getelementptr i32, ptr %vpath_to_func_map_cfg1.i, i32 1
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %conv.i = and i32 %31, 31
  %func_id = getelementptr inbounds %struct.vxge_hw_device_hw_info, ptr %hw_info, i32 0, i32 2
  %32 = ptrtoint ptr %func_id to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv.i, ptr %func_id, align 8
  %33 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hw_info, align 8
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %34, label %if.end14.if.end28_crit_edge [
    i32 0, label %__vxge_hw_device_access_rights_get.exit
    i32 1, label %if.end14.if.then24_crit_edge
    i32 2, label %if.end14.if.then24_crit_edge188
  ]

if.end14.if.then24_crit_edge188:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then24

if.end14.if.then24_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then24

if.end14.if.end28_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

__vxge_hw_device_access_rights_get.exit:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %cmp.i.not = icmp eq i32 %conv.i, 0
  br i1 %cmp.i.not, label %__vxge_hw_device_access_rights_get.exit.if.then24_crit_edge, label %__vxge_hw_device_access_rights_get.exit.if.end28_crit_edge

__vxge_hw_device_access_rights_get.exit.if.end28_crit_edge: ; preds = %__vxge_hw_device_access_rights_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

__vxge_hw_device_access_rights_get.exit.if.then24_crit_edge: ; preds = %__vxge_hw_device_access_rights_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then24

if.then24:                                        ; preds = %__vxge_hw_device_access_rights_get.exit.if.then24_crit_edge, %if.end14.if.then24_crit_edge, %if.end14.if.then24_crit_edge188
  %toc_mrpcim_pointer = getelementptr inbounds %struct.vxge_hw_toc_reg, ptr %call, i32 0, i32 5
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %toc_mrpcim_pointer) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i128 = getelementptr i32, ptr %toc_mrpcim_pointer, i32 1
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i128) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %38 = call i32 @llvm.bswap.i32(i32 %36)
  %add.ptr27 = getelementptr i8, ptr %bar0, i32 %38
  %xgmac_gen_fw_memo_mask = getelementptr inbounds %struct.vxge_hw_mrpcim_reg, ptr %add.ptr27, i32 0, i32 180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %xgmac_gen_fw_memo_mask, i32 0) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %add.ptr.i129 = getelementptr i8, ptr %xgmac_gen_fw_memo_mask, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i129, i32 0) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !84
  tail call void @arm_heavy_mb() #16
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %__vxge_hw_device_access_rights_get.exit.if.end28_crit_edge, %if.end14.if.end28_crit_edge
  %arrayidx29 = getelementptr %struct.vxge_hw_toc_reg, ptr %call, i32 0, i32 10, i32 %i.0167.lcssa
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx29) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i130 = getelementptr i32, ptr %arrayidx29, i32 1
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i130) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %41 = call i32 @llvm.bswap.i32(i32 %39)
  %lock = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %vpath, i32 0, i32 24
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.34, ptr noundef nonnull @vxge_hw_device_hw_info_get.__key, i16 noundef signext 3) #16
  %add.ptr36 = getelementptr i8, ptr %bar0, i32 %41
  %vp_reg = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %vpath, i32 0, i32 4
  %42 = ptrtoint ptr %vp_reg to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr36, ptr %vp_reg, align 16
  %vp_open = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %vpath, i32 0, i32 1
  %43 = ptrtoint ptr %vp_open to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %vp_open, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data0.i) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data1.i) #16
  %44 = ptrtoint ptr %data1.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 0, ptr %data1.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %steer_ctrl.i) #16
  %45 = ptrtoint ptr %steer_ctrl.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 0, ptr %steer_ctrl.i, align 8
  %46 = ptrtoint ptr %data0.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 0, ptr %data0.i, align 8
  %call.i = call fastcc i32 @vxge_hw_vpath_fw_api(ptr noundef nonnull %vpath, i32 noundef 29, i32 noundef 13, i32 noundef 0, ptr noundef nonnull %data0.i, ptr noundef nonnull %data1.i, ptr noundef nonnull %steer_ctrl.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end41, label %__vxge_hw_vpath_pci_func_mode_get.exit

__vxge_hw_vpath_pci_func_mode_get.exit:           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %steer_ctrl.i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data1.i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data0.i) #16
  br label %exit

if.end41:                                         ; preds = %if.end28
  %47 = ptrtoint ptr %data0.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %data0.i, align 8
  %and.i = and i64 %48, 255
  %function_mode.i = getelementptr inbounds %struct.vxge_hw_device_hw_info, ptr %hw_info, i32 0, i32 1
  %49 = ptrtoint ptr %function_mode.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %and.i, ptr %function_mode.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %steer_ctrl.i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data1.i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data0.i) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data0.i131) #16
  %50 = ptrtoint ptr %data0.i131 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 0, ptr %data0.i131, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data1.i132) #16
  %51 = ptrtoint ptr %data1.i132 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 0, ptr %data1.i132, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %steer_ctrl.i133) #16
  %52 = ptrtoint ptr %steer_ctrl.i133 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 0, ptr %steer_ctrl.i133, align 8
  %call.i134 = call fastcc i32 @vxge_hw_vpath_fw_api(ptr noundef nonnull %vpath, i32 noundef 0, i32 noundef 13, i32 noundef 0, ptr noundef nonnull %data0.i131, ptr noundef nonnull %data1.i132, ptr noundef nonnull %steer_ctrl.i133) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134)
  %cmp.not.i135 = icmp eq i32 %call.i134, 0
  br i1 %cmp.not.i135, label %if.end46, label %__vxge_hw_vpath_fw_ver_get.exit

__vxge_hw_vpath_fw_ver_get.exit:                  ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %steer_ctrl.i133) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data1.i132) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data0.i131) #16
  br label %exit

if.end46:                                         ; preds = %if.end41
  %flash_date4.i = getelementptr inbounds %struct.vxge_hw_device_hw_info, ptr %hw_info, i32 0, i32 7
  %flash_version3.i = getelementptr inbounds %struct.vxge_hw_device_hw_info, ptr %hw_info, i32 0, i32 6
  %fw_date2.i = getelementptr inbounds %struct.vxge_hw_device_hw_info, ptr %hw_info, i32 0, i32 5
  %fw_version1.i = getelementptr inbounds %struct.vxge_hw_device_hw_info, ptr %hw_info, i32 0, i32 4
  %53 = ptrtoint ptr %data0.i131 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %data0.i131, align 8
  %shr.i = lshr i64 %54, 56
  %conv.i136 = trunc i64 %shr.i to i32
  %55 = ptrtoint ptr %fw_date2.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv.i136, ptr %fw_date2.i, align 4
  %shr5.i = lshr i64 %54, 48
  %56 = trunc i64 %shr5.i to i32
  %conv7.i = and i32 %56, 255
  %month.i = getelementptr inbounds %struct.vxge_hw_device_hw_info, ptr %hw_info, i32 0, i32 5, i32 1
  %57 = ptrtoint ptr %month.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv7.i, ptr %month.i, align 4
  %shr8.i = lshr i64 %54, 32
  %58 = trunc i64 %shr8.i to i32
  %conv10.i = and i32 %58, 65535
  %year.i = getelementptr inbounds %struct.vxge_hw_device_hw_info, ptr %hw_info, i32 0, i32 5, i32 2
  %59 = ptrtoint ptr %year.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv10.i, ptr %year.i, align 4
  %date.i = getelementptr inbounds %struct.vxge_hw_device_hw_info, ptr %hw_info, i32 0, i32 5, i32 3
  %call14.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %date.i, i32 noundef 32, ptr noundef nonnull @.str.35, i32 noundef %conv7.i, i32 noundef %conv.i136, i32 noundef %conv10.i) #16
  %60 = trunc i64 %54 to i32
  %61 = lshr i32 %60, 24
  %62 = ptrtoint ptr %fw_version1.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %fw_version1.i, align 4
  %63 = lshr i32 %60, 16
  %conv20.i = and i32 %63, 255
  %minor.i = getelementptr inbounds %struct.vxge_hw_device_hw_info, ptr %hw_info, i32 0, i32 4, i32 1
  %64 = ptrtoint ptr %minor.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv20.i, ptr %minor.i, align 4
  %conv23.i = and i32 %60, 65535
  %build.i = getelementptr inbounds %struct.vxge_hw_device_hw_info, ptr %hw_info, i32 0, i32 4, i32 2
  %65 = ptrtoint ptr %build.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv23.i, ptr %build.i, align 4
  %version.i = getelementptr inbounds %struct.vxge_hw_device_hw_info, ptr %hw_info, i32 0, i32 4, i32 3
  %call28.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %version.i, i32 noundef 32, ptr noundef nonnull @.str.36, i32 noundef %61, i32 noundef %conv20.i, i32 noundef %conv23.i) #16
  %66 = ptrtoint ptr %data1.i132 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %data1.i132, align 8
  %shr29.i = lshr i64 %67, 56
  %conv31.i = trunc i64 %shr29.i to i32
  %68 = ptrtoint ptr %flash_date4.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv31.i, ptr %flash_date4.i, align 4
  %shr33.i = lshr i64 %67, 48
  %69 = trunc i64 %shr33.i to i32
  %conv35.i = and i32 %69, 255
  %month36.i = getelementptr inbounds %struct.vxge_hw_device_hw_info, ptr %hw_info, i32 0, i32 7, i32 1
  %70 = ptrtoint ptr %month36.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %conv35.i, ptr %month36.i, align 4
  %shr37.i = lshr i64 %67, 32
  %71 = trunc i64 %shr37.i to i32
  %conv39.i = and i32 %71, 65535
  %year40.i = getelementptr inbounds %struct.vxge_hw_device_hw_info, ptr %hw_info, i32 0, i32 7, i32 2
  %72 = ptrtoint ptr %year40.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %conv39.i, ptr %year40.i, align 4
  %date41.i = getelementptr inbounds %struct.vxge_hw_device_hw_info, ptr %hw_info, i32 0, i32 7, i32 3
  %call46.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %date41.i, i32 noundef 32, ptr noundef nonnull @.str.35, i32 noundef %conv35.i, i32 noundef %conv31.i, i32 noundef %conv39.i) #16
  %73 = trunc i64 %67 to i32
  %74 = lshr i32 %73, 24
  %75 = ptrtoint ptr %flash_version3.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %flash_version3.i, align 4
  %76 = lshr i32 %73, 16
  %conv53.i = and i32 %76, 255
  %minor54.i = getelementptr inbounds %struct.vxge_hw_device_hw_info, ptr %hw_info, i32 0, i32 6, i32 1
  %77 = ptrtoint ptr %minor54.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %conv53.i, ptr %minor54.i, align 4
  %conv57.i = and i32 %73, 65535
  %build58.i = getelementptr inbounds %struct.vxge_hw_device_hw_info, ptr %hw_info, i32 0, i32 6, i32 2
  %78 = ptrtoint ptr %build58.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %conv57.i, ptr %build58.i, align 4
  %version59.i = getelementptr inbounds %struct.vxge_hw_device_hw_info, ptr %hw_info, i32 0, i32 6, i32 3
  %call64.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %version59.i, i32 noundef 32, ptr noundef nonnull @.str.36, i32 noundef %74, i32 noundef %conv53.i, i32 noundef %conv57.i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %steer_ctrl.i133) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data1.i132) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data0.i131) #16
  %call47 = call fastcc i32 @__vxge_hw_vpath_card_info_get(ptr noundef nonnull %vpath, ptr noundef %hw_info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48.not = icmp eq i32 %call47, 0
  br i1 %cmp48.not, label %if.end46.for.end_crit_edge, label %if.end46.exit_crit_edge

if.end46.exit_crit_edge:                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end46.for.end_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc:                                          ; preds = %if.end5
  %and12.1 = and i64 %26, 4611686018427387904
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and12.1)
  %tobool.not.1 = icmp eq i64 %and12.1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %for.inc.if.end14_crit_edge

for.inc.if.end14_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

for.inc.1:                                        ; preds = %for.inc
  %and12.2 = and i64 %26, 2305843009213693952
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and12.2)
  %tobool.not.2 = icmp eq i64 %and12.2, 0
  br i1 %tobool.not.2, label %for.inc.2, label %for.inc.1.if.end14_crit_edge

for.inc.1.if.end14_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

for.inc.2:                                        ; preds = %for.inc.1
  %and12.3 = and i64 %26, 1152921504606846976
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and12.3)
  %tobool.not.3 = icmp eq i64 %and12.3, 0
  br i1 %tobool.not.3, label %for.inc.3, label %for.inc.2.if.end14_crit_edge

for.inc.2.if.end14_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

for.inc.3:                                        ; preds = %for.inc.2
  %and12.4 = and i64 %26, 576460752303423488
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and12.4)
  %tobool.not.4 = icmp eq i64 %and12.4, 0
  br i1 %tobool.not.4, label %for.inc.4, label %for.inc.3.if.end14_crit_edge

for.inc.3.if.end14_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

for.inc.4:                                        ; preds = %for.inc.3
  %and12.5 = and i64 %26, 288230376151711744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and12.5)
  %tobool.not.5 = icmp eq i64 %and12.5, 0
  br i1 %tobool.not.5, label %for.inc.5, label %for.inc.4.if.end14_crit_edge

for.inc.4.if.end14_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

for.inc.5:                                        ; preds = %for.inc.4
  %and12.6 = and i64 %26, 144115188075855872
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and12.6)
  %tobool.not.6 = icmp eq i64 %and12.6, 0
  br i1 %tobool.not.6, label %for.inc.6, label %for.inc.5.if.end14_crit_edge

for.inc.5.if.end14_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

for.inc.6:                                        ; preds = %for.inc.5
  %and12.7 = and i64 %26, 72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and12.7)
  %tobool.not.7 = icmp eq i64 %and12.7, 0
  br i1 %tobool.not.7, label %for.inc.7, label %for.inc.6.if.end14_crit_edge

for.inc.6.if.end14_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

for.inc.7:                                        ; preds = %for.inc.6
  %and12.8 = and i64 %26, 36028797018963968
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and12.8)
  %tobool.not.8 = icmp eq i64 %and12.8, 0
  br i1 %tobool.not.8, label %for.inc.8, label %for.inc.7.if.end14_crit_edge

for.inc.7.if.end14_crit_edge:                     ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

for.inc.8:                                        ; preds = %for.inc.7
  %and12.9 = and i64 %26, 18014398509481984
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and12.9)
  %tobool.not.9 = icmp eq i64 %and12.9, 0
  br i1 %tobool.not.9, label %for.inc.9, label %for.inc.8.if.end14_crit_edge

for.inc.8.if.end14_crit_edge:                     ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

for.inc.9:                                        ; preds = %for.inc.8
  %and12.10 = and i64 %26, 9007199254740992
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and12.10)
  %tobool.not.10 = icmp eq i64 %and12.10, 0
  br i1 %tobool.not.10, label %for.inc.10, label %for.inc.9.if.end14_crit_edge

for.inc.9.if.end14_crit_edge:                     ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

for.inc.10:                                       ; preds = %for.inc.9
  %and12.11 = and i64 %26, 4503599627370496
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and12.11)
  %tobool.not.11 = icmp eq i64 %and12.11, 0
  br i1 %tobool.not.11, label %for.inc.11, label %for.inc.10.if.end14_crit_edge

for.inc.10.if.end14_crit_edge:                    ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

for.inc.11:                                       ; preds = %for.inc.10
  %and12.12 = and i64 %26, 2251799813685248
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and12.12)
  %tobool.not.12 = icmp eq i64 %and12.12, 0
  br i1 %tobool.not.12, label %for.inc.12, label %for.inc.11.if.end14_crit_edge

for.inc.11.if.end14_crit_edge:                    ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

for.inc.12:                                       ; preds = %for.inc.11
  %and12.13 = and i64 %26, 1125899906842624
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and12.13)
  %tobool.not.13 = icmp eq i64 %and12.13, 0
  br i1 %tobool.not.13, label %for.inc.13, label %for.inc.12.if.end14_crit_edge

for.inc.12.if.end14_crit_edge:                    ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

for.inc.13:                                       ; preds = %for.inc.12
  %and12.14 = and i64 %26, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and12.14)
  %tobool.not.14 = icmp eq i64 %and12.14, 0
  br i1 %tobool.not.14, label %for.inc.14, label %for.inc.13.if.end14_crit_edge

for.inc.13.if.end14_crit_edge:                    ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

for.inc.14:                                       ; preds = %for.inc.13
  %and12.15 = and i64 %26, 281474976710656
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and12.15)
  %tobool.not.15 = icmp eq i64 %and12.15, 0
  br i1 %tobool.not.15, label %for.inc.15, label %for.inc.14.if.end14_crit_edge

for.inc.14.if.end14_crit_edge:                    ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

for.inc.15:                                       ; preds = %for.inc.14
  %and12.16 = and i64 %26, 140737488355328
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and12.16)
  %tobool.not.16 = icmp eq i64 %and12.16, 0
  br i1 %tobool.not.16, label %for.inc.15.for.end_crit_edge, label %for.inc.15.if.end14_crit_edge

for.inc.15.if.end14_crit_edge:                    ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

for.inc.15.for.end_crit_edge:                     ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.15.for.end_crit_edge, %if.end46.for.end_crit_edge
  %vp_reg68 = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %vpath, i32 0, i32 4
  %vp_open69 = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %vpath, i32 0, i32 1
  br label %for.body55

for.body55:                                       ; preds = %for.inc78.for.body55_crit_edge, %for.end
  %i.1168 = phi i32 [ 0, %for.end ], [ %inc79, %for.inc78.for.body55_crit_edge ]
  %79 = ptrtoint ptr %vpath_mask to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %vpath_mask, align 8
  %sh_prom57 = zext i32 %i.1168 to i64
  %shr58 = lshr i64 -9223372036854775808, %sh_prom57
  %and59 = and i64 %80, %shr58
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and59)
  %tobool60.not = icmp eq i64 %and59, 0
  br i1 %tobool60.not, label %for.body55.for.inc78_crit_edge, label %if.end62

for.body55.for.inc78_crit_edge:                   ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc78

if.end62:                                         ; preds = %for.body55
  %arrayidx64 = getelementptr %struct.vxge_hw_toc_reg, ptr %call, i32 0, i32 10, i32 %i.1168
  %81 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx64) #16, !srcloc !77
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i138 = getelementptr i32, ptr %arrayidx64, i32 1
  %82 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i138) #16, !srcloc !77
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %83 = call i32 @llvm.bswap.i32(i32 %81)
  %add.ptr67 = getelementptr i8, ptr %bar0, i32 %83
  %84 = ptrtoint ptr %vp_reg68 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %add.ptr67, ptr %vp_reg68, align 16
  %85 = ptrtoint ptr %vp_open69 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %vp_open69, align 4
  %arrayidx70 = getelementptr %struct.vxge_hw_device_hw_info, ptr %hw_info, i32 0, i32 11, i32 %i.1168
  %arrayidx71 = getelementptr %struct.vxge_hw_device_hw_info, ptr %hw_info, i32 0, i32 12, i32 %i.1168
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data0.i139) #16
  %86 = ptrtoint ptr %data0.i139 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 0, ptr %data0.i139, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data1.i140) #16
  %87 = ptrtoint ptr %data1.i140 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 0, ptr %data1.i140, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %steer_ctrl.i141) #16
  %88 = ptrtoint ptr %steer_ctrl.i141 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 0, ptr %steer_ctrl.i141, align 8
  %add.ptr.i.i.i142 = getelementptr i8, ptr %arrayidx70, i32 4
  %call24.i = call fastcc i32 @vxge_hw_vpath_fw_api(ptr noundef nonnull %vpath, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %data0.i139, ptr noundef nonnull %data1.i140, ptr noundef nonnull %steer_ctrl.i141) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp.not25.i = icmp eq i32 %call24.i, 0
  br i1 %cmp.not25.i, label %if.end.preheader.i, label %if.end62.__vxge_hw_vpath_addr_get.exit.thread_crit_edge

if.end62.__vxge_hw_vpath_addr_get.exit.thread_crit_edge: ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_vpath_addr_get.exit.thread

if.end.preheader.i:                               ; preds = %if.end62
  %arrayidx.i = getelementptr i8, ptr %arrayidx70, i32 5
  %arrayidx12.i = getelementptr i8, ptr %arrayidx71, i32 5
  %arrayidx12.1.i = getelementptr i8, ptr %arrayidx71, i32 4
  %arrayidx.2.i = getelementptr i8, ptr %arrayidx70, i32 3
  %arrayidx12.2.i = getelementptr i8, ptr %arrayidx71, i32 3
  %arrayidx.3.i = getelementptr i8, ptr %arrayidx70, i32 2
  %arrayidx12.3.i = getelementptr i8, ptr %arrayidx71, i32 2
  %arrayidx.4.i = getelementptr i8, ptr %arrayidx70, i32 1
  %arrayidx12.4.i = getelementptr i8, ptr %arrayidx71, i32 1
  br label %if.end.i147

if.end.i147:                                      ; preds = %do.body.backedge.i.if.end.i147_crit_edge, %if.end.preheader.i
  %89 = ptrtoint ptr %data0.i139 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %data0.i139, align 8
  %shr.i143 = lshr i64 %90, 16
  %91 = ptrtoint ptr %data1.i140 to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %data1.i140, align 8
  %shr2.i = lshr i64 %92, 16
  %conv7.i144 = trunc i64 %shr.i143 to i8
  %93 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv7.i144, ptr %arrayidx.i, align 1
  %shr8.i145 = lshr i64 %90, 24
  %conv10.i146 = trunc i64 %shr2.i to i8
  %94 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv10.i146, ptr %arrayidx12.i, align 1
  %shr13.i = lshr i64 %92, 24
  %conv7.1.i = trunc i64 %shr8.i145 to i8
  %95 = ptrtoint ptr %add.ptr.i.i.i142 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv7.1.i, ptr %add.ptr.i.i.i142, align 1
  %shr8.1.i = lshr i64 %90, 32
  %conv10.1.i = trunc i64 %shr13.i to i8
  %96 = ptrtoint ptr %arrayidx12.1.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv10.1.i, ptr %arrayidx12.1.i, align 1
  %shr13.1.i = lshr i64 %92, 32
  %conv7.2.i = trunc i64 %shr8.1.i to i8
  %97 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv7.2.i, ptr %arrayidx.2.i, align 1
  %shr8.2.i = lshr i64 %90, 40
  %conv10.2.i = trunc i64 %shr13.1.i to i8
  %98 = ptrtoint ptr %arrayidx12.2.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv10.2.i, ptr %arrayidx12.2.i, align 1
  %shr13.2.i = lshr i64 %92, 40
  %conv7.3.i = trunc i64 %shr8.2.i to i8
  %99 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv7.3.i, ptr %arrayidx.3.i, align 1
  %shr8.3.i = lshr i64 %90, 48
  %conv10.3.i = trunc i64 %shr13.2.i to i8
  %100 = ptrtoint ptr %arrayidx12.3.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv10.3.i, ptr %arrayidx12.3.i, align 1
  %shr13.3.i = lshr i64 %92, 48
  %conv7.4.i = trunc i64 %shr8.3.i to i8
  %101 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv7.4.i, ptr %arrayidx.4.i, align 1
  %shr8.4.i = lshr i64 %90, 56
  %conv10.4.i = trunc i64 %shr13.3.i to i8
  %102 = ptrtoint ptr %arrayidx12.4.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv10.4.i, ptr %arrayidx12.4.i, align 1
  %shr13.4.i = lshr i64 %92, 56
  %conv7.5.i = trunc i64 %shr8.4.i to i8
  %103 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv7.5.i, ptr %arrayidx70, align 1
  %conv10.5.i = trunc i64 %shr13.4.i to i8
  %104 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv10.5.i, ptr %arrayidx71, align 1
  store i64 0, ptr %data0.i139, align 8
  store i64 0, ptr %data1.i140, align 8
  %105 = ptrtoint ptr %steer_ctrl.i141 to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 0, ptr %steer_ctrl.i141, align 8
  %106 = load i32, ptr %arrayidx70, align 4
  %107 = and i32 %106, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool.i.not.i.i = icmp eq i32 %107, 0
  br i1 %tobool.i.not.i.i, label %land.rhs.i.i, label %if.end.i147.do.body.backedge.i_crit_edge

if.end.i147.do.body.backedge.i_crit_edge:         ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.backedge.i

land.rhs.i.i:                                     ; preds = %if.end.i147
  %108 = ptrtoint ptr %add.ptr.i.i.i142 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %add.ptr.i.i.i142, align 2
  %conv.i.i.i = zext i16 %109 to i32
  %or.i.i.i = or i32 %106, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %land.rhs.i.i.do.body.backedge.i_crit_edge, label %__vxge_hw_vpath_addr_get.exit

land.rhs.i.i.do.body.backedge.i_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.backedge.i

do.body.backedge.i:                               ; preds = %land.rhs.i.i.do.body.backedge.i_crit_edge, %if.end.i147.do.body.backedge.i_crit_edge
  %call.i148 = call fastcc i32 @vxge_hw_vpath_fw_api(ptr noundef nonnull %vpath, i32 noundef 3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %data0.i139, ptr noundef nonnull %data1.i140, ptr noundef nonnull %steer_ctrl.i141) #16
  %cmp.not.i149 = icmp eq i32 %call.i148, 0
  br i1 %cmp.not.i149, label %do.body.backedge.i.if.end.i147_crit_edge, label %do.body.backedge.i.__vxge_hw_vpath_addr_get.exit.thread_crit_edge

do.body.backedge.i.__vxge_hw_vpath_addr_get.exit.thread_crit_edge: ; preds = %do.body.backedge.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_vpath_addr_get.exit.thread

do.body.backedge.i.if.end.i147_crit_edge:         ; preds = %do.body.backedge.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i147

__vxge_hw_vpath_addr_get.exit.thread:             ; preds = %do.body.backedge.i.__vxge_hw_vpath_addr_get.exit.thread_crit_edge, %if.end62.__vxge_hw_vpath_addr_get.exit.thread_crit_edge
  %call.lcssa.i.ph = phi i32 [ %call.i148, %do.body.backedge.i.__vxge_hw_vpath_addr_get.exit.thread_crit_edge ], [ %call24.i, %if.end62.__vxge_hw_vpath_addr_get.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %steer_ctrl.i141) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data1.i140) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data0.i139) #16
  br label %exit

__vxge_hw_vpath_addr_get.exit:                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %steer_ctrl.i141) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data1.i140) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data0.i139) #16
  br label %for.inc78

for.inc78:                                        ; preds = %__vxge_hw_vpath_addr_get.exit, %for.body55.for.inc78_crit_edge
  %inc79 = add nuw nsw i32 %i.1168, 1
  %exitcond.not = icmp eq i32 %inc79, 17
  br i1 %exitcond.not, label %for.inc78.exit_crit_edge, label %for.inc78.for.body55_crit_edge

for.inc78.for.body55_crit_edge:                   ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body55

for.inc78.exit_crit_edge:                         ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

exit:                                             ; preds = %for.inc78.exit_crit_edge, %__vxge_hw_vpath_addr_get.exit.thread, %if.end46.exit_crit_edge, %__vxge_hw_vpath_fw_ver_get.exit, %__vxge_hw_vpath_pci_func_mode_get.exit, %if.end6.i.i.exit_crit_edge, %entry.exit_crit_edge
  %status.3 = phi i32 [ %call.i, %__vxge_hw_vpath_pci_func_mode_get.exit ], [ %call.i134, %__vxge_hw_vpath_fw_ver_get.exit ], [ %call47, %if.end46.exit_crit_edge ], [ 221, %entry.exit_crit_edge ], [ %call.lcssa.i.ph, %__vxge_hw_vpath_addr_get.exit.thread ], [ 0, %for.inc78.exit_crit_edge ], [ 1, %if.end6.i.i.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %vpath) #16
  ret i32 %status.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__vxge_hw_device_toc_get(ptr noundef %bar0) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %toc_swapper_fb.i = getelementptr inbounds %struct.vxge_hw_legacy_reg, ptr %bar0, i32 0, i32 1
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %toc_swapper_fb.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i.i = getelementptr i32, ptr %toc_swapper_fb.i, i32 1
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %2 = zext i32 %1 to i64
  %3 = zext i32 %0 to i64
  %4 = shl nuw i64 %3, 32
  %5 = or i64 %4, %2
  %6 = tail call i64 @llvm.bswap.i64(i64 %5) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !85
  tail call void @arm_heavy_mb() #16
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.43)
  switch i64 %6, label %entry.do.body8.i_crit_edge [
    i64 81985529216486895, label %entry.if.end_crit_edge
    i64 -597899502893742976, label %sw.bb1.i
    i64 -1167088121787636991, label %sw.bb2.i
    i64 -9168023830246607881, label %sw.bb5.i
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

entry.do.body8.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body8.i

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %pifm_rd_swap_en.i = getelementptr inbounds %struct.vxge_hw_legacy_reg, ptr %bar0, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pifm_rd_swap_en.i, i32 -1) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %add.ptr.i25.i = getelementptr i8, ptr %pifm_rd_swap_en.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 -1) #16, !srcloc !81
  %pifm_rd_flip_en.i = getelementptr inbounds %struct.vxge_hw_legacy_reg, ptr %bar0, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pifm_rd_flip_en.i, i32 -1) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %add.ptr.i26.i = getelementptr i8, ptr %pifm_rd_flip_en.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 -1) #16, !srcloc !81
  %pifm_wr_swap_en.i = getelementptr inbounds %struct.vxge_hw_legacy_reg, ptr %bar0, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pifm_wr_swap_en.i, i32 -1) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %add.ptr.i27.i = getelementptr i8, ptr %pifm_wr_swap_en.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 -1) #16, !srcloc !81
  %pifm_wr_flip_en.i = getelementptr inbounds %struct.vxge_hw_legacy_reg, ptr %bar0, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pifm_wr_flip_en.i, i32 -1) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %add.ptr.i28.i = getelementptr i8, ptr %pifm_wr_flip_en.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28.i, i32 -1) #16, !srcloc !81
  br label %do.body8.i

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %pifm_rd_swap_en3.i = getelementptr inbounds %struct.vxge_hw_legacy_reg, ptr %bar0, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pifm_rd_swap_en3.i, i32 -1) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %add.ptr.i29.i = getelementptr i8, ptr %pifm_rd_swap_en3.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 -1) #16, !srcloc !81
  %pifm_wr_swap_en4.i = getelementptr inbounds %struct.vxge_hw_legacy_reg, ptr %bar0, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pifm_wr_swap_en4.i, i32 -1) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %add.ptr.i30.i = getelementptr i8, ptr %pifm_wr_swap_en4.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i, i32 -1) #16, !srcloc !81
  br label %do.body8.i

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %pifm_rd_flip_en6.i = getelementptr inbounds %struct.vxge_hw_legacy_reg, ptr %bar0, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pifm_rd_flip_en6.i, i32 -1) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %add.ptr.i31.i = getelementptr i8, ptr %pifm_rd_flip_en6.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31.i, i32 -1) #16, !srcloc !81
  %pifm_wr_flip_en7.i = getelementptr inbounds %struct.vxge_hw_legacy_reg, ptr %bar0, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pifm_wr_flip_en7.i, i32 -1) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %add.ptr.i32.i = getelementptr i8, ptr %pifm_wr_flip_en7.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 -1) #16, !srcloc !81
  br label %do.body8.i

do.body8.i:                                       ; preds = %sw.bb5.i, %sw.bb2.i, %sw.bb1.i, %entry.do.body8.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !86
  tail call void @arm_heavy_mb() #16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %toc_swapper_fb.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %9 = zext i32 %8 to i64
  %10 = zext i32 %7 to i64
  %11 = shl nuw i64 %10, 32
  %12 = or i64 %11, %9
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1167088121787636991, i64 %12)
  %cmp.not.i = icmp eq i64 %12, -1167088121787636991
  br i1 %cmp.not.i, label %do.body8.i.if.end_crit_edge, label %do.body8.i.exit_crit_edge

do.body8.i.exit_crit_edge:                        ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

do.body8.i.if.end_crit_edge:                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end:                                           ; preds = %do.body8.i.if.end_crit_edge, %entry.if.end_crit_edge
  %toc_first_pointer = getelementptr inbounds %struct.vxge_hw_legacy_reg, ptr %bar0, i32 0, i32 6
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %toc_first_pointer) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i = getelementptr i32, ptr %toc_first_pointer, i32 1
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %15 = call i32 @llvm.bswap.i32(i32 %13)
  %add.ptr = getelementptr i8, ptr %bar0, i32 %15
  br label %exit

exit:                                             ; preds = %if.end, %do.body8.i.exit_crit_edge
  %toc.0 = phi ptr [ %add.ptr, %if.end ], [ null, %do.body8.i.exit_crit_edge ]
  ret ptr %toc.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lo_hi_writeq(i64 noundef %val, ptr noundef %addr) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  %conv = trunc i64 %val to i32
  %0 = tail call i32 @llvm.bswap.i32(i32 %conv)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %shr = lshr i64 %val, 32
  %conv3 = trunc i64 %shr to i32
  %1 = tail call i32 @llvm.bswap.i32(i32 %conv3)
  %add.ptr = getelementptr i8, ptr %addr, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #16, !srcloc !81
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__vxge_hw_vpath_card_info_get(ptr noundef %vpath, ptr nocapture noundef writeonly %hw_info) unnamed_addr #0 align 64 {
entry:
  %data0 = alloca i64, align 8
  %data1 = alloca i64, align 8
  %steer_ctrl = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %product_desc2 = getelementptr inbounds %struct.vxge_hw_device_hw_info, ptr %hw_info, i32 0, i32 10
  %part_number4 = getelementptr inbounds %struct.vxge_hw_device_hw_info, ptr %hw_info, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data0) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data1) #16
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %data1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %steer_ctrl) #16
  %1 = ptrtoint ptr %steer_ctrl to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %steer_ctrl, align 8
  %2 = ptrtoint ptr %data0 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 1, ptr %data0, align 8
  %call = call fastcc i32 @vxge_hw_vpath_fw_api(ptr noundef %vpath, i32 noundef 3, i32 noundef 13, i32 noundef 0, ptr noundef nonnull %data0, ptr noundef nonnull %data1, ptr noundef nonnull %steer_ctrl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %serial_number1 = getelementptr inbounds %struct.vxge_hw_device_hw_info, ptr %hw_info, i32 0, i32 8
  %3 = ptrtoint ptr %data0 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %data0, align 8
  %5 = ptrtoint ptr %serial_number1 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %serial_number1, align 8
  %6 = ptrtoint ptr %data1 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %data1, align 8
  %arrayidx6 = getelementptr %struct.vxge_hw_device_hw_info, ptr %hw_info, i32 0, i32 8, i32 8
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %arrayidx6, align 8
  store i64 0, ptr %data0, align 8
  %9 = ptrtoint ptr %steer_ctrl to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %steer_ctrl, align 8
  store i64 0, ptr %data1, align 8
  %call7 = call fastcc i32 @vxge_hw_vpath_fw_api(ptr noundef %vpath, i32 noundef 3, i32 noundef 13, i32 noundef 0, ptr noundef nonnull %data0, ptr noundef nonnull %data1, ptr noundef nonnull %steer_ctrl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8.not = icmp eq i32 %call7, 0
  br i1 %cmp8.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %10 = ptrtoint ptr %data0 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %data0, align 8
  %12 = ptrtoint ptr %part_number4 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %part_number4, align 8
  %13 = ptrtoint ptr %data1 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %data1, align 8
  %arrayidx12 = getelementptr %struct.vxge_hw_device_hw_info, ptr %hw_info, i32 0, i32 9, i32 8
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %arrayidx12, align 8
  store i64 4, ptr %data0, align 8
  %16 = ptrtoint ptr %steer_ctrl to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 0, ptr %steer_ctrl, align 8
  store i64 0, ptr %data1, align 8
  %call14 = call fastcc i32 @vxge_hw_vpath_fw_api(ptr noundef %vpath, i32 noundef 3, i32 noundef 13, i32 noundef 0, ptr noundef nonnull %data0, ptr noundef nonnull %data1, ptr noundef nonnull %steer_ctrl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %if.end18, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  %17 = ptrtoint ptr %data0 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %data0, align 8
  %19 = ptrtoint ptr %product_desc2 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %product_desc2, align 8
  %20 = ptrtoint ptr %data1 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %data1, align 8
  %arrayidx21 = getelementptr %struct.vxge_hw_device_hw_info, ptr %hw_info, i32 0, i32 10, i32 8
  %22 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %arrayidx21, align 8
  store i64 5, ptr %data0, align 8
  %23 = ptrtoint ptr %steer_ctrl to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 0, ptr %steer_ctrl, align 8
  store i64 0, ptr %data1, align 8
  %call14.1 = call fastcc i32 @vxge_hw_vpath_fw_api(ptr noundef %vpath, i32 noundef 3, i32 noundef 13, i32 noundef 0, ptr noundef nonnull %data0, ptr noundef nonnull %data1, ptr noundef nonnull %steer_ctrl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.1)
  %cmp15.not.1 = icmp eq i32 %call14.1, 0
  br i1 %cmp15.not.1, label %if.end18.1, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end18.1:                                       ; preds = %if.end18
  %24 = ptrtoint ptr %data0 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %data0, align 8
  %arrayidx19.1 = getelementptr %struct.vxge_hw_device_hw_info, ptr %hw_info, i32 0, i32 10, i32 16
  %26 = ptrtoint ptr %arrayidx19.1 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %arrayidx19.1, align 8
  %27 = ptrtoint ptr %data1 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %data1, align 8
  %arrayidx21.1 = getelementptr %struct.vxge_hw_device_hw_info, ptr %hw_info, i32 0, i32 10, i32 24
  %29 = ptrtoint ptr %arrayidx21.1 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %arrayidx21.1, align 8
  store i64 6, ptr %data0, align 8
  %30 = ptrtoint ptr %steer_ctrl to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 0, ptr %steer_ctrl, align 8
  store i64 0, ptr %data1, align 8
  %call14.2 = call fastcc i32 @vxge_hw_vpath_fw_api(ptr noundef %vpath, i32 noundef 3, i32 noundef 13, i32 noundef 0, ptr noundef nonnull %data0, ptr noundef nonnull %data1, ptr noundef nonnull %steer_ctrl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.2)
  %cmp15.not.2 = icmp eq i32 %call14.2, 0
  br i1 %cmp15.not.2, label %if.end18.2, label %if.end18.1.cleanup_crit_edge

if.end18.1.cleanup_crit_edge:                     ; preds = %if.end18.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end18.2:                                       ; preds = %if.end18.1
  %31 = ptrtoint ptr %data0 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %data0, align 8
  %arrayidx19.2 = getelementptr %struct.vxge_hw_device_hw_info, ptr %hw_info, i32 0, i32 10, i32 32
  %33 = ptrtoint ptr %arrayidx19.2 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %arrayidx19.2, align 8
  %34 = ptrtoint ptr %data1 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %data1, align 8
  %arrayidx21.2 = getelementptr %struct.vxge_hw_device_hw_info, ptr %hw_info, i32 0, i32 10, i32 40
  %36 = ptrtoint ptr %arrayidx21.2 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %arrayidx21.2, align 8
  store i64 7, ptr %data0, align 8
  %37 = ptrtoint ptr %steer_ctrl to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 0, ptr %steer_ctrl, align 8
  store i64 0, ptr %data1, align 8
  %call14.3 = call fastcc i32 @vxge_hw_vpath_fw_api(ptr noundef %vpath, i32 noundef 3, i32 noundef 13, i32 noundef 0, ptr noundef nonnull %data0, ptr noundef nonnull %data1, ptr noundef nonnull %steer_ctrl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.3)
  %cmp15.not.3 = icmp eq i32 %call14.3, 0
  br i1 %cmp15.not.3, label %if.end18.3, label %if.end18.2.cleanup_crit_edge

if.end18.2.cleanup_crit_edge:                     ; preds = %if.end18.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end18.3:                                       ; preds = %if.end18.2
  call void @__sanitizer_cov_trace_pc() #18
  %38 = ptrtoint ptr %data0 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %data0, align 8
  %arrayidx19.3 = getelementptr %struct.vxge_hw_device_hw_info, ptr %hw_info, i32 0, i32 10, i32 48
  %40 = ptrtoint ptr %arrayidx19.3 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %arrayidx19.3, align 8
  %41 = ptrtoint ptr %data1 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %data1, align 8
  %arrayidx21.3 = getelementptr %struct.vxge_hw_device_hw_info, ptr %hw_info, i32 0, i32 10, i32 56
  %43 = ptrtoint ptr %arrayidx21.3 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %arrayidx21.3, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end18.3, %if.end18.2.cleanup_crit_edge, %if.end18.1.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.end10.cleanup_crit_edge ], [ 1, %if.end18.cleanup_crit_edge ], [ 1, %if.end18.1.cleanup_crit_edge ], [ 1, %if.end18.2.cleanup_crit_edge ], [ 0, %if.end18.3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %steer_ctrl) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data1) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data0) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_device_initialize(ptr nocapture noundef writeonly %devh, ptr nocapture noundef readonly %attr, ptr nocapture noundef readonly %device_config) local_unnamed_addr #0 align 64 {
entry:
  %lnk.i.i = alloca i16, align 2
  %cmd.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %intr_mode.i = getelementptr inbounds %struct.vxge_hw_device_config, ptr %device_config, i32 0, i32 3
  %0 = ptrtoint ptr %intr_mode.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %intr_mode.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 6
  %bf.load.fr.i = freeze i8 %bf.load.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load.fr.i)
  %cmp.not.i = icmp ult i8 %bf.load.fr.i, 64
  %bf.lshr.off.i = add nsw i8 %bf.lshr.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %bf.lshr.off.i)
  %switch.i = icmp ult i8 %bf.lshr.off.i, 2
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %switch.i
  br i1 %or.cond.i, label %entry.for.body.i_crit_edge, label %entry.exit_crit_edge

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.048.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %min_bandwidth.i.i = getelementptr %struct.vxge_hw_device_config, ptr %device_config, i32 0, i32 4, i32 %i.048.i, i32 1
  %1 = ptrtoint ptr %min_bandwidth.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %min_bandwidth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %2)
  %cmp2.i.i = icmp ugt i32 %2, 100
  br i1 %cmp2.i.i, label %for.body.i.exit_crit_edge, label %if.end.i.i

for.body.i.exit_crit_edge:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end.i.i:                                       ; preds = %for.body.i
  %fifo_blocks.i.i.i = getelementptr %struct.vxge_hw_device_config, ptr %device_config, i32 0, i32 4, i32 %i.048.i, i32 3, i32 1
  %3 = ptrtoint ptr %fifo_blocks.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fifo_blocks.i.i.i, align 4
  %5 = add i32 %4, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %5)
  %6 = icmp ult i32 %5, 127
  br i1 %6, label %if.end5.i.i, label %if.end.i.i.exit_crit_edge

if.end.i.i.exit_crit_edge:                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end5.i.i:                                      ; preds = %if.end.i.i
  %mtu.i.i = getelementptr %struct.vxge_hw_device_config, ptr %device_config, i32 0, i32 4, i32 %i.048.i, i32 6
  %7 = ptrtoint ptr %mtu.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mtu.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp6.not.i.i = icmp ne i32 %8, -1
  %9 = add i32 %8, -9601
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9533, i32 %9)
  %10 = icmp ult i32 %9, -9533
  %or.cond.i.i = and i1 %cmp6.not.i.i, %10
  br i1 %or.cond.i.i, label %if.end5.i.i.exit_crit_edge, label %if.end13.i.i

if.end5.i.i.exit_crit_edge:                       ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end13.i.i:                                     ; preds = %if.end5.i.i
  %rpa_strip_vlan_tag.i.i = getelementptr %struct.vxge_hw_device_config, ptr %device_config, i32 0, i32 4, i32 %i.048.i, i32 7
  %11 = ptrtoint ptr %rpa_strip_vlan_tag.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rpa_strip_vlan_tag.i.i, align 8
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %12, label %if.end13.i.i.exit_crit_edge [
    i32 -1, label %if.end13.i.i.for.inc.i_crit_edge
    i32 1, label %if.end13.i.i.for.inc.i_crit_edge170
    i32 0, label %if.end13.i.i.for.inc.i_crit_edge171
  ]

if.end13.i.i.for.inc.i_crit_edge171:              ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end13.i.i.for.inc.i_crit_edge170:              ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end13.i.i.for.inc.i_crit_edge:                 ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end13.i.i.exit_crit_edge:                      ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

for.inc.i:                                        ; preds = %if.end13.i.i.for.inc.i_crit_edge, %if.end13.i.i.for.inc.i_crit_edge170, %if.end13.i.i.for.inc.i_crit_edge171
  %inc.i = add nuw nsw i32 %i.048.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 17
  br i1 %exitcond.not.i, label %if.end, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

if.end:                                           ; preds = %for.inc.i
  %call1 = tail call noalias ptr @vzalloc(i32 noundef 25088) #20
  %cmp2 = icmp eq ptr %call1, null
  br i1 %cmp2, label %if.end.exit_crit_edge, label %vxge_hw_device_debug_set.exit

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

vxge_hw_device_debug_set.exit:                    ; preds = %if.end
  %14 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 305419896, ptr %call1, align 128
  %debug_module_mask.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %call1, i32 0, i32 28
  %15 = ptrtoint ptr %debug_module_mask.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %debug_module_mask.i, align 8
  %debug_level.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %call1, i32 0, i32 29
  %16 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %debug_level.i, align 4
  %level_err.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %call1, i32 0, i32 30
  %17 = ptrtoint ptr %level_err.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %level_err.i, align 16
  %level_trace.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %call1, i32 0, i32 31
  %18 = ptrtoint ptr %level_trace.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %level_trace.i, align 4
  %config = getelementptr inbounds %struct.__vxge_hw_device, ptr %call1, i32 0, i32 4
  %19 = call ptr @memcpy(ptr %config, ptr %device_config, i32 3280)
  %20 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %attr, align 4
  %bar05 = getelementptr inbounds %struct.__vxge_hw_device, ptr %call1, i32 0, i32 1
  %22 = ptrtoint ptr %bar05 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %bar05, align 4
  %pdev = getelementptr inbounds %struct.vxge_hw_device_attr, ptr %attr, i32 0, i32 1
  %23 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev, align 4
  %pdev6 = getelementptr inbounds %struct.__vxge_hw_device, ptr %call1, i32 0, i32 2
  %25 = ptrtoint ptr %pdev6 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %pdev6, align 8
  %uld_callbacks = getelementptr inbounds %struct.vxge_hw_device_attr, ptr %attr, i32 0, i32 2
  %26 = ptrtoint ptr %uld_callbacks to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %uld_callbacks, align 4
  %uld_callbacks7 = getelementptr inbounds %struct.__vxge_hw_device, ptr %call1, i32 0, i32 6
  %28 = ptrtoint ptr %uld_callbacks7 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %uld_callbacks7, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd.i) #16
  %29 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %cmd.i, align 2
  %call.i = call i32 @pci_read_config_word(ptr noundef %24, i32 noundef 4, ptr noundef nonnull %cmd.i) #16
  %30 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %cmd.i, align 2
  %32 = or i16 %31, 320
  store i16 %32, ptr %cmd.i, align 2
  %33 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev6, align 8
  %call3.i = call i32 @pci_write_config_word(ptr noundef %34, i32 noundef 4, i16 noundef zeroext %32) #16
  %35 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev6, align 8
  %call5.i = call i32 @pci_save_state(ptr noundef %36) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd.i) #16
  %37 = ptrtoint ptr %bar05 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bar05, align 4
  %legacy_reg.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %call1, i32 0, i32 10
  %39 = ptrtoint ptr %legacy_reg.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %legacy_reg.i, align 4
  %call.i83 = call fastcc ptr @__vxge_hw_device_toc_get(ptr noundef %38) #16
  %toc_reg.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %call1, i32 0, i32 11
  %40 = ptrtoint ptr %toc_reg.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i83, ptr %toc_reg.i, align 8
  %cmp.i84 = icmp eq ptr %call.i83, null
  br i1 %cmp.i84, label %vxge_hw_device_debug_set.exit.if.then10_crit_edge, label %if.end.i85

vxge_hw_device_debug_set.exit.if.then10_crit_edge: ; preds = %vxge_hw_device_debug_set.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then10

if.end.i85:                                       ; preds = %vxge_hw_device_debug_set.exit
  %toc_common_pointer.i = getelementptr inbounds %struct.vxge_hw_toc_reg, ptr %call.i83, i32 0, i32 1
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %toc_common_pointer.i) #16, !srcloc !77
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i.i = getelementptr i32, ptr %toc_common_pointer.i, i32 1
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #16, !srcloc !77
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %43 = call i32 @llvm.bswap.i32(i32 %41) #16
  %44 = ptrtoint ptr %bar05 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bar05, align 4
  %add.ptr.i = getelementptr i8, ptr %45, i32 %43
  %common_reg.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %call1, i32 0, i32 12
  %46 = ptrtoint ptr %common_reg.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %add.ptr.i, ptr %common_reg.i, align 4
  %47 = ptrtoint ptr %toc_reg.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %toc_reg.i, align 8
  %toc_mrpcim_pointer.i = getelementptr inbounds %struct.vxge_hw_toc_reg, ptr %48, i32 0, i32 5
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %toc_mrpcim_pointer.i) #16, !srcloc !77
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i92.i = getelementptr i32, ptr %toc_mrpcim_pointer.i, i32 1
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i92.i) #16, !srcloc !77
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %51 = call i32 @llvm.bswap.i32(i32 %49) #16
  %52 = ptrtoint ptr %bar05 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bar05, align 4
  %add.ptr10.i = getelementptr i8, ptr %53, i32 %51
  %mrpcim_reg.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %call1, i32 0, i32 13
  %54 = ptrtoint ptr %mrpcim_reg.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %add.ptr10.i, ptr %mrpcim_reg.i, align 128
  br label %for.body.i88

for.body.i88:                                     ; preds = %for.body.i88.for.body.i88_crit_edge, %if.end.i85
  %i.098.i = phi i32 [ 0, %if.end.i85 ], [ %inc.i86, %for.body.i88.for.body.i88_crit_edge ]
  %55 = ptrtoint ptr %toc_reg.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %toc_reg.i, align 8
  %arrayidx.i = getelementptr %struct.vxge_hw_toc_reg, ptr %56, i32 0, i32 6, i32 %i.098.i
  %57 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #16, !srcloc !77
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i93.i = getelementptr i32, ptr %arrayidx.i, i32 1
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i93.i) #16, !srcloc !77
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %59 = call i32 @llvm.bswap.i32(i32 %57) #16
  %60 = ptrtoint ptr %bar05 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bar05, align 4
  %add.ptr16.i = getelementptr i8, ptr %61, i32 %59
  %arrayidx17.i = getelementptr %struct.__vxge_hw_device, ptr %call1, i32 0, i32 14, i32 %i.098.i
  %62 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %add.ptr16.i, ptr %arrayidx17.i, align 4
  %inc.i86 = add nuw nsw i32 %i.098.i, 1
  %exitcond.not.i87 = icmp eq i32 %inc.i86, 17
  br i1 %exitcond.not.i87, label %for.body.i88.for.body20.i_crit_edge, label %for.body.i88.for.body.i88_crit_edge

for.body.i88.for.body.i88_crit_edge:              ; preds = %for.body.i88
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i88

for.body.i88.for.body20.i_crit_edge:              ; preds = %for.body.i88
  br label %for.body20.i

for.body20.i:                                     ; preds = %for.body20.i.for.body20.i_crit_edge, %for.body.i88.for.body20.i_crit_edge
  %i.199.i = phi i32 [ %inc29.i, %for.body20.i.for.body20.i_crit_edge ], [ 0, %for.body.i88.for.body20.i_crit_edge ]
  %63 = ptrtoint ptr %toc_reg.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %toc_reg.i, align 8
  %arrayidx22.i = getelementptr %struct.vxge_hw_toc_reg, ptr %64, i32 0, i32 8, i32 %i.199.i
  %65 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx22.i) #16, !srcloc !77
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i94.i = getelementptr i32, ptr %arrayidx22.i, i32 1
  %66 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i94.i) #16, !srcloc !77
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %67 = call i32 @llvm.bswap.i32(i32 %65) #16
  %68 = ptrtoint ptr %bar05 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bar05, align 4
  %add.ptr26.i = getelementptr i8, ptr %69, i32 %67
  %arrayidx27.i = getelementptr %struct.__vxge_hw_device, ptr %call1, i32 0, i32 15, i32 %i.199.i
  %70 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %add.ptr26.i, ptr %arrayidx27.i, align 4
  %inc29.i = add nuw nsw i32 %i.199.i, 1
  %exitcond102.not.i = icmp eq i32 %inc29.i, 17
  br i1 %exitcond102.not.i, label %for.body20.i.for.body33.i_crit_edge, label %for.body20.i.for.body20.i_crit_edge

for.body20.i.for.body20.i_crit_edge:              ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body20.i

for.body20.i.for.body33.i_crit_edge:              ; preds = %for.body20.i
  br label %for.body33.i

for.body33.i:                                     ; preds = %for.body33.i.for.body33.i_crit_edge, %for.body20.i.for.body33.i_crit_edge
  %i.2100.i = phi i32 [ %inc42.i, %for.body33.i.for.body33.i_crit_edge ], [ 0, %for.body20.i.for.body33.i_crit_edge ]
  %71 = ptrtoint ptr %toc_reg.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %toc_reg.i, align 8
  %arrayidx35.i = getelementptr %struct.vxge_hw_toc_reg, ptr %72, i32 0, i32 10, i32 %i.2100.i
  %73 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx35.i) #16, !srcloc !77
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i95.i = getelementptr i32, ptr %arrayidx35.i, i32 1
  %74 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i95.i) #16, !srcloc !77
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %75 = call i32 @llvm.bswap.i32(i32 %73) #16
  %76 = ptrtoint ptr %bar05 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bar05, align 4
  %add.ptr39.i = getelementptr i8, ptr %77, i32 %75
  %arrayidx40.i = getelementptr %struct.__vxge_hw_device, ptr %call1, i32 0, i32 16, i32 %i.2100.i
  %78 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %add.ptr39.i, ptr %arrayidx40.i, align 4
  %inc42.i = add nuw nsw i32 %i.2100.i, 1
  %exitcond103.not.i = icmp eq i32 %inc42.i, 17
  br i1 %exitcond103.not.i, label %for.end43.i, label %for.body33.i.for.body33.i_crit_edge

for.body33.i.for.body33.i_crit_edge:              ; preds = %for.body33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body33.i

for.end43.i:                                      ; preds = %for.body33.i
  %79 = ptrtoint ptr %toc_reg.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %toc_reg.i, align 8
  %toc_kdfc.i = getelementptr inbounds %struct.vxge_hw_toc_reg, ptr %80, i32 0, i32 12
  %81 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %toc_kdfc.i) #16, !srcloc !77
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i96.i = getelementptr i32, ptr %toc_kdfc.i, i32 1
  %82 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i96.i) #16, !srcloc !77
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %83 = call i32 @llvm.bswap.i32(i32 %81) #16
  %84 = and i32 %83, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cond.i = icmp eq i32 %84, 0
  br i1 %cond.i, label %sw.bb.i, label %for.end43.i.sw.epilog.i_crit_edge

for.end43.i.sw.epilog.i_crit_edge:                ; preds = %for.end43.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %for.end43.i
  call void @__sanitizer_cov_trace_pc() #18
  %85 = ptrtoint ptr %bar05 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bar05, align 4
  %idx.ext48.i = and i32 %83, -8
  %add.ptr49.i = getelementptr i8, ptr %86, i32 %idx.ext48.i
  %kdfc.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %call1, i32 0, i32 17
  %87 = ptrtoint ptr %kdfc.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %add.ptr49.i, ptr %kdfc.i, align 16
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb.i, %for.end43.i.sw.epilog.i_crit_edge
  %88 = ptrtoint ptr %common_reg.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %common_reg.i, align 4
  %vpath_rst_in_prog.i = getelementptr inbounds %struct.vxge_hw_common_reg, ptr %89, i32 0, i32 59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %90(i32 noundef 2147480) #16
  %add.ptr.i.i.i.i = getelementptr i32, ptr %vpath_rst_in_prog.i, i32 1
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %if.end.i.i.i.do.body.i.i.i_crit_edge, %sw.epilog.i
  %i.0.i.i.i = phi i32 [ 0, %sw.epilog.i ], [ %inc.i.i.i, %if.end.i.i.i.do.body.i.i.i_crit_edge ]
  %91 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vpath_rst_in_prog.i) #16, !srcloc !77
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %92 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #16, !srcloc !77
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %93 = and i32 %92, 8454143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.not.i.i.i = icmp eq i32 %93, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end11_crit_edge, label %if.end.i.i.i

do.body.i.i.i.if.end11_crit_edge:                 ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.end.i.i.i:                                     ; preds = %do.body.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %94 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %94(i32 noundef 21474800) #16
  %inc.i.i.i = add nuw nsw i32 %i.0.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 10
  br i1 %exitcond.not.i.i.i, label %if.end.i.i.i.do.body1.i.i.i_crit_edge, label %if.end.i.i.i.do.body.i.i.i_crit_edge

if.end.i.i.i.do.body.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i

if.end.i.i.i.do.body1.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  br label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %if.end6.i.i.i.do.body1.i.i.i_crit_edge, %if.end.i.i.i.do.body1.i.i.i_crit_edge
  %i.1.i.i.i = phi i32 [ %inc8.i.i.i, %if.end6.i.i.i.do.body1.i.i.i_crit_edge ], [ 0, %if.end.i.i.i.do.body1.i.i.i_crit_edge ]
  %95 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vpath_rst_in_prog.i) #16, !srcloc !77
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %96 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #16, !srcloc !77
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %97 = and i32 %96, 8454143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool4.not.i.i.i = icmp eq i32 %97, 0
  br i1 %tobool4.not.i.i.i, label %do.body1.i.i.i.if.end11_crit_edge, label %if.end6.i.i.i

do.body1.i.i.i.if.end11_crit_edge:                ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.end6.i.i.i:                                    ; preds = %do.body1.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %98 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %98(i32 noundef 214748000) #16
  %inc8.i.i.i = add nuw nsw i32 %i.1.i.i.i, 1
  %exitcond.i.i = icmp eq i32 %inc8.i.i.i, 1001
  br i1 %exitcond.i.i, label %if.end6.i.i.i.if.then10_crit_edge, label %if.end6.i.i.i.do.body1.i.i.i_crit_edge

if.end6.i.i.i.do.body1.i.i.i_crit_edge:           ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body1.i.i.i

if.end6.i.i.i.if.then10_crit_edge:                ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then10

if.then10:                                        ; preds = %if.end6.i.i.i.if.then10_crit_edge, %vxge_hw_device_debug_set.exit.if.then10_crit_edge
  call void @vfree(ptr noundef nonnull %call1) #16
  br label %exit

if.end11:                                         ; preds = %do.body1.i.i.i.if.end11_crit_edge, %do.body.i.i.i.if.end11_crit_edge
  %99 = ptrtoint ptr %common_reg.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %common_reg.i, align 4
  %host_type_assignments.i = getelementptr inbounds %struct.vxge_hw_common_reg, ptr %100, i32 0, i32 71
  %101 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %host_type_assignments.i) #16, !srcloc !77
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i.i90 = getelementptr i32, ptr %host_type_assignments.i, i32 1
  %102 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i90) #16, !srcloc !77
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %conv.i = and i32 %102, 7
  %host_type.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %call1, i32 0, i32 7
  %103 = ptrtoint ptr %host_type.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %conv.i, ptr %host_type.i, align 8
  %104 = ptrtoint ptr %common_reg.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %common_reg.i, align 4
  %vpath_assignments.i = getelementptr inbounds %struct.vxge_hw_common_reg, ptr %105, i32 0, i32 69
  %106 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vpath_assignments.i) #16, !srcloc !77
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i36.i = getelementptr i32, ptr %vpath_assignments.i, i32 1
  %107 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36.i) #16, !srcloc !77
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %108 = zext i32 %107 to i64
  %109 = zext i32 %106 to i64
  %110 = shl nuw i64 %109, 32
  %111 = or i64 %110, %108
  %112 = call i64 @llvm.bswap.i64(i64 %111) #16
  %vpath_assignments3.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %call1, i32 0, i32 21
  %113 = ptrtoint ptr %vpath_assignments3.i to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %112, ptr %vpath_assignments3.i, align 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %112)
  %tobool.not.i = icmp sgt i64 %112, -1
  br i1 %tobool.not.i, label %for.inc.i93, label %if.end11.if.end.i92_crit_edge

if.end11.if.end.i92_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i92

if.end.i92:                                       ; preds = %for.inc.15.i.if.end.i92_crit_edge, %for.inc.14.i.if.end.i92_crit_edge, %for.inc.13.i.if.end.i92_crit_edge, %for.inc.12.i.if.end.i92_crit_edge, %for.inc.11.i.if.end.i92_crit_edge, %for.inc.10.i.if.end.i92_crit_edge, %for.inc.9.i.if.end.i92_crit_edge, %for.inc.8.i.if.end.i92_crit_edge, %for.inc.7.i.if.end.i92_crit_edge, %for.inc.6.i.if.end.i92_crit_edge, %for.inc.5.i.if.end.i92_crit_edge, %for.inc.4.i.if.end.i92_crit_edge, %for.inc.3.i.if.end.i92_crit_edge, %for.inc.2.i.if.end.i92_crit_edge, %for.inc.1.i.if.end.i92_crit_edge, %for.inc.i93.if.end.i92_crit_edge, %if.end11.if.end.i92_crit_edge
  %i.038.lcssa.i = phi i32 [ 0, %if.end11.if.end.i92_crit_edge ], [ 1, %for.inc.i93.if.end.i92_crit_edge ], [ 2, %for.inc.1.i.if.end.i92_crit_edge ], [ 3, %for.inc.2.i.if.end.i92_crit_edge ], [ 4, %for.inc.3.i.if.end.i92_crit_edge ], [ 5, %for.inc.4.i.if.end.i92_crit_edge ], [ 6, %for.inc.5.i.if.end.i92_crit_edge ], [ 7, %for.inc.6.i.if.end.i92_crit_edge ], [ 8, %for.inc.7.i.if.end.i92_crit_edge ], [ 9, %for.inc.8.i.if.end.i92_crit_edge ], [ 10, %for.inc.9.i.if.end.i92_crit_edge ], [ 11, %for.inc.10.i.if.end.i92_crit_edge ], [ 12, %for.inc.11.i.if.end.i92_crit_edge ], [ 13, %for.inc.12.i.if.end.i92_crit_edge ], [ 14, %for.inc.13.i.if.end.i92_crit_edge ], [ 15, %for.inc.14.i.if.end.i92_crit_edge ], [ 16, %for.inc.15.i.if.end.i92_crit_edge ]
  %arrayidx.i91 = getelementptr %struct.__vxge_hw_device, ptr %call1, i32 0, i32 15, i32 %i.038.lcssa.i
  %114 = ptrtoint ptr %arrayidx.i91 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx.i91, align 4
  %vpath_to_func_map_cfg1.i.i = getelementptr inbounds %struct.vxge_hw_vpmgmt_reg, ptr %115, i32 0, i32 1
  %116 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vpath_to_func_map_cfg1.i.i) #16, !srcloc !77
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i.i.i = getelementptr i32, ptr %vpath_to_func_map_cfg1.i.i, i32 1
  %117 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #16, !srcloc !77
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %conv.i.i = and i32 %117, 31
  %func_id.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %call1, i32 0, i32 8
  %118 = ptrtoint ptr %func_id.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %conv.i.i, ptr %func_id.i, align 4
  %119 = ptrtoint ptr %host_type.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %host_type.i, align 8
  %121 = zext i32 %120 to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %120, label %if.end.i92.__vxge_hw_device_access_rights_get.exit.i_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
    i32 2, label %sw.bb3.i.i
    i32 7, label %if.end.i92.sw.bb6.i.i_crit_edge
    i32 5, label %if.end.i92.sw.bb6.i.i_crit_edge172
  ]

if.end.i92.sw.bb6.i.i_crit_edge172:               ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb6.i.i

if.end.i92.sw.bb6.i.i_crit_edge:                  ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb6.i.i

if.end.i92.__vxge_hw_device_access_rights_get.exit.i_crit_edge: ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_device_access_rights_get.exit.i

sw.bb.i.i:                                        ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %cmp.i.i = icmp eq i32 %conv.i.i, 0
  %spec.select.i.i = select i1 %cmp.i.i, i32 7, i32 1
  br label %__vxge_hw_device_access_rights_get.exit.i

sw.bb1.i.i:                                       ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_device_access_rights_get.exit.i

sw.bb3.i.i:                                       ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_device_access_rights_get.exit.i

sw.bb6.i.i:                                       ; preds = %if.end.i92.sw.bb6.i.i_crit_edge, %if.end.i92.sw.bb6.i.i_crit_edge172
  br label %__vxge_hw_device_access_rights_get.exit.i

__vxge_hw_device_access_rights_get.exit.i:        ; preds = %sw.bb6.i.i, %sw.bb3.i.i, %sw.bb1.i.i, %sw.bb.i.i, %if.end.i92.__vxge_hw_device_access_rights_get.exit.i_crit_edge
  %access_rights.0.i.i = phi i32 [ 1, %if.end.i92.__vxge_hw_device_access_rights_get.exit.i_crit_edge ], [ 3, %sw.bb6.i.i ], [ 7, %sw.bb3.i.i ], [ 7, %sw.bb1.i.i ], [ %spec.select.i.i, %sw.bb.i.i ]
  %access_rights.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %call1, i32 0, i32 9
  %122 = ptrtoint ptr %access_rights.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %access_rights.0.i.i, ptr %access_rights.i, align 16
  %vp_open.i = getelementptr %struct.__vxge_hw_device, ptr %call1, i32 0, i32 20, i32 %i.038.lcssa.i, i32 1
  %123 = ptrtoint ptr %vp_open.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %vp_open.i, align 4
  %arrayidx13.i = getelementptr %struct.__vxge_hw_device, ptr %call1, i32 0, i32 16, i32 %i.038.lcssa.i
  %124 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx13.i, align 4
  %vp_reg.i = getelementptr %struct.__vxge_hw_device, ptr %call1, i32 0, i32 20, i32 %i.038.lcssa.i, i32 4
  %126 = ptrtoint ptr %vp_reg.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %125, ptr %vp_reg.i, align 16
  %first_vp_id.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %call1, i32 0, i32 23
  %127 = ptrtoint ptr %first_vp_id.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %i.038.lcssa.i, ptr %first_vp_id.i, align 16
  br label %__vxge_hw_device_host_info_get.exit

for.inc.i93:                                      ; preds = %if.end11
  %and7.1.i = and i64 %112, 4611686018427387904
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.1.i)
  %tobool.not.1.i = icmp eq i64 %and7.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.1.i, label %for.inc.i93.if.end.i92_crit_edge

for.inc.i93.if.end.i92_crit_edge:                 ; preds = %for.inc.i93
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i92

for.inc.1.i:                                      ; preds = %for.inc.i93
  %and7.2.i = and i64 %112, 2305843009213693952
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.2.i)
  %tobool.not.2.i = icmp eq i64 %and7.2.i, 0
  br i1 %tobool.not.2.i, label %for.inc.2.i, label %for.inc.1.i.if.end.i92_crit_edge

for.inc.1.i.if.end.i92_crit_edge:                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i92

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %and7.3.i = and i64 %112, 1152921504606846976
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.3.i)
  %tobool.not.3.i = icmp eq i64 %and7.3.i, 0
  br i1 %tobool.not.3.i, label %for.inc.3.i, label %for.inc.2.i.if.end.i92_crit_edge

for.inc.2.i.if.end.i92_crit_edge:                 ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i92

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %and7.4.i = and i64 %112, 576460752303423488
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.4.i)
  %tobool.not.4.i = icmp eq i64 %and7.4.i, 0
  br i1 %tobool.not.4.i, label %for.inc.4.i, label %for.inc.3.i.if.end.i92_crit_edge

for.inc.3.i.if.end.i92_crit_edge:                 ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i92

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %and7.5.i = and i64 %112, 288230376151711744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.5.i)
  %tobool.not.5.i = icmp eq i64 %and7.5.i, 0
  br i1 %tobool.not.5.i, label %for.inc.5.i, label %for.inc.4.i.if.end.i92_crit_edge

for.inc.4.i.if.end.i92_crit_edge:                 ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i92

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %and7.6.i = and i64 %112, 144115188075855872
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.6.i)
  %tobool.not.6.i = icmp eq i64 %and7.6.i, 0
  br i1 %tobool.not.6.i, label %for.inc.6.i, label %for.inc.5.i.if.end.i92_crit_edge

for.inc.5.i.if.end.i92_crit_edge:                 ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i92

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %and7.7.i = and i64 %112, 72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.7.i)
  %tobool.not.7.i = icmp eq i64 %and7.7.i, 0
  br i1 %tobool.not.7.i, label %for.inc.7.i, label %for.inc.6.i.if.end.i92_crit_edge

for.inc.6.i.if.end.i92_crit_edge:                 ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i92

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %and7.8.i = and i64 %112, 36028797018963968
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.8.i)
  %tobool.not.8.i = icmp eq i64 %and7.8.i, 0
  br i1 %tobool.not.8.i, label %for.inc.8.i, label %for.inc.7.i.if.end.i92_crit_edge

for.inc.7.i.if.end.i92_crit_edge:                 ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i92

for.inc.8.i:                                      ; preds = %for.inc.7.i
  %and7.9.i = and i64 %112, 18014398509481984
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.9.i)
  %tobool.not.9.i = icmp eq i64 %and7.9.i, 0
  br i1 %tobool.not.9.i, label %for.inc.9.i, label %for.inc.8.i.if.end.i92_crit_edge

for.inc.8.i.if.end.i92_crit_edge:                 ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i92

for.inc.9.i:                                      ; preds = %for.inc.8.i
  %and7.10.i = and i64 %112, 9007199254740992
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.10.i)
  %tobool.not.10.i = icmp eq i64 %and7.10.i, 0
  br i1 %tobool.not.10.i, label %for.inc.10.i, label %for.inc.9.i.if.end.i92_crit_edge

for.inc.9.i.if.end.i92_crit_edge:                 ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i92

for.inc.10.i:                                     ; preds = %for.inc.9.i
  %and7.11.i = and i64 %112, 4503599627370496
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.11.i)
  %tobool.not.11.i = icmp eq i64 %and7.11.i, 0
  br i1 %tobool.not.11.i, label %for.inc.11.i, label %for.inc.10.i.if.end.i92_crit_edge

for.inc.10.i.if.end.i92_crit_edge:                ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i92

for.inc.11.i:                                     ; preds = %for.inc.10.i
  %and7.12.i = and i64 %112, 2251799813685248
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.12.i)
  %tobool.not.12.i = icmp eq i64 %and7.12.i, 0
  br i1 %tobool.not.12.i, label %for.inc.12.i, label %for.inc.11.i.if.end.i92_crit_edge

for.inc.11.i.if.end.i92_crit_edge:                ; preds = %for.inc.11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i92

for.inc.12.i:                                     ; preds = %for.inc.11.i
  %and7.13.i = and i64 %112, 1125899906842624
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.13.i)
  %tobool.not.13.i = icmp eq i64 %and7.13.i, 0
  br i1 %tobool.not.13.i, label %for.inc.13.i, label %for.inc.12.i.if.end.i92_crit_edge

for.inc.12.i.if.end.i92_crit_edge:                ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i92

for.inc.13.i:                                     ; preds = %for.inc.12.i
  %and7.14.i = and i64 %112, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.14.i)
  %tobool.not.14.i = icmp eq i64 %and7.14.i, 0
  br i1 %tobool.not.14.i, label %for.inc.14.i, label %for.inc.13.i.if.end.i92_crit_edge

for.inc.13.i.if.end.i92_crit_edge:                ; preds = %for.inc.13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i92

for.inc.14.i:                                     ; preds = %for.inc.13.i
  %and7.15.i = and i64 %112, 281474976710656
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.15.i)
  %tobool.not.15.i = icmp eq i64 %and7.15.i, 0
  br i1 %tobool.not.15.i, label %for.inc.15.i, label %for.inc.14.i.if.end.i92_crit_edge

for.inc.14.i.if.end.i92_crit_edge:                ; preds = %for.inc.14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i92

for.inc.15.i:                                     ; preds = %for.inc.14.i
  %and7.16.i = and i64 %112, 140737488355328
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.16.i)
  %tobool.not.16.i = icmp eq i64 %and7.16.i, 0
  br i1 %tobool.not.16.i, label %for.inc.15.i.__vxge_hw_device_host_info_get.exit_crit_edge, label %for.inc.15.i.if.end.i92_crit_edge

for.inc.15.i.if.end.i92_crit_edge:                ; preds = %for.inc.15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i92

for.inc.15.i.__vxge_hw_device_host_info_get.exit_crit_edge: ; preds = %for.inc.15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_device_host_info_get.exit

__vxge_hw_device_host_info_get.exit:              ; preds = %for.inc.15.i.__vxge_hw_device_host_info_get.exit_crit_edge, %__vxge_hw_device_access_rights_get.exit.i
  %128 = ptrtoint ptr %vpath_assignments3.i to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %vpath_assignments3.i, align 128
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %__vxge_hw_device_host_info_get.exit
  %nblocks.0140 = phi i32 [ 1, %__vxge_hw_device_host_info_get.exit ], [ %nblocks.3, %for.inc.for.body_crit_edge ]
  %i.0136 = phi i32 [ 0, %__vxge_hw_device_host_info_get.exit ], [ %inc32, %for.inc.for.body_crit_edge ]
  %sh_prom = zext i32 %i.0136 to i64
  %shr = lshr i64 -9223372036854775808, %sh_prom
  %and = and i64 %129, %shr
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end14

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end14:                                         ; preds = %for.body
  %ring = getelementptr %struct.vxge_hw_device_config, ptr %device_config, i32 0, i32 4, i32 %i.0136, i32 2
  %130 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %ring, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %131)
  %cmp15 = icmp eq i32 %131, 1
  br i1 %cmp15, label %if.then16, label %if.end14.if.end20_crit_edge

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  %ring_blocks = getelementptr %struct.vxge_hw_device_config, ptr %device_config, i32 0, i32 4, i32 %i.0136, i32 2, i32 1
  %132 = ptrtoint ptr %ring_blocks to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %ring_blocks, align 4
  %add = add i32 %133, %nblocks.0140
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end14.if.end20_crit_edge
  %nblocks.1 = phi i32 [ %add, %if.then16 ], [ %nblocks.0140, %if.end14.if.end20_crit_edge ]
  %fifo = getelementptr %struct.vxge_hw_device_config, ptr %device_config, i32 0, i32 4, i32 %i.0136, i32 3
  %134 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %fifo, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %135)
  %cmp24 = icmp eq i32 %135, 1
  br i1 %cmp24, label %if.then25, label %if.end20.if.end30_crit_edge

if.end20.if.end30_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  %fifo_blocks = getelementptr %struct.vxge_hw_device_config, ptr %device_config, i32 0, i32 4, i32 %i.0136, i32 3, i32 1
  %136 = ptrtoint ptr %fifo_blocks to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %fifo_blocks, align 4
  %add29 = add i32 %137, %nblocks.1
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.end20.if.end30_crit_edge
  %nblocks.2 = phi i32 [ %add29, %if.then25 ], [ %nblocks.1, %if.end20.if.end30_crit_edge ]
  %inc31 = add i32 %nblocks.2, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end30, %for.body.for.inc_crit_edge
  %nblocks.3 = phi i32 [ %inc31, %if.end30 ], [ %nblocks.0140, %for.body.for.inc_crit_edge ]
  %inc32 = add nuw nsw i32 %i.0136, 1
  %exitcond.not = icmp eq i32 %inc32, 17
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc
  %block_pool = getelementptr inbounds %struct.__vxge_hw_device, ptr %call1, i32 0, i32 26
  %dma_blockpool_initial = getelementptr inbounds %struct.vxge_hw_device_config, ptr %device_config, i32 0, i32 1
  %138 = ptrtoint ptr %dma_blockpool_initial to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %dma_blockpool_initial, align 4
  %add33 = add i32 %139, %nblocks.3
  %cmp.i94 = icmp eq ptr %block_pool, null
  br i1 %cmp.i94, label %for.end.if.then37_crit_edge, label %if.end.i95

for.end.if.then37_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then37

if.end.i95:                                       ; preds = %for.end
  %dma_blockpool_max = getelementptr inbounds %struct.vxge_hw_device_config, ptr %device_config, i32 0, i32 2
  %140 = ptrtoint ptr %dma_blockpool_max to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %dma_blockpool_max, align 8
  %add34 = add i32 %141, %nblocks.3
  %142 = ptrtoint ptr %block_pool to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %call1, ptr %block_pool, align 4
  %block_size.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %call1, i32 0, i32 26, i32 1
  %143 = ptrtoint ptr %block_size.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 4096, ptr %block_size.i, align 4
  %pool_size3.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %call1, i32 0, i32 26, i32 2
  %144 = ptrtoint ptr %pool_size3.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 0, ptr %pool_size3.i, align 4
  %pool_max4.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %call1, i32 0, i32 26, i32 3
  %145 = ptrtoint ptr %pool_max4.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %add34, ptr %pool_max4.i, align 4
  %req_out.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %call1, i32 0, i32 26, i32 4
  %146 = ptrtoint ptr %req_out.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 0, ptr %req_out.i, align 4
  %free_block_list.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %call1, i32 0, i32 26, i32 5
  %147 = ptrtoint ptr %free_block_list.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile ptr %free_block_list.i, ptr %free_block_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %call1, i32 0, i32 26, i32 5, i32 1
  %148 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %free_block_list.i, ptr %prev.i.i, align 4
  %free_entry_list.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %call1, i32 0, i32 26, i32 6
  %149 = ptrtoint ptr %free_entry_list.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store volatile ptr %free_entry_list.i, ptr %free_entry_list.i, align 4
  %prev.i91.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %call1, i32 0, i32 26, i32 6, i32 1
  %150 = ptrtoint ptr %prev.i91.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %free_entry_list.i, ptr %prev.i91.i, align 4
  %add.i = add i32 %add34, %add33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp5128.not.i = icmp eq i32 %add.i, 0
  br i1 %cmp5128.not.i, label %if.end.i95.for.cond10.preheader.i_crit_edge, label %if.end.i95.for.body.i97_crit_edge

if.end.i95.for.body.i97_crit_edge:                ; preds = %if.end.i95
  br label %for.body.i97

if.end.i95.for.cond10.preheader.i_crit_edge:      ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond10.preheader.i

for.cond10.preheader.i:                           ; preds = %list_add.exit.i.for.cond10.preheader.i_crit_edge, %if.end.i95.for.cond10.preheader.i_crit_edge
  %entry1.0.lcssa.i = phi ptr [ null, %if.end.i95.for.cond10.preheader.i_crit_edge ], [ %call7.i.i.i, %list_add.exit.i.for.cond10.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add33)
  %cmp11130.not.i = icmp eq i32 %add33, 0
  br i1 %cmp11130.not.i, label %for.cond10.preheader.i.if.end38_crit_edge, label %for.cond10.preheader.i.if.end8.i.i.i_crit_edge

for.cond10.preheader.i.if.end8.i.i.i_crit_edge:   ; preds = %for.cond10.preheader.i
  br label %if.end8.i.i.i

for.cond10.preheader.i.if.end38_crit_edge:        ; preds = %for.cond10.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38

for.body.i97:                                     ; preds = %list_add.exit.i.for.body.i97_crit_edge, %if.end.i95.for.body.i97_crit_edge
  %i.0129.i = phi i32 [ %inc.i99, %list_add.exit.i.for.body.i97_crit_edge ], [ 0, %if.end.i95.for.body.i97_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %151 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %151, i32 noundef 3520, i32 noundef 28) #21
  %cmp6.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp6.i, label %for.body.i97.blockpool_create_exit.sink.split.i_crit_edge, label %if.end8.i

for.body.i97.blockpool_create_exit.sink.split.i_crit_edge: ; preds = %for.body.i97
  call void @__sanitizer_cov_trace_pc() #18
  br label %blockpool_create_exit.sink.split.i

if.end8.i:                                        ; preds = %for.body.i97
  %152 = ptrtoint ptr %free_entry_list.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %free_entry_list.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %free_entry_list.i, ptr noundef %153) #16
  br i1 %call.i.i.i, label %if.end.i.i.i98, label %if.end8.i.list_add.exit.i_crit_edge

if.end8.i.list_add.exit.i_crit_edge:              ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add.exit.i

if.end.i.i.i98:                                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %call7.i.i.i, ptr %prev1.i.i.i, align 4
  %155 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %153, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %156 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %free_entry_list.i, ptr %prev3.i.i.i, align 4
  %157 = ptrtoint ptr %free_entry_list.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store volatile ptr %call7.i.i.i, ptr %free_entry_list.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i98, %if.end8.i.list_add.exit.i_crit_edge
  %inc.i99 = add nuw i32 %i.0129.i, 1
  %exitcond.not.i100 = icmp eq i32 %inc.i99, %add.i
  br i1 %exitcond.not.i100, label %list_add.exit.i.for.cond10.preheader.i_crit_edge, label %list_add.exit.i.for.body.i97_crit_edge

list_add.exit.i.for.body.i97_crit_edge:           ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i97

list_add.exit.i.for.cond10.preheader.i_crit_edge: ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond10.preheader.i

if.end8.i.i.i:                                    ; preds = %list_add.exit116.i.if.end8.i.i.i_crit_edge, %for.cond10.preheader.i.if.end8.i.i.i_crit_edge
  %i.1132.i = phi i32 [ %inc50.i, %list_add.exit116.i.if.end8.i.i.i_crit_edge ], [ 0, %for.cond10.preheader.i.if.end8.i.i.i_crit_edge ]
  %entry1.1131.i = phi ptr [ %entry1.3123.i, %list_add.exit116.i.if.end8.i.i.i_crit_edge ], [ %entry1.0.lcssa.i, %for.cond10.preheader.i.if.end8.i.i.i_crit_edge ]
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef 4096, i32 noundef 3265) #20
  %cmp.i.i101 = icmp eq ptr %call9.i.i.i, null
  br i1 %cmp.i.i101, label %if.end8.i.i.i.blockpool_create_exit.sink.split.i_crit_edge, label %if.end16.i

if.end8.i.i.i.blockpool_create_exit.sink.split.i_crit_edge: ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %blockpool_create_exit.sink.split.i

if.end16.i:                                       ; preds = %if.end8.i.i.i
  %158 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %pdev6, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %159, i32 0, i32 44
  %call.i.i = call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call9.i.i.i) #16
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end16.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !87

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = call ptr @dev_driver_string(ptr noundef %dev.i) #16
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %159, i32 0, i32 44, i32 3
  %160 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i105 = icmp eq ptr %161, null
  br i1 %tobool.not.i.i.i105, label %if.end.i.i94.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_name.exit.i.i

if.end.i.i94.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %162 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i94.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %163, %if.end.i.i94.i ], [ %161, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.38, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #16
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @debug_dma_map_single(ptr noundef %dev.i, ptr noundef nonnull %call9.i.i.i, i32 noundef 4096) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %164 = load ptr, ptr @mem_map, align 4
  %165 = ptrtoint ptr %call9.i.i.i to i32
  %sub.i.i = add i32 %165, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i95.i106 = getelementptr %struct.page, ptr %164, i32 %shr.i.i
  %and.i.i = and i32 %165, 3968
  %call41.i.i = call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef %add.ptr.i95.i106, i32 noundef %and.i.i, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #16
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i96.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %166 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %pdev6, align 8
  %dev20.i = getelementptr inbounds %struct.pci_dev, ptr %167, i32 0, i32 44
  call void @debug_dma_mapping_error(ptr noundef %dev20.i, i32 noundef %retval.0.i96.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i96.i)
  %cmp.i97.i = icmp eq i32 %retval.0.i96.i, -1
  br i1 %cmp.i97.i, label %if.then24.i, label %if.end26.i

if.then24.i:                                      ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #16
  br label %blockpool_create_exit.sink.split.i

if.end26.i:                                       ; preds = %dma_map_single_attrs.exit.i
  %168 = ptrtoint ptr %free_entry_list.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load volatile ptr, ptr %free_entry_list.i, align 4
  %cmp.i99.not.i = icmp eq ptr %169, %free_entry_list.i
  %spec.select.i = select i1 %cmp.i99.not.i, ptr %entry1.1131.i, ptr %169
  %cmp33.i = icmp eq ptr %spec.select.i, null
  br i1 %cmp33.i, label %if.end36.i, label %if.end26.i.if.then38.i_crit_edge

if.end26.i.if.then38.i_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then38.i

if.end36.i:                                       ; preds = %if.end26.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %170 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i105.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %170, i32 noundef 3520, i32 noundef 28) #21
  %cmp37.not.i = icmp eq ptr %call7.i.i105.i, null
  br i1 %cmp37.not.i, label %if.end36.i.blockpool_create_exit.sink.split.i_crit_edge, label %if.end36.i.if.then38.i_crit_edge

if.end36.i.if.then38.i_crit_edge:                 ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then38.i

if.end36.i.blockpool_create_exit.sink.split.i_crit_edge: ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %blockpool_create_exit.sink.split.i

if.then38.i:                                      ; preds = %if.end36.i.if.then38.i_crit_edge, %if.end26.i.if.then38.i_crit_edge
  %entry1.3123.i = phi ptr [ %call7.i.i105.i, %if.end36.i.if.then38.i_crit_edge ], [ %spec.select.i, %if.end26.i.if.then38.i_crit_edge ]
  %call.i.i109.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %entry1.3123.i) #16
  br i1 %call.i.i109.i, label %if.end.i.i110.i, label %if.then38.i.list_del.exit.i_crit_edge

if.then38.i.list_del.exit.i_crit_edge:            ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i

if.end.i.i110.i:                                  ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.3123.i, i32 0, i32 1
  %171 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %prev.i.i.i, align 4
  %173 = ptrtoint ptr %entry1.3123.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %entry1.3123.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %174, i32 0, i32 1
  %175 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %172, ptr %prev1.i.i.i.i, align 4
  %176 = ptrtoint ptr %172 to i32
  call void @__asan_store4_noabort(i32 %176)
  store volatile ptr %174, ptr %172, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i110.i, %if.then38.i.list_del.exit.i_crit_edge
  %177 = ptrtoint ptr %entry1.3123.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.3123.i, align 4
  %prev.i111.i = getelementptr inbounds %struct.list_head, ptr %entry1.3123.i, i32 0, i32 1
  %178 = ptrtoint ptr %prev.i111.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i111.i, align 4
  %length.i = getelementptr inbounds %struct.__vxge_hw_blockpool_entry, ptr %entry1.3123.i, i32 0, i32 1
  %179 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 4096, ptr %length.i, align 4
  %memblock40.i = getelementptr inbounds %struct.__vxge_hw_blockpool_entry, ptr %entry1.3123.i, i32 0, i32 2
  %180 = ptrtoint ptr %memblock40.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %call9.i.i.i, ptr %memblock40.i, align 4
  %dma_addr41.i = getelementptr inbounds %struct.__vxge_hw_blockpool_entry, ptr %entry1.3123.i, i32 0, i32 3
  %181 = ptrtoint ptr %dma_addr41.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %retval.0.i96.i, ptr %dma_addr41.i, align 4
  %acc_handle42.i = getelementptr inbounds %struct.__vxge_hw_blockpool_entry, ptr %entry1.3123.i, i32 0, i32 5
  %182 = ptrtoint ptr %acc_handle42.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr null, ptr %acc_handle42.i, align 4
  %dma_handle43.i = getelementptr inbounds %struct.__vxge_hw_blockpool_entry, ptr %entry1.3123.i, i32 0, i32 4
  %183 = ptrtoint ptr %dma_handle43.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr null, ptr %dma_handle43.i, align 4
  %184 = ptrtoint ptr %free_block_list.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %free_block_list.i, align 4
  %call.i.i112.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %entry1.3123.i, ptr noundef %free_block_list.i, ptr noundef %185) #16
  br i1 %call.i.i112.i, label %if.end.i.i115.i, label %list_del.exit.i.list_add.exit116.i_crit_edge

list_del.exit.i.list_add.exit116.i_crit_edge:     ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add.exit116.i

if.end.i.i115.i:                                  ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i113.i = getelementptr inbounds %struct.list_head, ptr %185, i32 0, i32 1
  %186 = ptrtoint ptr %prev1.i.i113.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %entry1.3123.i, ptr %prev1.i.i113.i, align 4
  %187 = ptrtoint ptr %entry1.3123.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %185, ptr %entry1.3123.i, align 4
  %188 = ptrtoint ptr %prev.i111.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %free_block_list.i, ptr %prev.i111.i, align 4
  %189 = ptrtoint ptr %free_block_list.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store volatile ptr %entry1.3123.i, ptr %free_block_list.i, align 4
  br label %list_add.exit116.i

list_add.exit116.i:                               ; preds = %if.end.i.i115.i, %list_del.exit.i.list_add.exit116.i_crit_edge
  %190 = ptrtoint ptr %pool_size3.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %pool_size3.i, align 4
  %inc47.i = add i32 %191, 1
  store i32 %inc47.i, ptr %pool_size3.i, align 4
  %inc50.i = add nuw i32 %i.1132.i, 1
  %exitcond138.not.i = icmp eq i32 %inc50.i, %add33
  br i1 %exitcond138.not.i, label %list_add.exit116.i.if.end38_crit_edge, label %list_add.exit116.i.if.end8.i.i.i_crit_edge

list_add.exit116.i.if.end8.i.i.i_crit_edge:       ; preds = %list_add.exit116.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i.i.i

list_add.exit116.i.if.end38_crit_edge:            ; preds = %list_add.exit116.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38

blockpool_create_exit.sink.split.i:               ; preds = %if.end36.i.blockpool_create_exit.sink.split.i_crit_edge, %if.then24.i, %if.end8.i.i.i.blockpool_create_exit.sink.split.i_crit_edge, %for.body.i97.blockpool_create_exit.sink.split.i_crit_edge
  call fastcc void @__vxge_hw_blockpool_destroy(ptr noundef nonnull %block_pool) #16
  br label %if.then37

if.then37:                                        ; preds = %blockpool_create_exit.sink.split.i, %for.end.if.then37_crit_edge
  %192 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 -559030611, ptr %call1, align 128
  call fastcc void @__vxge_hw_blockpool_destroy(ptr noundef %block_pool) #16
  call void @vfree(ptr noundef %call1) #16
  br label %exit

if.end38:                                         ; preds = %list_add.exit116.i.if.end38_crit_edge, %for.cond10.preheader.i.if.end38_crit_edge
  %193 = ptrtoint ptr %host_type.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %host_type.i, align 8
  %195 = zext i32 %194 to i64
  call void @__sanitizer_cov_trace_switch(i64 %195, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %194, label %if.end38.if.end42_crit_edge [
    i32 0, label %sw.bb.i.i.i
    i32 1, label %if.end38.if.then.i_crit_edge
    i32 2, label %if.end38.if.then.i_crit_edge173
  ]

if.end38.if.then.i_crit_edge173:                  ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

if.end38.if.then.i_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

if.end38.if.end42_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42

sw.bb.i.i.i:                                      ; preds = %if.end38
  %func_id.i109 = getelementptr inbounds %struct.__vxge_hw_device, ptr %call1, i32 0, i32 8
  %196 = ptrtoint ptr %func_id.i109 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %func_id.i109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %cmp.i.not.i.i = icmp eq i32 %197, 0
  br i1 %cmp.i.not.i.i, label %sw.bb.i.i.i.if.then.i_crit_edge, label %sw.bb.i.i.i.if.end42_crit_edge

sw.bb.i.i.i.if.end42_crit_edge:                   ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42

sw.bb.i.i.i.if.then.i_crit_edge:                  ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

if.then.i:                                        ; preds = %sw.bb.i.i.i.if.then.i_crit_edge, %if.end38.if.then.i_crit_edge, %if.end38.if.then.i_crit_edge173
  %198 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %pdev6, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %lnk.i.i) #16
  %200 = ptrtoint ptr %lnk.i.i to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 -1, ptr %lnk.i.i, align 2, !annotation !88
  %call.i.i110 = call i32 @pcie_capability_read_word(ptr noundef %199, i32 noundef 18, ptr noundef nonnull %lnk.i.i) #16
  %201 = ptrtoint ptr %lnk.i.i to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %lnk.i.i, align 2
  %conv.i.i111 = zext i16 %202 to i32
  %and.i.i112 = and i32 %conv.i.i111, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i112)
  %cmp.not.i.i = icmp eq i32 %and.i.i112, 1
  br i1 %cmp.not.i.i, label %if.end.i.i113, label %if.then.i.if.then41_crit_edge

if.then.i.if.then41_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then41

if.end.i.i113:                                    ; preds = %if.then.i
  %and3.i.i = lshr i32 %conv.i.i111, 4
  %203 = and i32 %and3.i.i, 63
  %204 = zext i32 %203 to i64
  call void @__sanitizer_cov_trace_switch(i64 %204, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %203, label %if.end.i.i113.if.then41_crit_edge [
    i32 0, label %if.end.i.i113.__vxge_hw_device_initialize.exit_crit_edge
    i32 1, label %if.end.i.i113.__vxge_hw_device_initialize.exit_crit_edge174
    i32 2, label %if.end.i.i113.__vxge_hw_device_initialize.exit_crit_edge175
    i32 4, label %if.end.i.i113.__vxge_hw_device_initialize.exit_crit_edge176
    i32 8, label %if.end.i.i113.__vxge_hw_device_initialize.exit_crit_edge177
  ]

if.end.i.i113.__vxge_hw_device_initialize.exit_crit_edge177: ; preds = %if.end.i.i113
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_device_initialize.exit

if.end.i.i113.__vxge_hw_device_initialize.exit_crit_edge176: ; preds = %if.end.i.i113
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_device_initialize.exit

if.end.i.i113.__vxge_hw_device_initialize.exit_crit_edge175: ; preds = %if.end.i.i113
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_device_initialize.exit

if.end.i.i113.__vxge_hw_device_initialize.exit_crit_edge174: ; preds = %if.end.i.i113
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_device_initialize.exit

if.end.i.i113.__vxge_hw_device_initialize.exit_crit_edge: ; preds = %if.end.i.i113
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_device_initialize.exit

if.end.i.i113.if.then41_crit_edge:                ; preds = %if.end.i.i113
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then41

__vxge_hw_device_initialize.exit:                 ; preds = %if.end.i.i113.__vxge_hw_device_initialize.exit_crit_edge, %if.end.i.i113.__vxge_hw_device_initialize.exit_crit_edge174, %if.end.i.i113.__vxge_hw_device_initialize.exit_crit_edge175, %if.end.i.i113.__vxge_hw_device_initialize.exit_crit_edge176, %if.end.i.i113.__vxge_hw_device_initialize.exit_crit_edge177
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %lnk.i.i) #16
  br label %if.end42

if.then41:                                        ; preds = %if.end.i.i113.if.then41_crit_edge, %if.then.i.if.then41_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %lnk.i.i) #16
  %205 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 -559030611, ptr %call1, align 128
  call fastcc void @__vxge_hw_blockpool_destroy(ptr noundef nonnull %block_pool) #16
  call void @vfree(ptr noundef %call1) #16
  br label %exit

if.end42:                                         ; preds = %__vxge_hw_device_initialize.exit, %sw.bb.i.i.i.if.end42_crit_edge, %if.end38.if.end42_crit_edge
  %206 = ptrtoint ptr %devh to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %call1, ptr %devh, align 4
  br label %exit

exit:                                             ; preds = %if.end42, %if.then41, %if.then37, %if.then10, %if.end.exit_crit_edge, %if.end13.i.i.exit_crit_edge, %if.end5.i.i.exit_crit_edge, %if.end.i.i.exit_crit_edge, %for.body.i.exit_crit_edge, %entry.exit_crit_edge
  %status.0 = phi i32 [ 1, %if.then10 ], [ 202, %if.then37 ], [ 213, %if.then41 ], [ 0, %if.end42 ], [ 202, %if.end.exit_crit_edge ], [ 306, %entry.exit_crit_edge ], [ 305, %for.body.i.exit_crit_edge ], [ 302, %if.end.i.i.exit_crit_edge ], [ 304, %if.end13.i.i.exit_crit_edge ], [ 303, %if.end5.i.i.exit_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @vxge_hw_device_debug_set(ptr noundef writeonly %hldev, i32 noundef %level, i32 noundef %mask) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hldev, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %debug_module_mask = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 28
  %0 = ptrtoint ptr %debug_module_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %mask, ptr %debug_module_mask, align 8
  %debug_level = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 29
  %1 = ptrtoint ptr %debug_level to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %level, ptr %debug_level, align 4
  %and = and i32 %level, 2
  %level_err = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 30
  %2 = ptrtoint ptr %level_err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and, ptr %level_err, align 16
  %and1 = and i32 %level, 1
  %level_trace = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 31
  %3 = ptrtoint ptr %level_trace to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and1, ptr %level_trace, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vxge_hw_device_terminate(ptr noundef %hldev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hldev to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -559030611, ptr %hldev, align 128
  %block_pool = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 26
  tail call fastcc void @__vxge_hw_blockpool_destroy(ptr noundef %block_pool)
  tail call void @vfree(ptr noundef %hldev) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__vxge_hw_blockpool_destroy(ptr noundef %blockpool) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %blockpool, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %free_block_list = getelementptr inbounds %struct.__vxge_hw_blockpool, ptr %blockpool, i32 0, i32 5
  %0 = ptrtoint ptr %free_block_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free_block_list, align 4
  %cmp.i.not51 = icmp eq ptr %1, %free_block_list
  br i1 %cmp.i.not51, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %2 = ptrtoint ptr %blockpool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %blockpool, align 4
  %pdev = getelementptr inbounds %struct.__vxge_hw_device, ptr %3, i32 0, i32 2
  %pool_size = getelementptr inbounds %struct.__vxge_hw_blockpool, ptr %blockpool, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %p.052 = phi ptr [ %1, %for.body.lr.ph ], [ %n.054, %list_del.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %p.052 to i32
  call void @__asan_load4_noabort(i32 %4)
  %n.054 = load ptr, ptr %p.052, align 4
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %dma_addr = getelementptr inbounds %struct.__vxge_hw_blockpool_entry, ptr %p.052, i32 0, i32 3
  %7 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma_addr, align 4
  %length = getelementptr inbounds %struct.__vxge_hw_blockpool_entry, ptr %p.052, i32 0, i32 1
  %9 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %8, i32 noundef %10, i32 noundef 0, i32 noundef 0) #16
  %memblock = getelementptr inbounds %struct.__vxge_hw_blockpool_entry, ptr %p.052, i32 0, i32 2
  %11 = ptrtoint ptr %memblock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %memblock, align 4
  %acc_handle = getelementptr inbounds %struct.__vxge_hw_blockpool_entry, ptr %p.052, i32 0, i32 5
  %13 = ptrtoint ptr %acc_handle to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %acc_handle, align 4
  %idx.neg.i = sub i32 0, %14
  %add.ptr.i = getelementptr i8, ptr %12, i32 %idx.neg.i
  tail call void @kfree(ptr noundef %add.ptr.i) #16
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %p.052) #16
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %p.052, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %p.052 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %p.052, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %21 = ptrtoint ptr %p.052 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %p.052, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %p.052, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %p.052) #16
  %23 = ptrtoint ptr %pool_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pool_size, align 4
  %dec = add i32 %24, -1
  store i32 %dec, ptr %pool_size, align 4
  %cmp.i.not = icmp eq ptr %n.054, %free_block_list
  br i1 %cmp.i.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %free_entry_list = getelementptr inbounds %struct.__vxge_hw_blockpool, ptr %blockpool, i32 0, i32 6
  %25 = ptrtoint ptr %free_entry_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %free_entry_list, align 4
  %cmp.i42.not56 = icmp eq ptr %26, %free_entry_list
  br i1 %cmp.i42.not56, label %for.end.cleanup_crit_edge, label %for.end.for.body14_crit_edge

for.end.for.body14_crit_edge:                     ; preds = %for.end
  br label %for.body14

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body14:                                       ; preds = %list_del.exit49.for.body14_crit_edge, %for.end.for.body14_crit_edge
  %p.157 = phi ptr [ %n.159, %list_del.exit49.for.body14_crit_edge ], [ %26, %for.end.for.body14_crit_edge ]
  %27 = ptrtoint ptr %p.157 to i32
  call void @__asan_load4_noabort(i32 %27)
  %n.159 = load ptr, ptr %p.157, align 4
  %call.i.i44 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %p.157) #16
  br i1 %call.i.i44, label %if.end.i.i47, label %for.body14.list_del.exit49_crit_edge

for.body14.list_del.exit49_crit_edge:             ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit49

if.end.i.i47:                                     ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i45 = getelementptr inbounds %struct.list_head, ptr %p.157, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i45 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i45, align 4
  %30 = ptrtoint ptr %p.157 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %p.157, align 4
  %prev1.i.i.i46 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i46 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i46, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %list_del.exit49

list_del.exit49:                                  ; preds = %if.end.i.i47, %for.body14.list_del.exit49_crit_edge
  %34 = ptrtoint ptr %p.157 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 256 to ptr), ptr %p.157, align 4
  %prev.i48 = getelementptr inbounds %struct.list_head, ptr %p.157, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i48 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i48, align 4
  tail call void @kfree(ptr noundef %p.157) #16
  %cmp.i42.not = icmp eq ptr %n.159, %free_entry_list
  br i1 %cmp.i42.not, label %list_del.exit49.cleanup_crit_edge, label %list_del.exit49.for.body14_crit_edge

list_del.exit49.for.body14_crit_edge:             ; preds = %list_del.exit49
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body14

list_del.exit49.cleanup_crit_edge:                ; preds = %list_del.exit49
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit49.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_device_stats_get(ptr nocapture noundef readonly %hldev, ptr nocapture noundef writeonly %hw_stats) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %vpaths_deployed = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %status.027 = phi i32 [ 0, %entry ], [ %status.1, %for.inc.for.body_crit_edge ]
  %i.025 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %vpaths_deployed to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %vpaths_deployed, align 8
  %sh_prom = zext i32 %i.025 to i64
  %shr = lshr i64 -9223372036854775808, %sh_prom
  %and = and i64 %1, %shr
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %vp_open = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %i.025, i32 1
  %2 = ptrtoint ptr %vp_open to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vp_open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %lor.lhs.false.for.inc_crit_edge, label %if.end

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %i.025
  %hw_stats_sav = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %i.025, i32 22
  %4 = ptrtoint ptr %hw_stats_sav to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_stats_sav, align 4
  %hw_stats6 = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %i.025, i32 21
  %6 = ptrtoint ptr %hw_stats6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_stats6, align 16
  %8 = call ptr @memcpy(ptr %5, ptr %7, i32 624)
  %9 = load ptr, ptr %hw_stats6, align 16
  %call = tail call fastcc i32 @__vxge_hw_vpath_stats_get(ptr noundef %arrayidx, ptr noundef %9)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %status.1 = phi i32 [ %status.027, %lor.lhs.false.for.inc_crit_edge ], [ %call, %if.end ], [ %status.027, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  %hw_dev_info_stats = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 27, i32 1
  %10 = call ptr @memcpy(ptr %hw_stats, ptr %hw_dev_info_stats, i32 10676)
  ret i32 %status.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__vxge_hw_vpath_stats_get(ptr nocapture noundef readonly %vpath, ptr noundef writeonly %hw_stats) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %vp_open = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %vpath, i32 0, i32 1
  %0 = ptrtoint ptr %vp_open to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vp_open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %vp_reg1 = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %vpath, i32 0, i32 4
  %2 = ptrtoint ptr %vp_reg1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vp_reg1, align 16
  %vpath_debug_stats0 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %3, i32 0, i32 168
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vpath_debug_stats0) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i = getelementptr i32, ptr %vpath_debug_stats0, i32 1
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %6 = call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %hw_stats to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %6, ptr %hw_stats, align 1
  %vpath_debug_stats1 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %3, i32 0, i32 169
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vpath_debug_stats1) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i181 = getelementptr i32, ptr %vpath_debug_stats1, i32 1
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i181) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %10 = call i32 @llvm.bswap.i32(i32 %9)
  %ini_num_mrd_sent = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %hw_stats, i32 0, i32 2
  %11 = ptrtoint ptr %ini_num_mrd_sent to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %ini_num_mrd_sent, align 1
  %vpath_debug_stats2 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %3, i32 0, i32 170
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vpath_debug_stats2) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i182 = getelementptr i32, ptr %vpath_debug_stats2, i32 1
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i182) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %14 = call i32 @llvm.bswap.i32(i32 %13)
  %ini_num_cpl_rcvd = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %hw_stats, i32 0, i32 4
  %15 = ptrtoint ptr %ini_num_cpl_rcvd to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %ini_num_cpl_rcvd, align 1
  %vpath_debug_stats3 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %3, i32 0, i32 171
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vpath_debug_stats3) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i183 = getelementptr i32, ptr %vpath_debug_stats3, i32 1
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i183) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %18 = zext i32 %17 to i64
  %19 = zext i32 %16 to i64
  %20 = shl nuw i64 %19, 32
  %21 = or i64 %20, %18
  %22 = tail call i64 @llvm.bswap.i64(i64 %21) #16
  %ini_num_mwr_byte_sent = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %hw_stats, i32 0, i32 6
  %23 = ptrtoint ptr %ini_num_mwr_byte_sent to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %22, ptr %ini_num_mwr_byte_sent, align 1
  %vpath_debug_stats4 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %3, i32 0, i32 172
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vpath_debug_stats4) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i184 = getelementptr i32, ptr %vpath_debug_stats4, i32 1
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i184) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %26 = zext i32 %25 to i64
  %27 = zext i32 %24 to i64
  %28 = shl nuw i64 %27, 32
  %29 = or i64 %28, %26
  %30 = tail call i64 @llvm.bswap.i64(i64 %29) #16
  %ini_num_cpl_byte_rcvd = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %hw_stats, i32 0, i32 7
  %31 = ptrtoint ptr %ini_num_cpl_byte_rcvd to i32
  call void @__asan_storeN_noabort(i32 %31, i32 8)
  store i64 %30, ptr %ini_num_cpl_byte_rcvd, align 1
  %vpath_debug_stats5 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %3, i32 0, i32 173
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vpath_debug_stats5) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i185 = getelementptr i32, ptr %vpath_debug_stats5, i32 1
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i185) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %34 = call i32 @llvm.bswap.i32(i32 %32)
  %wrcrdtarb_xoff = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %hw_stats, i32 0, i32 8
  %35 = ptrtoint ptr %wrcrdtarb_xoff to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %34, ptr %wrcrdtarb_xoff, align 1
  %vpath_debug_stats6 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %3, i32 0, i32 174
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vpath_debug_stats6) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i186 = getelementptr i32, ptr %vpath_debug_stats6, i32 1
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i186) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %38 = call i32 @llvm.bswap.i32(i32 %36)
  %rdcrdtarb_xoff = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %hw_stats, i32 0, i32 10
  %39 = ptrtoint ptr %rdcrdtarb_xoff to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %38, ptr %rdcrdtarb_xoff, align 1
  %vpath_genstats_count01 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %3, i32 0, i32 175
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vpath_genstats_count01) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i187 = getelementptr i32, ptr %vpath_genstats_count01, i32 1
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i187) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %42 = call i32 @llvm.bswap.i32(i32 %40)
  %vpath_genstats_count0 = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %hw_stats, i32 0, i32 12
  %43 = ptrtoint ptr %vpath_genstats_count0 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %42, ptr %vpath_genstats_count0, align 1
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vpath_genstats_count01) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i187) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %46 = call i32 @llvm.bswap.i32(i32 %45)
  %vpath_genstats_count1 = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %hw_stats, i32 0, i32 13
  %47 = ptrtoint ptr %vpath_genstats_count1 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %46, ptr %vpath_genstats_count1, align 1
  %vpath_genstats_count23 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %3, i32 0, i32 176
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vpath_genstats_count23) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i189 = getelementptr i32, ptr %vpath_genstats_count23, i32 1
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i189) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %50 = call i32 @llvm.bswap.i32(i32 %48)
  %vpath_genstats_count2 = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %hw_stats, i32 0, i32 14
  %51 = ptrtoint ptr %vpath_genstats_count2 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 %50, ptr %vpath_genstats_count2, align 1
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vpath_genstats_count01) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i187) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %54 = call i32 @llvm.bswap.i32(i32 %53)
  %vpath_genstats_count3 = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %hw_stats, i32 0, i32 15
  %55 = ptrtoint ptr %vpath_genstats_count3 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %54, ptr %vpath_genstats_count3, align 1
  %vpath_genstats_count4 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %3, i32 0, i32 177
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vpath_genstats_count4) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i191 = getelementptr i32, ptr %vpath_genstats_count4, i32 1
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i191) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %58 = call i32 @llvm.bswap.i32(i32 %57)
  %vpath_genstats_count442 = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %hw_stats, i32 0, i32 16
  %59 = ptrtoint ptr %vpath_genstats_count442 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 %58, ptr %vpath_genstats_count442, align 1
  %vpath_genstats_count5 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %3, i32 0, i32 178
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vpath_genstats_count5) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i192 = getelementptr i32, ptr %vpath_genstats_count5, i32 1
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i192) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %62 = call i32 @llvm.bswap.i32(i32 %60)
  %vpath_genstats_count547 = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %hw_stats, i32 0, i32 18
  %63 = ptrtoint ptr %vpath_genstats_count547 to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 %62, ptr %vpath_genstats_count547, align 1
  %64 = ptrtoint ptr %vp_open to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %vp_open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp.i = icmp eq i32 %65, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %for.cond.preheader.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end
  %tx_stats = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %hw_stats, i32 0, i32 20
  %hldev.i.i = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %vpath, i32 0, i32 2
  br label %if.end.i.i

for.bodythread-pre-split.i:                       ; preds = %if.end4.i
  %incdec.ptr.i = getelementptr i64, ptr %val64.018.i264, i32 1
  %66 = ptrtoint ptr %vp_open to i32
  call void @__asan_load4_noabort(i32 %66)
  %.pr.i = load i32, ptr %vp_open, align 4
  %cmp.i.i = icmp eq i32 %.pr.i, 0
  br i1 %cmp.i.i, label %for.bodythread-pre-split.i.cleanup_crit_edge, label %for.bodythread-pre-split.i.if.end.i.i_crit_edge

for.bodythread-pre-split.i.if.end.i.i_crit_edge:  ; preds = %for.bodythread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

for.bodythread-pre-split.i.cleanup_crit_edge:     ; preds = %for.bodythread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i.i:                                       ; preds = %for.bodythread-pre-split.i.if.end.i.i_crit_edge, %for.cond.preheader.i
  %val64.018.i264 = phi ptr [ %tx_stats, %for.cond.preheader.i ], [ %incdec.ptr.i, %for.bodythread-pre-split.i.if.end.i.i_crit_edge ]
  %offset.020.i263 = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.bodythread-pre-split.i.if.end.i.i_crit_edge ]
  %67 = ptrtoint ptr %vp_reg1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %vp_reg1, align 16
  %conv2.i.i = zext i32 %offset.020.i263 to i64
  %shl3.i.i = shl nuw nsw i64 %conv2.i.i, 24
  %or4.i.i = or i64 %shl3.i.i, 281474976710656
  %xmac_stats_access_cmd.i.i = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %68, i32 0, i32 48
  %69 = ptrtoint ptr %hldev.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hldev.i.i, align 8
  %config.i.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %70, i32 0, i32 4
  %71 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %config.i.i, align 16
  %call.i.i = tail call fastcc i32 @__vxge_hw_pio_mem_write64(i64 noundef %or4.i.i, ptr noundef %xmac_stats_access_cmd.i.i, i32 noundef %72) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp5.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp5.i.i, label %if.end4.i, label %__vxge_hw_vpath_stats_access.exit.i

__vxge_hw_vpath_stats_access.exit.i:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %73 = ptrtoint ptr %val64.018.i264 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 0, ptr %val64.018.i264, align 8
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i.i
  %xmac_stats_access_data.i.i = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %68, i32 0, i32 49
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %xmac_stats_access_data.i.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i.i.i = getelementptr i32, ptr %xmac_stats_access_data.i.i, i32 1
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %76 = zext i32 %75 to i64
  %77 = zext i32 %74 to i64
  %78 = shl nuw i64 %77, 32
  %79 = or i64 %78, %76
  %80 = tail call i64 @llvm.bswap.i64(i64 %79) #16
  %81 = ptrtoint ptr %val64.018.i264 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %80, ptr %val64.018.i264, align 8
  %inc.i = add nuw nsw i32 %offset.020.i263, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 18
  br i1 %exitcond.not.i, label %if.end52, label %for.bodythread-pre-split.i

if.end52:                                         ; preds = %if.end4.i
  %82 = ptrtoint ptr %vp_open to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %vp_open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp.i194 = icmp eq i32 %83, 0
  br i1 %cmp.i194, label %if.end52.cleanup_crit_edge, label %for.cond.preheader.i197

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader.i197:                          ; preds = %if.end52
  %rx_stats = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %hw_stats, i32 0, i32 21
  br label %if.end.i.i210

for.bodythread-pre-split.i200:                    ; preds = %if.end4.i216
  %incdec.ptr.i198 = getelementptr i64, ptr %val64.017.i267, i32 1
  %add.i = add nuw nsw i32 %offset.019.i265, 8
  %84 = ptrtoint ptr %vp_open to i32
  call void @__asan_load4_noabort(i32 %84)
  %.pr.i199 = load i32, ptr %vp_open, align 4
  %cmp.i.i201 = icmp eq i32 %.pr.i199, 0
  br i1 %cmp.i.i201, label %for.bodythread-pre-split.i200.cleanup_crit_edge, label %for.bodythread-pre-split.i200.if.end.i.i210_crit_edge

for.bodythread-pre-split.i200.if.end.i.i210_crit_edge: ; preds = %for.bodythread-pre-split.i200
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i210

for.bodythread-pre-split.i200.cleanup_crit_edge:  ; preds = %for.bodythread-pre-split.i200
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i.i210:                                    ; preds = %for.bodythread-pre-split.i200.if.end.i.i210_crit_edge, %for.cond.preheader.i197
  %val64.017.i267 = phi ptr [ %rx_stats, %for.cond.preheader.i197 ], [ %incdec.ptr.i198, %for.bodythread-pre-split.i200.if.end.i.i210_crit_edge ]
  %i.018.i266 = phi i32 [ 0, %for.cond.preheader.i197 ], [ %inc.i214, %for.bodythread-pre-split.i200.if.end.i.i210_crit_edge ]
  %offset.019.i265 = phi i32 [ 144, %for.cond.preheader.i197 ], [ %add.i, %for.bodythread-pre-split.i200.if.end.i.i210_crit_edge ]
  %shr.i = lshr exact i32 %offset.019.i265, 3
  %85 = ptrtoint ptr %vp_reg1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %vp_reg1, align 16
  %conv2.i.i203 = zext i32 %shr.i to i64
  %shl3.i.i204 = shl nuw nsw i64 %conv2.i.i203, 24
  %or4.i.i205 = or i64 %shl3.i.i204, 281474976710656
  %xmac_stats_access_cmd.i.i206 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %86, i32 0, i32 48
  %87 = ptrtoint ptr %hldev.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hldev.i.i, align 8
  %config.i.i207 = getelementptr inbounds %struct.__vxge_hw_device, ptr %88, i32 0, i32 4
  %89 = ptrtoint ptr %config.i.i207 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %config.i.i207, align 16
  %call.i.i208 = tail call fastcc i32 @__vxge_hw_pio_mem_write64(i64 noundef %or4.i.i205, ptr noundef %xmac_stats_access_cmd.i.i206, i32 noundef %90) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i208)
  %cmp5.i.i209 = icmp eq i32 %call.i.i208, 0
  br i1 %cmp5.i.i209, label %if.end4.i216, label %__vxge_hw_vpath_stats_access.exit.i211

__vxge_hw_vpath_stats_access.exit.i211:           ; preds = %if.end.i.i210
  call void @__sanitizer_cov_trace_pc() #18
  %91 = ptrtoint ptr %val64.017.i267 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 0, ptr %val64.017.i267, align 8
  br label %cleanup

if.end4.i216:                                     ; preds = %if.end.i.i210
  %xmac_stats_access_data.i.i212 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %86, i32 0, i32 49
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %xmac_stats_access_data.i.i212) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i.i.i213 = getelementptr i32, ptr %xmac_stats_access_data.i.i212, i32 1
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i213) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %94 = zext i32 %93 to i64
  %95 = zext i32 %92 to i64
  %96 = shl nuw i64 %95, 32
  %97 = or i64 %96, %94
  %98 = tail call i64 @llvm.bswap.i64(i64 %97) #16
  %99 = ptrtoint ptr %val64.017.i267 to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %98, ptr %val64.017.i267, align 8
  %inc.i214 = add nuw nsw i32 %i.018.i266, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %inc.i214)
  %exitcond.not.i215 = icmp eq i32 %inc.i214, 39
  br i1 %exitcond.not.i215, label %if.end57, label %for.bodythread-pre-split.i200

if.end57:                                         ; preds = %if.end4.i216
  %100 = ptrtoint ptr %vp_open to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %vp_open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp.i219 = icmp eq i32 %101, 0
  br i1 %cmp.i219, label %if.end57.cleanup_crit_edge, label %if.end.i

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i:                                         ; preds = %if.end57
  %102 = ptrtoint ptr %vp_reg1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %vp_reg1, align 16
  %xmac_stats_access_cmd.i = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %103, i32 0, i32 48
  %104 = ptrtoint ptr %hldev.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %hldev.i.i, align 8
  %config.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %105, i32 0, i32 4
  %106 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %config.i, align 16
  %call.i = tail call fastcc i32 @__vxge_hw_pio_mem_write64(i64 noundef 281475949789184, ptr noundef %xmac_stats_access_cmd.i, i32 noundef %107) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.i = icmp eq i32 %call.i, 0
  br i1 %cmp5.i, label %if.end62, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end62:                                         ; preds = %if.end.i
  %xmac_stats_access_data.i = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %103, i32 0, i32 49
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %xmac_stats_access_data.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i.i = getelementptr i32, ptr %xmac_stats_access_data.i, i32 1
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %110 = zext i32 %109 to i64
  %111 = zext i32 %108 to i64
  %112 = shl nuw i64 %111, 32
  %113 = or i64 %112, %110
  %114 = tail call i64 @llvm.bswap.i64(i64 %113) #16
  %shr63 = lshr i64 %114, 32
  %conv65 = trunc i64 %shr63 to i32
  %prog_event_vnum0 = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %hw_stats, i32 0, i32 24
  %115 = ptrtoint ptr %prog_event_vnum0 to i32
  call void @__asan_storeN_noabort(i32 %115, i32 4)
  store i32 %conv65, ptr %prog_event_vnum0, align 1
  %conv68 = trunc i64 %114 to i32
  %prog_event_vnum1 = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %hw_stats, i32 0, i32 23
  %116 = ptrtoint ptr %prog_event_vnum1 to i32
  call void @__asan_storeN_noabort(i32 %116, i32 4)
  store i32 %conv68, ptr %prog_event_vnum1, align 1
  %117 = ptrtoint ptr %vp_open to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %vp_open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp.i221 = icmp eq i32 %118, 0
  br i1 %cmp.i221, label %if.end62.cleanup_crit_edge, label %if.end.i228

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i228:                                      ; preds = %if.end62
  %119 = ptrtoint ptr %vp_reg1 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %vp_reg1, align 16
  %xmac_stats_access_cmd.i223 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %120, i32 0, i32 48
  %121 = ptrtoint ptr %hldev.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %hldev.i.i, align 8
  %config.i225 = getelementptr inbounds %struct.__vxge_hw_device, ptr %122, i32 0, i32 4
  %123 = ptrtoint ptr %config.i225 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %config.i225, align 16
  %call.i226 = tail call fastcc i32 @__vxge_hw_pio_mem_write64(i64 noundef 281475966566400, ptr noundef %xmac_stats_access_cmd.i223, i32 noundef %124) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i226)
  %cmp5.i227 = icmp eq i32 %call.i226, 0
  br i1 %cmp5.i227, label %if.end73, label %if.end.i228.cleanup_crit_edge

if.end.i228.cleanup_crit_edge:                    ; preds = %if.end.i228
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end73:                                         ; preds = %if.end.i228
  call void @__sanitizer_cov_trace_pc() #18
  %xmac_stats_access_data.i229 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %120, i32 0, i32 49
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %xmac_stats_access_data.i229) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i.i230 = getelementptr i32, ptr %xmac_stats_access_data.i229, i32 1
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i230) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %127 = zext i32 %126 to i64
  %128 = zext i32 %125 to i64
  %129 = shl nuw i64 %128, 32
  %130 = or i64 %129, %127
  %131 = tail call i64 @llvm.bswap.i64(i64 %130) #16
  %shr74 = lshr i64 %131, 32
  %conv76 = trunc i64 %shr74 to i32
  %prog_event_vnum2 = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %hw_stats, i32 0, i32 26
  %132 = ptrtoint ptr %prog_event_vnum2 to i32
  call void @__asan_storeN_noabort(i32 %132, i32 4)
  store i32 %conv76, ptr %prog_event_vnum2, align 1
  %conv79 = trunc i64 %131 to i32
  %prog_event_vnum3 = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %hw_stats, i32 0, i32 25
  %133 = ptrtoint ptr %prog_event_vnum3 to i32
  call void @__asan_storeN_noabort(i32 %133, i32 4)
  store i32 %conv79, ptr %prog_event_vnum3, align 1
  %rx_multi_cast_stats = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %3, i32 0, i32 20
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rx_multi_cast_stats) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i237 = getelementptr i32, ptr %rx_multi_cast_stats, i32 1
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i237) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %136 = call i32 @llvm.bswap.i32(i32 %134)
  %conv83 = trunc i32 %136 to i16
  %rx_multi_cast_frame_discard = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %hw_stats, i32 0, i32 27
  %137 = ptrtoint ptr %rx_multi_cast_frame_discard to i32
  call void @__asan_storeN_noabort(i32 %137, i32 2)
  store i16 %conv83, ptr %rx_multi_cast_frame_discard, align 1
  %rx_frm_transferred = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %3, i32 0, i32 21
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rx_frm_transferred) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i238 = getelementptr i32, ptr %rx_frm_transferred, i32 1
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i238) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %140 = call i32 @llvm.bswap.i32(i32 %138)
  %rx_frm_transferred88 = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %hw_stats, i32 0, i32 29
  %141 = ptrtoint ptr %rx_frm_transferred88 to i32
  call void @__asan_storeN_noabort(i32 %141, i32 4)
  store i32 %140, ptr %rx_frm_transferred88, align 1
  %rxd_returned = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %3, i32 0, i32 22
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxd_returned) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i239 = getelementptr i32, ptr %rxd_returned, i32 1
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i239) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %144 = call i32 @llvm.bswap.i32(i32 %142)
  %conv92 = trunc i32 %144 to i16
  %rxd_returned93 = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %hw_stats, i32 0, i32 31
  %145 = ptrtoint ptr %rxd_returned93 to i32
  call void @__asan_storeN_noabort(i32 %145, i32 2)
  store i16 %conv92, ptr %rxd_returned93, align 1
  %dbg_stats_rx_mpa = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %3, i32 0, i32 105
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dbg_stats_rx_mpa) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i240 = getelementptr i32, ptr %dbg_stats_rx_mpa, i32 1
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i240) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %148 = zext i32 %147 to i64
  %149 = zext i32 %146 to i64
  %150 = shl nuw i64 %149, 32
  %151 = or i64 %150, %148
  %152 = tail call i64 @llvm.bswap.i64(i64 %151) #16
  %shr95 = lshr i64 %152, 16
  %conv97 = trunc i64 %shr95 to i16
  %rx_mpa_len_fail_frms = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %hw_stats, i32 0, i32 33
  %153 = ptrtoint ptr %rx_mpa_len_fail_frms to i32
  call void @__asan_storeN_noabort(i32 %153, i32 2)
  store i16 %conv97, ptr %rx_mpa_len_fail_frms, align 1
  %shr98 = lshr i64 %152, 32
  %conv100 = trunc i64 %shr98 to i16
  %rx_mpa_mrk_fail_frms = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %hw_stats, i32 0, i32 34
  %154 = ptrtoint ptr %rx_mpa_mrk_fail_frms to i32
  call void @__asan_storeN_noabort(i32 %154, i32 2)
  store i16 %conv100, ptr %rx_mpa_mrk_fail_frms, align 1
  %shr101 = lshr i64 %152, 48
  %conv103 = trunc i64 %shr101 to i16
  %rx_mpa_crc_fail_frms = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %hw_stats, i32 0, i32 35
  %155 = ptrtoint ptr %rx_mpa_crc_fail_frms to i32
  call void @__asan_storeN_noabort(i32 %155, i32 2)
  store i16 %conv103, ptr %rx_mpa_crc_fail_frms, align 1
  %dbg_stats_rx_fau = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %3, i32 0, i32 106
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dbg_stats_rx_fau) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i241 = getelementptr i32, ptr %dbg_stats_rx_fau, i32 1
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i241) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %158 = zext i32 %157 to i64
  %159 = zext i32 %156 to i64
  %160 = shl nuw i64 %159, 32
  %161 = or i64 %160, %158
  %162 = tail call i64 @llvm.bswap.i64(i64 %161) #16
  %shr105 = lshr i64 %162, 16
  %conv107 = trunc i64 %shr105 to i16
  %rx_permitted_frms = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %hw_stats, i32 0, i32 36
  %163 = ptrtoint ptr %rx_permitted_frms to i32
  call void @__asan_storeN_noabort(i32 %163, i32 2)
  store i16 %conv107, ptr %rx_permitted_frms, align 1
  %shr108 = lshr i64 %162, 32
  %conv111 = and i64 %shr108, 65535
  %rx_vp_reset_discarded_frms = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %hw_stats, i32 0, i32 37
  %164 = ptrtoint ptr %rx_vp_reset_discarded_frms to i32
  call void @__asan_storeN_noabort(i32 %164, i32 8)
  store i64 %conv111, ptr %rx_vp_reset_discarded_frms, align 1
  %shr112 = lshr i64 %162, 48
  %rx_wol_frms = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %hw_stats, i32 0, i32 38
  %165 = ptrtoint ptr %rx_wol_frms to i32
  call void @__asan_storeN_noabort(i32 %165, i32 8)
  store i64 %shr112, ptr %rx_wol_frms, align 1
  %tx_vp_reset_discarded_frms = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %3, i32 0, i32 101
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tx_vp_reset_discarded_frms) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i242 = getelementptr i32, ptr %tx_vp_reset_discarded_frms, i32 1
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i242) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %168 = zext i32 %166 to i64
  %169 = shl nuw i64 %168, 32
  %170 = and i64 %169, -281474976710656
  %171 = tail call i64 @llvm.bswap.i64(i64 %170)
  %tx_vp_reset_discarded_frms121 = getelementptr inbounds %struct.vxge_hw_vpath_stats_hw_info, ptr %hw_stats, i32 0, i32 39
  %172 = ptrtoint ptr %tx_vp_reset_discarded_frms121 to i32
  call void @__asan_storeN_noabort(i32 %172, i32 8)
  store i64 %171, ptr %tx_vp_reset_discarded_frms121, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %if.end.i228.cleanup_crit_edge, %if.end62.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %__vxge_hw_vpath_stats_access.exit.i211, %for.bodythread-pre-split.i200.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %__vxge_hw_vpath_stats_access.exit.i, %for.bodythread-pre-split.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end73 ], [ 204, %entry.cleanup_crit_edge ], [ 204, %if.end.cleanup_crit_edge ], [ %call.i.i, %__vxge_hw_vpath_stats_access.exit.i ], [ 204, %if.end52.cleanup_crit_edge ], [ %call.i.i208, %__vxge_hw_vpath_stats_access.exit.i211 ], [ %call.i, %if.end.i.cleanup_crit_edge ], [ 204, %if.end57.cleanup_crit_edge ], [ %call.i226, %if.end.i228.cleanup_crit_edge ], [ 204, %if.end62.cleanup_crit_edge ], [ 204, %for.bodythread-pre-split.i200.cleanup_crit_edge ], [ 204, %for.bodythread-pre-split.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @vxge_hw_driver_stats_get(ptr nocapture noundef readonly %hldev, ptr nocapture noundef writeonly %sw_stats) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sw_dev_info_stats = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 27, i32 3
  %0 = call ptr @memcpy(ptr %sw_stats, ptr %sw_dev_info_stats, i32 4096)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_mrpcim_stats_access(ptr nocapture noundef readonly %hldev, i32 noundef %operation, i32 noundef %location, i32 noundef %offset, ptr nocapture noundef writeonly %stat) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %host_type = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 7
  %0 = ptrtoint ptr %host_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %host_type, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %1, label %entry.exit_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %entry.if.end_crit_edge
    i32 2, label %entry.if.end_crit_edge26
  ]

entry.if.end_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

sw.bb.i.i:                                        ; preds = %entry
  %func_id = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 8
  %3 = ptrtoint ptr %func_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %func_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i.not.i = icmp eq i32 %4, 0
  br i1 %cmp.i.not.i, label %sw.bb.i.i.if.end_crit_edge, label %sw.bb.i.i.exit_crit_edge

sw.bb.i.i.exit_crit_edge:                         ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

sw.bb.i.i.if.end_crit_edge:                       ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end:                                           ; preds = %sw.bb.i.i.if.end_crit_edge, %entry.if.end_crit_edge, %entry.if.end_crit_edge26
  %conv = zext i32 %operation to i64
  %shl = shl i64 %conv, 56
  %conv1 = zext i32 %location to i64
  %shl2 = shl nuw i64 %conv1, 32
  %conv4 = zext i32 %offset to i64
  %shl5 = shl nuw nsw i64 %conv4, 24
  %or = or i64 %shl, %shl2
  %or3 = or i64 %or, %shl5
  %or6 = or i64 %or3, 281474976710656
  %mrpcim_reg = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 13
  %5 = ptrtoint ptr %mrpcim_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mrpcim_reg, align 128
  %xmac_stats_sys_cmd = getelementptr inbounds %struct.vxge_hw_mrpcim_reg, ptr %6, i32 0, i32 187
  %config = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 4
  %7 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %config, align 16
  %call7 = tail call fastcc i32 @__vxge_hw_pio_mem_write64(i64 noundef %or6, ptr noundef %xmac_stats_sys_cmd, i32 noundef %8)
  %9 = or i32 %call7, %operation
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %if.then12, label %if.end.exit.sink.split_crit_edge

if.end.exit.sink.split_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit.sink.split

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %mrpcim_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mrpcim_reg, align 128
  %xmac_stats_sys_data = getelementptr inbounds %struct.vxge_hw_mrpcim_reg, ptr %12, i32 0, i32 188
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %xmac_stats_sys_data) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i = getelementptr i32, ptr %xmac_stats_sys_data, i32 1
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %15 = zext i32 %14 to i64
  %16 = zext i32 %13 to i64
  %17 = shl nuw i64 %16, 32
  %18 = or i64 %17, %15
  %19 = tail call i64 @llvm.bswap.i64(i64 %18) #16
  br label %exit.sink.split

exit.sink.split:                                  ; preds = %if.then12, %if.end.exit.sink.split_crit_edge
  %.sink = phi i64 [ %19, %if.then12 ], [ 0, %if.end.exit.sink.split_crit_edge ]
  %status.0.ph = phi i32 [ 0, %if.then12 ], [ %call7, %if.end.exit.sink.split_crit_edge ]
  %20 = ptrtoint ptr %stat to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %.sink, ptr %stat, align 8
  br label %exit

exit:                                             ; preds = %exit.sink.split, %sw.bb.i.i.exit_crit_edge, %entry.exit_crit_edge
  %status.0 = phi i32 [ 217, %sw.bb.i.i.exit_crit_edge ], [ 217, %entry.exit_crit_edge ], [ %status.0.ph, %exit.sink.split ]
  ret i32 %status.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__vxge_hw_pio_mem_write64(i64 noundef %val64, ptr noundef %addr, i32 noundef %max_millis) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %conv = trunc i64 %val64 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !89
  tail call void @arm_heavy_mb() #16
  %0 = tail call i32 @llvm.bswap.i32(i32 %conv) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !90
  tail call void @arm_heavy_mb() #16
  %shr1 = lshr i64 %val64, 32
  %conv3 = trunc i64 %shr1 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !91
  tail call void @arm_heavy_mb() #16
  %1 = tail call i32 @llvm.bswap.i32(i32 %conv3) #16
  %add.ptr.i = getelementptr i8, ptr %addr, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %1) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !92
  tail call void @arm_heavy_mb() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 2147480) #16
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %entry
  %i.0.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.do.body.i_crit_edge ]
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %5 = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %do.body.i.__vxge_hw_device_register_poll.exit_crit_edge, label %if.end.i

do.body.i.__vxge_hw_device_register_poll.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_device_register_poll.exit

if.end.i:                                         ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 21474800) #16
  %inc.i = add nuw nsw i32 %i.0.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %if.end.i.do.body1.i_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

if.end.i.do.body1.i_crit_edge:                    ; preds = %if.end.i
  br label %do.body1.i

do.body1.i:                                       ; preds = %if.end6.i.do.body1.i_crit_edge, %if.end.i.do.body1.i_crit_edge
  %i.1.i = phi i32 [ %inc8.i, %if.end6.i.do.body1.i_crit_edge ], [ 0, %if.end.i.do.body1.i_crit_edge ]
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %9 = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not.i = icmp eq i32 %9, 0
  br i1 %tobool4.not.i, label %do.body1.i.__vxge_hw_device_register_poll.exit_crit_edge, label %if.end6.i

do.body1.i.__vxge_hw_device_register_poll.exit_crit_edge: ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_device_register_poll.exit

if.end6.i:                                        ; preds = %do.body1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #16
  %inc8.i = add i32 %i.1.i, 1
  %cmp9.not.i = icmp ugt i32 %inc8.i, %max_millis
  br i1 %cmp9.not.i, label %if.end6.i.__vxge_hw_device_register_poll.exit_crit_edge, label %if.end6.i.do.body1.i_crit_edge

if.end6.i.do.body1.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body1.i

if.end6.i.__vxge_hw_device_register_poll.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_device_register_poll.exit

__vxge_hw_device_register_poll.exit:              ; preds = %if.end6.i.__vxge_hw_device_register_poll.exit_crit_edge, %do.body1.i.__vxge_hw_device_register_poll.exit_crit_edge, %do.body.i.__vxge_hw_device_register_poll.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.body1.i.__vxge_hw_device_register_poll.exit_crit_edge ], [ 1, %if.end6.i.__vxge_hw_device_register_poll.exit_crit_edge ], [ 0, %do.body.i.__vxge_hw_device_register_poll.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_device_xmac_stats_get(ptr nocapture noundef readonly %hldev, ptr nocapture noundef writeonly %xmac_stats) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @vxge_hw_device_xmac_aggr_stats_get(ptr noundef %hldev, i32 noundef 0, ptr noundef %xmac_stats)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.exit_crit_edge

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end:                                           ; preds = %entry
  %arrayidx2 = getelementptr [2 x %struct.vxge_hw_xmac_aggr_stats], ptr %xmac_stats, i32 0, i32 1
  %call3 = tail call fastcc i32 @vxge_hw_device_xmac_aggr_stats_get(ptr noundef %hldev, i32 noundef 1, ptr noundef %arrayidx2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not, label %for.cond.preheader, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

for.cond.preheader:                               ; preds = %if.end
  %host_type.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 7
  %func_id.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 8
  %mrpcim_reg.i.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 13
  %config.i.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 4
  br label %for.body

for.cond13.preheader:                             ; preds = %for.inc
  %vpaths_deployed = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 22
  br label %for.body15

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0112 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx8 = getelementptr %struct.vxge_hw_xmac_stats, ptr %xmac_stats, i32 0, i32 1, i32 %i.0112
  %0 = ptrtoint ptr %host_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %host_type.i, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %1, label %for.body.exit_crit_edge [
    i32 0, label %sw.bb.i.i.i
    i32 1, label %for.body.__vxge_hw_device_is_privilaged.exit.i_crit_edge
    i32 2, label %for.body.__vxge_hw_device_is_privilaged.exit.i_crit_edge198
  ]

for.body.__vxge_hw_device_is_privilaged.exit.i_crit_edge198: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_device_is_privilaged.exit.i

for.body.__vxge_hw_device_is_privilaged.exit.i_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_device_is_privilaged.exit.i

for.body.exit_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

sw.bb.i.i.i:                                      ; preds = %for.body
  %3 = ptrtoint ptr %func_id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %func_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i.not.i.i = icmp eq i32 %4, 0
  br i1 %cmp.i.not.i.i, label %sw.bb.i.i.i.__vxge_hw_device_is_privilaged.exit.i_crit_edge, label %sw.bb.i.i.i.exit_crit_edge

sw.bb.i.i.i.exit_crit_edge:                       ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

sw.bb.i.i.i.__vxge_hw_device_is_privilaged.exit.i_crit_edge: ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_device_is_privilaged.exit.i

__vxge_hw_device_is_privilaged.exit.i:            ; preds = %sw.bb.i.i.i.__vxge_hw_device_is_privilaged.exit.i_crit_edge, %for.body.__vxge_hw_device_is_privilaged.exit.i_crit_edge, %for.body.__vxge_hw_device_is_privilaged.exit.i_crit_edge198
  %mul.i = mul nuw nsw i32 %i.0112, 608
  br label %for.body.i

for.body.i:                                       ; preds = %if.end5.i.for.body.i_crit_edge, %__vxge_hw_device_is_privilaged.exit.i
  %offset.025.i = phi i32 [ 0, %__vxge_hw_device_is_privilaged.exit.i ], [ %add6.i, %if.end5.i.for.body.i_crit_edge ]
  %i.024.i = phi i32 [ 0, %__vxge_hw_device_is_privilaged.exit.i ], [ %inc.i, %if.end5.i.for.body.i_crit_edge ]
  %val64.023.i = phi ptr [ %arrayidx8, %__vxge_hw_device_is_privilaged.exit.i ], [ %incdec.ptr.i, %if.end5.i.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %offset.025.i, %mul.i
  %shr.i = lshr exact i32 %add.i, 3
  %5 = ptrtoint ptr %host_type.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %host_type.i, align 8
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %6, label %for.body.i.exit_crit_edge [
    i32 0, label %sw.bb.i.i.i.i
    i32 1, label %for.body.i.if.end.i.i_crit_edge
    i32 2, label %for.body.i.if.end.i.i_crit_edge199
  ]

for.body.i.if.end.i.i_crit_edge199:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

for.body.i.if.end.i.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

for.body.i.exit_crit_edge:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

sw.bb.i.i.i.i:                                    ; preds = %for.body.i
  %8 = ptrtoint ptr %func_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %func_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.not.i.i.i = icmp eq i32 %9, 0
  br i1 %cmp.i.not.i.i.i, label %sw.bb.i.i.i.i.if.end.i.i_crit_edge, label %sw.bb.i.i.i.i.exit_crit_edge

sw.bb.i.i.i.i.exit_crit_edge:                     ; preds = %sw.bb.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

sw.bb.i.i.i.i.if.end.i.i_crit_edge:               ; preds = %sw.bb.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %sw.bb.i.i.i.i.if.end.i.i_crit_edge, %for.body.i.if.end.i.i_crit_edge, %for.body.i.if.end.i.i_crit_edge199
  %conv4.i.i = zext i32 %shr.i to i64
  %shl5.i.i = shl nuw nsw i64 %conv4.i.i, 24
  %or6.i.i = or i64 %shl5.i.i, 281547991154688
  %10 = ptrtoint ptr %mrpcim_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mrpcim_reg.i.i, align 128
  %xmac_stats_sys_cmd.i.i = getelementptr inbounds %struct.vxge_hw_mrpcim_reg, ptr %11, i32 0, i32 187
  %12 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %config.i.i, align 16
  %call7.i.i = tail call fastcc i32 @__vxge_hw_pio_mem_write64(i64 noundef %or6.i.i, ptr noundef %xmac_stats_sys_cmd.i.i, i32 noundef %13) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %14 = icmp eq i32 %call7.i.i, 0
  br i1 %14, label %if.end5.i, label %if.end.i.i.exit.sink.split_crit_edge

if.end.i.i.exit.sink.split_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit.sink.split

if.end5.i:                                        ; preds = %if.end.i.i
  %15 = ptrtoint ptr %mrpcim_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mrpcim_reg.i.i, align 128
  %xmac_stats_sys_data.i.i = getelementptr inbounds %struct.vxge_hw_mrpcim_reg, ptr %16, i32 0, i32 188
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %xmac_stats_sys_data.i.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i.i.i = getelementptr i32, ptr %xmac_stats_sys_data.i.i, i32 1
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %19 = zext i32 %18 to i64
  %20 = zext i32 %17 to i64
  %21 = shl nuw i64 %20, 32
  %22 = or i64 %21, %19
  %23 = tail call i64 @llvm.bswap.i64(i64 %22) #16
  %24 = ptrtoint ptr %val64.023.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %val64.023.i, align 8
  %add6.i = add nuw nsw i32 %offset.025.i, 8
  %incdec.ptr.i = getelementptr i64, ptr %val64.023.i, i32 1
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 76
  br i1 %exitcond.not.i, label %for.inc, label %if.end5.i.for.body.i_crit_edge

if.end5.i.for.body.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc:                                          ; preds = %if.end5.i
  %inc = add nuw nsw i32 %i.0112, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.cond13.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body15:                                       ; preds = %for.inc31.for.body15_crit_edge, %for.cond13.preheader
  %i.1118 = phi i32 [ 0, %for.cond13.preheader ], [ %inc32, %for.inc31.for.body15_crit_edge ]
  %25 = ptrtoint ptr %vpaths_deployed to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %vpaths_deployed, align 8
  %sh_prom = zext i32 %i.1118 to i64
  %shr = lshr i64 -9223372036854775808, %sh_prom
  %and = and i64 %26, %shr
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %for.body15.for.inc31_crit_edge, label %if.end17

for.body15.for.inc31_crit_edge:                   ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc31

if.end17:                                         ; preds = %for.body15
  %vp_open.i = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %i.1118, i32 1
  %27 = ptrtoint ptr %vp_open.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vp_open.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i = icmp eq i32 %28, 0
  br i1 %cmp.i, label %if.end17.exit_crit_edge, label %for.cond.preheader.i

if.end17.exit_crit_edge:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

for.cond.preheader.i:                             ; preds = %if.end17
  %arrayidx19 = getelementptr %struct.vxge_hw_xmac_stats, ptr %xmac_stats, i32 0, i32 2, i32 %i.1118
  %vp_reg1.i.i = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %i.1118, i32 4
  %hldev.i.i = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %i.1118, i32 2
  br label %if.end.i.i61

for.bodythread-pre-split.i:                       ; preds = %if.end4.i
  %incdec.ptr.i58 = getelementptr i64, ptr %val64.018.i114, i32 1
  %29 = ptrtoint ptr %vp_open.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pr.i = load i32, ptr %vp_open.i, align 4
  %cmp.i.i = icmp eq i32 %.pr.i, 0
  br i1 %cmp.i.i, label %for.bodythread-pre-split.i.exit_crit_edge, label %for.bodythread-pre-split.i.if.end.i.i61_crit_edge

for.bodythread-pre-split.i.if.end.i.i61_crit_edge: ; preds = %for.bodythread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i61

for.bodythread-pre-split.i.exit_crit_edge:        ; preds = %for.bodythread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end.i.i61:                                     ; preds = %for.bodythread-pre-split.i.if.end.i.i61_crit_edge, %for.cond.preheader.i
  %val64.018.i114 = phi ptr [ %arrayidx19, %for.cond.preheader.i ], [ %incdec.ptr.i58, %for.bodythread-pre-split.i.if.end.i.i61_crit_edge ]
  %offset.020.i113 = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i63, %for.bodythread-pre-split.i.if.end.i.i61_crit_edge ]
  %30 = ptrtoint ptr %vp_reg1.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vp_reg1.i.i, align 16
  %conv2.i.i = zext i32 %offset.020.i113 to i64
  %shl3.i.i = shl nuw nsw i64 %conv2.i.i, 24
  %or4.i.i = or i64 %shl3.i.i, 281474976710656
  %xmac_stats_access_cmd.i.i = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %31, i32 0, i32 48
  %32 = ptrtoint ptr %hldev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hldev.i.i, align 8
  %config.i.i60 = getelementptr inbounds %struct.__vxge_hw_device, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %config.i.i60 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %config.i.i60, align 16
  %call.i.i = tail call fastcc i32 @__vxge_hw_pio_mem_write64(i64 noundef %or4.i.i, ptr noundef %xmac_stats_access_cmd.i.i, i32 noundef %35) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp5.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp5.i.i, label %if.end4.i, label %if.end.i.i61.exit.sink.split_crit_edge

if.end.i.i61.exit.sink.split_crit_edge:           ; preds = %if.end.i.i61
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit.sink.split

if.end4.i:                                        ; preds = %if.end.i.i61
  %xmac_stats_access_data.i.i = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %31, i32 0, i32 49
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %xmac_stats_access_data.i.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i.i.i62 = getelementptr i32, ptr %xmac_stats_access_data.i.i, i32 1
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i62) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %38 = zext i32 %37 to i64
  %39 = zext i32 %36 to i64
  %40 = shl nuw i64 %39, 32
  %41 = or i64 %40, %38
  %42 = tail call i64 @llvm.bswap.i64(i64 %41) #16
  %43 = ptrtoint ptr %val64.018.i114 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %val64.018.i114, align 8
  %inc.i63 = add nuw nsw i32 %offset.020.i113, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %inc.i63)
  %exitcond.not.i64 = icmp eq i32 %inc.i63, 18
  br i1 %exitcond.not.i64, label %if.end23, label %for.bodythread-pre-split.i

if.end23:                                         ; preds = %if.end4.i
  %44 = ptrtoint ptr %vp_open.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vp_open.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.i67 = icmp eq i32 %45, 0
  br i1 %cmp.i67, label %if.end23.exit_crit_edge, label %for.cond.preheader.i70

if.end23.exit_crit_edge:                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

for.cond.preheader.i70:                           ; preds = %if.end23
  %arrayidx26 = getelementptr %struct.vxge_hw_xmac_stats, ptr %xmac_stats, i32 0, i32 3, i32 %i.1118
  br label %if.end.i.i85

for.bodythread-pre-split.i74:                     ; preds = %if.end4.i91
  %incdec.ptr.i71 = getelementptr i64, ptr %val64.017.i117, i32 1
  %add.i72 = add nuw nsw i32 %offset.019.i115, 8
  %46 = ptrtoint ptr %vp_open.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr.i73 = load i32, ptr %vp_open.i, align 4
  %cmp.i.i75 = icmp eq i32 %.pr.i73, 0
  br i1 %cmp.i.i75, label %for.bodythread-pre-split.i74.exit_crit_edge, label %for.bodythread-pre-split.i74.if.end.i.i85_crit_edge

for.bodythread-pre-split.i74.if.end.i.i85_crit_edge: ; preds = %for.bodythread-pre-split.i74
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i85

for.bodythread-pre-split.i74.exit_crit_edge:      ; preds = %for.bodythread-pre-split.i74
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end.i.i85:                                     ; preds = %for.bodythread-pre-split.i74.if.end.i.i85_crit_edge, %for.cond.preheader.i70
  %val64.017.i117 = phi ptr [ %arrayidx26, %for.cond.preheader.i70 ], [ %incdec.ptr.i71, %for.bodythread-pre-split.i74.if.end.i.i85_crit_edge ]
  %i.018.i116 = phi i32 [ 0, %for.cond.preheader.i70 ], [ %inc.i89, %for.bodythread-pre-split.i74.if.end.i.i85_crit_edge ]
  %offset.019.i115 = phi i32 [ 144, %for.cond.preheader.i70 ], [ %add.i72, %for.bodythread-pre-split.i74.if.end.i.i85_crit_edge ]
  %shr.i77 = lshr exact i32 %offset.019.i115, 3
  %47 = ptrtoint ptr %vp_reg1.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vp_reg1.i.i, align 16
  %conv2.i.i78 = zext i32 %shr.i77 to i64
  %shl3.i.i79 = shl nuw nsw i64 %conv2.i.i78, 24
  %or4.i.i80 = or i64 %shl3.i.i79, 281474976710656
  %xmac_stats_access_cmd.i.i81 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %48, i32 0, i32 48
  %49 = ptrtoint ptr %hldev.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hldev.i.i, align 8
  %config.i.i82 = getelementptr inbounds %struct.__vxge_hw_device, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %config.i.i82 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %config.i.i82, align 16
  %call.i.i83 = tail call fastcc i32 @__vxge_hw_pio_mem_write64(i64 noundef %or4.i.i80, ptr noundef %xmac_stats_access_cmd.i.i81, i32 noundef %52) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i83)
  %cmp5.i.i84 = icmp eq i32 %call.i.i83, 0
  br i1 %cmp5.i.i84, label %if.end4.i91, label %if.end.i.i85.exit.sink.split_crit_edge

if.end.i.i85.exit.sink.split_crit_edge:           ; preds = %if.end.i.i85
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit.sink.split

if.end4.i91:                                      ; preds = %if.end.i.i85
  %xmac_stats_access_data.i.i87 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %48, i32 0, i32 49
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %xmac_stats_access_data.i.i87) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i.i.i88 = getelementptr i32, ptr %xmac_stats_access_data.i.i87, i32 1
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i88) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %55 = zext i32 %54 to i64
  %56 = zext i32 %53 to i64
  %57 = shl nuw i64 %56, 32
  %58 = or i64 %57, %55
  %59 = tail call i64 @llvm.bswap.i64(i64 %58) #16
  %60 = ptrtoint ptr %val64.017.i117 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %val64.017.i117, align 8
  %inc.i89 = add nuw nsw i32 %i.018.i116, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %inc.i89)
  %exitcond.not.i90 = icmp eq i32 %inc.i89, 39
  br i1 %exitcond.not.i90, label %if.end4.i91.for.inc31_crit_edge, label %for.bodythread-pre-split.i74

if.end4.i91.for.inc31_crit_edge:                  ; preds = %if.end4.i91
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc31

for.inc31:                                        ; preds = %if.end4.i91.for.inc31_crit_edge, %for.body15.for.inc31_crit_edge
  %inc32 = add nuw nsw i32 %i.1118, 1
  %exitcond135.not = icmp eq i32 %inc32, 17
  br i1 %exitcond135.not, label %for.inc31.exit_crit_edge, label %for.inc31.for.body15_crit_edge

for.inc31.for.body15_crit_edge:                   ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body15

for.inc31.exit_crit_edge:                         ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

exit.sink.split:                                  ; preds = %if.end.i.i85.exit.sink.split_crit_edge, %if.end.i.i61.exit.sink.split_crit_edge, %if.end.i.i.exit.sink.split_crit_edge
  %val64.017.i117.lcssa.sink = phi ptr [ %val64.017.i117, %if.end.i.i85.exit.sink.split_crit_edge ], [ %val64.018.i114, %if.end.i.i61.exit.sink.split_crit_edge ], [ %val64.023.i, %if.end.i.i.exit.sink.split_crit_edge ]
  %status.3.ph = phi i32 [ %call.i.i83, %if.end.i.i85.exit.sink.split_crit_edge ], [ %call.i.i, %if.end.i.i61.exit.sink.split_crit_edge ], [ %call7.i.i, %if.end.i.i.exit.sink.split_crit_edge ]
  %61 = ptrtoint ptr %val64.017.i117.lcssa.sink to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 0, ptr %val64.017.i117.lcssa.sink, align 8
  br label %exit

exit:                                             ; preds = %exit.sink.split, %for.inc31.exit_crit_edge, %for.bodythread-pre-split.i74.exit_crit_edge, %if.end23.exit_crit_edge, %for.bodythread-pre-split.i.exit_crit_edge, %if.end17.exit_crit_edge, %sw.bb.i.i.i.i.exit_crit_edge, %for.body.i.exit_crit_edge, %sw.bb.i.i.i.exit_crit_edge, %for.body.exit_crit_edge, %if.end.exit_crit_edge, %entry.exit_crit_edge
  %status.3 = phi i32 [ %call, %entry.exit_crit_edge ], [ %call3, %if.end.exit_crit_edge ], [ %status.3.ph, %exit.sink.split ], [ 204, %for.bodythread-pre-split.i74.exit_crit_edge ], [ 204, %for.bodythread-pre-split.i.exit_crit_edge ], [ 204, %if.end23.exit_crit_edge ], [ 204, %if.end17.exit_crit_edge ], [ 0, %for.inc31.exit_crit_edge ], [ 217, %for.body.i.exit_crit_edge ], [ 217, %sw.bb.i.i.i.i.exit_crit_edge ], [ 217, %sw.bb.i.i.i.exit_crit_edge ], [ 217, %for.body.exit_crit_edge ]
  ret i32 %status.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vxge_hw_device_xmac_aggr_stats_get(ptr nocapture noundef readonly %hldev, i32 noundef %port, ptr nocapture noundef writeonly %aggr_stats) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %host_type = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 7
  %0 = ptrtoint ptr %host_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %host_type, align 8
  %func_id = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %1, label %entry.exit_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %entry.__vxge_hw_device_is_privilaged.exit_crit_edge
    i32 2, label %entry.__vxge_hw_device_is_privilaged.exit_crit_edge31
  ]

entry.__vxge_hw_device_is_privilaged.exit_crit_edge31: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_device_is_privilaged.exit

entry.__vxge_hw_device_is_privilaged.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_device_is_privilaged.exit

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

sw.bb.i.i:                                        ; preds = %entry
  %3 = ptrtoint ptr %func_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %func_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i.not.i = icmp eq i32 %4, 0
  br i1 %cmp.i.not.i, label %sw.bb.i.i.__vxge_hw_device_is_privilaged.exit_crit_edge, label %sw.bb.i.i.exit_crit_edge

sw.bb.i.i.exit_crit_edge:                         ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

sw.bb.i.i.__vxge_hw_device_is_privilaged.exit_crit_edge: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_device_is_privilaged.exit

__vxge_hw_device_is_privilaged.exit:              ; preds = %sw.bb.i.i.__vxge_hw_device_is_privilaged.exit_crit_edge, %entry.__vxge_hw_device_is_privilaged.exit_crit_edge, %entry.__vxge_hw_device_is_privilaged.exit_crit_edge31
  %mul = mul i32 %port, 104
  %mrpcim_reg.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 13
  %config.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end5.for.body_crit_edge, %__vxge_hw_device_is_privilaged.exit
  %offset.025 = phi i32 [ 1824, %__vxge_hw_device_is_privilaged.exit ], [ %add6, %if.end5.for.body_crit_edge ]
  %i.024 = phi i32 [ 0, %__vxge_hw_device_is_privilaged.exit ], [ %inc, %if.end5.for.body_crit_edge ]
  %val64.023 = phi ptr [ %aggr_stats, %__vxge_hw_device_is_privilaged.exit ], [ %incdec.ptr, %if.end5.for.body_crit_edge ]
  %add = add i32 %offset.025, %mul
  %shr = lshr exact i32 %add, 3
  %5 = ptrtoint ptr %host_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %host_type, align 8
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %6, label %for.body.exit_crit_edge [
    i32 0, label %sw.bb.i.i.i
    i32 1, label %for.body.if.end.i_crit_edge
    i32 2, label %for.body.if.end.i_crit_edge32
  ]

for.body.if.end.i_crit_edge32:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

for.body.exit_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

sw.bb.i.i.i:                                      ; preds = %for.body
  %8 = ptrtoint ptr %func_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %func_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.not.i.i = icmp eq i32 %9, 0
  br i1 %cmp.i.not.i.i, label %sw.bb.i.i.i.if.end.i_crit_edge, label %sw.bb.i.i.i.exit_crit_edge

sw.bb.i.i.i.exit_crit_edge:                       ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

sw.bb.i.i.i.if.end.i_crit_edge:                   ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.end.i:                                         ; preds = %sw.bb.i.i.i.if.end.i_crit_edge, %for.body.if.end.i_crit_edge, %for.body.if.end.i_crit_edge32
  %conv4.i = zext i32 %shr to i64
  %shl5.i = shl nuw nsw i64 %conv4.i, 24
  %or6.i = or i64 %shl5.i, 281547991154688
  %10 = ptrtoint ptr %mrpcim_reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mrpcim_reg.i, align 128
  %xmac_stats_sys_cmd.i = getelementptr inbounds %struct.vxge_hw_mrpcim_reg, ptr %11, i32 0, i32 187
  %12 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %config.i, align 16
  %call7.i = tail call fastcc i32 @__vxge_hw_pio_mem_write64(i64 noundef %or6.i, ptr noundef %xmac_stats_sys_cmd.i, i32 noundef %13) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %14 = icmp eq i32 %call7.i, 0
  br i1 %14, label %if.end5, label %vxge_hw_mrpcim_stats_access.exit

vxge_hw_mrpcim_stats_access.exit:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %15 = ptrtoint ptr %val64.023 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %val64.023, align 8
  br label %exit

if.end5:                                          ; preds = %if.end.i
  %16 = ptrtoint ptr %mrpcim_reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mrpcim_reg.i, align 128
  %xmac_stats_sys_data.i = getelementptr inbounds %struct.vxge_hw_mrpcim_reg, ptr %17, i32 0, i32 188
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %xmac_stats_sys_data.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i.i = getelementptr i32, ptr %xmac_stats_sys_data.i, i32 1
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %20 = zext i32 %19 to i64
  %21 = zext i32 %18 to i64
  %22 = shl nuw i64 %21, 32
  %23 = or i64 %22, %20
  %24 = tail call i64 @llvm.bswap.i64(i64 %23) #16
  %25 = ptrtoint ptr %val64.023 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %val64.023, align 8
  %add6 = add nuw nsw i32 %offset.025, 8
  %incdec.ptr = getelementptr i64, ptr %val64.023, i32 1
  %inc = add nuw nsw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc, 13
  br i1 %exitcond.not, label %if.end5.exit_crit_edge, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

if.end5.exit_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

exit:                                             ; preds = %if.end5.exit_crit_edge, %vxge_hw_mrpcim_stats_access.exit, %sw.bb.i.i.i.exit_crit_edge, %for.body.exit_crit_edge, %sw.bb.i.i.exit_crit_edge, %entry.exit_crit_edge
  %status.1 = phi i32 [ %call7.i, %vxge_hw_mrpcim_stats_access.exit ], [ 217, %sw.bb.i.i.exit_crit_edge ], [ 217, %entry.exit_crit_edge ], [ 217, %for.body.exit_crit_edge ], [ 217, %sw.bb.i.i.i.exit_crit_edge ], [ 0, %if.end5.exit_crit_edge ]
  ret i32 %status.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @vxge_hw_device_error_level_get(ptr noundef readonly %hldev) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hldev, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.else

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %level_err = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 30
  %0 = ptrtoint ptr %level_err to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %level_err, align 16
  br label %return

return:                                           ; preds = %if.else, %entry.return_crit_edge
  %retval.0 = phi i32 [ %1, %if.else ], [ 2, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @vxge_hw_device_trace_level_get(ptr noundef readonly %hldev) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hldev, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.else

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %level_trace = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 31
  %0 = ptrtoint ptr %level_trace to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %level_trace, align 4
  br label %return

return:                                           ; preds = %if.else, %entry.return_crit_edge
  %retval.0 = phi i32 [ %1, %if.else ], [ 1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_device_getpause_data(ptr noundef readonly %hldev, i32 noundef %port, ptr nocapture noundef writeonly %tx, ptr nocapture noundef writeonly %rx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hldev, null
  br i1 %cmp, label %entry.exit_crit_edge, label %lor.lhs.false

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %hldev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hldev, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 305419896, i32 %1)
  %cmp1.not = icmp eq i32 %1, 305419896
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.exit_crit_edge

lor.lhs.false.exit_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %port)
  %cmp2 = icmp ugt i32 %port, 2
  br i1 %cmp2, label %if.end.exit_crit_edge, label %if.end4

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end4:                                          ; preds = %if.end
  %access_rights = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 9
  %2 = ptrtoint ptr %access_rights to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %access_rights, align 16
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4.exit_crit_edge, label %if.end6

if.end4.exit_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end6:                                          ; preds = %if.end4
  %mrpcim_reg = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 13
  %4 = ptrtoint ptr %mrpcim_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mrpcim_reg, align 128
  %arrayidx = getelementptr %struct.vxge_hw_mrpcim_reg, ptr %5, i32 0, i32 134, i32 %port
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i = getelementptr i32, ptr %arrayidx, i32 1
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %8 = zext i32 %7 to i64
  %9 = tail call i64 @llvm.bswap.i64(i64 %8) #16
  %and7 = and i64 %9, 1152921504606846976
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7)
  %tobool8.not = icmp eq i64 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end10_crit_edge, label %if.then9

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %tx, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6.if.end10_crit_edge
  %and11 = and i64 %9, 72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and11)
  %tobool12.not = icmp eq i64 %and11, 0
  br i1 %tobool12.not, label %if.end10.exit_crit_edge, label %if.then13

if.end10.exit_crit_edge:                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %rx, align 4
  br label %exit

exit:                                             ; preds = %if.then13, %if.end10.exit_crit_edge, %if.end4.exit_crit_edge, %if.end.exit_crit_edge, %lor.lhs.false.exit_crit_edge, %entry.exit_crit_edge
  %status.0 = phi i32 [ 0, %if.then13 ], [ 0, %if.end10.exit_crit_edge ], [ 211, %lor.lhs.false.exit_crit_edge ], [ 211, %entry.exit_crit_edge ], [ 218, %if.end.exit_crit_edge ], [ 217, %if.end4.exit_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_device_setpause_data(ptr noundef readonly %hldev, i32 noundef %port, i32 noundef %tx, i32 noundef %rx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hldev, null
  br i1 %cmp, label %entry.exit_crit_edge, label %lor.lhs.false

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %hldev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hldev, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 305419896, i32 %1)
  %cmp1.not = icmp eq i32 %1, 305419896
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.exit_crit_edge

lor.lhs.false.exit_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %port)
  %cmp2 = icmp ugt i32 %port, 2
  br i1 %cmp2, label %if.end.exit_crit_edge, label %if.end4

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end4:                                          ; preds = %if.end
  %host_type = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 7
  %2 = ptrtoint ptr %host_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %host_type, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %3, label %if.end4.exit_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %if.end4.if.end7_crit_edge
    i32 2, label %if.end4.if.end7_crit_edge37
  ]

if.end4.if.end7_crit_edge37:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.end4.exit_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

sw.bb.i.i:                                        ; preds = %if.end4
  %func_id = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 8
  %5 = ptrtoint ptr %func_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %func_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.not.i = icmp eq i32 %6, 0
  br i1 %cmp.i.not.i, label %sw.bb.i.i.if.end7_crit_edge, label %sw.bb.i.i.exit_crit_edge

sw.bb.i.i.exit_crit_edge:                         ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

sw.bb.i.i.if.end7_crit_edge:                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.end7:                                          ; preds = %sw.bb.i.i.if.end7_crit_edge, %if.end4.if.end7_crit_edge, %if.end4.if.end7_crit_edge37
  %mrpcim_reg = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 13
  %7 = ptrtoint ptr %mrpcim_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mrpcim_reg, align 128
  %arrayidx = getelementptr %struct.vxge_hw_mrpcim_reg, ptr %8, i32 0, i32 134, i32 %port
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i = getelementptr i32, ptr %arrayidx, i32 1
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx)
  %tobool.not = icmp eq i32 %tx, 0
  %masksel = select i1 %tobool.not, i64 0, i64 1152921504606846976
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx)
  %tobool11.not = icmp eq i32 %rx, 0
  %11 = and i32 %10, -18
  %.masked.masked = zext i32 %11 to i64
  %12 = tail call i64 @llvm.bswap.i64(i64 %.masked.masked)
  %masksel35 = select i1 %tobool11.not, i64 0, i64 72057594037927936
  %and15 = or i64 %masksel35, %masksel
  %val64.1 = or i64 %and15, %12
  %13 = ptrtoint ptr %mrpcim_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mrpcim_reg, align 128
  %arrayidx19 = getelementptr %struct.vxge_hw_mrpcim_reg, ptr %14, i32 0, i32 134, i32 %port
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx19, i32 %9) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %shr.i = lshr exact i64 %val64.1, 32
  %conv3.i = trunc i64 %shr.i to i32
  %15 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #16
  %add.ptr.i32 = getelementptr i8, ptr %arrayidx19, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %15) #16, !srcloc !81
  br label %exit

exit:                                             ; preds = %if.end7, %sw.bb.i.i.exit_crit_edge, %if.end4.exit_crit_edge, %if.end.exit_crit_edge, %lor.lhs.false.exit_crit_edge, %entry.exit_crit_edge
  %status.0 = phi i32 [ 0, %if.end7 ], [ 211, %lor.lhs.false.exit_crit_edge ], [ 211, %entry.exit_crit_edge ], [ 218, %if.end.exit_crit_edge ], [ 217, %sw.bb.i.i.exit_crit_edge ], [ 217, %if.end4.exit_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @vxge_hw_device_link_width_get(ptr nocapture noundef readonly %hldev) local_unnamed_addr #0 align 64 {
entry:
  %lnk = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %lnk) #16
  %2 = ptrtoint ptr %lnk to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %lnk, align 2, !annotation !88
  %call = call i32 @pcie_capability_read_word(ptr noundef %1, i32 noundef 18, ptr noundef nonnull %lnk) #16
  %3 = ptrtoint ptr %lnk to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %lnk, align 2
  %5 = lshr i16 %4, 4
  %6 = and i16 %5, 63
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %lnk) #16
  ret i16 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_device_config_default_get(ptr noundef %device_config) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_blockpool_initial = getelementptr inbounds %struct.vxge_hw_device_config, ptr %device_config, i32 0, i32 1
  %0 = ptrtoint ptr %dma_blockpool_initial to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %dma_blockpool_initial, align 4
  %dma_blockpool_max = getelementptr inbounds %struct.vxge_hw_device_config, ptr %device_config, i32 0, i32 2
  %1 = ptrtoint ptr %dma_blockpool_max to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4096, ptr %dma_blockpool_max, align 8
  %intr_mode = getelementptr inbounds %struct.vxge_hw_device_config, ptr %device_config, i32 0, i32 3
  %2 = ptrtoint ptr %intr_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %intr_mode, align 4
  %3 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1000, ptr %device_config, align 8
  %bf.clear8 = and i8 %bf.load, 7
  store i8 %bf.clear8, ptr %intr_mode, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0254 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.vxge_hw_device_config, ptr %device_config, i32 0, i32 4, i32 %i.0254
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %i.0254, ptr %arrayidx, align 8
  %min_bandwidth = getelementptr %struct.vxge_hw_device_config, ptr %device_config, i32 0, i32 4, i32 %i.0254, i32 1
  %5 = ptrtoint ptr %min_bandwidth to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %min_bandwidth, align 4
  %ring = getelementptr %struct.vxge_hw_device_config, ptr %device_config, i32 0, i32 4, i32 %i.0254, i32 2
  %6 = ptrtoint ptr %ring to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %ring, align 8
  %ring_blocks = getelementptr %struct.vxge_hw_device_config, ptr %device_config, i32 0, i32 4, i32 %i.0254, i32 2, i32 1
  %7 = ptrtoint ptr %ring_blocks to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %ring_blocks, align 4
  %buffer_mode = getelementptr %struct.vxge_hw_device_config, ptr %device_config, i32 0, i32 4, i32 %i.0254, i32 2, i32 2
  %8 = ptrtoint ptr %buffer_mode to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %buffer_mode, align 8
  %scatter_mode = getelementptr %struct.vxge_hw_device_config, ptr %device_config, i32 0, i32 4, i32 %i.0254, i32 2, i32 3
  %9 = ptrtoint ptr %scatter_mode to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %scatter_mode, align 4
  %rxds_limit = getelementptr %struct.vxge_hw_device_config, ptr %device_config, i32 0, i32 4, i32 %i.0254, i32 2, i32 4
  %10 = ptrtoint ptr %rxds_limit to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 44, ptr %rxds_limit, align 8
  %fifo = getelementptr %struct.vxge_hw_device_config, ptr %device_config, i32 0, i32 4, i32 %i.0254, i32 3
  %11 = ptrtoint ptr %fifo to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %fifo, align 8
  %fifo_blocks = getelementptr %struct.vxge_hw_device_config, ptr %device_config, i32 0, i32 4, i32 %i.0254, i32 3, i32 1
  %12 = ptrtoint ptr %fifo_blocks to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %fifo_blocks, align 4
  %max_frags = getelementptr %struct.vxge_hw_device_config, ptr %device_config, i32 0, i32 4, i32 %i.0254, i32 3, i32 2
  %13 = ptrtoint ptr %max_frags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 256, ptr %max_frags, align 8
  %memblock_size = getelementptr %struct.vxge_hw_device_config, ptr %device_config, i32 0, i32 4, i32 %i.0254, i32 3, i32 3
  %14 = ptrtoint ptr %memblock_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 8096, ptr %memblock_size, align 4
  %alignment_size = getelementptr %struct.vxge_hw_device_config, ptr %device_config, i32 0, i32 4, i32 %i.0254, i32 3, i32 4
  %15 = ptrtoint ptr %alignment_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 128, ptr %alignment_size, align 8
  %intr = getelementptr %struct.vxge_hw_device_config, ptr %device_config, i32 0, i32 4, i32 %i.0254, i32 3, i32 5
  %16 = ptrtoint ptr %intr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %intr, align 4
  %no_snoop_bits = getelementptr %struct.vxge_hw_device_config, ptr %device_config, i32 0, i32 4, i32 %i.0254, i32 3, i32 6
  %17 = ptrtoint ptr %no_snoop_bits to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %no_snoop_bits, align 8
  %tti = getelementptr %struct.vxge_hw_device_config, ptr %device_config, i32 0, i32 4, i32 %i.0254, i32 4
  %18 = ptrtoint ptr %tti to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %tti, align 4
  %btimer_val = getelementptr %struct.vxge_hw_device_config, ptr %device_config, i32 0, i32 4, i32 %i.0254, i32 4, i32 1
  %rti = getelementptr %struct.vxge_hw_device_config, ptr %device_config, i32 0, i32 4, i32 %i.0254, i32 5
  %19 = call ptr @memset(ptr %btimer_val, i32 255, i32 56)
  %20 = ptrtoint ptr %rti to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %rti, align 8
  %btimer_val97 = getelementptr %struct.vxge_hw_device_config, ptr %device_config, i32 0, i32 4, i32 %i.0254, i32 5, i32 1
  %inc = add nuw nsw i32 %i.0254, 1
  %exitcond.not = icmp eq i32 %inc, 17
  %21 = call ptr @memset(ptr %btimer_val97, i32 255, i32 64)
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_mgmt_reg_read(ptr noundef readonly %hldev, i32 noundef %type, i32 noundef %index, i32 noundef %offset, ptr nocapture noundef writeonly %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hldev, null
  br i1 %cmp, label %entry.exit_crit_edge, label %lor.lhs.false

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %hldev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hldev, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 305419896, i32 %1)
  %cmp1.not = icmp eq i32 %1, 305419896
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.exit_crit_edge

lor.lhs.false.exit_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end:                                           ; preds = %lor.lhs.false
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %type, label %if.end.exit_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.bb11
    i32 3, label %sw.bb17
    i32 4, label %sw.bb25
    i32 5, label %sw.bb39
    i32 6, label %sw.bb52
  ]

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %offset)
  %cmp2 = icmp ugt i32 %offset, 64
  br i1 %cmp2, label %sw.bb.exit_crit_edge, label %if.end4

sw.bb.exit_crit_edge:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end4:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  %legacy_reg = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 10
  %3 = ptrtoint ptr %legacy_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %legacy_reg, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 %offset
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i = getelementptr i32, ptr %add.ptr, i32 1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  br label %exit.sink.split

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1208, i32 %offset)
  %cmp6 = icmp ugt i32 %offset, 1208
  br i1 %cmp6, label %sw.bb5.exit_crit_edge, label %if.end8

sw.bb5.exit_crit_edge:                            ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end8:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #18
  %toc_reg = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 11
  %7 = ptrtoint ptr %toc_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %toc_reg, align 8
  %add.ptr9 = getelementptr i8, ptr %8, i32 %offset
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i110 = getelementptr i32, ptr %add.ptr9, i32 1
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i110) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  br label %exit.sink.split

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4656, i32 %offset)
  %cmp12 = icmp ugt i32 %offset, 4656
  br i1 %cmp12, label %sw.bb11.exit_crit_edge, label %if.end14

sw.bb11.exit_crit_edge:                           ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end14:                                         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #18
  %common_reg = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 12
  %11 = ptrtoint ptr %common_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %common_reg, align 4
  %add.ptr15 = getelementptr i8, ptr %12, i32 %offset
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i111 = getelementptr i32, ptr %add.ptr15, i32 1
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i111) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  br label %exit.sink.split

sw.bb17:                                          ; preds = %if.end
  %access_rights = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 9
  %15 = ptrtoint ptr %access_rights to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %access_rights, align 16
  %and = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb17.exit_crit_edge, label %if.end19

sw.bb17.exit_crit_edge:                           ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end19:                                         ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_const_cmp4(i32 44168, i32 %offset)
  %cmp20 = icmp ugt i32 %offset, 44168
  br i1 %cmp20, label %if.end19.exit_crit_edge, label %if.end22

if.end19.exit_crit_edge:                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end22:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  %mrpcim_reg = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 13
  %17 = ptrtoint ptr %mrpcim_reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mrpcim_reg, align 128
  %add.ptr23 = getelementptr i8, ptr %18, i32 %offset
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i112 = getelementptr i32, ptr %add.ptr23, i32 1
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i112) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  br label %exit.sink.split

sw.bb25:                                          ; preds = %if.end
  %access_rights26 = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 9
  %21 = ptrtoint ptr %access_rights26 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %access_rights26, align 16
  %and27 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %sw.bb25.exit_crit_edge, label %if.end30

sw.bb25.exit_crit_edge:                           ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end30:                                         ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %index)
  %cmp31 = icmp ugt i32 %index, 16
  br i1 %cmp31, label %if.end30.exit_crit_edge, label %if.end33

if.end30.exit_crit_edge:                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end33:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 2320, i32 %offset)
  %cmp34 = icmp ugt i32 %offset, 2320
  br i1 %cmp34, label %if.end33.exit_crit_edge, label %if.end36

if.end33.exit_crit_edge:                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end36:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 14, i32 %index
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %add.ptr37 = getelementptr i8, ptr %24, i32 %offset
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i113 = getelementptr i32, ptr %add.ptr37, i32 1
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i113) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  br label %exit.sink.split

sw.bb39:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %index)
  %cmp40 = icmp ugt i32 %index, 16
  br i1 %cmp40, label %sw.bb39.exit_crit_edge, label %lor.lhs.false41

sw.bb39.exit_crit_edge:                           ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

lor.lhs.false41:                                  ; preds = %sw.bb39
  %vpath_assignments = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 21
  %27 = ptrtoint ptr %vpath_assignments to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %vpath_assignments, align 128
  %sh_prom = zext i32 %index to i64
  %shr = lshr i64 -9223372036854775808, %sh_prom
  %and42 = and i64 %28, %shr
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and42)
  %tobool43.not = icmp eq i64 %and42, 0
  br i1 %tobool43.not, label %lor.lhs.false41.exit_crit_edge, label %if.end45

lor.lhs.false41.exit_crit_edge:                   ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end45:                                         ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_const_cmp4(i32 896, i32 %offset)
  %cmp46 = icmp ugt i32 %offset, 896
  br i1 %cmp46, label %if.end45.exit_crit_edge, label %if.end48

if.end45.exit_crit_edge:                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end48:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx49 = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 15, i32 %index
  %29 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx49, align 4
  %add.ptr50 = getelementptr i8, ptr %30, i32 %offset
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i114 = getelementptr i32, ptr %add.ptr50, i32 1
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i114) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  br label %exit.sink.split

sw.bb52:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %index)
  %cmp53 = icmp ugt i32 %index, 16
  br i1 %cmp53, label %sw.bb52.exit_crit_edge, label %lor.lhs.false54

sw.bb52.exit_crit_edge:                           ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

lor.lhs.false54:                                  ; preds = %sw.bb52
  %vpath_assignments55 = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 21
  %33 = ptrtoint ptr %vpath_assignments55 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %vpath_assignments55, align 128
  %sh_prom56 = zext i32 %index to i64
  %shr57 = lshr i64 -9223372036854775808, %sh_prom56
  %and58 = and i64 %34, %shr57
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and58)
  %tobool59.not = icmp eq i64 %and58, 0
  br i1 %tobool59.not, label %lor.lhs.false54.exit_crit_edge, label %if.end64

lor.lhs.false54.exit_crit_edge:                   ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end64:                                         ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_const_cmp4(i32 9792, i32 %offset)
  %cmp65 = icmp ugt i32 %offset, 9792
  br i1 %cmp65, label %if.end64.exit_crit_edge, label %if.end67

if.end64.exit_crit_edge:                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end67:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx68 = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 16, i32 %index
  %35 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx68, align 4
  %add.ptr69 = getelementptr i8, ptr %36, i32 %offset
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i115 = getelementptr i32, ptr %add.ptr69, i32 1
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i115) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  br label %exit.sink.split

exit.sink.split:                                  ; preds = %if.end67, %if.end48, %if.end36, %if.end22, %if.end14, %if.end8, %if.end4
  %.sink119 = phi i32 [ %6, %if.end4 ], [ %10, %if.end8 ], [ %14, %if.end14 ], [ %20, %if.end22 ], [ %26, %if.end36 ], [ %32, %if.end48 ], [ %38, %if.end67 ]
  %.sink = phi i32 [ %5, %if.end4 ], [ %9, %if.end8 ], [ %13, %if.end14 ], [ %19, %if.end22 ], [ %25, %if.end36 ], [ %31, %if.end48 ], [ %37, %if.end67 ]
  %39 = zext i32 %.sink119 to i64
  %40 = zext i32 %.sink to i64
  %41 = shl nuw i64 %40, 32
  %42 = or i64 %41, %39
  %43 = tail call i64 @llvm.bswap.i64(i64 %42) #16
  %44 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %value, align 8
  br label %exit

exit:                                             ; preds = %exit.sink.split, %if.end64.exit_crit_edge, %lor.lhs.false54.exit_crit_edge, %sw.bb52.exit_crit_edge, %if.end45.exit_crit_edge, %lor.lhs.false41.exit_crit_edge, %sw.bb39.exit_crit_edge, %if.end33.exit_crit_edge, %if.end30.exit_crit_edge, %sw.bb25.exit_crit_edge, %if.end19.exit_crit_edge, %sw.bb17.exit_crit_edge, %sw.bb11.exit_crit_edge, %sw.bb5.exit_crit_edge, %sw.bb.exit_crit_edge, %if.end.exit_crit_edge, %lor.lhs.false.exit_crit_edge, %entry.exit_crit_edge
  %status.0 = phi i32 [ 211, %lor.lhs.false.exit_crit_edge ], [ 211, %entry.exit_crit_edge ], [ 210, %sw.bb.exit_crit_edge ], [ 210, %sw.bb5.exit_crit_edge ], [ 210, %sw.bb11.exit_crit_edge ], [ 217, %sw.bb17.exit_crit_edge ], [ 210, %if.end19.exit_crit_edge ], [ 217, %sw.bb25.exit_crit_edge ], [ 208, %if.end30.exit_crit_edge ], [ 210, %if.end33.exit_crit_edge ], [ 208, %lor.lhs.false41.exit_crit_edge ], [ 208, %sw.bb39.exit_crit_edge ], [ 210, %if.end45.exit_crit_edge ], [ 208, %lor.lhs.false54.exit_crit_edge ], [ 208, %sw.bb52.exit_crit_edge ], [ 210, %if.end64.exit_crit_edge ], [ 209, %if.end.exit_crit_edge ], [ 0, %exit.sink.split ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_vpath_strip_fcs_check(ptr nocapture noundef readonly %hldev, i64 noundef %vpath_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc10.for.body_crit_edge, %entry
  %i.022 = phi i32 [ 0, %entry ], [ %inc11, %for.inc10.for.body_crit_edge ]
  %sh_prom = zext i32 %i.022 to i64
  %shr = lshr i64 -9223372036854775808, %sh_prom
  %and = and i64 %shr, %vpath_mask
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %for.body.for.inc10_crit_edge, label %if.end

for.body.for.inc10_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc10

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 15, i32 %i.022
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %arrayidx5 = getelementptr %struct.vxge_hw_vpmgmt_reg, ptr %1, i32 0, i32 13, i32 0
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx5) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i = getelementptr i32, ptr %arrayidx5, i32 1
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %4 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool7.not = icmp eq i32 %4, 0
  br i1 %tobool7.not, label %for.cond2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond2:                                        ; preds = %if.end
  %arrayidx5.1 = getelementptr %struct.vxge_hw_vpmgmt_reg, ptr %1, i32 0, i32 13, i32 1
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx5.1) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i.1 = getelementptr i32, ptr %arrayidx5.1, i32 1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %7 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not.1 = icmp eq i32 %7, 0
  br i1 %tobool7.not.1, label %for.cond2.for.inc10_crit_edge, label %for.cond2.cleanup_crit_edge

for.cond2.cleanup_crit_edge:                      ; preds = %for.cond2
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond2.for.inc10_crit_edge:                    ; preds = %for.cond2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc10

for.inc10:                                        ; preds = %for.cond2.for.inc10_crit_edge, %for.body.for.inc10_crit_edge
  %inc11 = add nuw nsw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc11, 17
  br i1 %exitcond.not, label %for.inc10.cleanup_crit_edge, label %for.inc10.for.body_crit_edge

for.inc10.for.body_crit_edge:                     ; preds = %for.inc10
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc10.cleanup_crit_edge:                      ; preds = %for.inc10
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %for.inc10.cleanup_crit_edge, %for.cond2.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %for.cond2.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 0, %for.inc10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_mgmt_reg_write(ptr noundef readonly %hldev, i32 noundef %type, i32 noundef %index, i32 noundef %offset, i64 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hldev, null
  br i1 %cmp, label %entry.exit_crit_edge, label %lor.lhs.false

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %hldev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hldev, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 305419896, i32 %1)
  %cmp1.not = icmp eq i32 %1, 305419896
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.exit_crit_edge

lor.lhs.false.exit_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end:                                           ; preds = %lor.lhs.false
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %type, label %if.end.exit_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.bb10
    i32 3, label %sw.bb15
    i32 4, label %sw.bb22
    i32 5, label %sw.bb35
    i32 6, label %sw.bb47
  ]

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %offset)
  %cmp2 = icmp ugt i32 %offset, 64
  br i1 %cmp2, label %sw.bb.exit_crit_edge, label %if.end4

sw.bb.exit_crit_edge:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end4:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  %legacy_reg = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 10
  %3 = ptrtoint ptr %legacy_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %legacy_reg, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 %offset
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  %conv.i = trunc i64 %value to i32
  %5 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %shr.i = lshr i64 %value, 32
  %conv3.i = trunc i64 %shr.i to i32
  %6 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #16
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #16, !srcloc !81
  br label %exit

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1208, i32 %offset)
  %cmp6 = icmp ugt i32 %offset, 1208
  br i1 %cmp6, label %sw.bb5.exit_crit_edge, label %if.end8

sw.bb5.exit_crit_edge:                            ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end8:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #18
  %toc_reg = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 11
  %7 = ptrtoint ptr %toc_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %toc_reg, align 8
  %add.ptr9 = getelementptr i8, ptr %8, i32 %offset
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  %conv.i100 = trunc i64 %value to i32
  %9 = tail call i32 @llvm.bswap.i32(i32 %conv.i100) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %9) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %shr.i101 = lshr i64 %value, 32
  %conv3.i102 = trunc i64 %shr.i101 to i32
  %10 = tail call i32 @llvm.bswap.i32(i32 %conv3.i102) #16
  %add.ptr.i103 = getelementptr i8, ptr %add.ptr9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103, i32 %10) #16, !srcloc !81
  br label %exit

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4656, i32 %offset)
  %cmp11 = icmp ugt i32 %offset, 4656
  br i1 %cmp11, label %sw.bb10.exit_crit_edge, label %if.end13

sw.bb10.exit_crit_edge:                           ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end13:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #18
  %common_reg = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 12
  %11 = ptrtoint ptr %common_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %common_reg, align 4
  %add.ptr14 = getelementptr i8, ptr %12, i32 %offset
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  %conv.i104 = trunc i64 %value to i32
  %13 = tail call i32 @llvm.bswap.i32(i32 %conv.i104) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %13) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %shr.i105 = lshr i64 %value, 32
  %conv3.i106 = trunc i64 %shr.i105 to i32
  %14 = tail call i32 @llvm.bswap.i32(i32 %conv3.i106) #16
  %add.ptr.i107 = getelementptr i8, ptr %add.ptr14, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107, i32 %14) #16, !srcloc !81
  br label %exit

sw.bb15:                                          ; preds = %if.end
  %access_rights = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 9
  %15 = ptrtoint ptr %access_rights to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %access_rights, align 16
  %and = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb15.exit_crit_edge, label %if.end17

sw.bb15.exit_crit_edge:                           ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end17:                                         ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_const_cmp4(i32 44168, i32 %offset)
  %cmp18 = icmp ugt i32 %offset, 44168
  br i1 %cmp18, label %if.end17.exit_crit_edge, label %if.end20

if.end17.exit_crit_edge:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end20:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  %mrpcim_reg = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 13
  %17 = ptrtoint ptr %mrpcim_reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mrpcim_reg, align 128
  %add.ptr21 = getelementptr i8, ptr %18, i32 %offset
  tail call fastcc void @lo_hi_writeq(i64 noundef %value, ptr noundef %add.ptr21)
  br label %exit

sw.bb22:                                          ; preds = %if.end
  %access_rights23 = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 9
  %19 = ptrtoint ptr %access_rights23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %access_rights23, align 16
  %and24 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %sw.bb22.exit_crit_edge, label %if.end27

sw.bb22.exit_crit_edge:                           ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end27:                                         ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %index)
  %cmp28 = icmp ugt i32 %index, 16
  br i1 %cmp28, label %if.end27.exit_crit_edge, label %if.end30

if.end27.exit_crit_edge:                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end30:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 2320, i32 %offset)
  %cmp31 = icmp ugt i32 %offset, 2320
  br i1 %cmp31, label %if.end30.exit_crit_edge, label %if.end33

if.end30.exit_crit_edge:                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end33:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 14, i32 %index
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %add.ptr34 = getelementptr i8, ptr %22, i32 %offset
  tail call fastcc void @lo_hi_writeq(i64 noundef %value, ptr noundef %add.ptr34)
  br label %exit

sw.bb35:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %index)
  %cmp36 = icmp ugt i32 %index, 16
  br i1 %cmp36, label %sw.bb35.exit_crit_edge, label %lor.lhs.false37

sw.bb35.exit_crit_edge:                           ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

lor.lhs.false37:                                  ; preds = %sw.bb35
  %vpath_assignments = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 21
  %23 = ptrtoint ptr %vpath_assignments to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %vpath_assignments, align 128
  %sh_prom = zext i32 %index to i64
  %shr = lshr i64 -9223372036854775808, %sh_prom
  %and38 = and i64 %24, %shr
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and38)
  %tobool39.not = icmp eq i64 %and38, 0
  br i1 %tobool39.not, label %lor.lhs.false37.exit_crit_edge, label %if.end41

lor.lhs.false37.exit_crit_edge:                   ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end41:                                         ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_const_cmp4(i32 896, i32 %offset)
  %cmp42 = icmp ugt i32 %offset, 896
  br i1 %cmp42, label %if.end41.exit_crit_edge, label %if.end44

if.end41.exit_crit_edge:                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end44:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx45 = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 15, i32 %index
  %25 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx45, align 4
  %add.ptr46 = getelementptr i8, ptr %26, i32 %offset
  tail call fastcc void @lo_hi_writeq(i64 noundef %value, ptr noundef %add.ptr46)
  br label %exit

sw.bb47:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %index)
  %cmp48 = icmp ugt i32 %index, 16
  br i1 %cmp48, label %sw.bb47.exit_crit_edge, label %lor.lhs.false49

sw.bb47.exit_crit_edge:                           ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

lor.lhs.false49:                                  ; preds = %sw.bb47
  %vpath_assignments50 = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 21
  %27 = ptrtoint ptr %vpath_assignments50 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %vpath_assignments50, align 128
  %sh_prom51 = zext i32 %index to i64
  %shr52 = lshr i64 -9223372036854775808, %sh_prom51
  %and53 = and i64 %28, %shr52
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and53)
  %tobool54.not = icmp eq i64 %and53, 0
  br i1 %tobool54.not, label %lor.lhs.false49.exit_crit_edge, label %if.end56

lor.lhs.false49.exit_crit_edge:                   ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end56:                                         ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_const_cmp4(i32 9792, i32 %offset)
  %cmp57 = icmp ugt i32 %offset, 9792
  br i1 %cmp57, label %if.end56.exit_crit_edge, label %if.end59

if.end56.exit_crit_edge:                          ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end59:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx60 = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 16, i32 %index
  %29 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx60, align 4
  %add.ptr61 = getelementptr i8, ptr %30, i32 %offset
  tail call fastcc void @lo_hi_writeq(i64 noundef %value, ptr noundef %add.ptr61)
  br label %exit

exit:                                             ; preds = %if.end59, %if.end56.exit_crit_edge, %lor.lhs.false49.exit_crit_edge, %sw.bb47.exit_crit_edge, %if.end44, %if.end41.exit_crit_edge, %lor.lhs.false37.exit_crit_edge, %sw.bb35.exit_crit_edge, %if.end33, %if.end30.exit_crit_edge, %if.end27.exit_crit_edge, %sw.bb22.exit_crit_edge, %if.end20, %if.end17.exit_crit_edge, %sw.bb15.exit_crit_edge, %if.end13, %sw.bb10.exit_crit_edge, %if.end8, %sw.bb5.exit_crit_edge, %if.end4, %sw.bb.exit_crit_edge, %if.end.exit_crit_edge, %lor.lhs.false.exit_crit_edge, %entry.exit_crit_edge
  %status.0 = phi i32 [ 0, %if.end59 ], [ 0, %if.end44 ], [ 0, %if.end33 ], [ 0, %if.end20 ], [ 0, %if.end13 ], [ 0, %if.end8 ], [ 0, %if.end4 ], [ 211, %lor.lhs.false.exit_crit_edge ], [ 211, %entry.exit_crit_edge ], [ 210, %sw.bb.exit_crit_edge ], [ 210, %sw.bb5.exit_crit_edge ], [ 210, %sw.bb10.exit_crit_edge ], [ 217, %sw.bb15.exit_crit_edge ], [ 210, %if.end17.exit_crit_edge ], [ 217, %sw.bb22.exit_crit_edge ], [ 208, %if.end27.exit_crit_edge ], [ 210, %if.end30.exit_crit_edge ], [ 208, %lor.lhs.false37.exit_crit_edge ], [ 208, %sw.bb35.exit_crit_edge ], [ 210, %if.end41.exit_crit_edge ], [ 208, %lor.lhs.false49.exit_crit_edge ], [ 208, %sw.bb47.exit_crit_edge ], [ 210, %if.end56.exit_crit_edge ], [ 209, %if.end.exit_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_device_flick_link_led(ptr noundef %hldev, i64 noundef %on_off) local_unnamed_addr #0 align 64 {
entry:
  %data0 = alloca i64, align 8
  %data1 = alloca i64, align 8
  %steer_ctrl = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data0) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data1) #16
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %data1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %steer_ctrl) #16
  %1 = ptrtoint ptr %steer_ctrl to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %steer_ctrl, align 8
  %cmp = icmp eq ptr %hldev, null
  br i1 %cmp, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %first_vp_id = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 23
  %2 = ptrtoint ptr %first_vp_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %first_vp_id, align 16
  %arrayidx = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %3
  %4 = ptrtoint ptr %data0 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %on_off, ptr %data0, align 8
  %call = call fastcc i32 @vxge_hw_vpath_fw_api(ptr noundef %arrayidx, i32 noundef 4, i32 noundef 13, i32 noundef 0, ptr noundef nonnull %data0, ptr noundef nonnull %data1, ptr noundef nonnull %steer_ctrl)
  br label %exit

exit:                                             ; preds = %if.end, %entry.exit_crit_edge
  %status.0 = phi i32 [ %call, %if.end ], [ 211, %entry.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %steer_ctrl) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data1) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data0) #16
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__vxge_hw_vpath_rts_table_get(ptr noundef readonly %vp, i32 noundef %action, i32 noundef %rts_table, i32 noundef %offset, ptr nocapture noundef %data0, ptr nocapture noundef %data1) local_unnamed_addr #0 align 64 {
entry:
  %steer_ctrl = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %steer_ctrl) #16
  %0 = ptrtoint ptr %steer_ctrl to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %steer_ctrl, align 8
  %cmp = icmp eq ptr %vp, null
  br i1 %cmp, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end:                                           ; preds = %entry
  %1 = zext i32 %rts_table to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %rts_table, label %if.end.if.end8_crit_edge [
    i32 6, label %if.end.if.then7_crit_edge
    i32 12, label %if.end.if.then7_crit_edge25
    i32 8, label %if.end.if.then7_crit_edge26
    i32 9, label %if.end.if.then7_crit_edge27
  ]

if.end.if.then7_crit_edge27:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then7

if.end.if.then7_crit_edge26:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then7

if.end.if.then7_crit_edge25:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then7

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.then7:                                         ; preds = %if.end.if.then7_crit_edge, %if.end.if.then7_crit_edge25, %if.end.if.then7_crit_edge26, %if.end.if.then7_crit_edge27
  %2 = ptrtoint ptr %steer_ctrl to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 68719476736, ptr %steer_ctrl, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %vpath = getelementptr inbounds %struct.__vxge_hw_vpath_handle, ptr %vp, i32 0, i32 1
  %3 = ptrtoint ptr %vpath to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vpath, align 4
  %call = call fastcc i32 @vxge_hw_vpath_fw_api(ptr noundef %4, i32 noundef %action, i32 noundef %rts_table, i32 noundef %offset, ptr noundef %data0, ptr noundef %data1, ptr noundef nonnull %steer_ctrl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp9.not = icmp eq i32 %call, 0
  br i1 %cmp9.not, label %if.end11, label %if.end8.exit_crit_edge

if.end8.exit_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end11:                                         ; preds = %if.end8
  %5 = zext i32 %rts_table to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %rts_table, label %if.then14 [
    i32 0, label %if.end11.exit_crit_edge
    i32 12, label %if.end11.exit_crit_edge28
  ]

if.end11.exit_crit_edge28:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end11.exit_crit_edge:                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %data1 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %data1, align 8
  br label %exit

exit:                                             ; preds = %if.then14, %if.end11.exit_crit_edge, %if.end11.exit_crit_edge28, %if.end8.exit_crit_edge, %entry.exit_crit_edge
  %status.0 = phi i32 [ %call, %if.end8.exit_crit_edge ], [ 0, %if.then14 ], [ 0, %if.end11.exit_crit_edge ], [ 201, %entry.exit_crit_edge ], [ 0, %if.end11.exit_crit_edge28 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %steer_ctrl) #16
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__vxge_hw_vpath_rts_table_set(ptr noundef readonly %vp, i32 noundef %action, i32 noundef %rts_table, i32 noundef %offset, i64 noundef %steer_data0, i64 noundef %steer_data1) local_unnamed_addr #0 align 64 {
entry:
  %data0 = alloca i64, align 8
  %data1 = alloca i64, align 8
  %steer_ctrl = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data0) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data1) #16
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %data1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %steer_ctrl) #16
  %1 = ptrtoint ptr %steer_ctrl to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %steer_ctrl, align 8
  %cmp = icmp eq ptr %vp, null
  br i1 %cmp, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %data0 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %steer_data0, ptr %data0, align 8
  %3 = zext i32 %rts_table to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %rts_table, label %if.end.if.end4_crit_edge [
    i32 0, label %if.end.if.then3_crit_edge
    i32 12, label %if.end.if.then3_crit_edge8
  ]

if.end.if.then3_crit_edge8:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then3

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then3:                                         ; preds = %if.end.if.then3_crit_edge, %if.end.if.then3_crit_edge8
  %4 = ptrtoint ptr %data1 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %steer_data1, ptr %data1, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %vpath = getelementptr inbounds %struct.__vxge_hw_vpath_handle, ptr %vp, i32 0, i32 1
  %5 = ptrtoint ptr %vpath to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vpath, align 4
  %call = call fastcc i32 @vxge_hw_vpath_fw_api(ptr noundef %6, i32 noundef %action, i32 noundef %rts_table, i32 noundef %offset, ptr noundef nonnull %data0, ptr noundef nonnull %data1, ptr noundef nonnull %steer_ctrl)
  br label %exit

exit:                                             ; preds = %if.end4, %entry.exit_crit_edge
  %status.0 = phi i32 [ %call, %if.end4 ], [ 201, %entry.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %steer_ctrl) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data1) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data0) #16
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_vpath_rts_rth_set(ptr noundef readonly %vp, i32 noundef %algorithm, ptr nocapture noundef readonly %hash_type, i16 noundef zeroext %bucket_size) local_unnamed_addr #0 align 64 {
entry:
  %data0.i = alloca i64, align 8
  %data1.i = alloca i64, align 8
  %steer_ctrl.i60 = alloca i64, align 8
  %steer_ctrl.i = alloca i64, align 8
  %data0 = alloca i64, align 8
  %data1 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data0) #16
  %0 = ptrtoint ptr %data0 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %data0, align 8, !annotation !88
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data1) #16
  %1 = ptrtoint ptr %data1 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %data1, align 8, !annotation !88
  %cmp = icmp eq ptr %vp, null
  br i1 %cmp, label %entry.exit_crit_edge, label %if.end.i

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %steer_ctrl.i) #16
  %2 = ptrtoint ptr %steer_ctrl.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %steer_ctrl.i, align 8
  %vpath.i = getelementptr inbounds %struct.__vxge_hw_vpath_handle, ptr %vp, i32 0, i32 1
  %3 = ptrtoint ptr %vpath.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vpath.i, align 4
  %call.i = call fastcc i32 @vxge_hw_vpath_fw_api(ptr noundef %4, i32 noundef 0, i32 noundef 5, i32 noundef 0, ptr noundef nonnull %data0, ptr noundef nonnull %data1, ptr noundef nonnull %steer_ctrl.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp9.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp9.not.i, label %if.end3, label %__vxge_hw_vpath_rts_table_get.exit

__vxge_hw_vpath_rts_table_get.exit:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %steer_ctrl.i) #16
  br label %exit

if.end3:                                          ; preds = %if.end.i
  %5 = ptrtoint ptr %data1 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %data1, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %steer_ctrl.i) #16
  %6 = ptrtoint ptr %data0 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %data0, align 8
  %and = and i64 %7, -2247296214057877505
  %conv = zext i16 %bucket_size to i64
  %shl = shl i64 %conv, 56
  %conv4 = zext i32 %algorithm to i64
  %shl5 = shl i64 %conv4, 52
  %or = or i64 %shl5, %shl
  %or6 = or i64 %or, %and
  %or7 = or i64 %or6, 1152921504606846976
  store i64 %or7, ptr %data0, align 8
  %8 = ptrtoint ptr %hash_type to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %hash_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end3.if.end10_crit_edge, label %if.then8

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.then8:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  %or9 = or i64 %or6, 1153202979583557632
  %9 = ptrtoint ptr %data0 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %or9, ptr %data0, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end3.if.end10_crit_edge
  %10 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool13.not = icmp eq i8 %10, 0
  br i1 %tobool13.not, label %if.end10.if.end16_crit_edge, label %if.then14

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %data0 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %data0, align 8
  %or15 = or i64 %12, 17592186044416
  store i64 %or15, ptr %data0, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end10.if.end16_crit_edge
  %13 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool20.not = icmp eq i8 %13, 0
  br i1 %tobool20.not, label %if.end16.if.end23_crit_edge, label %if.then21

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  %14 = ptrtoint ptr %data0 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %data0, align 8
  %or22 = or i64 %15, 1099511627776
  store i64 %or22, ptr %data0, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end16.if.end23_crit_edge
  %16 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool27.not = icmp eq i8 %16, 0
  br i1 %tobool27.not, label %if.end23.if.end30_crit_edge, label %if.then28

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  %17 = ptrtoint ptr %data0 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %data0, align 8
  %or29 = or i64 %18, 68719476736
  store i64 %or29, ptr %data0, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end23.if.end30_crit_edge
  %19 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool34.not = icmp eq i8 %19, 0
  br i1 %tobool34.not, label %if.end30.if.end37_crit_edge, label %if.then35

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  %20 = ptrtoint ptr %data0 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %data0, align 8
  %or36 = or i64 %21, 4294967296
  store i64 %or36, ptr %data0, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end30.if.end37_crit_edge
  %22 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool41.not = icmp eq i8 %22, 0
  br i1 %tobool41.not, label %if.end37.__vxge_hw_vpath_rts_table_set.exit_crit_edge, label %if.then42

if.end37.__vxge_hw_vpath_rts_table_set.exit_crit_edge: ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_vpath_rts_table_set.exit

if.then42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  %23 = ptrtoint ptr %data0 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %data0, align 8
  %or43 = or i64 %24, 268435456
  store i64 %or43, ptr %data0, align 8
  br label %__vxge_hw_vpath_rts_table_set.exit

__vxge_hw_vpath_rts_table_set.exit:               ; preds = %if.then42, %if.end37.__vxge_hw_vpath_rts_table_set.exit_crit_edge
  %25 = ptrtoint ptr %data0 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %data0, align 8
  %storemerge = xor i64 %26, 16777216
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data0.i) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data1.i) #16
  %27 = ptrtoint ptr %data1.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 0, ptr %data1.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %steer_ctrl.i60) #16
  %28 = ptrtoint ptr %steer_ctrl.i60 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 0, ptr %steer_ctrl.i60, align 8
  %29 = ptrtoint ptr %data0.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %storemerge, ptr %data0.i, align 8
  %30 = ptrtoint ptr %vpath.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vpath.i, align 4
  %call.i64 = call fastcc i32 @vxge_hw_vpath_fw_api(ptr noundef %31, i32 noundef 1, i32 noundef 5, i32 noundef 0, ptr noundef nonnull %data0.i, ptr noundef nonnull %data1.i, ptr noundef nonnull %steer_ctrl.i60) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %steer_ctrl.i60) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data1.i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data0.i) #16
  br label %exit

exit:                                             ; preds = %__vxge_hw_vpath_rts_table_set.exit, %__vxge_hw_vpath_rts_table_get.exit, %entry.exit_crit_edge
  %status.0 = phi i32 [ %call.i, %__vxge_hw_vpath_rts_table_get.exit ], [ %call.i64, %__vxge_hw_vpath_rts_table_set.exit ], [ 201, %entry.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data1) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data0) #16
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_vpath_rts_rth_itable_set(ptr nocapture noundef readonly %vpath_handles, i32 noundef %vpath_count, ptr nocapture noundef readonly %mtable, ptr nocapture noundef readonly %itable, i32 noundef %itable_size) local_unnamed_addr #0 align 64 {
entry:
  %data0.i226 = alloca i64, align 8
  %data1.i227 = alloca i64, align 8
  %steer_ctrl.i228 = alloca i64, align 8
  %data0.i177 = alloca i64, align 8
  %data1.i178 = alloca i64, align 8
  %steer_ctrl.i179 = alloca i64, align 8
  %data0.i = alloca i64, align 8
  %data1.i = alloca i64, align 8
  %steer_ctrl.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vpath_handles to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vpath_handles, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end:                                           ; preds = %entry
  %shl = shl nuw i32 1, %itable_size
  %vpath = getelementptr inbounds %struct.__vxge_hw_vpath_handle, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vpath to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vpath, align 4
  %hldev = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %hldev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hldev, align 8
  %rth_it_type = getelementptr inbounds %struct.__vxge_hw_device, ptr %5, i32 0, i32 4, i32 3
  %6 = ptrtoint ptr %rth_it_type to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %rth_it_type, align 4
  %7 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp1 = icmp eq i8 %7, 0
  br i1 %cmp1, label %if.end.for.body_crit_edge, label %for.cond30.preheader

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.cond30.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vpath_count)
  %cmp31271.not = icmp eq i32 %vpath_count, 0
  br i1 %cmp31271.not, label %for.cond30.preheader.exit_crit_edge, label %for.cond30.preheader.for.cond34.preheader_crit_edge

for.cond30.preheader.for.cond34.preheader_crit_edge: ; preds = %for.cond30.preheader
  br label %for.cond34.preheader

for.cond30.preheader.exit_crit_edge:              ; preds = %for.cond30.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

for.cond:                                         ; preds = %__vxge_hw_vpath_rts_table_set.exit
  %inc = add nuw i32 %j.0273, 1
  %exitcond294.not = icmp eq i32 %inc, %shl
  br i1 %exitcond294.not, label %for.cond.for.body14_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.cond.for.body14_crit_edge:                    ; preds = %for.cond
  br label %for.body14

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end.for.body_crit_edge
  %j.0273 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx4 = getelementptr i8, ptr %itable, i32 %j.0273
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx4, align 1
  %10 = ptrtoint ptr %vpath_handles to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vpath_handles, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data0.i) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data1.i) #16
  %12 = ptrtoint ptr %data1.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %data1.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %steer_ctrl.i) #16
  %13 = ptrtoint ptr %steer_ctrl.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %steer_ctrl.i, align 8
  %cmp.i = icmp eq ptr %11, null
  br i1 %cmp.i, label %__vxge_hw_vpath_rts_table_set.exit.thread, label %__vxge_hw_vpath_rts_table_set.exit

__vxge_hw_vpath_rts_table_set.exit.thread:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %steer_ctrl.i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data1.i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data0.i) #16
  br label %exit

__vxge_hw_vpath_rts_table_set.exit:               ; preds = %for.body
  %conv = zext i8 %9 to i64
  %shl5 = shl nuw nsw i64 %conv, 48
  %14 = ptrtoint ptr %data0.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %shl5, ptr %data0.i, align 8
  %vpath.i = getelementptr inbounds %struct.__vxge_hw_vpath_handle, ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %vpath.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vpath.i, align 4
  %call.i = call fastcc i32 @vxge_hw_vpath_fw_api(ptr noundef %16, i32 noundef 1, i32 noundef 6, i32 noundef %j.0273, ptr noundef nonnull %data0.i, ptr noundef nonnull %data1.i, ptr noundef nonnull %steer_ctrl.i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %steer_ctrl.i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data1.i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data0.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7.not = icmp eq i32 %call.i, 0
  br i1 %cmp7.not, label %for.cond, label %__vxge_hw_vpath_rts_table_set.exit.exit_crit_edge

__vxge_hw_vpath_rts_table_set.exit.exit_crit_edge: ; preds = %__vxge_hw_vpath_rts_table_set.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

for.cond11:                                       ; preds = %__vxge_hw_vpath_rts_table_set.exit185
  %inc28 = add nuw i32 %j.1274, 1
  %exitcond295.not = icmp eq i32 %inc28, %shl
  br i1 %exitcond295.not, label %for.cond11.exit_crit_edge, label %for.cond11.for.body14_crit_edge

for.cond11.for.body14_crit_edge:                  ; preds = %for.cond11
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body14

for.cond11.exit_crit_edge:                        ; preds = %for.cond11
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

for.body14:                                       ; preds = %for.cond11.for.body14_crit_edge, %for.cond.for.body14_crit_edge
  %j.1274 = phi i32 [ %inc28, %for.cond11.for.body14_crit_edge ], [ 0, %for.cond.for.body14_crit_edge ]
  %arrayidx15 = getelementptr i8, ptr %itable, i32 %j.1274
  %17 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx15, align 1
  %idxprom = zext i8 %18 to i32
  %arrayidx19 = getelementptr i8, ptr %mtable, i32 %idxprom
  %19 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx19, align 1
  %idxprom20 = zext i8 %20 to i32
  %arrayidx21 = getelementptr ptr, ptr %vpath_handles, i32 %idxprom20
  %21 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx21, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data0.i177) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data1.i178) #16
  %23 = ptrtoint ptr %data1.i178 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 0, ptr %data1.i178, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %steer_ctrl.i179) #16
  %24 = ptrtoint ptr %steer_ctrl.i179 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 0, ptr %steer_ctrl.i179, align 8
  %cmp.i180 = icmp eq ptr %22, null
  br i1 %cmp.i180, label %__vxge_hw_vpath_rts_table_set.exit185.thread, label %__vxge_hw_vpath_rts_table_set.exit185

__vxge_hw_vpath_rts_table_set.exit185.thread:     ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %steer_ctrl.i179) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data1.i178) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data0.i177) #16
  br label %exit

__vxge_hw_vpath_rts_table_set.exit185:            ; preds = %for.body14
  %conv16 = zext i8 %18 to i64
  %shl17 = shl nuw nsw i64 %conv16, 48
  %or = or i64 %shl17, 1152921504606846976
  %25 = ptrtoint ptr %data0.i177 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %or, ptr %data0.i177, align 8
  %vpath.i182 = getelementptr inbounds %struct.__vxge_hw_vpath_handle, ptr %22, i32 0, i32 1
  %26 = ptrtoint ptr %vpath.i182 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vpath.i182, align 4
  %call.i183 = call fastcc i32 @vxge_hw_vpath_fw_api(ptr noundef %27, i32 noundef 1, i32 noundef 6, i32 noundef %j.1274, ptr noundef nonnull %data0.i177, ptr noundef nonnull %data1.i178, ptr noundef nonnull %steer_ctrl.i179) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %steer_ctrl.i179) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data1.i178) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data0.i177) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i183)
  %cmp23.not = icmp eq i32 %call.i183, 0
  br i1 %cmp23.not, label %for.cond11, label %__vxge_hw_vpath_rts_table_set.exit185.exit_crit_edge

__vxge_hw_vpath_rts_table_set.exit185.exit_crit_edge: ; preds = %__vxge_hw_vpath_rts_table_set.exit185
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

for.cond34.preheader:                             ; preds = %for.inc106.for.cond34.preheader_crit_edge, %for.cond30.preheader.for.cond34.preheader_crit_edge
  %i.0272 = phi i32 [ %inc107, %for.inc106.for.cond34.preheader_crit_edge ], [ 0, %for.cond30.preheader.for.cond34.preheader_crit_edge ]
  %arrayidx98 = getelementptr ptr, ptr %vpath_handles, i32 %i.0272
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end104.while.cond.preheader_crit_edge, %for.cond34.preheader
  %j.2270 = phi i32 [ 0, %for.cond34.preheader ], [ %j.10, %if.end104.while.cond.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.2270, i32 %shl)
  %cmp38259 = icmp ult i32 %j.2270, %shl
  br i1 %cmp38259, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %if.then46.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %j.3260 = phi i32 [ %inc47, %if.then46.while.body_crit_edge ], [ %j.2270, %while.cond.preheader.while.body_crit_edge ]
  %arrayidx40 = getelementptr i8, ptr %itable, i32 %j.3260
  %28 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx40, align 1
  %idxprom41 = zext i8 %29 to i32
  %arrayidx42 = getelementptr i8, ptr %mtable, i32 %idxprom41
  %30 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %31 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0272, i32 %conv43)
  %cmp44.not = icmp eq i32 %i.0272, %conv43
  br i1 %cmp44.not, label %if.end48, label %if.then46

if.then46:                                        ; preds = %while.body
  %inc47 = add nuw i32 %j.3260, 1
  %exitcond.not = icmp eq i32 %inc47, %shl
  br i1 %exitcond.not, label %if.then46.for.inc106_crit_edge, label %if.then46.while.body_crit_edge

if.then46.while.body_crit_edge:                   ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

if.then46.for.inc106_crit_edge:                   ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc106

if.end48:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  %conv1.i = zext i32 %j.3260 to i64
  %shl.i = shl i64 %conv1.i, 56
  %conv2.i = zext i8 %29 to i64
  %shl3.i = shl nuw nsw i64 %conv2.i, 48
  %or.i = or i64 %shl3.i, %shl.i
  %shl7.i = shl i64 %conv1.i, 40
  %shl11.i = shl nuw nsw i64 %conv2.i, 32
  %or8.i = or i64 %shl11.i, %shl7.i
  %or4.i = or i64 %or8.i, %or.i
  %or13.i = or i64 %or4.i, 36029346774777856
  %inc49 = add nuw i32 %j.3260, 1
  br label %while.end

while.end:                                        ; preds = %if.end48, %while.cond.preheader.while.end_crit_edge
  %data0.0 = phi i64 [ %or13.i, %if.end48 ], [ 0, %while.cond.preheader.while.end_crit_edge ]
  %j.4 = phi i32 [ %inc49, %if.end48 ], [ %j.2270, %while.cond.preheader.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.4, i32 %shl)
  %cmp51261 = icmp ult i32 %j.4, %shl
  br i1 %cmp51261, label %while.end.while.body53_crit_edge, label %while.end.while.end64_crit_edge

while.end.while.end64_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end64

while.end.while.body53_crit_edge:                 ; preds = %while.end
  br label %while.body53

while.body53:                                     ; preds = %if.then60.while.body53_crit_edge, %while.end.while.body53_crit_edge
  %j.5262 = phi i32 [ %inc61, %if.then60.while.body53_crit_edge ], [ %j.4, %while.end.while.body53_crit_edge ]
  %arrayidx54 = getelementptr i8, ptr %itable, i32 %j.5262
  %32 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx54, align 1
  %idxprom55 = zext i8 %33 to i32
  %arrayidx56 = getelementptr i8, ptr %mtable, i32 %idxprom55
  %34 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx56, align 1
  %conv57 = zext i8 %35 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0272, i32 %conv57)
  %cmp58.not = icmp eq i32 %i.0272, %conv57
  br i1 %cmp58.not, label %if.end62, label %if.then60

if.then60:                                        ; preds = %while.body53
  %inc61 = add i32 %j.5262, 1
  %exitcond290.not = icmp eq i32 %inc61, %shl
  br i1 %exitcond290.not, label %if.then60.while.end94_crit_edge, label %if.then60.while.body53_crit_edge

if.then60.while.body53_crit_edge:                 ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body53

if.then60.while.end94_crit_edge:                  ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end94

if.end62:                                         ; preds = %while.body53
  call void @__sanitizer_cov_trace_pc() #18
  %.pre.i = zext i32 %j.5262 to i64
  %shl7.i186 = shl i64 %.pre.i, 40
  %conv10.i188 = zext i8 %33 to i64
  %shl11.i189 = shl nuw nsw i64 %conv10.i188, 32
  %or8.i190 = or i64 %shl11.i189, %shl7.i186
  %or12.i191 = or i64 %data0.0, %or8.i190
  %or13.i192 = or i64 %or12.i191, 549755813888
  %shl16.i193 = shl i64 %.pre.i, 56
  %shl20.i196 = shl nuw nsw i64 %conv10.i188, 48
  %or17.i197 = or i64 %shl20.i196, %shl16.i193
  %or21.i198 = or i64 %or8.i190, %or17.i197
  %or30.i205 = or i64 %or21.i198, 36029346774777856
  %inc63 = add nuw i32 %j.5262, 1
  br label %while.end64

while.end64:                                      ; preds = %if.end62, %while.end.while.end64_crit_edge
  %data0.1 = phi i64 [ %or13.i192, %if.end62 ], [ %data0.0, %while.end.while.end64_crit_edge ]
  %data1.1 = phi i64 [ %or30.i205, %if.end62 ], [ %data0.0, %while.end.while.end64_crit_edge ]
  %j.6 = phi i32 [ %inc63, %if.end62 ], [ %j.4, %while.end.while.end64_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.6, i32 %shl)
  %cmp66264 = icmp ult i32 %j.6, %shl
  br i1 %cmp66264, label %while.end64.while.body68_crit_edge, label %while.end64.while.end79_crit_edge

while.end64.while.end79_crit_edge:                ; preds = %while.end64
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end79

while.end64.while.body68_crit_edge:               ; preds = %while.end64
  br label %while.body68

while.body68:                                     ; preds = %if.then75.while.body68_crit_edge, %while.end64.while.body68_crit_edge
  %j.7265 = phi i32 [ %inc76, %if.then75.while.body68_crit_edge ], [ %j.6, %while.end64.while.body68_crit_edge ]
  %arrayidx69 = getelementptr i8, ptr %itable, i32 %j.7265
  %36 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx69, align 1
  %idxprom70 = zext i8 %37 to i32
  %arrayidx71 = getelementptr i8, ptr %mtable, i32 %idxprom70
  %38 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx71, align 1
  %conv72 = zext i8 %39 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0272, i32 %conv72)
  %cmp73.not = icmp eq i32 %i.0272, %conv72
  br i1 %cmp73.not, label %if.end77, label %if.then75

if.then75:                                        ; preds = %while.body68
  %inc76 = add i32 %j.7265, 1
  %exitcond291.not = icmp eq i32 %inc76, %shl
  br i1 %exitcond291.not, label %if.then75.while.end94_crit_edge, label %if.then75.while.body68_crit_edge

if.then75.while.body68_crit_edge:                 ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body68

if.then75.while.end94_crit_edge:                  ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end94

if.end77:                                         ; preds = %while.body68
  call void @__sanitizer_cov_trace_pc() #18
  %.pre43.i = zext i32 %j.7265 to i64
  %shl16.i206 = shl i64 %.pre43.i, 56
  %conv19.i208 = zext i8 %37 to i64
  %shl20.i209 = shl nuw nsw i64 %conv19.i208, 48
  %or17.i210 = or i64 %shl20.i209, %shl16.i206
  %shl24.i212 = shl i64 %.pre43.i, 40
  %shl28.i215 = shl nuw nsw i64 %conv19.i208, 32
  %or25.i216 = or i64 %shl28.i215, %shl24.i212
  %or21.i211 = or i64 %or25.i216, %or17.i210
  %or30.i218 = or i64 %or21.i211, 36029346774777856
  %inc78 = add nuw i32 %j.7265, 1
  br label %while.end79

while.end79:                                      ; preds = %if.end77, %while.end64.while.end79_crit_edge
  %data1.2 = phi i64 [ %or30.i218, %if.end77 ], [ %data1.1, %while.end64.while.end79_crit_edge ]
  %j.8 = phi i32 [ %inc78, %if.end77 ], [ %j.6, %while.end64.while.end79_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.8, i32 %shl)
  %cmp81267 = icmp ult i32 %j.8, %shl
  br i1 %cmp81267, label %while.end79.while.body83_crit_edge, label %while.end79.while.end94_crit_edge

while.end79.while.end94_crit_edge:                ; preds = %while.end79
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end94

while.end79.while.body83_crit_edge:               ; preds = %while.end79
  br label %while.body83

while.body83:                                     ; preds = %if.then90.while.body83_crit_edge, %while.end79.while.body83_crit_edge
  %j.9268 = phi i32 [ %inc91, %if.then90.while.body83_crit_edge ], [ %j.8, %while.end79.while.body83_crit_edge ]
  %arrayidx84 = getelementptr i8, ptr %itable, i32 %j.9268
  %40 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx84, align 1
  %idxprom85 = zext i8 %41 to i32
  %arrayidx86 = getelementptr i8, ptr %mtable, i32 %idxprom85
  %42 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx86, align 1
  %conv87 = zext i8 %43 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0272, i32 %conv87)
  %cmp88.not = icmp eq i32 %i.0272, %conv87
  br i1 %cmp88.not, label %if.end92, label %if.then90

if.then90:                                        ; preds = %while.body83
  %inc91 = add i32 %j.9268, 1
  %exitcond292.not = icmp eq i32 %inc91, %shl
  br i1 %exitcond292.not, label %if.then90.while.end94_crit_edge, label %if.then90.while.body83_crit_edge

if.then90.while.body83_crit_edge:                 ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body83

if.then90.while.end94_crit_edge:                  ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end94

if.end92:                                         ; preds = %while.body83
  call void @__sanitizer_cov_trace_pc() #18
  %.pre44.i = zext i32 %j.9268 to i64
  %shl24.i219 = shl i64 %.pre44.i, 40
  %conv27.i221 = zext i8 %41 to i64
  %shl28.i222 = shl nuw nsw i64 %conv27.i221, 32
  %or25.i223 = or i64 %shl28.i222, %shl24.i219
  %or29.i224 = or i64 %data1.2, %or25.i223
  %or30.i225 = or i64 %or29.i224, 549755813888
  %inc93 = add nuw i32 %j.9268, 1
  br label %while.end94

while.end94:                                      ; preds = %if.end92, %if.then90.while.end94_crit_edge, %while.end79.while.end94_crit_edge, %if.then75.while.end94_crit_edge, %if.then60.while.end94_crit_edge
  %data0.1303308 = phi i64 [ %data0.1, %if.end92 ], [ %data0.1, %while.end79.while.end94_crit_edge ], [ %data0.1, %if.then90.while.end94_crit_edge ], [ %data0.1, %if.then75.while.end94_crit_edge ], [ %data0.0, %if.then60.while.end94_crit_edge ]
  %data1.3 = phi i64 [ %or30.i225, %if.end92 ], [ %data1.2, %while.end79.while.end94_crit_edge ], [ %data1.2, %if.then90.while.end94_crit_edge ], [ %data1.1, %if.then75.while.end94_crit_edge ], [ %data0.0, %if.then60.while.end94_crit_edge ]
  %j.10 = phi i32 [ %inc93, %if.end92 ], [ %j.8, %while.end79.while.end94_crit_edge ], [ %shl, %if.then90.while.end94_crit_edge ], [ %shl, %if.then75.while.end94_crit_edge ], [ %shl, %if.then60.while.end94_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %data0.1303308)
  %cmp95.not = icmp eq i64 %data0.1303308, 0
  br i1 %cmp95.not, label %while.end94.if.end104_crit_edge, label %if.then97

while.end94.if.end104_crit_edge:                  ; preds = %while.end94
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end104

if.then97:                                        ; preds = %while.end94
  %44 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx98, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data0.i226) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data1.i227) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %steer_ctrl.i228) #16
  %46 = ptrtoint ptr %steer_ctrl.i228 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 0, ptr %steer_ctrl.i228, align 8
  %cmp.i229 = icmp eq ptr %45, null
  br i1 %cmp.i229, label %__vxge_hw_vpath_rts_table_set.exit234.thread, label %__vxge_hw_vpath_rts_table_set.exit234

__vxge_hw_vpath_rts_table_set.exit234.thread:     ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %steer_ctrl.i228) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data1.i227) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data0.i226) #16
  br label %exit

__vxge_hw_vpath_rts_table_set.exit234:            ; preds = %if.then97
  %47 = ptrtoint ptr %data0.i226 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %data0.1303308, ptr %data0.i226, align 8
  %48 = ptrtoint ptr %data1.i227 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %data1.3, ptr %data1.i227, align 8
  %vpath.i231 = getelementptr inbounds %struct.__vxge_hw_vpath_handle, ptr %45, i32 0, i32 1
  %49 = ptrtoint ptr %vpath.i231 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %vpath.i231, align 4
  %call.i232 = call fastcc i32 @vxge_hw_vpath_fw_api(ptr noundef %50, i32 noundef 1, i32 noundef 12, i32 noundef 0, ptr noundef nonnull %data0.i226, ptr noundef nonnull %data1.i227, ptr noundef nonnull %steer_ctrl.i228) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %steer_ctrl.i228) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data1.i227) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data0.i226) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i232)
  %cmp100.not = icmp eq i32 %call.i232, 0
  br i1 %cmp100.not, label %__vxge_hw_vpath_rts_table_set.exit234.if.end104_crit_edge, label %__vxge_hw_vpath_rts_table_set.exit234.exit_crit_edge

__vxge_hw_vpath_rts_table_set.exit234.exit_crit_edge: ; preds = %__vxge_hw_vpath_rts_table_set.exit234
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

__vxge_hw_vpath_rts_table_set.exit234.if.end104_crit_edge: ; preds = %__vxge_hw_vpath_rts_table_set.exit234
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end104

if.end104:                                        ; preds = %__vxge_hw_vpath_rts_table_set.exit234.if.end104_crit_edge, %while.end94.if.end104_crit_edge
  %cmp35 = icmp ult i32 %j.10, %shl
  br i1 %cmp35, label %if.end104.while.cond.preheader_crit_edge, label %if.end104.for.inc106_crit_edge

if.end104.for.inc106_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc106

if.end104.while.cond.preheader_crit_edge:         ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.preheader

for.inc106:                                       ; preds = %if.end104.for.inc106_crit_edge, %if.then46.for.inc106_crit_edge
  %inc107 = add nuw i32 %i.0272, 1
  %exitcond293.not = icmp eq i32 %inc107, %vpath_count
  br i1 %exitcond293.not, label %for.inc106.exit_crit_edge, label %for.inc106.for.cond34.preheader_crit_edge

for.inc106.for.cond34.preheader_crit_edge:        ; preds = %for.inc106
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond34.preheader

for.inc106.exit_crit_edge:                        ; preds = %for.inc106
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

exit:                                             ; preds = %for.inc106.exit_crit_edge, %__vxge_hw_vpath_rts_table_set.exit234.exit_crit_edge, %__vxge_hw_vpath_rts_table_set.exit234.thread, %__vxge_hw_vpath_rts_table_set.exit185.exit_crit_edge, %__vxge_hw_vpath_rts_table_set.exit185.thread, %for.cond11.exit_crit_edge, %__vxge_hw_vpath_rts_table_set.exit.exit_crit_edge, %__vxge_hw_vpath_rts_table_set.exit.thread, %for.cond30.preheader.exit_crit_edge, %entry.exit_crit_edge
  %status.5 = phi i32 [ 201, %entry.exit_crit_edge ], [ 201, %__vxge_hw_vpath_rts_table_set.exit.thread ], [ 201, %__vxge_hw_vpath_rts_table_set.exit185.thread ], [ 201, %__vxge_hw_vpath_rts_table_set.exit234.thread ], [ 0, %for.cond30.preheader.exit_crit_edge ], [ 0, %for.cond11.exit_crit_edge ], [ %call.i183, %__vxge_hw_vpath_rts_table_set.exit185.exit_crit_edge ], [ %call.i, %__vxge_hw_vpath_rts_table_set.exit.exit_crit_edge ], [ %call.i232, %__vxge_hw_vpath_rts_table_set.exit234.exit_crit_edge ], [ 0, %for.inc106.exit_crit_edge ]
  ret i32 %status.5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_vpath_check_leak(ptr noundef readonly %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %ring, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %vp_reg = getelementptr inbounds %struct.__vxge_hw_ring, ptr %ring, i32 0, i32 2
  %0 = ptrtoint ptr %vp_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vp_reg, align 4
  %prc_rxd_doorbell = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %1, i32 0, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %prc_rxd_doorbell) #16, !srcloc !77
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !93
  %conv = zext i32 %3 to i64
  %4 = ptrtoint ptr %vp_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vp_reg, align 4
  %prc_cfg6 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 13
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %prc_cfg6) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i = getelementptr i32, ptr %prc_cfg6, i32 1
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %8 = zext i32 %7 to i64
  %9 = zext i32 %6 to i64
  %10 = shl nuw i64 %9, 32
  %11 = or i64 %10, %8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11) #16
  %shl = shl i64 %12, 19
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %conv)
  %cmp4.not = icmp ule i64 %shl, %conv
  %spec.select = zext i1 %cmp4.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_vpath_mtu_set(ptr noundef readonly %vp, i32 noundef %new_mtu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %vp, null
  br i1 %cmp, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end:                                           ; preds = %entry
  %vpath1 = getelementptr inbounds %struct.__vxge_hw_vpath_handle, ptr %vp, i32 0, i32 1
  %0 = ptrtoint ptr %vpath1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vpath1, align 4
  %add = add i32 %new_mtu, 26
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %add)
  %cmp2 = icmp ult i32 %add, 68
  br i1 %cmp2, label %if.end.if.then4_crit_edge, label %lor.lhs.false

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then4

lor.lhs.false:                                    ; preds = %if.end
  %max_mtu = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %max_mtu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_mtu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp3 = icmp ugt i32 %add, %3
  br i1 %cmp3, label %lor.lhs.false.if.then4_crit_edge, label %lor.lhs.false.if.end5_crit_edge

lor.lhs.false.if.end5_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then4

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %if.end.if.then4_crit_edge
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %lor.lhs.false.if.end5_crit_edge
  %status.0 = phi i32 [ 207, %if.then4 ], [ 0, %lor.lhs.false.if.end5_crit_edge ]
  %vp_reg = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %vp_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vp_reg, align 16
  %rxmac_vcfg0 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 40
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxmac_vcfg0) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i = getelementptr i32, ptr %rxmac_vcfg0, i32 1
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %8 = and i32 %7, -65344
  %.masked = zext i32 %8 to i64
  %9 = tail call i64 @llvm.bswap.i64(i64 %.masked)
  %conv = zext i32 %add to i64
  %shl = shl i64 %conv, 48
  %or = or i64 %9, %shl
  %10 = ptrtoint ptr %vp_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vp_reg, align 16
  %rxmac_vcfg07 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %11, i32 0, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxmac_vcfg07, i32 %6) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %shr.i = lshr exact i64 %or, 32
  %conv3.i = trunc i64 %shr.i to i32
  %12 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #16
  %add.ptr.i18 = getelementptr i8, ptr %rxmac_vcfg07, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %12) #16, !srcloc !81
  %vp_config = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %vp_config to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vp_config, align 4
  %mtu = getelementptr inbounds %struct.vxge_hw_vp_config, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %new_mtu, ptr %mtu, align 4
  br label %exit

exit:                                             ; preds = %if.end5, %entry.exit_crit_edge
  %status.1 = phi i32 [ %status.0, %if.end5 ], [ 201, %entry.exit_crit_edge ]
  ret i32 %status.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_vpath_open(ptr noundef %hldev, ptr noundef %attr, ptr nocapture noundef writeonly %vpath_handle) local_unnamed_addr #0 align 64 {
entry:
  %fifo_mp_callback.i = alloca %struct.vxge_hw_mempool_cbs, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %attr, align 4
  %arrayidx = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %1
  %vp_open = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %1, i32 1
  %2 = ptrtoint ptr %vp_open to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vp_open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %vpath_assignments.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 21
  %4 = ptrtoint ptr %vpath_assignments.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %vpath_assignments.i, align 128
  %sh_prom.i = zext i32 %1 to i64
  %shr.i = lshr i64 -9223372036854775808, %sh_prom.i
  %and.i = and i64 %5, %shr.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %arrayidx3 = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 4, i32 4, i32 %1
  %lock.i = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %1, i32 24
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @__vxge_hw_vp_initialize.__key, i16 noundef signext 3) #16
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %1, ptr %arrayidx, align 128
  %7 = ptrtoint ptr %vp_open to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %vp_open, align 4
  %hldev2.i = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %1, i32 2
  %8 = ptrtoint ptr %hldev2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %hldev, ptr %hldev2.i, align 8
  %vp_config.i = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %1, i32 3
  %9 = ptrtoint ptr %vp_config.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx3, ptr %vp_config.i, align 4
  %arrayidx3.i = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 16, i32 %1
  %10 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx3.i, align 4
  %vp_reg.i = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %1, i32 4
  %12 = ptrtoint ptr %vp_reg.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %vp_reg.i, align 16
  %arrayidx4.i = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 15, i32 %1
  %13 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx4.i, align 4
  %vpmgmt_reg5.i = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %1, i32 5
  %15 = ptrtoint ptr %vpmgmt_reg5.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %vpmgmt_reg5.i, align 4
  %sub.i.i = sub i32 16, %1
  %16 = shl i32 32768, %sub.i.i
  %common_reg.i.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 12
  %17 = ptrtoint ptr %common_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %common_reg.i.i, align 4
  %cmn_rsthdlr_cfg0.i.i = getelementptr inbounds %struct.vxge_hw_common_reg, ptr %18, i32 0, i32 27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !91
  tail call void @arm_heavy_mb() #16
  %19 = tail call i32 @llvm.bswap.i32(i32 %16) #16
  %add.ptr.i.i.i = getelementptr i8, ptr %cmn_rsthdlr_cfg0.i.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %19) #16, !srcloc !81
  %20 = ptrtoint ptr %hldev2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hldev2.i, align 8
  %common_reg.i75.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %common_reg.i75.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %common_reg.i75.i, align 4
  %vpath_rst_in_prog.i.i = getelementptr inbounds %struct.vxge_hw_common_reg, ptr %23, i32 0, i32 59
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 128
  %sub.i76.i = sub i32 16, %25
  %shl.i.i = shl nuw i32 1, %sub.i76.i
  %conv5.i.i = zext i32 %shl.i.i to i64
  %shl1.i.i = shl i64 %conv5.i.i, 47
  %config.i.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %21, i32 0, i32 4
  %26 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %config.i.i, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 2147480) #16
  %add.ptr.i.i.i.i = getelementptr i32, ptr %vpath_rst_in_prog.i.i, i32 1
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %if.end.i.i.i.do.body.i.i.i_crit_edge, %if.end.i
  %i.0.i.i.i = phi i32 [ 0, %if.end.i ], [ %inc.i.i.i, %if.end.i.i.i.do.body.i.i.i_crit_edge ]
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vpath_rst_in_prog.i.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %31 = zext i32 %30 to i64
  %32 = tail call i64 @llvm.bswap.i64(i64 %31) #16
  %and.i.i.i = and i64 %32, %shl1.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end9.i_crit_edge, label %if.end.i.i.i

do.body.i.i.i.if.end9.i_crit_edge:                ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.i

if.end.i.i.i:                                     ; preds = %do.body.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 21474800) #16
  %inc.i.i.i = add nuw nsw i32 %i.0.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 10
  br i1 %exitcond.not.i.i.i, label %if.end.i.i.i.do.body1.i.i.i_crit_edge, label %if.end.i.i.i.do.body.i.i.i_crit_edge

if.end.i.i.i.do.body.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i

if.end.i.i.i.do.body1.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  br label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %if.end6.i.i.i.do.body1.i.i.i_crit_edge, %if.end.i.i.i.do.body1.i.i.i_crit_edge
  %i.1.i.i.i = phi i32 [ %inc8.i.i.i, %if.end6.i.i.i.do.body1.i.i.i_crit_edge ], [ 0, %if.end.i.i.i.do.body1.i.i.i_crit_edge ]
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vpath_rst_in_prog.i.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %36 = zext i32 %35 to i64
  %37 = tail call i64 @llvm.bswap.i64(i64 %36) #16
  %and3.i.i.i = and i64 %37, %shl1.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i64 %and3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %do.body1.i.i.i.if.end9.i_crit_edge, label %if.end6.i.i.i

do.body1.i.i.i.if.end9.i_crit_edge:               ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.i

if.end6.i.i.i:                                    ; preds = %do.body1.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748000) #16
  %inc8.i.i.i = add i32 %i.1.i.i.i, 1
  %cmp9.not.i.i.i = icmp ugt i32 %inc8.i.i.i, %27
  br i1 %cmp9.not.i.i.i, label %if.then8.i, label %if.end6.i.i.i.do.body1.i.i.i_crit_edge

if.end6.i.i.i.do.body1.i.i.i_crit_edge:           ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body1.i.i.i

if.then8.i:                                       ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %39 = call ptr @memset(ptr %arrayidx, i32 0, i32 384)
  br label %cleanup

if.end9.i:                                        ; preds = %do.body1.i.i.i.if.end9.i_crit_edge, %do.body.i.i.i.if.end9.i_crit_edge
  %40 = ptrtoint ptr %vpmgmt_reg5.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vpmgmt_reg5.i, align 4
  %arrayidx.i.i = getelementptr %struct.vxge_hw_vpmgmt_reg, ptr %41, i32 0, i32 13, i32 0
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i.i77.i = getelementptr i32, ptr %arrayidx.i.i, i32 1
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i77.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %44 = and i32 %42, -12648448
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #16
  %46 = ptrtoint ptr %vpmgmt_reg5.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %vpmgmt_reg5.i, align 4
  %arrayidx.1.i.i = getelementptr %struct.vxge_hw_vpmgmt_reg, ptr %47, i32 0, i32 13, i32 1
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.1.i.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i.1.i.i = getelementptr i32, ptr %arrayidx.1.i.i, i32 1
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %50 = and i32 %48, -12648448
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #16
  %52 = tail call i32 @llvm.umax.i32(i32 %45, i32 %51) #16
  %add.i.i = add nuw nsw i32 %52, 26
  %max_mtu.i.i = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %1, i32 7
  %53 = ptrtoint ptr %max_mtu.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add.i.i, ptr %max_mtu.i.i, align 4
  %54 = ptrtoint ptr %vpmgmt_reg5.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %vpmgmt_reg5.i, align 4
  %xmac_vsport_choices_vp.i.i = getelementptr inbounds %struct.vxge_hw_vpmgmt_reg, ptr %55, i32 0, i32 16
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %xmac_vsport_choices_vp.i.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i1.i.i = getelementptr i32, ptr %xmac_vsport_choices_vp.i.i, i32 1
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1.i.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %58 = zext i32 %57 to i64
  %59 = zext i32 %56 to i64
  %60 = shl nuw i64 %59, 32
  %61 = or i64 %60, %58
  %62 = tail call i64 @llvm.bswap.i64(i64 %61) #16
  %vsport_number.i.i = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %1, i32 8
  br label %for.body8.i.i

for.body8.i.i:                                    ; preds = %for.inc13.i.i.for.body8.i.i_crit_edge, %if.end9.i
  %i.15.i.i = phi i32 [ 0, %if.end9.i ], [ %inc14.i.i, %for.inc13.i.i.for.body8.i.i_crit_edge ]
  %sh_prom.i.i = zext i32 %i.15.i.i to i64
  %shr9.i.i = lshr i64 -9223372036854775808, %sh_prom.i.i
  %and10.i.i = and i64 %shr9.i.i, %62
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and10.i.i)
  %tobool.not.i.i = icmp eq i64 %and10.i.i, 0
  br i1 %tobool.not.i.i, label %for.body8.i.i.for.inc13.i.i_crit_edge, label %if.then11.i.i

for.body8.i.i.for.inc13.i.i_crit_edge:            ; preds = %for.body8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc13.i.i

if.then11.i.i:                                    ; preds = %for.body8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %63 = ptrtoint ptr %vsport_number.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %i.15.i.i, ptr %vsport_number.i.i, align 32
  br label %for.inc13.i.i

for.inc13.i.i:                                    ; preds = %if.then11.i.i, %for.body8.i.i.for.inc13.i.i_crit_edge
  %inc14.i.i = add nuw nsw i32 %i.15.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc14.i.i, 17
  br i1 %exitcond.not.i.i, label %__vxge_hw_vpath_mgmt_read.exit.i, label %for.inc13.i.i.for.body8.i.i_crit_edge

for.inc13.i.i.for.body8.i.i_crit_edge:            ; preds = %for.inc13.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body8.i.i

__vxge_hw_vpath_mgmt_read.exit.i:                 ; preds = %for.inc13.i.i
  %64 = ptrtoint ptr %vpmgmt_reg5.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %vpmgmt_reg5.i, align 4
  %xgmac_gen_status_vpmgmt_clone.i.i = getelementptr inbounds %struct.vxge_hw_vpmgmt_reg, ptr %65, i32 0, i32 18
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %xgmac_gen_status_vpmgmt_clone.i.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i2.i.i = getelementptr i32, ptr %xgmac_gen_status_vpmgmt_clone.i.i, i32 1
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %68 = and i32 %67, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool19.not.i.i = icmp eq i32 %68, 0
  %69 = ptrtoint ptr %hldev2.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hldev2.i, align 8
  %link_state23.i.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %70, i32 0, i32 5
  %..i.i = select i1 %tobool19.not.i.i, i32 1, i32 2
  %71 = ptrtoint ptr %link_state23.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %..i.i, ptr %link_state23.i.i, align 32
  %vpath_handles.i = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %1, i32 19
  %72 = ptrtoint ptr %vpath_handles.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %vpath_handles.i, ptr %vpath_handles.i, align 4
  %prev.i.i = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %1, i32 19, i32 1
  %73 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %vpath_handles.i, ptr %prev.i.i, align 4
  %arrayidx14.i = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 27, i32 3, i32 4, i32 %1
  %sw_stats.i = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %1, i32 23
  %74 = ptrtoint ptr %sw_stats.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %arrayidx14.i, ptr %sw_stats.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp15.i = icmp ult i32 %1, 16
  br i1 %cmp15.i, label %if.then16.i, label %if.else.i

if.then16.i:                                      ; preds = %__vxge_hw_vpath_mgmt_read.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %mul.neg.i = mul nsw i32 %1, -4
  %sub17.i = add nsw i32 %mul.neg.i, 60
  %sh_prom18.i = zext i32 %sub17.i to i64
  %shl.i = shl nuw i64 8, %sh_prom18.i
  %tim_int_mask0.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 24
  %75 = ptrtoint ptr %tim_int_mask0.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %tim_int_mask0.i, align 8
  %or.i = or i64 %76, %shl.i
  store i64 %or.i, ptr %tim_int_mask0.i, align 8
  %shl24.i = shl nuw nsw i64 4, %sh_prom18.i
  %arrayidx26.i = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 24, i32 1
  %77 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %arrayidx26.i, align 8
  %or27.i = or i64 %78, %shl24.i
  store i64 %or27.i, ptr %arrayidx26.i, align 8
  br label %if.end31.i

if.else.i:                                        ; preds = %__vxge_hw_vpath_mgmt_read.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %tim_int_mask1.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 25
  %79 = ptrtoint ptr %tim_int_mask1.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -2147483648, ptr %tim_int_mask1.i, align 8
  %arrayidx30.i = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 25, i32 1
  %80 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1073741824, ptr %arrayidx30.i, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.else.i, %if.then16.i
  %call32.i = tail call fastcc i32 @__vxge_hw_vpath_initialize(ptr noundef %hldev, i32 noundef %1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %cmp33.not.i = icmp eq i32 %call32.i, 0
  br i1 %cmp33.not.i, label %if.end6, label %if.then34.i

if.then34.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @__vxge_hw_vp_terminate(ptr noundef %hldev, i32 noundef %1) #16
  br label %cleanup

if.end6:                                          ; preds = %if.end31.i
  %call7 = tail call noalias ptr @vzalloc(i32 noundef 12) #20
  %cmp8 = icmp eq ptr %call7, null
  br i1 %cmp8, label %if.end6.vpath_open_exit2_crit_edge, label %if.end10

if.end6.vpath_open_exit2_crit_edge:               ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %vpath_open_exit2

if.end10:                                         ; preds = %if.end6
  %vpath11 = getelementptr inbounds %struct.__vxge_hw_vpath_handle, ptr %call7, i32 0, i32 1
  %81 = ptrtoint ptr %vpath11 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %arrayidx, ptr %vpath11, align 4
  %82 = ptrtoint ptr %vp_config.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %vp_config.i, align 4
  %fifo = getelementptr inbounds %struct.vxge_hw_vp_config, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %fifo, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %85)
  %cmp13 = icmp eq i32 %85, 1
  br i1 %cmp13, label %if.then14, label %if.end10.if.end19_crit_edge

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

if.then14:                                        ; preds = %if.end10
  %fifo_attr = getelementptr inbounds %struct.vxge_hw_vpath_attr, ptr %attr, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fifo_mp_callback.i) #16
  %cmp1.i = icmp eq ptr %fifo_attr, null
  br i1 %cmp1.i, label %if.then14.__vxge_hw_fifo_create.exit.thread_crit_edge, label %if.end.i124

if.then14.__vxge_hw_fifo_create.exit.thread_crit_edge: ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_fifo_create.exit.thread

if.end.i124:                                      ; preds = %if.then14
  %86 = ptrtoint ptr %hldev2.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hldev2.i, align 8
  %88 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx, align 128
  %max_frags.i = getelementptr %struct.__vxge_hw_device, ptr %87, i32 0, i32 4, i32 4, i32 %89, i32 3, i32 2
  %90 = ptrtoint ptr %max_frags.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %max_frags.i, align 4
  %mul.i = shl i32 %91, 5
  %memblock_size.i = getelementptr %struct.__vxge_hw_device, ptr %87, i32 0, i32 4, i32 4, i32 %89, i32 3, i32 3
  %92 = ptrtoint ptr %memblock_size.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %memblock_size.i, align 4
  %div.i = udiv i32 %93, %mul.i
  %fifo_blocks.i = getelementptr %struct.__vxge_hw_device, ptr %87, i32 0, i32 4, i32 4, i32 %89, i32 3, i32 1
  %94 = ptrtoint ptr %fifo_blocks.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %fifo_blocks.i, align 4
  %mul5.i = mul i32 %95, %div.i
  %per_txdl_space.i = getelementptr inbounds %struct.vxge_hw_vpath_attr, ptr %attr, i32 0, i32 2, i32 3
  %96 = ptrtoint ptr %per_txdl_space.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %per_txdl_space.i, align 4
  %userdata.i = getelementptr inbounds %struct.vxge_hw_vpath_attr, ptr %attr, i32 0, i32 2, i32 2
  %98 = ptrtoint ptr %userdata.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %userdata.i, align 4
  %call.i = tail call fastcc ptr @__vxge_hw_channel_allocate(ptr noundef nonnull %call7, i32 noundef 1, i32 noundef %mul5.i, i32 noundef %97, ptr noundef %99) #16
  %cmp6.i = icmp eq ptr %call.i, null
  br i1 %cmp6.i, label %if.end.i124.__vxge_hw_fifo_create.exit.thread_crit_edge, label %if.end8.i

if.end.i124.__vxge_hw_fifo_create.exit.thread_crit_edge: ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_fifo_create.exit.thread

if.end8.i:                                        ; preds = %if.end.i124
  %fifo4.i = getelementptr %struct.__vxge_hw_device, ptr %87, i32 0, i32 4, i32 4, i32 %89, i32 3
  %fifoh.i = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %1, i32 18
  %100 = ptrtoint ptr %fifoh.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call.i, ptr %fifoh.i, align 128
  %nofl_db.i = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %1, i32 6
  %101 = ptrtoint ptr %nofl_db.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %nofl_db.i, align 8
  %nofl_db9.i = getelementptr inbounds %struct.__vxge_hw_fifo, ptr %call.i, i32 0, i32 4
  %103 = ptrtoint ptr %nofl_db9.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %102, ptr %nofl_db9.i, align 4
  %104 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx, align 128
  %vp_id11.i = getelementptr inbounds %struct.__vxge_hw_fifo, ptr %call.i, i32 0, i32 11
  %106 = ptrtoint ptr %vp_id11.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %vp_id11.i, align 4
  %107 = ptrtoint ptr %vp_reg.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %vp_reg.i, align 16
  %vp_reg12.i = getelementptr inbounds %struct.__vxge_hw_fifo, ptr %call.i, i32 0, i32 3
  %109 = ptrtoint ptr %vp_reg12.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %108, ptr %vp_reg12.i, align 8
  %110 = ptrtoint ptr %sw_stats.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %sw_stats.i, align 8
  %fifo_stats.i = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_info, ptr %111, i32 0, i32 3
  %stats.i = getelementptr inbounds %struct.__vxge_hw_fifo, ptr %call.i, i32 0, i32 19
  %112 = ptrtoint ptr %stats.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %fifo_stats.i, ptr %stats.i, align 128
  %config13.i = getelementptr inbounds %struct.__vxge_hw_fifo, ptr %call.i, i32 0, i32 2
  %113 = ptrtoint ptr %config13.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %fifo4.i, ptr %config13.i, align 4
  %interrupt_type.i = getelementptr inbounds %struct.__vxge_hw_fifo, ptr %call.i, i32 0, i32 5
  %114 = ptrtoint ptr %interrupt_type.i to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 65536, ptr %interrupt_type.i, align 16
  %tim_tti_cfg1_saved.i = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %1, i32 11
  %115 = ptrtoint ptr %tim_tti_cfg1_saved.i to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %tim_tti_cfg1_saved.i, align 16
  %tim_tti_cfg1_saved14.i = getelementptr inbounds %struct.__vxge_hw_fifo, ptr %call.i, i32 0, i32 14
  %117 = ptrtoint ptr %tim_tti_cfg1_saved14.i to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %116, ptr %tim_tti_cfg1_saved14.i, align 8
  %tim_tti_cfg3_saved.i = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %1, i32 12
  %118 = ptrtoint ptr %tim_tti_cfg3_saved.i to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %tim_tti_cfg3_saved.i, align 8
  %tim_tti_cfg3_saved15.i = getelementptr inbounds %struct.__vxge_hw_fifo, ptr %call.i, i32 0, i32 15
  %120 = ptrtoint ptr %tim_tti_cfg3_saved15.i to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %119, ptr %tim_tti_cfg3_saved15.i, align 64
  %intr.i = getelementptr %struct.__vxge_hw_device, ptr %87, i32 0, i32 4, i32 4, i32 %89, i32 3, i32 5
  %121 = ptrtoint ptr %intr.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %intr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool.not.i127 = icmp eq i32 %122, 0
  br i1 %tobool.not.i127, label %if.end8.i.if.end19.i_crit_edge, label %if.then17.i

if.end8.i.if.end19.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19.i

if.then17.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  %123 = ptrtoint ptr %interrupt_type.i to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 131072, ptr %interrupt_type.i, align 16
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then17.i, %if.end8.i.if.end19.i_crit_edge
  %no_snoop_bits.i = getelementptr %struct.__vxge_hw_device, ptr %87, i32 0, i32 4, i32 4, i32 %89, i32 3, i32 6
  %124 = ptrtoint ptr %no_snoop_bits.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %no_snoop_bits.i, align 4
  %no_snoop_bits20.i = getelementptr inbounds %struct.__vxge_hw_fifo, ptr %call.i, i32 0, i32 6
  %126 = ptrtoint ptr %no_snoop_bits20.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %no_snoop_bits20.i, align 8
  %127 = ptrtoint ptr %per_txdl_space.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %per_txdl_space.i, align 4
  %priv_size.i = getelementptr inbounds %struct.__vxge_hw_fifo, ptr %call.i, i32 0, i32 9
  %sub.i = add i32 %128, 191
  %div24121.i = and i32 %sub.i, -128
  %129 = ptrtoint ptr %priv_size.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %div24121.i, ptr %priv_size.i, align 4
  %130 = load i32, ptr %per_txdl_space.i, align 4
  %per_txdl_space28.i = getelementptr inbounds %struct.__vxge_hw_fifo, ptr %call.i, i32 0, i32 10
  %131 = ptrtoint ptr %per_txdl_space28.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %per_txdl_space28.i, align 8
  %txdl_size29.i = getelementptr inbounds %struct.__vxge_hw_fifo, ptr %call.i, i32 0, i32 8
  %132 = ptrtoint ptr %txdl_size29.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %mul.i, ptr %txdl_size29.i, align 32
  %txdl_per_memblock30.i = getelementptr inbounds %struct.__vxge_hw_fifo, ptr %call.i, i32 0, i32 7
  %133 = ptrtoint ptr %txdl_per_memblock30.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %div.i, ptr %txdl_per_memblock30.i, align 4
  %txdl_term.i = getelementptr inbounds %struct.vxge_hw_vpath_attr, ptr %attr, i32 0, i32 2, i32 1
  %134 = ptrtoint ptr %txdl_term.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %txdl_term.i, align 4
  %txdl_term31.i = getelementptr inbounds %struct.__vxge_hw_fifo, ptr %call.i, i32 0, i32 17
  %136 = ptrtoint ptr %txdl_term31.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %135, ptr %txdl_term31.i, align 4
  %137 = ptrtoint ptr %fifo_attr to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %fifo_attr, align 4
  %callback32.i = getelementptr inbounds %struct.__vxge_hw_fifo, ptr %call.i, i32 0, i32 16
  %139 = ptrtoint ptr %callback32.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %138, ptr %callback32.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %93)
  %cmp34.i = icmp ugt i32 %mul.i, %93
  br i1 %cmp34.i, label %if.end19.i.__vxge_hw_fifo_create.exit.thread.sink.split_crit_edge, label %if.end37.i

if.end19.i.__vxge_hw_fifo_create.exit.thread.sink.split_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_fifo_create.exit.thread.sink.split

if.end37.i:                                       ; preds = %if.end19.i
  %140 = ptrtoint ptr %fifo_mp_callback.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr @__vxge_hw_fifo_mempool_item_alloc, ptr %fifo_mp_callback.i, align 4
  %141 = ptrtoint ptr %hldev2.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %hldev2.i, align 8
  %143 = ptrtoint ptr %config13.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %config13.i, align 4
  %memblock_size40.i = getelementptr inbounds %struct.vxge_hw_fifo_config, ptr %144, i32 0, i32 3
  %145 = ptrtoint ptr %memblock_size40.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %memblock_size40.i, align 4
  %fifo_blocks44.i = getelementptr inbounds %struct.vxge_hw_fifo_config, ptr %144, i32 0, i32 1
  %147 = ptrtoint ptr %fifo_blocks44.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %fifo_blocks44.i, align 4
  %mul46.i = mul i32 %148, %div.i
  %call51.i = call fastcc ptr @__vxge_hw_mempool_create(ptr noundef %142, i32 noundef %146, i32 noundef %mul.i, i32 noundef %div24121.i, i32 noundef %mul46.i, i32 noundef %mul46.i, ptr noundef nonnull %fifo_mp_callback.i, ptr noundef nonnull %call.i) #16
  %mempool.i = getelementptr inbounds %struct.__vxge_hw_fifo, ptr %call.i, i32 0, i32 1
  %149 = ptrtoint ptr %mempool.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %call51.i, ptr %mempool.i, align 128
  %cmp53.i = icmp eq ptr %call51.i, null
  br i1 %cmp53.i, label %if.end37.i.__vxge_hw_fifo_create.exit.thread.sink.split_crit_edge, label %if.end56.i

if.end37.i.__vxge_hw_fifo_create.exit.thread.sink.split_crit_edge: ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_fifo_create.exit.thread.sink.split

if.end56.i:                                       ; preds = %if.end37.i
  %vph.i.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %call.i, i32 0, i32 3
  %150 = ptrtoint ptr %vph.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %vph.i.i, align 16
  %vpath1.i.i = getelementptr inbounds %struct.__vxge_hw_vpath_handle, ptr %151, i32 0, i32 1
  %152 = ptrtoint ptr %vpath1.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %vpath1.i.i, align 4
  %reserve_arr.i.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %call.i, i32 0, i32 6
  %154 = ptrtoint ptr %reserve_arr.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %reserve_arr.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %155, null
  br i1 %cmp.not.i.i, label %if.end56.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end56.i.if.end.i.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end56.i
  %orig_arr.i.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %call.i, i32 0, i32 16
  %156 = ptrtoint ptr %orig_arr.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %orig_arr.i.i, align 4
  %cmp2.not.i.i = icmp eq ptr %157, null
  br i1 %cmp2.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %for.cond.preheader.i.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

for.cond.preheader.i.i:                           ; preds = %land.lhs.true.i.i
  %length.i.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %call.i, i32 0, i32 4
  %158 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %cmp31.not.i.i = icmp eq i32 %159, 0
  br i1 %cmp31.not.i.i, label %for.cond.preheader.i.i.if.end.i.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.if.end.i.i_crit_edge:      ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.02.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %160 = ptrtoint ptr %reserve_arr.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %reserve_arr.i.i, align 4
  %arrayidx.i.i128 = getelementptr ptr, ptr %161, i32 %i.02.i.i
  %162 = ptrtoint ptr %arrayidx.i.i128 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %arrayidx.i.i128, align 4
  %164 = ptrtoint ptr %orig_arr.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %orig_arr.i.i, align 4
  %arrayidx6.i.i = getelementptr ptr, ptr %165, i32 %i.02.i.i
  %166 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %163, ptr %arrayidx6.i.i, align 4
  %inc.i.i = add nuw i32 %i.02.i.i, 1
  %167 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %length.i.i, align 4
  %cmp3.i.i = icmp ult i32 %inc.i.i, %168
  br i1 %cmp3.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.if.end.i.i_crit_edge

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

if.end.i.i:                                       ; preds = %for.body.i.i.if.end.i.i_crit_edge, %for.cond.preheader.i.i.if.end.i.i_crit_edge, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end56.i.if.end.i.i_crit_edge
  %type.i.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %call.i, i32 0, i32 1
  %169 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %type.i.i, align 8
  %171 = zext i32 %170 to i64
  call void @__sanitizer_cov_trace_switch(i64 %171, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %170, label %if.end.i.i.__vxge_hw_fifo_create.exit_crit_edge [
    i32 1, label %sw.bb.i.i
    i32 2, label %sw.bb8.i.i
  ]

if.end.i.i.__vxge_hw_fifo_create.exit_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_fifo_create.exit

sw.bb.i.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %fifoh.i.i = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %153, i32 0, i32 18
  br label %sw.epilog.sink.split.i.i

sw.bb8.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %ringh.i.i = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %153, i32 0, i32 16
  br label %sw.epilog.sink.split.i.i

sw.epilog.sink.split.i.i:                         ; preds = %sw.bb8.i.i, %sw.bb.i.i
  %ringh.i.sink.i = phi ptr [ %ringh.i.i, %sw.bb8.i.i ], [ %fifoh.i.i, %sw.bb.i.i ]
  %172 = ptrtoint ptr %ringh.i.sink.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %call.i, ptr %ringh.i.sink.i, align 128
  %173 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %stats.i, align 128
  %stats11.i.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %call.i, i32 0, i32 21
  %175 = ptrtoint ptr %stats11.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %174, ptr %stats11.i.i, align 32
  br label %__vxge_hw_fifo_create.exit

__vxge_hw_fifo_create.exit.thread.sink.split:     ; preds = %if.end37.i.__vxge_hw_fifo_create.exit.thread.sink.split_crit_edge, %if.end19.i.__vxge_hw_fifo_create.exit.thread.sink.split_crit_edge
  %status.0.i129.ph.ph = phi i32 [ 215, %if.end19.i.__vxge_hw_fifo_create.exit.thread.sink.split_crit_edge ], [ 202, %if.end37.i.__vxge_hw_fifo_create.exit.thread.sink.split_crit_edge ]
  tail call fastcc void @__vxge_hw_fifo_delete(ptr noundef nonnull %call7) #16
  br label %__vxge_hw_fifo_create.exit.thread

__vxge_hw_fifo_create.exit.thread:                ; preds = %__vxge_hw_fifo_create.exit.thread.sink.split, %if.end.i124.__vxge_hw_fifo_create.exit.thread_crit_edge, %if.then14.__vxge_hw_fifo_create.exit.thread_crit_edge
  %status.0.i129.ph = phi i32 [ 202, %if.end.i124.__vxge_hw_fifo_create.exit.thread_crit_edge ], [ 201, %if.then14.__vxge_hw_fifo_create.exit.thread_crit_edge ], [ %status.0.i129.ph.ph, %__vxge_hw_fifo_create.exit.thread.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fifo_mp_callback.i) #16
  br label %vpath_open_exit6

__vxge_hw_fifo_create.exit:                       ; preds = %sw.epilog.sink.split.i.i, %if.end.i.i.__vxge_hw_fifo_create.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fifo_mp_callback.i) #16
  br label %if.end19

if.end19:                                         ; preds = %__vxge_hw_fifo_create.exit, %if.end10.if.end19_crit_edge
  %176 = ptrtoint ptr %vp_config.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %vp_config.i, align 4
  %ring = getelementptr inbounds %struct.vxge_hw_vp_config, ptr %177, i32 0, i32 2
  %178 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %ring, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %179)
  %cmp22 = icmp eq i32 %179, 1
  br i1 %cmp22, label %if.then23, label %if.end19.if.end29_crit_edge

if.end19.if.end29_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

if.then23:                                        ; preds = %if.end19
  %ring_attr = getelementptr inbounds %struct.vxge_hw_vpath_attr, ptr %attr, i32 0, i32 1
  %cmp1.i131 = icmp eq ptr %ring_attr, null
  br i1 %cmp1.i131, label %if.then23.vpath_open_exit7_crit_edge, label %if.end.i136

if.then23.vpath_open_exit7_crit_edge:             ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #18
  br label %vpath_open_exit7

if.end.i136:                                      ; preds = %if.then23
  %180 = ptrtoint ptr %vpath11 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %vpath11, align 4
  %hldev2.i133 = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %181, i32 0, i32 2
  %182 = ptrtoint ptr %hldev2.i133 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %hldev2.i133, align 8
  %184 = ptrtoint ptr %181 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %181, align 128
  %ring_blocks.i = getelementptr %struct.__vxge_hw_device, ptr %183, i32 0, i32 4, i32 4, i32 %185, i32 2, i32 1
  %186 = ptrtoint ptr %ring_blocks.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %ring_blocks.i, align 4
  %mul.i134 = mul i32 %187, 127
  %per_rxd_space.i = getelementptr inbounds %struct.vxge_hw_vpath_attr, ptr %attr, i32 0, i32 1, i32 4
  %188 = ptrtoint ptr %per_rxd_space.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %per_rxd_space.i, align 4
  %userdata.i135 = getelementptr inbounds %struct.vxge_hw_vpath_attr, ptr %attr, i32 0, i32 1, i32 3
  %190 = ptrtoint ptr %userdata.i135 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %userdata.i135, align 4
  %call7.i = tail call fastcc ptr @__vxge_hw_channel_allocate(ptr noundef nonnull %call7, i32 noundef 2, i32 noundef %mul.i134, i32 noundef %189, ptr noundef %191) #16
  %cmp8.i = icmp eq ptr %call7.i, null
  br i1 %cmp8.i, label %if.end.i136.vpath_open_exit7_crit_edge, label %if.end10.i

if.end.i136.vpath_open_exit7_crit_edge:           ; preds = %if.end.i136
  call void @__sanitizer_cov_trace_pc() #18
  br label %vpath_open_exit7

if.end10.i:                                       ; preds = %if.end.i136
  %ring6.i = getelementptr %struct.__vxge_hw_device, ptr %183, i32 0, i32 4, i32 4, i32 %185, i32 2
  %buffer_mode.i = getelementptr %struct.__vxge_hw_device, ptr %183, i32 0, i32 4, i32 4, i32 %185, i32 2, i32 2
  %192 = ptrtoint ptr %vpath11 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %vpath11, align 4
  %ringh.i = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %193, i32 0, i32 16
  %194 = ptrtoint ptr %ringh.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %call7.i, ptr %ringh.i, align 128
  %vp_id12.i = getelementptr inbounds %struct.__vxge_hw_ring, ptr %call7.i, i32 0, i32 12
  %195 = ptrtoint ptr %vp_id12.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %185, ptr %vp_id12.i, align 4
  %196 = load ptr, ptr %vpath11, align 4
  %vp_reg.i137 = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %196, i32 0, i32 4
  %197 = ptrtoint ptr %vp_reg.i137 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %vp_reg.i137, align 16
  %vp_reg14.i = getelementptr inbounds %struct.__vxge_hw_ring, ptr %call7.i, i32 0, i32 2
  %199 = ptrtoint ptr %vp_reg14.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %198, ptr %vp_reg14.i, align 4
  %common_reg.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %183, i32 0, i32 12
  %200 = ptrtoint ptr %common_reg.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %common_reg.i, align 4
  %common_reg15.i = getelementptr inbounds %struct.__vxge_hw_ring, ptr %call7.i, i32 0, i32 3
  %202 = ptrtoint ptr %common_reg15.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %201, ptr %common_reg15.i, align 8
  %203 = load ptr, ptr %vpath11, align 4
  %sw_stats.i138 = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %203, i32 0, i32 23
  %204 = ptrtoint ptr %sw_stats.i138 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %sw_stats.i138, align 8
  %ring_stats.i = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_info, ptr %205, i32 0, i32 2
  %stats.i139 = getelementptr inbounds %struct.__vxge_hw_ring, ptr %call7.i, i32 0, i32 23
  %206 = ptrtoint ptr %stats.i139 to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %ring_stats.i, ptr %stats.i139, align 128
  %config17.i = getelementptr inbounds %struct.__vxge_hw_ring, ptr %call7.i, i32 0, i32 24
  %207 = ptrtoint ptr %config17.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %ring6.i, ptr %config17.i, align 4
  %208 = ptrtoint ptr %ring_attr to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %ring_attr, align 4
  %callback18.i = getelementptr inbounds %struct.__vxge_hw_ring, ptr %call7.i, i32 0, i32 19
  %210 = ptrtoint ptr %callback18.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %209, ptr %callback18.i, align 8
  %rxd_init.i = getelementptr inbounds %struct.vxge_hw_vpath_attr, ptr %attr, i32 0, i32 1, i32 1
  %211 = ptrtoint ptr %rxd_init.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %rxd_init.i, align 4
  %rxd_init19.i = getelementptr inbounds %struct.__vxge_hw_ring, ptr %call7.i, i32 0, i32 20
  %213 = ptrtoint ptr %rxd_init19.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %212, ptr %rxd_init19.i, align 4
  %rxd_term.i = getelementptr inbounds %struct.vxge_hw_vpath_attr, ptr %attr, i32 0, i32 1, i32 2
  %214 = ptrtoint ptr %rxd_term.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %rxd_term.i, align 4
  %rxd_term20.i = getelementptr inbounds %struct.__vxge_hw_ring, ptr %call7.i, i32 0, i32 21
  %216 = ptrtoint ptr %rxd_term20.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %215, ptr %rxd_term20.i, align 32
  %217 = ptrtoint ptr %buffer_mode.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %buffer_mode.i, align 8
  %buffer_mode22.i = getelementptr inbounds %struct.__vxge_hw_ring, ptr %call7.i, i32 0, i32 5
  %219 = ptrtoint ptr %buffer_mode22.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %218, ptr %buffer_mode22.i, align 16
  %220 = load ptr, ptr %vpath11, align 4
  %tim_rti_cfg1_saved.i = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %220, i32 0, i32 13
  %221 = ptrtoint ptr %tim_rti_cfg1_saved.i to i32
  call void @__asan_load8_noabort(i32 %221)
  %222 = load i64, ptr %tim_rti_cfg1_saved.i, align 64
  %tim_rti_cfg1_saved24.i = getelementptr inbounds %struct.__vxge_hw_ring, ptr %call7.i, i32 0, i32 17
  %223 = ptrtoint ptr %tim_rti_cfg1_saved24.i to i32
  call void @__asan_store8_noabort(i32 %223)
  store i64 %222, ptr %tim_rti_cfg1_saved24.i, align 8
  %224 = load ptr, ptr %vpath11, align 4
  %tim_rti_cfg3_saved.i = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %224, i32 0, i32 14
  %225 = ptrtoint ptr %tim_rti_cfg3_saved.i to i32
  call void @__asan_load8_noabort(i32 %225)
  %226 = load i64, ptr %tim_rti_cfg3_saved.i, align 8
  %tim_rti_cfg3_saved26.i = getelementptr inbounds %struct.__vxge_hw_ring, ptr %call7.i, i32 0, i32 18
  %227 = ptrtoint ptr %tim_rti_cfg3_saved26.i to i32
  call void @__asan_store8_noabort(i32 %227)
  store i64 %226, ptr %tim_rti_cfg3_saved26.i, align 16
  %rxds_limit.i = getelementptr %struct.__vxge_hw_device, ptr %183, i32 0, i32 4, i32 4, i32 %185, i32 2, i32 4
  %228 = ptrtoint ptr %rxds_limit.i to i32
  call void @__asan_load8_noabort(i32 %228)
  %229 = load i64, ptr %rxds_limit.i, align 8
  %rxds_limit27.i = getelementptr inbounds %struct.__vxge_hw_ring, ptr %call7.i, i32 0, i32 15
  %230 = ptrtoint ptr %rxds_limit27.i to i32
  call void @__asan_store8_noabort(i32 %230)
  store i64 %229, ptr %rxds_limit27.i, align 8
  %rxd_size.i = getelementptr inbounds %struct.__vxge_hw_ring, ptr %call7.i, i32 0, i32 6
  %231 = ptrtoint ptr %rxd_size.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 32, ptr %rxd_size.i, align 4
  %232 = ptrtoint ptr %per_rxd_space.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %per_rxd_space.i, align 4
  %add.i = add i32 %233, 12
  %rxd_priv_size.i = getelementptr inbounds %struct.__vxge_hw_ring, ptr %call7.i, i32 0, i32 7
  %234 = ptrtoint ptr %rxd_priv_size.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %add.i, ptr %rxd_priv_size.i, align 8
  %235 = load i32, ptr %per_rxd_space.i, align 4
  %per_rxd_space32.i = getelementptr inbounds %struct.__vxge_hw_ring, ptr %call7.i, i32 0, i32 8
  %236 = ptrtoint ptr %per_rxd_space32.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %235, ptr %per_rxd_space32.i, align 4
  %sub.i140 = add i32 %233, 139
  %div133.i = and i32 %sub.i140, -128
  store i32 %div133.i, ptr %rxd_priv_size.i, align 8
  %rxds_per_block.i = getelementptr inbounds %struct.__vxge_hw_ring, ptr %call7.i, i32 0, i32 9
  %237 = ptrtoint ptr %rxds_per_block.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 127, ptr %rxds_per_block.i, align 32
  %mul41.i = mul i32 %div133.i, 127
  %rxdblock_priv_size.i = getelementptr inbounds %struct.__vxge_hw_ring, ptr %call7.i, i32 0, i32 10
  %238 = ptrtoint ptr %rxdblock_priv_size.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %mul41.i, ptr %rxdblock_priv_size.i, align 4
  %239 = ptrtoint ptr %ring_blocks.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %ring_blocks.i, align 4
  %call47.i = tail call fastcc ptr @__vxge_hw_mempool_create(ptr noundef %183, i32 noundef 4096, i32 noundef 4096, i32 noundef %mul41.i, i32 noundef %240, i32 noundef %240, ptr noundef nonnull @__vxge_hw_ring_create.ring_mp_callback, ptr noundef nonnull %call7.i) #16
  %mempool.i141 = getelementptr inbounds %struct.__vxge_hw_ring, ptr %call7.i, i32 0, i32 1
  %241 = ptrtoint ptr %mempool.i141 to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr %call47.i, ptr %mempool.i141, align 128
  %cmp49.i = icmp eq ptr %call47.i, null
  br i1 %cmp49.i, label %if.then50.i, label %if.end52.i

if.then50.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @__vxge_hw_ring_delete(ptr noundef nonnull %call7) #16
  br label %vpath_open_exit7

if.end52.i:                                       ; preds = %if.end10.i
  %vph.i.i142 = getelementptr inbounds %struct.__vxge_hw_channel, ptr %call7.i, i32 0, i32 3
  %242 = ptrtoint ptr %vph.i.i142 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %vph.i.i142, align 16
  %vpath1.i.i143 = getelementptr inbounds %struct.__vxge_hw_vpath_handle, ptr %243, i32 0, i32 1
  %244 = ptrtoint ptr %vpath1.i.i143 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %vpath1.i.i143, align 4
  %reserve_arr.i.i144 = getelementptr inbounds %struct.__vxge_hw_channel, ptr %call7.i, i32 0, i32 6
  %246 = ptrtoint ptr %reserve_arr.i.i144 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %reserve_arr.i.i144, align 4
  %cmp.not.i.i145 = icmp eq ptr %247, null
  br i1 %cmp.not.i.i145, label %if.end52.i.if.end.i.i159_crit_edge, label %land.lhs.true.i.i148

if.end52.i.if.end.i.i159_crit_edge:               ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i159

land.lhs.true.i.i148:                             ; preds = %if.end52.i
  %orig_arr.i.i146 = getelementptr inbounds %struct.__vxge_hw_channel, ptr %call7.i, i32 0, i32 16
  %248 = ptrtoint ptr %orig_arr.i.i146 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %orig_arr.i.i146, align 4
  %cmp2.not.i.i147 = icmp eq ptr %249, null
  br i1 %cmp2.not.i.i147, label %land.lhs.true.i.i148.if.end.i.i159_crit_edge, label %for.cond.preheader.i.i151

land.lhs.true.i.i148.if.end.i.i159_crit_edge:     ; preds = %land.lhs.true.i.i148
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i159

for.cond.preheader.i.i151:                        ; preds = %land.lhs.true.i.i148
  %length.i.i149 = getelementptr inbounds %struct.__vxge_hw_channel, ptr %call7.i, i32 0, i32 4
  %250 = ptrtoint ptr %length.i.i149 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %length.i.i149, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %251)
  %cmp31.not.i.i150 = icmp eq i32 %251, 0
  br i1 %cmp31.not.i.i150, label %for.cond.preheader.i.i151.if.end.i.i159_crit_edge, label %for.cond.preheader.i.i151.for.body.i.i157_crit_edge

for.cond.preheader.i.i151.for.body.i.i157_crit_edge: ; preds = %for.cond.preheader.i.i151
  br label %for.body.i.i157

for.cond.preheader.i.i151.if.end.i.i159_crit_edge: ; preds = %for.cond.preheader.i.i151
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i159

for.body.i.i157:                                  ; preds = %for.body.i.i157.for.body.i.i157_crit_edge, %for.cond.preheader.i.i151.for.body.i.i157_crit_edge
  %i.02.i.i152 = phi i32 [ %inc.i.i155, %for.body.i.i157.for.body.i.i157_crit_edge ], [ 0, %for.cond.preheader.i.i151.for.body.i.i157_crit_edge ]
  %252 = ptrtoint ptr %reserve_arr.i.i144 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %reserve_arr.i.i144, align 4
  %arrayidx.i.i153 = getelementptr ptr, ptr %253, i32 %i.02.i.i152
  %254 = ptrtoint ptr %arrayidx.i.i153 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %arrayidx.i.i153, align 4
  %256 = ptrtoint ptr %orig_arr.i.i146 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %orig_arr.i.i146, align 4
  %arrayidx6.i.i154 = getelementptr ptr, ptr %257, i32 %i.02.i.i152
  %258 = ptrtoint ptr %arrayidx6.i.i154 to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr %255, ptr %arrayidx6.i.i154, align 4
  %inc.i.i155 = add nuw i32 %i.02.i.i152, 1
  %259 = ptrtoint ptr %length.i.i149 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %length.i.i149, align 4
  %cmp3.i.i156 = icmp ult i32 %inc.i.i155, %260
  br i1 %cmp3.i.i156, label %for.body.i.i157.for.body.i.i157_crit_edge, label %for.body.i.i157.if.end.i.i159_crit_edge

for.body.i.i157.if.end.i.i159_crit_edge:          ; preds = %for.body.i.i157
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i159

for.body.i.i157.for.body.i.i157_crit_edge:        ; preds = %for.body.i.i157
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i157

if.end.i.i159:                                    ; preds = %for.body.i.i157.if.end.i.i159_crit_edge, %for.cond.preheader.i.i151.if.end.i.i159_crit_edge, %land.lhs.true.i.i148.if.end.i.i159_crit_edge, %if.end52.i.if.end.i.i159_crit_edge
  %type.i.i158 = getelementptr inbounds %struct.__vxge_hw_channel, ptr %call7.i, i32 0, i32 1
  %261 = ptrtoint ptr %type.i.i158 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %type.i.i158, align 8
  %263 = zext i32 %262 to i64
  call void @__sanitizer_cov_trace_switch(i64 %263, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %262, label %if.end.i.i159.__vxge_hw_channel_initialize.exit.i_crit_edge [
    i32 1, label %sw.bb.i.i161
    i32 2, label %sw.bb8.i.i163
  ]

if.end.i.i159.__vxge_hw_channel_initialize.exit.i_crit_edge: ; preds = %if.end.i.i159
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_channel_initialize.exit.i

sw.bb.i.i161:                                     ; preds = %if.end.i.i159
  call void @__sanitizer_cov_trace_pc() #18
  %fifoh.i.i160 = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %245, i32 0, i32 18
  br label %sw.epilog.sink.split.i.i166

sw.bb8.i.i163:                                    ; preds = %if.end.i.i159
  call void @__sanitizer_cov_trace_pc() #18
  %ringh.i.i162 = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %245, i32 0, i32 16
  br label %sw.epilog.sink.split.i.i166

sw.epilog.sink.split.i.i166:                      ; preds = %sw.bb8.i.i163, %sw.bb.i.i161
  %ringh.i.sink.i164 = phi ptr [ %ringh.i.i162, %sw.bb8.i.i163 ], [ %fifoh.i.i160, %sw.bb.i.i161 ]
  %264 = ptrtoint ptr %ringh.i.sink.i164 to i32
  call void @__asan_store4_noabort(i32 %264)
  store ptr %call7.i, ptr %ringh.i.sink.i164, align 128
  %265 = ptrtoint ptr %stats.i139 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %stats.i139, align 128
  %stats11.i.i165 = getelementptr inbounds %struct.__vxge_hw_channel, ptr %call7.i, i32 0, i32 21
  %267 = ptrtoint ptr %stats11.i.i165 to i32
  call void @__asan_store4_noabort(i32 %267)
  store ptr %266, ptr %stats11.i.i165, align 32
  br label %__vxge_hw_channel_initialize.exit.i

__vxge_hw_channel_initialize.exit.i:              ; preds = %sw.epilog.sink.split.i.i166, %if.end.i.i159.__vxge_hw_channel_initialize.exit.i_crit_edge
  %268 = ptrtoint ptr %rxd_init19.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %rxd_init19.i, align 4
  %tobool.not.i167 = icmp eq ptr %269, null
  br i1 %tobool.not.i167, label %__vxge_hw_channel_initialize.exit.i.if.end27_crit_edge, label %if.then59.i

__vxge_hw_channel_initialize.exit.i.if.end27_crit_edge: ; preds = %__vxge_hw_channel_initialize.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

if.then59.i:                                      ; preds = %__vxge_hw_channel_initialize.exit.i
  %call60.i = tail call fastcc i32 @vxge_hw_ring_replenish(ptr noundef %call7.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %cmp61.not.i = icmp eq i32 %call60.i, 0
  br i1 %cmp61.not.i, label %if.then59.i.if.end27_crit_edge, label %if.then62.i

if.then59.i.if.end27_crit_edge:                   ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

if.then62.i:                                      ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @__vxge_hw_ring_delete(ptr noundef nonnull %call7) #16
  br label %vpath_open_exit7

if.end27:                                         ; preds = %if.then59.i.if.end27_crit_edge, %__vxge_hw_channel_initialize.exit.i.if.end27_crit_edge
  %270 = ptrtoint ptr %stats.i139 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %stats.i139, align 128
  %usage_cnt.i = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_common_info, ptr %271, i32 0, i32 1
  %272 = ptrtoint ptr %usage_cnt.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 0, ptr %usage_cnt.i, align 4
  %273 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %attr, align 4
  tail call fastcc void @__vxge_hw_vpath_prc_configure(ptr noundef %hldev, i32 noundef %274)
  br label %if.end29

if.end29:                                         ; preds = %if.end27, %if.end19.if.end29_crit_edge
  %275 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %attr, align 4
  %mul = shl i32 %276, 2
  %fifoh = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %1, i32 18
  %277 = ptrtoint ptr %fifoh to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %fifoh, align 128
  %tx_intr_num = getelementptr inbounds %struct.__vxge_hw_fifo, ptr %278, i32 0, i32 12
  %279 = ptrtoint ptr %tx_intr_num to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 %mul, ptr %tx_intr_num, align 16
  %block_size.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 26, i32 1
  %280 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %block_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %281)
  %cmp.i168 = icmp eq i32 %281, 4096
  br i1 %cmp.i168, label %if.then.i, label %if.end29.__vxge_hw_blockpool_block_allocate.exit.thread_crit_edge

if.end29.__vxge_hw_blockpool_block_allocate.exit.thread_crit_edge: ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_blockpool_block_allocate.exit.thread

if.then.i:                                        ; preds = %if.end29
  %free_block_list.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 26, i32 5
  %282 = ptrtoint ptr %free_block_list.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load volatile ptr, ptr %free_block_list.i, align 4
  %cmp.i.i = icmp eq ptr %283, %free_block_list.i
  %cmp4.not.i = icmp eq ptr %283, null
  %or.cond.i169 = or i1 %cmp.i.i, %cmp4.not.i
  br i1 %or.cond.i169, label %if.then.i.__vxge_hw_blockpool_block_allocate.exit.thread_crit_edge, label %if.then5.i

if.then.i.__vxge_hw_blockpool_block_allocate.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_blockpool_block_allocate.exit.thread

if.then5.i:                                       ; preds = %if.then.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %283) #16
  br i1 %call.i.i.i, label %if.end.i.i.i170, label %if.then5.i.if.end35_crit_edge

if.then5.i.if.end35_crit_edge:                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

if.end.i.i.i170:                                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %283, i32 0, i32 1
  %284 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %prev.i.i.i, align 4
  %286 = ptrtoint ptr %283 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %283, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %287, i32 0, i32 1
  %288 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store ptr %285, ptr %prev1.i.i.i.i, align 4
  %289 = ptrtoint ptr %285 to i32
  call void @__asan_store4_noabort(i32 %289)
  store volatile ptr %287, ptr %285, align 4
  br label %if.end35

__vxge_hw_blockpool_block_allocate.exit.thread:   ; preds = %if.then.i.__vxge_hw_blockpool_block_allocate.exit.thread_crit_edge, %if.end29.__vxge_hw_blockpool_block_allocate.exit.thread_crit_edge
  %stats_block187 = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %1, i32 20
  %290 = ptrtoint ptr %stats_block187 to i32
  call void @__asan_store4_noabort(i32 %290)
  store ptr null, ptr %stats_block187, align 4
  br label %vpath_open_exit8

if.end35:                                         ; preds = %if.end.i.i.i170, %if.then5.i.if.end35_crit_edge
  %291 = ptrtoint ptr %283 to i32
  call void @__asan_store4_noabort(i32 %291)
  store ptr inttoptr (i32 256 to ptr), ptr %283, align 4
  %prev.i.i171 = getelementptr inbounds %struct.list_head, ptr %283, i32 0, i32 1
  %292 = ptrtoint ptr %prev.i.i171 to i32
  call void @__asan_store4_noabort(i32 %292)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i171, align 4
  %pool_size.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 26, i32 2
  %293 = ptrtoint ptr %pool_size.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %pool_size.i, align 4
  %dec.i = add i32 %294, -1
  store i32 %dec.i, ptr %pool_size.i, align 4
  %stats_block = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %1, i32 20
  %295 = ptrtoint ptr %stats_block to i32
  call void @__asan_store4_noabort(i32 %295)
  store ptr %283, ptr %stats_block, align 4
  %memblock = getelementptr inbounds %struct.__vxge_hw_blockpool_entry, ptr %283, i32 0, i32 2
  %296 = ptrtoint ptr %memblock to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %memblock, align 4
  %hw_stats = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %1, i32 21
  %298 = ptrtoint ptr %hw_stats to i32
  call void @__asan_store4_noabort(i32 %298)
  store ptr %297, ptr %hw_stats, align 16
  %299 = call ptr @memset(ptr %297, i32 0, i32 624)
  %300 = load ptr, ptr %hw_stats, align 16
  %hw_dev_info_stats = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 27, i32 1
  %301 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %attr, align 4
  %arrayidx40 = getelementptr [17 x ptr], ptr %hw_dev_info_stats, i32 0, i32 %302
  %303 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr %300, ptr %arrayidx40, align 4
  %304 = load i32, ptr %attr, align 4
  %arrayidx44 = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 27, i32 1, i32 1, i32 %304
  %hw_stats_sav = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %1, i32 22
  %305 = ptrtoint ptr %hw_stats_sav to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr %arrayidx44, ptr %hw_stats_sav, align 4
  %306 = call ptr @memset(ptr %arrayidx44, i32 0, i32 624)
  %307 = load ptr, ptr %stats_block, align 4
  %dma_addr = getelementptr inbounds %struct.__vxge_hw_blockpool_entry, ptr %307, i32 0, i32 3
  %308 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %dma_addr, align 4
  %310 = ptrtoint ptr %vp_reg.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %vp_reg.i, align 16
  %stats_cfg = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %311, i32 0, i32 155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  %312 = tail call i32 @llvm.bswap.i32(i32 %309) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %stats_cfg, i32 %312) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %add.ptr.i = getelementptr i8, ptr %stats_cfg, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #16, !srcloc !81
  %313 = ptrtoint ptr %vpath11 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %vpath11, align 4
  %vp_open.i174 = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %314, i32 0, i32 1
  %315 = ptrtoint ptr %vp_open.i174 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %vp_open.i174, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %316)
  %cmp.i175 = icmp eq i32 %316, 0
  br i1 %cmp.i175, label %if.end35.vpath_open_exit8_crit_edge, label %vxge_hw_vpath_stats_enable.exit

if.end35.vpath_open_exit8_crit_edge:              ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  br label %vpath_open_exit8

vxge_hw_vpath_stats_enable.exit:                  ; preds = %if.end35
  %hw_stats_sav.i = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %314, i32 0, i32 22
  %317 = ptrtoint ptr %hw_stats_sav.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %hw_stats_sav.i, align 4
  %hw_stats.i = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %314, i32 0, i32 21
  %319 = ptrtoint ptr %hw_stats.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %hw_stats.i, align 16
  %321 = call ptr @memcpy(ptr %318, ptr %320, i32 624)
  %322 = load ptr, ptr %hw_stats.i, align 16
  %call.i176 = tail call fastcc i32 @__vxge_hw_vpath_stats_get(ptr noundef %314, ptr noundef %322) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i176)
  %cmp48.not = icmp eq i32 %call.i176, 0
  br i1 %cmp48.not, label %if.end51, label %vxge_hw_vpath_stats_enable.exit.vpath_open_exit8_crit_edge

vxge_hw_vpath_stats_enable.exit.vpath_open_exit8_crit_edge: ; preds = %vxge_hw_vpath_stats_enable.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %vpath_open_exit8

if.end51:                                         ; preds = %vxge_hw_vpath_stats_enable.exit
  %323 = ptrtoint ptr %vpath_handles.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %vpath_handles.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7, ptr noundef %vpath_handles.i, ptr noundef %324) #16
  br i1 %call.i.i, label %if.end.i.i179, label %if.end51.list_add.exit_crit_edge

if.end51.list_add.exit_crit_edge:                 ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add.exit

if.end.i.i179:                                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %324, i32 0, i32 1
  %325 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store ptr %call7, ptr %prev1.i.i, align 4
  %326 = ptrtoint ptr %call7 to i32
  call void @__asan_store4_noabort(i32 %326)
  store ptr %324, ptr %call7, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7, i32 0, i32 1
  %327 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store ptr %vpath_handles.i, ptr %prev3.i.i, align 4
  %328 = ptrtoint ptr %vpath_handles.i to i32
  call void @__asan_store4_noabort(i32 %328)
  store volatile ptr %call7, ptr %vpath_handles.i, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i179, %if.end51.list_add.exit_crit_edge
  %329 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %arrayidx, align 128
  %sh_prom = zext i32 %330 to i64
  %shr = lshr i64 -9223372036854775808, %sh_prom
  %vpaths_deployed = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 22
  %331 = ptrtoint ptr %vpaths_deployed to i32
  call void @__asan_load8_noabort(i32 %331)
  %332 = load i64, ptr %vpaths_deployed, align 8
  %or = or i64 %shr, %332
  store i64 %or, ptr %vpaths_deployed, align 8
  %333 = ptrtoint ptr %vpath_handle to i32
  call void @__asan_store4_noabort(i32 %333)
  store ptr %call7, ptr %vpath_handle, align 4
  %334 = ptrtoint ptr %fifoh to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %fifoh, align 128
  %userdata = getelementptr inbounds %struct.vxge_hw_vpath_attr, ptr %attr, i32 0, i32 2, i32 2
  %336 = ptrtoint ptr %userdata to i32
  call void @__asan_store4_noabort(i32 %336)
  store ptr %335, ptr %userdata, align 4
  %ringh = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %1, i32 16
  %337 = ptrtoint ptr %ringh to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %ringh, align 128
  %userdata56 = getelementptr inbounds %struct.vxge_hw_vpath_attr, ptr %attr, i32 0, i32 1, i32 3
  %339 = ptrtoint ptr %userdata56 to i32
  call void @__asan_store4_noabort(i32 %339)
  store ptr %338, ptr %userdata56, align 4
  br label %cleanup

vpath_open_exit8:                                 ; preds = %vxge_hw_vpath_stats_enable.exit.vpath_open_exit8_crit_edge, %if.end35.vpath_open_exit8_crit_edge, %__vxge_hw_blockpool_block_allocate.exit.thread
  %status.0 = phi i32 [ %call.i176, %vxge_hw_vpath_stats_enable.exit.vpath_open_exit8_crit_edge ], [ 202, %__vxge_hw_blockpool_block_allocate.exit.thread ], [ 204, %if.end35.vpath_open_exit8_crit_edge ]
  %ringh57 = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %1, i32 16
  %340 = ptrtoint ptr %ringh57 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %ringh57, align 128
  %cmp58.not = icmp eq ptr %341, null
  br i1 %cmp58.not, label %vpath_open_exit8.vpath_open_exit7_crit_edge, label %if.then60

vpath_open_exit8.vpath_open_exit7_crit_edge:      ; preds = %vpath_open_exit8
  call void @__sanitizer_cov_trace_pc() #18
  br label %vpath_open_exit7

if.then60:                                        ; preds = %vpath_open_exit8
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @__vxge_hw_ring_delete(ptr noundef nonnull %call7)
  br label %vpath_open_exit7

vpath_open_exit7:                                 ; preds = %if.then60, %vpath_open_exit8.vpath_open_exit7_crit_edge, %if.then62.i, %if.then50.i, %if.end.i136.vpath_open_exit7_crit_edge, %if.then23.vpath_open_exit7_crit_edge
  %status.1 = phi i32 [ %status.0, %if.then60 ], [ %status.0, %vpath_open_exit8.vpath_open_exit7_crit_edge ], [ 202, %if.end.i136.vpath_open_exit7_crit_edge ], [ 1, %if.then23.vpath_open_exit7_crit_edge ], [ %call60.i, %if.then62.i ], [ 202, %if.then50.i ]
  %fifoh63 = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %1, i32 18
  %342 = ptrtoint ptr %fifoh63 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %fifoh63, align 128
  %cmp64.not = icmp eq ptr %343, null
  br i1 %cmp64.not, label %vpath_open_exit7.vpath_open_exit6_crit_edge, label %if.then66

vpath_open_exit7.vpath_open_exit6_crit_edge:      ; preds = %vpath_open_exit7
  call void @__sanitizer_cov_trace_pc() #18
  br label %vpath_open_exit6

if.then66:                                        ; preds = %vpath_open_exit7
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @__vxge_hw_fifo_delete(ptr noundef nonnull %call7)
  br label %vpath_open_exit6

vpath_open_exit6:                                 ; preds = %if.then66, %vpath_open_exit7.vpath_open_exit6_crit_edge, %__vxge_hw_fifo_create.exit.thread
  %status.2 = phi i32 [ %status.1, %if.then66 ], [ %status.1, %vpath_open_exit7.vpath_open_exit6_crit_edge ], [ %status.0.i129.ph, %__vxge_hw_fifo_create.exit.thread ]
  tail call void @vfree(ptr noundef nonnull %call7) #16
  br label %vpath_open_exit2

vpath_open_exit2:                                 ; preds = %vpath_open_exit6, %if.end6.vpath_open_exit2_crit_edge
  %status.3 = phi i32 [ %status.2, %vpath_open_exit6 ], [ 202, %if.end6.vpath_open_exit2_crit_edge ]
  %344 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %attr, align 4
  tail call fastcc void @__vxge_hw_vp_terminate(ptr noundef %hldev, i32 noundef %345)
  br label %cleanup

cleanup:                                          ; preds = %vpath_open_exit2, %list_add.exit, %if.then34.i, %if.then8.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add.exit ], [ %status.3, %vpath_open_exit2 ], [ 216, %entry.cleanup_crit_edge ], [ 203, %if.end.cleanup_crit_edge ], [ %call32.i, %if.then34.i ], [ 1, %if.then8.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__vxge_hw_vpath_prc_configure(ptr nocapture noundef readonly %hldev, i32 noundef %vp_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %vp_reg1 = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %vp_id, i32 4
  %0 = ptrtoint ptr %vp_reg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vp_reg1, align 16
  %vp_config2 = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %vp_id, i32 3
  %2 = ptrtoint ptr %vp_config2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vp_config2, align 4
  %ring = getelementptr inbounds %struct.vxge_hw_vp_config, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ring, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %prc_cfg1 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %1, i32 0, i32 9
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %prc_cfg1) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i = getelementptr i32, ptr %prc_cfg1, i32 1
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %8 = zext i32 %7 to i64
  %9 = zext i32 %6 to i64
  %10 = shl nuw i64 %9, 32
  %11 = or i64 %10, %8
  %12 = or i64 %11, 68719476736
  %13 = tail call i64 @llvm.bswap.i64(i64 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  %14 = lshr i64 %12, 32
  %15 = trunc i64 %14 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %prc_cfg1, i32 %15) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %shr.i = lshr i64 %13, 32
  %conv3.i = trunc i64 %shr.i to i32
  %16 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #16, !srcloc !81
  %17 = ptrtoint ptr %vp_reg1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vp_reg1, align 16
  %prc_cfg6 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %18, i32 0, i32 13
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %prc_cfg6) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i66 = getelementptr i32, ptr %prc_cfg6, i32 1
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i66) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %21 = or i32 %20, 4
  %22 = ptrtoint ptr %vp_reg1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vp_reg1, align 16
  %prc_cfg68 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %23, i32 0, i32 13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %prc_cfg68, i32 %19) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %add.ptr.i70 = getelementptr i8, ptr %prc_cfg68, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70, i32 %21) #16, !srcloc !81
  %prc_cfg7 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %1, i32 0, i32 14
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %prc_cfg7) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i71 = getelementptr i32, ptr %prc_cfg7, i32 1
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i71) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %26 = zext i32 %25 to i64
  %27 = zext i32 %24 to i64
  %28 = shl nuw i64 %27, 32
  %29 = or i64 %28, %26
  %30 = tail call i64 @llvm.bswap.i64(i64 %29) #16
  %31 = ptrtoint ptr %vp_config2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vp_config2, align 4
  %scatter_mode = getelementptr inbounds %struct.vxge_hw_vp_config, ptr %32, i32 0, i32 2, i32 3
  %33 = ptrtoint ptr %scatter_mode to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %scatter_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp12.not = icmp eq i32 %34, -1
  %extract92 = lshr i64 %30, 32
  %extract.t93 = trunc i64 %extract92 to i32
  br i1 %cmp12.not, label %if.end.if.end22_crit_edge, label %if.then13

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22

if.then13:                                        ; preds = %if.end
  %and = lshr i64 %30, 32
  %35 = trunc i64 %and to i32
  %extract.t95 = and i32 %35, -50331649
  %36 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %34, label %if.then13.if.end22_crit_edge [
    i32 2, label %sw.bb20
    i32 1, label %sw.bb18
  ]

if.then13.if.end22_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22

sw.bb18:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #18
  %extract.t91 = or i32 %extract.t95, 33554432
  br label %if.end22

sw.bb20:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #18
  %extract.t89 = or i32 %extract.t95, 16777216
  br label %if.end22

if.end22:                                         ; preds = %sw.bb20, %sw.bb18, %if.then13.if.end22_crit_edge, %if.end.if.end22_crit_edge
  %val64.0.off32 = phi i32 [ %extract.t89, %sw.bb20 ], [ %extract.t91, %sw.bb18 ], [ %extract.t93, %if.end.if.end22_crit_edge ], [ %extract.t95, %if.then13.if.end22_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %prc_cfg7, i32 %24) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %37 = tail call i32 @llvm.bswap.i32(i32 %val64.0.off32) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71, i32 %37) #16, !srcloc !81
  %ringh = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %vp_id, i32 16
  %38 = ptrtoint ptr %ringh to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ringh, align 128
  %mempool.i = getelementptr inbounds %struct.__vxge_hw_ring, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %mempool.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mempool.i, align 128
  %memblocks_dma_arr.i = getelementptr inbounds %struct.vxge_hw_mempool, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %memblocks_dma_arr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %memblocks_dma_arr.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %46 = and i32 %45, -8
  %prc_cfg5 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %1, i32 0, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %prc_cfg5, i32 %47) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %add.ptr.i80 = getelementptr i8, ptr %prc_cfg5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80, i32 0) #16, !srcloc !81
  %prc_cfg4 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %1, i32 0, i32 11
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %prc_cfg4) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i81 = getelementptr i32, ptr %prc_cfg4, i32 1
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i81) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %50 = zext i32 %49 to i64
  %51 = zext i32 %48 to i64
  %52 = shl nuw i64 %51, 32
  %53 = or i64 %52, %50
  %54 = tail call i64 @llvm.bswap.i64(i64 %53) #16
  %rth_en = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 4, i32 3
  %55 = ptrtoint ptr %rth_en to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load = load i8, ptr %rth_en, align 4
  %56 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp29 = icmp eq i8 %56, 0
  %or26 = lshr i64 %54, 32
  %57 = trunc i64 %or26 to i32
  %58 = and i32 %57, -16973826
  %. = select i1 %cmp29, i32 16777217, i32 16777216
  %extract.t100 = or i32 %58, %.
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %prc_cfg4, i32 %48) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %59 = tail call i32 @llvm.bswap.i32(i32 %extract.t100) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81, i32 %59) #16, !srcloc !81
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__vxge_hw_ring_delete(ptr nocapture noundef readonly %vp) unnamed_addr #0 align 64 {
entry:
  %rxdh.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %vpath = getelementptr inbounds %struct.__vxge_hw_vpath_handle, ptr %vp, i32 0, i32 1
  %0 = ptrtoint ptr %vpath to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vpath, align 4
  %ringh = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %ringh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ringh, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rxdh.i) #16
  %4 = ptrtoint ptr %rxdh.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %rxdh.i, align 4, !annotation !88
  call void @vxge_hw_channel_dtr_try_complete(ptr noundef %3, ptr noundef nonnull %rxdh.i) #16
  %5 = ptrtoint ptr %rxdh.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rxdh.i, align 4
  %cmp1.i = icmp eq ptr %6, null
  br i1 %cmp1.i, label %entry.__vxge_hw_ring_abort.exit_crit_edge, label %if.end.lr.ph.i

entry.__vxge_hw_ring_abort.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_ring_abort.exit

if.end.lr.ph.i:                                   ; preds = %entry
  %rxd_term.i = getelementptr inbounds %struct.__vxge_hw_ring, ptr %3, i32 0, i32 21
  %userdata.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %3, i32 0, i32 18
  br label %if.end.i

if.end.i:                                         ; preds = %if.end4.i.if.end.i_crit_edge, %if.end.lr.ph.i
  call void @vxge_hw_channel_dtr_complete(ptr noundef %3) #16
  %7 = ptrtoint ptr %rxd_term.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rxd_term.i, align 32
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %rxdh.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rxdh.i, align 4
  %11 = ptrtoint ptr %userdata.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %userdata.i, align 4
  call void %8(ptr noundef %10, i32 noundef 2, ptr noundef %12) #16
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %13 = ptrtoint ptr %rxdh.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rxdh.i, align 4
  call void @vxge_hw_channel_dtr_free(ptr noundef %3, ptr noundef %14) #16
  call void @vxge_hw_channel_dtr_try_complete(ptr noundef %3, ptr noundef nonnull %rxdh.i) #16
  %15 = ptrtoint ptr %rxdh.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rxdh.i, align 4
  %cmp.i = icmp eq ptr %16, null
  br i1 %cmp.i, label %if.end4.i.__vxge_hw_ring_abort.exit_crit_edge, label %if.end4.i.if.end.i_crit_edge

if.end4.i.if.end.i_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.end4.i.__vxge_hw_ring_abort.exit_crit_edge:    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_ring_abort.exit

__vxge_hw_ring_abort.exit:                        ; preds = %if.end4.i.__vxge_hw_ring_abort.exit_crit_edge, %entry.__vxge_hw_ring_abort.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rxdh.i) #16
  %mempool = getelementptr inbounds %struct.__vxge_hw_ring, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %mempool to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mempool, align 128
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %__vxge_hw_ring_abort.exit.if.end_crit_edge, label %if.then

__vxge_hw_ring_abort.exit.if.end_crit_edge:       ; preds = %__vxge_hw_ring_abort.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %__vxge_hw_ring_abort.exit
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @__vxge_hw_mempool_destroy(ptr noundef nonnull %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %__vxge_hw_ring_abort.exit.if.end_crit_edge
  %19 = ptrtoint ptr %vpath to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vpath, align 4
  %ringh3 = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %20, i32 0, i32 16
  %21 = ptrtoint ptr %ringh3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %ringh3, align 128
  %work_arr.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %3, i32 0, i32 9
  %22 = ptrtoint ptr %work_arr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %work_arr.i, align 8
  call void @kfree(ptr noundef %23) #16
  %free_arr.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %3, i32 0, i32 14
  %24 = ptrtoint ptr %free_arr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %free_arr.i, align 4
  call void @kfree(ptr noundef %25) #16
  %reserve_arr.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %3, i32 0, i32 6
  %26 = ptrtoint ptr %reserve_arr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reserve_arr.i, align 4
  call void @kfree(ptr noundef %27) #16
  %orig_arr.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %3, i32 0, i32 16
  %28 = ptrtoint ptr %orig_arr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %orig_arr.i, align 4
  call void @kfree(ptr noundef %29) #16
  call void @kfree(ptr noundef %3) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__vxge_hw_fifo_delete(ptr nocapture noundef readonly %vp) unnamed_addr #0 align 64 {
entry:
  %txdlh.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %vpath = getelementptr inbounds %struct.__vxge_hw_vpath_handle, ptr %vp, i32 0, i32 1
  %0 = ptrtoint ptr %vpath to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vpath, align 4
  %fifoh = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %fifoh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fifoh, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %txdlh.i) #16
  %4 = ptrtoint ptr %txdlh.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %txdlh.i, align 4, !annotation !88
  call void @vxge_hw_channel_dtr_try_complete(ptr noundef %3, ptr noundef nonnull %txdlh.i) #16
  %5 = ptrtoint ptr %txdlh.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %txdlh.i, align 4
  %cmp1.i = icmp eq ptr %6, null
  br i1 %cmp1.i, label %entry.__vxge_hw_fifo_abort.exit_crit_edge, label %if.end.lr.ph.i

entry.__vxge_hw_fifo_abort.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_fifo_abort.exit

if.end.lr.ph.i:                                   ; preds = %entry
  %txdl_term.i = getelementptr inbounds %struct.__vxge_hw_fifo, ptr %3, i32 0, i32 17
  %userdata.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %3, i32 0, i32 18
  br label %if.end.i

if.end.i:                                         ; preds = %if.end5.i.if.end.i_crit_edge, %if.end.lr.ph.i
  call void @vxge_hw_channel_dtr_complete(ptr noundef %3) #16
  %7 = ptrtoint ptr %txdl_term.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %txdl_term.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then2.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %txdlh.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %txdlh.i, align 4
  %11 = ptrtoint ptr %userdata.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %userdata.i, align 4
  call void %8(ptr noundef %10, i32 noundef 2, ptr noundef %12) #16
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then2.i, %if.end.i.if.end5.i_crit_edge
  %13 = ptrtoint ptr %txdlh.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %txdlh.i, align 4
  call void @vxge_hw_channel_dtr_free(ptr noundef %3, ptr noundef %14) #16
  call void @vxge_hw_channel_dtr_try_complete(ptr noundef %3, ptr noundef nonnull %txdlh.i) #16
  %15 = ptrtoint ptr %txdlh.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %txdlh.i, align 4
  %cmp.i = icmp eq ptr %16, null
  br i1 %cmp.i, label %if.end5.i.__vxge_hw_fifo_abort.exit_crit_edge, label %if.end5.i.if.end.i_crit_edge

if.end5.i.if.end.i_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.end5.i.__vxge_hw_fifo_abort.exit_crit_edge:    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_fifo_abort.exit

__vxge_hw_fifo_abort.exit:                        ; preds = %if.end5.i.__vxge_hw_fifo_abort.exit_crit_edge, %entry.__vxge_hw_fifo_abort.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %txdlh.i) #16
  %mempool = getelementptr inbounds %struct.__vxge_hw_fifo, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %mempool to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mempool, align 128
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %__vxge_hw_fifo_abort.exit.if.end_crit_edge, label %if.then

__vxge_hw_fifo_abort.exit.if.end_crit_edge:       ; preds = %__vxge_hw_fifo_abort.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %__vxge_hw_fifo_abort.exit
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @__vxge_hw_mempool_destroy(ptr noundef nonnull %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %__vxge_hw_fifo_abort.exit.if.end_crit_edge
  %19 = ptrtoint ptr %vpath to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vpath, align 4
  %fifoh3 = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %20, i32 0, i32 18
  %21 = ptrtoint ptr %fifoh3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %fifoh3, align 128
  %work_arr.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %3, i32 0, i32 9
  %22 = ptrtoint ptr %work_arr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %work_arr.i, align 8
  call void @kfree(ptr noundef %23) #16
  %free_arr.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %3, i32 0, i32 14
  %24 = ptrtoint ptr %free_arr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %free_arr.i, align 4
  call void @kfree(ptr noundef %25) #16
  %reserve_arr.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %3, i32 0, i32 6
  %26 = ptrtoint ptr %reserve_arr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reserve_arr.i, align 4
  call void @kfree(ptr noundef %27) #16
  %orig_arr.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %3, i32 0, i32 16
  %28 = ptrtoint ptr %orig_arr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %orig_arr.i, align 4
  call void @kfree(ptr noundef %29) #16
  call void @kfree(ptr noundef %3) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__vxge_hw_vp_terminate(ptr noundef %hldev, i32 noundef %vp_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %vp_id
  %vp_open = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %vp_id, i32 1
  %0 = ptrtoint ptr %vp_open to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vp_open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp2 = icmp ult i32 %3, 16
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %mul.neg = mul nsw i32 %3, -4
  %sub5 = add nsw i32 %mul.neg, 60
  %sh_prom = zext i32 %sub5 to i64
  %shl = shl nuw i64 8, %sh_prom
  %neg = xor i64 %shl, -1
  %hldev6 = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %vp_id, i32 2
  %4 = ptrtoint ptr %hldev6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hldev6, align 8
  %tim_int_mask0 = getelementptr inbounds %struct.__vxge_hw_device, ptr %5, i32 0, i32 24
  %6 = ptrtoint ptr %tim_int_mask0 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %tim_int_mask0, align 8
  %and = and i64 %7, %neg
  store i64 %and, ptr %tim_int_mask0, align 8
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 128
  %mul9.neg = mul i32 %9, -4
  %sub11 = add i32 %mul9.neg, 60
  %sh_prom12 = zext i32 %sub11 to i64
  %shl13 = shl i64 4, %sh_prom12
  %neg14 = xor i64 %shl13, -1
  %10 = load ptr, ptr %hldev6, align 8
  %arrayidx17 = getelementptr %struct.__vxge_hw_device, ptr %10, i32 0, i32 24, i32 1
  %11 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx17, align 8
  %and18 = and i64 %12, %neg14
  store i64 %and18, ptr %arrayidx17, align 8
  br label %if.end24

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %hldev19 = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %vp_id, i32 2
  %13 = ptrtoint ptr %hldev19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hldev19, align 8
  %tim_int_mask1 = getelementptr inbounds %struct.__vxge_hw_device, ptr %14, i32 0, i32 25
  %15 = ptrtoint ptr %tim_int_mask1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %tim_int_mask1, align 8
  %16 = load ptr, ptr %hldev19, align 8
  %arrayidx23 = getelementptr %struct.__vxge_hw_device, ptr %16, i32 0, i32 25, i32 1
  %17 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %arrayidx23, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then3
  %hw_dev_info_stats = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 27, i32 1
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 128
  %arrayidx26 = getelementptr [17 x ptr], ptr %hw_dev_info_stats, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx26, align 4
  %lock = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %vp_id, i32 24
  tail call void @_raw_spin_lock(ptr noundef %lock) #16
  %21 = ptrtoint ptr %vp_open to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %vp_open, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  %vpmgmt_reg = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %vp_id, i32 5
  %ringh = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %vp_id, i32 16
  %22 = ptrtoint ptr %ringh to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %ringh, align 128
  %fifoh = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %vp_id, i32 18
  %23 = call ptr @memset(ptr %vpmgmt_reg, i32 0, i32 24)
  %24 = call ptr @memset(ptr %fifoh, i32 0, i32 28)
  br label %exit

exit:                                             ; preds = %if.end24, %entry.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vxge_hw_vpath_rx_doorbell_init(ptr nocapture noundef readonly %vp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %vpath1 = getelementptr inbounds %struct.__vxge_hw_vpath_handle, ptr %vp, i32 0, i32 1
  %0 = ptrtoint ptr %vpath1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vpath1, align 4
  %ringh = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %ringh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ringh, align 128
  %hldev = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %hldev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hldev, align 8
  %ndev = getelementptr inbounds %struct.__vxge_hw_device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev, align 4
  %titan1 = getelementptr i8, ptr %7, i32 3586
  %8 = ptrtoint ptr %titan1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %titan1, align 2
  %9 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %vp_reg = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %vp_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vp_reg, align 16
  %rxdmem_size = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %11, i32 0, i32 18
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxdmem_size) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i55 = getelementptr i32, ptr %rxdmem_size, i32 1
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %14 = zext i32 %12 to i64
  %15 = shl nuw i64 %14, 32
  %16 = and i64 %15, -63331869759897600
  %17 = tail call i64 @llvm.bswap.i64(i64 %16)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %config = getelementptr inbounds %struct.__vxge_hw_ring, ptr %3, i32 0, i32 24
  %18 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %config, align 4
  %ring_blocks = getelementptr inbounds %struct.vxge_hw_ring_config, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %ring_blocks to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ring_blocks, align 4
  %22 = shl i32 %21, 9
  %div52 = and i32 %22, 536870400
  %conv = zext i32 %div52 to i64
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %new_count.0 = phi i64 [ %17, %if.then ], [ %conv, %if.else ]
  %vp_reg4 = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %vp_reg4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vp_reg4, align 16
  %prc_rxd_doorbell = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %24, i32 0, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  %conv.i = trunc i64 %new_count.0 to i32
  %25 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %prc_rxd_doorbell, i32 %25) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %shr.i = lshr i64 %new_count.0, 32
  %conv3.i = trunc i64 %shr.i to i32
  %26 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #16
  %add.ptr.i56 = getelementptr i8, ptr %prc_rxd_doorbell, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %26) #16, !srcloc !81
  %27 = ptrtoint ptr %vp_reg4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vp_reg4, align 16
  %prc_rxd_doorbell6 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %28, i32 0, i32 16
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %prc_rxd_doorbell6) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !94
  %div953 = lshr i64 %new_count.0, 1
  %30 = ptrtoint ptr %vp_reg4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vp_reg4, align 16
  %prc_cfg6 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %31, i32 0, i32 13
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %prc_cfg6) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i57 = getelementptr i32, ptr %prc_cfg6, i32 1
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i57) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %sub = add nsw i64 %new_count.0, -1
  %34 = tail call i64 @llvm.umin.i64(i64 %div953, i64 %sub)
  %div1654 = lshr i64 %34, 2
  %rxds_limit = getelementptr inbounds %struct.__vxge_hw_ring, ptr %3, i32 0, i32 15
  %35 = ptrtoint ptr %rxds_limit to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %rxds_limit, align 8
  %37 = tail call i64 @llvm.umin.i64(i64 %36, i64 %div1654)
  %38 = tail call i64 @llvm.umax.i64(i64 %37, i64 4)
  %39 = ptrtoint ptr %rxds_limit to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %rxds_limit, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_vpath_close(ptr noundef %vp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %vpath1 = getelementptr inbounds %struct.__vxge_hw_vpath_handle, ptr %vp, i32 0, i32 1
  %0 = ptrtoint ptr %vpath1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vpath1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 128
  %hldev = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %hldev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hldev, align 8
  %vp_open = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %vp_open to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vp_open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %entry.vpath_close_exit_crit_edge, label %if.end

entry.vpath_close_exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %vpath_close_exit

if.end:                                           ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vp) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %vp, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vp, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %14 = ptrtoint ptr %vp to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %vp, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %vp, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %vpath_handles = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 19
  %16 = ptrtoint ptr %vpath_handles to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %vpath_handles, align 4
  %cmp.i.not = icmp eq ptr %17, %vpath_handles
  br i1 %cmp.i.not, label %if.end10, label %if.then4

if.then4:                                         ; preds = %list_del.exit
  %call.i.i39 = tail call zeroext i1 @__list_add_valid(ptr noundef %vp, ptr noundef %vpath_handles, ptr noundef %17) #16
  br i1 %call.i.i39, label %if.end.i.i40, label %if.then4.vpath_close_exit_crit_edge

if.then4.vpath_close_exit_crit_edge:              ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  br label %vpath_close_exit

if.end.i.i40:                                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %vp, ptr %prev1.i.i, align 4
  %19 = ptrtoint ptr %vp to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %vp, align 4
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %vpath_handles, ptr %prev.i, align 4
  %21 = ptrtoint ptr %vpath_handles to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %vp, ptr %vpath_handles, align 4
  br label %vpath_close_exit

if.end10:                                         ; preds = %list_del.exit
  %sh_prom = zext i32 %3 to i64
  %shr = lshr i64 -9223372036854775808, %sh_prom
  %neg = xor i64 %shr, -1
  %vpaths_deployed = getelementptr inbounds %struct.__vxge_hw_device, ptr %5, i32 0, i32 22
  %22 = ptrtoint ptr %vpaths_deployed to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %vpaths_deployed, align 8
  %and = and i64 %23, %neg
  store i64 %and, ptr %vpaths_deployed, align 8
  %ringh = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 16
  %24 = ptrtoint ptr %ringh to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ringh, align 128
  %cmp11.not = icmp eq ptr %25, null
  br i1 %cmp11.not, label %if.end10.if.end14_crit_edge, label %if.then12

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @__vxge_hw_ring_delete(ptr noundef %vp)
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10.if.end14_crit_edge
  %fifoh = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 18
  %26 = ptrtoint ptr %fifoh to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fifoh, align 128
  %cmp15.not = icmp eq ptr %27, null
  br i1 %cmp15.not, label %if.end14.if.end18_crit_edge, label %if.then16

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @__vxge_hw_fifo_delete(ptr noundef %vp)
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end14.if.end18_crit_edge
  %stats_block = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 20
  %28 = ptrtoint ptr %stats_block to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %stats_block, align 4
  %cmp19.not = icmp eq ptr %29, null
  br i1 %cmp19.not, label %if.end18.if.end22_crit_edge, label %if.then20

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22

if.then20:                                        ; preds = %if.end18
  %length.i = getelementptr inbounds %struct.__vxge_hw_blockpool_entry, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %length.i, align 4
  %block_size.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %5, i32 0, i32 26, i32 1
  %32 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %block_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp.i41 = icmp eq i32 %31, %33
  br i1 %cmp.i41, label %if.then.i, label %if.then20.__vxge_hw_blockpool_block_free.exit_crit_edge

if.then20.__vxge_hw_blockpool_block_free.exit_crit_edge: ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_blockpool_block_free.exit

if.then.i:                                        ; preds = %if.then20
  %free_block_list.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %5, i32 0, i32 26, i32 5
  %34 = ptrtoint ptr %free_block_list.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %free_block_list.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %29, ptr noundef %free_block_list.i, ptr noundef %35) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_add.exit.i_crit_edge

if.then.i.list_add.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i.i42 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i42 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %29, ptr %prev1.i.i.i42, align 4
  %37 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %35, ptr %29, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %38 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %free_block_list.i, ptr %prev3.i.i.i, align 4
  %39 = ptrtoint ptr %free_block_list.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %29, ptr %free_block_list.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_add.exit.i_crit_edge
  %pool_size.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %5, i32 0, i32 26, i32 2
  %40 = ptrtoint ptr %pool_size.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pool_size.i, align 4
  %inc.i = add i32 %41, 1
  store i32 %inc.i, ptr %pool_size.i, align 4
  br label %__vxge_hw_blockpool_block_free.exit

__vxge_hw_blockpool_block_free.exit:              ; preds = %list_add.exit.i, %if.then20.__vxge_hw_blockpool_block_free.exit_crit_edge
  %block_pool.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %5, i32 0, i32 26
  tail call fastcc void @__vxge_hw_blockpool_blocks_remove(ptr noundef %block_pool.i) #16
  br label %if.end22

if.end22:                                         ; preds = %__vxge_hw_blockpool_block_free.exit, %if.end18.if.end22_crit_edge
  tail call void @vfree(ptr noundef %vp) #16
  tail call fastcc void @__vxge_hw_vp_terminate(ptr noundef %5, i32 noundef %3)
  br label %vpath_close_exit

vpath_close_exit:                                 ; preds = %if.end22, %if.end.i.i40, %if.then4.vpath_close_exit_crit_edge, %entry.vpath_close_exit_crit_edge
  %status.0 = phi i32 [ 0, %if.end22 ], [ 204, %entry.vpath_close_exit_crit_edge ], [ 1, %if.then4.vpath_close_exit_crit_edge ], [ 1, %if.end.i.i40 ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_vpath_reset(ptr nocapture noundef readonly %vp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %vpath1 = getelementptr inbounds %struct.__vxge_hw_vpath_handle, ptr %vp, i32 0, i32 1
  %0 = ptrtoint ptr %vpath1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vpath1, align 4
  %vp_open = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vp_open to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vp_open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 128
  %hldev = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %hldev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hldev, align 8
  %sub.i = sub i32 16, %5
  %8 = shl i32 32768, %sub.i
  %common_reg.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %7, i32 0, i32 12
  %9 = ptrtoint ptr %common_reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %common_reg.i, align 4
  %cmn_rsthdlr_cfg0.i = getelementptr inbounds %struct.vxge_hw_common_reg, ptr %10, i32 0, i32 27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !91
  tail call void @arm_heavy_mb() #16
  %11 = tail call i32 @llvm.bswap.i32(i32 %8) #16
  %add.ptr.i.i = getelementptr i8, ptr %cmn_rsthdlr_cfg0.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %11) #16, !srcloc !81
  %sw_stats = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 23
  %12 = ptrtoint ptr %sw_stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sw_stats, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %13, align 4
  br label %exit

exit:                                             ; preds = %if.end, %entry.exit_crit_edge
  %status.0 = phi i32 [ 0, %if.end ], [ 204, %entry.exit_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_vpath_recover_from_reset(ptr nocapture noundef readonly %vp) local_unnamed_addr #0 align 64 {
entry:
  %txdlh.i.i.i = alloca ptr, align 4
  %rxdh.i.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %vpath1 = getelementptr inbounds %struct.__vxge_hw_vpath_handle, ptr %vp, i32 0, i32 1
  %0 = ptrtoint ptr %vpath1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vpath1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 128
  %hldev4 = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %hldev4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hldev4, align 8
  %vp_open = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %vp_open to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vp_open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end:                                           ; preds = %entry
  %common_reg.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %5, i32 0, i32 12
  %8 = ptrtoint ptr %common_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %common_reg.i, align 4
  %vpath_rst_in_prog.i = getelementptr inbounds %struct.vxge_hw_common_reg, ptr %9, i32 0, i32 59
  %sub.i = sub i32 16, %3
  %shl.i = shl nuw i32 1, %sub.i
  %conv5.i = zext i32 %shl.i to i64
  %shl1.i = shl i64 %conv5.i, 47
  %config.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %config.i, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 2147480) #16
  %add.ptr.i.i.i = getelementptr i32, ptr %vpath_rst_in_prog.i, i32 1
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i.do.body.i.i_crit_edge, %if.end
  %i.0.i.i = phi i32 [ 0, %if.end ], [ %inc.i.i, %if.end.i.i.do.body.i.i_crit_edge ]
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vpath_rst_in_prog.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %15 = zext i32 %14 to i64
  %16 = tail call i64 @llvm.bswap.i64(i64 %15) #16
  %and.i.i = and i64 %16, %shl1.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.if.end7_crit_edge, label %if.end.i.i

do.body.i.i.if.end7_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.end.i.i:                                       ; preds = %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 21474800) #16
  %inc.i.i = add nuw nsw i32 %i.0.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 10
  br i1 %exitcond.not.i.i, label %if.end.i.i.do.body1.i.i_crit_edge, label %if.end.i.i.do.body.i.i_crit_edge

if.end.i.i.do.body.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i

if.end.i.i.do.body1.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %do.body1.i.i

do.body1.i.i:                                     ; preds = %if.end6.i.i.do.body1.i.i_crit_edge, %if.end.i.i.do.body1.i.i_crit_edge
  %i.1.i.i = phi i32 [ %inc8.i.i, %if.end6.i.i.do.body1.i.i_crit_edge ], [ 0, %if.end.i.i.do.body1.i.i_crit_edge ]
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vpath_rst_in_prog.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %20 = zext i32 %19 to i64
  %21 = tail call i64 @llvm.bswap.i64(i64 %20) #16
  %and3.i.i = and i64 %21, %shl1.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3.i.i)
  %tobool4.not.i.i = icmp eq i64 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %do.body1.i.i.if.end7_crit_edge, label %if.end6.i.i

do.body1.i.i.if.end7_crit_edge:                   ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.end6.i.i:                                      ; preds = %do.body1.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #16
  %inc8.i.i = add i32 %i.1.i.i, 1
  %cmp9.not.i.i = icmp ugt i32 %inc8.i.i, %11
  br i1 %cmp9.not.i.i, label %if.end6.i.i.exit_crit_edge, label %if.end6.i.i.do.body1.i.i_crit_edge

if.end6.i.i.do.body1.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body1.i.i

if.end6.i.i.exit_crit_edge:                       ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end7:                                          ; preds = %do.body1.i.i.if.end7_crit_edge, %do.body.i.i.if.end7_crit_edge
  %ringh.i = getelementptr %struct.__vxge_hw_device, ptr %5, i32 0, i32 20, i32 %3, i32 16
  %23 = ptrtoint ptr %ringh.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ringh.i, align 128
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.end7.if.end3.i_crit_edge, label %if.then.i

if.end7.if.end3.i_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3.i

if.then.i:                                        ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rxdh.i.i.i) #16
  %25 = ptrtoint ptr %rxdh.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 -1 to ptr), ptr %rxdh.i.i.i, align 4, !annotation !88
  call void @vxge_hw_channel_dtr_try_complete(ptr noundef nonnull %24, ptr noundef nonnull %rxdh.i.i.i) #16
  %26 = ptrtoint ptr %rxdh.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rxdh.i.i.i, align 4
  %cmp1.i.i.i = icmp eq ptr %27, null
  br i1 %cmp1.i.i.i, label %if.then.i.__vxge_hw_ring_abort.exit.i.i_crit_edge, label %if.end.lr.ph.i.i.i

if.then.i.__vxge_hw_ring_abort.exit.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_ring_abort.exit.i.i

if.end.lr.ph.i.i.i:                               ; preds = %if.then.i
  %rxd_term.i.i.i = getelementptr inbounds %struct.__vxge_hw_ring, ptr %24, i32 0, i32 21
  %userdata.i.i.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %24, i32 0, i32 18
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.end4.i.i.i.if.end.i.i.i_crit_edge, %if.end.lr.ph.i.i.i
  call void @vxge_hw_channel_dtr_complete(ptr noundef nonnull %24) #16
  %28 = ptrtoint ptr %rxd_term.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rxd_term.i.i.i, align 32
  %tobool.not.i.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.if.end4.i.i.i_crit_edge, label %if.then2.i.i.i

if.end.i.i.i.if.end4.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %30 = ptrtoint ptr %rxdh.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rxdh.i.i.i, align 4
  %32 = ptrtoint ptr %userdata.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %userdata.i.i.i, align 4
  call void %29(ptr noundef %31, i32 noundef 2, ptr noundef %33) #16
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %if.then2.i.i.i, %if.end.i.i.i.if.end4.i.i.i_crit_edge
  %34 = ptrtoint ptr %rxdh.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rxdh.i.i.i, align 4
  call void @vxge_hw_channel_dtr_free(ptr noundef nonnull %24, ptr noundef %35) #16
  call void @vxge_hw_channel_dtr_try_complete(ptr noundef nonnull %24, ptr noundef nonnull %rxdh.i.i.i) #16
  %36 = ptrtoint ptr %rxdh.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rxdh.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %37, null
  br i1 %cmp.i.i.i, label %if.end4.i.i.i.__vxge_hw_ring_abort.exit.i.i_crit_edge, label %if.end4.i.i.i.if.end.i.i.i_crit_edge

if.end4.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i.i

if.end4.i.i.i.__vxge_hw_ring_abort.exit.i.i_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_ring_abort.exit.i.i

__vxge_hw_ring_abort.exit.i.i:                    ; preds = %if.end4.i.i.i.__vxge_hw_ring_abort.exit.i.i_crit_edge, %if.then.i.__vxge_hw_ring_abort.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rxdh.i.i.i) #16
  %length.i.i.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %24, i32 0, i32 4
  %38 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %length.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp1.not6.i.i.i = icmp eq i32 %39, 0
  br i1 %cmp1.not6.i.i.i, label %__vxge_hw_ring_abort.exit.i.i.__vxge_hw_channel_reset.exit.i.i_crit_edge, label %for.body.lr.ph.i.i.i

__vxge_hw_ring_abort.exit.i.i.__vxge_hw_channel_reset.exit.i.i_crit_edge: ; preds = %__vxge_hw_ring_abort.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_channel_reset.exit.i.i

for.body.lr.ph.i.i.i:                             ; preds = %__vxge_hw_ring_abort.exit.i.i
  %reserve_arr.i.i.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %24, i32 0, i32 6
  %orig_arr.i.i.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %24, i32 0, i32 16
  %free_arr.i.i.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %24, i32 0, i32 14
  %work_arr.i.i.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %24, i32 0, i32 9
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.02.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %40 = ptrtoint ptr %reserve_arr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reserve_arr.i.i.i, align 4
  %cmp1.not.i.i.i = icmp eq ptr %41, null
  br i1 %cmp1.not.i.i.i, label %for.body.i.i.i.if.end.i13.i.i_crit_edge, label %if.then.i.i.i

for.body.i.i.i.if.end.i13.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i13.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %42 = ptrtoint ptr %orig_arr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %orig_arr.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr ptr, ptr %43, i32 %i.02.i.i.i
  %44 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i.i.i, align 4
  %arrayidx3.i.i.i = getelementptr ptr, ptr %41, i32 %i.02.i.i.i
  %46 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %arrayidx3.i.i.i, align 4
  br label %if.end.i13.i.i

if.end.i13.i.i:                                   ; preds = %if.then.i.i.i, %for.body.i.i.i.if.end.i13.i.i_crit_edge
  %47 = ptrtoint ptr %free_arr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %free_arr.i.i.i, align 4
  %cmp4.not.i.i.i = icmp eq ptr %48, null
  br i1 %cmp4.not.i.i.i, label %if.end.i13.i.i.if.end8.i.i.i_crit_edge, label %if.then5.i.i.i

if.end.i13.i.i.if.end8.i.i.i_crit_edge:           ; preds = %if.end.i13.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i.i.i

if.then5.i.i.i:                                   ; preds = %if.end.i13.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx7.i.i.i = getelementptr ptr, ptr %48, i32 %i.02.i.i.i
  %49 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %arrayidx7.i.i.i, align 4
  br label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %if.then5.i.i.i, %if.end.i13.i.i.if.end8.i.i.i_crit_edge
  %50 = ptrtoint ptr %work_arr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %work_arr.i.i.i, align 8
  %cmp9.not.i.i.i = icmp eq ptr %51, null
  br i1 %cmp9.not.i.i.i, label %if.end8.i.i.i.for.inc.i.i.i_crit_edge, label %if.then10.i.i.i

if.end8.i.i.i.for.inc.i.i.i_crit_edge:            ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i.i

if.then10.i.i.i:                                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx12.i.i.i = getelementptr ptr, ptr %51, i32 %i.02.i.i.i
  %52 = ptrtoint ptr %arrayidx12.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %arrayidx12.i.i.i, align 4
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then10.i.i.i, %if.end8.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw i32 %i.02.i.i.i, 1
  %53 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %length.i.i.i, align 4
  %cmp.i14.i.i = icmp ult i32 %inc.i.i.i, %54
  br i1 %cmp.i14.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, label %for.inc.i.i.i.__vxge_hw_channel_reset.exit.i.i_crit_edge

for.inc.i.i.i.__vxge_hw_channel_reset.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_channel_reset.exit.i.i

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i.i

__vxge_hw_channel_reset.exit.i.i:                 ; preds = %for.inc.i.i.i.__vxge_hw_channel_reset.exit.i.i_crit_edge, %__vxge_hw_ring_abort.exit.i.i.__vxge_hw_channel_reset.exit.i.i_crit_edge
  %.lcssa.i.i.i = phi i32 [ 0, %__vxge_hw_ring_abort.exit.i.i.__vxge_hw_channel_reset.exit.i.i_crit_edge ], [ %54, %for.inc.i.i.i.__vxge_hw_channel_reset.exit.i.i_crit_edge ]
  %free_ptr.i.i.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %24, i32 0, i32 15
  %55 = ptrtoint ptr %free_ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %.lcssa.i.i.i, ptr %free_ptr.i.i.i, align 8
  %reserve_ptr.i.i.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %24, i32 0, i32 7
  %56 = ptrtoint ptr %reserve_ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %.lcssa.i.i.i, ptr %reserve_ptr.i.i.i, align 32
  %reserve_top.i.i.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %24, i32 0, i32 8
  %57 = ptrtoint ptr %reserve_top.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %reserve_top.i.i.i, align 4
  %post_index.i.i.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %24, i32 0, i32 11
  %58 = ptrtoint ptr %post_index.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %post_index.i.i.i, align 128
  %compl_index.i.i.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %24, i32 0, i32 13
  %59 = ptrtoint ptr %compl_index.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %compl_index.i.i.i, align 128
  %rxd_init.i.i = getelementptr inbounds %struct.__vxge_hw_ring, ptr %24, i32 0, i32 20
  %60 = ptrtoint ptr %rxd_init.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rxd_init.i.i, align 4
  %tobool.not.i.i36 = icmp eq ptr %61, null
  br i1 %tobool.not.i.i36, label %__vxge_hw_channel_reset.exit.i.i.if.end3.i_crit_edge, label %__vxge_hw_ring_reset.exit.i

__vxge_hw_channel_reset.exit.i.i.if.end3.i_crit_edge: ; preds = %__vxge_hw_channel_reset.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3.i

__vxge_hw_ring_reset.exit.i:                      ; preds = %__vxge_hw_channel_reset.exit.i.i
  %call4.i.i = call fastcc i32 @vxge_hw_ring_replenish(ptr noundef nonnull %24) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp.not.i = icmp eq i32 %call4.i.i, 0
  br i1 %cmp.not.i, label %__vxge_hw_ring_reset.exit.i.if.end3.i_crit_edge, label %__vxge_hw_ring_reset.exit.i.exit_crit_edge

__vxge_hw_ring_reset.exit.i.exit_crit_edge:       ; preds = %__vxge_hw_ring_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

__vxge_hw_ring_reset.exit.i.if.end3.i_crit_edge:  ; preds = %__vxge_hw_ring_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3.i

if.end3.i:                                        ; preds = %__vxge_hw_ring_reset.exit.i.if.end3.i_crit_edge, %__vxge_hw_channel_reset.exit.i.i.if.end3.i_crit_edge, %if.end7.if.end3.i_crit_edge
  %fifoh.i = getelementptr %struct.__vxge_hw_device, ptr %5, i32 0, i32 20, i32 %3, i32 18
  %62 = ptrtoint ptr %fifoh.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %fifoh.i, align 128
  %tobool4.not.i = icmp eq ptr %63, null
  br i1 %tobool4.not.i, label %if.end3.i.if.end11_crit_edge, label %if.then5.i

if.end3.i.if.end11_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then5.i:                                       ; preds = %if.end3.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %txdlh.i.i.i) #16
  %64 = ptrtoint ptr %txdlh.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 -1 to ptr), ptr %txdlh.i.i.i, align 4, !annotation !88
  call void @vxge_hw_channel_dtr_try_complete(ptr noundef nonnull %63, ptr noundef nonnull %txdlh.i.i.i) #16
  %65 = ptrtoint ptr %txdlh.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %txdlh.i.i.i, align 4
  %cmp1.i.i14.i = icmp eq ptr %66, null
  br i1 %cmp1.i.i14.i, label %if.then5.i.__vxge_hw_fifo_abort.exit.i.i_crit_edge, label %if.end.lr.ph.i.i16.i

if.then5.i.__vxge_hw_fifo_abort.exit.i.i_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_fifo_abort.exit.i.i

if.end.lr.ph.i.i16.i:                             ; preds = %if.then5.i
  %txdl_term.i.i.i = getelementptr inbounds %struct.__vxge_hw_fifo, ptr %63, i32 0, i32 17
  %userdata.i.i15.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %63, i32 0, i32 18
  br label %if.end.i.i18.i

if.end.i.i18.i:                                   ; preds = %if.end5.i.i.i.if.end.i.i18.i_crit_edge, %if.end.lr.ph.i.i16.i
  call void @vxge_hw_channel_dtr_complete(ptr noundef nonnull %63) #16
  %67 = ptrtoint ptr %txdl_term.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %txdl_term.i.i.i, align 4
  %tobool.not.i.i17.i = icmp eq ptr %68, null
  br i1 %tobool.not.i.i17.i, label %if.end.i.i18.i.if.end5.i.i.i_crit_edge, label %if.then2.i.i19.i

if.end.i.i18.i.if.end5.i.i.i_crit_edge:           ; preds = %if.end.i.i18.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5.i.i.i

if.then2.i.i19.i:                                 ; preds = %if.end.i.i18.i
  call void @__sanitizer_cov_trace_pc() #18
  %69 = ptrtoint ptr %txdlh.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %txdlh.i.i.i, align 4
  %71 = ptrtoint ptr %userdata.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %userdata.i.i15.i, align 4
  call void %68(ptr noundef %70, i32 noundef 2, ptr noundef %72) #16
  br label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.then2.i.i19.i, %if.end.i.i18.i.if.end5.i.i.i_crit_edge
  %73 = ptrtoint ptr %txdlh.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %txdlh.i.i.i, align 4
  call void @vxge_hw_channel_dtr_free(ptr noundef nonnull %63, ptr noundef %74) #16
  call void @vxge_hw_channel_dtr_try_complete(ptr noundef nonnull %63, ptr noundef nonnull %txdlh.i.i.i) #16
  %75 = ptrtoint ptr %txdlh.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %txdlh.i.i.i, align 4
  %cmp.i.i20.i = icmp eq ptr %76, null
  br i1 %cmp.i.i20.i, label %if.end5.i.i.i.__vxge_hw_fifo_abort.exit.i.i_crit_edge, label %if.end5.i.i.i.if.end.i.i18.i_crit_edge

if.end5.i.i.i.if.end.i.i18.i_crit_edge:           ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i18.i

if.end5.i.i.i.__vxge_hw_fifo_abort.exit.i.i_crit_edge: ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_fifo_abort.exit.i.i

__vxge_hw_fifo_abort.exit.i.i:                    ; preds = %if.end5.i.i.i.__vxge_hw_fifo_abort.exit.i.i_crit_edge, %if.then5.i.__vxge_hw_fifo_abort.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %txdlh.i.i.i) #16
  %length.i.i21.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %63, i32 0, i32 4
  %77 = ptrtoint ptr %length.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %length.i.i21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp1.not6.i.i22.i = icmp eq i32 %78, 0
  br i1 %cmp1.not6.i.i22.i, label %__vxge_hw_fifo_abort.exit.i.i.__vxge_hw_fifo_reset.exit.i_crit_edge, label %for.body.lr.ph.i.i27.i

__vxge_hw_fifo_abort.exit.i.i.__vxge_hw_fifo_reset.exit.i_crit_edge: ; preds = %__vxge_hw_fifo_abort.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_fifo_reset.exit.i

for.body.lr.ph.i.i27.i:                           ; preds = %__vxge_hw_fifo_abort.exit.i.i
  %reserve_arr.i.i23.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %63, i32 0, i32 6
  %orig_arr.i.i24.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %63, i32 0, i32 16
  %free_arr.i.i25.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %63, i32 0, i32 14
  %work_arr.i.i26.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %63, i32 0, i32 9
  br label %for.body.i.i30.i

for.body.i.i30.i:                                 ; preds = %for.inc.i.i42.i.for.body.i.i30.i_crit_edge, %for.body.lr.ph.i.i27.i
  %i.02.i.i28.i = phi i32 [ 0, %for.body.lr.ph.i.i27.i ], [ %inc.i.i41.i, %for.inc.i.i42.i.for.body.i.i30.i_crit_edge ]
  %79 = ptrtoint ptr %reserve_arr.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %reserve_arr.i.i23.i, align 4
  %cmp1.not.i.i29.i = icmp eq ptr %80, null
  br i1 %cmp1.not.i.i29.i, label %for.body.i.i30.i.if.end.i1.i.i_crit_edge, label %if.then.i.i33.i

for.body.i.i30.i.if.end.i1.i.i_crit_edge:         ; preds = %for.body.i.i30.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i1.i.i

if.then.i.i33.i:                                  ; preds = %for.body.i.i30.i
  call void @__sanitizer_cov_trace_pc() #18
  %81 = ptrtoint ptr %orig_arr.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %orig_arr.i.i24.i, align 4
  %arrayidx.i.i31.i = getelementptr ptr, ptr %82, i32 %i.02.i.i28.i
  %83 = ptrtoint ptr %arrayidx.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.i.i31.i, align 4
  %arrayidx3.i.i32.i = getelementptr ptr, ptr %80, i32 %i.02.i.i28.i
  %85 = ptrtoint ptr %arrayidx3.i.i32.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %84, ptr %arrayidx3.i.i32.i, align 4
  br label %if.end.i1.i.i

if.end.i1.i.i:                                    ; preds = %if.then.i.i33.i, %for.body.i.i30.i.if.end.i1.i.i_crit_edge
  %86 = ptrtoint ptr %free_arr.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %free_arr.i.i25.i, align 4
  %cmp4.not.i.i34.i = icmp eq ptr %87, null
  br i1 %cmp4.not.i.i34.i, label %if.end.i1.i.i.if.end8.i.i38.i_crit_edge, label %if.then5.i.i36.i

if.end.i1.i.i.if.end8.i.i38.i_crit_edge:          ; preds = %if.end.i1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i.i38.i

if.then5.i.i36.i:                                 ; preds = %if.end.i1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx7.i.i35.i = getelementptr ptr, ptr %87, i32 %i.02.i.i28.i
  %88 = ptrtoint ptr %arrayidx7.i.i35.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %arrayidx7.i.i35.i, align 4
  br label %if.end8.i.i38.i

if.end8.i.i38.i:                                  ; preds = %if.then5.i.i36.i, %if.end.i1.i.i.if.end8.i.i38.i_crit_edge
  %89 = ptrtoint ptr %work_arr.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %work_arr.i.i26.i, align 8
  %cmp9.not.i.i37.i = icmp eq ptr %90, null
  br i1 %cmp9.not.i.i37.i, label %if.end8.i.i38.i.for.inc.i.i42.i_crit_edge, label %if.then10.i.i40.i

if.end8.i.i38.i.for.inc.i.i42.i_crit_edge:        ; preds = %if.end8.i.i38.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i42.i

if.then10.i.i40.i:                                ; preds = %if.end8.i.i38.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx12.i.i39.i = getelementptr ptr, ptr %90, i32 %i.02.i.i28.i
  %91 = ptrtoint ptr %arrayidx12.i.i39.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %arrayidx12.i.i39.i, align 4
  br label %for.inc.i.i42.i

for.inc.i.i42.i:                                  ; preds = %if.then10.i.i40.i, %if.end8.i.i38.i.for.inc.i.i42.i_crit_edge
  %inc.i.i41.i = add nuw i32 %i.02.i.i28.i, 1
  %92 = ptrtoint ptr %length.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %length.i.i21.i, align 4
  %cmp.i2.i.i = icmp ult i32 %inc.i.i41.i, %93
  br i1 %cmp.i2.i.i, label %for.inc.i.i42.i.for.body.i.i30.i_crit_edge, label %for.inc.i.i42.i.__vxge_hw_fifo_reset.exit.i_crit_edge

for.inc.i.i42.i.__vxge_hw_fifo_reset.exit.i_crit_edge: ; preds = %for.inc.i.i42.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_fifo_reset.exit.i

for.inc.i.i42.i.for.body.i.i30.i_crit_edge:       ; preds = %for.inc.i.i42.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i30.i

__vxge_hw_fifo_reset.exit.i:                      ; preds = %for.inc.i.i42.i.__vxge_hw_fifo_reset.exit.i_crit_edge, %__vxge_hw_fifo_abort.exit.i.i.__vxge_hw_fifo_reset.exit.i_crit_edge
  %.lcssa.i.i43.i = phi i32 [ 0, %__vxge_hw_fifo_abort.exit.i.i.__vxge_hw_fifo_reset.exit.i_crit_edge ], [ %93, %for.inc.i.i42.i.__vxge_hw_fifo_reset.exit.i_crit_edge ]
  %free_ptr.i.i44.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %63, i32 0, i32 15
  %94 = ptrtoint ptr %free_ptr.i.i44.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %.lcssa.i.i43.i, ptr %free_ptr.i.i44.i, align 8
  %reserve_ptr.i.i45.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %63, i32 0, i32 7
  %95 = ptrtoint ptr %reserve_ptr.i.i45.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %.lcssa.i.i43.i, ptr %reserve_ptr.i.i45.i, align 32
  %reserve_top.i.i46.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %63, i32 0, i32 8
  %96 = ptrtoint ptr %reserve_top.i.i46.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %reserve_top.i.i46.i, align 4
  %post_index.i.i47.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %63, i32 0, i32 11
  %97 = ptrtoint ptr %post_index.i.i47.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %post_index.i.i47.i, align 128
  %compl_index.i.i48.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %63, i32 0, i32 13
  %98 = ptrtoint ptr %compl_index.i.i48.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %compl_index.i.i48.i, align 128
  br label %if.end11

if.end11:                                         ; preds = %__vxge_hw_fifo_reset.exit.i, %if.end3.i.if.end11_crit_edge
  %call12 = call fastcc i32 @__vxge_hw_vpath_initialize(ptr noundef %5, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13.not = icmp eq i32 %call12, 0
  br i1 %cmp13.not, label %if.end15, label %if.end11.exit_crit_edge

if.end11.exit_crit_edge:                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end15:                                         ; preds = %if.end11
  %ringh = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 16
  %99 = ptrtoint ptr %ringh to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ringh, align 128
  %cmp16.not = icmp eq ptr %100, null
  br i1 %cmp16.not, label %if.end15.if.end18_crit_edge, label %if.then17

if.end15.if.end18_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @__vxge_hw_vpath_prc_configure(ptr noundef %5, i32 noundef %3)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end15.if.end18_crit_edge
  %hw_stats = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 21
  %101 = ptrtoint ptr %hw_stats to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %hw_stats, align 16
  %103 = call ptr @memset(ptr %102, i32 0, i32 624)
  %hw_stats_sav = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 22
  %104 = ptrtoint ptr %hw_stats_sav to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %hw_stats_sav, align 4
  %106 = call ptr @memset(ptr %105, i32 0, i32 624)
  %stats_block = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 20
  %107 = ptrtoint ptr %stats_block to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %stats_block, align 4
  %dma_addr = getelementptr inbounds %struct.__vxge_hw_blockpool_entry, ptr %108, i32 0, i32 3
  %109 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %dma_addr, align 4
  %vp_reg = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 4
  %111 = ptrtoint ptr %vp_reg to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %vp_reg, align 16
  %stats_cfg = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %112, i32 0, i32 155
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  call void @arm_heavy_mb() #16
  %113 = call i32 @llvm.bswap.i32(i32 %110) #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %stats_cfg, i32 %113) #16, !srcloc !81
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  call void @arm_heavy_mb() #16
  %add.ptr.i = getelementptr i8, ptr %stats_cfg, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #16, !srcloc !81
  %114 = ptrtoint ptr %vpath1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %vpath1, align 4
  %vp_open.i = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %vp_open.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %vp_open.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp.i = icmp eq i32 %117, 0
  br i1 %cmp.i, label %if.end18.exit_crit_edge, label %if.end.i

if.end18.exit_crit_edge:                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  %hw_stats_sav.i = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %115, i32 0, i32 22
  %118 = ptrtoint ptr %hw_stats_sav.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %hw_stats_sav.i, align 4
  %hw_stats.i = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %115, i32 0, i32 21
  %120 = ptrtoint ptr %hw_stats.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %hw_stats.i, align 16
  %122 = call ptr @memcpy(ptr %119, ptr %121, i32 624)
  %123 = load ptr, ptr %hw_stats.i, align 16
  %call.i = call fastcc i32 @__vxge_hw_vpath_stats_get(ptr noundef %115, ptr noundef %123) #16
  br label %exit

exit:                                             ; preds = %if.end.i, %if.end18.exit_crit_edge, %if.end11.exit_crit_edge, %__vxge_hw_ring_reset.exit.i.exit_crit_edge, %if.end6.i.i.exit_crit_edge, %entry.exit_crit_edge
  %status.0 = phi i32 [ %call12, %if.end11.exit_crit_edge ], [ 204, %entry.exit_crit_edge ], [ %call4.i.i, %__vxge_hw_ring_reset.exit.i.exit_crit_edge ], [ %call.i, %if.end.i ], [ 204, %if.end18.exit_crit_edge ], [ 1, %if.end6.i.i.exit_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__vxge_hw_vpath_initialize(ptr noundef %hldev, i32 noundef %vp_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %vpath_assignments = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 21
  %0 = ptrtoint ptr %vpath_assignments to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %vpath_assignments, align 128
  %sh_prom = zext i32 %vp_id to i64
  %shr = lshr i64 -9223372036854775808, %sh_prom
  %and = and i64 %1, %shr
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end:                                           ; preds = %entry
  %vp_reg1 = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %vp_id, i32 4
  %2 = ptrtoint ptr %vp_reg1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vp_reg1, align 16
  %vp_config2.i = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %vp_id, i32 3
  %4 = ptrtoint ptr %vp_config2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vp_config2.i, align 4
  %vsport_number.i = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %vp_id, i32 8
  %6 = ptrtoint ptr %vsport_number.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vsport_number.i, align 32
  %xmac_vsport_choice.i = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %3, i32 0, i32 46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %xmac_vsport_choice.i, i32 0) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %8 = and i32 %7, 255
  %add.ptr.i.i = getelementptr i8, ptr %xmac_vsport_choice.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %8) #16, !srcloc !81
  %ring.i = getelementptr inbounds %struct.vxge_hw_vp_config, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ring.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.i = icmp eq i32 %10, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.__vxge_hw_vpath_mac_configure.exit_crit_edge

if.end.__vxge_hw_vpath_mac_configure.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_vpath_mac_configure.exit

if.then.i:                                        ; preds = %if.end
  %xmac_rpa_vcfg.i = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %3, i32 0, i32 39
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %xmac_rpa_vcfg.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i1.i = getelementptr i32, ptr %xmac_rpa_vcfg.i, i32 1
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %rpa_strip_vlan_tag.i = getelementptr inbounds %struct.vxge_hw_vp_config, ptr %5, i32 0, i32 7
  %13 = ptrtoint ptr %rpa_strip_vlan_tag.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rpa_strip_vlan_tag.i, align 8
  %15 = call i32 @llvm.bswap.i32(i32 %12)
  %16 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %14, label %if.then8.i [
    i32 -1, label %if.then.i.if.end9.i_crit_edge
    i32 0, label %if.else.i
  ]

if.then.i.if.end9.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.i

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %extract.t18.i = or i32 %15, 256
  br label %if.end9.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %extract.t20.i = and i32 %15, -257
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else.i, %if.then8.i, %if.then.i.if.end9.i_crit_edge
  %val64.0.off32.i = phi i32 [ %extract.t18.i, %if.then8.i ], [ %extract.t20.i, %if.else.i ], [ %15, %if.then.i.if.end9.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %xmac_rpa_vcfg.i, i32 %11) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %17 = tail call i32 @llvm.bswap.i32(i32 %val64.0.off32.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i, i32 %17) #16, !srcloc !81
  %rxmac_vcfg0.i = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %3, i32 0, i32 40
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxmac_vcfg0.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i6.i = getelementptr i32, ptr %rxmac_vcfg0.i, i32 1
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %20 = zext i32 %19 to i64
  %21 = tail call i64 @llvm.bswap.i64(i64 %20) #16
  %mtu.i = getelementptr inbounds %struct.vxge_hw_vp_config, ptr %5, i32 0, i32 6
  %22 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mtu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp12.not.i = icmp eq i32 %23, -1
  %extract29.i = lshr exact i64 %21, 32
  %extract.t30.i = trunc i64 %extract29.i to i32
  br i1 %cmp12.not.i, label %if.end9.i.if.end31.i_crit_edge, label %if.then14.i

if.end9.i.if.end31.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31.i

if.then14.i:                                      ; preds = %if.end9.i
  %and15.i = and i64 %21, -4611404547745644544
  %add.i = add i32 %23, 26
  %max_mtu.i = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %vp_id, i32 7
  %24 = ptrtoint ptr %max_mtu.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_mtu.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %25)
  %cmp17.i = icmp ult i32 %add.i, %25
  br i1 %cmp17.i, label %if.then19.i, label %if.else25.i

if.then19.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv22.i = zext i32 %add.i to i64
  %shl23.i = shl i64 %conv22.i, 48
  %or24.i = or i64 %shl23.i, %and15.i
  %extract.i = lshr exact i64 %or24.i, 32
  %extract.t26.i = trunc i64 %extract.i to i32
  br label %if.end31.i

if.else25.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv27.i = zext i32 %25 to i64
  %shl28.i = shl i64 %conv27.i, 48
  %or29.i = or i64 %shl28.i, %and15.i
  %extract27.i = lshr exact i64 %or29.i, 32
  %extract.t28.i = trunc i64 %extract27.i to i32
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.else25.i, %if.then19.i, %if.end9.i.if.end31.i_crit_edge
  %val64.1.off32.i = phi i32 [ %extract.t26.i, %if.then19.i ], [ %extract.t28.i, %if.else25.i ], [ %extract.t30.i, %if.end9.i.if.end31.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxmac_vcfg0.i, i32 %18) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %26 = tail call i32 @llvm.bswap.i32(i32 %val64.1.off32.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %26) #16, !srcloc !81
  %rxmac_vcfg1.i = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %3, i32 0, i32 41
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxmac_vcfg1.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i11.i = getelementptr i32, ptr %rxmac_vcfg1.i, i32 1
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %29 = zext i32 %28 to i64
  %30 = zext i32 %27 to i64
  %31 = shl nuw i64 %30, 32
  %.masked.i = and i64 %31, -53880364728320
  %32 = or i64 %.masked.i, %29
  %33 = tail call i64 @llvm.bswap.i64(i64 %32) #16
  %rth_it_type.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 4, i32 3
  %34 = ptrtoint ptr %rth_it_type.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load.i = load i8, ptr %rth_it_type.i, align 4
  %35 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp35.not.i = icmp eq i8 %35, 0
  %or38.i = or i64 %33, 2162688
  %spec.select.i = select i1 %cmp35.not.i, i64 %33, i64 %or38.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  %conv.i12.i = trunc i64 %spec.select.i to i32
  %36 = tail call i32 @llvm.bswap.i32(i32 %conv.i12.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxmac_vcfg1.i, i32 %36) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %shr.i13.i = lshr i64 %spec.select.i, 32
  %conv3.i14.i = trunc i64 %shr.i13.i to i32
  %37 = tail call i32 @llvm.bswap.i32(i32 %conv3.i14.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %37) #16, !srcloc !81
  br label %__vxge_hw_vpath_mac_configure.exit

__vxge_hw_vpath_mac_configure.exit:               ; preds = %if.end31.i, %if.end.__vxge_hw_vpath_mac_configure.exit_crit_edge
  %38 = ptrtoint ptr %vp_reg1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vp_reg1, align 16
  %legacy_reg.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 10
  %40 = ptrtoint ptr %legacy_reg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %legacy_reg.i, align 4
  %pifm_wr_swap_en.i.i = getelementptr inbounds %struct.vxge_hw_legacy_reg, ptr %41, i32 0, i32 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pifm_wr_swap_en.i.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i.i.i = getelementptr i32, ptr %pifm_wr_swap_en.i.i, i32 1
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %44 = zext i32 %43 to i64
  %45 = zext i32 %42 to i64
  %46 = shl nuw i64 %45, 32
  %47 = or i64 %46, %44
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %47)
  %cmp.i.i = icmp eq i64 %47, -1
  br i1 %cmp.i.i, label %if.then.i.i, label %__vxge_hw_vpath_mac_configure.exit.__vxge_hw_kdfc_swapper_set.exit.i_crit_edge

__vxge_hw_vpath_mac_configure.exit.__vxge_hw_kdfc_swapper_set.exit.i_crit_edge: ; preds = %__vxge_hw_vpath_mac_configure.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_kdfc_swapper_set.exit.i

if.then.i.i:                                      ; preds = %__vxge_hw_vpath_mac_configure.exit
  call void @__sanitizer_cov_trace_pc() #18
  %kdfcctl_cfg0.i.i = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %39, i32 0, i32 153
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %kdfcctl_cfg0.i.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i1.i.i = getelementptr i32, ptr %kdfcctl_cfg0.i.i, i32 1
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1.i.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !95
  tail call void @arm_heavy_mb() #16
  %50 = or i32 %49, 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %kdfcctl_cfg0.i.i, i32 %48) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i.i, i32 %50) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !96
  tail call void @arm_heavy_mb() #16
  br label %__vxge_hw_kdfc_swapper_set.exit.i

__vxge_hw_kdfc_swapper_set.exit.i:                ; preds = %if.then.i.i, %__vxge_hw_vpath_mac_configure.exit.__vxge_hw_kdfc_swapper_set.exit.i_crit_edge
  %kdfc_drbl_triplet_total.i = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %39, i32 0, i32 33
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %kdfc_drbl_triplet_total.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i.i53 = getelementptr i32, ptr %kdfc_drbl_triplet_total.i, i32 1
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i53) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %53 = zext i32 %52 to i64
  %54 = zext i32 %51 to i64
  %55 = shl nuw i64 %54, 32
  %56 = or i64 %55, %53
  %57 = tail call i64 @llvm.bswap.i64(i64 %56) #16
  %add.i54 = add i64 %57, 1
  %sum.shift.i = lshr i64 %add.i54, 33
  %conv60.i = trunc i64 %sum.shift.i to i32
  %div59.i = and i32 %conv60.i, 16383
  %max_kdfc_db.i = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %vp_id, i32 9
  %58 = ptrtoint ptr %max_kdfc_db.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %div59.i, ptr %max_kdfc_db.i, align 4
  %59 = ptrtoint ptr %vp_config2.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %vp_config2.i, align 4
  %fifo.i = getelementptr inbounds %struct.vxge_hw_vp_config, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %fifo.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp3.i = icmp eq i32 %62, 1
  %extract.t70.i = trunc i64 %57 to i32
  %extract72.i = lshr i64 %57, 32
  %extract.t73.i = trunc i64 %extract72.i to i32
  br i1 %cmp3.i, label %if.then5.i, label %__vxge_hw_kdfc_swapper_set.exit.i.if.end12_crit_edge

__vxge_hw_kdfc_swapper_set.exit.i.if.end12_crit_edge: ; preds = %__vxge_hw_kdfc_swapper_set.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.then5.i:                                       ; preds = %__vxge_hw_kdfc_swapper_set.exit.i
  %max_nofl_db.i = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %vp_id, i32 10
  %63 = ptrtoint ptr %max_nofl_db.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %div59.i, ptr %max_nofl_db.i, align 8
  %memblock_size.i = getelementptr inbounds %struct.vxge_hw_vp_config, ptr %60, i32 0, i32 3, i32 3
  %64 = ptrtoint ptr %memblock_size.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %memblock_size.i, align 4
  %max_frags.i = getelementptr inbounds %struct.vxge_hw_vp_config, ptr %60, i32 0, i32 3, i32 2
  %66 = ptrtoint ptr %max_frags.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %max_frags.i, align 8
  %mul.i = shl i32 %67, 5
  %div12.i = udiv i32 %65, %mul.i
  %fifo_blocks.i = getelementptr inbounds %struct.vxge_hw_vp_config, ptr %60, i32 0, i32 3, i32 1
  %68 = ptrtoint ptr %fifo_blocks.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %fifo_blocks.i, align 4
  %mul15.i = mul i32 %69, %div12.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div59.i, i32 %mul15.i)
  %cmp16.i = icmp ult i32 %div59.i, %mul15.i
  br i1 %cmp16.i, label %if.then5.i.exit_crit_edge, label %if.end19.i

if.then5.i.exit_crit_edge:                        ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end19.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #18
  %mul21.i = shl nuw nsw i32 %div59.i, 1
  %sub.i = add nsw i32 %mul21.i, -1
  br label %if.end12

if.end12:                                         ; preds = %if.end19.i, %__vxge_hw_kdfc_swapper_set.exit.i.if.end12_crit_edge
  %val64.0.off0.i = phi i32 [ 0, %if.end19.i ], [ %extract.t70.i, %__vxge_hw_kdfc_swapper_set.exit.i.if.end12_crit_edge ]
  %val64.0.off32.i55 = phi i32 [ %sub.i, %if.end19.i ], [ %extract.t73.i, %__vxge_hw_kdfc_swapper_set.exit.i.if.end12_crit_edge ]
  %kdfc_fifo_trpl_partition.i = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %39, i32 0, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  %70 = tail call i32 @llvm.bswap.i32(i32 %val64.0.off0.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %kdfc_fifo_trpl_partition.i, i32 %70) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %71 = tail call i32 @llvm.bswap.i32(i32 %val64.0.off32.i55) #16
  %add.ptr.i61.i = getelementptr i8, ptr %kdfc_fifo_trpl_partition.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.i, i32 %71) #16, !srcloc !81
  %kdfc_fifo_trpl_ctrl.i = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %39, i32 0, i32 25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %kdfc_fifo_trpl_ctrl.i, i32 0) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %add.ptr.i62.i = getelementptr i8, ptr %kdfc_fifo_trpl_ctrl.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62.i, i32 1) #16, !srcloc !81
  %kdfc_trpl_fifo_0_ctrl.i = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %39, i32 0, i32 26
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %kdfc_trpl_fifo_0_ctrl.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i63.i = getelementptr i32, ptr %kdfc_trpl_fifo_0_ctrl.i, i32 1
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %74 = zext i32 %73 to i64
  %75 = zext i32 %72 to i64
  %76 = shl nuw i64 %75, 32
  %77 = or i64 %76, %74
  %78 = and i64 %77, -1095216661249
  %79 = or i64 %78, 256
  %80 = tail call i64 @llvm.bswap.i64(i64 %79) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  %81 = lshr i64 %78, 32
  %82 = trunc i64 %81 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %kdfc_trpl_fifo_0_ctrl.i, i32 %82) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %shr.i65.i = lshr i64 %80, 32
  %conv3.i66.i = trunc i64 %shr.i65.i to i32
  %83 = tail call i32 @llvm.bswap.i32(i32 %conv3.i66.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63.i, i32 %83) #16, !srcloc !81
  %kdfc_trpl_fifo_0_wb_address.i = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %39, i32 0, i32 29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %kdfc_trpl_fifo_0_wb_address.i, i32 0) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %add.ptr.i68.i = getelementptr i8, ptr %kdfc_trpl_fifo_0_wb_address.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68.i, i32 0) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !97
  tail call void @arm_heavy_mb() #16
  %toc_reg.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 11
  %84 = ptrtoint ptr %toc_reg.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %toc_reg.i, align 8
  %toc_kdfc_vpath_stride.i = getelementptr inbounds %struct.vxge_hw_toc_reg, ptr %85, i32 0, i32 14
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %toc_kdfc_vpath_stride.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i69.i = getelementptr i32, ptr %toc_kdfc_vpath_stride.i, i32 1
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i69.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %88 = tail call i32 @llvm.bswap.i32(i32 %86) #16
  %kdfc.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 17
  %89 = ptrtoint ptr %kdfc.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %kdfc.i, align 16
  %idx.ext.i = mul i32 %88, %vp_id
  %add.ptr.i = getelementptr i8, ptr %90, i32 %idx.ext.i
  %nofl_db.i = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %vp_id, i32 6
  %91 = ptrtoint ptr %nofl_db.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %add.ptr.i, ptr %nofl_db.i, align 8
  %92 = ptrtoint ptr %vp_reg1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %vp_reg1, align 16
  %94 = ptrtoint ptr %vp_config2.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %vp_config2.i, align 4
  %tim_dest_addr.i = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %93, i32 0, i32 15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tim_dest_addr.i, i32 0) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %add.ptr.i.i58 = getelementptr i8, ptr %tim_dest_addr.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i58, i32 0) #16, !srcloc !81
  %tim_vpath_map.i = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %93, i32 0, i32 70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tim_vpath_map.i, i32 0) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %add.ptr.i1.i59 = getelementptr i8, ptr %tim_vpath_map.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i59, i32 0) #16, !srcloc !81
  %tim_bitmap.i = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %93, i32 0, i32 67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tim_bitmap.i, i32 0) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %add.ptr.i2.i = getelementptr i8, ptr %tim_bitmap.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 0) #16, !srcloc !81
  %tim_remap.i = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %93, i32 0, i32 69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tim_remap.i, i32 0) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %add.ptr.i3.i = getelementptr i8, ptr %tim_remap.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 0) #16, !srcloc !81
  %ring.i60 = getelementptr inbounds %struct.vxge_hw_vp_config, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %ring.i60 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %ring.i60, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %97)
  %cmp.i61 = icmp eq i32 %97, 1
  br i1 %cmp.i61, label %if.then.i63, label %if.end12.if.end.i_crit_edge

if.end12.if.end.i_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then.i63:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  %tim_ring_assn.i = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %93, i32 0, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tim_ring_assn.i, i32 0) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %98 = shl i32 %vp_id, 2
  %add.i62 = and i32 %98, 252
  %99 = or i32 %add.i62, 1
  %add.ptr.i4.i = getelementptr i8, ptr %tim_ring_assn.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %99) #16, !srcloc !81
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i63, %if.end12.if.end.i_crit_edge
  %tim_pci_cfg.i = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %93, i32 0, i32 71
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tim_pci_cfg.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i5.i = getelementptr i32, ptr %tim_pci_cfg.i, i32 1
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %102 = or i32 %101, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tim_pci_cfg.i, i32 %100) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %102) #16, !srcloc !81
  %fifo.i64 = getelementptr inbounds %struct.vxge_hw_vp_config, ptr %95, i32 0, i32 3
  %103 = ptrtoint ptr %fifo.i64 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %fifo.i64, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %104)
  %cmp4.i = icmp eq i32 %104, 1
  br i1 %cmp4.i, label %if.then6.i, label %if.end.i.if.end174.i_crit_edge

if.end.i.if.end174.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end174.i

if.then6.i:                                       ; preds = %if.end.i
  %tim_cfg1_int_num.i = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %93, i32 0, i32 63
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tim_cfg1_int_num.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i10.i = getelementptr i32, ptr %tim_cfg1_int_num.i, i32 1
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %107 = zext i32 %106 to i64
  %108 = zext i32 %105 to i64
  %109 = shl nuw i64 %108, 32
  %110 = or i64 %109, %107
  %111 = tail call i64 @llvm.bswap.i64(i64 %110) #16
  %btimer_val.i = getelementptr inbounds %struct.vxge_hw_vp_config, ptr %95, i32 0, i32 4, i32 1
  %112 = ptrtoint ptr %btimer_val.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %btimer_val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %113)
  %cmp9.not.i = icmp eq i32 %113, -1
  br i1 %cmp9.not.i, label %if.then6.i.if.end17.i_crit_edge, label %if.then11.i

if.then6.i.if.end17.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17.i

if.then11.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #18
  %and.i = and i64 %111, -288230371856744449
  %conv14.i = zext i32 %113 to i64
  %shl15.i = shl nuw i64 %conv14.i, 32
  %or16.i = or i64 %and.i, %shl15.i
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then11.i, %if.then6.i.if.end17.i_crit_edge
  %val64.0.i = phi i64 [ %or16.i, %if.then11.i ], [ %111, %if.then6.i.if.end17.i_crit_edge ]
  %and18.i = and i64 %val64.0.i, -268435457
  %timer_ac_en.i = getelementptr inbounds %struct.vxge_hw_vp_config, ptr %95, i32 0, i32 4, i32 2
  %114 = ptrtoint ptr %timer_ac_en.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %timer_ac_en.i, align 4
  %116 = zext i32 %115 to i64
  call void @__sanitizer_cov_trace_switch(i64 %116, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %115, label %if.then25.i [
    i32 -1, label %if.end17.i.if.end29.i_crit_edge
    i32 0, label %if.else.i65
  ]

if.end17.i.if.end29.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29.i

if.then25.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #18
  %or26.i = or i64 %and18.i, 33554432
  br label %if.end29.i

if.else.i65:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #18
  %and27.i = and i64 %val64.0.i, -301989889
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.else.i65, %if.then25.i, %if.end17.i.if.end29.i_crit_edge
  %val64.1.i = phi i64 [ %or26.i, %if.then25.i ], [ %and27.i, %if.else.i65 ], [ %and18.i, %if.end17.i.if.end29.i_crit_edge ]
  %timer_ci_en.i = getelementptr inbounds %struct.vxge_hw_vp_config, ptr %95, i32 0, i32 4, i32 3
  %117 = ptrtoint ptr %timer_ci_en.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %timer_ci_en.i, align 4
  %119 = zext i32 %118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %118, label %if.then37.i [
    i32 -1, label %if.end29.i.if.end42.i_crit_edge
    i32 0, label %if.else39.i
  ]

if.end29.i.if.end42.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42.i

if.then37.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #18
  %or38.i66 = or i64 %val64.1.i, 16777216
  br label %if.end42.i

if.else39.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #18
  %and40.i = and i64 %val64.1.i, -16777217
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.else39.i, %if.then37.i, %if.end29.i.if.end42.i_crit_edge
  %val64.2.i = phi i64 [ %or38.i66, %if.then37.i ], [ %and40.i, %if.else39.i ], [ %val64.1.i, %if.end29.i.if.end42.i_crit_edge ]
  %urange_a.i = getelementptr inbounds %struct.vxge_hw_vp_config, ptr %95, i32 0, i32 4, i32 8
  %120 = ptrtoint ptr %urange_a.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %urange_a.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %121)
  %cmp44.not.i = icmp eq i32 %121, -1
  br i1 %cmp44.not.i, label %if.end42.i.if.end53.i_crit_edge, label %if.then46.i

if.end42.i.if.end53.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end53.i

if.then46.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #18
  %and47.i = and i64 %val64.2.i, -4128769
  %conv50.i = zext i32 %121 to i64
  %shl51.i = shl nuw nsw i64 %conv50.i, 16
  %or52.i = or i64 %shl51.i, %and47.i
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then46.i, %if.end42.i.if.end53.i_crit_edge
  %val64.3.i = phi i64 [ %or52.i, %if.then46.i ], [ %val64.2.i, %if.end42.i.if.end53.i_crit_edge ]
  %urange_b.i = getelementptr inbounds %struct.vxge_hw_vp_config, ptr %95, i32 0, i32 4, i32 10
  %122 = ptrtoint ptr %urange_b.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %urange_b.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %123)
  %cmp55.not.i = icmp eq i32 %123, -1
  br i1 %cmp55.not.i, label %if.end53.i.if.end64.i_crit_edge, label %if.then57.i

if.end53.i.if.end64.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end64.i

if.then57.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #18
  %and58.i = and i64 %val64.3.i, -16129
  %conv61.i = zext i32 %123 to i64
  %shl62.i = shl nuw nsw i64 %conv61.i, 8
  %or63.i = or i64 %shl62.i, %and58.i
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.then57.i, %if.end53.i.if.end64.i_crit_edge
  %val64.4.i = phi i64 [ %or63.i, %if.then57.i ], [ %val64.3.i, %if.end53.i.if.end64.i_crit_edge ]
  %urange_c.i = getelementptr inbounds %struct.vxge_hw_vp_config, ptr %95, i32 0, i32 4, i32 12
  %124 = ptrtoint ptr %urange_c.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %urange_c.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %125)
  %cmp66.not.i = icmp eq i32 %125, -1
  br i1 %cmp66.not.i, label %if.end64.i.if.end75.i_crit_edge, label %if.then68.i

if.end64.i.if.end75.i_crit_edge:                  ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end75.i

if.then68.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #18
  %and69.i = and i64 %val64.4.i, -64
  %conv72.i = zext i32 %125 to i64
  %or74.i = or i64 %and69.i, %conv72.i
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.then68.i, %if.end64.i.if.end75.i_crit_edge
  %val64.5.i = phi i64 [ %or74.i, %if.then68.i ], [ %val64.4.i, %if.end64.i.if.end75.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  %conv.i11.i = trunc i64 %val64.5.i to i32
  %126 = tail call i32 @llvm.bswap.i32(i32 %conv.i11.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tim_cfg1_int_num.i, i32 %126) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %shr.i12.i = lshr i64 %val64.5.i, 32
  %conv3.i13.i = trunc i64 %shr.i12.i to i32
  %127 = tail call i32 @llvm.bswap.i32(i32 %conv3.i13.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %127) #16, !srcloc !81
  %tim_tti_cfg1_saved.i = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %vp_id, i32 11
  %128 = ptrtoint ptr %tim_tti_cfg1_saved.i to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 %val64.5.i, ptr %tim_tti_cfg1_saved.i, align 16
  %tim_cfg2_int_num.i = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %93, i32 0, i32 64
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tim_cfg2_int_num.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i15.i = getelementptr i32, ptr %tim_cfg2_int_num.i, i32 1
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %131 = zext i32 %130 to i64
  %132 = zext i32 %129 to i64
  %133 = shl nuw i64 %132, 32
  %134 = or i64 %133, %131
  %135 = tail call i64 @llvm.bswap.i64(i64 %134) #16
  %uec_a.i = getelementptr inbounds %struct.vxge_hw_vp_config, ptr %95, i32 0, i32 4, i32 9
  %136 = ptrtoint ptr %uec_a.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %uec_a.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %137)
  %cmp81.not.i = icmp eq i32 %137, -1
  br i1 %cmp81.not.i, label %if.end75.i.if.end90.i_crit_edge, label %if.then83.i

if.end75.i.if.end90.i_crit_edge:                  ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end90.i

if.then83.i:                                      ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #18
  %and84.i = and i64 %135, 281474976710655
  %conv87.i = zext i32 %137 to i64
  %shl88.i = shl i64 %conv87.i, 48
  %or89.i = or i64 %and84.i, %shl88.i
  br label %if.end90.i

if.end90.i:                                       ; preds = %if.then83.i, %if.end75.i.if.end90.i_crit_edge
  %val64.6.i = phi i64 [ %or89.i, %if.then83.i ], [ %135, %if.end75.i.if.end90.i_crit_edge ]
  %uec_b.i = getelementptr inbounds %struct.vxge_hw_vp_config, ptr %95, i32 0, i32 4, i32 11
  %138 = ptrtoint ptr %uec_b.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %uec_b.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %139)
  %cmp92.not.i = icmp eq i32 %139, -1
  br i1 %cmp92.not.i, label %if.end90.i.if.end101.i_crit_edge, label %if.then94.i

if.end90.i.if.end101.i_crit_edge:                 ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end101.i

if.then94.i:                                      ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #18
  %and95.i = and i64 %val64.6.i, -281470681743361
  %conv98.i = zext i32 %139 to i64
  %shl99.i = shl nuw i64 %conv98.i, 32
  %or100.i = or i64 %shl99.i, %and95.i
  br label %if.end101.i

if.end101.i:                                      ; preds = %if.then94.i, %if.end90.i.if.end101.i_crit_edge
  %val64.7.i = phi i64 [ %or100.i, %if.then94.i ], [ %val64.6.i, %if.end90.i.if.end101.i_crit_edge ]
  %uec_c.i = getelementptr inbounds %struct.vxge_hw_vp_config, ptr %95, i32 0, i32 4, i32 13
  %140 = ptrtoint ptr %uec_c.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %uec_c.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %141)
  %cmp103.not.i = icmp eq i32 %141, -1
  %extract.t64.i = trunc i64 %val64.7.i to i32
  %extract66.i = lshr i64 %val64.7.i, 32
  %extract.t67.i = trunc i64 %extract66.i to i32
  br i1 %cmp103.not.i, label %if.end101.i.if.end112.i_crit_edge, label %if.then105.i

if.end101.i.if.end112.i_crit_edge:                ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end112.i

if.then105.i:                                     ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #18
  %and106.i = and i64 %val64.7.i, -4294901761
  %conv109.i = zext i32 %141 to i64
  %shl110.i = shl nuw nsw i64 %conv109.i, 16
  %or111.i = or i64 %shl110.i, %and106.i
  %extract.t63.i = trunc i64 %or111.i to i32
  %extract.i67 = lshr i64 %or111.i, 32
  %extract.t65.i = trunc i64 %extract.i67 to i32
  br label %if.end112.i

if.end112.i:                                      ; preds = %if.then105.i, %if.end101.i.if.end112.i_crit_edge
  %val64.8.off0.i = phi i32 [ %extract.t63.i, %if.then105.i ], [ %extract.t64.i, %if.end101.i.if.end112.i_crit_edge ]
  %val64.8.off32.i = phi i32 [ %extract.t65.i, %if.then105.i ], [ %extract.t67.i, %if.end101.i.if.end112.i_crit_edge ]
  %uec_d.i = getelementptr inbounds %struct.vxge_hw_vp_config, ptr %95, i32 0, i32 4, i32 14
  %142 = ptrtoint ptr %uec_d.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %uec_d.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %143)
  %cmp114.not.i = icmp eq i32 %143, -1
  %144 = and i32 %val64.8.off0.i, -65536
  %extract.t51.i = or i32 %143, %144
  %val64.9.off0.i = select i1 %cmp114.not.i, i32 %val64.8.off0.i, i32 %extract.t51.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  %145 = tail call i32 @llvm.bswap.i32(i32 %val64.9.off0.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tim_cfg2_int_num.i, i32 %145) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %146 = tail call i32 @llvm.bswap.i32(i32 %val64.8.off32.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 %146) #16, !srcloc !81
  %tim_cfg3_int_num.i = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %93, i32 0, i32 65
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tim_cfg3_int_num.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i20.i = getelementptr i32, ptr %tim_cfg3_int_num.i, i32 1
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %149 = zext i32 %148 to i64
  %150 = zext i32 %147 to i64
  %151 = shl nuw i64 %150, 32
  %152 = or i64 %151, %149
  %153 = tail call i64 @llvm.bswap.i64(i64 %152) #16
  %timer_ri_en.i = getelementptr inbounds %struct.vxge_hw_vp_config, ptr %95, i32 0, i32 4, i32 4
  %154 = ptrtoint ptr %timer_ri_en.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %timer_ri_en.i, align 4
  %156 = zext i32 %155 to i64
  call void @__sanitizer_cov_trace_switch(i64 %156, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %155, label %if.then135.i [
    i32 -1, label %if.end112.i.if.end140.i_crit_edge
    i32 0, label %if.else137.i
  ]

if.end112.i.if.end140.i_crit_edge:                ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end140.i

if.then135.i:                                     ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #18
  %or136.i = or i64 %153, -9223372036854775808
  br label %if.end140.i

if.else137.i:                                     ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #18
  %and138.i = and i64 %153, 9223372036854775807
  br label %if.end140.i

if.end140.i:                                      ; preds = %if.else137.i, %if.then135.i, %if.end112.i.if.end140.i_crit_edge
  %val64.10.i = phi i64 [ %or136.i, %if.then135.i ], [ %and138.i, %if.else137.i ], [ %153, %if.end112.i.if.end140.i_crit_edge ]
  %rtimer_val.i = getelementptr inbounds %struct.vxge_hw_vp_config, ptr %95, i32 0, i32 4, i32 5
  %157 = ptrtoint ptr %rtimer_val.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %rtimer_val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %158)
  %cmp142.not.i = icmp eq i32 %158, -1
  br i1 %cmp142.not.i, label %if.end140.i.if.end151.i_crit_edge, label %if.then144.i

if.end140.i.if.end151.i_crit_edge:                ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end151.i

if.then144.i:                                     ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #18
  %and145.i = and i64 %val64.10.i, -288230371856744449
  %conv148.i = zext i32 %158 to i64
  %shl149.i = shl nuw i64 %conv148.i, 32
  %or150.i = or i64 %shl149.i, %and145.i
  br label %if.end151.i

if.end151.i:                                      ; preds = %if.then144.i, %if.end140.i.if.end151.i_crit_edge
  %val64.11.i = phi i64 [ %or150.i, %if.then144.i ], [ %val64.10.i, %if.end140.i.if.end151.i_crit_edge ]
  %util_sel.i = getelementptr inbounds %struct.vxge_hw_vp_config, ptr %95, i32 0, i32 4, i32 6
  %159 = ptrtoint ptr %util_sel.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %util_sel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %160)
  %cmp153.not.i = icmp eq i32 %160, -1
  %and156.i = and i64 %val64.11.i, -4227858433
  %shl158.i = shl nuw nsw i64 %sh_prom, 26
  %or159.i = or i64 %and156.i, %shl158.i
  %val64.12.i = select i1 %cmp153.not.i, i64 %val64.11.i, i64 %or159.i
  %ltimer_val.i = getelementptr inbounds %struct.vxge_hw_vp_config, ptr %95, i32 0, i32 4, i32 7
  %161 = ptrtoint ptr %ltimer_val.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %ltimer_val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %162)
  %cmp162.not.i = icmp eq i32 %162, -1
  br i1 %cmp162.not.i, label %if.end151.i.if.end171.i_crit_edge, label %if.then164.i

if.end151.i.if.end171.i_crit_edge:                ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end171.i

if.then164.i:                                     ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_pc() #18
  %and165.i = and i64 %val64.12.i, -67108864
  %conv168.i = zext i32 %162 to i64
  %or170.i = or i64 %and165.i, %conv168.i
  br label %if.end171.i

if.end171.i:                                      ; preds = %if.then164.i, %if.end151.i.if.end171.i_crit_edge
  %val64.13.i = phi i64 [ %or170.i, %if.then164.i ], [ %val64.12.i, %if.end151.i.if.end171.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  %conv.i21.i = trunc i64 %val64.13.i to i32
  %163 = tail call i32 @llvm.bswap.i32(i32 %conv.i21.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tim_cfg3_int_num.i, i32 %163) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %shr.i22.i = lshr i64 %val64.13.i, 32
  %conv3.i23.i = trunc i64 %shr.i22.i to i32
  %164 = tail call i32 @llvm.bswap.i32(i32 %conv3.i23.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 %164) #16, !srcloc !81
  %tim_tti_cfg3_saved.i = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %vp_id, i32 12
  %165 = ptrtoint ptr %tim_tti_cfg3_saved.i to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 %val64.13.i, ptr %tim_tti_cfg3_saved.i, align 8
  br label %if.end174.i

if.end174.i:                                      ; preds = %if.end171.i, %if.end.i.if.end174.i_crit_edge
  %166 = ptrtoint ptr %ring.i60 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %ring.i60, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %167)
  %cmp177.i = icmp eq i32 %167, 1
  br i1 %cmp177.i, label %if.then179.i, label %if.end174.i.__vxge_hw_vpath_tim_configure.exit_crit_edge

if.end174.i.__vxge_hw_vpath_tim_configure.exit_crit_edge: ; preds = %if.end174.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_vpath_tim_configure.exit

if.then179.i:                                     ; preds = %if.end174.i
  %arrayidx181.i = getelementptr %struct.vxge_hw_vpath_reg, ptr %93, i32 0, i32 63, i32 1
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx181.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i25.i = getelementptr i32, ptr %arrayidx181.i, i32 1
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %170 = zext i32 %169 to i64
  %171 = zext i32 %168 to i64
  %172 = shl nuw i64 %171, 32
  %173 = or i64 %172, %170
  %174 = tail call i64 @llvm.bswap.i64(i64 %173) #16
  %btimer_val183.i = getelementptr inbounds %struct.vxge_hw_vp_config, ptr %95, i32 0, i32 5, i32 1
  %175 = ptrtoint ptr %btimer_val183.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %btimer_val183.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %176)
  %cmp184.not.i = icmp eq i32 %176, -1
  br i1 %cmp184.not.i, label %if.then179.i.if.end193.i_crit_edge, label %if.then186.i

if.then179.i.if.end193.i_crit_edge:               ; preds = %if.then179.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end193.i

if.then186.i:                                     ; preds = %if.then179.i
  call void @__sanitizer_cov_trace_pc() #18
  %and187.i = and i64 %174, -288230371856744449
  %conv190.i = zext i32 %176 to i64
  %shl191.i = shl nuw i64 %conv190.i, 32
  %or192.i = or i64 %and187.i, %shl191.i
  br label %if.end193.i

if.end193.i:                                      ; preds = %if.then186.i, %if.then179.i.if.end193.i_crit_edge
  %val64.14.i = phi i64 [ %or192.i, %if.then186.i ], [ %174, %if.then179.i.if.end193.i_crit_edge ]
  %and194.i = and i64 %val64.14.i, -268435457
  %timer_ac_en196.i = getelementptr inbounds %struct.vxge_hw_vp_config, ptr %95, i32 0, i32 5, i32 2
  %177 = ptrtoint ptr %timer_ac_en196.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %timer_ac_en196.i, align 8
  %179 = zext i32 %178 to i64
  call void @__sanitizer_cov_trace_switch(i64 %179, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %178, label %if.then203.i [
    i32 -1, label %if.end193.i.if.end208.i_crit_edge
    i32 0, label %if.else205.i
  ]

if.end193.i.if.end208.i_crit_edge:                ; preds = %if.end193.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end208.i

if.then203.i:                                     ; preds = %if.end193.i
  call void @__sanitizer_cov_trace_pc() #18
  %or204.i = or i64 %and194.i, 33554432
  br label %if.end208.i

if.else205.i:                                     ; preds = %if.end193.i
  call void @__sanitizer_cov_trace_pc() #18
  %and206.i = and i64 %val64.14.i, -301989889
  br label %if.end208.i

if.end208.i:                                      ; preds = %if.else205.i, %if.then203.i, %if.end193.i.if.end208.i_crit_edge
  %val64.15.i = phi i64 [ %or204.i, %if.then203.i ], [ %and206.i, %if.else205.i ], [ %and194.i, %if.end193.i.if.end208.i_crit_edge ]
  %timer_ci_en210.i = getelementptr inbounds %struct.vxge_hw_vp_config, ptr %95, i32 0, i32 5, i32 3
  %180 = ptrtoint ptr %timer_ci_en210.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %timer_ci_en210.i, align 4
  %182 = zext i32 %181 to i64
  call void @__sanitizer_cov_trace_switch(i64 %182, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %181, label %if.then217.i [
    i32 -1, label %if.end208.i.if.end222.i_crit_edge
    i32 0, label %if.else219.i
  ]

if.end208.i.if.end222.i_crit_edge:                ; preds = %if.end208.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end222.i

if.then217.i:                                     ; preds = %if.end208.i
  call void @__sanitizer_cov_trace_pc() #18
  %or218.i = or i64 %val64.15.i, 16777216
  br label %if.end222.i

if.else219.i:                                     ; preds = %if.end208.i
  call void @__sanitizer_cov_trace_pc() #18
  %and220.i = and i64 %val64.15.i, -16777217
  br label %if.end222.i

if.end222.i:                                      ; preds = %if.else219.i, %if.then217.i, %if.end208.i.if.end222.i_crit_edge
  %val64.16.i = phi i64 [ %or218.i, %if.then217.i ], [ %and220.i, %if.else219.i ], [ %val64.15.i, %if.end208.i.if.end222.i_crit_edge ]
  %urange_a224.i = getelementptr inbounds %struct.vxge_hw_vp_config, ptr %95, i32 0, i32 5, i32 8
  %183 = ptrtoint ptr %urange_a224.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %urange_a224.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %184)
  %cmp225.not.i = icmp eq i32 %184, -1
  br i1 %cmp225.not.i, label %if.end222.i.if.end234.i_crit_edge, label %if.then227.i

if.end222.i.if.end234.i_crit_edge:                ; preds = %if.end222.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end234.i

if.then227.i:                                     ; preds = %if.end222.i
  call void @__sanitizer_cov_trace_pc() #18
  %and228.i = and i64 %val64.16.i, -4128769
  %conv231.i = zext i32 %184 to i64
  %shl232.i = shl nuw nsw i64 %conv231.i, 16
  %or233.i = or i64 %shl232.i, %and228.i
  br label %if.end234.i

if.end234.i:                                      ; preds = %if.then227.i, %if.end222.i.if.end234.i_crit_edge
  %val64.17.i = phi i64 [ %or233.i, %if.then227.i ], [ %val64.16.i, %if.end222.i.if.end234.i_crit_edge ]
  %urange_b236.i = getelementptr inbounds %struct.vxge_hw_vp_config, ptr %95, i32 0, i32 5, i32 10
  %185 = ptrtoint ptr %urange_b236.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %urange_b236.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %186)
  %cmp237.not.i = icmp eq i32 %186, -1
  br i1 %cmp237.not.i, label %if.end234.i.if.end246.i_crit_edge, label %if.then239.i

if.end234.i.if.end246.i_crit_edge:                ; preds = %if.end234.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end246.i

if.then239.i:                                     ; preds = %if.end234.i
  call void @__sanitizer_cov_trace_pc() #18
  %and240.i = and i64 %val64.17.i, -16129
  %conv243.i = zext i32 %186 to i64
  %shl244.i = shl nuw nsw i64 %conv243.i, 8
  %or245.i = or i64 %shl244.i, %and240.i
  br label %if.end246.i

if.end246.i:                                      ; preds = %if.then239.i, %if.end234.i.if.end246.i_crit_edge
  %val64.18.i = phi i64 [ %or245.i, %if.then239.i ], [ %val64.17.i, %if.end234.i.if.end246.i_crit_edge ]
  %urange_c248.i = getelementptr inbounds %struct.vxge_hw_vp_config, ptr %95, i32 0, i32 5, i32 12
  %187 = ptrtoint ptr %urange_c248.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %urange_c248.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %188)
  %cmp249.not.i = icmp eq i32 %188, -1
  br i1 %cmp249.not.i, label %if.end246.i.if.end258.i_crit_edge, label %if.then251.i

if.end246.i.if.end258.i_crit_edge:                ; preds = %if.end246.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end258.i

if.then251.i:                                     ; preds = %if.end246.i
  call void @__sanitizer_cov_trace_pc() #18
  %and252.i = and i64 %val64.18.i, -64
  %conv255.i = zext i32 %188 to i64
  %or257.i = or i64 %and252.i, %conv255.i
  br label %if.end258.i

if.end258.i:                                      ; preds = %if.then251.i, %if.end246.i.if.end258.i_crit_edge
  %val64.19.i = phi i64 [ %or257.i, %if.then251.i ], [ %val64.18.i, %if.end246.i.if.end258.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  %conv.i26.i = trunc i64 %val64.19.i to i32
  %189 = tail call i32 @llvm.bswap.i32(i32 %conv.i26.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx181.i, i32 %189) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %shr.i27.i = lshr i64 %val64.19.i, 32
  %conv3.i28.i = trunc i64 %shr.i27.i to i32
  %190 = tail call i32 @llvm.bswap.i32(i32 %conv3.i28.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %190) #16, !srcloc !81
  %tim_rti_cfg1_saved.i = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %vp_id, i32 13
  %191 = ptrtoint ptr %tim_rti_cfg1_saved.i to i32
  call void @__asan_store8_noabort(i32 %191)
  store i64 %val64.19.i, ptr %tim_rti_cfg1_saved.i, align 64
  %arrayidx262.i = getelementptr %struct.vxge_hw_vpath_reg, ptr %93, i32 0, i32 64, i32 1
  %192 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx262.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i30.i = getelementptr i32, ptr %arrayidx262.i, i32 1
  %193 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %194 = zext i32 %193 to i64
  %195 = zext i32 %192 to i64
  %196 = shl nuw i64 %195, 32
  %197 = or i64 %196, %194
  %198 = tail call i64 @llvm.bswap.i64(i64 %197) #16
  %uec_a265.i = getelementptr inbounds %struct.vxge_hw_vp_config, ptr %95, i32 0, i32 5, i32 9
  %199 = ptrtoint ptr %uec_a265.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %uec_a265.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %200)
  %cmp266.not.i = icmp eq i32 %200, -1
  br i1 %cmp266.not.i, label %if.end258.i.if.end275.i_crit_edge, label %if.then268.i

if.end258.i.if.end275.i_crit_edge:                ; preds = %if.end258.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end275.i

if.then268.i:                                     ; preds = %if.end258.i
  call void @__sanitizer_cov_trace_pc() #18
  %and269.i = and i64 %198, 281474976710655
  %conv272.i = zext i32 %200 to i64
  %shl273.i = shl i64 %conv272.i, 48
  %or274.i = or i64 %and269.i, %shl273.i
  br label %if.end275.i

if.end275.i:                                      ; preds = %if.then268.i, %if.end258.i.if.end275.i_crit_edge
  %val64.20.i = phi i64 [ %or274.i, %if.then268.i ], [ %198, %if.end258.i.if.end275.i_crit_edge ]
  %uec_b277.i = getelementptr inbounds %struct.vxge_hw_vp_config, ptr %95, i32 0, i32 5, i32 11
  %201 = ptrtoint ptr %uec_b277.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %uec_b277.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %202)
  %cmp278.not.i = icmp eq i32 %202, -1
  br i1 %cmp278.not.i, label %if.end275.i.if.end287.i_crit_edge, label %if.then280.i

if.end275.i.if.end287.i_crit_edge:                ; preds = %if.end275.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end287.i

if.then280.i:                                     ; preds = %if.end275.i
  call void @__sanitizer_cov_trace_pc() #18
  %and281.i = and i64 %val64.20.i, -281470681743361
  %conv284.i = zext i32 %202 to i64
  %shl285.i = shl nuw i64 %conv284.i, 32
  %or286.i = or i64 %shl285.i, %and281.i
  br label %if.end287.i

if.end287.i:                                      ; preds = %if.then280.i, %if.end275.i.if.end287.i_crit_edge
  %val64.21.i = phi i64 [ %or286.i, %if.then280.i ], [ %val64.20.i, %if.end275.i.if.end287.i_crit_edge ]
  %uec_c289.i = getelementptr inbounds %struct.vxge_hw_vp_config, ptr %95, i32 0, i32 5, i32 13
  %203 = ptrtoint ptr %uec_c289.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %uec_c289.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %204)
  %cmp290.not.i = icmp eq i32 %204, -1
  %extract.t58.i = trunc i64 %val64.21.i to i32
  %extract61.i = lshr i64 %val64.21.i, 32
  %extract.t62.i = trunc i64 %extract61.i to i32
  br i1 %cmp290.not.i, label %if.end287.i.if.end299.i_crit_edge, label %if.then292.i

if.end287.i.if.end299.i_crit_edge:                ; preds = %if.end287.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end299.i

if.then292.i:                                     ; preds = %if.end287.i
  call void @__sanitizer_cov_trace_pc() #18
  %and293.i = and i64 %val64.21.i, -4294901761
  %conv296.i = zext i32 %204 to i64
  %shl297.i = shl nuw nsw i64 %conv296.i, 16
  %or298.i = or i64 %shl297.i, %and293.i
  %extract.t57.i = trunc i64 %or298.i to i32
  %extract59.i = lshr i64 %or298.i, 32
  %extract.t60.i = trunc i64 %extract59.i to i32
  br label %if.end299.i

if.end299.i:                                      ; preds = %if.then292.i, %if.end287.i.if.end299.i_crit_edge
  %val64.22.off0.i = phi i32 [ %extract.t57.i, %if.then292.i ], [ %extract.t58.i, %if.end287.i.if.end299.i_crit_edge ]
  %val64.22.off32.i = phi i32 [ %extract.t60.i, %if.then292.i ], [ %extract.t62.i, %if.end287.i.if.end299.i_crit_edge ]
  %uec_d301.i = getelementptr inbounds %struct.vxge_hw_vp_config, ptr %95, i32 0, i32 5, i32 14
  %205 = ptrtoint ptr %uec_d301.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %uec_d301.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %206)
  %cmp302.not.i = icmp eq i32 %206, -1
  %207 = and i32 %val64.22.off0.i, -65536
  %extract.t.i = or i32 %206, %207
  %val64.23.off0.i = select i1 %cmp302.not.i, i32 %val64.22.off0.i, i32 %extract.t.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  %208 = tail call i32 @llvm.bswap.i32(i32 %val64.23.off0.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx262.i, i32 %208) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %209 = tail call i32 @llvm.bswap.i32(i32 %val64.22.off32.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i, i32 %209) #16, !srcloc !81
  %arrayidx315.i = getelementptr %struct.vxge_hw_vpath_reg, ptr %93, i32 0, i32 65, i32 1
  %210 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx315.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i35.i = getelementptr i32, ptr %arrayidx315.i, i32 1
  %211 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %212 = zext i32 %211 to i64
  %213 = zext i32 %210 to i64
  %214 = shl nuw i64 %213, 32
  %215 = or i64 %214, %212
  %216 = tail call i64 @llvm.bswap.i64(i64 %215) #16
  %timer_ri_en318.i = getelementptr inbounds %struct.vxge_hw_vp_config, ptr %95, i32 0, i32 5, i32 4
  %217 = ptrtoint ptr %timer_ri_en318.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %timer_ri_en318.i, align 8
  %219 = zext i32 %218 to i64
  call void @__sanitizer_cov_trace_switch(i64 %219, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %218, label %if.then325.i [
    i32 -1, label %if.end299.i.if.end330.i_crit_edge
    i32 0, label %if.else327.i
  ]

if.end299.i.if.end330.i_crit_edge:                ; preds = %if.end299.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end330.i

if.then325.i:                                     ; preds = %if.end299.i
  call void @__sanitizer_cov_trace_pc() #18
  %or326.i = or i64 %216, -9223372036854775808
  br label %if.end330.i

if.else327.i:                                     ; preds = %if.end299.i
  call void @__sanitizer_cov_trace_pc() #18
  %and328.i = and i64 %216, 9223372036854775807
  br label %if.end330.i

if.end330.i:                                      ; preds = %if.else327.i, %if.then325.i, %if.end299.i.if.end330.i_crit_edge
  %val64.24.i = phi i64 [ %or326.i, %if.then325.i ], [ %and328.i, %if.else327.i ], [ %216, %if.end299.i.if.end330.i_crit_edge ]
  %rtimer_val332.i = getelementptr inbounds %struct.vxge_hw_vp_config, ptr %95, i32 0, i32 5, i32 5
  %220 = ptrtoint ptr %rtimer_val332.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %rtimer_val332.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %221)
  %cmp333.not.i = icmp eq i32 %221, -1
  br i1 %cmp333.not.i, label %if.end330.i.if.end342.i_crit_edge, label %if.then335.i

if.end330.i.if.end342.i_crit_edge:                ; preds = %if.end330.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end342.i

if.then335.i:                                     ; preds = %if.end330.i
  call void @__sanitizer_cov_trace_pc() #18
  %and336.i = and i64 %val64.24.i, -288230371856744449
  %conv339.i = zext i32 %221 to i64
  %shl340.i = shl nuw i64 %conv339.i, 32
  %or341.i = or i64 %shl340.i, %and336.i
  br label %if.end342.i

if.end342.i:                                      ; preds = %if.then335.i, %if.end330.i.if.end342.i_crit_edge
  %val64.25.i = phi i64 [ %or341.i, %if.then335.i ], [ %val64.24.i, %if.end330.i.if.end342.i_crit_edge ]
  %util_sel344.i = getelementptr inbounds %struct.vxge_hw_vp_config, ptr %95, i32 0, i32 5, i32 6
  %222 = ptrtoint ptr %util_sel344.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %util_sel344.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %223)
  %cmp345.not.i = icmp eq i32 %223, -1
  %and348.i = and i64 %val64.25.i, -4227858433
  %shl350.i = shl nuw nsw i64 %sh_prom, 26
  %or351.i = or i64 %and348.i, %shl350.i
  %val64.26.i = select i1 %cmp345.not.i, i64 %val64.25.i, i64 %or351.i
  %ltimer_val354.i = getelementptr inbounds %struct.vxge_hw_vp_config, ptr %95, i32 0, i32 5, i32 7
  %224 = ptrtoint ptr %ltimer_val354.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %ltimer_val354.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %225)
  %cmp355.not.i = icmp eq i32 %225, -1
  br i1 %cmp355.not.i, label %if.end342.i.if.end364.i_crit_edge, label %if.then357.i

if.end342.i.if.end364.i_crit_edge:                ; preds = %if.end342.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end364.i

if.then357.i:                                     ; preds = %if.end342.i
  call void @__sanitizer_cov_trace_pc() #18
  %and358.i = and i64 %val64.26.i, -67108864
  %conv361.i = zext i32 %225 to i64
  %or363.i = or i64 %and358.i, %conv361.i
  br label %if.end364.i

if.end364.i:                                      ; preds = %if.then357.i, %if.end342.i.if.end364.i_crit_edge
  %val64.27.i = phi i64 [ %or363.i, %if.then357.i ], [ %val64.26.i, %if.end342.i.if.end364.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  %conv.i36.i = trunc i64 %val64.27.i to i32
  %226 = tail call i32 @llvm.bswap.i32(i32 %conv.i36.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx315.i, i32 %226) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %shr.i37.i = lshr i64 %val64.27.i, 32
  %conv3.i38.i = trunc i64 %shr.i37.i to i32
  %227 = tail call i32 @llvm.bswap.i32(i32 %conv3.i38.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i, i32 %227) #16, !srcloc !81
  %tim_rti_cfg3_saved.i = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %vp_id, i32 14
  %228 = ptrtoint ptr %tim_rti_cfg3_saved.i to i32
  call void @__asan_store8_noabort(i32 %228)
  store i64 %val64.27.i, ptr %tim_rti_cfg3_saved.i, align 8
  br label %__vxge_hw_vpath_tim_configure.exit

__vxge_hw_vpath_tim_configure.exit:               ; preds = %if.end364.i, %if.end174.i.__vxge_hw_vpath_tim_configure.exit_crit_edge
  %arrayidx369.i = getelementptr %struct.vxge_hw_vpath_reg, ptr %93, i32 0, i32 63, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx369.i, i32 0) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %add.ptr.i40.i = getelementptr i8, ptr %arrayidx369.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40.i, i32 0) #16, !srcloc !81
  %arrayidx371.i = getelementptr %struct.vxge_hw_vpath_reg, ptr %93, i32 0, i32 64, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx371.i, i32 0) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %add.ptr.i41.i = getelementptr i8, ptr %arrayidx371.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41.i, i32 0) #16, !srcloc !81
  %arrayidx373.i = getelementptr %struct.vxge_hw_vpath_reg, ptr %93, i32 0, i32 65, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx373.i, i32 0) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %add.ptr.i42.i = getelementptr i8, ptr %arrayidx373.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42.i, i32 0) #16, !srcloc !81
  %arrayidx375.i = getelementptr %struct.vxge_hw_vpath_reg, ptr %93, i32 0, i32 63, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx375.i, i32 0) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %add.ptr.i43.i = getelementptr i8, ptr %arrayidx375.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43.i, i32 0) #16, !srcloc !81
  %arrayidx377.i = getelementptr %struct.vxge_hw_vpath_reg, ptr %93, i32 0, i32 64, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx377.i, i32 0) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %add.ptr.i44.i = getelementptr i8, ptr %arrayidx377.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44.i, i32 0) #16, !srcloc !81
  %arrayidx379.i = getelementptr %struct.vxge_hw_vpath_reg, ptr %93, i32 0, i32 65, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx379.i, i32 0) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %add.ptr.i45.i = getelementptr i8, ptr %arrayidx379.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45.i, i32 0) #16, !srcloc !81
  %tim_wrkld_clc.i = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %93, i32 0, i32 66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tim_wrkld_clc.i, i32 24576) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %add.ptr.i46.i = getelementptr i8, ptr %tim_wrkld_clc.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46.i, i32 -1778384896) #16, !srcloc !81
  %rtdma_rd_optimization_ctrl = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %3, i32 0, i32 59
  %229 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rtdma_rd_optimization_ctrl) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i68 = getelementptr i32, ptr %rtdma_rd_optimization_ctrl, i32 1
  %230 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i68) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %231 = zext i32 %230 to i64
  %232 = zext i32 %229 to i64
  %233 = shl nuw i64 %232, 32
  %234 = or i64 %233, %231
  %235 = tail call i64 @llvm.bswap.i64(i64 %234) #16
  %236 = ptrtoint ptr %vp_reg1 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %vp_reg1, align 16
  %pci_config_access_cfg1.i = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %237, i32 0, i32 164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pci_config_access_cfg1.i, i32 0) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %add.ptr.i.i70 = getelementptr i8, ptr %pci_config_access_cfg1.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i70, i32 33031) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !98
  tail call void @arm_heavy_mb() #16
  %pci_config_access_cfg2.i = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %237, i32 0, i32 165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pci_config_access_cfg2.i, i32 0) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %add.ptr.i1.i71 = getelementptr i8, ptr %pci_config_access_cfg2.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i71, i32 128) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !99
  tail call void @arm_heavy_mb() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %238 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %238(i32 noundef 2147480) #16
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i.do.body.i.i_crit_edge, %__vxge_hw_vpath_tim_configure.exit
  %i.0.i.i = phi i32 [ 0, %__vxge_hw_vpath_tim_configure.exit ], [ %inc.i.i, %if.end.i.i.do.body.i.i_crit_edge ]
  %239 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pci_config_access_cfg2.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %240 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1.i71) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %241 = zext i32 %240 to i64
  %242 = zext i32 %239 to i64
  %243 = shl nuw i64 %242, 32
  %244 = or i64 %243, %241
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %244)
  %tobool.not.i.i = icmp eq i64 %244, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.__vxge_hw_vpath_pci_read.exit_crit_edge, label %if.end.i.i

do.body.i.i.__vxge_hw_vpath_pci_read.exit_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_vpath_pci_read.exit

if.end.i.i:                                       ; preds = %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %245 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %245(i32 noundef 21474800) #16
  %inc.i.i = add nuw nsw i32 %i.0.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 10
  br i1 %exitcond.not.i.i, label %if.end.i.i.do.body1.i.i_crit_edge, label %if.end.i.i.do.body.i.i_crit_edge

if.end.i.i.do.body.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i

if.end.i.i.do.body1.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %do.body1.i.i

do.body1.i.i:                                     ; preds = %if.end6.i.i.do.body1.i.i_crit_edge, %if.end.i.i.do.body1.i.i_crit_edge
  %i.1.i.i = phi i32 [ %inc8.i.i, %if.end6.i.i.do.body1.i.i_crit_edge ], [ 0, %if.end.i.i.do.body1.i.i_crit_edge ]
  %246 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pci_config_access_cfg2.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %247 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1.i71) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %248 = zext i32 %247 to i64
  %249 = zext i32 %246 to i64
  %250 = shl nuw i64 %249, 32
  %251 = or i64 %250, %248
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %251)
  %tobool4.not.i.i = icmp eq i64 %251, 0
  br i1 %tobool4.not.i.i, label %do.body1.i.i.__vxge_hw_vpath_pci_read.exit_crit_edge, label %if.end6.i.i

do.body1.i.i.__vxge_hw_vpath_pci_read.exit_crit_edge: ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_vpath_pci_read.exit

if.end6.i.i:                                      ; preds = %do.body1.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %252 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %252(i32 noundef 214748000) #16
  %inc8.i.i = add nuw nsw i32 %i.1.i.i, 1
  %exitcond.i = icmp eq i32 %inc8.i.i, 1001
  br i1 %exitcond.i, label %if.end25.loopexit, label %if.end6.i.i.do.body1.i.i_crit_edge

if.end6.i.i.do.body1.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body1.i.i

__vxge_hw_vpath_pci_read.exit:                    ; preds = %do.body1.i.i.__vxge_hw_vpath_pci_read.exit_crit_edge, %do.body.i.i.__vxge_hw_vpath_pci_read.exit_crit_edge
  %pci_config_access_status.i = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %237, i32 0, i32 166
  %253 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pci_config_access_status.i) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !78
  %add.ptr.i2.i72 = getelementptr i32, ptr %pci_config_access_status.i, i32 1
  %254 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i72) #16, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !79
  %255 = zext i32 %254 to i64
  %256 = zext i32 %253 to i64
  %257 = shl nuw i64 %256, 32
  %258 = or i64 %257, %255
  %259 = tail call i64 @llvm.bswap.i64(i64 %258) #16
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %259)
  %tobool10.not.i = icmp sgt i64 %259, -1
  %extract.t80 = trunc i64 %235 to i32
  %extract83 = lshr i64 %235, 32
  %extract.t84 = trunc i64 %extract83 to i32
  br i1 %tobool10.not.i, label %if.then20, label %__vxge_hw_vpath_pci_read.exit.if.end25_crit_edge

__vxge_hw_vpath_pci_read.exit.if.end25_crit_edge: ; preds = %__vxge_hw_vpath_pci_read.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25

if.then20:                                        ; preds = %__vxge_hw_vpath_pci_read.exit
  call void @__sanitizer_cov_trace_pc() #18
  %conv13.i = trunc i64 %259 to i32
  %conv13.i.op = lshr i32 %conv13.i, 12
  %shr22 = and i32 %conv13.i.op, 7
  %and23 = and i64 %235, -25293062406144
  %conv = zext i32 %shr22 to i64
  %shl = shl nuw nsw i64 %conv, 40
  %or = or i64 %shl, %and23
  %or24 = lshr exact i64 %or, 32
  %260 = trunc i64 %or24 to i32
  %extract.t82 = or i32 %260, 4096
  br label %if.end25

if.end25.loopexit:                                ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %extract.t81.le = trunc i64 %235 to i32
  %extract85.le = lshr i64 %235, 32
  %extract.t86.le = trunc i64 %extract85.le to i32
  br label %if.end25

if.end25:                                         ; preds = %if.end25.loopexit, %if.then20, %__vxge_hw_vpath_pci_read.exit.if.end25_crit_edge
  %status.0.i79 = phi i32 [ 0, %if.then20 ], [ 1, %__vxge_hw_vpath_pci_read.exit.if.end25_crit_edge ], [ 1, %if.end25.loopexit ]
  %val64.0.off0 = phi i32 [ %extract.t80, %if.then20 ], [ %extract.t80, %__vxge_hw_vpath_pci_read.exit.if.end25_crit_edge ], [ %extract.t81.le, %if.end25.loopexit ]
  %val64.0.off32 = phi i32 [ %extract.t82, %if.then20 ], [ %extract.t84, %__vxge_hw_vpath_pci_read.exit.if.end25_crit_edge ], [ %extract.t86.le, %if.end25.loopexit ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !80
  tail call void @arm_heavy_mb() #16
  %261 = and i32 %val64.0.off0, -385875969
  %conv.i = or i32 %261, 301989888
  %262 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rtdma_rd_optimization_ctrl, i32 %262) #16, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !82
  tail call void @arm_heavy_mb() #16
  %263 = tail call i32 @llvm.bswap.i32(i32 %val64.0.off32) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68, i32 %263) #16, !srcloc !81
  br label %exit

exit:                                             ; preds = %if.end25, %if.then5.i.exit_crit_edge, %entry.exit_crit_edge
  %status.0 = phi i32 [ %status.0.i79, %if.end25 ], [ 203, %entry.exit_crit_edge ], [ 302, %if.then5.i.exit_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vxge_hw_vpath_enable(ptr nocapture noundef readonly %vp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %vpath = getelementptr inbounds %struct.__vxge_hw_vpath_handle, ptr %vp, i32 0, i32 1
  %0 = ptrtoint ptr %vpath to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vpath, align 4
  %hldev1 = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hldev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hldev1, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 128
  %sub = sub i32 16, %5
  %6 = shl i32 32768, %sub
  %common_reg = getelementptr inbounds %struct.__vxge_hw_device, ptr %3, i32 0, i32 12
  %7 = ptrtoint ptr %common_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %common_reg, align 4
  %cmn_rsthdlr_cfg1 = getelementptr inbounds %struct.vxge_hw_common_reg, ptr %8, i32 0, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !91
  tail call void @arm_heavy_mb() #16
  %9 = tail call i32 @llvm.bswap.i32(i32 %6) #16
  %add.ptr.i = getelementptr i8, ptr %cmn_rsthdlr_cfg1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #16, !srcloc !81
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__vxge_hw_channel_allocate(ptr noundef %vph, i32 noundef %type, i32 noundef %length, i32 noundef %per_dtr_space, ptr noundef %userdata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %vpath = getelementptr inbounds %struct.__vxge_hw_vpath_handle, ptr %vph, i32 0, i32 1
  %0 = ptrtoint ptr %vpath to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vpath, align 4
  %hldev1 = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hldev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hldev1, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 128
  %6 = add i32 %type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %switch.selectcmp = icmp ult i32 %6, 2
  %7 = select i1 %switch.selectcmp, i32 640, i32 0
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #20
  %cmp = icmp eq ptr %call9.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %call9.i.i, ptr %call9.i.i, align 128
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call9.i.i, ptr %prev.i, align 4
  %common_reg = getelementptr inbounds %struct.__vxge_hw_device, ptr %3, i32 0, i32 12
  %10 = ptrtoint ptr %common_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %common_reg, align 4
  %common_reg5 = getelementptr inbounds %struct.__vxge_hw_channel, ptr %call9.i.i, i32 0, i32 19
  %12 = ptrtoint ptr %common_reg5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %common_reg5, align 8
  %first_vp_id = getelementptr inbounds %struct.__vxge_hw_device, ptr %3, i32 0, i32 23
  %13 = ptrtoint ptr %first_vp_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %first_vp_id, align 16
  %first_vp_id6 = getelementptr inbounds %struct.__vxge_hw_channel, ptr %call9.i.i, i32 0, i32 20
  %15 = ptrtoint ptr %first_vp_id6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %first_vp_id6, align 4
  %type7 = getelementptr inbounds %struct.__vxge_hw_channel, ptr %call9.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %type7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %type, ptr %type7, align 8
  %devh = getelementptr inbounds %struct.__vxge_hw_channel, ptr %call9.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %devh to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %3, ptr %devh, align 4
  %vph8 = getelementptr inbounds %struct.__vxge_hw_channel, ptr %call9.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %vph8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %vph, ptr %vph8, align 16
  %userdata9 = getelementptr inbounds %struct.__vxge_hw_channel, ptr %call9.i.i, i32 0, i32 18
  %19 = ptrtoint ptr %userdata9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %userdata, ptr %userdata9, align 4
  %per_dtr_space10 = getelementptr inbounds %struct.__vxge_hw_channel, ptr %call9.i.i, i32 0, i32 17
  %20 = ptrtoint ptr %per_dtr_space10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %per_dtr_space, ptr %per_dtr_space10, align 16
  %length11 = getelementptr inbounds %struct.__vxge_hw_channel, ptr %call9.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %length11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %length, ptr %length11, align 4
  %vp_id12 = getelementptr inbounds %struct.__vxge_hw_channel, ptr %call9.i.i, i32 0, i32 5
  %22 = ptrtoint ptr %vp_id12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %5, ptr %vp_id12, align 8
  %23 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %length, i32 4) #16
  %24 = extractvalue { i32, i1 } %23, 1
  %25 = extractvalue { i32, i1 } %23, 0
  br i1 %24, label %kcalloc.exit.thread, label %kcalloc.exit.thread197, !prof !100

kcalloc.exit.thread:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %work_arr176 = getelementptr inbounds %struct.__vxge_hw_channel, ptr %call9.i.i, i32 0, i32 9
  %26 = ptrtoint ptr %work_arr176 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %work_arr176, align 8
  br label %exit1

kcalloc.exit.thread197:                           ; preds = %if.end
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %25, i32 noundef 3520) #20
  %work_arr199 = getelementptr inbounds %struct.__vxge_hw_channel, ptr %call9.i.i, i32 0, i32 9
  %27 = ptrtoint ptr %work_arr199 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call8.i.i, ptr %work_arr199, align 8
  %cmp15200 = icmp eq ptr %call8.i.i, null
  br i1 %cmp15200, label %kcalloc.exit.thread197.exit1_crit_edge, label %kcalloc.exit104.thread209

kcalloc.exit.thread197.exit1_crit_edge:           ; preds = %kcalloc.exit.thread197
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit1

kcalloc.exit104.thread209:                        ; preds = %kcalloc.exit.thread197
  %call8.i.i101 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %25, i32 noundef 3520) #20
  %free_arr212 = getelementptr inbounds %struct.__vxge_hw_channel, ptr %call9.i.i, i32 0, i32 14
  %28 = ptrtoint ptr %free_arr212 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call8.i.i101, ptr %free_arr212, align 4
  %cmp20213 = icmp eq ptr %call8.i.i101, null
  br i1 %cmp20213, label %kcalloc.exit104.thread209.exit1_crit_edge, label %if.end.i.i105.thread214

kcalloc.exit104.thread209.exit1_crit_edge:        ; preds = %kcalloc.exit104.thread209
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit1

if.end.i.i105.thread214:                          ; preds = %kcalloc.exit104.thread209
  %free_ptr216 = getelementptr inbounds %struct.__vxge_hw_channel, ptr %call9.i.i, i32 0, i32 15
  %29 = ptrtoint ptr %free_ptr216 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %length, ptr %free_ptr216, align 8
  %call8.i.i134 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %25, i32 noundef 3520) #20
  %reserve_arr226 = getelementptr inbounds %struct.__vxge_hw_channel, ptr %call9.i.i, i32 0, i32 6
  %30 = ptrtoint ptr %reserve_arr226 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call8.i.i134, ptr %reserve_arr226, align 4
  %cmp25227 = icmp eq ptr %call8.i.i134, null
  br i1 %cmp25227, label %if.end.i.i105.thread214.exit1_crit_edge, label %if.end.i.i138.thread228

if.end.i.i105.thread214.exit1_crit_edge:          ; preds = %if.end.i.i105.thread214
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit1

if.end.i.i138.thread228:                          ; preds = %if.end.i.i105.thread214
  %reserve_ptr230 = getelementptr inbounds %struct.__vxge_hw_channel, ptr %call9.i.i, i32 0, i32 7
  %31 = ptrtoint ptr %reserve_ptr230 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %length, ptr %reserve_ptr230, align 32
  %reserve_top231 = getelementptr inbounds %struct.__vxge_hw_channel, ptr %call9.i.i, i32 0, i32 8
  %32 = ptrtoint ptr %reserve_top231 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %reserve_top231, align 4
  %call8.i.i167 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %25, i32 noundef 3520) #20
  %orig_arr = getelementptr inbounds %struct.__vxge_hw_channel, ptr %call9.i.i, i32 0, i32 16
  %33 = ptrtoint ptr %orig_arr to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call8.i.i167, ptr %orig_arr, align 4
  %cmp30 = icmp eq ptr %call8.i.i167, null
  br i1 %cmp30, label %if.end.i.i138.thread228.exit1_crit_edge, label %if.end.i.i138.thread228.cleanup_crit_edge

if.end.i.i138.thread228.cleanup_crit_edge:        ; preds = %if.end.i.i138.thread228
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i.i138.thread228.exit1_crit_edge:          ; preds = %if.end.i.i138.thread228
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit1

exit1:                                            ; preds = %if.end.i.i138.thread228.exit1_crit_edge, %if.end.i.i105.thread214.exit1_crit_edge, %kcalloc.exit104.thread209.exit1_crit_edge, %kcalloc.exit.thread197.exit1_crit_edge, %kcalloc.exit.thread
  %work_arr178 = phi ptr [ %work_arr199, %if.end.i.i138.thread228.exit1_crit_edge ], [ %work_arr176, %kcalloc.exit.thread ], [ %work_arr199, %kcalloc.exit.thread197.exit1_crit_edge ], [ %work_arr199, %kcalloc.exit104.thread209.exit1_crit_edge ], [ %work_arr199, %if.end.i.i105.thread214.exit1_crit_edge ]
  %34 = ptrtoint ptr %work_arr178 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %work_arr178, align 8
  tail call void @kfree(ptr noundef %35) #16
  %free_arr.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %call9.i.i, i32 0, i32 14
  %36 = ptrtoint ptr %free_arr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %free_arr.i, align 4
  tail call void @kfree(ptr noundef %37) #16
  %reserve_arr.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %call9.i.i, i32 0, i32 6
  %38 = ptrtoint ptr %reserve_arr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reserve_arr.i, align 4
  tail call void @kfree(ptr noundef %39) #16
  %orig_arr.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %call9.i.i, i32 0, i32 16
  %40 = ptrtoint ptr %orig_arr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %orig_arr.i, align 4
  tail call void @kfree(ptr noundef %41) #16
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %exit1, %if.end.i.i138.thread228.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9.i.i, %if.end.i.i138.thread228.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %exit1 ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @__vxge_hw_fifo_mempool_item_alloc(ptr nocapture noundef readonly %mempoolh, i32 noundef %memblock_index, ptr nocapture noundef readonly %dma_object, i32 noundef %index, i32 noundef %is_last) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %items_arr = getelementptr inbounds %struct.vxge_hw_mempool, ptr %mempoolh, i32 0, i32 14
  %0 = ptrtoint ptr %items_arr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %items_arr, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %index
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %userdata = getelementptr inbounds %struct.vxge_hw_mempool, ptr %mempoolh, i32 0, i32 1
  %4 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %userdata, align 4
  %memblocks_arr = getelementptr inbounds %struct.vxge_hw_mempool, ptr %mempoolh, i32 0, i32 2
  %6 = ptrtoint ptr %memblocks_arr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %memblocks_arr, align 4
  %arrayidx1 = getelementptr ptr, ptr %7, i32 %memblock_index
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx1, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %item_size.i = getelementptr inbounds %struct.vxge_hw_mempool, ptr %mempoolh, i32 0, i32 9
  %10 = ptrtoint ptr %item_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %item_size.i, align 4
  %div.i = udiv i32 %sub.ptr.sub.i, %11
  %memblocks_priv_arr.i = getelementptr inbounds %struct.vxge_hw_mempool, ptr %mempoolh, i32 0, i32 3
  %12 = ptrtoint ptr %memblocks_priv_arr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %memblocks_priv_arr.i, align 4
  %arrayidx1.i = getelementptr ptr, ptr %13, i32 %memblock_index
  %14 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx1.i, align 4
  %items_priv_size.i = getelementptr inbounds %struct.vxge_hw_mempool, ptr %mempoolh, i32 0, i32 15
  %16 = ptrtoint ptr %items_priv_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %items_priv_size.i, align 4
  %mul.i = mul i32 %17, %div.i
  %add.ptr.i = getelementptr i8, ptr %15, i32 %mul.i
  %18 = ptrtoint ptr %add.ptr.i to i32
  %conv = zext i32 %18 to i64
  %host_control = getelementptr inbounds %struct.vxge_hw_fifo_txd, ptr %3, i32 0, i32 3
  %19 = ptrtoint ptr %host_control to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv, ptr %host_control, align 8
  %per_txdl_space.i = getelementptr inbounds %struct.__vxge_hw_fifo, ptr %5, i32 0, i32 10
  %20 = ptrtoint ptr %per_txdl_space.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %per_txdl_space.i, align 8
  %add.ptr.i29 = getelementptr i8, ptr %add.ptr.i, i32 %21
  %reserve_arr = getelementptr inbounds %struct.__vxge_hw_channel, ptr %5, i32 0, i32 6
  %22 = ptrtoint ptr %reserve_arr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reserve_arr, align 4
  %reserve_ptr = getelementptr inbounds %struct.__vxge_hw_channel, ptr %5, i32 0, i32 7
  %24 = ptrtoint ptr %reserve_ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reserve_ptr, align 32
  %26 = xor i32 %index, -1
  %sub4 = add i32 %25, %26
  %arrayidx5 = getelementptr ptr, ptr %23, i32 %sub4
  %27 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %3, ptr %arrayidx5, align 4
  %dma_offset = getelementptr inbounds %struct.__vxge_hw_fifo_txdl_priv, ptr %add.ptr.i29, i32 0, i32 2
  %28 = ptrtoint ptr %dma_offset to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub.ptr.sub.i, ptr %dma_offset, align 4
  %29 = ptrtoint ptr %dma_object to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dma_object, align 4
  %add = add i32 %30, %sub.ptr.sub.i
  %31 = ptrtoint ptr %add.ptr.i29 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add, ptr %add.ptr.i29, align 4
  %handle = getelementptr inbounds %struct.vxge_hw_mempool_dma, ptr %dma_object, i32 0, i32 1
  %32 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %handle, align 4
  %dma_handle = getelementptr inbounds %struct.__vxge_hw_fifo_txdl_priv, ptr %add.ptr.i29, i32 0, i32 1
  %34 = ptrtoint ptr %dma_handle to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %dma_handle, align 4
  %memblock7 = getelementptr inbounds %struct.__vxge_hw_fifo_txdl_priv, ptr %add.ptr.i29, i32 0, i32 15
  %35 = ptrtoint ptr %memblock7 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %9, ptr %memblock7, align 4
  %first_txdp = getelementptr inbounds %struct.__vxge_hw_fifo_txdl_priv, ptr %add.ptr.i29, i32 0, i32 14
  %36 = ptrtoint ptr %first_txdp to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %3, ptr %first_txdp, align 4
  %next_txdl_priv = getelementptr inbounds %struct.__vxge_hw_fifo_txdl_priv, ptr %add.ptr.i29, i32 0, i32 13
  %37 = ptrtoint ptr %next_txdl_priv to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %next_txdl_priv, align 4
  %alloc_frags = getelementptr inbounds %struct.__vxge_hw_fifo_txdl_priv, ptr %add.ptr.i29, i32 0, i32 11
  %38 = ptrtoint ptr %alloc_frags to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %alloc_frags, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__vxge_hw_mempool_create(ptr noundef %devh, i32 noundef %memblock_size, i32 noundef %item_size, i32 noundef %items_priv_size, i32 noundef %items_initial, i32 noundef %items_max, ptr nocapture noundef readonly %mp_callback, ptr noundef %userdata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %memblock_size, i32 %item_size)
  %cmp = icmp ult i32 %memblock_size, %item_size
  br i1 %cmp, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end:                                           ; preds = %entry
  %call = tail call noalias ptr @vzalloc(i32 noundef 64) #20
  %cmp1 = icmp eq ptr %call, null
  br i1 %cmp1, label %if.end.exit_crit_edge, label %if.end3

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end3:                                          ; preds = %if.end
  %devh4 = getelementptr inbounds %struct.vxge_hw_mempool, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %devh4 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %devh, ptr %devh4, align 4
  %memblock_size5 = getelementptr inbounds %struct.vxge_hw_mempool, ptr %call, i32 0, i32 6
  %1 = ptrtoint ptr %memblock_size5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %memblock_size, ptr %memblock_size5, align 4
  %items_max6 = getelementptr inbounds %struct.vxge_hw_mempool, ptr %call, i32 0, i32 10
  %2 = ptrtoint ptr %items_max6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %items_max, ptr %items_max6, align 4
  %items_initial7 = getelementptr inbounds %struct.vxge_hw_mempool, ptr %call, i32 0, i32 11
  %3 = ptrtoint ptr %items_initial7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %items_initial, ptr %items_initial7, align 4
  %item_size8 = getelementptr inbounds %struct.vxge_hw_mempool, ptr %call, i32 0, i32 9
  %4 = ptrtoint ptr %item_size8 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %item_size, ptr %item_size8, align 4
  %items_priv_size9 = getelementptr inbounds %struct.vxge_hw_mempool, ptr %call, i32 0, i32 15
  %5 = ptrtoint ptr %items_priv_size9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %items_priv_size, ptr %items_priv_size9, align 4
  %6 = ptrtoint ptr %mp_callback to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mp_callback, align 4
  %8 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %call, align 4
  %userdata11 = getelementptr inbounds %struct.vxge_hw_mempool, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %userdata11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %userdata, ptr %userdata11, align 4
  %memblocks_allocated = getelementptr inbounds %struct.vxge_hw_mempool, ptr %call, i32 0, i32 8
  %10 = ptrtoint ptr %memblocks_allocated to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %memblocks_allocated, align 4
  %div = udiv i32 %memblock_size, %item_size
  %items_per_memblock = getelementptr inbounds %struct.vxge_hw_mempool, ptr %call, i32 0, i32 13
  %11 = ptrtoint ptr %items_per_memblock to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div, ptr %items_per_memblock, align 4
  %add = add i32 %items_max, -1
  %sub = add i32 %add, %div
  %div14 = udiv i32 %sub, %div
  %memblocks_max = getelementptr inbounds %struct.vxge_hw_mempool, ptr %call, i32 0, i32 7
  %12 = ptrtoint ptr %memblocks_max to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div14, ptr %memblocks_max, align 4
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div14, i32 4) #16
  %14 = extractvalue { i32, i1 } %13, 1
  %15 = extractvalue { i32, i1 } %13, 0
  %retval.0.i = select i1 %14, i32 -1, i32 %15
  %call17 = tail call noalias ptr @vzalloc(i32 noundef %retval.0.i) #20
  %memblocks_arr = getelementptr inbounds %struct.vxge_hw_mempool, ptr %call, i32 0, i32 2
  %16 = ptrtoint ptr %memblocks_arr to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call17, ptr %memblocks_arr, align 4
  %cmp19 = icmp eq ptr %call17, null
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @__vxge_hw_mempool_destroy(ptr noundef nonnull %call)
  br label %exit

if.end21:                                         ; preds = %if.end3
  %17 = ptrtoint ptr %memblocks_max to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %memblocks_max, align 4
  %19 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %18, i32 4) #16
  %20 = extractvalue { i32, i1 } %19, 1
  %21 = extractvalue { i32, i1 } %19, 0
  %retval.0.i93 = select i1 %20, i32 -1, i32 %21
  %call24 = tail call noalias ptr @vzalloc(i32 noundef %retval.0.i93) #20
  %memblocks_priv_arr = getelementptr inbounds %struct.vxge_hw_mempool, ptr %call, i32 0, i32 3
  %22 = ptrtoint ptr %memblocks_priv_arr to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call24, ptr %memblocks_priv_arr, align 4
  %cmp26 = icmp eq ptr %call24, null
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @__vxge_hw_mempool_destroy(ptr noundef nonnull %call)
  br label %exit

if.end28:                                         ; preds = %if.end21
  %23 = ptrtoint ptr %memblocks_max to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %memblocks_max, align 4
  %25 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %24, i32 12) #16
  %26 = extractvalue { i32, i1 } %25, 1
  %27 = extractvalue { i32, i1 } %25, 0
  %retval.0.i94 = select i1 %26, i32 -1, i32 %27
  %call31 = tail call noalias ptr @vzalloc(i32 noundef %retval.0.i94) #20
  %memblocks_dma_arr = getelementptr inbounds %struct.vxge_hw_mempool, ptr %call, i32 0, i32 4
  %28 = ptrtoint ptr %memblocks_dma_arr to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call31, ptr %memblocks_dma_arr, align 4
  %cmp33 = icmp eq ptr %call31, null
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @__vxge_hw_mempool_destroy(ptr noundef nonnull %call)
  br label %exit

if.end35:                                         ; preds = %if.end28
  %29 = ptrtoint ptr %items_max6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %items_max6, align 4
  %31 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %30, i32 4) #16
  %32 = extractvalue { i32, i1 } %31, 1
  %33 = extractvalue { i32, i1 } %31, 0
  %retval.0.i95 = select i1 %32, i32 -1, i32 %33
  %call38 = tail call noalias ptr @vzalloc(i32 noundef %retval.0.i95) #20
  %items_arr = getelementptr inbounds %struct.vxge_hw_mempool, ptr %call, i32 0, i32 14
  %34 = ptrtoint ptr %items_arr to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call38, ptr %items_arr, align 4
  %cmp40 = icmp eq ptr %call38, null
  br i1 %cmp40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @__vxge_hw_mempool_destroy(ptr noundef nonnull %call)
  br label %exit

if.end42:                                         ; preds = %if.end35
  %35 = ptrtoint ptr %items_initial7 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %items_initial7, align 4
  %37 = ptrtoint ptr %items_per_memblock to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %items_per_memblock, align 4
  %add45 = add i32 %36, -1
  %sub46 = add i32 %add45, %38
  %div48 = udiv i32 %sub46, %38
  %39 = ptrtoint ptr %memblocks_allocated to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %memblocks_allocated, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i = icmp eq i32 %40, 0
  %add.i = add i32 %40, %div48
  %41 = ptrtoint ptr %memblocks_max to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %memblocks_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %42)
  %cmp3.i = icmp ugt i32 %add.i, %42
  br i1 %cmp3.i, label %if.end42.if.then51_crit_edge, label %for.cond.preheader.i

if.end42.if.then51_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then51

for.cond.preheader.i:                             ; preds = %if.end42
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %add.i)
  %cmp4133.i = icmp ult i32 %40, %add.i
  br i1 %cmp4133.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.exit_crit_edge

for.cond.preheader.i.exit_crit_edge:              ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %sub.i = add i32 %add.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp31131.not.i = icmp eq i32 %38, 0
  %items_current.i = getelementptr inbounds %struct.vxge_hw_mempool, ptr %call, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.backedge, %for.body.lr.ph.i
  %i.0134.i = phi i32 [ %40, %for.body.lr.ph.i ], [ %i.0134.i.be, %for.body.i.backedge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %i.0134.i)
  %cmp5.i = icmp eq i32 %sub.i, %i.0134.i
  %conv.i = zext i1 %cmp5.i to i32
  %43 = ptrtoint ptr %memblocks_dma_arr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %memblocks_dma_arr, align 4
  %add.ptr.i = getelementptr %struct.vxge_hw_mempool_dma, ptr %44, i32 %i.0134.i
  %45 = ptrtoint ptr %items_priv_size9 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %items_priv_size9, align 4
  %47 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %46, i32 %38) #16
  %48 = extractvalue { i32, i1 } %47, 1
  %49 = extractvalue { i32, i1 } %47, 0
  %retval.0.i.i = select i1 %48, i32 -1, i32 %49
  %call6.i = tail call noalias ptr @vzalloc(i32 noundef %retval.0.i.i) #20
  %50 = ptrtoint ptr %memblocks_priv_arr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %memblocks_priv_arr, align 4
  %arrayidx.i = getelementptr ptr, ptr %51, i32 %i.0134.i
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call6.i, ptr %arrayidx.i, align 4
  %53 = load ptr, ptr %memblocks_priv_arr, align 4
  %arrayidx8.i = getelementptr ptr, ptr %53, i32 %i.0134.i
  %54 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx8.i, align 4
  %cmp9.i = icmp eq ptr %55, null
  br i1 %cmp9.i, label %for.body.i.if.then51_crit_edge, label %if.end12.i

for.body.i.if.then51_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then51

if.end12.i:                                       ; preds = %for.body.i
  %56 = ptrtoint ptr %devh4 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %devh4, align 4
  %58 = ptrtoint ptr %memblock_size5 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %memblock_size5, align 4
  %block_size.i.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %57, i32 0, i32 26, i32 1
  %60 = ptrtoint ptr %block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %block_size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %59)
  %cmp.not.i.i = icmp eq i32 %61, %59
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end12.i
  %handle.i.i = getelementptr %struct.vxge_hw_mempool_dma, ptr %44, i32 %i.0134.i, i32 1
  %acc_handle.i.i = getelementptr %struct.vxge_hw_mempool_dma, ptr %44, i32 %i.0134.i, i32 2
  %62 = ptrtoint ptr %handle.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %handle.i.i, align 4
  %63 = ptrtoint ptr %acc_handle.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %acc_handle.i.i, align 4
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %59, i32 noundef 3265) #20
  %cmp.i.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %cmp.i.i.i, label %if.then.i.i.__vxge_hw_blockpool_malloc.exit.i_crit_edge, label %vxge_os_dma_malloc.exit.i.i

if.then.i.i.__vxge_hw_blockpool_malloc.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_blockpool_malloc.exit.i

vxge_os_dma_malloc.exit.i.i:                      ; preds = %if.then.i.i
  %64 = ptrtoint ptr %acc_handle.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %acc_handle.i.i, align 4
  %pdev.i.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %57, i32 0, i32 2
  %65 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pdev.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  %call.i.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call9.i.i.i.i) #16
  br i1 %call.i.i.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %vxge_os_dma_malloc.exit.i.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !87

land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dma_map_single_attrs.exit.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = tail call ptr @dev_driver_string(ptr noundef %dev.i.i) #16
  %init_name.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44, i32 3
  %67 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %68, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i62.i.i, label %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_name.exit.i.i.i

if.end.i.i62.i.i:                                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %69 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev.i.i, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i62.i.i, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %70, %if.end.i.i62.i.i ], [ %68, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.38, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #16
  br label %dma_map_single_attrs.exit.i.i

if.end39.i.i.i:                                   ; preds = %vxge_os_dma_malloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @debug_dma_map_single(ptr noundef %dev.i.i, ptr noundef nonnull %call9.i.i.i.i, i32 noundef %59) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %71 = load ptr, ptr @mem_map, align 4
  %72 = ptrtoint ptr %call9.i.i.i.i to i32
  %sub.i.i.i = add i32 %72, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i63.i.i = getelementptr %struct.page, ptr %71, i32 %shr.i.i.i
  %and.i.i.i = and i32 %72, 3968
  %call41.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i.i, ptr noundef %add.ptr.i63.i.i, i32 noundef %and.i.i.i, i32 noundef %59, i32 noundef 0, i32 noundef 0) #16
  br label %dma_map_single_attrs.exit.i.i

dma_map_single_attrs.exit.i.i:                    ; preds = %if.end39.i.i.i, %dev_name.exit.i.i.i, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge
  %retval.0.i64.i.i = phi i32 [ %call41.i.i.i, %if.end39.i.i.i ], [ -1, %dev_name.exit.i.i.i ], [ -1, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge ]
  %73 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %retval.0.i64.i.i, ptr %add.ptr.i, align 4
  %74 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pdev.i.i, align 8
  %dev6.i.i = getelementptr inbounds %struct.pci_dev, ptr %75, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev6.i.i, i32 noundef %retval.0.i64.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i64.i.i)
  %cmp.i65.i.i = icmp eq i32 %retval.0.i64.i.i, -1
  br i1 %cmp.i65.i.i, label %if.then12.i.i, label %dma_map_single_attrs.exit.i.i.__vxge_hw_blockpool_malloc.exit.i_crit_edge

dma_map_single_attrs.exit.i.i.__vxge_hw_blockpool_malloc.exit.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_blockpool_malloc.exit.i

if.then12.i.i:                                    ; preds = %dma_map_single_attrs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %76 = ptrtoint ptr %acc_handle.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %acc_handle.i.i, align 4
  %idx.neg.i.i.i = sub i32 0, %77
  %add.ptr.i66.i.i = getelementptr i8, ptr %call9.i.i.i.i, i32 %idx.neg.i.i.i
  tail call void @kfree(ptr noundef %add.ptr.i66.i.i) #16
  br label %__vxge_hw_blockpool_malloc.exit.i

if.else.i.i:                                      ; preds = %if.end12.i
  %free_block_list.i.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %57, i32 0, i32 26, i32 5
  %78 = ptrtoint ptr %free_block_list.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile ptr, ptr %free_block_list.i.i, align 4
  %cmp.i67.i.i = icmp eq ptr %79, %free_block_list.i.i
  %cmp21.not.i.i = icmp eq ptr %79, null
  %or.cond.i.i = or i1 %cmp.i67.i.i, %cmp21.not.i.i
  br i1 %or.cond.i.i, label %if.else.i.i.__vxge_hw_blockpool_malloc.exit.i_crit_edge, label %if.then22.i.i

if.else.i.i.__vxge_hw_blockpool_malloc.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_blockpool_malloc.exit.i

if.then22.i.i:                                    ; preds = %if.else.i.i
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %79) #16
  br i1 %call.i.i.i.i, label %if.end.i.i68.i.i, label %if.then22.i.i.list_del.exit.i.i_crit_edge

if.then22.i.i.list_del.exit.i.i_crit_edge:        ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i.i

if.end.i.i68.i.i:                                 ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %prev.i.i.i.i, align 4
  %82 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %79, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %81, ptr %prev1.i.i.i.i.i, align 4
  %85 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %83, ptr %81, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i68.i.i, %if.then22.i.i.list_del.exit.i.i_crit_edge
  %86 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr inttoptr (i32 256 to ptr), ptr %79, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  %87 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %dma_addr.i.i = getelementptr inbounds %struct.__vxge_hw_blockpool_entry, ptr %79, i32 0, i32 3
  %88 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %dma_addr.i.i, align 4
  %90 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %add.ptr.i, align 4
  %dma_handle.i.i = getelementptr inbounds %struct.__vxge_hw_blockpool_entry, ptr %79, i32 0, i32 4
  %91 = ptrtoint ptr %dma_handle.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dma_handle.i.i, align 4
  %handle24.i.i = getelementptr %struct.vxge_hw_mempool_dma, ptr %44, i32 %i.0134.i, i32 1
  %93 = ptrtoint ptr %handle24.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %92, ptr %handle24.i.i, align 4
  %acc_handle25.i.i = getelementptr inbounds %struct.__vxge_hw_blockpool_entry, ptr %79, i32 0, i32 5
  %94 = ptrtoint ptr %acc_handle25.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %acc_handle25.i.i, align 4
  %acc_handle26.i.i = getelementptr %struct.vxge_hw_mempool_dma, ptr %44, i32 %i.0134.i, i32 2
  %96 = ptrtoint ptr %acc_handle26.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %95, ptr %acc_handle26.i.i, align 4
  %memblock27.i.i = getelementptr inbounds %struct.__vxge_hw_blockpool_entry, ptr %79, i32 0, i32 2
  %97 = ptrtoint ptr %memblock27.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %memblock27.i.i, align 4
  %free_entry_list.i.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %57, i32 0, i32 26, i32 6
  %99 = ptrtoint ptr %free_entry_list.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %free_entry_list.i.i, align 4
  %call.i.i69.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %79, ptr noundef %free_entry_list.i.i, ptr noundef %100) #16
  br i1 %call.i.i69.i.i, label %if.end.i.i70.i.i, label %list_del.exit.i.i.if.end29.i.i_crit_edge

list_del.exit.i.i.if.end29.i.i_crit_edge:         ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29.i.i

if.end.i.i70.i.i:                                 ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %79, ptr %prev1.i.i.i.i, align 4
  %102 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %100, ptr %79, align 4
  %103 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %free_entry_list.i.i, ptr %prev.i.i.i, align 4
  %104 = ptrtoint ptr %free_entry_list.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %79, ptr %free_entry_list.i.i, align 4
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.end.i.i70.i.i, %list_del.exit.i.i.if.end29.i.i_crit_edge
  %pool_size.i.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %57, i32 0, i32 26, i32 2
  %105 = ptrtoint ptr %pool_size.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %pool_size.i.i, align 4
  %dec.i.i = add i32 %106, -1
  store i32 %dec.i.i, ptr %pool_size.i.i, align 4
  br label %__vxge_hw_blockpool_malloc.exit.i

__vxge_hw_blockpool_malloc.exit.i:                ; preds = %if.end29.i.i, %if.else.i.i.__vxge_hw_blockpool_malloc.exit.i_crit_edge, %if.then12.i.i, %dma_map_single_attrs.exit.i.i.__vxge_hw_blockpool_malloc.exit.i_crit_edge, %if.then.i.i.__vxge_hw_blockpool_malloc.exit.i_crit_edge
  %memblock.1.i.i = phi ptr [ null, %if.then12.i.i ], [ %call9.i.i.i.i, %dma_map_single_attrs.exit.i.i.__vxge_hw_blockpool_malloc.exit.i_crit_edge ], [ null, %if.else.i.i.__vxge_hw_blockpool_malloc.exit.i_crit_edge ], [ %98, %if.end29.i.i ], [ null, %if.then.i.i.__vxge_hw_blockpool_malloc.exit.i_crit_edge ]
  %107 = ptrtoint ptr %memblocks_arr to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %memblocks_arr, align 4
  %arrayidx14.i = getelementptr ptr, ptr %108, i32 %i.0134.i
  %109 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %memblock.1.i.i, ptr %arrayidx14.i, align 4
  %110 = load ptr, ptr %memblocks_arr, align 4
  %arrayidx16.i = getelementptr ptr, ptr %110, i32 %i.0134.i
  %111 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx16.i, align 4
  %cmp17.i = icmp eq ptr %112, null
  br i1 %cmp17.i, label %if.then19.i, label %if.end22.i

if.then19.i:                                      ; preds = %__vxge_hw_blockpool_malloc.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %113 = ptrtoint ptr %memblocks_priv_arr to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %memblocks_priv_arr, align 4
  %arrayidx21.i = getelementptr ptr, ptr %114, i32 %i.0134.i
  %115 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx21.i, align 4
  tail call void @vfree(ptr noundef %116) #16
  br label %if.then51

if.end22.i:                                       ; preds = %__vxge_hw_blockpool_malloc.exit.i
  %117 = ptrtoint ptr %memblocks_allocated to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %memblocks_allocated, align 4
  %inc24.i = add i32 %118, 1
  store i32 %inc24.i, ptr %memblocks_allocated, align 4
  %119 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx16.i, align 4
  %121 = ptrtoint ptr %memblock_size5 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %memblock_size5, align 4
  %123 = call ptr @memset(ptr %120, i32 0, i32 %122)
  %124 = ptrtoint ptr %memblocks_arr to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %memblocks_arr, align 4
  %arrayidx29.i = getelementptr ptr, ptr %125, i32 %i.0134.i
  %126 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx29.i, align 4
  br i1 %cmp31131.not.i, label %if.end22.i.for.end.i_crit_edge, label %for.body33.lr.ph.i

if.end22.i.for.end.i_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body33.lr.ph.i:                               ; preds = %if.end22.i
  %mul.i = mul i32 %i.0134.i, %38
  br label %for.body33.i

for.body33.i:                                     ; preds = %for.inc.i.for.body33.i_crit_edge, %for.body33.lr.ph.i
  %j.0132.i = phi i32 [ 0, %for.body33.lr.ph.i ], [ %inc48.i, %for.inc.i.for.body33.i_crit_edge ]
  %add34.i = add i32 %j.0132.i, %mul.i
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body33.i.if.end38.i_crit_edge

for.body33.i.if.end38.i_crit_edge:                ; preds = %for.body33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38.i

land.lhs.true.i:                                  ; preds = %for.body33.i
  %128 = ptrtoint ptr %items_initial7 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %items_initial7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add34.i, i32 %129)
  %cmp35.not.i = icmp ult i32 %add34.i, %129
  br i1 %cmp35.not.i, label %land.lhs.true.i.if.end38.i_crit_edge, label %land.lhs.true.i.land.lhs.true50.i_crit_edge

land.lhs.true.i.land.lhs.true50.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true50.i

land.lhs.true.i.if.end38.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38.i

if.end38.i:                                       ; preds = %land.lhs.true.i.if.end38.i_crit_edge, %for.body33.i.if.end38.i_crit_edge
  %130 = ptrtoint ptr %item_size8 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %item_size8, align 4
  %mul39.i = mul i32 %131, %j.0132.i
  %add.ptr40.i = getelementptr i8, ptr %127, i32 %mul39.i
  %132 = ptrtoint ptr %items_arr to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %items_arr, align 4
  %arrayidx41.i = getelementptr ptr, ptr %133, i32 %add34.i
  %134 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %add.ptr40.i, ptr %arrayidx41.i, align 4
  %135 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %call, align 4
  %cmp42.not.i = icmp eq ptr %136, null
  br i1 %cmp42.not.i, label %if.end38.i.for.inc.i_crit_edge, label %if.then44.i

if.end38.i.for.inc.i_crit_edge:                   ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then44.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %136(ptr noundef %call, i32 noundef %i.0134.i, ptr noundef %add.ptr.i, i32 noundef %add34.i, i32 noundef %conv.i) #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then44.i, %if.end38.i.for.inc.i_crit_edge
  %add47.i = add i32 %add34.i, 1
  %137 = ptrtoint ptr %items_current.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %add47.i, ptr %items_current.i, align 4
  %inc48.i = add nuw i32 %j.0132.i, 1
  %exitcond.not.i = icmp eq i32 %inc48.i, %38
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body33.i_crit_edge

for.inc.i.for.body33.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body33.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end22.i.for.end.i_crit_edge
  br i1 %cmp.i, label %for.end.i.land.lhs.true50.i_crit_edge, label %for.inc63.i

for.end.i.land.lhs.true50.i_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true50.i

land.lhs.true50.i:                                ; preds = %for.end.i.land.lhs.true50.i_crit_edge, %land.lhs.true.i.land.lhs.true50.i_crit_edge
  %138 = ptrtoint ptr %items_current.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %items_current.i, align 4
  %140 = ptrtoint ptr %items_initial7 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %items_initial7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %139, i32 %141)
  %cmp53.i = icmp ne i32 %139, %141
  %inc64.i = add i32 %i.0134.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc64.i, i32 %add.i)
  %cmp4.i = icmp ult i32 %inc64.i, %add.i
  %or.cond.i = select i1 %cmp53.i, i1 %cmp4.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true50.i.for.body.i.backedge_crit_edge, label %land.lhs.true50.i.exit_crit_edge

land.lhs.true50.i.exit_crit_edge:                 ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

land.lhs.true50.i.for.body.i.backedge_crit_edge:  ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.backedge

for.inc63.i:                                      ; preds = %for.end.i
  %inc64.old.i = add i32 %i.0134.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc64.old.i, i32 %add.i)
  %cmp4.old.i = icmp ult i32 %inc64.old.i, %add.i
  br i1 %cmp4.old.i, label %for.inc63.i.for.body.i.backedge_crit_edge, label %for.inc63.i.exit_crit_edge

for.inc63.i.exit_crit_edge:                       ; preds = %for.inc63.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

for.inc63.i.for.body.i.backedge_crit_edge:        ; preds = %for.inc63.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.backedge

for.body.i.backedge:                              ; preds = %for.inc63.i.for.body.i.backedge_crit_edge, %land.lhs.true50.i.for.body.i.backedge_crit_edge
  %i.0134.i.be = phi i32 [ %inc64.old.i, %for.inc63.i.for.body.i.backedge_crit_edge ], [ %inc64.i, %land.lhs.true50.i.for.body.i.backedge_crit_edge ]
  br label %for.body.i

if.then51:                                        ; preds = %if.then19.i, %for.body.i.if.then51_crit_edge, %if.end42.if.then51_crit_edge
  tail call fastcc void @__vxge_hw_mempool_destroy(ptr noundef %call)
  br label %exit

exit:                                             ; preds = %if.then51, %for.inc63.i.exit_crit_edge, %land.lhs.true50.i.exit_crit_edge, %for.cond.preheader.i.exit_crit_edge, %if.then41, %if.then34, %if.then27, %if.then20, %if.end.exit_crit_edge, %entry.exit_crit_edge
  %mempool.0 = phi ptr [ null, %if.then20 ], [ null, %if.then27 ], [ null, %if.then34 ], [ null, %if.then41 ], [ null, %if.then51 ], [ null, %entry.exit_crit_edge ], [ null, %if.end.exit_crit_edge ], [ %call, %for.cond.preheader.i.exit_crit_edge ], [ %call, %for.inc63.i.exit_crit_edge ], [ %call, %land.lhs.true50.i.exit_crit_edge ]
  ret ptr %mempool.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__vxge_hw_mempool_destroy(ptr noundef %mempool) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %memblocks_allocated = getelementptr inbounds %struct.vxge_hw_mempool, ptr %mempool, i32 0, i32 8
  %0 = ptrtoint ptr %memblocks_allocated to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %memblocks_allocated, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp36.not = icmp eq i32 %1, 0
  br i1 %cmp36.not, label %entry.for.end10_crit_edge, label %for.body.lr.ph

entry.for.end10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end10

for.body.lr.ph:                                   ; preds = %entry
  %devh1 = getelementptr inbounds %struct.vxge_hw_mempool, ptr %mempool, i32 0, i32 5
  %2 = ptrtoint ptr %devh1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devh1, align 4
  %memblocks_dma_arr = getelementptr inbounds %struct.vxge_hw_mempool, ptr %mempool, i32 0, i32 4
  %memblocks_priv_arr = getelementptr inbounds %struct.vxge_hw_mempool, ptr %mempool, i32 0, i32 3
  %memblocks_arr = getelementptr inbounds %struct.vxge_hw_mempool, ptr %mempool, i32 0, i32 2
  %memblock_size = getelementptr inbounds %struct.vxge_hw_mempool, ptr %mempool, i32 0, i32 6
  %block_pool.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %3, i32 0, i32 26
  %block_size.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %3, i32 0, i32 26, i32 1
  %pdev.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %3, i32 0, i32 2
  %free_entry_list.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %3, i32 0, i32 26, i32 6
  %free_block_list.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %3, i32 0, i32 26, i32 5
  %pool_size.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %3, i32 0, i32 26, i32 2
  br label %for.body

for.body:                                         ; preds = %__vxge_hw_blockpool_free.exit.for.body_crit_edge, %for.body.lr.ph
  %i.037 = phi i32 [ 0, %for.body.lr.ph ], [ %inc9, %__vxge_hw_blockpool_free.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %memblocks_dma_arr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %memblocks_dma_arr, align 4
  %add.ptr = getelementptr %struct.vxge_hw_mempool_dma, ptr %5, i32 %i.037
  %6 = ptrtoint ptr %memblocks_priv_arr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %memblocks_priv_arr, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 %i.037
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  tail call void @vfree(ptr noundef %9) #16
  %10 = ptrtoint ptr %memblocks_arr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %memblocks_arr, align 4
  %arrayidx7 = getelementptr ptr, ptr %11, i32 %i.037
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx7, align 4
  %14 = ptrtoint ptr %memblock_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %memblock_size, align 4
  %16 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %block_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp.not.i = icmp eq i32 %17, %15
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %18 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %21, i32 noundef %15, i32 noundef 0, i32 noundef 0) #16
  %acc_handle.i = getelementptr %struct.vxge_hw_mempool_dma, ptr %5, i32 %i.037, i32 2
  %22 = ptrtoint ptr %acc_handle.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %acc_handle.i, align 4
  %idx.neg.i.i = sub i32 0, %23
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %idx.neg.i.i
  tail call void @kfree(ptr noundef %add.ptr.i.i) #16
  br label %__vxge_hw_blockpool_free.exit

if.else.i:                                        ; preds = %for.body
  %24 = ptrtoint ptr %free_entry_list.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %free_entry_list.i, align 4
  %cmp.i.i = icmp eq ptr %25, %free_entry_list.i
  %cmp5.i = icmp eq ptr %25, null
  %or.cond.i = or i1 %cmp.i.i, %cmp5.i
  br i1 %or.cond.i, label %if.end9.i, label %if.else8.i

if.else8.i:                                       ; preds = %if.else.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %25) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else8.i.if.end9.thread.i_crit_edge

if.else8.i.if.end9.thread.i_crit_edge:            ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.thread.i

if.end.i.i.i:                                     ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i.i, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %if.end9.thread.i

if.end9.thread.i:                                 ; preds = %if.end.i.i.i, %if.else8.i.if.end9.thread.i_crit_edge
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 256 to ptr), ptr %25, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %if.then11.i

if.end9.i:                                        ; preds = %if.else.i
  %call7.i = tail call noalias ptr @vmalloc(i32 noundef 28) #20
  %cmp10.not.i = icmp eq ptr %call7.i, null
  br i1 %cmp10.not.i, label %if.end9.i.__vxge_hw_blockpool_free.exit_crit_edge, label %if.end9.i.if.then11.i_crit_edge

if.end9.i.if.then11.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i

if.end9.i.__vxge_hw_blockpool_free.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__vxge_hw_blockpool_free.exit

if.then11.i:                                      ; preds = %if.end9.i.if.then11.i_crit_edge, %if.end9.thread.i
  %entry1.151.i = phi ptr [ %25, %if.end9.thread.i ], [ %call7.i, %if.end9.i.if.then11.i_crit_edge ]
  %length.i = getelementptr inbounds %struct.__vxge_hw_blockpool_entry, ptr %entry1.151.i, i32 0, i32 1
  %34 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %15, ptr %length.i, align 4
  %memblock12.i = getelementptr inbounds %struct.__vxge_hw_blockpool_entry, ptr %entry1.151.i, i32 0, i32 2
  %35 = ptrtoint ptr %memblock12.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %13, ptr %memblock12.i, align 4
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr, align 4
  %dma_addr.i = getelementptr inbounds %struct.__vxge_hw_blockpool_entry, ptr %entry1.151.i, i32 0, i32 3
  %38 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %dma_addr.i, align 4
  %acc_handle14.i = getelementptr %struct.vxge_hw_mempool_dma, ptr %5, i32 %i.037, i32 2
  %39 = ptrtoint ptr %acc_handle14.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %acc_handle14.i, align 4
  %acc_handle15.i = getelementptr inbounds %struct.__vxge_hw_blockpool_entry, ptr %entry1.151.i, i32 0, i32 5
  %41 = ptrtoint ptr %acc_handle15.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %acc_handle15.i, align 4
  %handle.i = getelementptr %struct.vxge_hw_mempool_dma, ptr %5, i32 %i.037, i32 1
  %42 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %handle.i, align 4
  %dma_handle.i = getelementptr inbounds %struct.__vxge_hw_blockpool_entry, ptr %entry1.151.i, i32 0, i32 4
  %44 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %dma_handle.i, align 4
  %45 = ptrtoint ptr %free_block_list.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %free_block_list.i, align 4
  %call.i.i45.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %entry1.151.i, ptr noundef %free_block_list.i, ptr noundef %46) #16
  br i1 %call.i.i45.i, label %if.end.i.i46.i, label %if.then11.i.list_add.exit.i_crit_edge

if.then11.i.list_add.exit.i_crit_edge:            ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add.exit.i

if.end.i.i46.i:                                   ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %entry1.151.i, ptr %prev1.i.i.i, align 4
  %48 = ptrtoint ptr %entry1.151.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %46, ptr %entry1.151.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.151.i, i32 0, i32 1
  %49 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %free_block_list.i, ptr %prev3.i.i.i, align 4
  %50 = ptrtoint ptr %free_block_list.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %entry1.151.i, ptr %free_block_list.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i46.i, %if.then11.i.list_add.exit.i_crit_edge
  %51 = ptrtoint ptr %pool_size.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pool_size.i, align 4
  %inc.i = add i32 %52, 1
  store i32 %inc.i, ptr %pool_size.i, align 4
  tail call fastcc void @__vxge_hw_blockpool_blocks_remove(ptr noundef %block_pool.i) #16
  br label %__vxge_hw_blockpool_free.exit

__vxge_hw_blockpool_free.exit:                    ; preds = %list_add.exit.i, %if.end9.i.__vxge_hw_blockpool_free.exit_crit_edge, %if.then.i
  %inc9 = add nuw i32 %i.037, 1
  %53 = ptrtoint ptr %memblocks_allocated to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %memblocks_allocated, align 4
  %cmp = icmp ult i32 %inc9, %54
  br i1 %cmp, label %__vxge_hw_blockpool_free.exit.for.body_crit_edge, label %__vxge_hw_blockpool_free.exit.for.end10_crit_edge

__vxge_hw_blockpool_free.exit.for.end10_crit_edge: ; preds = %__vxge_hw_blockpool_free.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end10

__vxge_hw_blockpool_free.exit.for.body_crit_edge: ; preds = %__vxge_hw_blockpool_free.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end10:                                        ; preds = %__vxge_hw_blockpool_free.exit.for.end10_crit_edge, %entry.for.end10_crit_edge
  %items_arr = getelementptr inbounds %struct.vxge_hw_mempool, ptr %mempool, i32 0, i32 14
  %55 = ptrtoint ptr %items_arr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %items_arr, align 4
  tail call void @vfree(ptr noundef %56) #16
  %memblocks_dma_arr11 = getelementptr inbounds %struct.vxge_hw_mempool, ptr %mempool, i32 0, i32 4
  %57 = ptrtoint ptr %memblocks_dma_arr11 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %memblocks_dma_arr11, align 4
  tail call void @vfree(ptr noundef %58) #16
  %memblocks_priv_arr12 = getelementptr inbounds %struct.vxge_hw_mempool, ptr %mempool, i32 0, i32 3
  %59 = ptrtoint ptr %memblocks_priv_arr12 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %memblocks_priv_arr12, align 4
  tail call void @vfree(ptr noundef %60) #16
  %memblocks_arr13 = getelementptr inbounds %struct.vxge_hw_mempool, ptr %mempool, i32 0, i32 2
  %61 = ptrtoint ptr %memblocks_arr13 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %memblocks_arr13, align 4
  tail call void @vfree(ptr noundef %62) #16
  tail call void @vfree(ptr noundef %mempool) #16
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__vxge_hw_blockpool_blocks_remove(ptr noundef %blockpool) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %free_block_list = getelementptr inbounds %struct.__vxge_hw_blockpool, ptr %blockpool, i32 0, i32 5
  %0 = ptrtoint ptr %free_block_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free_block_list, align 4
  %pool_size = getelementptr inbounds %struct.__vxge_hw_blockpool, ptr %blockpool, i32 0, i32 2
  %cmp.i.not25 = icmp eq ptr %1, %free_block_list
  br i1 %cmp.i.not25, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pool_max = getelementptr inbounds %struct.__vxge_hw_blockpool, ptr %blockpool, i32 0, i32 3
  %free_entry_list = getelementptr inbounds %struct.__vxge_hw_blockpool, ptr %blockpool, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %list_add.exit.for.body_crit_edge, %for.body.lr.ph
  %p.026 = phi ptr [ %1, %for.body.lr.ph ], [ %n.027, %list_add.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %p.026 to i32
  call void @__asan_load4_noabort(i32 %2)
  %n.027 = load ptr, ptr %p.026, align 4
  %3 = ptrtoint ptr %pool_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pool_size, align 4
  %5 = ptrtoint ptr %pool_max to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pool_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp = icmp ult i32 %4, %6
  br i1 %cmp, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end:                                           ; preds = %for.body
  %7 = ptrtoint ptr %blockpool to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %blockpool, align 4
  %pdev = getelementptr inbounds %struct.__vxge_hw_device, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %dma_addr = getelementptr inbounds %struct.__vxge_hw_blockpool_entry, ptr %p.026, i32 0, i32 3
  %11 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_addr, align 4
  %length = getelementptr inbounds %struct.__vxge_hw_blockpool_entry, ptr %p.026, i32 0, i32 1
  %13 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %12, i32 noundef %14, i32 noundef 0, i32 noundef 0) #16
  %memblock = getelementptr inbounds %struct.__vxge_hw_blockpool_entry, ptr %p.026, i32 0, i32 2
  %15 = ptrtoint ptr %memblock to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %memblock, align 4
  %acc_handle = getelementptr inbounds %struct.__vxge_hw_blockpool_entry, ptr %p.026, i32 0, i32 5
  %17 = ptrtoint ptr %acc_handle to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %acc_handle, align 4
  %idx.neg.i = sub i32 0, %18
  %add.ptr.i = getelementptr i8, ptr %16, i32 %idx.neg.i
  tail call void @kfree(ptr noundef %add.ptr.i) #16
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %p.026) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %p.026, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %p.026 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %p.026, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %25 = ptrtoint ptr %p.026 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %p.026, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %p.026, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %27 = ptrtoint ptr %free_entry_list to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %free_entry_list, align 4
  %call.i.i22 = tail call zeroext i1 @__list_add_valid(ptr noundef %p.026, ptr noundef %free_entry_list, ptr noundef %28) #16
  br i1 %call.i.i22, label %if.end.i.i23, label %list_del.exit.list_add.exit_crit_edge

list_del.exit.list_add.exit_crit_edge:            ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add.exit

if.end.i.i23:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %p.026, ptr %prev1.i.i, align 4
  %30 = ptrtoint ptr %p.026 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %28, ptr %p.026, align 4
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %free_entry_list, ptr %prev.i, align 4
  %32 = ptrtoint ptr %free_entry_list to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %p.026, ptr %free_entry_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i23, %list_del.exit.list_add.exit_crit_edge
  %33 = ptrtoint ptr %pool_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pool_size, align 4
  %dec = add i32 %34, -1
  store i32 %dec, ptr %pool_size, align 4
  %cmp.i.not = icmp eq ptr %n.027, %free_block_list
  br i1 %cmp.i.not, label %list_add.exit.for.end_crit_edge, label %list_add.exit.for.body_crit_edge

list_add.exit.for.body_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

list_add.exit.for.end_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %list_add.exit.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__vxge_hw_ring_mempool_item_alloc(ptr nocapture noundef readonly %mempoolh, i32 noundef %memblock_index, ptr nocapture noundef readnone %dma_object, i32 noundef %index, i32 noundef %is_last) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %items_arr = getelementptr inbounds %struct.vxge_hw_mempool, ptr %mempoolh, i32 0, i32 14
  %0 = ptrtoint ptr %items_arr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %items_arr, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %index
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %userdata = getelementptr inbounds %struct.vxge_hw_mempool, ptr %mempoolh, i32 0, i32 1
  %4 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %userdata, align 4
  %rxds_per_block = getelementptr inbounds %struct.__vxge_hw_ring, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %rxds_per_block to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rxds_per_block, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp57.not = icmp eq i32 %7, 0
  br i1 %cmp57.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %reserve_ptr = getelementptr inbounds %struct.__vxge_hw_channel, ptr %5, i32 0, i32 7
  %rxd_size = getelementptr inbounds %struct.__vxge_hw_ring, ptr %5, i32 0, i32 6
  %reserve_arr = getelementptr inbounds %struct.__vxge_hw_channel, ptr %5, i32 0, i32 6
  %memblocks_arr.i = getelementptr inbounds %struct.vxge_hw_mempool, ptr %mempoolh, i32 0, i32 2
  %sub.ptr.lhs.cast.i = ptrtoint ptr %3 to i32
  %item_size.i = getelementptr inbounds %struct.vxge_hw_mempool, ptr %mempoolh, i32 0, i32 9
  %memblocks_priv_arr.i = getelementptr inbounds %struct.vxge_hw_mempool, ptr %mempoolh, i32 0, i32 3
  %items_priv_size.i = getelementptr inbounds %struct.vxge_hw_mempool, ptr %mempoolh, i32 0, i32 15
  %rxd_priv_size = getelementptr inbounds %struct.__vxge_hw_ring, ptr %5, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %8 = phi i32 [ %7, %for.body.lr.ph ], [ %36, %for.body.for.body_crit_edge ]
  %i.058 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %9 = ptrtoint ptr %reserve_ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reserve_ptr, align 32
  %mul = mul i32 %8, %index
  %add = add i32 %mul, %i.058
  %add2.neg = xor i32 %add, -1
  %sub = add i32 %10, %add2.neg
  %11 = ptrtoint ptr %rxd_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rxd_size, align 4
  %mul3 = mul i32 %12, %i.058
  %add.ptr = getelementptr i8, ptr %3, i32 %mul3
  %13 = ptrtoint ptr %reserve_arr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reserve_arr, align 4
  %arrayidx5 = getelementptr ptr, ptr %14, i32 %sub
  %15 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr, ptr %arrayidx5, align 4
  %16 = ptrtoint ptr %memblocks_arr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %memblocks_arr.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %17, i32 %memblock_index
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %sub.ptr.rhs.cast.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %20 = ptrtoint ptr %item_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %item_size.i, align 4
  %div.i = udiv i32 %sub.ptr.sub.i, %21
  %22 = ptrtoint ptr %memblocks_priv_arr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %memblocks_priv_arr.i, align 4
  %arrayidx1.i = getelementptr ptr, ptr %23, i32 %memblock_index
  %24 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx1.i, align 4
  %26 = ptrtoint ptr %items_priv_size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %items_priv_size.i, align 4
  %mul.i = mul i32 %27, %div.i
  %add.ptr.i = getelementptr i8, ptr %25, i32 %mul.i
  %28 = load ptr, ptr %reserve_arr, align 4
  %arrayidx8 = getelementptr ptr, ptr %28, i32 %sub
  %29 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx8, align 4
  %31 = ptrtoint ptr %rxd_priv_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rxd_priv_size, align 8
  %mul9 = mul i32 %32, %i.058
  %add.ptr10 = getelementptr i8, ptr %add.ptr.i, i32 %mul9
  %33 = ptrtoint ptr %add.ptr10 to i32
  %conv = zext i32 %33 to i64
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv, ptr %30, align 8
  %inc = add nuw i32 %i.058, 1
  %35 = ptrtoint ptr %rxds_per_block to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rxds_per_block, align 32
  %cmp = icmp ult i32 %inc, %36
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %conv.i = zext i32 %memblock_index to i64
  %add.ptr.i41 = getelementptr i8, ptr %3, i32 4080
  %37 = ptrtoint ptr %add.ptr.i41 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv.i, ptr %add.ptr.i41, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_last)
  %tobool.not = icmp eq i32 %is_last, 0
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %38 = ptrtoint ptr %items_arr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %items_arr, align 4
  %arrayidx.i42 = getelementptr ptr, ptr %39, i32 %index
  %40 = ptrtoint ptr %arrayidx.i42 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i42, align 4
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %39, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %43, i32 4080
  %44 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %add.ptr.i.i.i, align 8
  %conv.i.i.i = trunc i64 %45 to i32
  %memblocks_arr.i.i = getelementptr inbounds %struct.vxge_hw_mempool, ptr %mempoolh, i32 0, i32 2
  %46 = ptrtoint ptr %memblocks_arr.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %memblocks_arr.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %47, i32 %conv.i.i.i
  %48 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i.i, align 4
  %memblocks_dma_arr.i.i = getelementptr inbounds %struct.vxge_hw_mempool, ptr %mempoolh, i32 0, i32 4
  %50 = ptrtoint ptr %memblocks_dma_arr.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %memblocks_dma_arr.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.vxge_hw_mempool_dma, ptr %51, i32 %conv.i.i.i
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %43 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %49 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %52 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr.i.i, align 4
  %add.i.i = add i32 %sub.ptr.sub.i.i, %53
  %conv.i.i = zext i32 %add.i.i to i64
  %add.ptr.i1.i = getelementptr i8, ptr %41, i32 4088
  %54 = ptrtoint ptr %add.ptr.i1.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %conv.i.i, ptr %add.ptr.i1.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp11.not = icmp eq i32 %index, 0
  br i1 %cmp11.not, label %if.end.if.end15_crit_edge, label %if.then13

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %sub14 = add i32 %index, -1
  %55 = ptrtoint ptr %items_arr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %items_arr, align 4
  %arrayidx.i44 = getelementptr ptr, ptr %56, i32 %sub14
  %57 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i44, align 4
  %arrayidx2.i = getelementptr ptr, ptr %56, i32 %index
  %59 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx2.i, align 4
  %add.ptr.i.i.i45 = getelementptr i8, ptr %60, i32 4080
  %61 = ptrtoint ptr %add.ptr.i.i.i45 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %add.ptr.i.i.i45, align 8
  %conv.i.i.i46 = trunc i64 %62 to i32
  %memblocks_arr.i.i47 = getelementptr inbounds %struct.vxge_hw_mempool, ptr %mempoolh, i32 0, i32 2
  %63 = ptrtoint ptr %memblocks_arr.i.i47 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %memblocks_arr.i.i47, align 4
  %arrayidx.i.i48 = getelementptr ptr, ptr %64, i32 %conv.i.i.i46
  %65 = ptrtoint ptr %arrayidx.i.i48 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.i.i48, align 4
  %memblocks_dma_arr.i.i49 = getelementptr inbounds %struct.vxge_hw_mempool, ptr %mempoolh, i32 0, i32 4
  %67 = ptrtoint ptr %memblocks_dma_arr.i.i49 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %memblocks_dma_arr.i.i49, align 4
  %add.ptr.i.i50 = getelementptr %struct.vxge_hw_mempool_dma, ptr %68, i32 %conv.i.i.i46
  %sub.ptr.lhs.cast.i.i51 = ptrtoint ptr %60 to i32
  %sub.ptr.rhs.cast.i.i52 = ptrtoint ptr %66 to i32
  %sub.ptr.sub.i.i53 = sub i32 %sub.ptr.lhs.cast.i.i51, %sub.ptr.rhs.cast.i.i52
  %69 = ptrtoint ptr %add.ptr.i.i50 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %add.ptr.i.i50, align 4
  %add.i.i54 = add i32 %sub.ptr.sub.i.i53, %70
  %conv.i.i55 = zext i32 %add.i.i54 to i64
  %add.ptr.i1.i56 = getelementptr i8, ptr %58, i32 4088
  %71 = ptrtoint ptr %add.ptr.i1.i56 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %conv.i.i55, ptr %add.ptr.i1.i56, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end.if.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vxge_hw_ring_replenish(ptr noundef %ring) unnamed_addr #0 align 64 {
entry:
  %rxd = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rxd) #16
  %0 = ptrtoint ptr %rxd to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %rxd, align 4, !annotation !88
  %call15 = call i32 @vxge_hw_channel_dtr_count(ptr noundef %ring) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp sgt i32 %call15, 0
  br i1 %cmp16, label %while.body.lr.ph, label %entry.exit_crit_edge

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

while.body.lr.ph:                                 ; preds = %entry
  %rxd_init = getelementptr inbounds %struct.__vxge_hw_ring, ptr %ring, i32 0, i32 20
  %userdata = getelementptr inbounds %struct.__vxge_hw_channel, ptr %ring, i32 0, i32 18
  br label %while.body

while.body:                                       ; preds = %if.end7.while.body_crit_edge, %while.body.lr.ph
  %call2 = call i32 @vxge_hw_ring_rxd_reserve(ptr noundef %ring, ptr noundef nonnull %rxd) #16
  %1 = ptrtoint ptr %rxd_init to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rxd_init, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %while.body.if.end7_crit_edge, label %if.then

while.body.if.end7_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.then:                                          ; preds = %while.body
  %3 = ptrtoint ptr %rxd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rxd, align 4
  %5 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %userdata, align 4
  %call4 = call i32 %2(ptr noundef %4, ptr noundef %6) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %if.then.if.end7_crit_edge, label %if.then6

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %7 = ptrtoint ptr %rxd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rxd, align 4
  call void @vxge_hw_ring_rxd_free(ptr noundef %ring, ptr noundef %8) #16
  br label %exit

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %while.body.if.end7_crit_edge
  %9 = ptrtoint ptr %rxd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rxd, align 4
  call void @vxge_hw_ring_rxd_post(ptr noundef %ring, ptr noundef %10) #16
  %call = call i32 @vxge_hw_channel_dtr_count(ptr noundef %ring) #16
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.end7.while.body_crit_edge, label %if.end7.exit_crit_edge

if.end7.exit_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end7.while.body_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

exit:                                             ; preds = %if.end7.exit_crit_edge, %if.then6, %entry.exit_crit_edge
  %status.0 = phi i32 [ %call4, %if.then6 ], [ 0, %entry.exit_crit_edge ], [ 0, %if.end7.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rxd) #16
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vxge_hw_channel_dtr_count(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vxge_hw_ring_rxd_reserve(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vxge_hw_ring_rxd_free(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vxge_hw_ring_rxd_post(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vxge_hw_channel_dtr_try_complete(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vxge_hw_channel_dtr_complete(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vxge_hw_channel_dtr_free(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !57, !59, !61, !62, !63, !65, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-config.c", i32 89, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @vxge_hw_vpath_wait_receive_idle._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @vxge_hw_vpath_wait_receive_idle._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-config.c", i32 261, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @vxge_hw_flash_fw._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @vxge_hw_flash_fw._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-config.c", i32 267, i32 3}
!13 = !{ptr @vxge_hw_flash_fw._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @vxge_hw_flash_fw._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-config.c", i32 293, i32 3}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @vxge_update_fw_image._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @vxge_update_fw_image._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-config.c", i32 312, i32 4}
!22 = !{ptr @vxge_update_fw_image._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @vxge_update_fw_image._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-config.c", i32 333, i32 5}
!26 = !{ptr @vxge_update_fw_image._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @vxge_update_fw_image._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-config.c", i32 341, i32 5}
!30 = !{ptr @vxge_update_fw_image._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @vxge_update_fw_image._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-config.c", i32 344, i32 5}
!34 = !{ptr @vxge_update_fw_image._entry.19, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @vxge_update_fw_image._entry_ptr.21, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-config.c", i32 347, i32 5}
!38 = !{ptr @vxge_update_fw_image._entry.22, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @vxge_update_fw_image._entry_ptr.24, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-config.c", i32 350, i32 5}
!42 = !{ptr @vxge_update_fw_image._entry.25, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @vxge_update_fw_image._entry_ptr.27, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.29, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-config.c", i32 354, i32 5}
!46 = !{ptr @vxge_update_fw_image._entry.28, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @vxge_update_fw_image._entry_ptr.30, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.32, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-config.c", i32 361, i32 4}
!50 = !{ptr @vxge_update_fw_image._entry.31, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @vxge_update_fw_image._entry_ptr.33, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @vxge_hw_device_hw_info_get.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-config.c", i32 1057, i32 3}
!54 = !{ptr @.str.34, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.35, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-config.c", i32 828, i32 45}
!57 = !{ptr @.str.36, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-config.c", i32 838, i32 51}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!61 = !{ptr @.str.37, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.38, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @__vxge_hw_vp_initialize.__key, !64, !"__key", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-config.c", i32 4653, i32 2}
!65 = !{ptr @.str.39, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @__vxge_hw_ring_create.ring_mp_callback, !67, !"ring_mp_callback", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/neterion/vxge/vxge-config.c", i32 2796, i32 42}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{i64 6190476}
!78 = !{i64 2156087634}
!79 = !{i64 2156088072}
!80 = !{i64 2156088442}
!81 = !{i64 6190058}
!82 = !{i64 2156088815}
!83 = !{i64 2156941060}
!84 = !{i64 2156963997}
!85 = !{i64 2156960686}
!86 = !{i64 2156961202}
!87 = !{!"branch_weights", i32 2000, i32 1}
!88 = !{!"auto-init"}
!89 = !{i64 2156850023}
!90 = !{i64 2156940670}
!91 = !{i64 2156849487}
!92 = !{i64 2156940886}
!93 = !{i64 2156985315}
!94 = !{i64 2156999233}
!95 = !{i64 2156981020}
!96 = !{i64 2156981325}
!97 = !{i64 2156987863}
!98 = !{i64 2156982321}
!99 = !{i64 2156982530}
!100 = !{!"branch_weights", i32 1, i32 2000}

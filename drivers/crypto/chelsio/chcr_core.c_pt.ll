; ModuleID = '/llk/IR_all_yes/drivers/crypto/chelsio/chcr_core.c_pt.bc'
source_filename = "../drivers/crypto/chelsio/chcr_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.chcr_driver_data = type { %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.mutex, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cxgb4_uld_info = type { [16 x i8], ptr, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%struct.uld_ctx = type { %struct.list_head, %struct.cxgb4_lld_info, %struct.chcr_dev }
%struct.cxgb4_lld_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i8, i8, i8, i8, i8, i32, i32, i32, i16, i16, i32, i16, [4 x i16], ptr, ptr, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32, i32, i32, i32, ptr, i32, i8, i8, i8 }
%struct.chcr_dev = type { %struct.spinlock, i32, %struct.atomic_t, i32, %struct.delayed_work, %struct.completion }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.166, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.166 = type { ptr }
%struct.pkt_gl = type { i64, [17 x %struct.page_frag], ptr, i32, i32 }
%struct.page_frag = type { ptr, i16, i16 }
%struct.adapter = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i16, i16, %struct.adapter_params, %struct.cxgb4_virt_res, i32, ptr, %struct.msix_bmap, %struct.doorbell_stats, [36 x i8], %struct.sge, [4 x ptr], [4 x i8], ptr, i8, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, ptr, [8 x ptr], i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, [64 x i8], %struct.tid_info, ptr, %struct.spinlock, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i8, %struct.spinlock, %struct.mbox_list, ptr, %struct.mutex, ptr, i8, i8, ptr, %struct.ptp_clock_info, ptr, %struct.spinlock, %struct.spinlock, [48 x i8], %struct.spinlock, ptr, %struct.chcr_ktls, %struct.chcr_stats_debug, %struct.ch_ktls_stats_debug, %struct.ch_ipsec_stats_debug, i8, %struct.rhashtable, %struct.rhashtable_params, %struct.timer_list, %struct.work_struct, %struct.ethtool_dump, %struct.hma_data, ptr, %struct.vmcoredd_data, %struct.ch_thermal, ptr, ptr, ptr, [88 x i8] }
%struct.adapter_params = type { %struct.sge_params, %struct.tp_params, %struct.vpd_params, %struct.pf_resources, %struct.pci_params, %struct.devlog_params, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [7 x i8], [16 x i16], [32 x i16], [32 x i16], i8, i8, i32, %struct.arch_specific_params, i8, i8, i8, i8, i8, i32, i8, i32, i32, i32, i8, i8, i8, i8, [4 x i8], i8, i8 }
%struct.sge_params = type { i32, i32, i32 }
%struct.tp_params = type { i32, i32, i16, i32, [4 x i16], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.vpd_params = type { i32, [25 x i8], [17 x i8], [17 x i8], [13 x i8] }
%struct.pf_resources = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_params = type { i8, i8 }
%struct.devlog_params = type { i32, i32, i32 }
%struct.arch_specific_params = type { i8, i8, i8, i16, i16, i32, i16 }
%struct.cxgb4_virt_res = type { %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, i32, %struct.cxgb4_range }
%struct.cxgb4_range = type { i32, i32 }
%struct.msix_bmap = type { ptr, i32, %struct.spinlock }
%struct.doorbell_stats = type { i32, i32, i32 }
%struct.sge = type { [32 x %struct.sge_eth_txq], %struct.sge_eth_txq, [4 x %struct.sge_ctrl_txq], [32 x %struct.sge_eth_rxq], %struct.sge_rspq, ptr, ptr, [16 x i8], %struct.sge_rspq, %struct.spinlock, ptr, ptr, [4 x ptr], i16, i16, i16, i16, i16, i16, i16, [6 x i16], [4 x i8], i16, [8 x i16], i32, i32, i32, i32, i32, %struct.sge_idma_monitor_state, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, %struct.timer_list, i32, i32, [96 x i8] }
%struct.sge_eth_txq = type { %struct.sge_txq, ptr, i8, i8, i32, i32, i32, i32, i32, i32, [116 x i8] }
%struct.sge_txq = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, %struct.spinlock, i32, i16, i16, ptr, i32 }
%struct.sge_ctrl_txq = type { %struct.sge_txq, ptr, %struct.sk_buff_head, %struct.tasklet_struct, i8, [63 x i8] }
%struct.sk_buff_head = type { %union.anon.106, i32, %struct.spinlock }
%union.anon.106 = type { %struct.anon.107 }
%struct.anon.107 = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.194, i32 }
%union.anon.194 = type { ptr }
%struct.sge_eth_rxq = type { %struct.sge_rspq, %struct.sge_fl, %struct.sge_eth_stats, ptr, [56 x i8] }
%struct.sge_fl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32 }
%struct.sge_eth_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sge_rspq = type { %struct.napi_struct, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i32, i16, i16, ptr, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.t4_lro_mgr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.t4_lro_mgr = type { i8, i32, i32, %struct.sk_buff_head }
%struct.sge_idma_monitor_state = type { i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32] }
%struct.tid_info = type { ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.spinlock, ptr, i32, %struct.spinlock, i32, i32, i32, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i32, [68 x i8] }
%struct.mbox_list = type { %struct.list_head }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.chcr_ktls = type { %struct.refcount_struct }
%struct.chcr_stats_debug = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.ch_ktls_stats_debug = type { [4 x %struct.ch_ktls_port_stats_debug], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.ch_ktls_port_stats_debug = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.ch_ipsec_stats_debug = type { %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.ethtool_dump = type { i32, i32, i32, i32, [0 x i8] }
%struct.hma_data = type { i8, ptr, ptr }
%struct.vmcoredd_data = type { [44 x i8], i32, ptr }
%struct.ch_thermal = type { ptr, i32, i32 }
%struct.cpl_fw6_pld = type { i8, [5 x i8], i16, [4 x i64] }

@drv_data = internal global { %struct.chcr_driver_data, [44 x i8] } zeroinitializer, align 32
@chcr_uld_rx_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Unsupported opcode %d received\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"chcr_uld_rx_handler\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/crypto/chelsio/chcr_core.c\00", [61 x i8] zeroinitializer }, align 32
@chcr_uld_rx_handler._entry_ptr = internal global ptr @chcr_uld_rx_handler._entry, section ".printk_index", align 4
@__initcall__kmod_chcr__660_306_chcr_crypto_init6 = internal global ptr @chcr_crypto_init, section ".initcall6.init", align 4
@__exitcall_chcr_crypto_exit = internal global ptr @chcr_crypto_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description661 = internal constant [67 x i8] c"chcr.description=Crypto Co-processor for Chelsio Terminator cards.\00", section ".modinfo", align 1
@__UNIQUE_ID_file662 = internal constant [38 x i8] c"chcr.file=drivers/crypto/chelsio/chcr\00", section ".modinfo", align 1
@__UNIQUE_ID_license663 = internal constant [17 x i8] c"chcr.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author664 = internal constant [35 x i8] c"chcr.author=Chelsio Communications\00", section ".modinfo", align 1
@work_handlers = internal constant { <{ [226 x ptr], [13 x ptr] }>, [228 x i8] } { <{ [226 x ptr], [13 x ptr] }> <{ [226 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpl_fw6_pld_handler], [13 x ptr] zeroinitializer }>, [228 x i8] zeroinitializer }, align 32
@cpl_fw6_pld_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013Incorrect request address from the firmware\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cpl_fw6_pld_handler\00", [44 x i8] zeroinitializer }, align 32
@cpl_fw6_pld_handler._entry_ptr = internal global ptr @cpl_fw6_pld_handler._entry, section ".printk_index", align 4
@chcr_crypto_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&drv_data.drv_mutex\00", [44 x i8] zeroinitializer }, align 32
@chcr_uld_info = internal global { %struct.cxgb4_uld_info, [56 x i8] } { %struct.cxgb4_uld_info { [16 x i8] c"chcr\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, i32 16, i32 1024, i32 0, i8 0, i8 0, ptr @chcr_uld_add, ptr @chcr_uld_rx_handler, ptr @chcr_uld_state_change, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@chcr_uld_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@chcr_uld_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\016%s\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"chcr_uld_add\00", [19 x i8] zeroinitializer }, align 32
@chcr_uld_add._entry_ptr = internal global ptr @chcr_uld_add._entry, section ".printk_index", align 4
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Chelsio T6 Crypto Co-processor Driver\00", [58 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@chcr_dev_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&dev->lock_chcr_dev\00", [44 x i8] zeroinitializer }, align 32
@chcr_dev_init.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&(&dev->detach_work)->work)\00", [50 x i8] zeroinitializer }, align 32
@chcr_dev_init.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&dev->detach_work)->timer\00", [36 x i8] zeroinitializer }, align 32
@detach_work_fn.__UNIQUE_ID_ddebug658 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"chcr\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"detach_work_fn\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Request Inflight Count %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CHCR:%d request Still Pending\0A\00", [33 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@chcr_detach_device.__UNIQUE_ID_ddebug659 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"chcr_detach_device\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Detached Event received for already detach device\0A\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@___asan_gen_.22 = private unnamed_addr constant [9 x i8] c"drv_data\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 29, i32 32 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 212, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [14 x i8] c"work_handlers\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 36, i32 26 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 168, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 275, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [14 x i8] c"chcr_uld_info\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 40, i32 30 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 187, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 116, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 117, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 59, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 64, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 87, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [38 x i8] c"../drivers/crypto/chelsio/chcr_core.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 228, i32 3 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_author664, ptr @__UNIQUE_ID_description661, ptr @__UNIQUE_ID_file662, ptr @__UNIQUE_ID_license663, ptr @__exitcall_chcr_crypto_exit, ptr @__initcall__kmod_chcr__660_306_chcr_crypto_init6, ptr @chcr_crypto_exit, ptr @chcr_uld_add._entry, ptr @chcr_uld_add._entry_ptr, ptr @chcr_uld_rx_handler._entry, ptr @chcr_uld_rx_handler._entry_ptr, ptr @cpl_fw6_pld_handler._entry, ptr @cpl_fw6_pld_handler._entry_ptr, ptr @drv_data, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @work_handlers, ptr @.str.4, ptr @.str.5, ptr @chcr_crypto_init.__key, ptr @.str.6, ptr @chcr_uld_info, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @chcr_dev_init.__key, ptr @.str.10, ptr @chcr_dev_init.__key.11, ptr @.str.12, ptr @chcr_dev_init.__key.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @init_completion.__key, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drv_data to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chcr_uld_rx_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @work_handlers to i32), i32 956, i32 1184, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpl_fw6_pld_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chcr_crypto_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chcr_uld_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chcr_uld_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chcr_dev_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chcr_dev_init.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chcr_dev_init.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @assign_chcr_device() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 3), i32 noundef 0) #6
  %0 = load volatile ptr, ptr @drv_data, align 4
  %cmp.i.not = icmp eq ptr %0, @drv_data
  br i1 %cmp.i.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = load ptr, ptr getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 4), align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmp.i10.not = icmp eq ptr %3, @drv_data
  %. = select i1 %cmp.i10.not, ptr %0, ptr %3
  store ptr %., ptr getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 4), align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then, %entry.if.end9_crit_edge
  %u_ctx.0 = phi ptr [ null, %entry.if.end9_crit_edge ], [ %1, %if.then ]
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 3)) #6
  ret ptr %u_ctx.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @chcr_send_wr(ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %call = tail call i32 @cxgb4_crypto_send(ptr noundef %2, ptr noundef %skb) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_crypto_send(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @chcr_uld_rx_handler(ptr nocapture noundef readonly %handle, ptr noundef %rsp, ptr noundef readonly %pgl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lldi.i = getelementptr %struct.uld_ctx, ptr %handle, i32 0, i32 1
  %0 = ptrtoint ptr %lldi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lldi.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %4 = ptrtoint ptr %rsp to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rsp, align 8
  %idxprom = zext i8 %5 to i32
  %arrayidx = getelementptr [239 x ptr], ptr @work_handlers, i32 0, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %idxprom) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool4.not = icmp eq ptr %pgl, null
  br i1 %tobool4.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx9 = getelementptr i64, ptr %rsp, i32 1
  %call10 = tail call i32 %7(ptr noundef %3, ptr noundef %arrayidx9) #6
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %va = getelementptr inbounds %struct.pkt_gl, ptr %pgl, i32 0, i32 2
  %8 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %va, align 8
  %call14 = tail call i32 %7(ptr noundef %3, ptr noundef %9) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then5, %do.end
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @chcr_crypto_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @stop_crypto() #6
  %call1 = tail call i32 @cxgb4_unregister_uld(i32 noundef 4) #6
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 3), i32 noundef 0) #6
  %0 = load ptr, ptr @drv_data, align 4
  %cmp.not60 = icmp eq ptr %0, @drv_data
  br i1 %cmp.not60, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %u_ctx.061 = phi ptr [ %tmp.0, %list_del.exit.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %u_ctx.061 to i32
  call void @__asan_load4_noabort(i32 %1)
  %tmp.0 = load ptr, ptr %u_ctx.061, align 4
  %lldi.i = getelementptr %struct.uld_ctx, ptr %u_ctx.061, i32 0, i32 1
  %2 = ptrtoint ptr %lldi.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldi.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %chcr_stats = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 73
  %6 = call ptr @memset(ptr %chcr_stats, i32 0, i32 36)
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %u_ctx.061) #6
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %u_ctx.061, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %u_ctx.061 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %u_ctx.061, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %13 = ptrtoint ptr %u_ctx.061 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %u_ctx.061, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %u_ctx.061, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %u_ctx.061) #6
  %cmp.not = icmp eq ptr %tmp.0, @drv_data
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %15 = load ptr, ptr getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 1), align 4
  %cmp25.not63 = icmp eq ptr %15, getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 1)
  br i1 %cmp25.not63, label %for.end.for.end38_crit_edge, label %for.end.for.body27_crit_edge

for.end.for.body27_crit_edge:                     ; preds = %for.end
  br label %for.body27

for.end.for.end38_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end38

for.body27:                                       ; preds = %list_del.exit59.for.body27_crit_edge, %for.end.for.body27_crit_edge
  %u_ctx.164 = phi ptr [ %tmp.1, %list_del.exit59.for.body27_crit_edge ], [ %15, %for.end.for.body27_crit_edge ]
  %16 = ptrtoint ptr %u_ctx.164 to i32
  call void @__asan_load4_noabort(i32 %16)
  %tmp.1 = load ptr, ptr %u_ctx.164, align 4
  %lldi.i52 = getelementptr %struct.uld_ctx, ptr %u_ctx.164, i32 0, i32 1
  %17 = ptrtoint ptr %lldi.i52 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lldi.i52, align 4
  %driver_data.i.i.i53 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44, i32 8
  %19 = ptrtoint ptr %driver_data.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver_data.i.i.i53, align 4
  %chcr_stats30 = getelementptr inbounds %struct.adapter, ptr %20, i32 0, i32 73
  %21 = call ptr @memset(ptr %chcr_stats30, i32 0, i32 36)
  %call.i.i54 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %u_ctx.164) #6
  br i1 %call.i.i54, label %if.end.i.i57, label %for.body27.list_del.exit59_crit_edge

for.body27.list_del.exit59_crit_edge:             ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit59

if.end.i.i57:                                     ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i55 = getelementptr inbounds %struct.list_head, ptr %u_ctx.164, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i55 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i55, align 4
  %24 = ptrtoint ptr %u_ctx.164 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %u_ctx.164, align 4
  %prev1.i.i.i56 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i56 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i56, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit59

list_del.exit59:                                  ; preds = %if.end.i.i57, %for.body27.list_del.exit59_crit_edge
  %28 = ptrtoint ptr %u_ctx.164 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %u_ctx.164, align 4
  %prev.i58 = getelementptr inbounds %struct.list_head, ptr %u_ctx.164, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i58 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i58, align 4
  tail call void @kfree(ptr noundef %u_ctx.164) #6
  %cmp25.not = icmp eq ptr %tmp.1, getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 1)
  br i1 %cmp25.not, label %list_del.exit59.for.end38_crit_edge, label %list_del.exit59.for.body27_crit_edge

list_del.exit59.for.body27_crit_edge:             ; preds = %list_del.exit59
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body27

list_del.exit59.for.end38_crit_edge:              ; preds = %list_del.exit59
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end38

for.end38:                                        ; preds = %list_del.exit59.for.end38_crit_edge, %for.end.for.end38_crit_edge
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 3)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stop_crypto() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_unregister_uld(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @chcr_crypto_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  store volatile ptr @drv_data, ptr @drv_data, align 4
  store ptr @drv_data, ptr getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 0, i32 1), align 4
  store volatile ptr getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 1), ptr getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 1), align 4
  store ptr getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 1), ptr getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 1, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 2), i32 noundef 4) #6
  store volatile i32 0, ptr getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 2), align 4
  tail call void @__mutex_init(ptr noundef getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 3), ptr noundef nonnull @.str.6, ptr noundef nonnull @chcr_crypto_init.__key) #6
  store ptr null, ptr getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 4), align 4
  tail call void @cxgb4_register_uld(i32 noundef 4, ptr noundef nonnull @chcr_uld_info) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpl_fw6_pld_handler(ptr noundef %adap, ptr noundef %input) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.cpl_fw6_pld, ptr %input, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx, align 8
  %conv = trunc i64 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool6.not = icmp eq i32 %conv, 0
  br i1 %tobool6.not, label %do.end, label %if.then7

if.then7:                                         ; preds = %entry
  %data = getelementptr inbounds %struct.cpl_fw6_pld, ptr %input, i32 0, i32 3
  %add.ptr = getelementptr i8, ptr %data, i32 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %4 = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  %error_status.0 = select i1 %5, i32 0, i32 -74
  %6 = inttoptr i32 %conv to ptr
  %call = tail call i32 @chcr_handle_resp(ptr noundef nonnull %6, ptr noundef %input, i32 noundef %error_status.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.then7.cleanup_crit_edge, label %if.then11

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  br label %cleanup

if.then11:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %error = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 73, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %error, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %error, i32 1, i32 3, i32 1) #6
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %error, ptr %error, i32 1, ptr elementtype(i32) %error) #6, !srcloc !69
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %do.end, %if.then7.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %do.end ], [ 0, %if.then11 ], [ 0, %if.then7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @chcr_handle_resp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_register_uld(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @chcr_uld_add(ptr nocapture noundef readonly %lld) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %.b26 = load i1, ptr @chcr_uld_add.__already_done, align 1
  br i1 %.b26, label %entry.if.end_crit_edge, label %if.then, !prof !70

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @chcr_uld_add.__already_done, align 1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.9) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ulp_crypto = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lld, i32 0, i32 38
  %0 = ptrtoint ptr %ulp_crypto to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ulp_crypto, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end.cleanup_crit_edge, label %if.end15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 368) #10
  %tobool17.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %if.end20

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %lldi = getelementptr inbounds %struct.uld_ctx, ptr %call7.i.i, i32 0, i32 1
  %3 = call ptr @memcpy(ptr %lldi, ptr %lld, i32 148)
  %dev1.i = getelementptr inbounds %struct.uld_ctx, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %dev1.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @chcr_dev_init.__key, i16 noundef signext 3) #6
  %detach_work.i = getelementptr inbounds %struct.uld_ctx, ptr %call7.i.i, i32 0, i32 2, i32 4
  tail call void @__init_work(ptr noundef %detach_work.i, i32 noundef 0) #6
  %4 = ptrtoint ptr %detach_work.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %detach_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.uld_ctx, ptr %call7.i.i, i32 0, i32 2, i32 4, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @chcr_dev_init.__key.11, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry10.i = getelementptr inbounds %struct.uld_ctx, ptr %call7.i.i, i32 0, i32 2, i32 4, i32 0, i32 1
  %5 = ptrtoint ptr %entry10.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry10.i, ptr %entry10.i, align 8
  %prev.i.i = getelementptr inbounds %struct.uld_ctx, ptr %call7.i.i, i32 0, i32 2, i32 4, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry10.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.uld_ctx, ptr %call7.i.i, i32 0, i32 2, i32 4, i32 0, i32 2
  %7 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @detach_work_fn, ptr %func.i, align 8
  %timer.i = getelementptr inbounds %struct.uld_ctx, ptr %call7.i.i, i32 0, i32 2, i32 4, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.14, ptr noundef nonnull @chcr_dev_init.__key.13) #6
  %detach_comp.i = getelementptr inbounds %struct.uld_ctx, ptr %call7.i.i, i32 0, i32 2, i32 5
  %8 = ptrtoint ptr %detach_comp.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %detach_comp.i, align 8
  %wait.i.i = getelementptr inbounds %struct.uld_ctx, ptr %call7.i.i, i32 0, i32 2, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @init_completion.__key) #6
  %state.i = getelementptr inbounds %struct.uld_ctx, ptr %call7.i.i, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %state.i, align 8
  %wqretry.i = getelementptr inbounds %struct.uld_ctx, ptr %call7.i.i, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %wqretry.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 5, ptr %wqretry.i, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 2), i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 2), i32 1, i32 3, i32 1) #6
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 2), ptr getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 2), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 2)) #6, !srcloc !69
  %inflight.i = getelementptr inbounds %struct.uld_ctx, ptr %call7.i.i, i32 0, i32 2, i32 2
  %call.i.i33.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %inflight.i, i32 noundef 4) #6
  %12 = ptrtoint ptr %inflight.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 0, ptr %inflight.i, align 4
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 3), i32 noundef 0) #6
  %13 = load ptr, ptr getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 1, i32 1), align 4
  %call.i.i34.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %13, ptr noundef getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 1)) #6
  br i1 %call.i.i34.i, label %if.end.i.i.i, label %if.end20.chcr_dev_init.exit_crit_edge

if.end20.chcr_dev_init.exit_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %chcr_dev_init.exit

if.end.i.i.i:                                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 1, i32 1), align 4
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 1), ptr %call7.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %prev3.i.i.i, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %call7.i.i, ptr %13, align 4
  br label %chcr_dev_init.exit

chcr_dev_init.exit:                               ; preds = %if.end.i.i.i, %if.end20.chcr_dev_init.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 3)) #6
  br label %cleanup

cleanup:                                          ; preds = %chcr_dev_init.exit, %if.end15.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %chcr_dev_init.exit ], [ inttoptr (i32 -95 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end15.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chcr_uld_state_change(ptr noundef %handle, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %state, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %state1 = getelementptr inbounds %struct.uld_ctx, ptr %handle, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %3 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %state1, align 4
  %inflight.i = getelementptr inbounds %struct.uld_ctx, ptr %handle, i32 0, i32 2, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %inflight.i, i32 noundef 4) #6
  %4 = ptrtoint ptr %inflight.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %inflight.i, align 4
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 3), i32 noundef 0) #6
  %call.i.i6.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %handle) #6
  br i1 %call.i.i6.i, label %if.end.i.i.i, label %if.end.__list_del_entry.exit.i.i_crit_edge

if.end.__list_del_entry.exit.i.i_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %handle, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %handle, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.end.__list_del_entry.exit.i.i_crit_edge
  %11 = load ptr, ptr @drv_data, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %handle, ptr noundef nonnull @drv_data, ptr noundef %11) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_move.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %handle, ptr %prev1.i.i2.i.i, align 4
  %13 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %handle, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %handle, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @drv_data, ptr %prev3.i.i.i.i, align 4
  store volatile ptr %handle, ptr @drv_data, align 4
  br label %list_move.exit.i

list_move.exit.i:                                 ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move.exit.i_crit_edge
  %15 = load ptr, ptr getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 4), align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.then.i, label %list_move.exit.i.chcr_dev_add.exit_crit_edge

list_move.exit.i.chcr_dev_add.exit_crit_edge:     ; preds = %list_move.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %chcr_dev_add.exit

if.then.i:                                        ; preds = %list_move.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %handle, ptr getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 4), align 4
  br label %chcr_dev_add.exit

chcr_dev_add.exit:                                ; preds = %if.then.i, %list_move.exit.i.chcr_dev_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 3)) #6
  %call = tail call i32 @start_crypto() #6
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  tail call fastcc void @chcr_detach_device(ptr noundef %handle)
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 2), i32 noundef 4) #6
  %16 = load volatile i32, ptr getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.then4, label %sw.bb2.cleanup_crit_edge

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 @stop_crypto() #6
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %sw.bb2.cleanup_crit_edge, %chcr_dev_add.exit, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb2.cleanup_crit_edge ], [ 0, %if.then4 ], [ %call, %chcr_dev_add.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @detach_work_fn(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %inflight = getelementptr i8, ptr %work, i32 -8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %inflight, i32 noundef 4) #6
  %0 = ptrtoint ptr %inflight to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %inflight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else42, label %if.then

if.then:                                          ; preds = %entry
  %wqretry = getelementptr i8, ptr %work, i32 -4
  %2 = ptrtoint ptr %wqretry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wqretry, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %wqretry, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %do.end25, label %do.body

do.body:                                          ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @detach_work_fn.__UNIQUE_ID_ddebug658, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@detach_work_fn, %if.then9)) #6
          to label %do.end [label %if.then9], !srcloc !71

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i53 = tail call zeroext i1 @__kasan_check_read(ptr noundef %inflight, i32 noundef 4) #6
  %4 = ptrtoint ptr %inflight to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %inflight, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @detach_work_fn.__UNIQUE_ID_ddebug658, ptr noundef nonnull @.str.17, i32 noundef %5) #6
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i55 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %work, i32 noundef 5) #6
  br label %if.end44

do.end25:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i54 = tail call zeroext i1 @__kasan_check_read(ptr noundef %inflight, i32 noundef 4) #6
  %7 = ptrtoint ptr %inflight to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %inflight, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 65, i32 noundef 9, ptr noundef nonnull @.str.18, i32 noundef %8) #6
  %detach_comp = getelementptr i8, ptr %work, i32 100
  tail call void @complete(ptr noundef %detach_comp) #6
  br label %if.end44

if.else42:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %detach_comp43 = getelementptr i8, ptr %work, i32 100
  tail call void @complete(ptr noundef %detach_comp43) #6
  br label %if.end44

if.end44:                                         ; preds = %if.else42, %do.end25, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @start_crypto() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @chcr_detach_device(ptr noundef %u_ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uld_ctx, ptr %u_ctx, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chcr_detach_device.__UNIQUE_ID_ddebug659, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chcr_detach_device, %if.then4)) #6
          to label %cleanup [label %if.then4], !srcloc !71

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @chcr_detach_device.__UNIQUE_ID_ddebug659, ptr noundef nonnull @.str.21) #6
  br label %cleanup

if.end5:                                          ; preds = %entry
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %state, align 4
  %inflight = getelementptr inbounds %struct.uld_ctx, ptr %u_ctx, i32 0, i32 2, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %inflight, i32 noundef 4) #6
  %3 = ptrtoint ptr %inflight to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %inflight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp8.not = icmp eq i32 %4, 0
  br i1 %cmp8.not, label %if.end5.if.end12_crit_edge, label %if.then9

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %detach_work = getelementptr inbounds %struct.uld_ctx, ptr %u_ctx, i32 0, i32 2, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i19 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %detach_work, i32 noundef 5) #6
  %detach_comp = getelementptr inbounds %struct.uld_ctx, ptr %u_ctx, i32 0, i32 2, i32 5
  tail call void @wait_for_completion(ptr noundef %detach_comp) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end5.if.end12_crit_edge
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 3), i32 noundef 0) #6
  %6 = load ptr, ptr getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 4), align 4
  %cmp.i = icmp eq ptr %6, %u_ctx
  br i1 %cmp.i, label %if.then.i, label %if.end12.if.end7.i_crit_edge

if.end12.if.end7.i_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.then.i:                                        ; preds = %if.end12
  %7 = ptrtoint ptr %u_ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %u_ctx, align 4
  %cmp.i.not.i = icmp eq ptr %8, @drv_data
  br i1 %cmp.i.not.i, label %if.then2.i, label %if.then.i.if.end7.sink.split.i_crit_edge

if.then.i.if.end7.sink.split.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.sink.split.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = load ptr, ptr @drv_data, align 4
  br label %if.end7.sink.split.i

if.end7.sink.split.i:                             ; preds = %if.then2.i, %if.then.i.if.end7.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %9, %if.then2.i ], [ %8, %if.then.i.if.end7.sink.split.i_crit_edge ]
  store ptr %.sink.i, ptr getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 4), align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.end7.sink.split.i, %if.end12.if.end7.i_crit_edge
  %call.i.i1.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %u_ctx) #6
  br i1 %call.i.i1.i, label %if.end.i.i.i, label %if.end7.i.__list_del_entry.exit.i.i_crit_edge

if.end7.i.__list_del_entry.exit.i.i_crit_edge:    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %u_ctx, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %u_ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %u_ctx, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.end7.i.__list_del_entry.exit.i.i_crit_edge
  %16 = load ptr, ptr getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 1), align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %u_ctx, ptr noundef getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 1), ptr noundef %16) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_move.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %u_ctx, ptr %prev1.i.i2.i.i, align 4
  %18 = ptrtoint ptr %u_ctx to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %u_ctx, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %u_ctx, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 1), ptr %prev3.i.i.i.i, align 4
  store volatile ptr %u_ctx, ptr getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 1), align 4
  br label %list_move.exit.i

list_move.exit.i:                                 ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move.exit.i_crit_edge
  %20 = load volatile ptr, ptr @drv_data, align 4
  %cmp.i2.not.i = icmp eq ptr %20, @drv_data
  br i1 %cmp.i2.not.i, label %if.then11.i, label %list_move.exit.i.chcr_dev_move.exit_crit_edge

list_move.exit.i.chcr_dev_move.exit_crit_edge:    ; preds = %list_move.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %chcr_dev_move.exit

if.then11.i:                                      ; preds = %list_move.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  store ptr null, ptr getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 4), align 4
  br label %chcr_dev_move.exit

chcr_dev_move.exit:                               ; preds = %if.then11.i, %list_move.exit.i.chcr_dev_move.exit_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 2), i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 2), i32 1, i32 3, i32 1) #6
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 2), ptr getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 2), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 2)) #6, !srcloc !72
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.chcr_driver_data, ptr @drv_data, i32 0, i32 3)) #6
  br label %cleanup

cleanup:                                          ; preds = %chcr_dev_move.exit, %if.then4, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !24, !25, !26, !28, !29, !31, !33, !34, !35, !36, !37, !38, !40, !41, !43, !44, !45, !46, !48, !49, !50, !51, !53, !55, !56, !58, !59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/crypto/chelsio/chcr_core.c", i32 212, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @chcr_uld_rx_handler._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @chcr_uld_rx_handler._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__initcall__kmod_chcr__660_306_chcr_crypto_init6, !7, !"__initcall__kmod_chcr__660_306_chcr_crypto_init6", i1 false, i1 false}
!7 = !{!"../drivers/crypto/chelsio/chcr_core.c", i32 306, i32 1}
!8 = !{ptr @__exitcall_chcr_crypto_exit, !9, !"__exitcall_chcr_crypto_exit", i1 false, i1 false}
!9 = !{!"../drivers/crypto/chelsio/chcr_core.c", i32 307, i32 1}
!10 = !{ptr @__UNIQUE_ID_description661, !11, !"__UNIQUE_ID_description661", i1 false, i1 false}
!11 = !{!"../drivers/crypto/chelsio/chcr_core.c", i32 309, i32 1}
!12 = !{ptr @__UNIQUE_ID_file662, !13, !"__UNIQUE_ID_file662", i1 false, i1 false}
!13 = !{!"../drivers/crypto/chelsio/chcr_core.c", i32 310, i32 1}
!14 = !{ptr @__UNIQUE_ID_license663, !13, !"__UNIQUE_ID_license663", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_author664, !16, !"__UNIQUE_ID_author664", i1 false, i1 false}
!16 = !{!"../drivers/crypto/chelsio/chcr_core.c", i32 311, i32 1}
!17 = !{ptr @drv_data, !18, !"drv_data", i1 false, i1 false}
!18 = !{!"../drivers/crypto/chelsio/chcr_core.c", i32 29, i32 32}
!19 = !{ptr @work_handlers, !20, !"work_handlers", i1 false, i1 false}
!20 = !{!"../drivers/crypto/chelsio/chcr_core.c", i32 36, i32 26}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/crypto/chelsio/chcr_core.c", i32 168, i32 3}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @cpl_fw6_pld_handler._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @cpl_fw6_pld_handler._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @chcr_crypto_init.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/crypto/chelsio/chcr_core.c", i32 275, i32 2}
!28 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @chcr_uld_info, !30, !"chcr_uld_info", i1 false, i1 false}
!30 = !{!"../drivers/crypto/chelsio/chcr_core.c", i32 40, i32 30}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../drivers/crypto/chelsio/chcr_core.c", i32 187, i32 2}
!33 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @chcr_uld_add._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @chcr_uld_add._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @chcr_dev_init.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/crypto/chelsio/chcr_core.c", i32 116, i32 2}
!40 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @chcr_dev_init.__key.11, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/crypto/chelsio/chcr_core.c", i32 117, i32 2}
!43 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @chcr_dev_init.__key.13, !42, !"__key", i1 false, i1 false}
!45 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/crypto/chelsio/chcr_core.c", i32 59, i32 4}
!48 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @detach_work_fn.__UNIQUE_ID_ddebug658, !47, !"__UNIQUE_ID_ddebug658", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/crypto/chelsio/chcr_core.c", i32 64, i32 4}
!53 = !{ptr @init_completion.__key, !54, !"__key", i1 false, i1 false}
!54 = !{!"../include/linux/completion.h", i32 87, i32 2}
!55 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/crypto/chelsio/chcr_core.c", i32 228, i32 3}
!58 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @chcr_detach_device.__UNIQUE_ID_ddebug659, !57, !"__UNIQUE_ID_ddebug659", i1 false, i1 false}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i64 2148215794, i64 2148215820, i64 2148215849, i64 2148215883, i64 2148215914, i64 2148215937}
!70 = !{!"branch_weights", i32 2000, i32 1}
!71 = !{i64 2148697609, i64 2148697614, i64 2148697627, i64 2148697671, i64 2148697705, i64 2148697726}
!72 = !{i64 2148218259, i64 2148218285, i64 2148218314, i64 2148218348, i64 2148218379, i64 2148218402}

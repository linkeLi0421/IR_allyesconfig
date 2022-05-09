; ModuleID = '/llk/IR_all_yes/drivers/net/ipa/ipa_endpoint.c_pt.bc'
source_filename = "../drivers/net/ipa/ipa_endpoint.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.softnet_data = type { %struct.list_head, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.sk_buff_head, %struct.anon.121, [100 x i8], i32, [124 x i8], %struct.__call_single_data, ptr, i32, i32, i32, %struct.sk_buff_head, %struct.napi_struct, [72 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.anon.121 = type { i16, i8 }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.ipa = type { %struct.gsi, i32, ptr, %struct.completion, %struct.notifier_block, ptr, ptr, ptr, i32, ptr, ptr, i8, i8, i32, ptr, i32, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.ipa_endpoint], [23 x ptr], [10 x ptr], i8, %struct.atomic_t, ptr, %struct.ipa_qmi, [24 x i8] }
%struct.gsi = type { ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.completion, %struct.mutex, [23 x %struct.gsi_channel], [24 x %struct.gsi_evt_ring], %struct.net_device }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.gsi_channel = type { ptr, i8, i8, i8, i16, i16, %struct.gsi_ring, i32, i64, i64, i64, i64, i64, i64, %struct.gsi_trans_info, %struct.napi_struct }
%struct.gsi_ring = type { ptr, i32, i32, i32 }
%struct.gsi_trans_info = type { %struct.atomic_t, %struct.gsi_trans_pool, %struct.gsi_trans_pool, %struct.gsi_trans_pool, %struct.gsi_trans_pool, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.gsi_trans_pool = type { ptr, i32, i32, i32, i32, i32 }
%struct.gsi_evt_ring = type { ptr, %struct.gsi_ring }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.99, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.113, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.99 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.113 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.ipa_endpoint = type { ptr, i32, i32, i32, i8, ptr, i32, i32, ptr, [1 x i32], i32, %struct.atomic_t, %struct.atomic_t, %struct.delayed_work }
%struct.atomic_t = type { i32 }
%struct.ipa_qmi = type { %struct.qmi_handle, %struct.qmi_handle, %struct.sockaddr_qrtr, %struct.work_struct, i8, i8, i8, i8, i8 }
%struct.qmi_handle = type { ptr, %struct.mutex, %struct.sockaddr_qrtr, %struct.work_struct, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.qmi_ops, %struct.idr, %struct.mutex, ptr }
%struct.qmi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.sockaddr_qrtr = type { i16, i32, i32 }
%struct.ipa_endpoint_config_data = type { i32, i8, i8, i8, i8, i8, i32, %union.anon.114 }
%union.anon.114 = type { %struct.ipa_endpoint_tx_data }
%struct.ipa_endpoint_tx_data = type { i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.gsi_trans = type { %struct.list_head, ptr, i8, i8, i8, i8, i32, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.completion, i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ipa_status = type { i8, i8, i16, i16, i8, i8, i32, i32, i64, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.ipa_gsi_endpoint_data = type { i8, i8, i8, i8, %struct.gsi_channel_data, %struct.ipa_endpoint_data }
%struct.gsi_channel_data = type { i16, i16, i8 }
%struct.ipa_endpoint_data = type { i8, %struct.ipa_endpoint_config_data }

@ipa_endpoint_modem_exception_reset_all._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 398, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"no transaction to reset modem exception endpoints\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ipa_endpoint_modem_exception_reset_all\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/net/ipa/ipa_endpoint.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ipa_endpoint_modem_exception_reset_all._entry_ptr = internal global ptr @ipa_endpoint_modem_exception_reset_all._entry, section ".printk_index", align 4
@ipa_endpoint_enable_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 1586, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"error %d starting %cX channel %u for endpoint %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ipa_endpoint_enable_one\00", [40 x i8] zeroinitializer }, align 32
@ipa_endpoint_enable_one._entry_ptr = internal global ptr @ipa_endpoint_enable_one._entry, section ".printk_index", align 4
@ipa_endpoint_disable_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 1624, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"error %d attempting to stop endpoint %u\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ipa_endpoint_disable_one\00", [39 x i8] zeroinitializer }, align 32
@ipa_endpoint_disable_one._entry_ptr = internal global ptr @ipa_endpoint_disable_one._entry, section ".printk_index", align 4
@ipa_endpoint_suspend_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 1644, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error %d suspending channel %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ipa_endpoint_suspend_one\00", [39 x i8] zeroinitializer }, align 32
@ipa_endpoint_suspend_one._entry_ptr = internal global ptr @ipa_endpoint_suspend_one._entry, section ".printk_index", align 4
@ipa_endpoint_resume_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 1662, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error %d resuming channel %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ipa_endpoint_resume_one\00", [40 x i8] zeroinitializer }, align 32
@ipa_endpoint_resume_one._entry_ptr = internal global ptr @ipa_endpoint_resume_one._entry, section ".printk_index", align 4
@ipa_endpoint_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 1793, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"too many endpoints (%u > %u)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ipa_endpoint_config\00", [44 x i8] zeroinitializer }, align 32
@ipa_endpoint_config._entry_ptr = internal global ptr @ipa_endpoint_config._entry, section ".printk_index", align 4
@ipa_endpoint_config._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 1807, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unavailable endpoint id(s) 0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@ipa_endpoint_config._entry_ptr.17 = internal global ptr @ipa_endpoint_config._entry.15, section ".printk_index", align 4
@ipa_endpoint_config._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.2, i32 1822, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"endpoint id %u wrong direction\0A\00", [32 x i8] zeroinitializer }, align 32
@ipa_endpoint_config._entry_ptr.20 = internal global ptr @ipa_endpoint_config._entry.18, section ".printk_index", align 4
@softnet_data = external dso_local global %struct.softnet_data, section ".data..percpu..shared_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@ipa_endpoint_status_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 1304, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"short message (%u bytes < %zu byte status)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ipa_endpoint_status_parse\00", [38 x i8] zeroinitializer }, align 32
@ipa_endpoint_status_parse._entry_ptr = internal global ptr @ipa_endpoint_status_parse._entry, section ".printk_index", align 4
@ipa_endpoint_status_tag._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 1263, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"unexpected tagged packet from endpoint %u\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ipa_endpoint_status_tag\00", [40 x i8] zeroinitializer }, align 32
@ipa_endpoint_status_tag._entry_ptr = internal global ptr @ipa_endpoint_status_tag._entry, section ".printk_index", align 4
@ipa_endpoint_setup_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"(work_completion)(&(&endpoint->replenish_work)->work)\00", [42 x i8] zeroinitializer }, align 32
@ipa_endpoint_setup_one.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"&(&endpoint->replenish_work)->timer\00", [60 x i8] zeroinitializer }, align 32
@ipa_endpoint_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 1542, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"error %d resetting channel %u for endpoint %u\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ipa_endpoint_reset\00", [45 x i8] zeroinitializer }, align 32
@ipa_endpoint_reset._entry_ptr = internal global ptr @ipa_endpoint_reset._entry, section ".printk_index", align 4
@ipa_endpoint_reset_rx_aggr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 1490, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"endpoint %u still active during reset\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ipa_endpoint_reset_rx_aggr\00", [37 x i8] zeroinitializer }, align 32
@ipa_endpoint_reset_rx_aggr._entry_ptr = internal global ptr @ipa_endpoint_reset_rx_aggr._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@ipa_endpoint_data_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 177, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"too many endpoints specified (%u > %u)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ipa_endpoint_data_valid\00", [40 x i8] zeroinitializer }, align 32
@ipa_endpoint_data_valid._entry_ptr = internal global ptr @ipa_endpoint_data_valid._entry, section ".printk_index", align 4
@ipa_endpoint_data_valid._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 197, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"buffer size too big for aggregation (%u > %u)\0A\00", [49 x i8] zeroinitializer }, align 32
@ipa_endpoint_data_valid._entry_ptr.41 = internal global ptr @ipa_endpoint_data_valid._entry.39, section ".printk_index", align 4
@ipa_endpoint_data_valid._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.2, i32 203, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"command TX endpoint not defined\0A\00", [63 x i8] zeroinitializer }, align 32
@ipa_endpoint_data_valid._entry_ptr.44 = internal global ptr @ipa_endpoint_data_valid._entry.42, section ".printk_index", align 4
@ipa_endpoint_data_valid._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.38, ptr @.str.2, i32 207, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"LAN RX endpoint not defined\0A\00", [35 x i8] zeroinitializer }, align 32
@ipa_endpoint_data_valid._entry_ptr.47 = internal global ptr @ipa_endpoint_data_valid._entry.45, section ".printk_index", align 4
@ipa_endpoint_data_valid._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.2, i32 211, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"AP->modem TX endpoint not defined\0A\00", [61 x i8] zeroinitializer }, align 32
@ipa_endpoint_data_valid._entry_ptr.50 = internal global ptr @ipa_endpoint_data_valid._entry.48, section ".printk_index", align 4
@ipa_endpoint_data_valid._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.38, ptr @.str.2, i32 215, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"AP<-modem RX endpoint not defined\0A\00", [61 x i8] zeroinitializer }, align 32
@ipa_endpoint_data_valid._entry_ptr.53 = internal global ptr @ipa_endpoint_data_valid._entry.51, section ".printk_index", align 4
@ipa_endpoint_data_valid_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 93, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"filtering not supported for RX endpoint %u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ipa_endpoint_data_valid_one\00", [36 x i8] zeroinitializer }, align 32
@ipa_endpoint_data_valid_one._entry_ptr = internal global ptr @ipa_endpoint_data_valid_one._entry, section ".printk_index", align 4
@ipa_endpoint_data_valid_one._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.2, i32 105, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"status endpoint name %u out of range for endpoint %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ipa_endpoint_data_valid_one._entry_ptr.58 = internal global ptr @ipa_endpoint_data_valid_one._entry.56, section ".printk_index", align 4
@ipa_endpoint_data_valid_one._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.55, ptr @.str.2, i32 114, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"DMA endpoint name %u undefined for endpoint %u\0A\00", [48 x i8] zeroinitializer }, align 32
@ipa_endpoint_data_valid_one._entry_ptr.61 = internal global ptr @ipa_endpoint_data_valid_one._entry.59, section ".printk_index", align 4
@ipa_endpoint_data_valid_one._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.55, ptr @.str.2, i32 122, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"status endpoint for endpoint %u not RX\0A\00", [56 x i8] zeroinitializer }, align 32
@ipa_endpoint_data_valid_one._entry_ptr.64 = internal global ptr @ipa_endpoint_data_valid_one._entry.62, section ".printk_index", align 4
@ipa_endpoint_data_valid_one._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.55, ptr @.str.2, i32 132, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"status not enabled for endpoint %u\0A\00", [60 x i8] zeroinitializer }, align 32
@ipa_endpoint_data_valid_one._entry_ptr.67 = internal global ptr @ipa_endpoint_data_valid_one._entry.65, section ".printk_index", align 4
@ipa_endpoint_data_valid_one._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.55, ptr @.str.2, i32 143, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"DMA endpoint name %u out of range for endpoint %u\0A\00", [45 x i8] zeroinitializer }, align 32
@ipa_endpoint_data_valid_one._entry_ptr.70 = internal global ptr @ipa_endpoint_data_valid_one._entry.68, section ".printk_index", align 4
@ipa_endpoint_data_valid_one._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.55, ptr @.str.2, i32 151, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@ipa_endpoint_data_valid_one._entry_ptr.72 = internal global ptr @ipa_endpoint_data_valid_one._entry.71, section ".printk_index", align 4
@switch.table.ipa_endpoint_setup = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 7, i32 7, i32 3, i32 3, i32 3, i32 3, i32 1, i32 7, i32 1], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 4, i64 8, i64 64]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 397, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1583, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1622, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1643, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1661, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1792, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1806, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1821, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1302, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1261, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1710, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1540, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1489, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 326, i32 6 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 176, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 196, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 203, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 207, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 211, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 215, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 91, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 103, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 112, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 120, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 130, i32 5 }
@___asan_gen_.278 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 141, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.282 = private constant [34 x i8] c"../drivers/net/ipa/ipa_endpoint.c\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 149, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant [32 x i8] c"switch.table.ipa_endpoint_setup\00", align 1
@llvm.compiler.used = appending global [96 x ptr] [ptr @ipa_endpoint_config._entry, ptr @ipa_endpoint_config._entry.15, ptr @ipa_endpoint_config._entry.18, ptr @ipa_endpoint_config._entry_ptr, ptr @ipa_endpoint_config._entry_ptr.17, ptr @ipa_endpoint_config._entry_ptr.20, ptr @ipa_endpoint_data_valid._entry, ptr @ipa_endpoint_data_valid._entry.39, ptr @ipa_endpoint_data_valid._entry.42, ptr @ipa_endpoint_data_valid._entry.45, ptr @ipa_endpoint_data_valid._entry.48, ptr @ipa_endpoint_data_valid._entry.51, ptr @ipa_endpoint_data_valid._entry_ptr, ptr @ipa_endpoint_data_valid._entry_ptr.41, ptr @ipa_endpoint_data_valid._entry_ptr.44, ptr @ipa_endpoint_data_valid._entry_ptr.47, ptr @ipa_endpoint_data_valid._entry_ptr.50, ptr @ipa_endpoint_data_valid._entry_ptr.53, ptr @ipa_endpoint_data_valid_one._entry, ptr @ipa_endpoint_data_valid_one._entry.56, ptr @ipa_endpoint_data_valid_one._entry.59, ptr @ipa_endpoint_data_valid_one._entry.62, ptr @ipa_endpoint_data_valid_one._entry.65, ptr @ipa_endpoint_data_valid_one._entry.68, ptr @ipa_endpoint_data_valid_one._entry.71, ptr @ipa_endpoint_data_valid_one._entry_ptr, ptr @ipa_endpoint_data_valid_one._entry_ptr.58, ptr @ipa_endpoint_data_valid_one._entry_ptr.61, ptr @ipa_endpoint_data_valid_one._entry_ptr.64, ptr @ipa_endpoint_data_valid_one._entry_ptr.67, ptr @ipa_endpoint_data_valid_one._entry_ptr.70, ptr @ipa_endpoint_data_valid_one._entry_ptr.72, ptr @ipa_endpoint_disable_one._entry, ptr @ipa_endpoint_disable_one._entry_ptr, ptr @ipa_endpoint_enable_one._entry, ptr @ipa_endpoint_enable_one._entry_ptr, ptr @ipa_endpoint_modem_exception_reset_all._entry, ptr @ipa_endpoint_modem_exception_reset_all._entry_ptr, ptr @ipa_endpoint_reset._entry, ptr @ipa_endpoint_reset._entry_ptr, ptr @ipa_endpoint_reset_rx_aggr._entry, ptr @ipa_endpoint_reset_rx_aggr._entry_ptr, ptr @ipa_endpoint_resume_one._entry, ptr @ipa_endpoint_resume_one._entry_ptr, ptr @ipa_endpoint_status_parse._entry, ptr @ipa_endpoint_status_parse._entry_ptr, ptr @ipa_endpoint_status_tag._entry, ptr @ipa_endpoint_status_tag._entry_ptr, ptr @ipa_endpoint_suspend_one._entry, ptr @ipa_endpoint_suspend_one._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @ipa_endpoint_setup_one.__key, ptr @.str.27, ptr @ipa_endpoint_setup_one.__key.28, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @switch.table.ipa_endpoint_setup], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_endpoint_modem_exception_reset_all._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_endpoint_enable_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_endpoint_disable_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_endpoint_suspend_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_endpoint_resume_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_endpoint_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_endpoint_config._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_endpoint_config._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_endpoint_status_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_endpoint_status_tag._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_endpoint_setup_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_endpoint_setup_one.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_endpoint_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_endpoint_reset_rx_aggr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_endpoint_data_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_endpoint_data_valid._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_endpoint_data_valid._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_endpoint_data_valid._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_endpoint_data_valid._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_endpoint_data_valid._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_endpoint_data_valid_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_endpoint_data_valid_one._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_endpoint_data_valid_one._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_endpoint_data_valid_one._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_endpoint_data_valid_one._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_endpoint_data_valid_one._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_endpoint_data_valid_one._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ipa_endpoint_setup to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_endpoint_modem_pause_all(ptr noundef %ipa, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %version = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %endpoint_id.022 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %endpoint_id.022
  %ee_id = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %endpoint_id.022, i32 1
  %0 = ptrtoint ptr %ee_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ee_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp2.not = icmp eq i32 %1, 1
  br i1 %cmp2.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %for.body
  %toward_ipa = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %endpoint_id.022, i32 4
  %2 = ptrtoint ptr %toward_ipa to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %toward_ipa, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call fastcc zeroext i1 @ipa_endpoint_program_suspend(ptr noundef %arrayidx, i1 noundef zeroext %enable)
  br label %cleanup

if.else:                                          ; preds = %if.end
  %4 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %version, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp5 = icmp ult i32 %5, 6
  br i1 %cmp5, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ipa_endpoint_program_delay(ptr noundef %arrayidx, i1 noundef zeroext %enable)
  br label %cleanup

if.else8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %channel_id = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %endpoint_id.022, i32 2
  %6 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel_id, align 4
  tail call void @gsi_modem_channel_flow_control(ptr noundef %ipa, i32 noundef %7, i1 noundef zeroext %enable) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else8, %if.then6, %if.then3, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %endpoint_id.022, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ipa_endpoint_program_suspend(ptr nocapture noundef readonly %endpoint, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %endpoint, align 4
  %version = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %version, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp ugt i32 %3, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %toward_ipa = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 4
  %4 = ptrtoint ptr %toward_ipa to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %toward_ipa, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.end16.thread, label %if.end16, !prof !140

if.end16.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %endpoint_id.i38 = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 3
  %6 = ptrtoint ptr %endpoint_id.i38 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %endpoint_id.i38, align 4
  %mul.i39 = mul i32 %7, 112
  %add.i40 = add i32 %mul.i39, 2048
  %8 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %endpoint, align 4
  %version23.i41 = getelementptr inbounds %struct.ipa, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %version23.i41 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %version23.i41, align 128
  br label %if.else.i

if.end16:                                         ; preds = %if.end
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 342, i32 noundef 9, ptr noundef null) #9
  %12 = ptrtoint ptr %toward_ipa to i32
  call void @__asan_load1_noabort(i32 %12)
  %.pr = load i8, ptr %toward_ipa, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %phi.cmp = icmp eq i8 %.pr, 0
  %endpoint_id.i = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 3
  %13 = ptrtoint ptr %endpoint_id.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %endpoint_id.i, align 4
  %mul.i = mul i32 %14, 112
  %add.i = add i32 %mul.i, 2048
  %15 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %endpoint, align 4
  %version23.i = getelementptr inbounds %struct.ipa, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %version23.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %version23.i, align 128
  br i1 %phi.cmp, label %if.end16.if.else.i_crit_edge, label %if.then.i

if.end16.if.else.i_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %18)
  %cmp.i = icmp ugt i32 %18, 5
  br i1 %cmp.i, label %if.then.i.if.end54.sink.split.i_crit_edge, label %if.then.i.if.end54.i_crit_edge, !prof !141

if.then.i.if.end54.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54.i

if.then.i.if.end54.sink.split.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54.sink.split.i

if.else.i:                                        ; preds = %if.end16.if.else.i_crit_edge, %if.end16.thread
  %19 = phi i32 [ %11, %if.end16.thread ], [ %18, %if.end16.if.else.i_crit_edge ]
  %20 = phi ptr [ %9, %if.end16.thread ], [ %16, %if.end16.if.else.i_crit_edge ]
  %add.i47 = phi i32 [ %add.i40, %if.end16.thread ], [ %add.i, %if.end16.if.else.i_crit_edge ]
  %endpoint_id.i44 = phi ptr [ %endpoint_id.i38, %if.end16.thread ], [ %endpoint_id.i, %if.end16.if.else.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp24.i = icmp ugt i32 %19, 3
  br i1 %cmp24.i, label %if.else.i.if.end54.sink.split.i_crit_edge, label %if.else.i.if.end54.i_crit_edge, !prof !141

if.else.i.if.end54.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54.i

if.else.i.if.end54.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54.sink.split.i

if.end54.sink.split.i:                            ; preds = %if.else.i.if.end54.sink.split.i_crit_edge, %if.then.i.if.end54.sink.split.i_crit_edge
  %21 = phi ptr [ %16, %if.then.i.if.end54.sink.split.i_crit_edge ], [ %20, %if.else.i.if.end54.sink.split.i_crit_edge ]
  %add.i46 = phi i32 [ %add.i, %if.then.i.if.end54.sink.split.i_crit_edge ], [ %add.i47, %if.else.i.if.end54.sink.split.i_crit_edge ]
  %endpoint_id.i43 = phi ptr [ %endpoint_id.i, %if.then.i.if.end54.sink.split.i_crit_edge ], [ %endpoint_id.i44, %if.else.i.if.end54.sink.split.i_crit_edge ]
  %.sink.i = phi i32 [ 253, %if.then.i.if.end54.sink.split.i_crit_edge ], [ 255, %if.else.i.if.end54.sink.split.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef %.sink.i, i32 noundef 9, ptr noundef null) #9
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.end54.sink.split.i, %if.else.i.if.end54.i_crit_edge, %if.then.i.if.end54.i_crit_edge
  %22 = phi ptr [ %21, %if.end54.sink.split.i ], [ %20, %if.else.i.if.end54.i_crit_edge ], [ %16, %if.then.i.if.end54.i_crit_edge ]
  %add.i45 = phi i32 [ %add.i46, %if.end54.sink.split.i ], [ %add.i47, %if.else.i.if.end54.i_crit_edge ], [ %add.i, %if.then.i.if.end54.i_crit_edge ]
  %endpoint_id.i42 = phi ptr [ %endpoint_id.i43, %if.end54.sink.split.i ], [ %endpoint_id.i44, %if.else.i.if.end54.i_crit_edge ], [ %endpoint_id.i, %if.then.i.if.end54.i_crit_edge ]
  %23 = ptrtoint ptr %toward_ipa to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %toward_ipa, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool56.not.i = icmp eq i8 %24, 0
  %cond.i = select i1 %tobool56.not.i, i32 1, i32 2
  %reg_virt.i = getelementptr inbounds %struct.ipa, ptr %22, i32 0, i32 14
  %25 = ptrtoint ptr %reg_virt.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 %add.i45
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !142
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !143
  %and.i = and i32 %28, %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool57.i = icmp ne i32 %and.i, 0
  %29 = xor i1 %tobool57.i, %enable
  br i1 %29, label %if.then68.i, label %if.end54.i.ipa_endpoint_init_ctrl.exit_crit_edge

if.end54.i.ipa_endpoint_init_ctrl.exit_crit_edge: ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipa_endpoint_init_ctrl.exit

if.then68.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  %xor.i = xor i32 %28, %cond.i
  %30 = ptrtoint ptr %reg_virt.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_virt.i, align 4
  %add.ptr70.i = getelementptr i8, ptr %31, i32 %add.i45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %32 = tail call i32 @llvm.bswap.i32(i32 %xor.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70.i, i32 %32) #9, !srcloc !145
  br label %ipa_endpoint_init_ctrl.exit

ipa_endpoint_init_ctrl.exit:                      ; preds = %if.then68.i, %if.end54.i.ipa_endpoint_init_ctrl.exit_crit_edge
  %enable.not = xor i1 %enable, true
  %brmerge = select i1 %enable.not, i1 true, i1 %tobool57.i
  br i1 %brmerge, label %ipa_endpoint_init_ctrl.exit.cleanup_crit_edge, label %if.then27

ipa_endpoint_init_ctrl.exit.cleanup_crit_edge:    ; preds = %ipa_endpoint_init_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then27:                                        ; preds = %ipa_endpoint_init_ctrl.exit
  %33 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %endpoint, align 4
  %data.i = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 5
  %35 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i, align 4
  %aggregation.i = getelementptr inbounds %struct.ipa_endpoint_config_data, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %aggregation.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %aggregation.i, align 2, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i37 = icmp eq i8 %38, 0
  br i1 %tobool.not.i37, label %if.then27.cleanup_crit_edge, label %if.end.i

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then27
  %39 = ptrtoint ptr %endpoint_id.i42 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %endpoint_id.i42, align 4
  %shl.i.i = shl nuw i32 1, %40
  %available.i.i = getelementptr inbounds %struct.ipa, ptr %34, i32 0, i32 28
  %41 = ptrtoint ptr %available.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %available.i.i, align 4
  %and.i.i = and i32 %42, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end.i.ipa_endpoint_aggr_active.exit.i_crit_edge, !prof !141

if.end.i.ipa_endpoint_aggr_active.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipa_endpoint_aggr_active.exit.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 289, i32 noundef 9, ptr noundef null) #9
  br label %ipa_endpoint_aggr_active.exit.i

ipa_endpoint_aggr_active.exit.i:                  ; preds = %do.end.i.i, %if.end.i.ipa_endpoint_aggr_active.exit.i_crit_edge
  %version.i.i = getelementptr inbounds %struct.ipa, ptr %34, i32 0, i32 1
  %43 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %version.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %44)
  %cmp.i.i.i = icmp ult i32 %44, 4
  %..i.i.i = select i1 %cmp.i.i.i, i32 268, i32 180
  %reg_virt.i.i = getelementptr inbounds %struct.ipa, ptr %34, i32 0, i32 14
  %45 = ptrtoint ptr %reg_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg_virt.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %46, i32 %..i.i.i
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !142
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !143
  %and23.i.i = and i32 %48, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.i)
  %tobool24.i.not.i = icmp eq i32 %and23.i.i, 0
  br i1 %tobool24.i.not.i, label %ipa_endpoint_aggr_active.exit.i.cleanup_crit_edge, label %if.end3.i

ipa_endpoint_aggr_active.exit.i.cleanup_crit_edge: ; preds = %ipa_endpoint_aggr_active.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3.i:                                        ; preds = %ipa_endpoint_aggr_active.exit.i
  %49 = ptrtoint ptr %endpoint_id.i42 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %endpoint_id.i42, align 4
  %shl.i8.i = shl nuw i32 1, %50
  %51 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %endpoint, align 4
  %available.i9.i = getelementptr inbounds %struct.ipa, ptr %52, i32 0, i32 28
  %53 = ptrtoint ptr %available.i9.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %available.i9.i, align 4
  %and.i10.i = and i32 %54, %shl.i8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10.i)
  %tobool.not.i11.i = icmp eq i32 %and.i10.i, 0
  br i1 %tobool.not.i11.i, label %do.end.i12.i, label %if.end3.i.ipa_endpoint_force_close.exit.i_crit_edge, !prof !141

if.end3.i.ipa_endpoint_force_close.exit.i_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipa_endpoint_force_close.exit.i

do.end.i12.i:                                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 302, i32 noundef 9, ptr noundef null) #9
  br label %ipa_endpoint_force_close.exit.i

ipa_endpoint_force_close.exit.i:                  ; preds = %do.end.i12.i, %if.end3.i.ipa_endpoint_force_close.exit.i_crit_edge
  %reg_virt.i13.i = getelementptr inbounds %struct.ipa, ptr %52, i32 0, i32 14
  %55 = ptrtoint ptr %reg_virt.i13.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %reg_virt.i13.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %56, i32 492
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %57 = tail call i32 @llvm.bswap.i32(i32 %shl.i8.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 %57) #9, !srcloc !145
  %interrupt.i = getelementptr inbounds %struct.ipa, ptr %34, i32 0, i32 10
  %58 = ptrtoint ptr %interrupt.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %interrupt.i, align 32
  tail call void @ipa_interrupt_simulate_suspend(ptr noundef %59) #9
  br label %cleanup

cleanup:                                          ; preds = %ipa_endpoint_force_close.exit.i, %ipa_endpoint_aggr_active.exit.i.cleanup_crit_edge, %if.then27.cleanup_crit_edge, %ipa_endpoint_init_ctrl.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %enable, %entry.cleanup_crit_edge ], [ %tobool57.i, %ipa_endpoint_init_ctrl.exit.cleanup_crit_edge ], [ false, %if.then27.cleanup_crit_edge ], [ false, %ipa_endpoint_aggr_active.exit.i.cleanup_crit_edge ], [ false, %ipa_endpoint_force_close.exit.i ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipa_endpoint_program_delay(ptr nocapture noundef readonly %endpoint, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %endpoint, align 4
  %version = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %version, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp = icmp ugt i32 %3, 5
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !141

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 276, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %toward_ipa = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 4
  %4 = ptrtoint ptr %toward_ipa to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %toward_ipa, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool20.not = icmp eq i8 %5, 0
  br i1 %tobool20.not, label %if.end44, label %if.end44.thread, !prof !141

if.end44.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %endpoint_id.i57 = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 3
  %6 = ptrtoint ptr %endpoint_id.i57 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %endpoint_id.i57, align 4
  %mul.i58 = mul i32 %7, 112
  %add.i59 = add i32 %mul.i58, 2048
  %8 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %endpoint, align 4
  %version23.i60 = getelementptr inbounds %struct.ipa, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %version23.i60 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %version23.i60, align 128
  br label %if.then.i

if.end44:                                         ; preds = %if.end
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 277, i32 noundef 9, ptr noundef null) #9
  %12 = ptrtoint ptr %toward_ipa to i32
  call void @__asan_load1_noabort(i32 %12)
  %.pr = load i8, ptr %toward_ipa, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %phi.cmp = icmp eq i8 %.pr, 0
  %endpoint_id.i = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 3
  %13 = ptrtoint ptr %endpoint_id.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %endpoint_id.i, align 4
  %mul.i = mul i32 %14, 112
  %add.i = add i32 %mul.i, 2048
  %15 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %endpoint, align 4
  %version23.i = getelementptr inbounds %struct.ipa, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %version23.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %version23.i, align 128
  br i1 %phi.cmp, label %if.else.i, label %if.end44.if.then.i_crit_edge

if.end44.if.then.i_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %if.end44.if.then.i_crit_edge, %if.end44.thread
  %19 = phi i32 [ %11, %if.end44.thread ], [ %18, %if.end44.if.then.i_crit_edge ]
  %20 = phi ptr [ %9, %if.end44.thread ], [ %16, %if.end44.if.then.i_crit_edge ]
  %add.i63 = phi i32 [ %add.i59, %if.end44.thread ], [ %add.i, %if.end44.if.then.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %19)
  %cmp.i = icmp ugt i32 %19, 5
  br i1 %cmp.i, label %if.then.i.if.end54.sink.split.i_crit_edge, label %if.then.i.if.end54.i_crit_edge, !prof !141

if.then.i.if.end54.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54.i

if.then.i.if.end54.sink.split.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54.sink.split.i

if.else.i:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cmp24.i = icmp ugt i32 %18, 3
  br i1 %cmp24.i, label %if.else.i.if.end54.sink.split.i_crit_edge, label %if.else.i.if.end54.i_crit_edge, !prof !141

if.else.i.if.end54.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54.i

if.else.i.if.end54.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54.sink.split.i

if.end54.sink.split.i:                            ; preds = %if.else.i.if.end54.sink.split.i_crit_edge, %if.then.i.if.end54.sink.split.i_crit_edge
  %21 = phi ptr [ %20, %if.then.i.if.end54.sink.split.i_crit_edge ], [ %16, %if.else.i.if.end54.sink.split.i_crit_edge ]
  %add.i62 = phi i32 [ %add.i63, %if.then.i.if.end54.sink.split.i_crit_edge ], [ %add.i, %if.else.i.if.end54.sink.split.i_crit_edge ]
  %.sink.i = phi i32 [ 253, %if.then.i.if.end54.sink.split.i_crit_edge ], [ 255, %if.else.i.if.end54.sink.split.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef %.sink.i, i32 noundef 9, ptr noundef null) #9
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.end54.sink.split.i, %if.else.i.if.end54.i_crit_edge, %if.then.i.if.end54.i_crit_edge
  %22 = phi ptr [ %21, %if.end54.sink.split.i ], [ %16, %if.else.i.if.end54.i_crit_edge ], [ %20, %if.then.i.if.end54.i_crit_edge ]
  %add.i61 = phi i32 [ %add.i62, %if.end54.sink.split.i ], [ %add.i, %if.else.i.if.end54.i_crit_edge ], [ %add.i63, %if.then.i.if.end54.i_crit_edge ]
  %23 = ptrtoint ptr %toward_ipa to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %toward_ipa, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool56.not.i = icmp eq i8 %24, 0
  %cond.i = select i1 %tobool56.not.i, i32 1, i32 2
  %reg_virt.i = getelementptr inbounds %struct.ipa, ptr %22, i32 0, i32 14
  %25 = ptrtoint ptr %reg_virt.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 %add.i61
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !142
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !143
  %and.i = and i32 %28, %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool57.i = icmp ne i32 %and.i, 0
  %29 = xor i1 %tobool57.i, %enable
  br i1 %29, label %if.then68.i, label %if.end54.i.ipa_endpoint_init_ctrl.exit_crit_edge

if.end54.i.ipa_endpoint_init_ctrl.exit_crit_edge: ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipa_endpoint_init_ctrl.exit

if.then68.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  %xor.i = xor i32 %28, %cond.i
  %30 = ptrtoint ptr %reg_virt.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_virt.i, align 4
  %add.ptr70.i = getelementptr i8, ptr %31, i32 %add.i61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %32 = tail call i32 @llvm.bswap.i32(i32 %xor.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70.i, i32 %32) #9, !srcloc !145
  br label %ipa_endpoint_init_ctrl.exit

ipa_endpoint_init_ctrl.exit:                      ; preds = %if.then68.i, %if.end54.i.ipa_endpoint_init_ctrl.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsi_modem_channel_flow_control(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipa_endpoint_modem_exception_reset_all(ptr noundef %ipa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %initialized1 = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 30
  %0 = ptrtoint ptr %initialized1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %initialized1, align 4
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %1) #9
  %call281 = tail call i32 @ipa_cmd_pipeline_clear_count() #9
  %add282 = add i32 %call281, %call.i
  %call283 = tail call ptr @ipa_cmd_trans_alloc(ptr noundef %ipa, i32 noundef %add282) #9
  %tobool284.not = icmp eq ptr %call283, null
  br i1 %tobool284.not, label %do.end, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool285.not348 = icmp eq i32 %1, 0
  br i1 %tobool285.not348, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 2
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #12
  br label %cleanup296

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %initialized.0349 = phi i32 [ %xor, %cleanup.while.body_crit_edge ], [ %1, %while.cond.preheader.while.body_crit_edge ]
  %4 = tail call i32 @llvm.cttz.i32(i32 %initialized.0349, i1 true) #9, !range !146
  %shl = shl nuw i32 1, %4
  %xor = xor i32 %shl, %initialized.0349
  %ee_id = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %4, i32 1
  %5 = ptrtoint ptr %ee_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ee_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %land.lhs.true, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %while.body
  %toward_ipa = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %4, i32 4
  %7 = ptrtoint ptr %toward_ipa to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %toward_ipa, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool289.not = icmp eq i8 %8, 0
  br i1 %tobool289.not, label %land.lhs.true.cleanup_crit_edge, label %if.end292

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end292:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %mul = mul nuw nsw i32 %4, 112
  %add293 = add nuw nsw i32 %mul, 2112
  tail call void @ipa_cmd_register_write_add(ptr noundef nonnull %call283, i32 noundef %add293, i32 noundef 0, i32 noundef -1, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end292, %land.lhs.true.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %tobool285.not = icmp eq i32 %xor, 0
  br i1 %tobool285.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  tail call void @ipa_cmd_pipeline_clear_add(ptr noundef nonnull %call283) #9
  tail call void @gsi_trans_commit_wait(ptr noundef nonnull %call283) #9
  tail call void @ipa_cmd_pipeline_clear_wait(ptr noundef %ipa) #9
  br label %cleanup296

cleanup296:                                       ; preds = %while.end, %do.end
  %retval.0 = phi i32 [ 0, %while.end ], [ -16, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipa_cmd_pipeline_clear_count() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipa_cmd_trans_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_cmd_register_write_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_cmd_pipeline_clear_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsi_trans_commit_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_cmd_pipeline_clear_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_endpoint_modem_hol_block_clear_all(ptr nocapture noundef readonly %ipa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.013 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %i.013
  %toward_ipa = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %i.013, i32 4
  %0 = ptrtoint ptr %toward_ipa to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %toward_ipa, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %ee_id = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %i.013, i32 1
  %2 = ptrtoint ptr %ee_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ee_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp2.not = icmp eq i32 %3, 1
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %endpoint_id1.i.i = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %i.013, i32 3
  %4 = ptrtoint ptr %endpoint_id1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %endpoint_id1.i.i, align 4
  %mul.i.i = mul i32 %5, 112
  %add.i.i = add i32 %mul.i.i, 2092
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %reg_virt.i.i = getelementptr inbounds %struct.ipa, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %reg_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_virt.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %add.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #9, !srcloc !145
  %10 = ptrtoint ptr %endpoint_id1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %endpoint_id1.i.i, align 4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %mul.i.i9 = mul i32 %11, 112
  %add.i.i10 = add i32 %mul.i.i9, 2096
  %reg_virt.i.i11 = getelementptr inbounds %struct.ipa, ptr %13, i32 0, i32 14
  %14 = ptrtoint ptr %reg_virt.i.i11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_virt.i.i11, align 4
  %add.ptr.i.i12 = getelementptr i8, ptr %15, i32 %add.i.i10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i12, i32 0) #9, !srcloc !145
  %16 = ptrtoint ptr %endpoint_id1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %endpoint_id1.i.i, align 4
  %mul.i2.i = mul i32 %17, 112
  %add.i3.i = add i32 %mul.i2.i, 2092
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %reg_virt.i4.i = getelementptr inbounds %struct.ipa, ptr %19, i32 0, i32 14
  %20 = ptrtoint ptr %reg_virt.i4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_virt.i4.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %21, i32 %add.i3.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 16777216) #9, !srcloc !145
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %version.i.i = getelementptr inbounds %struct.ipa, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %version.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %25)
  %cmp.i.i = icmp ugt i32 %25, 6
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %reg_virt5.i.i = getelementptr inbounds %struct.ipa, ptr %23, i32 0, i32 14
  %26 = ptrtoint ptr %reg_virt5.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_virt5.i.i, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %27, i32 %add.i3.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 16777216) #9, !srcloc !145
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipa_endpoint_skb_tx(ptr nocapture noundef readonly %endpoint, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i, align 4
  %nr_frags1 = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nr_frags1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr_frags1, align 2
  %conv = zext i8 %3 to i32
  %trans_tre_max = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 6
  %4 = ptrtoint ptr %trans_tre_max to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %trans_tre_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp.not = icmp ugt i32 %5, %conv
  br i1 %cmp.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not.i = icmp eq i32 %7, 0
  br i1 %tobool.i.not.i, label %if.then.if.end5_crit_edge, label %cond.true.i

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

cond.true.i:                                      ; preds = %if.then
  %call.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %7) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %cond.true.i.cleanup_crit_edge, label %cond.true.i.if.end5_crit_edge

cond.true.i.if.end5_crit_edge:                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

cond.true.i.cleanup_crit_edge:                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %cond.true.i.if.end5_crit_edge, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %nr_frags.0 = phi i32 [ %conv, %entry.if.end5_crit_edge ], [ 0, %cond.true.i.if.end5_crit_edge ], [ 0, %if.then.if.end5_crit_edge ]
  %add6 = add nuw nsw i32 %nr_frags.0, 1
  %8 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %endpoint, align 4
  %channel_id2.i = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 2
  %10 = ptrtoint ptr %channel_id2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channel_id2.i, align 4
  %toward_ipa.i = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 4
  %12 = ptrtoint ptr %toward_ipa.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %toward_ipa.i, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  %cond.i27 = select i1 %tobool.not.i, i32 2, i32 1
  %call.i = tail call ptr @gsi_channel_trans_alloc(ptr noundef %9, i32 noundef %11, i32 noundef %add6, i32 noundef %cond.i27) #9
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %call11 = tail call i32 @gsi_trans_skb_add(ptr noundef nonnull %call.i, ptr noundef %skb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %err_trans_free

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %data = getelementptr inbounds %struct.gsi_trans, ptr %call.i, i32 0, i32 7
  %14 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %skb, ptr %data, align 4
  %15 = tail call i32 @llvm.read_register.i32(metadata !129) #9
  %and.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %20, ptrtoint (ptr getelementptr inbounds (%struct.softnet_data, ptr @softnet_data, i32 0, i32 11, i32 1) to i32)
  %21 = inttoptr i32 %add.i to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.i.not = icmp eq i8 %23, 0
  tail call void @gsi_trans_commit(ptr noundef nonnull %call.i, i1 noundef zeroext %tobool.i.not) #9
  br label %cleanup

err_trans_free:                                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gsi_trans_free(ptr noundef nonnull %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %err_trans_free, %if.end14, %if.end5.cleanup_crit_edge, %cond.true.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %err_trans_free ], [ 0, %if.end14 ], [ -16, %if.end5.cleanup_crit_edge ], [ -7, %cond.true.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gsi_trans_skb_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsi_trans_commit(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsi_trans_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_endpoint_trans_complete(ptr noundef %endpoint, ptr nocapture noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %toward_ipa = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 4
  %0 = ptrtoint ptr %toward_ipa to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %toward_ipa, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else:                                          ; preds = %entry
  tail call fastcc void @ipa_endpoint_replenish(ptr noundef %endpoint, i1 noundef zeroext true) #9
  %cancelled.i = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 3
  %2 = ptrtoint ptr %cancelled.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cancelled.i, align 1, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %if.else
  %data.i = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 7
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %data1.i = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 5
  %6 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data1.i, align 4
  %status_enable.i = getelementptr inbounds %struct.ipa_endpoint_config_data, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %status_enable.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %status_enable.i, align 1, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not.i = icmp eq i8 %9, 0
  %len4.i = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 6
  %10 = ptrtoint ptr %len4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len4.i, align 8
  br i1 %tobool2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %call.i.i = tail call ptr @page_address(ptr noundef %5) #9
  %sub.i.i = sub i32 8192, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not65.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not65.i.i, label %if.then3.i.if.end_crit_edge, label %while.body.lr.ph.i.i

if.then3.i.if.end_crit_edge:                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

while.body.lr.ph.i.i:                             ; preds = %if.then3.i
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 128
  %endpoint_id5.i.i.i = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 3
  %div51.i.i = lshr i32 %11, 1
  %netdev.i.i.i = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 8
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %data.067.i.i = phi ptr [ %add.ptr.i.i, %while.body.lr.ph.i.i ], [ %data.1.i.i, %cleanup.i.i.while.body.i.i_crit_edge ]
  %resid.066.i.i = phi i32 [ %11, %while.body.lr.ph.i.i ], [ %resid.1.i.i, %cleanup.i.i.while.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %resid.066.i.i)
  %cmp.i.i = icmp ult i32 %resid.066.i.i, 32
  br i1 %cmp.i.i, label %cleanup.thread.i.i, label %if.end.i.i

cleanup.thread.i.i:                               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %endpoint, align 4
  %pdev.i.i = getelementptr inbounds %struct.ipa, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.23, i32 noundef %resid.066.i.i, i32 noundef 32) #12
  br label %if.end

if.end.i.i:                                       ; preds = %while.body.i.i
  %16 = ptrtoint ptr %data.067.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %data.067.i.i, align 8
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i8 %17, label %if.end.i.i.if.then2.i.i_crit_edge [
    i8 1, label %if.end.i.i.if.end.i.i.i_crit_edge
    i8 4, label %if.end.i.i.if.end.i.i.i_crit_edge10
    i8 8, label %if.end.i.i.if.end.i.i.i_crit_edge11
    i8 64, label %if.end.i.i.if.end.i.i.i_crit_edge12
  ]

if.end.i.i.if.end.i.i.i_crit_edge12:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

if.end.i.i.if.end.i.i.i_crit_edge11:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

if.end.i.i.if.end.i.i.i_crit_edge10:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

if.end.i.i.if.end.i.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

if.end.i.i.if.then2.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.i.i

if.end.i.i.i:                                     ; preds = %if.end.i.i.if.end.i.i.i_crit_edge, %if.end.i.i.if.end.i.i.i_crit_edge10, %if.end.i.i.if.end.i.i.i_crit_edge11, %if.end.i.i.if.end.i.i.i_crit_edge12
  %pkt_len.i.i.i = getelementptr inbounds %struct.ipa_status, ptr %data.067.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %pkt_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %pkt_len.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.not.i.i.i = icmp eq i16 %20, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.if.then2.i.i_crit_edge, label %ipa_endpoint_status_skip.exit.i.i

if.end.i.i.i.if.then2.i.i_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.i.i

ipa_endpoint_status_skip.exit.i.i:                ; preds = %if.end.i.i.i
  %endp_dst_idx.i.i.i = getelementptr inbounds %struct.ipa_status, ptr %data.067.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %endp_dst_idx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %endp_dst_idx.i.i.i, align 1
  %23 = and i8 %22, 31
  %conv4.i.i.i = zext i8 %23 to i32
  %24 = ptrtoint ptr %endpoint_id5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %endpoint_id5.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv4.i.i.i)
  %cmp.not.i.not.i.i = icmp eq i32 %25, %conv4.i.i.i
  br i1 %cmp.not.i.not.i.i, label %if.end5.i.i, label %ipa_endpoint_status_skip.exit.i.i.if.then2.i.i_crit_edge

ipa_endpoint_status_skip.exit.i.i.if.then2.i.i_crit_edge: ; preds = %ipa_endpoint_status_skip.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.i.i

if.then2.i.i:                                     ; preds = %ipa_endpoint_status_skip.exit.i.i.if.then2.i.i_crit_edge, %if.end.i.i.i.if.then2.i.i_crit_edge, %if.end.i.i.if.then2.i.i_crit_edge
  %add.ptr3.i.i = getelementptr i8, ptr %data.067.i.i, i32 32
  %sub4.i.i = add i32 %resid.066.i.i, -32
  br label %cleanup.i.i

if.end5.i.i:                                      ; preds = %ipa_endpoint_status_skip.exit.i.i
  %26 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data1.i, align 4
  %28 = getelementptr inbounds %struct.ipa_endpoint_config_data, ptr %27, i32 0, i32 7
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool7.not.i.i = icmp eq i32 %30, 0
  %31 = tail call i16 @llvm.bswap.i16(i16 %20) #9
  %conv.i.i = zext i16 %31 to i32
  %.op.i.i = add i32 %30, -1
  %sub8.i.i = select i1 %tobool7.not.i.i, i32 0, i32 %.op.i.i
  %add.i.i = add i32 %sub8.i.i, %conv.i.i
  %neg.i.i = xor i32 %sub8.i.i, -1
  %and.i.i = and i32 %add.i.i, %neg.i.i
  %checksum.i.i = getelementptr inbounds %struct.ipa_endpoint_config_data, ptr %27, i32 0, i32 1
  %32 = ptrtoint ptr %checksum.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %checksum.i.i, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool12.not.i.i = icmp eq i8 %33, 0
  %spec.select.v.i.i = select i1 %tobool12.not.i.i, i32 32, i32 40
  %spec.select.i.i = add i32 %and.i.i, %spec.select.v.i.i
  %34 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %endpoint, align 4
  %mask.i.i.i.i = getelementptr inbounds %struct.ipa_status, ptr %data.067.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %mask.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %mask.i.i.i.i, align 2
  %38 = and i16 %37, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool.not.i.i.i.i = icmp eq i16 %38, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i53.i.i, label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.end5.i.i
  %endp_src_idx.i.i.i.i = getelementptr inbounds %struct.ipa_status, ptr %data.067.i.i, i32 0, i32 4
  %39 = ptrtoint ptr %endp_src_idx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %endp_src_idx.i.i.i.i, align 2
  %41 = and i8 %40, 31
  %conv.i.i.i.i = zext i8 %41 to i32
  %name_map.i.i.i.i = getelementptr inbounds %struct.ipa, ptr %35, i32 0, i32 35
  %42 = ptrtoint ptr %name_map.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %name_map.i.i.i.i, align 4
  %endpoint_id3.i.i.i.i = getelementptr inbounds %struct.ipa_endpoint, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %endpoint_id3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %endpoint_id3.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %conv.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %45, %conv.i.i.i.i
  br i1 %cmp.i.i.i.i, label %if.then5.i.i.i.i, label %do.end.i.i.i.i

if.then5.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %completion.i.i.i.i = getelementptr inbounds %struct.ipa, ptr %35, i32 0, i32 3
  tail call void @complete(ptr noundef %completion.i.i.i.i) #9
  br label %if.end23.i.i

do.end.i.i.i.i:                                   ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %pdev.i.i.i.i = getelementptr inbounds %struct.ipa, ptr %35, i32 0, i32 2
  %46 = ptrtoint ptr %pdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdev.i.i.i.i, align 4
  %dev.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %47, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i.i, ptr noundef nonnull @.str.25, i32 noundef %conv.i.i.i.i) #12
  br label %if.end23.i.i

if.end.i53.i.i:                                   ; preds = %if.end5.i.i
  %exception.i.i.i = getelementptr inbounds %struct.ipa_status, ptr %data.067.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %exception.i.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %exception.i.i.i, align 1
  %50 = zext i8 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.73)
  switch i8 %49, label %if.end.i53.i.i.if.then17.i.i_crit_edge [
    i8 0, label %ipa_endpoint_status_drop.exit.i.i
    i8 1, label %if.end.i53.i.i.if.end23.i.i_crit_edge
  ]

if.end.i53.i.i.if.end23.i.i_crit_edge:            ; preds = %if.end.i53.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i.i

if.end.i53.i.i.if.then17.i.i_crit_edge:           ; preds = %if.end.i53.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17.i.i

ipa_endpoint_status_drop.exit.i.i:                ; preds = %if.end.i53.i.i
  %flags1.i.i.i = getelementptr inbounds %struct.ipa_status, ptr %data.067.i.i, i32 0, i32 7
  %51 = ptrtoint ptr %flags1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags1.i.i.i, align 4
  %53 = and i32 %52, 49407
  call void @__sanitizer_cov_trace_const_cmp4(i32 49407, i32 %53)
  %cmp8.i.i.i = icmp eq i32 %53, 49407
  br i1 %cmp8.i.i.i, label %ipa_endpoint_status_drop.exit.i.i.if.end23.i.i_crit_edge, label %ipa_endpoint_status_drop.exit.i.i.if.then17.i.i_crit_edge

ipa_endpoint_status_drop.exit.i.i.if.then17.i.i_crit_edge: ; preds = %ipa_endpoint_status_drop.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17.i.i

ipa_endpoint_status_drop.exit.i.i.if.end23.i.i_crit_edge: ; preds = %ipa_endpoint_status_drop.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i.i

if.then17.i.i:                                    ; preds = %ipa_endpoint_status_drop.exit.i.i.if.then17.i.i_crit_edge, %if.end.i53.i.i.if.then17.i.i_crit_edge
  %add.ptr18.i.i = getelementptr i8, ptr %data.067.i.i, i32 32
  %mul.i.i = mul i32 %spec.select.i.i, %sub.i.i
  %add21.i.i = add i32 %mul.i.i, %div51.i.i
  %div22.i.i = udiv i32 %add21.i.i, %11
  %54 = ptrtoint ptr %netdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %netdev.i.i.i, align 4
  %tobool.not.i55.i.i = icmp eq ptr %55, null
  br i1 %tobool.not.i55.i.i, label %if.then17.i.i.if.end23.i.i_crit_edge, label %if.end.i56.i.i

if.then17.i.i.if.end23.i.i_crit_edge:             ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i.i

if.end.i56.i.i:                                   ; preds = %if.then17.i.i
  %call.i.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %conv.i.i, i32 noundef 2592) #9
  %tobool1.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool1.not.i.i.i, label %if.end.i56.i.i.if.end23.i.i_crit_edge, label %if.end3.i.i.i

if.end.i56.i.i.if.end23.i.i_crit_edge:            ; preds = %if.end.i56.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i.i

if.end3.i.i.i:                                    ; preds = %if.end.i56.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef %conv.i.i) #9
  %data5.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %56 = ptrtoint ptr %data5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data5.i.i.i, align 4
  %58 = call ptr @memcpy(ptr %57, ptr %add.ptr18.i.i, i32 %conv.i.i)
  %truesize.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 20
  %59 = ptrtoint ptr %truesize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %truesize.i.i.i, align 8
  %add.i.i.i = add i32 %60, %div22.i.i
  store i32 %add.i.i.i, ptr %truesize.i.i.i, align 8
  %61 = ptrtoint ptr %netdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %netdev.i.i.i, align 4
  tail call void @ipa_modem_skb_rx(ptr noundef %62, ptr noundef nonnull %call.i.i.i.i) #9
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.end3.i.i.i, %if.end.i56.i.i.if.end23.i.i_crit_edge, %if.then17.i.i.if.end23.i.i_crit_edge, %ipa_endpoint_status_drop.exit.i.i.if.end23.i.i_crit_edge, %if.end.i53.i.i.if.end23.i.i_crit_edge, %do.end.i.i.i.i, %if.then5.i.i.i.i
  %add.ptr24.i.i = getelementptr i8, ptr %data.067.i.i, i32 %spec.select.i.i
  %sub25.i.i = sub i32 %resid.066.i.i, %spec.select.i.i
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end23.i.i, %if.then2.i.i
  %resid.1.i.i = phi i32 [ %sub4.i.i, %if.then2.i.i ], [ %sub25.i.i, %if.end23.i.i ]
  %data.1.i.i = phi ptr [ %add.ptr3.i.i, %if.then2.i.i ], [ %add.ptr24.i.i, %if.end23.i.i ]
  %tobool.not.i.i = icmp eq i32 %resid.1.i.i, 0
  br i1 %tobool.not.i.i, label %cleanup.i.i.if.end_crit_edge, label %cleanup.i.i.while.body.i.i_crit_edge

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

cleanup.i.i.if.end_crit_edge:                     ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else.i:                                        ; preds = %if.end.i
  %netdev.i.i = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 8
  %63 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %netdev.i.i, align 4
  %tobool.not.i17.i = icmp eq ptr %64, null
  br i1 %tobool.not.i17.i, label %if.else.i.if.end_crit_edge, label %if.end.i19.i

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i19.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7808, i32 %11)
  %cmp.i18.i = icmp ugt i32 %11, 7808
  br i1 %cmp.i18.i, label %do.end.i.i, label %if.end.i19.i.if.end15.i.i_crit_edge, !prof !141

if.end.i19.i.if.end15.i.i_crit_edge:              ; preds = %if.end.i19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i.i

do.end.i.i:                                       ; preds = %if.end.i19.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1192, i32 noundef 9, ptr noundef null) #9
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %do.end.i.i, %if.end.i19.i.if.end15.i.i_crit_edge
  %call.i20.i = tail call ptr @page_address(ptr noundef %5) #9
  %call22.i.i = tail call ptr @build_skb(ptr noundef %call.i20.i, i32 noundef 8192) #9
  %tobool23.i.not.i = icmp eq ptr %call22.i.i, null
  br i1 %tobool23.i.not.i, label %ipa_endpoint_skb_build.exit.i, label %if.then5.i

ipa_endpoint_skb_build.exit.i:                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %netdev.i.i, align 4
  tail call void @ipa_modem_skb_rx(ptr noundef %66, ptr noundef null) #9
  br label %if.end

if.then5.i:                                       ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call22.i.i, i32 0, i32 19
  %67 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %68, i32 128
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call22.i.i, i32 0, i32 16
  %69 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %70, i32 128
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call25.i.i = tail call ptr @skb_put(ptr noundef nonnull %call22.i.i, i32 noundef %11) #9
  %71 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %netdev.i.i, align 4
  tail call void @ipa_modem_skb_rx(ptr noundef %72, ptr noundef nonnull %call22.i.i) #9
  %73 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %data.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5.i, %ipa_endpoint_skb_build.exit.i, %if.else.i.if.end_crit_edge, %cleanup.i.i.if.end_crit_edge, %cleanup.thread.i.i, %if.then3.i.if.end_crit_edge, %if.else.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_endpoint_trans_release(ptr noundef readonly %endpoint, ptr nocapture noundef readonly %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %toward_ipa = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 4
  %0 = ptrtoint ptr %toward_ipa to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %toward_ipa, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %endpoint, align 4
  %name_map = getelementptr inbounds %struct.ipa, ptr %3, i32 0, i32 35
  %4 = ptrtoint ptr %name_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name_map, align 4
  %cmp.not = icmp eq ptr %5, %endpoint
  br i1 %cmp.not, label %if.then.if.end10_crit_edge, label %if.then2

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then2:                                         ; preds = %if.then
  %data = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 7
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.then2.if.end10_crit_edge, label %if.then4

if.then2.if.end10_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %7, i32 noundef 1) #9
  br label %if.end10

if.else:                                          ; preds = %entry
  %data6 = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 7
  %8 = ptrtoint ptr %data6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data6, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %if.else.if.end10_crit_edge, label %if.then8

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__free_pages(ptr noundef nonnull %9, i32 noundef 1) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.else.if.end10_crit_edge, %if.then4, %if.then2.if.end10_crit_edge, %if.then.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_endpoint_default_route_set(ptr nocapture noundef readonly %ipa, i32 noundef %endpoint_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv8.i30.in = and i32 %endpoint_id, 31
  %conv8.i30 = shl nuw nsw i32 %conv8.i30.in, 1
  %conv8.i21 = shl nuw nsw i32 %conv8.i30.in, 17
  %or2 = or i32 %conv8.i30, %conv8.i21
  %or5 = or i32 %or2, 16777280
  %reg_virt = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 14
  %0 = ptrtoint ptr %reg_virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_virt, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %2 = tail call i32 @llvm.bswap.i32(i32 %or5) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #9, !srcloc !145
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_endpoint_default_route_clear(ptr nocapture noundef readonly %ipa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_virt.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 14
  %0 = ptrtoint ptr %reg_virt.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1073741825) #9, !srcloc !145
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipa_endpoint_enable_one(ptr noundef %endpoint) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %endpoint, align 4
  %channel_id = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 2
  %2 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel_id, align 4
  %call = tail call i32 @gsi_channel_start(ptr noundef %1, i32 noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %toward_ipa = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 4
  %6 = ptrtoint ptr %toward_ipa to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %toward_ipa, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  %cond = select i1 %tobool3.not, i32 82, i32 84
  %8 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel_id, align 4
  %endpoint_id = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 3
  %10 = ptrtoint ptr %endpoint_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %endpoint_id, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %call, i32 noundef %cond, i32 noundef %9, i32 noundef %11) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %toward_ipa5 = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 4
  %12 = ptrtoint ptr %toward_ipa5 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %toward_ipa5, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool6.not = icmp eq i8 %13, 0
  br i1 %tobool6.not, label %if.then7, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %interrupt = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %interrupt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %interrupt, align 32
  %endpoint_id8 = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 3
  %16 = ptrtoint ptr %endpoint_id8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %endpoint_id8, align 4
  tail call void @ipa_interrupt_suspend_enable(ptr noundef %15, i32 noundef %17) #9
  tail call fastcc void @ipa_endpoint_replenish_enable(ptr noundef %endpoint)
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  %endpoint_id10 = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 3
  %18 = ptrtoint ptr %endpoint_id10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %endpoint_id10, align 4
  %shl = shl nuw i32 1, %19
  %enabled = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 32
  %20 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %enabled, align 4
  %or = or i32 %21, %shl
  store i32 %or, ptr %enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gsi_channel_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_interrupt_suspend_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipa_endpoint_replenish_enable(ptr noundef %endpoint) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %endpoint, align 4
  %replenish_flags = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 0, ptr noundef %replenish_flags) #9
  %replenish_saved = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 11
  %call.i.i13 = tail call zeroext i1 @__kasan_check_write(ptr noundef %replenish_saved, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @llvm.prefetch.p0(ptr %replenish_saved, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %replenish_saved) #9, !srcloc !148
  %asmresult.i.i14 = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i14)
  %tobool.not15 = icmp eq i32 %asmresult.i.i14, 0
  br i1 %tobool.not15, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %replenish_backlog = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 12
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %asmresult.i.i16 = phi i32 [ %asmresult.i.i14, %while.body.lr.ph ], [ %asmresult.i.i, %while.body.while.body_crit_edge ]
  %call.i.i11 = tail call zeroext i1 @__kasan_check_write(ptr noundef %replenish_backlog, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %replenish_backlog, i32 1, i32 3, i32 1) #9
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %replenish_backlog, ptr %replenish_backlog, i32 %asmresult.i.i16, ptr elementtype(i32) %replenish_backlog) #9, !srcloc !150
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %replenish_saved, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @llvm.prefetch.p0(ptr %replenish_saved, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %replenish_saved) #9, !srcloc !148
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !149
  %tobool.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %channel_id = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 2
  %5 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel_id, align 4
  %call2 = tail call i32 @gsi_channel_tre_max(ptr noundef %1, i32 noundef %6) #9
  %replenish_backlog3 = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 12
  %call.i.i12 = tail call zeroext i1 @__kasan_check_read(ptr noundef %replenish_backlog3, i32 noundef 4) #9
  %7 = ptrtoint ptr %replenish_backlog3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %replenish_backlog3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %call2)
  %cmp = icmp eq i32 %8, %call2
  br i1 %cmp, label %if.then, label %while.end.if.end_crit_edge

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ipa_endpoint_replenish(ptr noundef %endpoint, i1 noundef zeroext false)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_endpoint_disable_one(ptr noundef %endpoint) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %endpoint_id = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 3
  %0 = ptrtoint ptr %endpoint_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %endpoint_id, align 4
  %shl = shl nuw i32 1, %1
  %2 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %endpoint, align 4
  %enabled = getelementptr inbounds %struct.ipa, ptr %3, i32 0, i32 32
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %enabled, align 4
  %and = and i32 %5, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %xor = xor i32 %5, %shl
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %xor, ptr %enabled, align 4
  %toward_ipa = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 4
  %7 = ptrtoint ptr %toward_ipa to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %toward_ipa, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ipa_endpoint_replenish_disable(ptr noundef %endpoint)
  %interrupt = getelementptr inbounds %struct.ipa, ptr %3, i32 0, i32 10
  %9 = ptrtoint ptr %interrupt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %interrupt, align 32
  %11 = ptrtoint ptr %endpoint_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %endpoint_id, align 4
  tail call void @ipa_interrupt_suspend_disable(ptr noundef %10, i32 noundef %12) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %channel_id = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 2
  %13 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %channel_id, align 4
  %call = tail call i32 @gsi_channel_stop(ptr noundef %3, i32 noundef %14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %do.end

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.ipa, ptr %3, i32 0, i32 2
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %endpoint_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %endpoint_id, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %call, i32 noundef %18) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipa_endpoint_replenish_disable(ptr noundef %endpoint) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %replenish_flags = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 9
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %replenish_flags) #9
  %replenish_backlog = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 12
  %call.i.i4 = tail call zeroext i1 @__kasan_check_write(ptr noundef %replenish_backlog, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @llvm.prefetch.p0(ptr %replenish_backlog, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %replenish_backlog) #9, !srcloc !148
  %asmresult.i.i5 = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i5)
  %tobool.not6 = icmp eq i32 %asmresult.i.i5, 0
  br i1 %tobool.not6, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %replenish_saved = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 11
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %asmresult.i.i7 = phi i32 [ %asmresult.i.i5, %while.body.lr.ph ], [ %asmresult.i.i, %while.body.while.body_crit_edge ]
  %call.i.i3 = tail call zeroext i1 @__kasan_check_write(ptr noundef %replenish_saved, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %replenish_saved, i32 1, i32 3, i32 1) #9
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %replenish_saved, ptr %replenish_saved, i32 %asmresult.i.i7, ptr elementtype(i32) %replenish_saved) #9, !srcloc !150
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %replenish_backlog, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @llvm.prefetch.p0(ptr %replenish_backlog, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %replenish_backlog) #9, !srcloc !148
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !149
  %tobool.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_interrupt_suspend_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gsi_channel_stop(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_endpoint_suspend_one(ptr noundef %endpoint) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %endpoint, align 4
  %pdev = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %enabled = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %enabled, align 4
  %endpoint_id = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 3
  %6 = ptrtoint ptr %endpoint_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %endpoint_id, align 4
  %shl = shl nuw i32 1, %7
  %and = and i32 %shl, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %toward_ipa = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 4
  %8 = ptrtoint ptr %toward_ipa to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %toward_ipa, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool5.not, label %if.then6, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ipa_endpoint_replenish_disable(ptr noundef %endpoint)
  %call = tail call fastcc zeroext i1 @ipa_endpoint_program_suspend(ptr noundef %endpoint, i1 noundef zeroext true)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %channel_id = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 2
  %10 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channel_id, align 4
  %call8 = tail call i32 @gsi_channel_suspend(ptr noundef %1, i32 noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %do.end

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel_id, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %call8, i32 noundef %13) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gsi_channel_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_endpoint_resume_one(ptr noundef %endpoint) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %endpoint, align 4
  %pdev = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %enabled = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %enabled, align 4
  %endpoint_id = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 3
  %6 = ptrtoint ptr %endpoint_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %endpoint_id, align 4
  %shl = shl nuw i32 1, %7
  %and = and i32 %shl, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %toward_ipa = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 4
  %8 = ptrtoint ptr %toward_ipa to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %toward_ipa, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool5.not, label %if.then6, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call fastcc zeroext i1 @ipa_endpoint_program_suspend(ptr noundef %endpoint, i1 noundef zeroext false)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %channel_id = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 2
  %10 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channel_id, align 4
  %call8 = tail call i32 @gsi_channel_resume(ptr noundef %1, i32 noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel_id, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %call8, i32 noundef %13) #12
  br label %cleanup

if.else:                                          ; preds = %if.end7
  %14 = ptrtoint ptr %toward_ipa to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %toward_ipa, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool13.not = icmp eq i8 %15, 0
  br i1 %tobool13.not, label %if.then14, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ipa_endpoint_replenish_enable(ptr noundef %endpoint)
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.else.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gsi_channel_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_endpoint_suspend(ptr nocapture noundef readonly %ipa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %setup_complete = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 36
  %0 = ptrtoint ptr %setup_complete to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %setup_complete, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %modem_netdev = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 38
  %2 = ptrtoint ptr %modem_netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %modem_netdev, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ipa_modem_suspend(ptr noundef nonnull %3) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %name_map = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 35
  %arrayidx = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 35, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %pdev.i = getelementptr inbounds %struct.ipa, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev.i, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %enabled.i = getelementptr inbounds %struct.ipa, ptr %7, i32 0, i32 32
  %10 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %enabled.i, align 4
  %endpoint_id.i = getelementptr inbounds %struct.ipa_endpoint, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %endpoint_id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %endpoint_id.i, align 4
  %shl.i = shl nuw i32 1, %13
  %and.i = and i32 %shl.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end4.ipa_endpoint_suspend_one.exit_crit_edge, label %if.end.i

if.end4.ipa_endpoint_suspend_one.exit_crit_edge:  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipa_endpoint_suspend_one.exit

if.end.i:                                         ; preds = %if.end4
  %toward_ipa.i = getelementptr inbounds %struct.ipa_endpoint, ptr %5, i32 0, i32 4
  %14 = ptrtoint ptr %toward_ipa.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %toward_ipa.i, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool5.not.i = icmp eq i8 %15, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ipa_endpoint_replenish_disable(ptr noundef %5) #9
  %call.i = tail call fastcc zeroext i1 @ipa_endpoint_program_suspend(ptr noundef %5, i1 noundef zeroext true) #9
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.end.i.if.end7.i_crit_edge
  %channel_id.i = getelementptr inbounds %struct.ipa_endpoint, ptr %5, i32 0, i32 2
  %16 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %channel_id.i, align 4
  %call8.i = tail call i32 @gsi_channel_suspend(ptr noundef %7, i32 noundef %17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end7.i.ipa_endpoint_suspend_one.exit_crit_edge, label %do.end.i

if.end7.i.ipa_endpoint_suspend_one.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipa_endpoint_suspend_one.exit

do.end.i:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %channel_id.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.9, i32 noundef %call8.i, i32 noundef %19) #12
  br label %ipa_endpoint_suspend_one.exit

ipa_endpoint_suspend_one.exit:                    ; preds = %do.end.i, %if.end7.i.ipa_endpoint_suspend_one.exit_crit_edge, %if.end4.ipa_endpoint_suspend_one.exit_crit_edge
  %20 = ptrtoint ptr %name_map to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name_map, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %pdev.i11 = getelementptr inbounds %struct.ipa, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %pdev.i11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev.i11, align 4
  %dev1.i12 = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3
  %enabled.i13 = getelementptr inbounds %struct.ipa, ptr %23, i32 0, i32 32
  %26 = ptrtoint ptr %enabled.i13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %enabled.i13, align 4
  %endpoint_id.i14 = getelementptr inbounds %struct.ipa_endpoint, ptr %21, i32 0, i32 3
  %28 = ptrtoint ptr %endpoint_id.i14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %endpoint_id.i14, align 4
  %shl.i15 = shl nuw i32 1, %29
  %and.i16 = and i32 %shl.i15, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16)
  %tobool.not.i17 = icmp eq i32 %and.i16, 0
  br i1 %tobool.not.i17, label %ipa_endpoint_suspend_one.exit.return_crit_edge, label %if.end.i20

ipa_endpoint_suspend_one.exit.return_crit_edge:   ; preds = %ipa_endpoint_suspend_one.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.i20:                                       ; preds = %ipa_endpoint_suspend_one.exit
  %toward_ipa.i18 = getelementptr inbounds %struct.ipa_endpoint, ptr %21, i32 0, i32 4
  %30 = ptrtoint ptr %toward_ipa.i18 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %toward_ipa.i18, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool5.not.i19 = icmp eq i8 %31, 0
  br i1 %tobool5.not.i19, label %if.then6.i22, label %if.end.i20.if.end7.i26_crit_edge

if.end.i20.if.end7.i26_crit_edge:                 ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i26

if.then6.i22:                                     ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ipa_endpoint_replenish_disable(ptr noundef %21) #9
  %call.i21 = tail call fastcc zeroext i1 @ipa_endpoint_program_suspend(ptr noundef %21, i1 noundef zeroext true) #9
  br label %if.end7.i26

if.end7.i26:                                      ; preds = %if.then6.i22, %if.end.i20.if.end7.i26_crit_edge
  %channel_id.i23 = getelementptr inbounds %struct.ipa_endpoint, ptr %21, i32 0, i32 2
  %32 = ptrtoint ptr %channel_id.i23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %channel_id.i23, align 4
  %call8.i24 = tail call i32 @gsi_channel_suspend(ptr noundef %23, i32 noundef %33) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i24)
  %tobool9.not.i25 = icmp eq i32 %call8.i24, 0
  br i1 %tobool9.not.i25, label %if.end7.i26.return_crit_edge, label %do.end.i27

if.end7.i26.return_crit_edge:                     ; preds = %if.end7.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.end.i27:                                       ; preds = %if.end7.i26
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %channel_id.i23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %channel_id.i23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i12, ptr noundef nonnull @.str.9, i32 noundef %call8.i24, i32 noundef %35) #12
  br label %return

return:                                           ; preds = %do.end.i27, %if.end7.i26.return_crit_edge, %ipa_endpoint_suspend_one.exit.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_modem_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_endpoint_resume(ptr nocapture noundef readonly %ipa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %setup_complete = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 36
  %0 = ptrtoint ptr %setup_complete to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %setup_complete, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.end

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end:                                           ; preds = %entry
  %name_map = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 35
  %2 = ptrtoint ptr %name_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name_map, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %pdev.i = getelementptr inbounds %struct.ipa, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %enabled.i = getelementptr inbounds %struct.ipa, ptr %5, i32 0, i32 32
  %8 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %enabled.i, align 4
  %endpoint_id.i = getelementptr inbounds %struct.ipa_endpoint, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %endpoint_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %endpoint_id.i, align 4
  %shl.i = shl nuw i32 1, %11
  %and.i = and i32 %shl.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.ipa_endpoint_resume_one.exit_crit_edge, label %if.end.i

if.end.ipa_endpoint_resume_one.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipa_endpoint_resume_one.exit

if.end.i:                                         ; preds = %if.end
  %toward_ipa.i = getelementptr inbounds %struct.ipa_endpoint, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %toward_ipa.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %toward_ipa.i, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool5.not.i = icmp eq i8 %13, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call fastcc zeroext i1 @ipa_endpoint_program_suspend(ptr noundef %3, i1 noundef zeroext false) #9
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.end.i.if.end7.i_crit_edge
  %channel_id.i = getelementptr inbounds %struct.ipa_endpoint, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channel_id.i, align 4
  %call8.i = tail call i32 @gsi_channel_resume(ptr noundef %5, i32 noundef %15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %channel_id.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.11, i32 noundef %call8.i, i32 noundef %17) #12
  br label %ipa_endpoint_resume_one.exit

if.else.i:                                        ; preds = %if.end7.i
  %18 = ptrtoint ptr %toward_ipa.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %toward_ipa.i, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool13.not.i = icmp eq i8 %19, 0
  br i1 %tobool13.not.i, label %if.then14.i, label %if.else.i.ipa_endpoint_resume_one.exit_crit_edge

if.else.i.ipa_endpoint_resume_one.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipa_endpoint_resume_one.exit

if.then14.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ipa_endpoint_replenish_enable(ptr noundef %3) #9
  br label %ipa_endpoint_resume_one.exit

ipa_endpoint_resume_one.exit:                     ; preds = %if.then14.i, %if.else.i.ipa_endpoint_resume_one.exit_crit_edge, %do.end.i, %if.end.ipa_endpoint_resume_one.exit_crit_edge
  %arrayidx2 = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 35, i32 1
  %20 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx2, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %pdev.i11 = getelementptr inbounds %struct.ipa, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %pdev.i11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev.i11, align 4
  %dev1.i12 = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3
  %enabled.i13 = getelementptr inbounds %struct.ipa, ptr %23, i32 0, i32 32
  %26 = ptrtoint ptr %enabled.i13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %enabled.i13, align 4
  %endpoint_id.i14 = getelementptr inbounds %struct.ipa_endpoint, ptr %21, i32 0, i32 3
  %28 = ptrtoint ptr %endpoint_id.i14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %endpoint_id.i14, align 4
  %shl.i15 = shl nuw i32 1, %29
  %and.i16 = and i32 %shl.i15, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16)
  %tobool.not.i17 = icmp eq i32 %and.i16, 0
  br i1 %tobool.not.i17, label %ipa_endpoint_resume_one.exit.ipa_endpoint_resume_one.exit31_crit_edge, label %if.end.i20

ipa_endpoint_resume_one.exit.ipa_endpoint_resume_one.exit31_crit_edge: ; preds = %ipa_endpoint_resume_one.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipa_endpoint_resume_one.exit31

if.end.i20:                                       ; preds = %ipa_endpoint_resume_one.exit
  %toward_ipa.i18 = getelementptr inbounds %struct.ipa_endpoint, ptr %21, i32 0, i32 4
  %30 = ptrtoint ptr %toward_ipa.i18 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %toward_ipa.i18, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool5.not.i19 = icmp eq i8 %31, 0
  br i1 %tobool5.not.i19, label %if.then6.i22, label %if.end.i20.if.end7.i26_crit_edge

if.end.i20.if.end7.i26_crit_edge:                 ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i26

if.then6.i22:                                     ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #11
  %call.i21 = tail call fastcc zeroext i1 @ipa_endpoint_program_suspend(ptr noundef %21, i1 noundef zeroext false) #9
  br label %if.end7.i26

if.end7.i26:                                      ; preds = %if.then6.i22, %if.end.i20.if.end7.i26_crit_edge
  %channel_id.i23 = getelementptr inbounds %struct.ipa_endpoint, ptr %21, i32 0, i32 2
  %32 = ptrtoint ptr %channel_id.i23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %channel_id.i23, align 4
  %call8.i24 = tail call i32 @gsi_channel_resume(ptr noundef %23, i32 noundef %33) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i24)
  %tobool9.not.i25 = icmp eq i32 %call8.i24, 0
  br i1 %tobool9.not.i25, label %if.else.i29, label %do.end.i27

do.end.i27:                                       ; preds = %if.end7.i26
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %channel_id.i23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %channel_id.i23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i12, ptr noundef nonnull @.str.11, i32 noundef %call8.i24, i32 noundef %35) #12
  br label %ipa_endpoint_resume_one.exit31

if.else.i29:                                      ; preds = %if.end7.i26
  %36 = ptrtoint ptr %toward_ipa.i18 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %toward_ipa.i18, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool13.not.i28 = icmp eq i8 %37, 0
  br i1 %tobool13.not.i28, label %if.then14.i30, label %if.else.i29.ipa_endpoint_resume_one.exit31_crit_edge

if.else.i29.ipa_endpoint_resume_one.exit31_crit_edge: ; preds = %if.else.i29
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipa_endpoint_resume_one.exit31

if.then14.i30:                                    ; preds = %if.else.i29
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ipa_endpoint_replenish_enable(ptr noundef %21) #9
  br label %ipa_endpoint_resume_one.exit31

ipa_endpoint_resume_one.exit31:                   ; preds = %if.then14.i30, %if.else.i29.ipa_endpoint_resume_one.exit31_crit_edge, %do.end.i27, %ipa_endpoint_resume_one.exit.ipa_endpoint_resume_one.exit31_crit_edge
  %modem_netdev = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 38
  %38 = ptrtoint ptr %modem_netdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %modem_netdev, align 4
  %tobool3.not = icmp eq ptr %39, null
  br i1 %tobool3.not, label %ipa_endpoint_resume_one.exit31.if.end6_crit_edge, label %if.then4

ipa_endpoint_resume_one.exit31.if.end6_crit_edge: ; preds = %ipa_endpoint_resume_one.exit31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then4:                                         ; preds = %ipa_endpoint_resume_one.exit31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ipa_modem_resume(ptr noundef nonnull %39) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %ipa_endpoint_resume_one.exit31.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_modem_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_endpoint_setup(ptr noundef %ipa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %initialized1 = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 30
  %0 = ptrtoint ptr %initialized1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %initialized1, align 4
  %set_up = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 31
  %2 = ptrtoint ptr %set_up to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %set_up, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not7 = icmp eq i32 %1, 0
  br i1 %tobool.not7, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %ipa_endpoint_setup_one.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %initialized.08 = phi i32 [ %xor, %ipa_endpoint_setup_one.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %3 = tail call i32 @llvm.cttz.i32(i32 %initialized.08, i1 true) #9, !range !146
  %shl = shl nuw i32 1, %3
  %xor = xor i32 %shl, %initialized.08
  %arrayidx = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %channel_id2.i = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %3, i32 2
  %ee_id.i = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %3, i32 1
  %6 = ptrtoint ptr %ee_id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ee_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i, label %if.end.i, label %while.body.ipa_endpoint_setup_one.exit_crit_edge

while.body.ipa_endpoint_setup_one.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipa_endpoint_setup_one.exit

if.end.i:                                         ; preds = %while.body
  %8 = ptrtoint ptr %channel_id2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel_id2.i, align 4
  %call.i = tail call i32 @gsi_channel_trans_tre_max(ptr noundef %5, i32 noundef %9) #9
  %trans_tre_max.i = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %3, i32 6
  %10 = ptrtoint ptr %trans_tre_max.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call.i, ptr %trans_tre_max.i, align 4
  %toward_ipa.i = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %3, i32 4
  %11 = ptrtoint ptr %toward_ipa.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %toward_ipa.i, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.end24.i, label %if.end.i.if.then.i.i_crit_edge

if.end.i.if.then.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.end24.i:                                       ; preds = %if.end.i
  %replenish_flags.i = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %3, i32 9
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %replenish_flags.i) #9
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %replenish_flags.i) #9
  %replenish_saved.i = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %3, i32 11
  %13 = ptrtoint ptr %channel_id2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %channel_id2.i, align 4
  %call7.i = tail call i32 @gsi_channel_tre_max(ptr noundef %5, i32 noundef %14) #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %replenish_saved.i, i32 noundef 4) #9
  %15 = ptrtoint ptr %replenish_saved.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 %call7.i, ptr %replenish_saved.i, align 4
  %replenish_backlog.i = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %3, i32 12
  %call.i.i46.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %replenish_backlog.i, i32 noundef 4) #9
  %16 = ptrtoint ptr %replenish_backlog.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 0, ptr %replenish_backlog.i, align 4
  %replenish_work.i = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %3, i32 13
  tail call void @__init_work(ptr noundef %replenish_work.i, i32 noundef 0) #9
  %17 = ptrtoint ptr %replenish_work.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -64, ptr %replenish_work.i, align 4
  %lockdep_map.i = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %3, i32 13, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @ipa_endpoint_setup_one.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry15.i = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %3, i32 13, i32 0, i32 1
  %18 = ptrtoint ptr %entry15.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %entry15.i, ptr %entry15.i, align 4
  %prev.i.i = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %3, i32 13, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %entry15.i, ptr %prev.i.i, align 4
  %func.i = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %3, i32 13, i32 0, i32 2
  %20 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @ipa_endpoint_replenish_work, ptr %func.i, align 4
  %timer.i = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %3, i32 13, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.29, ptr noundef nonnull @ipa_endpoint_setup_one.__key.28) #9
  %21 = ptrtoint ptr %toward_ipa.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %.pr.i = load i8, ptr %toward_ipa.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %tobool.not.i.i = icmp eq i8 %.pr.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.end24.i.if.then.i.i_crit_edge

if.end24.i.if.then.i.i_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end24.i.if.then.i.i_crit_edge, %if.end.i.if.then.i.i_crit_edge
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %version.i.i = getelementptr inbounds %struct.ipa, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %version.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %25)
  %cmp.i.i = icmp ult i32 %25, 6
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.then.i.i.if.end2.i.i_crit_edge

if.then.i.i.if.end2.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2.i.i

if.then1.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ipa_endpoint_program_delay(ptr noundef %arrayidx, i1 noundef zeroext false) #9
  br label %if.end2.i.i

if.else.i.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call fastcc zeroext i1 @ipa_endpoint_program_suspend(ptr noundef %arrayidx, i1 noundef zeroext false) #9
  br label %if.end2.i.i

if.end2.i.i:                                      ; preds = %if.else.i.i, %if.then1.i.i, %if.then.i.i.if.end2.i.i_crit_edge
  %endpoint_id.i.i.i = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %3, i32 3
  %26 = ptrtoint ptr %endpoint_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %endpoint_id.i.i.i, align 4
  %data.i.i.i = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %3, i32 5
  %28 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i.i.i, align 4
  %checksum.i.i.i = getelementptr inbounds %struct.ipa_endpoint_config_data, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %checksum.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %checksum.i.i.i, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i.i.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i.i.i, label %if.end2.i.i.ipa_endpoint_init_cfg.exit.i.i_crit_edge, label %if.then.i.i.i

if.end2.i.i.ipa_endpoint_init_cfg.exit.i.i_crit_edge: ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipa_endpoint_init_cfg.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end2.i.i
  %32 = ptrtoint ptr %toward_ipa.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %toward_ipa.i, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool2.not.i.i.i = icmp eq i8 %33, 0
  br i1 %tobool2.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i.ipa_endpoint_init_cfg.exit.i.i_crit_edge

if.then.i.i.i.ipa_endpoint_init_cfg.exit.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipa_endpoint_init_cfg.exit.i.i

if.else.i.i.i:                                    ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx, align 4
  %version1.i.i.i = getelementptr inbounds %struct.ipa, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %version1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %version1.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %37)
  %cmp4.i.i.i = icmp ult i32 %37, 7
  %cond5.i.i.i = select i1 %cmp4.i.i.i, i32 67108864, i32 33554432
  br label %ipa_endpoint_init_cfg.exit.i.i

ipa_endpoint_init_cfg.exit.i.i:                   ; preds = %if.else.i.i.i, %if.then.i.i.i.ipa_endpoint_init_cfg.exit.i.i_crit_edge, %if.end2.i.i.ipa_endpoint_init_cfg.exit.i.i_crit_edge
  %enabled.1.i.i.i = phi i32 [ %cond5.i.i.i, %if.else.i.i.i ], [ 0, %if.end2.i.i.ipa_endpoint_init_cfg.exit.i.i_crit_edge ], [ 33554432, %if.then.i.i.i.ipa_endpoint_init_cfg.exit.i.i_crit_edge ]
  %val.1.i.i.i = phi i32 [ 0, %if.else.i.i.i ], [ 0, %if.end2.i.i.ipa_endpoint_init_cfg.exit.i.i_crit_edge ], [ 134217728, %if.then.i.i.i.ipa_endpoint_init_cfg.exit.i.i_crit_edge ]
  %mul.i.i.i = mul i32 %27, 112
  %add.i.i.i = add i32 %mul.i.i.i, 2056
  %or9.i.i.i = or i32 %val.1.i.i.i, %enabled.1.i.i.i
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx, align 4
  %reg_virt.i.i.i = getelementptr inbounds %struct.ipa, ptr %39, i32 0, i32 14
  %40 = ptrtoint ptr %reg_virt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg_virt.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %41, i32 %add.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %or9.i.i.i) #9, !srcloc !145
  %42 = ptrtoint ptr %toward_ipa.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %toward_ipa.i, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i24.i.i = icmp eq i8 %43, 0
  br i1 %tobool.not.i24.i.i, label %ipa_endpoint_init_cfg.exit.i.i.ipa_endpoint_init_nat.exit.i.i_crit_edge, label %if.end.i.i.i

ipa_endpoint_init_cfg.exit.i.i.ipa_endpoint_init_nat.exit.i.i_crit_edge: ; preds = %ipa_endpoint_init_cfg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipa_endpoint_init_nat.exit.i.i

if.end.i.i.i:                                     ; preds = %ipa_endpoint_init_cfg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %endpoint_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %endpoint_id.i.i.i, align 4
  %mul.i26.i.i = mul i32 %45, 112
  %add.i27.i.i = add i32 %mul.i26.i.i, 2060
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx, align 4
  %reg_virt.i28.i.i = getelementptr inbounds %struct.ipa, ptr %47, i32 0, i32 14
  %48 = ptrtoint ptr %reg_virt.i28.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg_virt.i28.i.i, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %49, i32 %add.i27.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i, i32 0) #9, !srcloc !145
  br label %ipa_endpoint_init_nat.exit.i.i

ipa_endpoint_init_nat.exit.i.i:                   ; preds = %if.end.i.i.i, %ipa_endpoint_init_cfg.exit.i.i.ipa_endpoint_init_nat.exit.i.i_crit_edge
  %50 = ptrtoint ptr %endpoint_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %endpoint_id.i.i.i, align 4
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx, align 4
  %54 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i.i.i, align 4
  %qmap.i.i.i = getelementptr inbounds %struct.ipa_endpoint_config_data, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %qmap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %qmap.i.i.i, align 1, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i32.i.i = icmp eq i8 %57, 0
  br i1 %tobool.not.i32.i.i, label %ipa_endpoint_init_nat.exit.i.i.ipa_endpoint_init_hdr.exit.i.i_crit_edge, label %if.then.i33.i.i

ipa_endpoint_init_nat.exit.i.i.ipa_endpoint_init_hdr.exit.i.i_crit_edge: ; preds = %ipa_endpoint_init_nat.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipa_endpoint_init_hdr.exit.i.i

if.then.i33.i.i:                                  ; preds = %ipa_endpoint_init_nat.exit.i.i
  %checksum.i.i.i.i = getelementptr inbounds %struct.ipa_endpoint_config_data, ptr %55, i32 0, i32 1
  %58 = ptrtoint ptr %checksum.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %checksum.i.i.i.i, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i31.i.i.i = icmp eq i8 %59, 0
  br i1 %tobool.not.i31.i.i.i, label %if.then.i33.i.i.ipa_qmap_header_size.exit.i.i.i_crit_edge, label %if.end.i.i.i.i

if.then.i33.i.i.ipa_qmap_header_size.exit.i.i.i_crit_edge: ; preds = %if.then.i33.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipa_qmap_header_size.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i33.i.i
  %version2.i.i.i = getelementptr inbounds %struct.ipa, ptr %53, i32 0, i32 1
  %60 = ptrtoint ptr %version2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %version2.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %61)
  %cmp.i.i.i.i = icmp ult i32 %61, 7
  br i1 %cmp.i.i.i.i, label %if.then1.i.i.i.i, label %if.end.i.i.i.i.ipa_qmap_header_size.exit.i.i.i_crit_edge

if.end.i.i.i.i.ipa_qmap_header_size.exit.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipa_qmap_header_size.exit.i.i.i

if.then1.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %toward_ipa.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %toward_ipa.i, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool2.not.i.i.i.i = icmp eq i8 %63, 0
  %spec.select.i.i.i.i = select i1 %tobool2.not.i.i.i.i, i32 4, i32 8
  br label %ipa_qmap_header_size.exit.i.i.i

ipa_qmap_header_size.exit.i.i.i:                  ; preds = %if.then1.i.i.i.i, %if.end.i.i.i.i.ipa_qmap_header_size.exit.i.i.i_crit_edge, %if.then.i33.i.i.ipa_qmap_header_size.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ 4, %if.then.i33.i.i.ipa_qmap_header_size.exit.i.i.i_crit_edge ], [ %spec.select.i.i.i.i, %if.then1.i.i.i.i ], [ 8, %if.end.i.i.i.i.ipa_qmap_header_size.exit.i.i.i_crit_edge ]
  %64 = ptrtoint ptr %toward_ipa.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %toward_ipa.i, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool4.not.i.i.i = icmp eq i8 %65, 0
  %or13.i.i.i = or i32 %retval.0.i.i.i.i, 2621568
  %val.0.i.i.i = select i1 %tobool4.not.i.i.i, i32 %or13.i.i.i, i32 %retval.0.i.i.i.i
  %or15.i.i.i = or i32 %val.0.i.i.i, 64
  br label %ipa_endpoint_init_hdr.exit.i.i

ipa_endpoint_init_hdr.exit.i.i:                   ; preds = %ipa_qmap_header_size.exit.i.i.i, %ipa_endpoint_init_nat.exit.i.i.ipa_endpoint_init_hdr.exit.i.i_crit_edge
  %val.1.i35.i.i = phi i32 [ %or15.i.i.i, %ipa_qmap_header_size.exit.i.i.i ], [ 0, %ipa_endpoint_init_nat.exit.i.i.ipa_endpoint_init_hdr.exit.i.i_crit_edge ]
  %mul.i36.i.i = mul i32 %51, 112
  %add.i37.i.i = add i32 %mul.i36.i.i, 2064
  %reg_virt.i38.i.i = getelementptr inbounds %struct.ipa, ptr %53, i32 0, i32 14
  %66 = ptrtoint ptr %reg_virt.i38.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg_virt.i38.i.i, align 4
  %add.ptr.i39.i.i = getelementptr i8, ptr %67, i32 %add.i37.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %68 = tail call i32 @llvm.bswap.i32(i32 %val.1.i35.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39.i.i, i32 %68) #9, !srcloc !145
  %69 = ptrtoint ptr %endpoint_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %endpoint_id.i.i.i, align 4
  %71 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data.i.i.i, align 4
  %73 = getelementptr inbounds %struct.ipa_endpoint_config_data, ptr %72, i32 0, i32 7
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 4
  %76 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx, align 4
  %qmap.i42.i.i = getelementptr inbounds %struct.ipa_endpoint_config_data, ptr %72, i32 0, i32 2
  %78 = ptrtoint ptr %qmap.i42.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %qmap.i42.i.i, align 1, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool.not.i43.i.i = icmp eq i8 %79, 0
  %80 = ptrtoint ptr %toward_ipa.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %.pr.i.i = load i8, ptr %toward_ipa.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i.i)
  %tobool4.not.i45.i.i = icmp eq i8 %.pr.i.i, 0
  %spec.select.i.i.i = select i1 %tobool4.not.i45.i.i, i32 11, i32 1
  %val.0.i46.i.i = select i1 %tobool.not.i43.i.i, i32 1, i32 %spec.select.i.i.i
  %81 = shl i32 %75, 10
  %82 = and i32 %81, 15360
  %or10.i.i.i = select i1 %tobool4.not.i45.i.i, i32 %82, i32 0
  %val.1.i48.i.i = or i32 %val.0.i46.i.i, %or10.i.i.i
  %mul.i49.i.i = mul i32 %70, 112
  %add.i50.i.i = add i32 %mul.i49.i.i, 2068
  %reg_virt.i51.i.i = getelementptr inbounds %struct.ipa, ptr %77, i32 0, i32 14
  %83 = ptrtoint ptr %reg_virt.i51.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %reg_virt.i51.i.i, align 4
  %add.ptr.i52.i.i = getelementptr i8, ptr %84, i32 %add.i50.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %85 = tail call i32 @llvm.bswap.i32(i32 %val.1.i48.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52.i.i, i32 %85) #9, !srcloc !145
  %86 = ptrtoint ptr %toward_ipa.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %toward_ipa.i, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool.not.i54.i.i = icmp eq i8 %87, 0
  br i1 %tobool.not.i54.i.i, label %ipa_endpoint_init_hdr_metadata_mask.exit.i.i, label %ipa_endpoint_init_hdr.exit.i.i.if.end.i70.i.i_crit_edge

ipa_endpoint_init_hdr.exit.i.i.if.end.i70.i.i_crit_edge: ; preds = %ipa_endpoint_init_hdr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i70.i.i

ipa_endpoint_init_hdr_metadata_mask.exit.i.i:     ; preds = %ipa_endpoint_init_hdr.exit.i.i
  %88 = ptrtoint ptr %endpoint_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %endpoint_id.i.i.i, align 4
  %mul.i55.i.i = mul i32 %89, 112
  %add.i56.i.i = add i32 %mul.i55.i.i, 2072
  %90 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %data.i.i.i, align 4
  %qmap.i58.i.i = getelementptr inbounds %struct.ipa_endpoint_config_data, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %qmap.i58.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %qmap.i58.i.i, align 1, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool2.not.i59.i.i = icmp eq i8 %93, 0
  %spec.select.i60.i.i = select i1 %tobool2.not.i59.i.i, i32 0, i32 -16777216
  %94 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx, align 4
  %reg_virt.i61.i.i = getelementptr inbounds %struct.ipa, ptr %95, i32 0, i32 14
  %96 = ptrtoint ptr %reg_virt.i61.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %reg_virt.i61.i.i, align 4
  %add.ptr.i62.i.i = getelementptr i8, ptr %97, i32 %add.i56.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62.i.i, i32 %spec.select.i60.i.i) #9, !srcloc !145
  %98 = ptrtoint ptr %toward_ipa.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %.pr138.i.i = load i8, ptr %toward_ipa.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr138.i.i)
  %tobool.not.i68.i.i = icmp eq i8 %.pr138.i.i, 0
  br i1 %tobool.not.i68.i.i, label %ipa_endpoint_init_hdr_metadata_mask.exit.i.i.ipa_endpoint_init_mode.exit.i.i_crit_edge, label %ipa_endpoint_init_hdr_metadata_mask.exit.i.i.if.end.i70.i.i_crit_edge

ipa_endpoint_init_hdr_metadata_mask.exit.i.i.if.end.i70.i.i_crit_edge: ; preds = %ipa_endpoint_init_hdr_metadata_mask.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i70.i.i

ipa_endpoint_init_hdr_metadata_mask.exit.i.i.ipa_endpoint_init_mode.exit.i.i_crit_edge: ; preds = %ipa_endpoint_init_hdr_metadata_mask.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipa_endpoint_init_mode.exit.i.i

if.end.i70.i.i:                                   ; preds = %ipa_endpoint_init_hdr_metadata_mask.exit.i.i.if.end.i70.i.i_crit_edge, %ipa_endpoint_init_hdr.exit.i.i.if.end.i70.i.i_crit_edge
  %99 = ptrtoint ptr %endpoint_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %add.i66142.in.in.i.i = load i32, ptr %endpoint_id.i.i.i, align 4
  %add.i66142.in.i.i = mul i32 %add.i66142.in.in.i.i, 112
  %add.i66142.i.i = add i32 %add.i66142.in.i.i, 2080
  %100 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %data.i.i.i, align 4
  %dma_mode.i.i.i = getelementptr inbounds %struct.ipa_endpoint_config_data, ptr %101, i32 0, i32 5
  %102 = ptrtoint ptr %dma_mode.i.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %dma_mode.i.i.i, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool1.not.i.i.i = icmp eq i8 %103, 0
  br i1 %tobool1.not.i.i.i, label %if.end.i70.i.i.if.end7.i.i.i_crit_edge, label %u32_encode_bits.exit.i75.i.i

if.end.i70.i.i.if.end7.i.i.i_crit_edge:           ; preds = %if.end.i70.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i.i

u32_encode_bits.exit.i75.i.i:                     ; preds = %if.end.i70.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %104 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx, align 4
  %dma_endpoint.i.i.i = getelementptr inbounds %struct.ipa_endpoint_config_data, ptr %101, i32 0, i32 6
  %106 = ptrtoint ptr %dma_endpoint.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %dma_endpoint.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.ipa, ptr %105, i32 0, i32 35, i32 %107
  %108 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx.i.i.i, align 4
  %endpoint_id4.i.i.i = getelementptr inbounds %struct.ipa_endpoint, ptr %109, i32 0, i32 3
  %110 = ptrtoint ptr %endpoint_id4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %endpoint_id4.i.i.i, align 4
  %112 = shl i32 %111, 4
  %113 = and i32 %112, 496
  %or.i.i.i = or i32 %113, 3
  br label %if.end7.i.i.i

if.end7.i.i.i:                                    ; preds = %u32_encode_bits.exit.i75.i.i, %if.end.i70.i.i.if.end7.i.i.i_crit_edge
  %val.0.i76.i.i = phi i32 [ %or.i.i.i, %u32_encode_bits.exit.i75.i.i ], [ 0, %if.end.i70.i.i.if.end7.i.i.i_crit_edge ]
  %114 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx, align 4
  %reg_virt.i77.i.i = getelementptr inbounds %struct.ipa, ptr %115, i32 0, i32 14
  %116 = ptrtoint ptr %reg_virt.i77.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %reg_virt.i77.i.i, align 4
  %add.ptr.i78.i.i = getelementptr i8, ptr %117, i32 %add.i66142.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %118 = tail call i32 @llvm.bswap.i32(i32 %val.0.i76.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78.i.i, i32 %118) #9, !srcloc !145
  br label %ipa_endpoint_init_mode.exit.i.i

ipa_endpoint_init_mode.exit.i.i:                  ; preds = %if.end7.i.i.i, %ipa_endpoint_init_hdr_metadata_mask.exit.i.i.ipa_endpoint_init_mode.exit.i.i_crit_edge
  %119 = ptrtoint ptr %endpoint_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %endpoint_id.i.i.i, align 4
  %121 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx, align 4
  %version1.i80.i.i = getelementptr inbounds %struct.ipa, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %version1.i80.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %version1.i80.i.i, align 128
  %125 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %data.i.i.i, align 4
  %aggregation.i.i.i = getelementptr inbounds %struct.ipa_endpoint_config_data, ptr %126, i32 0, i32 3
  %127 = ptrtoint ptr %aggregation.i.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %aggregation.i.i.i, align 2, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool.not.i82.i.i = icmp eq i8 %128, 0
  br i1 %tobool.not.i82.i.i, label %ipa_endpoint_init_mode.exit.i.i.ipa_endpoint_init_aggr.exit.i.i_crit_edge, label %if.then.i85.i.i

ipa_endpoint_init_mode.exit.i.i.ipa_endpoint_init_aggr.exit.i.i_crit_edge: ; preds = %ipa_endpoint_init_mode.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipa_endpoint_init_aggr.exit.i.i

if.then.i85.i.i:                                  ; preds = %ipa_endpoint_init_mode.exit.i.i
  %129 = ptrtoint ptr %toward_ipa.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %toward_ipa.i, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool2.not.i84.i.i = icmp eq i8 %130, 0
  br i1 %tobool2.not.i84.i.i, label %if.then3.i.i.i, label %if.then.i85.i.i.ipa_endpoint_init_aggr.exit.i.i_crit_edge

if.then.i85.i.i.ipa_endpoint_init_aggr.exit.i.i_crit_edge: ; preds = %if.then.i85.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipa_endpoint_init_aggr.exit.i.i

if.then3.i.i.i:                                   ; preds = %if.then.i85.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %124)
  %cmp.i.i86.i.i = icmp ult i32 %124, 7
  %aggr_close_eof.i.i.i = getelementptr inbounds %struct.ipa_endpoint_config_data, ptr %126, i32 0, i32 7, i32 0, i32 1
  %131 = ptrtoint ptr %aggr_close_eof.i.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %aggr_close_eof.i.i.i, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool12.not.i.i.i = icmp eq i8 %132, 0
  %133 = select i1 %tobool12.not.i.i.i, i32 1233, i32 2098385
  %134 = select i1 %tobool12.not.i.i.i, i32 20689, i32 8409297
  %or15.i87.i.i = select i1 %cmp.i.i86.i.i, i32 %133, i32 %134
  br label %ipa_endpoint_init_aggr.exit.i.i

ipa_endpoint_init_aggr.exit.i.i:                  ; preds = %if.then3.i.i.i, %if.then.i85.i.i.ipa_endpoint_init_aggr.exit.i.i_crit_edge, %ipa_endpoint_init_mode.exit.i.i.ipa_endpoint_init_aggr.exit.i.i_crit_edge
  %val.0.i88.i.i = phi i32 [ %or15.i87.i.i, %if.then3.i.i.i ], [ 26, %if.then.i85.i.i.ipa_endpoint_init_aggr.exit.i.i_crit_edge ], [ 0, %ipa_endpoint_init_mode.exit.i.i.ipa_endpoint_init_aggr.exit.i.i_crit_edge ]
  %mul.i89.i.i = mul i32 %120, 112
  %add.i90.i.i = add i32 %mul.i89.i.i, 2084
  %reg_virt.i91.i.i = getelementptr inbounds %struct.ipa, ptr %122, i32 0, i32 14
  %135 = ptrtoint ptr %reg_virt.i91.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %reg_virt.i91.i.i, align 4
  %add.ptr.i92.i.i = getelementptr i8, ptr %136, i32 %add.i90.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %137 = tail call i32 @llvm.bswap.i32(i32 %val.0.i88.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92.i.i, i32 %137) #9, !srcloc !145
  %138 = ptrtoint ptr %toward_ipa.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %toward_ipa.i, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool4.not.i.i = icmp eq i8 %139, 0
  br i1 %tobool4.not.i.i, label %if.end6.i.i, label %ipa_endpoint_init_aggr.exit.i.i.if.end.i100.i.i_crit_edge

ipa_endpoint_init_aggr.exit.i.i.if.end.i100.i.i_crit_edge: ; preds = %ipa_endpoint_init_aggr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i100.i.i

if.end6.i.i:                                      ; preds = %ipa_endpoint_init_aggr.exit.i.i
  %140 = ptrtoint ptr %endpoint_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %endpoint_id.i.i.i, align 4
  %mul.i.i.i.i = mul i32 %141, 112
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 2092
  %142 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %arrayidx, align 4
  %reg_virt.i.i.i.i = getelementptr inbounds %struct.ipa, ptr %143, i32 0, i32 14
  %144 = ptrtoint ptr %reg_virt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %reg_virt.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %145, i32 %add.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 0) #9, !srcloc !145
  %146 = ptrtoint ptr %toward_ipa.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %.pr143.i.i = load i8, ptr %toward_ipa.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr143.i.i)
  %tobool.not.i94.i.i = icmp eq i8 %.pr143.i.i, 0
  br i1 %tobool.not.i94.i.i, label %if.end6.i.i.ipa_endpoint_init_deaggr.exit.i.i_crit_edge, label %if.end6.i.i.if.end.i100.i.i_crit_edge

if.end6.i.i.if.end.i100.i.i_crit_edge:            ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i100.i.i

if.end6.i.i.ipa_endpoint_init_deaggr.exit.i.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipa_endpoint_init_deaggr.exit.i.i

if.end.i100.i.i:                                  ; preds = %if.end6.i.i.if.end.i100.i.i_crit_edge, %ipa_endpoint_init_aggr.exit.i.i.if.end.i100.i.i_crit_edge
  %147 = ptrtoint ptr %endpoint_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %endpoint_id.i.i.i, align 4
  %mul.i96.i.i = mul i32 %148, 112
  %add.i97.i.i = add i32 %mul.i96.i.i, 2100
  %149 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arrayidx, align 4
  %reg_virt.i98.i.i = getelementptr inbounds %struct.ipa, ptr %150, i32 0, i32 14
  %151 = ptrtoint ptr %reg_virt.i98.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %reg_virt.i98.i.i, align 4
  %add.ptr.i99.i.i = getelementptr i8, ptr %152, i32 %add.i97.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99.i.i, i32 0) #9, !srcloc !145
  br label %ipa_endpoint_init_deaggr.exit.i.i

ipa_endpoint_init_deaggr.exit.i.i:                ; preds = %if.end.i100.i.i, %if.end6.i.i.ipa_endpoint_init_deaggr.exit.i.i_crit_edge
  %153 = ptrtoint ptr %endpoint_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %endpoint_id.i.i.i, align 4
  %155 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %arrayidx, align 4
  %version.i.i.i = getelementptr inbounds %struct.ipa, ptr %156, i32 0, i32 1
  %157 = ptrtoint ptr %version.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %version.i.i.i, align 128
  %159 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %data.i.i.i, align 4
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %160, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %158)
  %163 = icmp ult i32 %158, 9
  br i1 %163, label %switch.lookup, label %ipa_endpoint_init_deaggr.exit.i.i.ipa_endpoint_init_rsrc_grp.exit.i.i_crit_edge

ipa_endpoint_init_deaggr.exit.i.i.ipa_endpoint_init_rsrc_grp.exit.i.i_crit_edge: ; preds = %ipa_endpoint_init_deaggr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipa_endpoint_init_rsrc_grp.exit.i.i

switch.lookup:                                    ; preds = %ipa_endpoint_init_deaggr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.ipa_endpoint_setup, i32 0, i32 %158
  %164 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %164)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %ipa_endpoint_init_rsrc_grp.exit.i.i

ipa_endpoint_init_rsrc_grp.exit.i.i:              ; preds = %switch.lookup, %ipa_endpoint_init_deaggr.exit.i.i.ipa_endpoint_init_rsrc_grp.exit.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 3, %ipa_endpoint_init_deaggr.exit.i.i.ipa_endpoint_init_rsrc_grp.exit.i.i_crit_edge ]
  %mul.i104.i.i = mul i32 %154, 112
  %add.i105.i.i = add i32 %mul.i104.i.i, 2104
  %165 = and i32 %.sink.i.i.i.i, %162
  %reg_virt.i106.i.i = getelementptr inbounds %struct.ipa, ptr %156, i32 0, i32 14
  %166 = ptrtoint ptr %reg_virt.i106.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %reg_virt.i106.i.i, align 4
  %add.ptr.i107.i.i = getelementptr i8, ptr %167, i32 %add.i105.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %168 = shl nuw nsw i32 %165, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107.i.i, i32 %168) #9, !srcloc !145
  %169 = ptrtoint ptr %toward_ipa.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %toward_ipa.i, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool.not.i109.i.i = icmp eq i8 %170, 0
  br i1 %tobool.not.i109.i.i, label %ipa_endpoint_init_rsrc_grp.exit.i.i.ipa_endpoint_init_seq.exit.i.i_crit_edge, label %if.end.i117.i.i

ipa_endpoint_init_rsrc_grp.exit.i.i.ipa_endpoint_init_seq.exit.i.i_crit_edge: ; preds = %ipa_endpoint_init_rsrc_grp.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipa_endpoint_init_seq.exit.i.i

if.end.i117.i.i:                                  ; preds = %ipa_endpoint_init_rsrc_grp.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %171 = ptrtoint ptr %endpoint_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %endpoint_id.i.i.i, align 4
  %mul.i111.i.i = mul i32 %172, 112
  %add.i112.i.i = add i32 %mul.i111.i.i, 2108
  %173 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %data.i.i.i, align 4
  %seq_rep_type.i.i.i = getelementptr inbounds %struct.ipa_endpoint_config_data, ptr %174, i32 0, i32 7, i32 0, i32 1
  %175 = ptrtoint ptr %seq_rep_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %seq_rep_type.i.i.i, align 4
  %177 = getelementptr inbounds %struct.ipa_endpoint_config_data, ptr %174, i32 0, i32 7
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %177, align 4
  %180 = and i32 %179, 255
  %181 = shl i32 %176, 8
  %182 = and i32 %181, 65280
  %or3.i.i.i = or i32 %182, %180
  %183 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %arrayidx, align 4
  %reg_virt.i120.i.i = getelementptr inbounds %struct.ipa, ptr %184, i32 0, i32 14
  %185 = ptrtoint ptr %reg_virt.i120.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %reg_virt.i120.i.i, align 4
  %add.ptr.i121.i.i = getelementptr i8, ptr %186, i32 %add.i112.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %187 = tail call i32 @llvm.bswap.i32(i32 %or3.i.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i121.i.i, i32 %187) #9, !srcloc !145
  br label %ipa_endpoint_init_seq.exit.i.i

ipa_endpoint_init_seq.exit.i.i:                   ; preds = %if.end.i117.i.i, %ipa_endpoint_init_rsrc_grp.exit.i.i.ipa_endpoint_init_seq.exit.i.i_crit_edge
  %188 = ptrtoint ptr %endpoint_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %endpoint_id.i.i.i, align 4
  %190 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %arrayidx, align 4
  %192 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %data.i.i.i, align 4
  %status_enable.i.i.i = getelementptr inbounds %struct.ipa_endpoint_config_data, ptr %193, i32 0, i32 4
  %194 = ptrtoint ptr %status_enable.i.i.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %status_enable.i.i.i, align 1, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %195)
  %tobool.not.i124.i.i = icmp eq i8 %195, 0
  br i1 %tobool.not.i124.i.i, label %ipa_endpoint_init_seq.exit.i.i.ipa_endpoint_program.exit.i_crit_edge, label %if.then.i126.i.i

ipa_endpoint_init_seq.exit.i.i.ipa_endpoint_program.exit.i_crit_edge: ; preds = %ipa_endpoint_init_seq.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipa_endpoint_program.exit.i

if.then.i126.i.i:                                 ; preds = %ipa_endpoint_init_seq.exit.i.i
  %196 = ptrtoint ptr %toward_ipa.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %toward_ipa.i, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %tobool3.not.i.i.i = icmp eq i8 %197, 0
  br i1 %tobool3.not.i.i.i, label %if.then.i126.i.i.ipa_endpoint_program.exit.i_crit_edge, label %u32_encode_bits.exit.i132.i.i

if.then.i126.i.i.ipa_endpoint_program.exit.i_crit_edge: ; preds = %if.then.i126.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipa_endpoint_program.exit.i

u32_encode_bits.exit.i132.i.i:                    ; preds = %if.then.i126.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %status_endpoint.i.i.i = getelementptr inbounds %struct.ipa_endpoint_config_data, ptr %193, i32 0, i32 7, i32 0, i32 2
  %198 = ptrtoint ptr %status_endpoint.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %status_endpoint.i.i.i, align 4
  %arrayidx.i127.i.i = getelementptr %struct.ipa, ptr %191, i32 0, i32 35, i32 %199
  %200 = ptrtoint ptr %arrayidx.i127.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %arrayidx.i127.i.i, align 4
  %endpoint_id6.i.i.i = getelementptr inbounds %struct.ipa_endpoint, ptr %201, i32 0, i32 3
  %202 = ptrtoint ptr %endpoint_id6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %endpoint_id6.i.i.i, align 4
  %204 = shl i32 %203, 1
  %205 = and i32 %204, 62
  %or7.i.i.i = or i32 %205, 1
  br label %ipa_endpoint_program.exit.i

ipa_endpoint_program.exit.i:                      ; preds = %u32_encode_bits.exit.i132.i.i, %if.then.i126.i.i.ipa_endpoint_program.exit.i_crit_edge, %ipa_endpoint_init_seq.exit.i.i.ipa_endpoint_program.exit.i_crit_edge
  %val.0.i133.i.i = phi i32 [ %or7.i.i.i, %u32_encode_bits.exit.i132.i.i ], [ 1, %if.then.i126.i.i.ipa_endpoint_program.exit.i_crit_edge ], [ 0, %ipa_endpoint_init_seq.exit.i.i.ipa_endpoint_program.exit.i_crit_edge ]
  %mul.i134.i.i = mul i32 %189, 112
  %add.i135.i.i = add i32 %mul.i134.i.i, 2112
  %reg_virt.i136.i.i = getelementptr inbounds %struct.ipa, ptr %191, i32 0, i32 14
  %206 = ptrtoint ptr %reg_virt.i136.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %reg_virt.i136.i.i, align 4
  %add.ptr.i137.i.i = getelementptr i8, ptr %207, i32 %add.i135.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %208 = tail call i32 @llvm.bswap.i32(i32 %val.0.i133.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i137.i.i, i32 %208) #9, !srcloc !145
  %209 = ptrtoint ptr %endpoint_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %endpoint_id.i.i.i, align 4
  %shl.i = shl nuw i32 1, %210
  %211 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %arrayidx, align 4
  %set_up.i = getelementptr inbounds %struct.ipa, ptr %212, i32 0, i32 31
  %213 = ptrtoint ptr %set_up.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %set_up.i, align 16
  %or.i = or i32 %214, %shl.i
  store i32 %or.i, ptr %set_up.i, align 16
  br label %ipa_endpoint_setup_one.exit

ipa_endpoint_setup_one.exit:                      ; preds = %ipa_endpoint_program.exit.i, %while.body.ipa_endpoint_setup_one.exit_crit_edge
  %tobool.not = icmp eq i32 %xor, 0
  br i1 %tobool.not, label %ipa_endpoint_setup_one.exit.while.end_crit_edge, label %ipa_endpoint_setup_one.exit.while.body_crit_edge

ipa_endpoint_setup_one.exit.while.body_crit_edge: ; preds = %ipa_endpoint_setup_one.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

ipa_endpoint_setup_one.exit.while.end_crit_edge:  ; preds = %ipa_endpoint_setup_one.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %ipa_endpoint_setup_one.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_endpoint_teardown(ptr noundef %ipa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %set_up1 = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 31
  %0 = ptrtoint ptr %set_up1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %set_up1, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not8 = icmp eq i32 %1, 0
  br i1 %tobool.not8, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %ipa_endpoint_teardown_one.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %set_up.09 = phi i32 [ %xor, %ipa_endpoint_teardown_one.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %2 = tail call i32 @llvm.ctlz.i32(i32 %set_up.09, i1 true) #9, !range !146
  %sub.i = xor i32 %2, 31
  %shl = shl nuw i32 1, %sub.i
  %xor = xor i32 %shl, %set_up.09
  %arrayidx = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %sub.i
  %endpoint_id.i = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %sub.i, i32 3
  %3 = ptrtoint ptr %endpoint_id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %endpoint_id.i, align 4
  %shl.i = shl nuw i32 1, %4
  %neg.i = xor i32 %shl.i, -1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %set_up.i = getelementptr inbounds %struct.ipa, ptr %6, i32 0, i32 31
  %7 = ptrtoint ptr %set_up.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %set_up.i, align 16
  %and.i = and i32 %8, %neg.i
  store i32 %and.i, ptr %set_up.i, align 16
  %toward_ipa.i = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %sub.i, i32 4
  %9 = ptrtoint ptr %toward_ipa.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %toward_ipa.i, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.then.i, label %while.body.if.end.i_crit_edge

while.body.if.end.i_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %replenish_work.i = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %sub.i, i32 13
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %replenish_work.i) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.if.end.i_crit_edge
  %channel_id1.i.i = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %sub.i, i32 2
  %11 = ptrtoint ptr %channel_id1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %channel_id1.i.i, align 4
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %version.i.i = getelementptr inbounds %struct.ipa, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %version.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %cmp.i.i = icmp ult i32 %16, 4
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end.i.if.end.thread.i.i_crit_edge

if.end.i.if.end.thread.i.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %17 = ptrtoint ptr %toward_ipa.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %toward_ipa.i, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.if.end.thread.i.i_crit_edge

land.lhs.true.i.i.if.end.thread.i.i_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread.i.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %data.i.i = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %sub.i, i32 5
  %19 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i, align 4
  %aggregation.i.i = getelementptr inbounds %struct.ipa_endpoint_config_data, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %aggregation.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %aggregation.i.i, align 2, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool3.not.i.i = icmp eq i8 %22, 0
  br i1 %tobool3.not.i.i, label %land.rhs.i.i.if.end.thread.i.i_crit_edge, label %land.lhs.true5.i.i

land.rhs.i.i.if.end.thread.i.i_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread.i.i

land.lhs.true5.i.i:                               ; preds = %land.rhs.i.i
  %23 = ptrtoint ptr %endpoint_id.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %endpoint_id.i, align 4
  %shl.i.i.i = shl nuw i32 1, %24
  %available.i.i.i = getelementptr inbounds %struct.ipa, ptr %14, i32 0, i32 28
  %25 = ptrtoint ptr %available.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %available.i.i.i, align 4
  %and.i.i.i = and i32 %26, %shl.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %land.lhs.true5.i.i.ipa_endpoint_aggr_active.exit.i.i_crit_edge, !prof !141

land.lhs.true5.i.i.ipa_endpoint_aggr_active.exit.i.i_crit_edge: ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipa_endpoint_aggr_active.exit.i.i

do.end.i.i.i:                                     ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 289, i32 noundef 9, ptr noundef null) #9
  br label %ipa_endpoint_aggr_active.exit.i.i

ipa_endpoint_aggr_active.exit.i.i:                ; preds = %do.end.i.i.i, %land.lhs.true5.i.i.ipa_endpoint_aggr_active.exit.i.i_crit_edge
  %27 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %version.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %28)
  %cmp.i.i.i.i = icmp ult i32 %28, 4
  %..i.i.i.i = select i1 %cmp.i.i.i.i, i32 268, i32 180
  %reg_virt.i.i.i = getelementptr inbounds %struct.ipa, ptr %14, i32 0, i32 14
  %29 = ptrtoint ptr %reg_virt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg_virt.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %30, i32 %..i.i.i.i
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !142
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !143
  %and23.i.i.i = and i32 %32, %shl.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.i.i)
  %tobool24.i.not.i.i = icmp eq i32 %and23.i.i.i, 0
  br i1 %tobool24.i.not.i.i, label %ipa_endpoint_aggr_active.exit.i.i.if.end.thread.i.i_crit_edge, label %if.then.i.i

ipa_endpoint_aggr_active.exit.i.i.if.end.thread.i.i_crit_edge: ; preds = %ipa_endpoint_aggr_active.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread.i.i

if.then.i.i:                                      ; preds = %ipa_endpoint_aggr_active.exit.i.i
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx, align 4
  %pdev.i.i.i = getelementptr inbounds %struct.ipa, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev.i.i.i, align 4
  %dev1.i.i.i = getelementptr inbounds %struct.platform_device, ptr %36, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %37 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3520, i32 noundef 1) #13
  %tobool.not.i22.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i22.i.i, label %if.then.i.i.do.end.i.i_crit_edge, label %if.end.i.i.i

if.then.i.i.do.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  %call.i.i.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call7.i.i.i.i.i) #9
  br i1 %call.i.i.i.i, label %land.rhs.i.i.i.i, label %dma_map_single_attrs.exit.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %if.end.i.i.i
  %.b1.i.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs.i.i.i.i.dma_map_single_attrs.exit.thread.i.i.i_crit_edge, label %if.then.i.i.i.i, !prof !140

land.rhs.i.i.i.i.dma_map_single_attrs.exit.thread.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.thread.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i.i = tail call ptr @dev_driver_string(ptr noundef %dev1.i.i.i) #9
  %init_name.i.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %36, i32 0, i32 3, i32 3
  %38 = ptrtoint ptr %init_name.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %init_name.i.i.i.i.i, align 8
  %tobool.not.i.i.i.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i.i.i.dev_name.exit.i.i.i.i_crit_edge

if.then.i.i.i.i.dev_name.exit.i.i.i.i_crit_edge:  ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %dev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev1.i.i.i, align 4
  br label %dev_name.exit.i.i.i.i

dev_name.exit.i.i.i.i:                            ; preds = %if.end.i.i.i.i.i, %if.then.i.i.i.i.dev_name.exit.i.i.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi ptr [ %41, %if.end.i.i.i.i.i ], [ %39, %if.then.i.i.i.i.dev_name.exit.i.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef %call16.i.i.i.i, ptr noundef %retval.0.i.i.i.i.i) #9
  br label %dma_map_single_attrs.exit.thread.i.i.i

dma_map_single_attrs.exit.thread.i.i.i:           ; preds = %dev_name.exit.i.i.i.i, %land.rhs.i.i.i.i.dma_map_single_attrs.exit.thread.i.i.i_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev1.i.i.i, i32 noundef -1) #9
  br label %if.end.thread31.i.i

dma_map_single_attrs.exit.i.i.i:                  ; preds = %if.end.i.i.i
  tail call void @debug_dma_map_single(ptr noundef %dev1.i.i.i, ptr noundef nonnull %call7.i.i.i.i.i, i32 noundef 1) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %42 = load ptr, ptr @mem_map, align 4
  %43 = ptrtoint ptr %call7.i.i.i.i.i to i32
  %sub.i.i.i.i = add i32 %43, 1073741824
  %shr.i.i.i.i = lshr i32 %sub.i.i.i.i, 12
  %add.ptr.i.i.i.i = getelementptr %struct.page, ptr %42, i32 %shr.i.i.i.i
  %and.i.i.i.i = and i32 %43, 4088
  %call41.i.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev1.i.i.i, ptr noundef %add.ptr.i.i.i.i, i32 noundef %and.i.i.i.i, i32 noundef 1, i32 noundef 2, i32 noundef 0) #9
  tail call void @debug_dma_mapping_error(ptr noundef %dev1.i.i.i, i32 noundef %call41.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i.i.i)
  %cmp.i.i23.i.i = icmp eq i32 %call41.i.i.i.i, -1
  br i1 %cmp.i.i23.i.i, label %dma_map_single_attrs.exit.i.i.i.if.end.thread31.i.i_crit_edge, label %if.end9.i.i.i

dma_map_single_attrs.exit.i.i.i.if.end.thread31.i.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread31.i.i

if.end9.i.i.i:                                    ; preds = %dma_map_single_attrs.exit.i.i.i
  %44 = ptrtoint ptr %endpoint_id.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %endpoint_id.i, align 4
  %shl.i.i.i.i = shl nuw i32 1, %45
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx, align 4
  %available.i.i.i.i = getelementptr inbounds %struct.ipa, ptr %47, i32 0, i32 28
  %48 = ptrtoint ptr %available.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %available.i.i.i.i, align 4
  %and.i84.i.i.i = and i32 %49, %shl.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i84.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i84.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %do.end.i.i.i.i, label %if.end9.i.i.i.ipa_endpoint_force_close.exit.i.i.i_crit_edge, !prof !141

if.end9.i.i.i.ipa_endpoint_force_close.exit.i.i.i_crit_edge: ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipa_endpoint_force_close.exit.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 302, i32 noundef 9, ptr noundef null) #9
  br label %ipa_endpoint_force_close.exit.i.i.i

ipa_endpoint_force_close.exit.i.i.i:              ; preds = %do.end.i.i.i.i, %if.end9.i.i.i.ipa_endpoint_force_close.exit.i.i.i_crit_edge
  %reg_virt.i.i.i.i = getelementptr inbounds %struct.ipa, ptr %47, i32 0, i32 14
  %50 = ptrtoint ptr %reg_virt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg_virt.i.i.i.i, align 4
  %add.ptr.i85.i.i.i = getelementptr i8, ptr %51, i32 492
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %52 = tail call i32 @llvm.bswap.i32(i32 %shl.i.i.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85.i.i.i, i32 %52) #9, !srcloc !145
  %53 = ptrtoint ptr %channel_id1.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %channel_id1.i.i, align 4
  tail call void @gsi_channel_reset(ptr noundef %34, i32 noundef %54, i1 noundef zeroext false) #9
  %call10.i.i.i = tail call fastcc zeroext i1 @ipa_endpoint_program_suspend(ptr noundef %arrayidx, i1 noundef zeroext false) #9
  %55 = ptrtoint ptr %channel_id1.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %channel_id1.i.i, align 4
  %call12.i.i.i = tail call i32 @gsi_channel_start(ptr noundef %34, i32 noundef %56) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i.i)
  %tobool13.not.i.i.i = icmp eq i32 %call12.i.i.i, 0
  br i1 %tobool13.not.i.i.i, label %if.end15.i.i.i, label %ipa_endpoint_force_close.exit.i.i.i.out_suspend_again.i.i.i_crit_edge

ipa_endpoint_force_close.exit.i.i.i.out_suspend_again.i.i.i_crit_edge: ; preds = %ipa_endpoint_force_close.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_suspend_again.i.i.i

if.end15.i.i.i:                                   ; preds = %ipa_endpoint_force_close.exit.i.i.i
  %57 = ptrtoint ptr %channel_id1.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %channel_id1.i.i, align 4
  %call17.i.i.i = tail call i32 @gsi_trans_read_byte(ptr noundef %34, i32 noundef %58, i32 noundef %call41.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %call17.i.i.i, 0
  br i1 %tobool18.not.i.i.i, label %do.body.preheader.i.i.i, label %err_endpoint_stop.i.i.i

do.body.preheader.i.i.i:                          ; preds = %if.end15.i.i.i
  %59 = ptrtoint ptr %endpoint_id.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %endpoint_id.i, align 4
  %shl.i87.i.i.i = shl nuw i32 1, %60
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx, align 4
  %available.i88.i.i.i = getelementptr inbounds %struct.ipa, ptr %62, i32 0, i32 28
  %63 = ptrtoint ptr %available.i88.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %available.i88.i.i.i, align 4
  %and.i89.i.i.i = and i32 %64, %shl.i87.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i89.i.i.i)
  %tobool.not.i90.i.i.i = icmp eq i32 %and.i89.i.i.i, 0
  br i1 %tobool.not.i90.i.i.i, label %do.end.i91.i.i.i, label %do.body.preheader.i.i.i.ipa_endpoint_aggr_active.exit.i.i.i_crit_edge, !prof !141

do.body.preheader.i.i.i.ipa_endpoint_aggr_active.exit.i.i.i_crit_edge: ; preds = %do.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipa_endpoint_aggr_active.exit.i.i.i

do.end.i91.i.i.i:                                 ; preds = %do.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 289, i32 noundef 9, ptr noundef null) #9
  br label %ipa_endpoint_aggr_active.exit.i.i.i

ipa_endpoint_aggr_active.exit.i.i.i:              ; preds = %do.end.i91.i.i.i, %do.body.preheader.i.i.i.ipa_endpoint_aggr_active.exit.i.i.i_crit_edge
  %version.i.i.i.i = getelementptr inbounds %struct.ipa, ptr %62, i32 0, i32 1
  %65 = ptrtoint ptr %version.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %version.i.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %66)
  %cmp.i.i.i.i.i = icmp ult i32 %66, 4
  %..i.i.i.i.i = select i1 %cmp.i.i.i.i.i, i32 268, i32 180
  %reg_virt.i92.i.i.i = getelementptr inbounds %struct.ipa, ptr %62, i32 0, i32 14
  %67 = ptrtoint ptr %reg_virt.i92.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %reg_virt.i92.i.i.i, align 4
  %add.ptr.i93.i.i.i = getelementptr i8, ptr %68, i32 %..i.i.i.i.i
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i93.i.i.i) #9, !srcloc !142
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !143
  %and23.i.i.i.i = and i32 %70, %shl.i87.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.i.i.i)
  %tobool24.i.not.i.i.i = icmp eq i32 %and23.i.i.i.i, 0
  br i1 %tobool24.i.not.i.i.i, label %ipa_endpoint_aggr_active.exit.i.i.i.do.end.i24.i.i_crit_edge, label %if.end23.i.i.i

ipa_endpoint_aggr_active.exit.i.i.i.do.end.i24.i.i_crit_edge: ; preds = %ipa_endpoint_aggr_active.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i24.i.i

if.end23.i.i.i:                                   ; preds = %ipa_endpoint_aggr_active.exit.i.i.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #9
  %71 = ptrtoint ptr %endpoint_id.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %endpoint_id.i, align 4
  %shl.i87.1.i.i.i = shl nuw i32 1, %72
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx, align 4
  %available.i88.1.i.i.i = getelementptr inbounds %struct.ipa, ptr %74, i32 0, i32 28
  %75 = ptrtoint ptr %available.i88.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %available.i88.1.i.i.i, align 4
  %and.i89.1.i.i.i = and i32 %76, %shl.i87.1.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i89.1.i.i.i)
  %tobool.not.i90.1.i.i.i = icmp eq i32 %and.i89.1.i.i.i, 0
  br i1 %tobool.not.i90.1.i.i.i, label %do.end.i91.1.i.i.i, label %if.end23.i.i.i.ipa_endpoint_aggr_active.exit.1.i.i.i_crit_edge, !prof !141

if.end23.i.i.i.ipa_endpoint_aggr_active.exit.1.i.i.i_crit_edge: ; preds = %if.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipa_endpoint_aggr_active.exit.1.i.i.i

do.end.i91.1.i.i.i:                               ; preds = %if.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 289, i32 noundef 9, ptr noundef null) #9
  br label %ipa_endpoint_aggr_active.exit.1.i.i.i

ipa_endpoint_aggr_active.exit.1.i.i.i:            ; preds = %do.end.i91.1.i.i.i, %if.end23.i.i.i.ipa_endpoint_aggr_active.exit.1.i.i.i_crit_edge
  %version.i.1.i.i.i = getelementptr inbounds %struct.ipa, ptr %74, i32 0, i32 1
  %77 = ptrtoint ptr %version.i.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %version.i.1.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %78)
  %cmp.i.i.1.i.i.i = icmp ult i32 %78, 4
  %..i.i.1.i.i.i = select i1 %cmp.i.i.1.i.i.i, i32 268, i32 180
  %reg_virt.i92.1.i.i.i = getelementptr inbounds %struct.ipa, ptr %74, i32 0, i32 14
  %79 = ptrtoint ptr %reg_virt.i92.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %reg_virt.i92.1.i.i.i, align 4
  %add.ptr.i93.1.i.i.i = getelementptr i8, ptr %80, i32 %..i.i.1.i.i.i
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i93.1.i.i.i) #9, !srcloc !142
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !143
  %and23.i.1.i.i.i = and i32 %82, %shl.i87.1.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.1.i.i.i)
  %tobool24.i.not.1.i.i.i = icmp eq i32 %and23.i.1.i.i.i, 0
  br i1 %tobool24.i.not.1.i.i.i, label %ipa_endpoint_aggr_active.exit.1.i.i.i.do.end.i24.i.i_crit_edge, label %if.end23.1.i.i.i

ipa_endpoint_aggr_active.exit.1.i.i.i.do.end.i24.i.i_crit_edge: ; preds = %ipa_endpoint_aggr_active.exit.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i24.i.i

if.end23.1.i.i.i:                                 ; preds = %ipa_endpoint_aggr_active.exit.1.i.i.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #9
  %83 = ptrtoint ptr %endpoint_id.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %endpoint_id.i, align 4
  %shl.i87.2.i.i.i = shl nuw i32 1, %84
  %85 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx, align 4
  %available.i88.2.i.i.i = getelementptr inbounds %struct.ipa, ptr %86, i32 0, i32 28
  %87 = ptrtoint ptr %available.i88.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %available.i88.2.i.i.i, align 4
  %and.i89.2.i.i.i = and i32 %88, %shl.i87.2.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i89.2.i.i.i)
  %tobool.not.i90.2.i.i.i = icmp eq i32 %and.i89.2.i.i.i, 0
  br i1 %tobool.not.i90.2.i.i.i, label %do.end.i91.2.i.i.i, label %if.end23.1.i.i.i.ipa_endpoint_aggr_active.exit.2.i.i.i_crit_edge, !prof !141

if.end23.1.i.i.i.ipa_endpoint_aggr_active.exit.2.i.i.i_crit_edge: ; preds = %if.end23.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipa_endpoint_aggr_active.exit.2.i.i.i

do.end.i91.2.i.i.i:                               ; preds = %if.end23.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 289, i32 noundef 9, ptr noundef null) #9
  br label %ipa_endpoint_aggr_active.exit.2.i.i.i

ipa_endpoint_aggr_active.exit.2.i.i.i:            ; preds = %do.end.i91.2.i.i.i, %if.end23.1.i.i.i.ipa_endpoint_aggr_active.exit.2.i.i.i_crit_edge
  %version.i.2.i.i.i = getelementptr inbounds %struct.ipa, ptr %86, i32 0, i32 1
  %89 = ptrtoint ptr %version.i.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %version.i.2.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %90)
  %cmp.i.i.2.i.i.i = icmp ult i32 %90, 4
  %..i.i.2.i.i.i = select i1 %cmp.i.i.2.i.i.i, i32 268, i32 180
  %reg_virt.i92.2.i.i.i = getelementptr inbounds %struct.ipa, ptr %86, i32 0, i32 14
  %91 = ptrtoint ptr %reg_virt.i92.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %reg_virt.i92.2.i.i.i, align 4
  %add.ptr.i93.2.i.i.i = getelementptr i8, ptr %92, i32 %..i.i.2.i.i.i
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i93.2.i.i.i) #9, !srcloc !142
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !143
  %and23.i.2.i.i.i = and i32 %94, %shl.i87.2.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.2.i.i.i)
  %tobool24.i.not.2.i.i.i = icmp eq i32 %and23.i.2.i.i.i, 0
  br i1 %tobool24.i.not.2.i.i.i, label %ipa_endpoint_aggr_active.exit.2.i.i.i.do.end.i24.i.i_crit_edge, label %if.end23.2.i.i.i

ipa_endpoint_aggr_active.exit.2.i.i.i.do.end.i24.i.i_crit_edge: ; preds = %ipa_endpoint_aggr_active.exit.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i24.i.i

if.end23.2.i.i.i:                                 ; preds = %ipa_endpoint_aggr_active.exit.2.i.i.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #9
  %95 = ptrtoint ptr %endpoint_id.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %endpoint_id.i, align 4
  %shl.i87.3.i.i.i = shl nuw i32 1, %96
  %97 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx, align 4
  %available.i88.3.i.i.i = getelementptr inbounds %struct.ipa, ptr %98, i32 0, i32 28
  %99 = ptrtoint ptr %available.i88.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %available.i88.3.i.i.i, align 4
  %and.i89.3.i.i.i = and i32 %100, %shl.i87.3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i89.3.i.i.i)
  %tobool.not.i90.3.i.i.i = icmp eq i32 %and.i89.3.i.i.i, 0
  br i1 %tobool.not.i90.3.i.i.i, label %do.end.i91.3.i.i.i, label %if.end23.2.i.i.i.ipa_endpoint_aggr_active.exit.3.i.i.i_crit_edge, !prof !141

if.end23.2.i.i.i.ipa_endpoint_aggr_active.exit.3.i.i.i_crit_edge: ; preds = %if.end23.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipa_endpoint_aggr_active.exit.3.i.i.i

do.end.i91.3.i.i.i:                               ; preds = %if.end23.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 289, i32 noundef 9, ptr noundef null) #9
  br label %ipa_endpoint_aggr_active.exit.3.i.i.i

ipa_endpoint_aggr_active.exit.3.i.i.i:            ; preds = %do.end.i91.3.i.i.i, %if.end23.2.i.i.i.ipa_endpoint_aggr_active.exit.3.i.i.i_crit_edge
  %version.i.3.i.i.i = getelementptr inbounds %struct.ipa, ptr %98, i32 0, i32 1
  %101 = ptrtoint ptr %version.i.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %version.i.3.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %102)
  %cmp.i.i.3.i.i.i = icmp ult i32 %102, 4
  %..i.i.3.i.i.i = select i1 %cmp.i.i.3.i.i.i, i32 268, i32 180
  %reg_virt.i92.3.i.i.i = getelementptr inbounds %struct.ipa, ptr %98, i32 0, i32 14
  %103 = ptrtoint ptr %reg_virt.i92.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %reg_virt.i92.3.i.i.i, align 4
  %add.ptr.i93.3.i.i.i = getelementptr i8, ptr %104, i32 %..i.i.3.i.i.i
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i93.3.i.i.i) #9, !srcloc !142
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !143
  %and23.i.3.i.i.i = and i32 %106, %shl.i87.3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.3.i.i.i)
  %tobool24.i.not.3.i.i.i = icmp eq i32 %and23.i.3.i.i.i, 0
  br i1 %tobool24.i.not.3.i.i.i, label %ipa_endpoint_aggr_active.exit.3.i.i.i.do.end.i24.i.i_crit_edge, label %if.end23.3.i.i.i

ipa_endpoint_aggr_active.exit.3.i.i.i.do.end.i24.i.i_crit_edge: ; preds = %ipa_endpoint_aggr_active.exit.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i24.i.i

if.end23.3.i.i.i:                                 ; preds = %ipa_endpoint_aggr_active.exit.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #9
  br label %do.end.i24.i.i

do.end.i24.i.i:                                   ; preds = %if.end23.3.i.i.i, %ipa_endpoint_aggr_active.exit.3.i.i.i.do.end.i24.i.i_crit_edge, %ipa_endpoint_aggr_active.exit.2.i.i.i.do.end.i24.i.i_crit_edge, %ipa_endpoint_aggr_active.exit.1.i.i.i.do.end.i24.i.i_crit_edge, %ipa_endpoint_aggr_active.exit.i.i.i.do.end.i24.i.i_crit_edge
  %107 = ptrtoint ptr %endpoint_id.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %endpoint_id.i, align 4
  %shl.i95.i.i.i = shl nuw i32 1, %108
  %109 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx, align 4
  %available.i96.i.i.i = getelementptr inbounds %struct.ipa, ptr %110, i32 0, i32 28
  %111 = ptrtoint ptr %available.i96.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %available.i96.i.i.i, align 4
  %and.i97.i.i.i = and i32 %112, %shl.i95.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i97.i.i.i)
  %tobool.not.i98.i.i.i = icmp eq i32 %and.i97.i.i.i, 0
  br i1 %tobool.not.i98.i.i.i, label %do.end.i99.i.i.i, label %do.end.i24.i.i.ipa_endpoint_aggr_active.exit107.i.i.i_crit_edge, !prof !141

do.end.i24.i.i.ipa_endpoint_aggr_active.exit107.i.i.i_crit_edge: ; preds = %do.end.i24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipa_endpoint_aggr_active.exit107.i.i.i

do.end.i99.i.i.i:                                 ; preds = %do.end.i24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 289, i32 noundef 9, ptr noundef null) #9
  br label %ipa_endpoint_aggr_active.exit107.i.i.i

ipa_endpoint_aggr_active.exit107.i.i.i:           ; preds = %do.end.i99.i.i.i, %do.end.i24.i.i.ipa_endpoint_aggr_active.exit107.i.i.i_crit_edge
  %version.i100.i.i.i = getelementptr inbounds %struct.ipa, ptr %110, i32 0, i32 1
  %113 = ptrtoint ptr %version.i100.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %version.i100.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %114)
  %cmp.i.i101.i.i.i = icmp ult i32 %114, 4
  %..i.i102.i.i.i = select i1 %cmp.i.i101.i.i.i, i32 268, i32 180
  %reg_virt.i103.i.i.i = getelementptr inbounds %struct.ipa, ptr %110, i32 0, i32 14
  %115 = ptrtoint ptr %reg_virt.i103.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %reg_virt.i103.i.i.i, align 4
  %add.ptr.i104.i.i.i = getelementptr i8, ptr %116, i32 %..i.i102.i.i.i
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i104.i.i.i) #9, !srcloc !142
  %118 = tail call i32 @llvm.bswap.i32(i32 %117) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !143
  %and23.i105.i.i.i = and i32 %118, %shl.i95.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i105.i.i.i)
  %tobool24.i106.not.i.i.i = icmp eq i32 %and23.i105.i.i.i, 0
  br i1 %tobool24.i106.not.i.i.i, label %ipa_endpoint_aggr_active.exit107.i.i.i.if.end30.i.i.i_crit_edge, label %do.end29.i.i.i

ipa_endpoint_aggr_active.exit107.i.i.i.if.end30.i.i.i_crit_edge: ; preds = %ipa_endpoint_aggr_active.exit107.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.i.i.i

do.end29.i.i.i:                                   ; preds = %ipa_endpoint_aggr_active.exit107.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %119 = ptrtoint ptr %endpoint_id.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %endpoint_id.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i.i, ptr noundef nonnull @.str.33, i32 noundef %120) #12
  br label %if.end30.i.i.i

if.end30.i.i.i:                                   ; preds = %do.end29.i.i.i, %ipa_endpoint_aggr_active.exit107.i.i.i.if.end30.i.i.i_crit_edge
  %121 = ptrtoint ptr %channel_id1.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %channel_id1.i.i, align 4
  tail call void @gsi_trans_read_byte_done(ptr noundef %34, i32 noundef %122) #9
  %123 = ptrtoint ptr %channel_id1.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %channel_id1.i.i, align 4
  %call33.i.i.i = tail call i32 @gsi_channel_stop(ptr noundef %34, i32 noundef %124) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i.i)
  %tobool34.not.i.i.i = icmp eq i32 %call33.i.i.i, 0
  br i1 %tobool34.not.i.i.i, label %if.end36.i.i.i, label %if.end30.i.i.i.out_suspend_again.i.i.i_crit_edge

if.end30.i.i.i.out_suspend_again.i.i.i_crit_edge: ; preds = %if.end30.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_suspend_again.i.i.i

if.end36.i.i.i:                                   ; preds = %if.end30.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %125 = ptrtoint ptr %channel_id1.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %channel_id1.i.i, align 4
  tail call void @gsi_channel_reset(ptr noundef %34, i32 noundef %126, i1 noundef zeroext true) #9
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #9
  br label %out_suspend_again.i.i.i

err_endpoint_stop.i.i.i:                          ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %127 = ptrtoint ptr %channel_id1.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %channel_id1.i.i, align 4
  %call39.i.i.i = tail call i32 @gsi_channel_stop(ptr noundef %34, i32 noundef %128) #9
  br label %out_suspend_again.i.i.i

out_suspend_again.i.i.i:                          ; preds = %err_endpoint_stop.i.i.i, %if.end36.i.i.i, %if.end30.i.i.i.out_suspend_again.i.i.i_crit_edge, %ipa_endpoint_force_close.exit.i.i.i.out_suspend_again.i.i.i_crit_edge
  %ret.0.i.i.i = phi i32 [ %call12.i.i.i, %ipa_endpoint_force_close.exit.i.i.i.out_suspend_again.i.i.i_crit_edge ], [ %call17.i.i.i, %err_endpoint_stop.i.i.i ], [ %call33.i.i.i, %if.end30.i.i.i.out_suspend_again.i.i.i_crit_edge ], [ 0, %if.end36.i.i.i ]
  br i1 %call10.i.i.i, label %if.then41.i.i.i, label %out_suspend_again.i.i.i.if.end.i.i_crit_edge

out_suspend_again.i.i.i.if.end.i.i_crit_edge:     ; preds = %out_suspend_again.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then41.i.i.i:                                  ; preds = %out_suspend_again.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call42.i.i.i = tail call fastcc zeroext i1 @ipa_endpoint_program_suspend(ptr noundef %arrayidx, i1 noundef zeroext true) #9
  br label %if.end.i.i

if.end.thread.i.i:                                ; preds = %ipa_endpoint_aggr_active.exit.i.i.if.end.thread.i.i_crit_edge, %land.rhs.i.i.if.end.thread.i.i_crit_edge, %land.lhs.true.i.i.if.end.thread.i.i_crit_edge, %if.end.i.if.end.thread.i.i_crit_edge
  tail call void @gsi_channel_reset(ptr noundef %14, i32 noundef %12, i1 noundef zeroext true) #9
  br label %ipa_endpoint_teardown_one.exit

if.end.thread31.i.i:                              ; preds = %dma_map_single_attrs.exit.i.i.i.if.end.thread31.i.i_crit_edge, %dma_map_single_attrs.exit.thread.i.i.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #9
  br label %do.end.i.i

if.end.i.i:                                       ; preds = %if.then41.i.i.i, %out_suspend_again.i.i.i.if.end.i.i_crit_edge
  tail call void @dma_unmap_page_attrs(ptr noundef %dev1.i.i.i, i32 noundef %call41.i.i.i.i, i32 noundef 1, i32 noundef 2, i32 noundef 0) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i.i)
  %tobool7.not.i.i = icmp eq i32 %ret.0.i.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end.i.i.ipa_endpoint_teardown_one.exit_crit_edge, label %if.end.i.i.do.end.i.i_crit_edge

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

if.end.i.i.ipa_endpoint_teardown_one.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipa_endpoint_teardown_one.exit

do.end.i.i:                                       ; preds = %if.end.i.i.do.end.i.i_crit_edge, %if.end.thread31.i.i, %if.then.i.i.do.end.i.i_crit_edge
  %ret.030.i.i = phi i32 [ %ret.0.i.i.i, %if.end.i.i.do.end.i.i_crit_edge ], [ -12, %if.end.thread31.i.i ], [ -12, %if.then.i.i.do.end.i.i_crit_edge ]
  %pdev.i.i = getelementptr inbounds %struct.ipa, ptr %14, i32 0, i32 2
  %129 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %pdev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %130, i32 0, i32 3
  %131 = ptrtoint ptr %channel_id1.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %channel_id1.i.i, align 4
  %133 = ptrtoint ptr %endpoint_id.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %endpoint_id.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.31, i32 noundef %ret.030.i.i, i32 noundef %132, i32 noundef %134) #12
  br label %ipa_endpoint_teardown_one.exit

ipa_endpoint_teardown_one.exit:                   ; preds = %do.end.i.i, %if.end.i.i.ipa_endpoint_teardown_one.exit_crit_edge, %if.end.thread.i.i
  %tobool.not = icmp eq i32 %xor, 0
  br i1 %tobool.not, label %ipa_endpoint_teardown_one.exit.while.end_crit_edge, label %ipa_endpoint_teardown_one.exit.while.body_crit_edge

ipa_endpoint_teardown_one.exit.while.body_crit_edge: ; preds = %ipa_endpoint_teardown_one.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

ipa_endpoint_teardown_one.exit.while.end_crit_edge: ; preds = %ipa_endpoint_teardown_one.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %ipa_endpoint_teardown_one.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %135 = ptrtoint ptr %set_up1 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %set_up1, align 16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipa_endpoint_config(ptr nocapture noundef %ipa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %version = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 1
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %version, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ult i32 %3, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %available = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 28
  %4 = ptrtoint ptr %available to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %available, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg_virt = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 14
  %5 = ptrtoint ptr %reg_virt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_virt, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 528
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !142
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !143
  %and.i = lshr i32 %8, 24
  %div4.i81 = and i32 %and.i, 15
  %and.i76 = lshr i32 %8, 16
  %div4.i7782 = and i32 %and.i76, 31
  %add = add nuw nsw i32 %div4.i81, %div4.i7782
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add)
  %cmp4 = icmp ugt i32 %add, 32
  br i1 %cmp4, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %add, i32 noundef 32) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %shl.neg = shl nsw i32 -1, %div4.i81
  %sub9 = sub nuw nsw i32 32, %add
  %shr = lshr i32 -1, %sub9
  %and = and i32 %shr, %shl.neg
  %div4.i79.lhs.trunc = lshr i32 %8, 8
  %div4.i798083 = and i32 %div4.i79.lhs.trunc, 31
  %sub13 = sub nuw nsw i32 32, %div4.i798083
  %shr14 = lshr i32 -1, %sub13
  %or = or i32 %and, %shr14
  %available17 = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 28
  %9 = ptrtoint ptr %available17 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %available17, align 4
  %initialized18 = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 30
  %10 = ptrtoint ptr %initialized18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %initialized18, align 4
  %neg = xor i32 %or, -1
  %and20 = and i32 %11, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool.not = icmp eq i32 %and20, 0
  br i1 %tobool.not, label %if.end6.if.end29_crit_edge, label %do.end24

if.end6.if.end29_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

do.end24:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %and20) #12
  %12 = ptrtoint ptr %initialized18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %initialized18, align 4
  br label %if.end29

if.end29:                                         ; preds = %do.end24, %if.end6.if.end29_crit_edge
  %13 = phi i32 [ %.pr, %do.end24 ], [ %11, %if.end6.if.end29_crit_edge ]
  %ret.0 = phi i32 [ -22, %do.end24 ], [ 0, %if.end6.if.end29_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool31.not84 = icmp eq i32 %13, 0
  br i1 %tobool31.not84, label %if.end29.cleanup_crit_edge, label %if.end29.while.body_crit_edge

if.end29.while.body_crit_edge:                    ; preds = %if.end29
  br label %while.body

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body:                                       ; preds = %if.end44.while.body_crit_edge, %if.end29.while.body_crit_edge
  %ret.186 = phi i32 [ %ret.2, %if.end44.while.body_crit_edge ], [ %ret.0, %if.end29.while.body_crit_edge ]
  %initialized.085 = phi i32 [ %xor, %if.end44.while.body_crit_edge ], [ %13, %if.end29.while.body_crit_edge ]
  %14 = tail call i32 @llvm.cttz.i32(i32 %initialized.085, i1 true) #9, !range !146
  %shl33 = shl nuw i32 1, %14
  %xor = xor i32 %shl33, %initialized.085
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %div4.i81)
  %cmp35 = icmp ult i32 %14, %div4.i81
  %toward_ipa = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %14, i32 4
  %15 = ptrtoint ptr %toward_ipa to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %toward_ipa, align 4, !range !139
  %17 = zext i1 %cmp35 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %17)
  %cmp38.not = icmp eq i8 %16, %17
  br i1 %cmp38.not, label %while.body.if.end44_crit_edge, label %do.end43

while.body.if.end44_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

do.end43:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %14) #12
  br label %if.end44

if.end44:                                         ; preds = %do.end43, %while.body.if.end44_crit_edge
  %ret.2 = phi i32 [ -22, %do.end43 ], [ %ret.186, %while.body.if.end44_crit_edge ]
  %tobool31.not = icmp eq i32 %xor, 0
  br i1 %tobool31.not, label %if.end44.cleanup_crit_edge, label %if.end44.while.body_crit_edge

if.end44.while.body_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end44.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %do.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %do.end ], [ %ret.0, %if.end29.cleanup_crit_edge ], [ %ret.2, %if.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ipa_endpoint_deconfig(ptr nocapture noundef writeonly %ipa) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %available = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 28
  %0 = ptrtoint ptr %available to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %available, align 4
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_endpoint_exit(ptr nocapture noundef %ipa) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %initialized1 = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 30
  %0 = ptrtoint ptr %initialized1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %initialized1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not9 = icmp eq i32 %1, 0
  br i1 %tobool.not9, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %initialized.010 = phi i32 [ %xor, %while.body.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %2 = tail call i32 @llvm.ctlz.i32(i32 %initialized.010, i1 true) #9, !range !146
  %sub.i = xor i32 %2, 31
  %shl = shl nuw i32 1, %sub.i
  %xor = xor i32 %shl, %initialized.010
  %arrayidx = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %sub.i
  %endpoint_id.i = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %sub.i, i32 3
  %3 = ptrtoint ptr %endpoint_id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %endpoint_id.i, align 4
  %shl.i = shl nuw i32 1, %4
  %neg.i = xor i32 %shl.i, -1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %initialized.i = getelementptr inbounds %struct.ipa, ptr %6, i32 0, i32 30
  %7 = ptrtoint ptr %initialized.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %initialized.i, align 4
  %and.i = and i32 %8, %neg.i
  store i32 %and.i, ptr %initialized.i, align 4
  %9 = call ptr @memset(ptr %arrayidx, i32 0, i32 152)
  %tobool.not = icmp eq i32 %xor, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %channel_map = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 34
  %10 = call ptr @memset(ptr %channel_map, i32 0, i32 132)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipa_endpoint_init(ptr noundef %ipa, i32 noundef %count, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 2
  %0 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %count)
  %cmp.i = icmp ugt i32 %count, 10
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.37, i32 noundef %count, i32 noundef 10) #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call8.i = tail call zeroext i1 @ipa_gsi_endpoint_data_empty(ptr noundef %data) #9
  br i1 %call8.i, label %do.end12.i, label %if.end13.i

do.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.43) #12
  br label %cleanup

if.end13.i:                                       ; preds = %if.end.i
  %arrayidx14.i = getelementptr %struct.ipa_gsi_endpoint_data, ptr %data, i32 1
  %call15.i = tail call zeroext i1 @ipa_gsi_endpoint_data_empty(ptr noundef %arrayidx14.i) #9
  br i1 %call15.i, label %do.end19.i, label %if.end20.i

do.end19.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.46) #12
  br label %cleanup

if.end20.i:                                       ; preds = %if.end13.i
  %arrayidx21.i = getelementptr %struct.ipa_gsi_endpoint_data, ptr %data, i32 2
  %call22.i = tail call zeroext i1 @ipa_gsi_endpoint_data_empty(ptr noundef %arrayidx21.i) #9
  br i1 %call22.i, label %do.end26.i, label %if.end27.i

do.end26.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.49) #12
  br label %cleanup

if.end27.i:                                       ; preds = %if.end20.i
  %arrayidx28.i = getelementptr %struct.ipa_gsi_endpoint_data, ptr %data, i32 3
  %call29.i = tail call zeroext i1 @ipa_gsi_endpoint_data_empty(ptr noundef %arrayidx28.i) #9
  br i1 %call29.i, label %do.end33.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp3593.not.i = icmp eq i32 %count, 0
  br i1 %cmp3593.not.i, label %if.end.thread, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

if.end.thread:                                    ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  %initialized77 = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 30
  %2 = ptrtoint ptr %initialized77 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %initialized77, align 4
  br label %for.end

do.end33.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.52) #12
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %name.096.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %dp.094.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %data, %for.cond.preheader.i.for.body.i_crit_edge ]
  %3 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev.i, align 4
  %call.i.i = tail call zeroext i1 @ipa_gsi_endpoint_data_empty(ptr noundef %dp.094.i) #9
  br i1 %call.i.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i.i:                                       ; preds = %for.body.i
  %toward_ipa.i.i = getelementptr inbounds %struct.ipa_gsi_endpoint_data, ptr %dp.094.i, i32 0, i32 3
  %5 = ptrtoint ptr %toward_ipa.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %toward_ipa.i.i, align 1, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i.i, label %if.then2.i.i, label %if.end6.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  %endpoint.i.i = getelementptr inbounds %struct.ipa_gsi_endpoint_data, ptr %dp.094.i, i32 0, i32 5
  %7 = ptrtoint ptr %endpoint.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %endpoint.i.i, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not.i.i = icmp eq i8 %8, 0
  br i1 %tobool3.not.i.i, label %if.then2.i.i.for.inc.i_crit_edge, label %do.end.i.i

if.then2.i.i.for.inc.i_crit_edge:                 ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

do.end.i.i:                                       ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev1.i.le.i = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %endpoint_id.i.i = getelementptr inbounds %struct.ipa_gsi_endpoint_data, ptr %dp.094.i, i32 0, i32 2
  %9 = ptrtoint ptr %endpoint_id.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %endpoint_id.i.i, align 2
  %conv.i.i = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.le.i, ptr noundef nonnull @.str.54, i32 noundef %conv.i.i) #12
  br label %cleanup

if.end6.i.i:                                      ; preds = %if.end.i.i
  %status_enable.i.i = getelementptr inbounds %struct.ipa_gsi_endpoint_data, ptr %dp.094.i, i32 0, i32 5, i32 1, i32 4
  %11 = ptrtoint ptr %status_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %status_enable.i.i, align 1, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool8.not.i.i = icmp eq i8 %12, 0
  br i1 %tobool8.not.i.i, label %if.end6.i.i.if.end53.i.i_crit_edge, label %if.then9.i.i

if.end6.i.i.if.end53.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53.i.i

if.then9.i.i:                                     ; preds = %if.end6.i.i
  %status_endpoint.i.i = getelementptr inbounds %struct.ipa_gsi_endpoint_data, ptr %dp.094.i, i32 0, i32 5, i32 1, i32 7, i32 0, i32 2
  %13 = ptrtoint ptr %status_endpoint.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status_endpoint.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %count)
  %cmp.not.i.i = icmp ult i32 %14, %count
  br i1 %cmp.not.i.i, label %if.end19.i.i, label %do.end16.i.i

do.end16.i.i:                                     ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev1.i.le91.i = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %endpoint_id17.i.i = getelementptr inbounds %struct.ipa_gsi_endpoint_data, ptr %dp.094.i, i32 0, i32 2
  %15 = ptrtoint ptr %endpoint_id17.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %endpoint_id17.i.i, align 2
  %conv18.i.i = zext i8 %16 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.le91.i, ptr noundef nonnull @.str.57, i32 noundef %14, i32 noundef %conv18.i.i) #12
  br label %cleanup

if.end19.i.i:                                     ; preds = %if.then9.i.i
  %arrayidx.i.i = getelementptr %struct.ipa_gsi_endpoint_data, ptr %data, i32 %14
  %call20.i.i = tail call zeroext i1 @ipa_gsi_endpoint_data_empty(ptr noundef %arrayidx.i.i) #9
  br i1 %call20.i.i, label %do.end24.i.i, label %if.end27.i.i

do.end24.i.i:                                     ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev1.i.le89.i = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %endpoint_id25.i.i = getelementptr inbounds %struct.ipa_gsi_endpoint_data, ptr %dp.094.i, i32 0, i32 2
  %17 = ptrtoint ptr %endpoint_id25.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %endpoint_id25.i.i, align 2
  %conv26.i.i = zext i8 %18 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.le89.i, ptr noundef nonnull @.str.60, i32 noundef %14, i32 noundef %conv26.i.i) #12
  br label %cleanup

if.end27.i.i:                                     ; preds = %if.end19.i.i
  %toward_ipa28.i.i = getelementptr %struct.ipa_gsi_endpoint_data, ptr %data, i32 %14, i32 3
  %19 = ptrtoint ptr %toward_ipa28.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %toward_ipa28.i.i, align 1, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool29.not.i.i = icmp eq i8 %20, 0
  br i1 %tobool29.not.i.i, label %if.end36.i.i, label %do.end33.i.i

do.end33.i.i:                                     ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev1.i.le87.i = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %endpoint_id34.i.i = getelementptr inbounds %struct.ipa_gsi_endpoint_data, ptr %dp.094.i, i32 0, i32 2
  %21 = ptrtoint ptr %endpoint_id34.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %endpoint_id34.i.i, align 2
  %conv35.i.i = zext i8 %22 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.le87.i, ptr noundef nonnull @.str.63, i32 noundef %conv35.i.i) #12
  br label %cleanup

if.end36.i.i:                                     ; preds = %if.end27.i.i
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp38.i.i = icmp eq i8 %24, 0
  br i1 %cmp38.i.i, label %if.then40.i.i, label %if.end36.i.i.if.end53.i.i_crit_edge

if.end36.i.i.if.end53.i.i_crit_edge:              ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53.i.i

if.then40.i.i:                                    ; preds = %if.end36.i.i
  %status_enable43.i.i = getelementptr %struct.ipa_gsi_endpoint_data, ptr %data, i32 %14, i32 5, i32 1, i32 4
  %25 = ptrtoint ptr %status_enable43.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %status_enable43.i.i, align 1, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool44.not.i.i = icmp eq i8 %26, 0
  br i1 %tobool44.not.i.i, label %do.end48.i.i, label %if.then40.i.i.if.end53.i.i_crit_edge

if.then40.i.i.if.end53.i.i_crit_edge:             ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53.i.i

do.end48.i.i:                                     ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev1.i.le85.i = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %endpoint_id49.i.i = getelementptr %struct.ipa_gsi_endpoint_data, ptr %data, i32 %14, i32 2
  %27 = ptrtoint ptr %endpoint_id49.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %endpoint_id49.i.i, align 2
  %conv50.i.i = zext i8 %28 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.le85.i, ptr noundef nonnull @.str.66, i32 noundef %conv50.i.i) #12
  br label %cleanup

if.end53.i.i:                                     ; preds = %if.then40.i.i.if.end53.i.i_crit_edge, %if.end36.i.i.if.end53.i.i_crit_edge, %if.end6.i.i.if.end53.i.i_crit_edge
  %dma_mode.i.i = getelementptr inbounds %struct.ipa_gsi_endpoint_data, ptr %dp.094.i, i32 0, i32 5, i32 1, i32 5
  %29 = ptrtoint ptr %dma_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %dma_mode.i.i, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool56.not.i.i = icmp eq i8 %30, 0
  br i1 %tobool56.not.i.i, label %if.end53.i.i.for.inc.i_crit_edge, label %if.then57.i.i

if.end53.i.i.for.inc.i_crit_edge:                 ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then57.i.i:                                    ; preds = %if.end53.i.i
  %dma_endpoint.i.i = getelementptr inbounds %struct.ipa_gsi_endpoint_data, ptr %dp.094.i, i32 0, i32 5, i32 1, i32 6
  %31 = ptrtoint ptr %dma_endpoint.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dma_endpoint.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %count)
  %cmp60.not.i.i = icmp ult i32 %32, %count
  br i1 %cmp60.not.i.i, label %if.end68.i.i, label %do.end65.i.i

do.end65.i.i:                                     ; preds = %if.then57.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev1.i.le83.i = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %endpoint_id66.i.i = getelementptr inbounds %struct.ipa_gsi_endpoint_data, ptr %dp.094.i, i32 0, i32 2
  %33 = ptrtoint ptr %endpoint_id66.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %endpoint_id66.i.i, align 2
  %conv67.i.i = zext i8 %34 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.le83.i, ptr noundef nonnull @.str.69, i32 noundef %32, i32 noundef %conv67.i.i) #12
  br label %cleanup

if.end68.i.i:                                     ; preds = %if.then57.i.i
  %arrayidx69.i.i = getelementptr %struct.ipa_gsi_endpoint_data, ptr %data, i32 %32
  %call70.i.i = tail call zeroext i1 @ipa_gsi_endpoint_data_empty(ptr noundef %arrayidx69.i.i) #9
  br i1 %call70.i.i, label %do.end74.i.i, label %if.end68.i.i.for.inc.i_crit_edge

if.end68.i.i.for.inc.i_crit_edge:                 ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

do.end74.i.i:                                     ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev1.i.le81.i = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %endpoint_id75.i.i = getelementptr inbounds %struct.ipa_gsi_endpoint_data, ptr %dp.094.i, i32 0, i32 2
  %35 = ptrtoint ptr %endpoint_id75.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %endpoint_id75.i.i, align 2
  %conv76.i.i = zext i8 %36 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.le81.i, ptr noundef nonnull @.str.60, i32 noundef %32, i32 noundef %conv76.i.i) #12
  br label %cleanup

for.inc.i:                                        ; preds = %if.end68.i.i.for.inc.i_crit_edge, %if.end53.i.i.for.inc.i_crit_edge, %if.then2.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %name.096.i, 1
  %incdec.ptr.i = getelementptr %struct.ipa_gsi_endpoint_data, ptr %dp.094.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %count
  br i1 %exitcond.not.i, label %if.end, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end:                                           ; preds = %for.inc.i
  %initialized = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 30
  %37 = ptrtoint ptr %initialized to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %initialized, align 4
  br i1 %cmp3593.not.i, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %filter_map.056 = phi i32 [ %filter_map.1, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %name.054 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %data.addr.051 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %data, %if.end.for.body_crit_edge ]
  %call1 = tail call zeroext i1 @ipa_gsi_endpoint_data_empty(ptr noundef %data.addr.051) #9
  br i1 %call1, label %for.body.for.inc_crit_edge, label %if.end3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end3:                                          ; preds = %for.body
  %endpoint_id.i = getelementptr inbounds %struct.ipa_gsi_endpoint_data, ptr %data.addr.051, i32 0, i32 2
  %38 = ptrtoint ptr %endpoint_id.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %endpoint_id.i, align 2
  %idxprom.i = zext i8 %39 to i32
  %arrayidx.i = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %idxprom.i
  %40 = ptrtoint ptr %data.addr.051 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %data.addr.051, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp.i24 = icmp eq i8 %41, 0
  br i1 %cmp.i24, label %if.then.i, label %if.end3.ipa_endpoint_init_one.exit_crit_edge

if.end3.ipa_endpoint_init_one.exit_crit_edge:     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipa_endpoint_init_one.exit

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %channel_id.i = getelementptr inbounds %struct.ipa_gsi_endpoint_data, ptr %data.addr.051, i32 0, i32 1
  %42 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %channel_id.i, align 1
  %idxprom3.i = zext i8 %43 to i32
  %arrayidx4.i = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 34, i32 %idxprom3.i
  %44 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %arrayidx.i, ptr %arrayidx4.i, align 4
  br label %ipa_endpoint_init_one.exit

ipa_endpoint_init_one.exit:                       ; preds = %if.then.i, %if.end3.ipa_endpoint_init_one.exit_crit_edge
  %arrayidx5.i = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 35, i32 %name.054
  %45 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %arrayidx.i, ptr %arrayidx5.i, align 4
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %ipa, ptr %arrayidx.i, align 4
  %47 = ptrtoint ptr %data.addr.051 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %data.addr.051, align 4
  %conv8.i = zext i8 %48 to i32
  %ee_id9.i = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %idxprom.i, i32 1
  %49 = ptrtoint ptr %ee_id9.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv8.i, ptr %ee_id9.i, align 4
  %channel_id10.i = getelementptr inbounds %struct.ipa_gsi_endpoint_data, ptr %data.addr.051, i32 0, i32 1
  %50 = ptrtoint ptr %channel_id10.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %channel_id10.i, align 1
  %conv11.i = zext i8 %51 to i32
  %channel_id12.i = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %idxprom.i, i32 2
  %52 = ptrtoint ptr %channel_id12.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv11.i, ptr %channel_id12.i, align 4
  %53 = ptrtoint ptr %endpoint_id.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %endpoint_id.i, align 2
  %conv14.i = zext i8 %54 to i32
  %endpoint_id15.i = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %idxprom.i, i32 3
  %55 = ptrtoint ptr %endpoint_id15.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv14.i, ptr %endpoint_id15.i, align 4
  %toward_ipa.i = getelementptr inbounds %struct.ipa_gsi_endpoint_data, ptr %data.addr.051, i32 0, i32 3
  %56 = ptrtoint ptr %toward_ipa.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %toward_ipa.i, align 1, !range !139
  %toward_ipa16.i = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %idxprom.i, i32 4
  %58 = ptrtoint ptr %toward_ipa16.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %toward_ipa16.i, align 4
  %config.i = getelementptr inbounds %struct.ipa_gsi_endpoint_data, ptr %data.addr.051, i32 0, i32 5, i32 1
  %data18.i = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %idxprom.i, i32 5
  %59 = ptrtoint ptr %data18.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %config.i, ptr %data18.i, align 4
  %shl.i = shl nuw i32 1, %conv14.i
  %60 = ptrtoint ptr %initialized to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %initialized, align 4
  %or.i = or i32 %61, %shl.i
  store i32 %or.i, ptr %initialized, align 4
  %endpoint = getelementptr inbounds %struct.ipa_gsi_endpoint_data, ptr %data.addr.051, i32 0, i32 5
  %62 = ptrtoint ptr %endpoint to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %endpoint, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not = icmp eq i8 %63, 0
  br i1 %tobool.not, label %ipa_endpoint_init_one.exit.for.inc_crit_edge, label %if.then4

ipa_endpoint_init_one.exit.for.inc_crit_edge:     ; preds = %ipa_endpoint_init_one.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then4:                                         ; preds = %ipa_endpoint_init_one.exit
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %endpoint_id.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %endpoint_id.i, align 2
  %conv = zext i8 %65 to i32
  %shl = shl nuw i32 1, %conv
  %or = or i32 %shl, %filter_map.056
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %ipa_endpoint_init_one.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %filter_map.1 = phi i32 [ %filter_map.056, %for.body.for.inc_crit_edge ], [ %or, %if.then4 ], [ %filter_map.056, %ipa_endpoint_init_one.exit.for.inc_crit_edge ]
  %inc = add nuw i32 %name.054, 1
  %incdec.ptr = getelementptr %struct.ipa_gsi_endpoint_data, ptr %data.addr.051, i32 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge, %if.end.thread
  %initialized78 = phi ptr [ %initialized, %if.end.for.end_crit_edge ], [ %initialized77, %if.end.thread ], [ %initialized, %for.inc.for.end_crit_edge ]
  %filter_map.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ 0, %if.end.thread ], [ %filter_map.1, %for.inc.for.end_crit_edge ]
  %call6 = tail call zeroext i1 @ipa_filter_map_valid(ptr noundef %ipa, i32 noundef %filter_map.0.lcssa) #9
  br i1 %call6, label %for.end.cleanup_crit_edge, label %err_endpoint_exit

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_endpoint_exit:                                ; preds = %for.end
  %66 = ptrtoint ptr %initialized78 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %initialized78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not9.i = icmp eq i32 %67, 0
  br i1 %tobool.not9.i, label %err_endpoint_exit.ipa_endpoint_exit.exit_crit_edge, label %err_endpoint_exit.while.body.i_crit_edge

err_endpoint_exit.while.body.i_crit_edge:         ; preds = %err_endpoint_exit
  br label %while.body.i

err_endpoint_exit.ipa_endpoint_exit.exit_crit_edge: ; preds = %err_endpoint_exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipa_endpoint_exit.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %err_endpoint_exit.while.body.i_crit_edge
  %initialized.010.i = phi i32 [ %xor.i, %while.body.i.while.body.i_crit_edge ], [ %67, %err_endpoint_exit.while.body.i_crit_edge ]
  %68 = tail call i32 @llvm.ctlz.i32(i32 %initialized.010.i, i1 true) #9, !range !146
  %sub.i.i = xor i32 %68, 31
  %shl.i26 = shl nuw i32 1, %sub.i.i
  %xor.i = xor i32 %shl.i26, %initialized.010.i
  %arrayidx.i27 = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %sub.i.i
  %endpoint_id.i.i28 = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 33, i32 %sub.i.i, i32 3
  %69 = ptrtoint ptr %endpoint_id.i.i28 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %endpoint_id.i.i28, align 4
  %shl.i.i = shl nuw i32 1, %70
  %neg.i.i = xor i32 %shl.i.i, -1
  %71 = ptrtoint ptr %arrayidx.i27 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.i27, align 4
  %initialized.i.i = getelementptr inbounds %struct.ipa, ptr %72, i32 0, i32 30
  %73 = ptrtoint ptr %initialized.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %initialized.i.i, align 4
  %and.i.i = and i32 %74, %neg.i.i
  store i32 %and.i.i, ptr %initialized.i.i, align 4
  %75 = call ptr @memset(ptr %arrayidx.i27, i32 0, i32 152)
  %tobool.not.i = icmp eq i32 %xor.i, 0
  br i1 %tobool.not.i, label %while.body.i.ipa_endpoint_exit.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.ipa_endpoint_exit.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipa_endpoint_exit.exit

ipa_endpoint_exit.exit:                           ; preds = %while.body.i.ipa_endpoint_exit.exit_crit_edge, %err_endpoint_exit.ipa_endpoint_exit.exit_crit_edge
  %channel_map.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 34
  %76 = call ptr @memset(ptr %channel_map.i, i32 0, i32 132)
  br label %cleanup

cleanup:                                          ; preds = %ipa_endpoint_exit.exit, %for.end.cleanup_crit_edge, %do.end74.i.i, %do.end65.i.i, %do.end48.i.i, %do.end33.i.i, %do.end24.i.i, %do.end16.i.i, %do.end.i.i, %do.end33.i, %do.end26.i, %do.end19.i, %do.end12.i, %do.end.i
  %retval.0 = phi i32 [ 0, %ipa_endpoint_exit.exit ], [ %filter_map.0.lcssa, %for.end.cleanup_crit_edge ], [ 0, %do.end.i ], [ 0, %do.end12.i ], [ 0, %do.end19.i ], [ 0, %do.end26.i ], [ 0, %do.end33.i ], [ 0, %do.end16.i.i ], [ 0, %do.end24.i.i ], [ 0, %do.end33.i.i ], [ 0, %do.end65.i.i ], [ 0, %do.end74.i.i ], [ 0, %do.end48.i.i ], [ 0, %do.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipa_gsi_endpoint_data_empty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipa_filter_map_valid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_interrupt_simulate_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gsi_channel_trans_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipa_endpoint_replenish(ptr noundef %endpoint, i1 noundef zeroext %add_one) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %replenish_flags = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 9
  %0 = ptrtoint ptr %replenish_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %replenish_flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  br i1 %add_one, label %if.then2, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %replenish_saved = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %replenish_saved, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %replenish_saved, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %replenish_saved, ptr %replenish_saved, i32 1, ptr elementtype(i32) %replenish_saved) #9, !srcloc !150
  br label %cleanup

if.end3:                                          ; preds = %entry
  %call6 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %replenish_flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %while.cond.preheader, label %if.then8

while.cond.preheader:                             ; preds = %if.end3
  %replenish_backlog13 = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 12
  %call.i.i5472 = tail call zeroext i1 @__kasan_check_write(ptr noundef %replenish_backlog13, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !151
  tail call void @llvm.prefetch.p0(ptr %replenish_backlog13, i32 1, i32 3, i32 1) #9
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %replenish_backlog13, ptr %replenish_backlog13, i32 0, i32 -1, ptr elementtype(i32) %replenish_backlog13) #9, !srcloc !152
  %asmresult.i.i.i73 = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i73)
  %cmp.not.i.i.i74 = icmp eq i32 %asmresult.i.i.i73, 0
  br i1 %cmp.not.i.i.i74, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %channel_id2.i.i = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 2
  %toward_ipa.i.i = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 4
  %replenish_ready.i = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 10
  br label %while.body

if.then8:                                         ; preds = %if.end3
  br i1 %add_one, label %if.then10, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %replenish_backlog = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 12
  %call.i.i53 = tail call zeroext i1 @__kasan_check_write(ptr noundef %replenish_backlog, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %replenish_backlog, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %replenish_backlog, ptr %replenish_backlog, i32 1, ptr elementtype(i32) %replenish_backlog) #9, !srcloc !150
  br label %cleanup

while.body:                                       ; preds = %ipa_endpoint_replenish_one.exit.while.body_crit_edge, %while.body.lr.ph
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !153
  %call38.i.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 404000, i32 noundef 1, i32 noundef 0, ptr noundef null) #9
  %tobool.not.i = icmp eq ptr %call38.i.i.i.i.i, null
  br i1 %tobool.not.i, label %while.body.try_again_later_crit_edge, label %if.end.i

while.body.try_again_later_crit_edge:             ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %try_again_later

if.end.i:                                         ; preds = %while.body
  %5 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %endpoint, align 4
  %7 = ptrtoint ptr %channel_id2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channel_id2.i.i, align 4
  %9 = ptrtoint ptr %toward_ipa.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %toward_ipa.i.i, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i = icmp eq i8 %10, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 2, i32 1
  %call.i.i58 = tail call ptr @gsi_channel_trans_alloc(ptr noundef %6, i32 noundef %8, i32 noundef 1, i32 noundef %cond.i.i) #9
  %tobool3.not.i = icmp eq ptr %call.i.i58, null
  br i1 %tobool3.not.i, label %if.end.i.err_free_pages.i_crit_edge, label %if.end5.i

if.end.i.err_free_pages.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_pages.i

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = tail call i32 @gsi_trans_page_add(ptr noundef nonnull %call.i.i58, ptr noundef nonnull %call38.i.i.i.i.i, i32 noundef 8064, i32 noundef 128) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %ipa_endpoint_replenish_one.exit, label %err_trans_free.i

err_trans_free.i:                                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gsi_trans_free(ptr noundef nonnull %call.i.i58) #9
  br label %err_free_pages.i

err_free_pages.i:                                 ; preds = %err_trans_free.i, %if.end.i.err_free_pages.i_crit_edge
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i.i.i, i32 noundef 1) #9
  br label %try_again_later

ipa_endpoint_replenish_one.exit:                  ; preds = %if.end5.i
  %data.i = getelementptr inbounds %struct.gsi_trans, ptr %call.i.i58, i32 0, i32 7
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call38.i.i.i.i.i, ptr %data.i, align 4
  %12 = ptrtoint ptr %replenish_ready.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %replenish_ready.i, align 4
  %inc.i = add i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %inc.i)
  %cmp.i = icmp eq i32 %inc.i, 16
  %spec.select.i = select i1 %cmp.i, i32 0, i32 %inc.i
  %14 = ptrtoint ptr %replenish_ready.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %spec.select.i, ptr %replenish_ready.i, align 4
  tail call void @gsi_trans_commit(ptr noundef nonnull %call.i.i58, i1 noundef zeroext %cmp.i) #9
  %call.i.i54 = tail call zeroext i1 @__kasan_check_write(ptr noundef %replenish_backlog13, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !151
  tail call void @llvm.prefetch.p0(ptr %replenish_backlog13, i32 1, i32 3, i32 1) #9
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %replenish_backlog13, ptr %replenish_backlog13, i32 0, i32 -1, ptr elementtype(i32) %replenish_backlog13) #9, !srcloc !152
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %ipa_endpoint_replenish_one.exit.while.end_crit_edge, label %ipa_endpoint_replenish_one.exit.while.body_crit_edge

ipa_endpoint_replenish_one.exit.while.body_crit_edge: ; preds = %ipa_endpoint_replenish_one.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

ipa_endpoint_replenish_one.exit.while.end_crit_edge: ; preds = %ipa_endpoint_replenish_one.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %ipa_endpoint_replenish_one.exit.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %replenish_flags) #9
  br i1 %add_one, label %if.then22, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then22:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i55 = tail call zeroext i1 @__kasan_check_write(ptr noundef %replenish_backlog13, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %replenish_backlog13, i32 1, i32 3, i32 1) #9
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %replenish_backlog13, ptr %replenish_backlog13, i32 1, ptr elementtype(i32) %replenish_backlog13) #9, !srcloc !150
  br label %cleanup

try_again_later:                                  ; preds = %err_free_pages.i, %while.body.try_again_later_crit_edge
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %replenish_flags) #9
  %cond = select i1 %add_one, i32 2, i32 1
  %call.i.i56 = tail call zeroext i1 @__kasan_check_write(ptr noundef %replenish_backlog13, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @llvm.prefetch.p0(ptr %replenish_backlog13, i32 1, i32 3, i32 1) #9
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %replenish_backlog13, ptr %replenish_backlog13, i32 %cond, ptr elementtype(i32) %replenish_backlog13) #9, !srcloc !155
  %asmresult.i.i.i57 = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !156
  %18 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %endpoint, align 4
  %20 = ptrtoint ptr %channel_id2.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channel_id2.i.i, align 4
  %call31 = tail call i32 @gsi_channel_tre_max(ptr noundef %19, i32 noundef %21) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i57, i32 %call31)
  %cmp = icmp eq i32 %asmresult.i.i.i57, %call31
  br i1 %cmp, label %if.then32, label %try_again_later.cleanup_crit_edge

try_again_later.cleanup_crit_edge:                ; preds = %try_again_later
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then32:                                        ; preds = %try_again_later
  call void @__sanitizer_cov_trace_pc() #11
  %replenish_work = getelementptr inbounds %struct.ipa_endpoint, ptr %endpoint, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %22 = load ptr, ptr @system_wq, align 4
  %call.i.i59 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %replenish_work, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %try_again_later.cleanup_crit_edge, %if.then22, %while.end.cleanup_crit_edge, %if.then10, %if.then8.cleanup_crit_edge, %if.then2, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gsi_channel_tre_max(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gsi_trans_page_add(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_modem_skb_rx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @build_skb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gsi_channel_trans_tre_max(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipa_endpoint_replenish_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -52
  tail call fastcc void @ipa_endpoint_replenish(ptr noundef %add.ptr, i1 noundef zeroext false)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsi_channel_reset(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gsi_trans_read_byte(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsi_trans_read_byte_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

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
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !64, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128}
!llvm.named.register.sp = !{!129}
!llvm.module.flags = !{!130, !131, !132, !133, !134, !135, !136, !137}
!llvm.ident = !{!138}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ipa/ipa_endpoint.c", i32 397, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ipa_endpoint_modem_exception_reset_all._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @ipa_endpoint_modem_exception_reset_all._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ipa/ipa_endpoint.c", i32 1583, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ipa_endpoint_enable_one._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @ipa_endpoint_enable_one._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ipa/ipa_endpoint.c", i32 1622, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @ipa_endpoint_disable_one._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @ipa_endpoint_disable_one._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ipa/ipa_endpoint.c", i32 1643, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ipa_endpoint_suspend_one._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @ipa_endpoint_suspend_one._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ipa/ipa_endpoint.c", i32 1661, i32 3}
!25 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ipa_endpoint_resume_one._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @ipa_endpoint_resume_one._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ipa/ipa_endpoint.c", i32 1792, i32 3}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ipa_endpoint_config._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @ipa_endpoint_config._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ipa/ipa_endpoint.c", i32 1806, i32 3}
!35 = !{ptr @ipa_endpoint_config._entry.15, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @ipa_endpoint_config._entry_ptr.17, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ipa/ipa_endpoint.c", i32 1821, i32 4}
!39 = !{ptr @ipa_endpoint_config._entry.18, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ipa_endpoint_config._entry_ptr.20, !38, !"_entry_ptr", i1 false, i1 false}
!41 = distinct !{null, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/linux/netdevice.h", i32 4690, i32 9}
!43 = distinct !{null, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ipa/ipa_endpoint.c", i32 1302, i32 4}
!47 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ipa_endpoint_status_parse._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @ipa_endpoint_status_parse._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ipa/ipa_endpoint.c", i32 1261, i32 3}
!52 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ipa_endpoint_status_tag._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @ipa_endpoint_status_tag._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @ipa_endpoint_setup_one.__key, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/net/ipa/ipa_endpoint.c", i32 1710, i32 3}
!57 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @ipa_endpoint_setup_one.__key.28, !56, !"__key", i1 false, i1 false}
!59 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!60 = distinct !{null, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ipa/ipa_reg.h", i32 412, i32 3}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ipa/ipa_endpoint.c", i32 1540, i32 3}
!64 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @ipa_endpoint_reset._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @ipa_endpoint_reset._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ipa/ipa_endpoint.c", i32 1489, i32 3}
!69 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @ipa_endpoint_reset_rx_aggr._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @ipa_endpoint_reset_rx_aggr._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!74 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ipa/ipa_endpoint.c", i32 176, i32 3}
!78 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @ipa_endpoint_data_valid._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @ipa_endpoint_data_valid._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ipa/ipa_endpoint.c", i32 196, i32 3}
!83 = !{ptr @ipa_endpoint_data_valid._entry.39, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @ipa_endpoint_data_valid._entry_ptr.41, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ipa/ipa_endpoint.c", i32 203, i32 3}
!87 = !{ptr @ipa_endpoint_data_valid._entry.42, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @ipa_endpoint_data_valid._entry_ptr.44, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ipa/ipa_endpoint.c", i32 207, i32 3}
!91 = !{ptr @ipa_endpoint_data_valid._entry.45, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @ipa_endpoint_data_valid._entry_ptr.47, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.49, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ipa/ipa_endpoint.c", i32 211, i32 3}
!95 = !{ptr @ipa_endpoint_data_valid._entry.48, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @ipa_endpoint_data_valid._entry_ptr.50, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.52, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ipa/ipa_endpoint.c", i32 215, i32 3}
!99 = !{ptr @ipa_endpoint_data_valid._entry.51, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @ipa_endpoint_data_valid._entry_ptr.53, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.54, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ipa/ipa_endpoint.c", i32 91, i32 4}
!103 = !{ptr @.str.55, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @ipa_endpoint_data_valid_one._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @ipa_endpoint_data_valid_one._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.57, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ipa/ipa_endpoint.c", i32 103, i32 4}
!108 = !{ptr @ipa_endpoint_data_valid_one._entry.56, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @ipa_endpoint_data_valid_one._entry_ptr.58, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.60, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ipa/ipa_endpoint.c", i32 112, i32 4}
!112 = !{ptr @ipa_endpoint_data_valid_one._entry.59, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @ipa_endpoint_data_valid_one._entry_ptr.61, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.63, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ipa/ipa_endpoint.c", i32 120, i32 4}
!116 = !{ptr @ipa_endpoint_data_valid_one._entry.62, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @ipa_endpoint_data_valid_one._entry_ptr.64, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.66, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ipa/ipa_endpoint.c", i32 130, i32 5}
!120 = !{ptr @ipa_endpoint_data_valid_one._entry.65, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @ipa_endpoint_data_valid_one._entry_ptr.67, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.69, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ipa/ipa_endpoint.c", i32 141, i32 4}
!124 = !{ptr @ipa_endpoint_data_valid_one._entry.68, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @ipa_endpoint_data_valid_one._entry_ptr.70, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @ipa_endpoint_data_valid_one._entry.71, !127, !"_entry", i1 false, i1 false}
!127 = !{!"../drivers/net/ipa/ipa_endpoint.c", i32 149, i32 4}
!128 = !{ptr @ipa_endpoint_data_valid_one._entry_ptr.72, !127, !"_entry_ptr", i1 false, i1 false}
!129 = !{!"sp"}
!130 = !{i32 1, !"wchar_size", i32 2}
!131 = !{i32 1, !"min_enum_size", i32 4}
!132 = !{i32 8, !"branch-target-enforcement", i32 0}
!133 = !{i32 8, !"sign-return-address", i32 0}
!134 = !{i32 8, !"sign-return-address-all", i32 0}
!135 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!136 = !{i32 7, !"uwtable", i32 1}
!137 = !{i32 7, !"frame-pointer", i32 2}
!138 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!139 = !{i8 0, i8 2}
!140 = !{!"branch_weights", i32 2000, i32 1}
!141 = !{!"branch_weights", i32 1, i32 2000}
!142 = !{i64 7067085}
!143 = !{i64 2154607434}
!144 = !{i64 2154608789}
!145 = !{i64 7066667}
!146 = !{i32 0, i32 33}
!147 = !{i64 2148776905}
!148 = !{i64 1023833, i64 1023850, i64 1023874, i64 1023900, i64 1023918}
!149 = !{i64 2148777275}
!150 = !{i64 2148517065, i64 2148517091, i64 2148517120, i64 2148517154, i64 2148517185, i64 2148517208}
!151 = !{i64 2148516484}
!152 = !{i64 1003084, i64 1003109, i64 1003131, i64 1003147, i64 1003159, i64 1003179, i64 1003203, i64 1003219, i64 1003231}
!153 = !{i64 2148516672}
!154 = !{i64 2148602476}
!155 = !{i64 2148517785, i64 2148517817, i64 2148517846, i64 2148517880, i64 2148517911, i64 2148517934}
!156 = !{i64 2148602705}

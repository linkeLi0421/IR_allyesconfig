; ModuleID = '/llk/IR_all_yes/drivers/net/wwan/qcom_bam_dmux.c_pt.bc'
source_filename = "../drivers/net/wwan/qcom_bam_dmux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.bam_dmux = type { ptr, i32, i8, i8, ptr, ptr, i32, i32, %struct.wait_queue_head, %struct.completion, ptr, ptr, [32 x %struct.bam_dmux_skb_dma], [32 x %struct.bam_dmux_skb_dma], %struct.spinlock, i32, %struct.atomic_t, %struct.work_struct, [1 x i32], %struct.work_struct, [8 x ptr] }
%struct.bam_dmux_skb_dma = type { ptr, ptr, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
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
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.123, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.123 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.bam_dmux_hdr = type { i16, i8, i8, i8, i8, i16 }
%struct.bam_dmux_netdev = type { ptr, i8 }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }

@__initcall__kmod_qcom_bam_dmux__375_903_bam_dmux_driver_init6 = internal global ptr @bam_dmux_driver_init, section ".initcall6.init", align 4
@bam_dmux_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bam_dmux_probe, ptr @bam_dmux_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bam_dmux_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bam_dmux_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bam_dmux_driver_exit = internal global ptr @bam_dmux_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file376 = internal constant [50 x i8] c"qcom_bam_dmux.file=drivers/net/wwan/qcom_bam_dmux\00", section ".modinfo", align 1
@__UNIQUE_ID_license377 = internal constant [29 x i8] c"qcom_bam_dmux.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description378 = internal constant [64 x i8] c"qcom_bam_dmux.description=Qualcomm BAM-DMUX WWAN Network Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author379 = internal constant [59 x i8] c"qcom_bam_dmux.author=Stephan Gerhold <stephan@gerhold.net>\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bam-dmux\00", [23 x i8] zeroinitializer }, align 32
@bam_dmux_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,bam-dmux\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@bam_dmux_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bam_dmux_runtime_suspend, ptr @bam_dmux_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"pc\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pc-ack\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to get pc state\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to get pc-ack state\0A\00", [36 x i8] zeroinitializer }, align 32
@bam_dmux_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&dmux->pc_wait\00", [17 x i8] zeroinitializer }, align 32
@bam_dmux_probe.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&dmux->tx_lock\00", [17 x i8] zeroinitializer }, align 32
@bam_dmux_probe.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&dmux->tx_wakeup_work)\00", [55 x i8] zeroinitializer }, align 32
@bam_dmux_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&dmux->register_netdev_work)\00", [49 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@bam_dmux_tx_wakeup_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.15, i32 385, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to resume: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bam_dmux_tx_wakeup_work\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/net/wwan/qcom_bam_dmux.c\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bam_dmux_tx_wakeup_work._entry_ptr = internal global ptr @bam_dmux_tx_wakeup_work._entry, section ".printk_index", align 4
@bam_dmux_tx_wakeup_work.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.14, ptr @.str.15, ptr @.str.19, i8 0, i8 98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qcom_bam_dmux\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"pending skbs after wakeup: %#lx\0A\00", [63 x i8] zeroinitializer }, align 32
@bam_dmux_skb_dma_submit_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.15, i32 196, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to prepare TX DMA buffer\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bam_dmux_skb_dma_submit_tx\00", [37 x i8] zeroinitializer }, align 32
@bam_dmux_skb_dma_submit_tx._entry_ptr = internal global ptr @bam_dmux_skb_dma_submit_tx._entry, section ".printk_index", align 4
@bam_dmux_tx_wake_queues.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.22, ptr @.str.15, ptr @.str.23, i8 0, i8 34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bam_dmux_tx_wake_queues\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wake queues\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wwan%d\00", [25 x i8] zeroinitializer }, align 32
@bam_dmux_register_netdev_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.15, i32 459, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to register netdev for channel %u: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bam_dmux_register_netdev_work\00", [34 x i8] zeroinitializer }, align 32
@bam_dmux_register_netdev_work._entry_ptr = internal global ptr @bam_dmux_register_netdev_work._entry, section ".printk_index", align 4
@bam_dmux_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @bam_dmux_netdev_open, ptr @bam_dmux_netdev_stop, ptr @bam_dmux_netdev_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@wwan_type = internal constant { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str.33, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bam_dmux_tx_stop_queues.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.27, ptr @.str.15, ptr @.str.28, i8 0, i8 37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bam_dmux_tx_stop_queues\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stop queues\0A\00", [19 x i8] zeroinitializer }, align 32
@bam_dmux_skb_dma_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.15, i32 117, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to DMA map buffer\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bam_dmux_skb_dma_map\00", [43 x i8] zeroinitializer }, align 32
@bam_dmux_skb_dma_map._entry_ptr = internal global ptr @bam_dmux_skb_dma_map._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@pm_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wwan\00", [27 x i8] zeroinitializer }, align 32
@bam_dmux_pc_ack_irq.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.34, ptr @.str.15, ptr @.str.35, i8 0, i8 -81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bam_dmux_pc_ack_irq\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pc ack\0A\00", [24 x i8] zeroinitializer }, align 32
@bam_dmux_pc_irq.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.36, ptr @.str.15, ptr @.str.37, i8 0, i8 -86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bam_dmux_pc_irq\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pc: %u\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@bam_dmux_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.15, i32 627, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to request RX DMA channel: %pe\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bam_dmux_power_on\00", [46 x i8] zeroinitializer }, align 32
@bam_dmux_power_on._entry_ptr = internal global ptr @bam_dmux_power_on._entry, section ".printk_index", align 4
@bam_dmux_skb_dma_submit_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.15, i32 479, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to prepare RX DMA buffer\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bam_dmux_skb_dma_submit_rx\00", [37 x i8] zeroinitializer }, align 32
@bam_dmux_skb_dma_submit_rx._entry_ptr = internal global ptr @bam_dmux_skb_dma_submit_rx._entry, section ".printk_index", align 4
@bam_dmux_rx_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.15, i32 586, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid magic in header: %#x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bam_dmux_rx_callback\00", [43 x i8] zeroinitializer }, align 32
@bam_dmux_rx_callback._entry_ptr = internal global ptr @bam_dmux_rx_callback._entry, section ".printk_index", align 4
@bam_dmux_rx_callback.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.44, ptr @.str.15, ptr @.str.45, i8 0, i8 -109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unsupported channel: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@bam_dmux_rx_callback._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.44, ptr @.str.15, i32 607, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unsupported command %u on channel %u\0A\00", [58 x i8] zeroinitializer }, align 32
@bam_dmux_rx_callback._entry_ptr.48 = internal global ptr @bam_dmux_rx_callback._entry.46, section ".printk_index", align 4
@bam_dmux_cmd_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.15, i32 510, ptr @.str.51, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Data for inactive channel %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bam_dmux_cmd_data\00", [46 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@bam_dmux_cmd_data._entry_ptr = internal global ptr @bam_dmux_cmd_data._entry, section ".printk_index", align 4
@bam_dmux_cmd_data._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.50, ptr @.str.15, i32 516, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Data larger than buffer? (%u > %u)\0A\00", [60 x i8] zeroinitializer }, align 32
@bam_dmux_cmd_data._entry_ptr.54 = internal global ptr @bam_dmux_cmd_data._entry.52, section ".printk_index", align 4
@bam_dmux_cmd_open.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.55, ptr @.str.15, ptr @.str.56, i8 0, i8 -120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bam_dmux_cmd_open\00", [46 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"open channel: %u\0A\00", [46 x i8] zeroinitializer }, align 32
@bam_dmux_cmd_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.15, i32 549, ptr @.str.51, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Channel already open: %u\0A\00", [38 x i8] zeroinitializer }, align 32
@bam_dmux_cmd_open._entry_ptr = internal global ptr @bam_dmux_cmd_open._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@bam_dmux_cmd_close.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.58, ptr @.str.15, ptr @.str.59, i8 0, i8 -115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bam_dmux_cmd_close\00", [45 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"close channel: %u\0A\00", [45 x i8] zeroinitializer }, align 32
@bam_dmux_cmd_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.15, i32 568, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Channel not open: %u\0A\00", [42 x i8] zeroinitializer }, align 32
@bam_dmux_cmd_close._entry_ptr = internal global ptr @bam_dmux_cmd_close._entry, section ".printk_index", align 4
@.str.61 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@bam_dmux_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.15, i32 874, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Timed out waiting for remote side to suspend\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bam_dmux_remove\00", [16 x i8] zeroinitializer }, align 32
@bam_dmux_remove._entry_ptr = internal global ptr @bam_dmux_remove._entry, section ".printk_index", align 4
@bam_dmux_runtime_suspend.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.64, ptr @.str.15, ptr @.str.65, i8 0, i8 -78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bam_dmux_runtime_suspend\00", [39 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"runtime suspend\0A\00", [47 x i8] zeroinitializer }, align 32
@bam_dmux_runtime_resume.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.66, ptr @.str.15, ptr @.str.67, i8 0, i8 -76, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bam_dmux_runtime_resume\00", [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"runtime resume\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@bam_dmux_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.66, ptr @.str.15, i32 759, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to request TX DMA channel: %pe\0A\00", [57 x i8] zeroinitializer }, align 32
@bam_dmux_runtime_resume._entry_ptr = internal global ptr @bam_dmux_runtime_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.70 = private unnamed_addr constant [16 x i8] c"bam_dmux_driver\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 894, i32 31 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 898, i32 11 }
@___asan_gen_.76 = private unnamed_addr constant [18 x i8] c"bam_dmux_of_match\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 888, i32 34 }
@___asan_gen_.79 = private unnamed_addr constant [16 x i8] c"bam_dmux_pm_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 884, i32 32 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 782, i32 47 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 786, i32 45 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 793, i32 10 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 799, i32 10 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 802, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 806, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 807, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 808, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 87, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 385, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 393, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 196, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 136, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 444, i32 12 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 458, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant [13 x i8] c"bam_dmux_ops\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 404, i32 36 }
@___asan_gen_.178 = private unnamed_addr constant [10 x i8] c"wwan_type\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 410, i32 33 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 150, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 117, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 326, i32 6 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 411, i32 10 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 703, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 681, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 625, i32 35 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 627, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 479, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 586, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 591, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 606, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 510, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 515, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 546, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 549, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 565, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 568, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1169, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 874, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 713, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 723, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 757, i32 35 }
@___asan_gen_.325 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.328 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.329 = private constant [36 x i8] c"../drivers/net/wwan/qcom_bam_dmux.c\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 759, i32 3 }
@llvm.compiler.used = appending global [108 x ptr] [ptr @__UNIQUE_ID_author379, ptr @__UNIQUE_ID_description378, ptr @__UNIQUE_ID_file376, ptr @__UNIQUE_ID_license377, ptr @__exitcall_bam_dmux_driver_exit, ptr @__initcall__kmod_qcom_bam_dmux__375_903_bam_dmux_driver_init6, ptr @bam_dmux_cmd_close._entry, ptr @bam_dmux_cmd_close._entry_ptr, ptr @bam_dmux_cmd_data._entry, ptr @bam_dmux_cmd_data._entry.52, ptr @bam_dmux_cmd_data._entry_ptr, ptr @bam_dmux_cmd_data._entry_ptr.54, ptr @bam_dmux_cmd_open._entry, ptr @bam_dmux_cmd_open._entry_ptr, ptr @bam_dmux_driver_exit, ptr @bam_dmux_power_on._entry, ptr @bam_dmux_power_on._entry_ptr, ptr @bam_dmux_register_netdev_work._entry, ptr @bam_dmux_register_netdev_work._entry_ptr, ptr @bam_dmux_remove._entry, ptr @bam_dmux_remove._entry_ptr, ptr @bam_dmux_runtime_resume._entry, ptr @bam_dmux_runtime_resume._entry_ptr, ptr @bam_dmux_rx_callback._entry, ptr @bam_dmux_rx_callback._entry.46, ptr @bam_dmux_rx_callback._entry_ptr, ptr @bam_dmux_rx_callback._entry_ptr.48, ptr @bam_dmux_skb_dma_map._entry, ptr @bam_dmux_skb_dma_map._entry_ptr, ptr @bam_dmux_skb_dma_submit_rx._entry, ptr @bam_dmux_skb_dma_submit_rx._entry_ptr, ptr @bam_dmux_skb_dma_submit_tx._entry, ptr @bam_dmux_skb_dma_submit_tx._entry_ptr, ptr @bam_dmux_tx_wakeup_work._entry, ptr @bam_dmux_tx_wakeup_work._entry_ptr, ptr @bam_dmux_driver, ptr @.str, ptr @bam_dmux_of_match, ptr @bam_dmux_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @bam_dmux_probe.__key, ptr @.str.5, ptr @bam_dmux_probe.__key.6, ptr @.str.7, ptr @bam_dmux_probe.__key.8, ptr @.str.9, ptr @bam_dmux_probe.__key.10, ptr @.str.11, ptr @init_completion.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @bam_dmux_ops, ptr @wwan_type, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69], section "llvm.metadata"
@0 = internal global [87 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bam_dmux_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bam_dmux_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bam_dmux_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bam_dmux_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bam_dmux_probe.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bam_dmux_probe.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bam_dmux_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bam_dmux_tx_wakeup_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bam_dmux_skb_dma_submit_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bam_dmux_register_netdev_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bam_dmux_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wwan_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bam_dmux_skb_dma_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bam_dmux_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bam_dmux_skb_dma_submit_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bam_dmux_rx_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bam_dmux_rx_callback._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bam_dmux_cmd_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bam_dmux_cmd_data._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bam_dmux_cmd_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bam_dmux_cmd_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bam_dmux_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bam_dmux_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bam_dmux_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bam_dmux_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bam_dmux_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @bam_dmux_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bam_dmux_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %bit = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit) #7
  %0 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bit, align 4, !annotation !176
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1088, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.1) #7
  %pc_irq = getelementptr inbounds %struct.bam_dmux, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %pc_irq to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call3, ptr %pc_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call12 = call ptr @devm_qcom_smem_state_get(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef nonnull %bit) #7
  %pc = getelementptr inbounds %struct.bam_dmux, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %pc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call12, ptr %pc, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call12 to i32
  %call18 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %5, ptr noundef nonnull @.str.3) #7
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  %6 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bit, align 4
  %shl = shl nuw i32 1, %7
  %pc_mask = getelementptr inbounds %struct.bam_dmux, ptr %call.i, i32 0, i32 6
  %8 = ptrtoint ptr %pc_mask to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shl, ptr %pc_mask, align 4
  %call20 = call ptr @devm_qcom_smem_state_get(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef nonnull %bit) #7
  %pc_ack = getelementptr inbounds %struct.bam_dmux, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %pc_ack to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call20, ptr %pc_ack, align 4
  %cmp.i148 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i148, label %if.then23, label %if.end27

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %call20 to i32
  %call26 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %10, ptr noundef nonnull @.str.4) #7
  br label %cleanup

if.end27:                                         ; preds = %if.end19
  %11 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bit, align 4
  %shl28 = shl nuw i32 1, %12
  %pc_ack_mask = getelementptr inbounds %struct.bam_dmux, ptr %call.i, i32 0, i32 7
  %13 = ptrtoint ptr %pc_ack_mask to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shl28, ptr %pc_ack_mask, align 4
  %pc_wait = getelementptr inbounds %struct.bam_dmux, ptr %call.i, i32 0, i32 8
  call void @__init_waitqueue_head(ptr noundef %pc_wait, ptr noundef nonnull @.str.5, ptr noundef nonnull @bam_dmux_probe.__key) #7
  %pc_ack_completion = getelementptr inbounds %struct.bam_dmux, ptr %call.i, i32 0, i32 9
  %14 = ptrtoint ptr %pc_ack_completion to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %pc_ack_completion, align 4
  %wait.i = getelementptr inbounds %struct.bam_dmux, ptr %call.i, i32 0, i32 9, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @init_completion.__key) #7
  call void @complete_all(ptr noundef %pc_ack_completion) #7
  %tx_lock = getelementptr inbounds %struct.bam_dmux, ptr %call.i, i32 0, i32 14
  call void @__raw_spin_lock_init(ptr noundef %tx_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @bam_dmux_probe.__key.6, i16 noundef signext 3) #7
  %tx_wakeup_work = getelementptr inbounds %struct.bam_dmux, ptr %call.i, i32 0, i32 17
  call void @__init_work(ptr noundef %tx_wakeup_work, i32 noundef 0) #7
  %15 = ptrtoint ptr %tx_wakeup_work to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -64, ptr %tx_wakeup_work, align 4
  %lockdep_map = getelementptr inbounds %struct.bam_dmux, ptr %call.i, i32 0, i32 17, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.9, ptr noundef nonnull @bam_dmux_probe.__key.8, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry38 = getelementptr inbounds %struct.bam_dmux, ptr %call.i, i32 0, i32 17, i32 1
  %16 = ptrtoint ptr %entry38 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry38, ptr %entry38, align 4
  %prev.i = getelementptr inbounds %struct.bam_dmux, ptr %call.i, i32 0, i32 17, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry38, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.bam_dmux, ptr %call.i, i32 0, i32 17, i32 2
  %18 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @bam_dmux_tx_wakeup_work, ptr %func, align 4
  %register_netdev_work = getelementptr inbounds %struct.bam_dmux, ptr %call.i, i32 0, i32 19
  call void @__init_work(ptr noundef %register_netdev_work, i32 noundef 0) #7
  %19 = ptrtoint ptr %register_netdev_work to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -64, ptr %register_netdev_work, align 4
  %lockdep_map48 = getelementptr inbounds %struct.bam_dmux, ptr %call.i, i32 0, i32 19, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map48, ptr noundef nonnull @.str.11, ptr noundef nonnull @bam_dmux_probe.__key.10, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry50 = getelementptr inbounds %struct.bam_dmux, ptr %call.i, i32 0, i32 19, i32 1
  %20 = ptrtoint ptr %entry50 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %entry50, ptr %entry50, align 4
  %prev.i149 = getelementptr inbounds %struct.bam_dmux, ptr %call.i, i32 0, i32 19, i32 1, i32 1
  %21 = ptrtoint ptr %prev.i149 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %entry50, ptr %prev.i149, align 4
  %func52 = getelementptr inbounds %struct.bam_dmux, ptr %call.i, i32 0, i32 19, i32 2
  %22 = ptrtoint ptr %func52 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @bam_dmux_register_netdev_work, ptr %func52, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end27
  %i.0150 = phi i32 [ 0, %if.end27 ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.bam_dmux, ptr %call.i, i32 0, i32 12, i32 %i.0150
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %arrayidx, align 4
  %arrayidx57 = getelementptr %struct.bam_dmux, ptr %call.i, i32 0, i32 13, i32 %i.0150
  %24 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %arrayidx57, align 4
  %inc = add nuw nsw i32 %i.0150, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 1000) #7
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #7
  call void @pm_runtime_enable(ptr noundef %dev1) #7
  %call59 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call8, ptr noundef null, ptr noundef nonnull @bam_dmux_pc_ack_irq, i32 noundef 8192, ptr noundef null, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end62:                                         ; preds = %for.end
  %25 = ptrtoint ptr %pc_irq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pc_irq, align 4
  %call64 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %26, ptr noundef null, ptr noundef nonnull @bam_dmux_pc_irq, i32 noundef 8192, ptr noundef null, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end67:                                         ; preds = %if.end62
  %27 = ptrtoint ptr %pc_irq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pc_irq, align 4
  %pc_state = getelementptr inbounds %struct.bam_dmux, ptr %call.i, i32 0, i32 2
  %call69 = call i32 @irq_get_irqchip_state(i32 noundef %28, i32 noundef 3, ptr noundef %pc_state) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end72:                                         ; preds = %if.end67
  %29 = ptrtoint ptr %pc_state to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %pc_state, align 4, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool74.not = icmp eq i8 %30, 0
  br i1 %tobool74.not, label %if.end72.cleanup_crit_edge, label %if.then75

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then75:                                        ; preds = %if.end72
  %call76 = call fastcc zeroext i1 @bam_dmux_power_on(ptr noundef nonnull %call.i)
  br i1 %call76, label %if.then77, label %if.else

if.then77:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @bam_dmux_pc_ack(ptr noundef nonnull %call.i)
  br label %cleanup

if.else:                                          ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @bam_dmux_power_off(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then77, %if.end72.cleanup_crit_edge, %if.end67.cleanup_crit_edge, %if.end62.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then23, %if.then15, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.then15 ], [ %call26, %if.then23 ], [ -12, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ], [ %call59, %for.end.cleanup_crit_edge ], [ %call64, %if.end62.cleanup_crit_edge ], [ %call69, %if.end67.cleanup_crit_edge ], [ 0, %if.then77 ], [ 0, %if.else ], [ 0, %if.end72.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bam_dmux_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #7
  %4 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %5 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list, ptr %list, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %4, align 4
  %register_netdev_work = getelementptr inbounds %struct.bam_dmux, ptr %1, i32 0, i32 19
  %call2 = call zeroext i1 @cancel_work_sync(ptr noundef %register_netdev_work) #7
  call void @rtnl_lock() #7
  %arrayidx = getelementptr %struct.bam_dmux, ptr %1, i32 0, i32 20, i32 0
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @unregister_netdevice_queue(ptr noundef nonnull %8, ptr noundef nonnull %list) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.bam_dmux, ptr %1, i32 0, i32 20, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %10, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  call void @unregister_netdevice_queue(ptr noundef nonnull %10, ptr noundef nonnull %list) #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.bam_dmux, ptr %1, i32 0, i32 20, i32 2
  %11 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %12, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  call void @unregister_netdevice_queue(ptr noundef nonnull %12, ptr noundef nonnull %list) #7
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.bam_dmux, ptr %1, i32 0, i32 20, i32 3
  %13 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %14, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  call void @unregister_netdevice_queue(ptr noundef nonnull %14, ptr noundef nonnull %list) #7
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.bam_dmux, ptr %1, i32 0, i32 20, i32 4
  %15 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %16, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  call void @unregister_netdevice_queue(ptr noundef nonnull %16, ptr noundef nonnull %list) #7
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.bam_dmux, ptr %1, i32 0, i32 20, i32 5
  %17 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %18, null
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  call void @unregister_netdevice_queue(ptr noundef nonnull %18, ptr noundef nonnull %list) #7
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr %struct.bam_dmux, ptr %1, i32 0, i32 20, i32 6
  %19 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.6, align 4
  %tobool.not.6 = icmp eq ptr %20, null
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  call void @unregister_netdevice_queue(ptr noundef nonnull %20, ptr noundef nonnull %list) #7
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5.for.inc.6_crit_edge
  %arrayidx.7 = getelementptr %struct.bam_dmux, ptr %1, i32 0, i32 20, i32 7
  %21 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.7, align 4
  %tobool.not.7 = icmp eq ptr %22, null
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  call void @unregister_netdevice_queue(ptr noundef nonnull %22, ptr noundef nonnull %list) #7
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then.7, %for.inc.6.for.inc.7_crit_edge
  call void @unregister_netdevice_many(ptr noundef nonnull %list) #7
  call void @rtnl_unlock() #7
  %tx_wakeup_work = getelementptr inbounds %struct.bam_dmux, ptr %1, i32 0, i32 17
  %call5 = call zeroext i1 @cancel_work_sync(ptr noundef %tx_wakeup_work) #7
  call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #7
  call void @__pm_runtime_use_autosuspend(ptr noundef %3, i1 noundef zeroext false) #7
  %driver_data.i.i88 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %23 = ptrtoint ptr %driver_data.i.i88 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %driver_data.i.i88, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bam_dmux_runtime_suspend.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bam_dmux_remove, %if.then.i)) #7
          to label %bam_dmux_runtime_suspend.exit [label %if.then.i], !srcloc !178

if.then.i:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bam_dmux_runtime_suspend.__UNIQUE_ID_ddebug373, ptr noundef %3, ptr noundef nonnull @.str.65) #7
  br label %bam_dmux_runtime_suspend.exit

bam_dmux_runtime_suspend.exit:                    ; preds = %if.then.i, %for.inc.7
  %pc_ack_completion.i.i = getelementptr inbounds %struct.bam_dmux, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %pc_ack_completion.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %pc_ack_completion.i.i, align 4
  %pc.i.i = getelementptr inbounds %struct.bam_dmux, ptr %24, i32 0, i32 4
  %26 = ptrtoint ptr %pc.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pc.i.i, align 4
  %pc_mask.i.i = getelementptr inbounds %struct.bam_dmux, ptr %24, i32 0, i32 6
  %28 = ptrtoint ptr %pc_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pc_mask.i.i, align 4
  %call.i.i = call i32 @qcom_smem_state_update_bits(ptr noundef %27, i32 noundef %29, i32 noundef 0) #7
  %call.i = call i32 @__pm_runtime_set_status(ptr noundef %3, i32 noundef 2) #7
  call void @__might_sleep(ptr noundef nonnull @.str.15, i32 noundef 873) #7
  %rx = getelementptr inbounds %struct.bam_dmux, ptr %1, i32 0, i32 10
  %30 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rx, align 4
  %tobool12.not = icmp eq ptr %31, null
  br i1 %tobool12.not, label %bam_dmux_runtime_suspend.exit.if.end57_crit_edge, label %if.then21

bam_dmux_runtime_suspend.exit.if.end57_crit_edge: ; preds = %bam_dmux_runtime_suspend.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then21:                                        ; preds = %bam_dmux_runtime_suspend.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %32 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %pc_wait = getelementptr inbounds %struct.bam_dmux, ptr %1, i32 0, i32 8
  %call2597 = call i32 @prepare_to_wait_event(ptr noundef %pc_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %33 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rx, align 4
  %tobool28.not98 = icmp eq ptr %34, null
  br i1 %tobool28.not98, label %if.end50.thread, label %if.then21.cleanup_crit_edge

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  br label %cleanup

if.end50.thread:                                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  call void @finish_wait(ptr noundef %pc_wait, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %if.end57

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then21.cleanup_crit_edge
  %__ret22.199 = phi i32 [ %__ret22.1, %cleanup.cleanup_crit_edge ], [ 200, %if.then21.cleanup_crit_edge ]
  %call46 = call i32 @schedule_timeout(i32 noundef %__ret22.199) #7
  %call25 = call i32 @prepare_to_wait_event(ptr noundef %pc_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %35 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rx, align 4
  %tobool28.not = icmp eq ptr %36, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool33.not = icmp eq i32 %call46, 0
  %37 = select i1 %tobool28.not, i1 %tobool33.not, i1 false
  %__ret22.1 = select i1 %37, i32 1, i32 %call46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret22.1)
  %tobool39.not = icmp eq i32 %__ret22.1, 0
  %38 = select i1 %tobool28.not, i1 true, i1 %tobool39.not
  br i1 %38, label %if.end50, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end50:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret22.1)
  %phi.cmp = icmp eq i32 %__ret22.1, 0
  call void @finish_wait(ptr noundef %pc_wait, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br i1 %phi.cmp, label %do.end56, label %if.end50.if.end57_crit_edge

if.end50.if.end57_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

do.end56:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.62) #10
  br label %if.end57

if.end57:                                         ; preds = %do.end56, %if.end50.if.end57_crit_edge, %if.end50.thread, %bam_dmux_runtime_suspend.exit.if.end57_crit_edge
  %pc_irq = getelementptr inbounds %struct.bam_dmux, ptr %1, i32 0, i32 1
  %39 = ptrtoint ptr %pc_irq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pc_irq, align 4
  call void @disable_irq(i32 noundef %40) #7
  call fastcc void @bam_dmux_power_off(ptr noundef %1)
  %tx_skbs = getelementptr inbounds %struct.bam_dmux, ptr %1, i32 0, i32 13
  br label %for.body.i

for.body.i:                                       ; preds = %if.end5.i.for.body.i_crit_edge, %if.end57
  %i.012.i = phi i32 [ 0, %if.end57 ], [ %inc.i, %if.end5.i.for.body.i_crit_edge ]
  %addr.i = getelementptr %struct.bam_dmux_skb_dma, ptr %tx_skbs, i32 %i.012.i, i32 2
  %41 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i89

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i89:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.bam_dmux_skb_dma, ptr %tx_skbs, i32 %i.012.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %skb.i.i = getelementptr %struct.bam_dmux_skb_dma, ptr %tx_skbs, i32 %i.012.i, i32 1
  %47 = ptrtoint ptr %skb.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %skb.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len.i.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %46, i32 noundef %42, i32 noundef %50, i32 noundef 1, i32 noundef 0) #7
  %51 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %addr.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i89, %for.body.i.if.end.i_crit_edge
  %skb.i = getelementptr %struct.bam_dmux_skb_dma, ptr %tx_skbs, i32 %i.012.i, i32 1
  %52 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %skb.i, align 4
  %tobool1.not.i = icmp eq ptr %53, null
  br i1 %tobool1.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then2.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @consume_skb(ptr noundef nonnull %53) #7
  %54 = ptrtoint ptr %skb.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %skb.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then2.i, %if.end.i.if.end5.i_crit_edge
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %bam_dmux_free_skbs.exit, label %if.end5.i.for.body.i_crit_edge

if.end5.i.for.body.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

bam_dmux_free_skbs.exit:                          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_qcom_smem_state_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bam_dmux_tx_wakeup_work(ptr noundef %work) #2 align 64 {
entry:
  %sg.i.i = alloca %struct.scatterlist, align 4
  %pending = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -964
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pending) #7
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !179
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #7, !srcloc !180
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !181
  br label %do.end

do.end:                                           ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.13, i32 noundef %call.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_deferred_skb = getelementptr i8, ptr %work, i32 -4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_deferred_skb, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !182
  tail call void @llvm.prefetch.p0(ptr %tx_deferred_skb, i32 1, i32 3, i32 1) #7
  %5 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %tx_deferred_skb) #7, !srcloc !183
  %asmresult.i.i.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !184
  %6 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %asmresult.i.i.i, ptr %pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %tobool.not = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not, label %if.end.out_crit_edge, label %do.body5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.body5:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bam_dmux_tx_wakeup_work.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bam_dmux_tx_wakeup_work, %if.then11)) #7
          to label %do.end15 [label %if.then11], !srcloc !178

if.then11:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  %9 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pending, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bam_dmux_tx_wakeup_work.__UNIQUE_ID_ddebug367, ptr noundef %8, ptr noundef nonnull @.str.19, i32 noundef %10) #7
  br label %do.end15

do.end15:                                         ; preds = %if.then11, %do.body5
  %call16 = call i32 @_find_next_bit_be(ptr noundef nonnull %pending, i32 noundef 32, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call16)
  %cmp1744 = icmp slt i32 %call16, 32
  br i1 %cmp1744, label %for.body.lr.ph, label %do.end15.for.end_crit_edge

do.end15.for.end_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end15
  %tx_skbs = getelementptr i8, ptr %work, i32 -436
  %11 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i, i32 0, i32 3
  %12 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %bam_dmux_skb_dma_submit_tx.exit.for.body_crit_edge, %for.body.lr.ph
  %i.045 = phi i32 [ %call16, %for.body.lr.ph ], [ %call19, %bam_dmux_skb_dma_submit_tx.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x %struct.bam_dmux_skb_dma], ptr %tx_skbs, i32 0, i32 %i.045
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %tx.i = getelementptr inbounds %struct.bam_dmux, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx.i, align 4
  %addr.i = getelementptr inbounds %struct.bam_dmux_skb_dma, ptr %arrayidx, i32 0, i32 2
  %17 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr.i, align 4
  %skb.i = getelementptr inbounds %struct.bam_dmux_skb_dma, ptr %arrayidx, i32 0, i32 1
  %19 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %skb.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i) #7
  %23 = call ptr @memset(ptr %sg.i.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i.i, i32 noundef 1) #7
  %24 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %18, ptr %11, align 4
  %25 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %22, ptr %12, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %for.body.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %lor.lhs.false.i.i

for.body.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_prep_slave_single.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %for.body
  %26 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %16, align 4
  %tobool1.not.i.i = icmp eq ptr %27, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_prep_slave_single.exit.thread.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %27, i32 0, i32 39
  %28 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %29, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %dmaengine_prep_slave_single.exit.i

lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_prep_slave_single.exit.thread.i

dmaengine_prep_slave_single.exit.thread.i:        ; preds = %lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, %lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, %for.body.dmaengine_prep_slave_single.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #7
  br label %do.end.i

dmaengine_prep_slave_single.exit.i:               ; preds = %lor.lhs.false2.i.i
  %call.i.i37 = call ptr %29(ptr noundef nonnull %16, ptr noundef nonnull %sg.i.i, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #7
  %tobool.not.i = icmp eq ptr %call.i.i37, null
  br i1 %tobool.not.i, label %dmaengine_prep_slave_single.exit.i.do.end.i_crit_edge, label %if.end.i

dmaengine_prep_slave_single.exit.i.do.end.i_crit_edge: ; preds = %dmaengine_prep_slave_single.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %dmaengine_prep_slave_single.exit.i.do.end.i_crit_edge, %dmaengine_prep_slave_single.exit.thread.i
  %30 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %14, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.20) #10
  br label %bam_dmux_skb_dma_submit_tx.exit

if.end.i:                                         ; preds = %dmaengine_prep_slave_single.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i37, i32 0, i32 6
  %32 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @bam_dmux_tx_callback, ptr %callback.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i37, i32 0, i32 8
  %33 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %arrayidx, ptr %callback_param.i, align 4
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i37, i32 0, i32 4
  %34 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i12.i = call i32 %35(ptr noundef nonnull %call.i.i37) #7
  %36 = ptrtoint ptr %call.i.i37 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call.i12.i, ptr %call.i.i37, align 4
  br label %bam_dmux_skb_dma_submit_tx.exit

bam_dmux_skb_dma_submit_tx.exit:                  ; preds = %if.end.i, %do.end.i
  %add = add nsw i32 %i.045, 1
  %call19 = call i32 @_find_next_bit_be(ptr noundef nonnull %pending, i32 noundef 32, i32 noundef %add) #7
  %cmp17 = icmp slt i32 %call19, 32
  br i1 %cmp17, label %bam_dmux_skb_dma_submit_tx.exit.for.body_crit_edge, label %bam_dmux_skb_dma_submit_tx.exit.for.end_crit_edge

bam_dmux_skb_dma_submit_tx.exit.for.end_crit_edge: ; preds = %bam_dmux_skb_dma_submit_tx.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

bam_dmux_skb_dma_submit_tx.exit.for.body_crit_edge: ; preds = %bam_dmux_skb_dma_submit_tx.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %bam_dmux_skb_dma_submit_tx.exit.for.end_crit_edge, %do.end15.for.end_crit_edge
  %tx = getelementptr i8, ptr %work, i32 -824
  %37 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tx, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %40, i32 0, i32 50
  %41 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device_issue_pending.i, align 4
  call void %42(ptr noundef %38) #7
  br label %out

out:                                              ; preds = %for.end, %if.end.out_crit_edge
  %43 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr, align 4
  %call.i38 = call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %44, i32 0, i32 12, i32 22
  %45 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store volatile i64 %call.i38, ptr %last_busy.i, align 8
  %46 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr, align 4
  %call.i39 = call i32 @__pm_runtime_suspend(ptr noundef %47, i32 noundef 13) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pending) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bam_dmux_register_netdev_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1012
  %remote_channels = getelementptr i8, ptr %work, i32 -4
  %call = tail call i32 @_find_next_bit_be(ptr noundef %remote_channels, i32 noundef 8, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call)
  %cmp45 = icmp slt i32 %call, 8
  br i1 %cmp45, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %netdevs = getelementptr i8, ptr %work, i32 44
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ch.046 = phi i32 [ %call, %for.body.lr.ph ], [ %call19, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x ptr], ptr %netdevs, i32 0, i32 %ch.046
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call1 = tail call ptr @alloc_netdev_mqs(i32 noundef 8, ptr noundef nonnull @.str.24, i8 noundef zeroext 1, ptr noundef nonnull @bam_dmux_netdev_setup, i32 noundef 1, i32 noundef 1) #7
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 133, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %parent, align 8
  %conv = trunc i32 %ch.046 to i16
  %dev_port = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 61
  %5 = ptrtoint ptr %dev_port to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %dev_port, align 4
  %add.ptr.i = getelementptr i8, ptr %call1, i32 2304
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %add.ptr.i, align 4
  %conv8 = trunc i32 %ch.046 to i8
  %ch9 = getelementptr i8, ptr %call1, i32 2308
  %7 = ptrtoint ptr %ch9 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv8, ptr %ch9, align 4
  %call10 = tail call i32 @register_netdev(ptr noundef nonnull %call1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end14, label %do.end

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.25, i32 noundef %ch.046, i32 noundef %call10) #10
  tail call void @free_netdev(ptr noundef nonnull %call1) #7
  br label %cleanup

if.end14:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call1, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end14, %for.body.for.inc_crit_edge
  %add = add nsw i32 %ch.046, 1
  %call19 = tail call i32 @_find_next_bit_be(ptr noundef %remote_channels, i32 noundef 8, i32 noundef %add) #7
  %cmp = icmp slt i32 %call19, 8
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bam_dmux_pc_ack_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bam_dmux_pc_ack_irq.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bam_dmux_pc_ack_irq, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !178

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bam_dmux_pc_ack_irq.__UNIQUE_ID_ddebug372, ptr noundef %1, ptr noundef nonnull @.str.35) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pc_ack_completion = getelementptr inbounds %struct.bam_dmux, ptr %data, i32 0, i32 9
  tail call void @complete_all(ptr noundef %pc_ack_completion) #7
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bam_dmux_pc_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %dma_rx_conf.i = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pc_state = getelementptr inbounds %struct.bam_dmux, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %pc_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pc_state, align 4, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bam_dmux_pc_irq.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bam_dmux_pc_irq, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !178

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = xor i8 %1, 1
  %5 = zext i8 %4 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bam_dmux_pc_irq.__UNIQUE_ID_ddebug371, ptr noundef %3, ptr noundef nonnull @.str.37, i32 noundef %5) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  br i1 %tobool.not, label %if.then8, label %if.else12

if.then8:                                         ; preds = %do.end
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %dma_rx_conf.i) #7
  %8 = getelementptr inbounds i8, ptr %dma_rx_conf.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 44)
  %10 = ptrtoint ptr %dma_rx_conf.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %dma_rx_conf.i, align 4
  %11 = getelementptr inbounds { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [3 x i8], ptr, i32 }, ptr %dma_rx_conf.i, i32 0, i32 5
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2048, ptr %11, align 4
  %call.i = tail call ptr @dma_request_chan(ptr noundef %7, ptr noundef nonnull @.str.38) #7
  %rx.i = getelementptr inbounds %struct.bam_dmux, ptr %data, i32 0, i32 10
  %13 = ptrtoint ptr %rx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %rx.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.39, ptr noundef nonnull %call.i) #10
  %14 = ptrtoint ptr %rx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %rx.i, align 4
  br label %if.else

if.end.i:                                         ; preds = %if.then8
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i, align 4
  %device_config.i.i = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 44
  %17 = ptrtoint ptr %device_config.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device_config.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.end.i.for.body.i.preheader_crit_edge, label %if.then.i.i

if.end.i.for.body.i.preheader_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.preheader

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = call i32 %18(ptr noundef %call.i, ptr noundef nonnull %dma_rx_conf.i) #7
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.then.i.i, %if.end.i.for.body.i.preheader_crit_edge
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %if.then10, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.024.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr %struct.bam_dmux, ptr %data, i32 0, i32 12, i32 %i.024.i
  %call8.i = call fastcc zeroext i1 @bam_dmux_skb_dma_queue_rx(ptr noundef %arrayidx.i, i32 noundef 3264) #7
  br i1 %call8.i, label %for.cond.i, label %for.body.i.if.else_crit_edge

for.body.i.if.else_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then10:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 50
  %23 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device_issue_pending.i.i, align 4
  call void %24(ptr noundef %20) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %dma_rx_conf.i) #7
  %pc_ack.i = getelementptr inbounds %struct.bam_dmux, ptr %data, i32 0, i32 5
  %25 = ptrtoint ptr %pc_ack.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pc_ack.i, align 4
  %pc_ack_mask.i = getelementptr inbounds %struct.bam_dmux, ptr %data, i32 0, i32 7
  %27 = ptrtoint ptr %pc_ack_mask.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pc_ack_mask.i, align 4
  %pc_ack_state.i = getelementptr inbounds %struct.bam_dmux, ptr %data, i32 0, i32 3
  %29 = ptrtoint ptr %pc_ack_state.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %pc_ack_state.i, align 1, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  %spec.select.i = select i1 %tobool.not.i, i32 %28, i32 0
  %call.i28 = call i32 @qcom_smem_state_update_bits(ptr noundef %26, i32 noundef %28, i32 noundef %spec.select.i) #7
  %31 = ptrtoint ptr %pc_ack_state.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %pc_ack_state.i, align 1, !range !177
  %33 = xor i8 %32, 1
  store i8 %33, ptr %pc_ack_state.i, align 1
  br label %if.end13

if.else:                                          ; preds = %for.body.i.if.else_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %dma_rx_conf.i) #7
  call fastcc void @bam_dmux_power_off(ptr noundef %data)
  br label %if.end13

if.else12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @bam_dmux_power_off(ptr noundef %data)
  %pc_ack.i29 = getelementptr inbounds %struct.bam_dmux, ptr %data, i32 0, i32 5
  %34 = ptrtoint ptr %pc_ack.i29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pc_ack.i29, align 4
  %pc_ack_mask.i30 = getelementptr inbounds %struct.bam_dmux, ptr %data, i32 0, i32 7
  %36 = ptrtoint ptr %pc_ack_mask.i30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pc_ack_mask.i30, align 4
  %pc_ack_state.i31 = getelementptr inbounds %struct.bam_dmux, ptr %data, i32 0, i32 3
  %38 = ptrtoint ptr %pc_ack_state.i31 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %pc_ack_state.i31, align 1, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i32 = icmp eq i8 %39, 0
  %spec.select.i33 = select i1 %tobool.not.i32, i32 %37, i32 0
  %call.i34 = tail call i32 @qcom_smem_state_update_bits(ptr noundef %35, i32 noundef %37, i32 noundef %spec.select.i33) #7
  %40 = ptrtoint ptr %pc_ack_state.i31 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %pc_ack_state.i31, align 1, !range !177
  %42 = xor i8 %41, 1
  store i8 %42, ptr %pc_ack_state.i31, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %if.else, %if.then10
  %43 = xor i8 %1, 1
  %44 = ptrtoint ptr %pc_state to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %pc_state, align 4
  %pc_wait = getelementptr inbounds %struct.bam_dmux, ptr %data, i32 0, i32 8
  call void @__wake_up(ptr noundef %pc_wait, i32 noundef 3, i32 noundef 0, ptr noundef null) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_get_irqchip_state(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @bam_dmux_power_on(ptr noundef %dmux) unnamed_addr #2 align 64 {
entry:
  %dma_rx_conf = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dmux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmux, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %dma_rx_conf) #7
  %2 = getelementptr inbounds i8, ptr %dma_rx_conf, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 44)
  %4 = ptrtoint ptr %dma_rx_conf to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %dma_rx_conf, align 4
  %5 = getelementptr inbounds { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [3 x i8], ptr, i32 }, ptr %dma_rx_conf, i32 0, i32 5
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2048, ptr %5, align 4
  %call = tail call ptr @dma_request_chan(ptr noundef %1, ptr noundef nonnull @.str.38) #7
  %rx = getelementptr inbounds %struct.bam_dmux, ptr %dmux, i32 0, i32 10
  %7 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %rx, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.39, ptr noundef nonnull %call) #10
  %8 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %rx, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 44
  %11 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.for.body.preheader_crit_edge, label %if.then.i

if.end.for.body.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call i32 %12(ptr noundef %call, ptr noundef nonnull %dma_rx_conf) #7
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then.i, %if.end.for.body.preheader_crit_edge
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.024 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.bam_dmux, ptr %dmux, i32 0, i32 12, i32 %i.024
  %call8 = call fastcc zeroext i1 @bam_dmux_skb_dma_queue_rx(ptr noundef %arrayidx, i32 noundef 3264)
  br i1 %call8, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 50
  %17 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device_issue_pending.i, align 4
  call void %18(ptr noundef %14) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge, %do.end
  %retval.0 = phi i1 [ false, %do.end ], [ true, %for.end ], [ false, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %dma_rx_conf) #7
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bam_dmux_pc_ack(ptr nocapture noundef %dmux) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pc_ack = getelementptr inbounds %struct.bam_dmux, ptr %dmux, i32 0, i32 5
  %0 = ptrtoint ptr %pc_ack to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pc_ack, align 4
  %pc_ack_mask = getelementptr inbounds %struct.bam_dmux, ptr %dmux, i32 0, i32 7
  %2 = ptrtoint ptr %pc_ack_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pc_ack_mask, align 4
  %pc_ack_state = getelementptr inbounds %struct.bam_dmux, ptr %dmux, i32 0, i32 3
  %4 = ptrtoint ptr %pc_ack_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pc_ack_state, align 1, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %spec.select = select i1 %tobool.not, i32 %3, i32 0
  %call = tail call i32 @qcom_smem_state_update_bits(ptr noundef %1, i32 noundef %3, i32 noundef %spec.select) #7
  %6 = ptrtoint ptr %pc_ack_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pc_ack_state, align 1, !range !177
  %8 = xor i8 %7, 1
  store i8 %8, ptr %pc_ack_state, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bam_dmux_power_off(ptr nocapture noundef %dmux) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tx = getelementptr inbounds %struct.bam_dmux, ptr %dmux, i32 0, i32 11
  %0 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 47
  %4 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.then.dmaengine_terminate_sync.exit_crit_edge, label %dmaengine_terminate_async.exit.i

if.then.dmaengine_terminate_sync.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_async.exit.i:                 ; preds = %if.then
  %call.i.i = tail call i32 %5(ptr noundef nonnull %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge

dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_terminate_sync.exit

if.end.i:                                         ; preds = %dmaengine_terminate_async.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.61, i32 noundef 1169) #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 48
  %8 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %9, null
  br i1 %tobool.not.i1.i, label %if.end.i.dmaengine_terminate_sync.exit_crit_edge, label %if.then.i2.i

if.end.i.dmaengine_terminate_sync.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_terminate_sync.exit

if.then.i2.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %9(ptr noundef nonnull %1) #7
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_sync.exit:                    ; preds = %if.then.i2.i, %if.end.i.dmaengine_terminate_sync.exit_crit_edge, %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge, %if.then.dmaengine_terminate_sync.exit_crit_edge
  %10 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx, align 4
  tail call void @dma_release_channel(ptr noundef %11) #7
  %12 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %tx, align 4
  br label %if.end

if.end:                                           ; preds = %dmaengine_terminate_sync.exit, %entry.if.end_crit_edge
  %rx = getelementptr inbounds %struct.bam_dmux, ptr %dmux, i32 0, i32 10
  %13 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx, align 4
  %tobool4.not = icmp eq ptr %14, null
  br i1 %tobool4.not, label %if.end.if.end10_crit_edge, label %if.then5

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then5:                                         ; preds = %if.end
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %device_terminate_all.i.i20 = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 47
  %17 = ptrtoint ptr %device_terminate_all.i.i20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device_terminate_all.i.i20, align 4
  %tobool.not.i.i21 = icmp eq ptr %18, null
  br i1 %tobool.not.i.i21, label %if.then5.dmaengine_terminate_sync.exit29_crit_edge, label %dmaengine_terminate_async.exit.i24

if.then5.dmaengine_terminate_sync.exit29_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_terminate_sync.exit29

dmaengine_terminate_async.exit.i24:               ; preds = %if.then5
  %call.i.i22 = tail call i32 %18(ptr noundef nonnull %14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i22)
  %tobool.not.i23 = icmp eq i32 %call.i.i22, 0
  br i1 %tobool.not.i23, label %if.end.i27, label %dmaengine_terminate_async.exit.i24.dmaengine_terminate_sync.exit29_crit_edge

dmaengine_terminate_async.exit.i24.dmaengine_terminate_sync.exit29_crit_edge: ; preds = %dmaengine_terminate_async.exit.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_terminate_sync.exit29

if.end.i27:                                       ; preds = %dmaengine_terminate_async.exit.i24
  tail call void @__might_sleep(ptr noundef nonnull @.str.61, i32 noundef 1169) #7
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %14, align 4
  %device_synchronize.i.i25 = getelementptr inbounds %struct.dma_device, ptr %20, i32 0, i32 48
  %21 = ptrtoint ptr %device_synchronize.i.i25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device_synchronize.i.i25, align 4
  %tobool.not.i1.i26 = icmp eq ptr %22, null
  br i1 %tobool.not.i1.i26, label %if.end.i27.dmaengine_terminate_sync.exit29_crit_edge, label %if.then.i2.i28

if.end.i27.dmaengine_terminate_sync.exit29_crit_edge: ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_terminate_sync.exit29

if.then.i2.i28:                                   ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %22(ptr noundef nonnull %14) #7
  br label %dmaengine_terminate_sync.exit29

dmaengine_terminate_sync.exit29:                  ; preds = %if.then.i2.i28, %if.end.i27.dmaengine_terminate_sync.exit29_crit_edge, %dmaengine_terminate_async.exit.i24.dmaengine_terminate_sync.exit29_crit_edge, %if.then5.dmaengine_terminate_sync.exit29_crit_edge
  %23 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rx, align 4
  tail call void @dma_release_channel(ptr noundef %24) #7
  %25 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %rx, align 4
  br label %if.end10

if.end10:                                         ; preds = %dmaengine_terminate_sync.exit29, %if.end.if.end10_crit_edge
  %rx_skbs = getelementptr inbounds %struct.bam_dmux, ptr %dmux, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %if.end5.i.for.body.i_crit_edge, %if.end10
  %i.012.i = phi i32 [ 0, %if.end10 ], [ %inc.i, %if.end5.i.for.body.i_crit_edge ]
  %addr.i = getelementptr %struct.bam_dmux_skb_dma, ptr %rx_skbs, i32 %i.012.i, i32 2
  %26 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i30 = icmp eq i32 %27, 0
  br i1 %tobool.not.i30, label %for.body.i.if.end.i31_crit_edge, label %if.then.i

for.body.i.if.end.i31_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i31

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.bam_dmux_skb_dma, ptr %rx_skbs, i32 %i.012.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %skb.i.i = getelementptr %struct.bam_dmux_skb_dma, ptr %rx_skbs, i32 %i.012.i, i32 1
  %32 = ptrtoint ptr %skb.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %skb.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %31, i32 noundef %27, i32 noundef %35, i32 noundef 2, i32 noundef 0) #7
  %36 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %addr.i, align 4
  br label %if.end.i31

if.end.i31:                                       ; preds = %if.then.i, %for.body.i.if.end.i31_crit_edge
  %skb.i = getelementptr %struct.bam_dmux_skb_dma, ptr %rx_skbs, i32 %i.012.i, i32 1
  %37 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %skb.i, align 4
  %tobool1.not.i = icmp eq ptr %38, null
  br i1 %tobool1.not.i, label %if.end.i31.if.end5.i_crit_edge, label %if.then2.i

if.end.i31.if.end5.i_crit_edge:                   ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.then2.i:                                       ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @consume_skb(ptr noundef nonnull %38) #7
  %39 = ptrtoint ptr %skb.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %skb.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then2.i, %if.end.i31.if.end5.i_crit_edge
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %bam_dmux_free_skbs.exit, label %if.end5.i.for.body.i_crit_edge

if.end5.i.for.body.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

bam_dmux_free_skbs.exit:                          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bam_dmux_tx_callback(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %skb1 = getelementptr inbounds %struct.bam_dmux_skb_dma, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %skb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb1, align 4
  tail call fastcc void @bam_dmux_tx_done(ptr noundef %data)
  tail call void @__dev_kfree_skb_any(ptr noundef %1, i32 noundef 0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bam_dmux_tx_done(ptr noundef %skb_dma) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %skb_dma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb_dma, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 22
  %4 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call.i23 = tail call i32 @__pm_runtime_suspend(ptr noundef %6, i32 noundef 13) #7
  %addr = getelementptr inbounds %struct.bam_dmux_skb_dma, ptr %skb_dma, i32 0, i32 2
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.do.body3_crit_edge, label %if.then

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %skb_dma to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %skb_dma, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %skb.i = getelementptr inbounds %struct.bam_dmux_skb_dma, ptr %skb_dma, i32 0, i32 1
  %13 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %skb.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %12, i32 noundef %8, i32 noundef %16, i32 noundef 1, i32 noundef 0) #7
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %addr, align 4
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry.do.body3_crit_edge
  %tx_lock = getelementptr inbounds %struct.bam_dmux, ptr %1, i32 0, i32 14
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #7
  %skb = getelementptr inbounds %struct.bam_dmux_skb_dma, ptr %skb_dma, i32 0, i32 1
  %18 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %skb, align 4
  %tx_next_skb = getelementptr inbounds %struct.bam_dmux, ptr %1, i32 0, i32 15
  %19 = ptrtoint ptr %tx_next_skb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_next_skb, align 4
  %rem = and i32 %20, 31
  %arrayidx = getelementptr %struct.bam_dmux, ptr %1, i32 0, i32 13, i32 %rem
  %cmp8 = icmp eq ptr %arrayidx, %skb_dma
  br i1 %cmp8, label %if.then10, label %do.body3.if.end11_crit_edge

do.body3.if.end11_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then10:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @bam_dmux_tx_wake_queues(ptr noundef %1)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %do.body3.if.end11_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %call5) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bam_dmux_tx_wake_queues(ptr nocapture noundef readonly %dmux) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bam_dmux_tx_wake_queues.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bam_dmux_tx_wake_queues, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !178

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %dmux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmux, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bam_dmux_tx_wake_queues.__UNIQUE_ID_ddebug365, ptr noundef %1, ptr noundef nonnull @.str.23) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %arrayidx = getelementptr %struct.bam_dmux, ptr %dmux, i32 0, i32 20, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %do.end.if.end6_crit_edge, label %land.lhs.true

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

land.lhs.true:                                    ; preds = %do.end
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end6_crit_edge, label %if.then5

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %7) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %land.lhs.true.if.end6_crit_edge, %do.end.if.end6_crit_edge
  %arrayidx.1 = getelementptr %struct.bam_dmux, ptr %dmux, i32 0, i32 20, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1, align 4
  %tobool3.not.1 = icmp eq ptr %9, null
  br i1 %tobool3.not.1, label %if.end6.if.end6.1_crit_edge, label %land.lhs.true.1

if.end6.if.end6.1_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.1

land.lhs.true.1:                                  ; preds = %if.end6
  %state.i.1 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %state.i.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i.1, align 4
  %and1.i.i.1 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.1)
  %tobool.i.not.1 = icmp eq i32 %and1.i.i.1, 0
  br i1 %tobool.i.not.1, label %land.lhs.true.1.if.end6.1_crit_edge, label %if.then5.1

land.lhs.true.1.if.end6.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.1

if.then5.1:                                       ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  %_tx.i.i.1 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 103
  %12 = ptrtoint ptr %_tx.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_tx.i.i.1, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %13) #7
  br label %if.end6.1

if.end6.1:                                        ; preds = %if.then5.1, %land.lhs.true.1.if.end6.1_crit_edge, %if.end6.if.end6.1_crit_edge
  %arrayidx.2 = getelementptr %struct.bam_dmux, ptr %dmux, i32 0, i32 20, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.2, align 4
  %tobool3.not.2 = icmp eq ptr %15, null
  br i1 %tobool3.not.2, label %if.end6.1.if.end6.2_crit_edge, label %land.lhs.true.2

if.end6.1.if.end6.2_crit_edge:                    ; preds = %if.end6.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.2

land.lhs.true.2:                                  ; preds = %if.end6.1
  %state.i.2 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %state.i.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state.i.2, align 4
  %and1.i.i.2 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.2)
  %tobool.i.not.2 = icmp eq i32 %and1.i.i.2, 0
  br i1 %tobool.i.not.2, label %land.lhs.true.2.if.end6.2_crit_edge, label %if.then5.2

land.lhs.true.2.if.end6.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.2

if.then5.2:                                       ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #9
  %_tx.i.i.2 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 103
  %18 = ptrtoint ptr %_tx.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %_tx.i.i.2, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %19) #7
  br label %if.end6.2

if.end6.2:                                        ; preds = %if.then5.2, %land.lhs.true.2.if.end6.2_crit_edge, %if.end6.1.if.end6.2_crit_edge
  %arrayidx.3 = getelementptr %struct.bam_dmux, ptr %dmux, i32 0, i32 20, i32 3
  %20 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.3, align 4
  %tobool3.not.3 = icmp eq ptr %21, null
  br i1 %tobool3.not.3, label %if.end6.2.if.end6.3_crit_edge, label %land.lhs.true.3

if.end6.2.if.end6.3_crit_edge:                    ; preds = %if.end6.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.3

land.lhs.true.3:                                  ; preds = %if.end6.2
  %state.i.3 = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %state.i.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %state.i.3, align 4
  %and1.i.i.3 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.3)
  %tobool.i.not.3 = icmp eq i32 %and1.i.i.3, 0
  br i1 %tobool.i.not.3, label %land.lhs.true.3.if.end6.3_crit_edge, label %if.then5.3

land.lhs.true.3.if.end6.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.3

if.then5.3:                                       ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #9
  %_tx.i.i.3 = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 103
  %24 = ptrtoint ptr %_tx.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %_tx.i.i.3, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %25) #7
  br label %if.end6.3

if.end6.3:                                        ; preds = %if.then5.3, %land.lhs.true.3.if.end6.3_crit_edge, %if.end6.2.if.end6.3_crit_edge
  %arrayidx.4 = getelementptr %struct.bam_dmux, ptr %dmux, i32 0, i32 20, i32 4
  %26 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.4, align 4
  %tobool3.not.4 = icmp eq ptr %27, null
  br i1 %tobool3.not.4, label %if.end6.3.if.end6.4_crit_edge, label %land.lhs.true.4

if.end6.3.if.end6.4_crit_edge:                    ; preds = %if.end6.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.4

land.lhs.true.4:                                  ; preds = %if.end6.3
  %state.i.4 = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %state.i.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %state.i.4, align 4
  %and1.i.i.4 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.4)
  %tobool.i.not.4 = icmp eq i32 %and1.i.i.4, 0
  br i1 %tobool.i.not.4, label %land.lhs.true.4.if.end6.4_crit_edge, label %if.then5.4

land.lhs.true.4.if.end6.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.4

if.then5.4:                                       ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #9
  %_tx.i.i.4 = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 103
  %30 = ptrtoint ptr %_tx.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %_tx.i.i.4, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %31) #7
  br label %if.end6.4

if.end6.4:                                        ; preds = %if.then5.4, %land.lhs.true.4.if.end6.4_crit_edge, %if.end6.3.if.end6.4_crit_edge
  %arrayidx.5 = getelementptr %struct.bam_dmux, ptr %dmux, i32 0, i32 20, i32 5
  %32 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.5, align 4
  %tobool3.not.5 = icmp eq ptr %33, null
  br i1 %tobool3.not.5, label %if.end6.4.if.end6.5_crit_edge, label %land.lhs.true.5

if.end6.4.if.end6.5_crit_edge:                    ; preds = %if.end6.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.5

land.lhs.true.5:                                  ; preds = %if.end6.4
  %state.i.5 = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %state.i.5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %state.i.5, align 4
  %and1.i.i.5 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.5)
  %tobool.i.not.5 = icmp eq i32 %and1.i.i.5, 0
  br i1 %tobool.i.not.5, label %land.lhs.true.5.if.end6.5_crit_edge, label %if.then5.5

land.lhs.true.5.if.end6.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.5

if.then5.5:                                       ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #9
  %_tx.i.i.5 = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 103
  %36 = ptrtoint ptr %_tx.i.i.5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %_tx.i.i.5, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %37) #7
  br label %if.end6.5

if.end6.5:                                        ; preds = %if.then5.5, %land.lhs.true.5.if.end6.5_crit_edge, %if.end6.4.if.end6.5_crit_edge
  %arrayidx.6 = getelementptr %struct.bam_dmux, ptr %dmux, i32 0, i32 20, i32 6
  %38 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.6, align 4
  %tobool3.not.6 = icmp eq ptr %39, null
  br i1 %tobool3.not.6, label %if.end6.5.if.end6.6_crit_edge, label %land.lhs.true.6

if.end6.5.if.end6.6_crit_edge:                    ; preds = %if.end6.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.6

land.lhs.true.6:                                  ; preds = %if.end6.5
  %state.i.6 = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %state.i.6 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %state.i.6, align 4
  %and1.i.i.6 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.6)
  %tobool.i.not.6 = icmp eq i32 %and1.i.i.6, 0
  br i1 %tobool.i.not.6, label %land.lhs.true.6.if.end6.6_crit_edge, label %if.then5.6

land.lhs.true.6.if.end6.6_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.6

if.then5.6:                                       ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #9
  %_tx.i.i.6 = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 103
  %42 = ptrtoint ptr %_tx.i.i.6 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %_tx.i.i.6, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %43) #7
  br label %if.end6.6

if.end6.6:                                        ; preds = %if.then5.6, %land.lhs.true.6.if.end6.6_crit_edge, %if.end6.5.if.end6.6_crit_edge
  %arrayidx.7 = getelementptr %struct.bam_dmux, ptr %dmux, i32 0, i32 20, i32 7
  %44 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.7, align 4
  %tobool3.not.7 = icmp eq ptr %45, null
  br i1 %tobool3.not.7, label %if.end6.6.if.end6.7_crit_edge, label %land.lhs.true.7

if.end6.6.if.end6.7_crit_edge:                    ; preds = %if.end6.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.7

land.lhs.true.7:                                  ; preds = %if.end6.6
  %state.i.7 = getelementptr inbounds %struct.net_device, ptr %45, i32 0, i32 6
  %46 = ptrtoint ptr %state.i.7 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %state.i.7, align 4
  %and1.i.i.7 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.7)
  %tobool.i.not.7 = icmp eq i32 %and1.i.i.7, 0
  br i1 %tobool.i.not.7, label %land.lhs.true.7.if.end6.7_crit_edge, label %if.then5.7

land.lhs.true.7.if.end6.7_crit_edge:              ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.7

if.then5.7:                                       ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #9
  %_tx.i.i.7 = getelementptr inbounds %struct.net_device, ptr %45, i32 0, i32 103
  %48 = ptrtoint ptr %_tx.i.i.7 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %_tx.i.i.7, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %49) #7
  br label %if.end6.7

if.end6.7:                                        ; preds = %if.then5.7, %land.lhs.true.7.if.end6.7_crit_edge, %if.end6.6.if.end6.7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bam_dmux_netdev_setup(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @bam_dmux_ops, ptr %netdev_ops, align 8
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 519, ptr %type, align 16
  %type2 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133, i32 4
  %2 = ptrtoint ptr %type2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @wwan_type, ptr %type2, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 144, ptr %flags, align 8
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %4 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1500, ptr %mtu, align 4
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 31
  %5 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2040, ptr %max_mtu, align 4
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 21
  %6 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 8, ptr %needed_headroom, align 8
  %needed_tailroom = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 22
  %7 = ptrtoint ptr %needed_tailroom to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 4, ptr %needed_tailroom, align 2
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 107
  %8 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1000, ptr %tx_queue_len, align 16
  %addr_assign_type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %9 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %addr_assign_type, align 4
  %perm_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 54
  tail call void @get_random_bytes(ptr noundef %perm_addr, i32 noundef 6) #7
  %10 = ptrtoint ptr %perm_addr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %perm_addr, align 1
  %12 = and i8 %11, -4
  %13 = or i8 %12, 2
  store i8 %13, ptr %perm_addr, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bam_dmux_netdev_open(ptr nocapture noundef readonly %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %call1 = tail call fastcc i32 @bam_dmux_send_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bam_dmux_netdev_stop(ptr nocapture noundef readonly %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  %call1 = tail call fastcc i32 @bam_dmux_send_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 2)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bam_dmux_netdev_start_xmit(ptr noundef %skb, ptr nocapture noundef readonly %netdev) #2 align 64 {
entry:
  %sg.i.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %tx_lock.i = getelementptr inbounds %struct.bam_dmux, ptr %1, i32 0, i32 14
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock.i) #7
  %tx_next_skb.i = getelementptr inbounds %struct.bam_dmux, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %tx_next_skb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_next_skb.i, align 4
  %rem.i = and i32 %3, 31
  %skb5.i = getelementptr %struct.bam_dmux, ptr %1, i32 0, i32 13, i32 %rem.i, i32 1
  %4 = ptrtoint ptr %skb5.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skb5.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup.sink.split.i_crit_edge

entry.cleanup.sink.split.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %entry
  %arrayidx.i = getelementptr %struct.bam_dmux, ptr %1, i32 0, i32 13, i32 %rem.i
  %6 = ptrtoint ptr %skb5.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %skb, ptr %skb5.i, align 4
  %inc.i = add i32 %3, 1
  %7 = ptrtoint ptr %tx_next_skb.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %inc.i, ptr %tx_next_skb.i, align 4
  %rem11.i = and i32 %inc.i, 31
  %skb13.i = getelementptr %struct.bam_dmux, ptr %1, i32 0, i32 13, i32 %rem11.i, i32 1
  %8 = ptrtoint ptr %skb13.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skb13.i, align 4
  %tobool14.not.i = icmp eq ptr %9, null
  br i1 %tobool14.not.i, label %if.end.i.bam_dmux_tx_queue.exit_crit_edge, label %if.end.i.cleanup.sink.split.i_crit_edge

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.end.i.bam_dmux_tx_queue.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bam_dmux_tx_queue.exit

cleanup.sink.split.i:                             ; preds = %if.end.i.cleanup.sink.split.i_crit_edge, %entry.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi ptr [ null, %entry.cleanup.sink.split.i_crit_edge ], [ %arrayidx.i, %if.end.i.cleanup.sink.split.i_crit_edge ]
  tail call fastcc void @bam_dmux_tx_stop_queues(ptr noundef %1) #7
  br label %bam_dmux_tx_queue.exit

bam_dmux_tx_queue.exit:                           ; preds = %cleanup.sink.split.i, %if.end.i.bam_dmux_tx_queue.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i, %if.end.i.bam_dmux_tx_queue.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock.i, i32 noundef %call2.i) #7
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %bam_dmux_tx_queue.exit.cleanup_crit_edge, label %if.end

bam_dmux_tx_queue.exit.cleanup_crit_edge:         ; preds = %bam_dmux_tx_queue.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %bam_dmux_tx_queue.exit
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call.i)
  %cmp4.not = icmp eq i32 %call.i, -115
  %or.cond = or i1 %cmp, %cmp4.not
  br i1 %or.cond, label %if.end6, label %if.end.drop_crit_edge

if.end.drop_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %drop

if.end6:                                          ; preds = %if.end
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %14 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %16 = tail call i32 @llvm.usub.sat.i32(i32 8, i32 %sub.ptr.sub.i.i) #7
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %17 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len.i, align 4
  %rem.i43 = and i32 %18, 3
  %sub.i = sub nuw nsw i32 4, %rem.i43
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %19 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %if.end6.if.then.i_crit_edge

if.end6.if.then.i_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

skb_tailroom.exit.i:                              ; preds = %if.end6
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %21 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %23 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i45.i = ptrtoint ptr %22 to i32
  %sub.ptr.rhs.cast.i46.i = ptrtoint ptr %24 to i32
  %sub.ptr.sub.i47.i = sub i32 %sub.ptr.lhs.cast.i45.i, %sub.ptr.rhs.cast.i46.i
  %25 = tail call i32 @llvm.usub.sat.i32(i32 %sub.i, i32 %sub.ptr.sub.i47.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub.ptr.sub.i.i)
  %tobool.not.i44 = icmp ugt i32 %sub.ptr.sub.i.i, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub.ptr.sub.i47.i)
  %tobool4.not.i = icmp ule i32 %sub.i, %sub.ptr.sub.i47.i
  %or.cond.i = select i1 %tobool.not.i44, i1 %tobool4.not.i, i1 false
  br i1 %or.cond.i, label %lor.lhs.false5.i, label %skb_tailroom.exit.i.if.then.i_crit_edge

skb_tailroom.exit.i.if.then.i_crit_edge:          ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false5.i:                                 ; preds = %skb_tailroom.exit.i
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %26 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %lor.lhs.false5.i.if.end10_crit_edge, label %skb_cloned.exit.i

lor.lhs.false5.i.if.end10_crit_edge:              ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

skb_cloned.exit.i:                                ; preds = %lor.lhs.false5.i
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %22, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #7
  %27 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %28, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i.not.i, label %skb_cloned.exit.i.if.end10_crit_edge, label %skb_cloned.exit.i.if.then.i_crit_edge

skb_cloned.exit.i.if.then.i_crit_edge:            ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

skb_cloned.exit.i.if.end10_crit_edge:             ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then.i:                                        ; preds = %skb_cloned.exit.i.if.then.i_crit_edge, %skb_tailroom.exit.i.if.then.i_crit_edge, %if.end6.if.then.i_crit_edge
  %29 = phi i32 [ %25, %skb_cloned.exit.i.if.then.i_crit_edge ], [ %25, %skb_tailroom.exit.i.if.then.i_crit_edge ], [ %sub.i, %if.end6.if.then.i_crit_edge ]
  %call8.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %16, i32 noundef %29, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.then.i.if.end10_crit_edge, label %if.then.i.drop_crit_edge

if.then.i.drop_crit_edge:                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drop

if.then.i.if.end10_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.end10:                                         ; preds = %if.then.i.if.end10_crit_edge, %skb_cloned.exit.i.if.end10_crit_edge, %lor.lhs.false5.i.if.end10_crit_edge
  %call12.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #7
  %30 = ptrtoint ptr %call12.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 13308, ptr %call12.i, align 2
  %signal.i = getelementptr inbounds %struct.bam_dmux_hdr, ptr %call12.i, i32 0, i32 1
  %31 = ptrtoint ptr %signal.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %signal.i, align 2
  %cmd.i = getelementptr inbounds %struct.bam_dmux_hdr, ptr %call12.i, i32 0, i32 2
  %32 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %cmd.i, align 1
  %conv.i = trunc i32 %sub.i to i8
  %pad13.i = getelementptr inbounds %struct.bam_dmux_hdr, ptr %call12.i, i32 0, i32 3
  %33 = ptrtoint ptr %pad13.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv.i, ptr %pad13.i, align 2
  %ch.i = getelementptr i8, ptr %netdev, i32 2308
  %34 = ptrtoint ptr %ch.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ch.i, align 4
  %ch14.i = getelementptr inbounds %struct.bam_dmux_hdr, ptr %call12.i, i32 0, i32 4
  %36 = ptrtoint ptr %ch14.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %ch14.i, align 1
  %37 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len.i, align 4
  %39 = trunc i32 %38 to i16
  %conv17.i = add i16 %39, -8
  %len18.i = getelementptr inbounds %struct.bam_dmux_hdr, ptr %call12.i, i32 0, i32 5
  %40 = ptrtoint ptr %len18.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv17.i, ptr %len18.i, align 2
  %call.i.i45 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef %sub.i) #7
  %41 = call ptr @memset(ptr %call.i.i45, i32 0, i32 %sub.i)
  %call11 = tail call fastcc zeroext i1 @bam_dmux_skb_dma_map(ptr noundef nonnull %retval.0.i, i32 noundef 1)
  br i1 %call11, label %if.end13, label %if.end10.drop_crit_edge

if.end10.drop_crit_edge:                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %drop

if.end13:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp14 = icmp slt i32 %call.i, 1
  br i1 %cmp14, label %if.then15, label %if.end21

if.then15:                                        ; preds = %if.end13
  %tx_skbs = getelementptr inbounds %struct.bam_dmux, ptr %1, i32 0, i32 13
  %sub.ptr.lhs.cast = ptrtoint ptr %retval.0.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %tx_skbs to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 12
  %shl = shl nuw i32 1, %sub.ptr.div
  %tx_deferred_skb = getelementptr inbounds %struct.bam_dmux, ptr %1, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_deferred_skb, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !185
  tail call void @llvm.prefetch.p0(ptr %tx_deferred_skb, i32 1, i32 3, i32 1) #7
  %42 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_deferred_skb, ptr %tx_deferred_skb, i32 %shl, ptr elementtype(i32) %tx_deferred_skb) #7, !srcloc !186
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %42, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !187
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool17.not = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool17.not, label %if.then18, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %tx_wakeup_work = getelementptr inbounds %struct.bam_dmux, ptr %1, i32 0, i32 17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_wq to i32))
  %43 = load ptr, ptr @pm_wq, align 4
  %call.i.i47 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %tx_wakeup_work) #7
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  %44 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %retval.0.i, align 4
  %tx.i = getelementptr inbounds %struct.bam_dmux, ptr %45, i32 0, i32 11
  %46 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tx.i, align 4
  %addr.i = getelementptr inbounds %struct.bam_dmux_skb_dma, ptr %retval.0.i, i32 0, i32 2
  %48 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %addr.i, align 4
  %skb.i = getelementptr inbounds %struct.bam_dmux_skb_dma, ptr %retval.0.i, i32 0, i32 1
  %50 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %skb.i, align 4
  %len.i48 = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %len.i48 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len.i48, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i) #7
  %54 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i, i32 0, i32 3
  %55 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i, i32 0, i32 4
  %56 = call ptr @memset(ptr %sg.i.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i.i, i32 noundef 1) #7
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %49, ptr %54, align 4
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %53, ptr %55, align 4
  %tobool.not.i.i49 = icmp eq ptr %47, null
  br i1 %tobool.not.i.i49, label %if.end21.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %lor.lhs.false.i.i

if.end21.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_prep_slave_single.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %if.end21
  %59 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %47, align 4
  %tobool1.not.i.i = icmp eq ptr %60, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_prep_slave_single.exit.thread.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %60, i32 0, i32 39
  %61 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %62, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %dmaengine_prep_slave_single.exit.i

lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_prep_slave_single.exit.thread.i

dmaengine_prep_slave_single.exit.thread.i:        ; preds = %lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, %lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, %if.end21.dmaengine_prep_slave_single.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #7
  br label %bam_dmux_skb_dma_submit_tx.exit

dmaengine_prep_slave_single.exit.i:               ; preds = %lor.lhs.false2.i.i
  %call.i.i50 = call ptr %62(ptr noundef nonnull %47, ptr noundef nonnull %sg.i.i, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #7
  %tobool.not.i51 = icmp eq ptr %call.i.i50, null
  br i1 %tobool.not.i51, label %dmaengine_prep_slave_single.exit.i.bam_dmux_skb_dma_submit_tx.exit_crit_edge, label %if.end24

dmaengine_prep_slave_single.exit.i.bam_dmux_skb_dma_submit_tx.exit_crit_edge: ; preds = %dmaengine_prep_slave_single.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bam_dmux_skb_dma_submit_tx.exit

bam_dmux_skb_dma_submit_tx.exit:                  ; preds = %dmaengine_prep_slave_single.exit.i.bam_dmux_skb_dma_submit_tx.exit_crit_edge, %dmaengine_prep_slave_single.exit.thread.i
  %63 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %45, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.20) #10
  br label %drop

if.end24:                                         ; preds = %dmaengine_prep_slave_single.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i50, i32 0, i32 6
  %65 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @bam_dmux_tx_callback, ptr %callback.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i50, i32 0, i32 8
  %66 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %retval.0.i, ptr %callback_param.i, align 4
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i50, i32 0, i32 4
  %67 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i12.i = call i32 %68(ptr noundef nonnull %call.i.i50) #7
  %69 = ptrtoint ptr %call.i.i50 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %call.i12.i, ptr %call.i.i50, align 4
  %tx = getelementptr inbounds %struct.bam_dmux, ptr %1, i32 0, i32 11
  %70 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %tx, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %73, i32 0, i32 50
  %74 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %device_issue_pending.i, align 4
  call void %75(ptr noundef %71) #7
  br label %cleanup

drop:                                             ; preds = %bam_dmux_skb_dma_submit_tx.exit, %if.end10.drop_crit_edge, %if.then.i.drop_crit_edge, %if.end.drop_crit_edge
  call fastcc void @bam_dmux_tx_done(ptr noundef nonnull %retval.0.i)
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %drop, %if.end24, %if.then18, %if.then15.cleanup_crit_edge, %bam_dmux_tx_queue.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %drop ], [ 0, %if.end24 ], [ 16, %bam_dmux_tx_queue.exit.cleanup_crit_edge ], [ 0, %if.then18 ], [ 0, %if.then15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bam_dmux_send_cmd(ptr nocapture noundef readonly %bndev, i8 noundef zeroext %cmd) unnamed_addr #2 align 64 {
entry:
  %sg.i.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bndev, align 4
  %call.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i34 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 8) #7
  %2 = ptrtoint ptr %call.i34 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 3745868990065410048, ptr %call.i34, align 1
  %cmd3 = getelementptr inbounds %struct.bam_dmux_hdr, ptr %call.i34, i32 0, i32 2
  %3 = ptrtoint ptr %cmd3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %cmd, ptr %cmd3, align 1
  %ch = getelementptr inbounds %struct.bam_dmux_netdev, ptr %bndev, i32 0, i32 1
  %4 = ptrtoint ptr %ch to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ch, align 4
  %ch4 = getelementptr inbounds %struct.bam_dmux_hdr, ptr %call.i34, i32 0, i32 4
  %6 = ptrtoint ptr %ch4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %ch4, align 1
  %tx_lock.i = getelementptr inbounds %struct.bam_dmux, ptr %1, i32 0, i32 14
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock.i) #7
  %tx_next_skb.i = getelementptr inbounds %struct.bam_dmux, ptr %1, i32 0, i32 15
  %7 = ptrtoint ptr %tx_next_skb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_next_skb.i, align 4
  %rem.i = and i32 %8, 31
  %skb5.i = getelementptr %struct.bam_dmux, ptr %1, i32 0, i32 13, i32 %rem.i, i32 1
  %9 = ptrtoint ptr %skb5.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %skb5.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup.sink.split.i_crit_edge

if.end.cleanup.sink.split.i_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %if.end
  %arrayidx.i = getelementptr %struct.bam_dmux, ptr %1, i32 0, i32 13, i32 %rem.i
  %11 = ptrtoint ptr %skb5.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %skb5.i, align 4
  %inc.i = add i32 %8, 1
  %12 = ptrtoint ptr %tx_next_skb.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %inc.i, ptr %tx_next_skb.i, align 4
  %rem11.i = and i32 %inc.i, 31
  %skb13.i = getelementptr %struct.bam_dmux, ptr %1, i32 0, i32 13, i32 %rem11.i, i32 1
  %13 = ptrtoint ptr %skb13.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %skb13.i, align 4
  %tobool14.not.i = icmp eq ptr %14, null
  br i1 %tobool14.not.i, label %if.end.i.bam_dmux_tx_queue.exit_crit_edge, label %if.end.i.cleanup.sink.split.i_crit_edge

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.end.i.bam_dmux_tx_queue.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bam_dmux_tx_queue.exit

cleanup.sink.split.i:                             ; preds = %if.end.i.cleanup.sink.split.i_crit_edge, %if.end.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi ptr [ null, %if.end.cleanup.sink.split.i_crit_edge ], [ %arrayidx.i, %if.end.i.cleanup.sink.split.i_crit_edge ]
  tail call fastcc void @bam_dmux_tx_stop_queues(ptr noundef %1) #7
  br label %bam_dmux_tx_queue.exit

bam_dmux_tx_queue.exit:                           ; preds = %cleanup.sink.split.i, %if.end.i.bam_dmux_tx_queue.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i, %if.end.i.bam_dmux_tx_queue.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock.i, i32 noundef %call2.i) #7
  %tobool6.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool6.not, label %bam_dmux_tx_queue.exit.free_skb_crit_edge, label %if.end8

bam_dmux_tx_queue.exit.free_skb_crit_edge:        ; preds = %bam_dmux_tx_queue.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.end8:                                          ; preds = %bam_dmux_tx_queue.exit
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call.i35 = tail call i32 @__pm_runtime_resume(ptr noundef %16, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %cmp = icmp slt i32 %call.i35, 0
  br i1 %cmp, label %if.end8.tx_fail_crit_edge, label %if.end11

if.end8.tx_fail_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %tx_fail

if.end11:                                         ; preds = %if.end8
  %call12 = tail call fastcc zeroext i1 @bam_dmux_skb_dma_map(ptr noundef nonnull %retval.0.i, i32 noundef 1)
  br i1 %call12, label %if.end14, label %if.end11.tx_fail_crit_edge

if.end11.tx_fail_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %tx_fail

if.end14:                                         ; preds = %if.end11
  %17 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %retval.0.i, align 4
  %tx.i = getelementptr inbounds %struct.bam_dmux, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tx.i, align 4
  %addr.i = getelementptr inbounds %struct.bam_dmux_skb_dma, ptr %retval.0.i, i32 0, i32 2
  %21 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %addr.i, align 4
  %skb.i = getelementptr inbounds %struct.bam_dmux_skb_dma, ptr %retval.0.i, i32 0, i32 1
  %23 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %skb.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i) #7
  %27 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i, i32 0, i32 3
  %28 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i, i32 0, i32 4
  %29 = call ptr @memset(ptr %sg.i.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i.i, i32 noundef 1) #7
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %22, ptr %27, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %26, ptr %28, align 4
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %if.end14.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %lor.lhs.false.i.i

if.end14.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_prep_slave_single.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %if.end14
  %32 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %20, align 4
  %tobool1.not.i.i = icmp eq ptr %33, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_prep_slave_single.exit.thread.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %33, i32 0, i32 39
  %34 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %35, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %dmaengine_prep_slave_single.exit.i

lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_prep_slave_single.exit.thread.i

dmaengine_prep_slave_single.exit.thread.i:        ; preds = %lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, %lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, %if.end14.dmaengine_prep_slave_single.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #7
  br label %bam_dmux_skb_dma_submit_tx.exit

dmaengine_prep_slave_single.exit.i:               ; preds = %lor.lhs.false2.i.i
  %call.i.i = call ptr %35(ptr noundef nonnull %20, ptr noundef nonnull %sg.i.i, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #7
  %tobool.not.i36 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i36, label %dmaengine_prep_slave_single.exit.i.bam_dmux_skb_dma_submit_tx.exit_crit_edge, label %if.end17

dmaengine_prep_slave_single.exit.i.bam_dmux_skb_dma_submit_tx.exit_crit_edge: ; preds = %dmaengine_prep_slave_single.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bam_dmux_skb_dma_submit_tx.exit

bam_dmux_skb_dma_submit_tx.exit:                  ; preds = %dmaengine_prep_slave_single.exit.i.bam_dmux_skb_dma_submit_tx.exit_crit_edge, %dmaengine_prep_slave_single.exit.thread.i
  %36 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %18, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.20) #10
  br label %tx_fail

if.end17:                                         ; preds = %dmaengine_prep_slave_single.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 6
  %38 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @bam_dmux_tx_callback, ptr %callback.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 8
  %39 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %retval.0.i, ptr %callback_param.i, align 4
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 4
  %40 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i12.i = call i32 %41(ptr noundef nonnull %call.i.i) #7
  %42 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call.i12.i, ptr %call.i.i, align 4
  %tx = getelementptr inbounds %struct.bam_dmux, ptr %1, i32 0, i32 11
  %43 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tx, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %46, i32 0, i32 50
  %47 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device_issue_pending.i, align 4
  call void %48(ptr noundef %44) #7
  br label %cleanup

tx_fail:                                          ; preds = %bam_dmux_skb_dma_submit_tx.exit, %if.end11.tx_fail_crit_edge, %if.end8.tx_fail_crit_edge
  %ret.0 = phi i32 [ %call.i35, %if.end8.tx_fail_crit_edge ], [ -12, %if.end11.tx_fail_crit_edge ], [ -5, %bam_dmux_skb_dma_submit_tx.exit ]
  call fastcc void @bam_dmux_tx_done(ptr noundef nonnull %retval.0.i)
  br label %free_skb

free_skb:                                         ; preds = %tx_fail, %bam_dmux_tx_queue.exit.free_skb_crit_edge
  %ret.1 = phi i32 [ %ret.0, %tx_fail ], [ -11, %bam_dmux_tx_queue.exit.free_skb_crit_edge ]
  call void @consume_skb(ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %free_skb, %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %free_skb ], [ 0, %if.end17 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @bam_dmux_skb_dma_map(ptr nocapture noundef %skb_dma, i32 noundef %dir) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %skb_dma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb_dma, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %skb = getelementptr inbounds %struct.bam_dmux_skb_dma, ptr %skb_dma, i32 0, i32 1
  %4 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %7) #7
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !188

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %3) #7
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.32, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #7
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %addr14 = getelementptr inbounds %struct.bam_dmux_skb_dma, ptr %skb_dma, i32 0, i32 2
  %14 = ptrtoint ptr %addr14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %addr14, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef -1) #7
  br label %do.end

dma_map_single_attrs.exit:                        ; preds = %entry
  tail call void @debug_dma_map_single(ptr noundef %3, ptr noundef %7, i32 noundef %9) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %15 = load ptr, ptr @mem_map, align 4
  %16 = ptrtoint ptr %7 to i32
  %sub.i = add i32 %16, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %15, i32 %shr.i
  %and.i = and i32 %16, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %3, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %9, i32 noundef %dir, i32 noundef 0) #7
  %addr = getelementptr inbounds %struct.bam_dmux_skb_dma, ptr %skb_dma, i32 0, i32 2
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call41.i, ptr %addr, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef %call41.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.end_crit_edge, label %dma_map_single_attrs.exit.cleanup_crit_edge

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

dma_map_single_attrs.exit.do.end_crit_edge:       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %dma_map_single_attrs.exit.do.end_crit_edge, %dma_map_single_attrs.exit.thread
  %addr17 = phi ptr [ %addr14, %dma_map_single_attrs.exit.thread ], [ %addr, %dma_map_single_attrs.exit.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.29) #10
  %18 = ptrtoint ptr %addr17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %addr17, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %dma_map_single_attrs.exit.cleanup_crit_edge
  %tobool.not20 = phi i1 [ false, %do.end ], [ true, %dma_map_single_attrs.exit.cleanup_crit_edge ]
  ret i1 %tobool.not20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bam_dmux_tx_stop_queues(ptr nocapture noundef readonly %dmux) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bam_dmux_tx_stop_queues.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bam_dmux_tx_stop_queues, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !178

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %dmux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmux, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bam_dmux_tx_stop_queues.__UNIQUE_ID_ddebug366, ptr noundef %1, ptr noundef nonnull @.str.28) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %arrayidx = getelementptr %struct.bam_dmux, ptr %dmux, i32 0, i32 20, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %do.end.if.end5_crit_edge, label %if.then4

do.end.if.end5_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %do.end.if.end5_crit_edge
  %arrayidx.1 = getelementptr %struct.bam_dmux, ptr %dmux, i32 0, i32 20, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1, align 4
  %tobool3.not.1 = icmp eq ptr %7, null
  br i1 %tobool3.not.1, label %if.end5.if.end5.1_crit_edge, label %if.then4.1

if.end5.if.end5.1_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.1

if.then4.1:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %_tx.i.i.1 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i.1, align 128
  %state.i.i.1 = getelementptr inbounds %struct.netdev_queue, ptr %9, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.1) #7
  br label %if.end5.1

if.end5.1:                                        ; preds = %if.then4.1, %if.end5.if.end5.1_crit_edge
  %arrayidx.2 = getelementptr %struct.bam_dmux, ptr %dmux, i32 0, i32 20, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.2, align 4
  %tobool3.not.2 = icmp eq ptr %11, null
  br i1 %tobool3.not.2, label %if.end5.1.if.end5.2_crit_edge, label %if.then4.2

if.end5.1.if.end5.2_crit_edge:                    ; preds = %if.end5.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.2

if.then4.2:                                       ; preds = %if.end5.1
  call void @__sanitizer_cov_trace_pc() #9
  %_tx.i.i.2 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 103
  %12 = ptrtoint ptr %_tx.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_tx.i.i.2, align 128
  %state.i.i.2 = getelementptr inbounds %struct.netdev_queue, ptr %13, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.2) #7
  br label %if.end5.2

if.end5.2:                                        ; preds = %if.then4.2, %if.end5.1.if.end5.2_crit_edge
  %arrayidx.3 = getelementptr %struct.bam_dmux, ptr %dmux, i32 0, i32 20, i32 3
  %14 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.3, align 4
  %tobool3.not.3 = icmp eq ptr %15, null
  br i1 %tobool3.not.3, label %if.end5.2.if.end5.3_crit_edge, label %if.then4.3

if.end5.2.if.end5.3_crit_edge:                    ; preds = %if.end5.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.3

if.then4.3:                                       ; preds = %if.end5.2
  call void @__sanitizer_cov_trace_pc() #9
  %_tx.i.i.3 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 103
  %16 = ptrtoint ptr %_tx.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %_tx.i.i.3, align 128
  %state.i.i.3 = getelementptr inbounds %struct.netdev_queue, ptr %17, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.3) #7
  br label %if.end5.3

if.end5.3:                                        ; preds = %if.then4.3, %if.end5.2.if.end5.3_crit_edge
  %arrayidx.4 = getelementptr %struct.bam_dmux, ptr %dmux, i32 0, i32 20, i32 4
  %18 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.4, align 4
  %tobool3.not.4 = icmp eq ptr %19, null
  br i1 %tobool3.not.4, label %if.end5.3.if.end5.4_crit_edge, label %if.then4.4

if.end5.3.if.end5.4_crit_edge:                    ; preds = %if.end5.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.4

if.then4.4:                                       ; preds = %if.end5.3
  call void @__sanitizer_cov_trace_pc() #9
  %_tx.i.i.4 = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 103
  %20 = ptrtoint ptr %_tx.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %_tx.i.i.4, align 128
  %state.i.i.4 = getelementptr inbounds %struct.netdev_queue, ptr %21, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.4) #7
  br label %if.end5.4

if.end5.4:                                        ; preds = %if.then4.4, %if.end5.3.if.end5.4_crit_edge
  %arrayidx.5 = getelementptr %struct.bam_dmux, ptr %dmux, i32 0, i32 20, i32 5
  %22 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.5, align 4
  %tobool3.not.5 = icmp eq ptr %23, null
  br i1 %tobool3.not.5, label %if.end5.4.if.end5.5_crit_edge, label %if.then4.5

if.end5.4.if.end5.5_crit_edge:                    ; preds = %if.end5.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.5

if.then4.5:                                       ; preds = %if.end5.4
  call void @__sanitizer_cov_trace_pc() #9
  %_tx.i.i.5 = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 103
  %24 = ptrtoint ptr %_tx.i.i.5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %_tx.i.i.5, align 128
  %state.i.i.5 = getelementptr inbounds %struct.netdev_queue, ptr %25, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.5) #7
  br label %if.end5.5

if.end5.5:                                        ; preds = %if.then4.5, %if.end5.4.if.end5.5_crit_edge
  %arrayidx.6 = getelementptr %struct.bam_dmux, ptr %dmux, i32 0, i32 20, i32 6
  %26 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.6, align 4
  %tobool3.not.6 = icmp eq ptr %27, null
  br i1 %tobool3.not.6, label %if.end5.5.if.end5.6_crit_edge, label %if.then4.6

if.end5.5.if.end5.6_crit_edge:                    ; preds = %if.end5.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.6

if.then4.6:                                       ; preds = %if.end5.5
  call void @__sanitizer_cov_trace_pc() #9
  %_tx.i.i.6 = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 103
  %28 = ptrtoint ptr %_tx.i.i.6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %_tx.i.i.6, align 128
  %state.i.i.6 = getelementptr inbounds %struct.netdev_queue, ptr %29, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.6) #7
  br label %if.end5.6

if.end5.6:                                        ; preds = %if.then4.6, %if.end5.5.if.end5.6_crit_edge
  %arrayidx.7 = getelementptr %struct.bam_dmux, ptr %dmux, i32 0, i32 20, i32 7
  %30 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.7, align 4
  %tobool3.not.7 = icmp eq ptr %31, null
  br i1 %tobool3.not.7, label %if.end5.6.if.end5.7_crit_edge, label %if.then4.7

if.end5.6.if.end5.7_crit_edge:                    ; preds = %if.end5.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.7

if.then4.7:                                       ; preds = %if.end5.6
  call void @__sanitizer_cov_trace_pc() #9
  %_tx.i.i.7 = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 103
  %32 = ptrtoint ptr %_tx.i.i.7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %_tx.i.i.7, align 128
  %state.i.i.7 = getelementptr inbounds %struct.netdev_queue, ptr %33, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.7) #7
  br label %if.end5.7

if.end5.7:                                        ; preds = %if.then4.7, %if.end5.6.if.end5.7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @bam_dmux_skb_dma_queue_rx(ptr noundef %skb_dma, i32 noundef %gfp) unnamed_addr #2 align 64 {
entry:
  %sg.i.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %skb = getelementptr inbounds %struct.bam_dmux_skb_dma, ptr %skb_dma, i32 0, i32 1
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then:                                          ; preds = %entry
  %call = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2048, i32 noundef %gfp) #7
  %2 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %skb, align 4
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.then.return_crit_edge, label %if.end

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call ptr @skb_put(ptr noundef nonnull %call, i32 noundef 2048) #7
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  %call8 = tail call fastcc zeroext i1 @bam_dmux_skb_dma_map(ptr noundef %skb_dma, i32 noundef 2)
  br i1 %call8, label %land.rhs, label %if.end7.return_crit_edge

if.end7.return_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

land.rhs:                                         ; preds = %if.end7
  %3 = ptrtoint ptr %skb_dma to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skb_dma, align 4
  %rx.i = getelementptr inbounds %struct.bam_dmux, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx.i, align 4
  %addr.i = getelementptr inbounds %struct.bam_dmux_skb_dma, ptr %skb_dma, i32 0, i32 2
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr.i, align 4
  %9 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %skb, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i) #7
  %13 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i, i32 0, i32 3
  %14 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i, i32 0, i32 4
  %15 = call ptr @memset(ptr %sg.i.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i.i, i32 noundef 1) #7
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %8, ptr %13, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %12, ptr %14, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %land.rhs.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %lor.lhs.false.i.i

land.rhs.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_prep_slave_single.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %land.rhs
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %6, align 4
  %tobool1.not.i.i = icmp eq ptr %19, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_prep_slave_single.exit.thread.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %19, i32 0, i32 39
  %20 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %21, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %dmaengine_prep_slave_single.exit.i

lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_prep_slave_single.exit.thread.i

dmaengine_prep_slave_single.exit.thread.i:        ; preds = %lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, %lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, %land.rhs.dmaengine_prep_slave_single.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #7
  br label %do.end.i

dmaengine_prep_slave_single.exit.i:               ; preds = %lor.lhs.false2.i.i
  %call.i.i = call ptr %21(ptr noundef nonnull %6, ptr noundef nonnull %sg.i.i, i32 noundef 1, i32 noundef 2, i32 noundef 1, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %dmaengine_prep_slave_single.exit.i.do.end.i_crit_edge, label %if.end.i

dmaengine_prep_slave_single.exit.i.do.end.i_crit_edge: ; preds = %dmaengine_prep_slave_single.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %dmaengine_prep_slave_single.exit.i.do.end.i_crit_edge, %dmaengine_prep_slave_single.exit.thread.i
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.41) #10
  br label %return

if.end.i:                                         ; preds = %dmaengine_prep_slave_single.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 6
  %24 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @bam_dmux_rx_callback, ptr %callback.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 8
  %25 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %skb_dma, ptr %callback_param.i, align 4
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 4
  %26 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i12.i = call i32 %27(ptr noundef nonnull %call.i.i) #7
  %28 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call.i12.i, ptr %call.i.i, align 4
  br label %return

return:                                           ; preds = %if.end.i, %do.end.i, %if.end7.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i1 [ false, %if.then.return_crit_edge ], [ false, %if.end7.return_crit_edge ], [ true, %if.end.i ], [ false, %do.end.i ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bam_dmux_rx_callback(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %skb2 = getelementptr inbounds %struct.bam_dmux_skb_dma, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %skb2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb2, align 4
  %data3 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data3, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %addr.i = getelementptr inbounds %struct.bam_dmux_skb_dma, ptr %data, i32 0, i32 2
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef 2, i32 noundef 0) #7
  %12 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %addr.i, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13308, i16 %14)
  %cmp.not = icmp eq i16 %14, 13308
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %14 to i32
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.43, i32 noundef %conv) #10
  br label %out

if.end:                                           ; preds = %entry
  %ch = getelementptr inbounds %struct.bam_dmux_hdr, ptr %5, i32 0, i32 4
  %17 = ptrtoint ptr %ch to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ch, align 1
  %conv7 = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %18)
  %cmp8 = icmp ugt i8 %18, 7
  br i1 %cmp8, label %do.body11, label %if.end21

do.body11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bam_dmux_rx_callback.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bam_dmux_rx_callback, %if.then14)) #7
          to label %out [label %if.then14], !srcloc !178

if.then14:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %21 = ptrtoint ptr %ch to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ch, align 1
  %conv17 = zext i8 %22 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bam_dmux_rx_callback.__UNIQUE_ID_ddebug370, ptr noundef %20, ptr noundef nonnull @.str.45, i32 noundef %conv17) #7
  br label %out

if.end21:                                         ; preds = %if.end
  %cmd = getelementptr inbounds %struct.bam_dmux_hdr, ptr %5, i32 0, i32 2
  %23 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %cmd, align 1
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i8 %24, label %do.end27 [
    i8 0, label %sw.bb
    i8 1, label %sw.bb23
    i8 2, label %sw.bb24
  ]

sw.bb:                                            ; preds = %if.end21
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %28 = ptrtoint ptr %skb2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %skb2, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 19
  %30 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i, align 4
  %ch.i = getelementptr inbounds %struct.bam_dmux_hdr, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %ch.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ch.i, align 1
  %idxprom.i = zext i8 %33 to i32
  %arrayidx.i = getelementptr %struct.bam_dmux, ptr %27, i32 0, i32 20, i32 %idxprom.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %sw.bb.do.end.i_crit_edge, label %lor.lhs.false.i

sw.bb.do.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %sw.bb
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %if.end.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %sw.bb.do.end.i_crit_edge
  %38 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %27, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %39, ptr noundef nonnull @.str.49, i32 noundef %idxprom.i) #10
  br label %out

if.end.i:                                         ; preds = %lor.lhs.false.i
  %len.i53 = getelementptr inbounds %struct.bam_dmux_hdr, ptr %31, i32 0, i32 5
  %40 = ptrtoint ptr %len.i53 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %len.i53, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2040, i16 %41)
  %cmp.i = icmp ugt i16 %41, 2040
  br i1 %cmp.i, label %do.end9.i, label %if.end13.i

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv4.i = zext i16 %41 to i32
  %42 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %27, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.53, i32 noundef %conv4.i, i32 noundef 2040) #10
  br label %out

if.end13.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %skb2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %skb2, align 4
  %call15.i = tail call ptr @skb_pull(ptr noundef %29, i32 noundef 8) #7
  %45 = ptrtoint ptr %len.i53 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %len.i53, align 2
  %conv17.i = zext i16 %46 to i32
  tail call void @skb_trim(ptr noundef %29, i32 noundef %conv17.i) #7
  %47 = getelementptr inbounds %struct.anon.44, ptr %29, i32 0, i32 2
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %35, ptr %47, align 8
  %49 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %50, align 1
  %53 = and i8 %52, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %53)
  %switch.selectcmp.i = icmp eq i8 %53, 96
  %switch.select.i = select i1 %switch.selectcmp.i, i16 -31011, i16 249
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %53)
  %switch.selectcmp46.i = icmp eq i8 %53, 64
  %switch.select47.i = select i1 %switch.selectcmp46.i, i16 2048, i16 %switch.select.i
  %protocol23.i = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 15, i32 0, i32 18
  %54 = ptrtoint ptr %protocol23.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %switch.select47.i, ptr %protocol23.i, align 8
  %call24.i = tail call i32 @netif_receive_skb(ptr noundef %29) #7
  br label %out

sw.bb23:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @bam_dmux_cmd_open(ptr noundef %1, ptr noundef %5)
  br label %out

sw.bb24:                                          ; preds = %if.end21
  %arrayidx.i56 = getelementptr %struct.bam_dmux, ptr %1, i32 0, i32 20, i32 %conv7
  %55 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i56, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bam_dmux_cmd_close.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bam_dmux_rx_callback, %if.then.i)) #7
          to label %do.end.i57 [label %if.then.i], !srcloc !178

if.then.i:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  %59 = ptrtoint ptr %ch to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %ch, align 1
  %conv.i = zext i8 %60 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bam_dmux_cmd_close.__UNIQUE_ID_ddebug369, ptr noundef %58, ptr noundef nonnull @.str.59, i32 noundef %conv.i) #7
  br label %do.end.i57

do.end.i57:                                       ; preds = %if.then.i, %sw.bb24
  %61 = ptrtoint ptr %ch to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %ch, align 1
  %conv5.i = zext i8 %62 to i32
  %remote_channels.i = getelementptr inbounds %struct.bam_dmux, ptr %1, i32 0, i32 18
  %rem.i.i = and i32 %conv5.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div6.i.i = lshr i32 %conv5.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %remote_channels.i, i32 %div6.i.i
  %63 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr.i.i, align 4
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i.i = and i32 %64, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  %65 = and i32 %shl.i.i, %64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool7.not.i = icmp eq i32 %65, 0
  br i1 %tobool7.not.i, label %do.end11.i, label %if.end15.i

do.end11.i:                                       ; preds = %do.end.i57
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 4
  %68 = ptrtoint ptr %ch to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %ch, align 1
  %conv14.i = zext i8 %69 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.60, i32 noundef %conv14.i) #10
  br label %out

if.end15.i:                                       ; preds = %do.end.i57
  %tobool16.not.i = icmp eq ptr %56, null
  br i1 %tobool16.not.i, label %if.end15.i.out_crit_edge, label %if.then17.i

if.end15.i.out_crit_edge:                         ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @netif_device_detach(ptr noundef nonnull %56) #7
  br label %out

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %conv22 = zext i8 %24 to i32
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.47, i32 noundef %conv22, i32 noundef %conv7) #10
  br label %out

out:                                              ; preds = %do.end27, %if.then17.i, %if.end15.i.out_crit_edge, %do.end11.i, %sw.bb23, %if.end13.i, %do.end9.i, %do.end.i, %if.then14, %do.body11, %do.end
  %call33 = tail call fastcc zeroext i1 @bam_dmux_skb_dma_queue_rx(ptr noundef %data, i32 noundef 2592)
  br i1 %call33, label %if.then34, label %out.if.end35_crit_edge

out.if.end35_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then34:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  %rx = getelementptr inbounds %struct.bam_dmux, ptr %1, i32 0, i32 10
  %72 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rx, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %75, i32 0, i32 50
  %76 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %77(ptr noundef %73) #7
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %out.if.end35_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bam_dmux_cmd_open(ptr noundef %dmux, ptr nocapture noundef readonly %hdr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ch = getelementptr inbounds %struct.bam_dmux_hdr, ptr %hdr, i32 0, i32 4
  %0 = ptrtoint ptr %ch to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ch, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr %struct.bam_dmux, ptr %dmux, i32 0, i32 20, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bam_dmux_cmd_open.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bam_dmux_cmd_open, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !178

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %dmux to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dmux, align 4
  %6 = ptrtoint ptr %ch to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ch, align 1
  %conv = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bam_dmux_cmd_open.__UNIQUE_ID_ddebug368, ptr noundef %5, ptr noundef nonnull @.str.56, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = ptrtoint ptr %ch to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ch, align 1
  %conv5 = zext i8 %9 to i32
  %remote_channels = getelementptr inbounds %struct.bam_dmux, ptr %dmux, i32 0, i32 18
  %rem.i = and i32 %conv5, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div5.i = lshr i32 %conv5, 5
  %add.ptr.i = getelementptr i32, ptr %remote_channels, i32 %div5.i
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %shl.i, %11
  store i32 %or.i, ptr %add.ptr.i, align 4
  %12 = and i32 %shl.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool7.not = icmp eq i32 %12, 0
  br i1 %tobool7.not, label %if.end15, label %do.end11

do.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %dmux to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dmux, align 4
  %15 = ptrtoint ptr %ch to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ch, align 1
  %conv14 = zext i8 %16 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.57, i32 noundef %conv14) #10
  br label %cleanup

if.end15:                                         ; preds = %do.end
  %tobool16.not = icmp eq ptr %3, null
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @netif_device_attach(ptr noundef nonnull %3) #7
  br label %cleanup

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %register_netdev_work = getelementptr inbounds %struct.bam_dmux, ptr %dmux, i32 0, i32 19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %17 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %register_netdev_work) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then17, %do.end11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_smem_state_update_bits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_many(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bam_dmux_runtime_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bam_dmux_runtime_suspend.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bam_dmux_runtime_suspend, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !178

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bam_dmux_runtime_suspend.__UNIQUE_ID_ddebug373, ptr noundef %dev, ptr noundef nonnull @.str.65) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pc_ack_completion.i = getelementptr inbounds %struct.bam_dmux, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %pc_ack_completion.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %pc_ack_completion.i, align 4
  %pc.i = getelementptr inbounds %struct.bam_dmux, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %pc.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pc.i, align 4
  %pc_mask.i = getelementptr inbounds %struct.bam_dmux, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %pc_mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pc_mask.i, align 4
  %call.i = tail call i32 @qcom_smem_state_update_bits(ptr noundef %4, i32 noundef %6, i32 noundef 0) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bam_dmux_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bam_dmux_runtime_resume.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bam_dmux_runtime_resume, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !178

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bam_dmux_runtime_resume.__UNIQUE_ID_ddebug374, ptr noundef %dev, ptr noundef nonnull @.str.67) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pc_ack_completion = getelementptr inbounds %struct.bam_dmux, ptr %1, i32 0, i32 9
  %call5 = tail call i32 @wait_for_completion_timeout(ptr noundef %pc_ack_completion, i32 noundef 200) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.end.cleanup84_crit_edge, label %if.end8

do.end.cleanup84_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup84

if.end8:                                          ; preds = %do.end
  %2 = ptrtoint ptr %pc_ack_completion to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %pc_ack_completion, align 4
  %pc.i = getelementptr inbounds %struct.bam_dmux, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %pc.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pc.i, align 4
  %pc_mask.i = getelementptr inbounds %struct.bam_dmux, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %pc_mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pc_mask.i, align 4
  %call.i = tail call i32 @qcom_smem_state_update_bits(ptr noundef %4, i32 noundef %6, i32 noundef %6) #7
  %call11 = tail call i32 @wait_for_completion_timeout(ptr noundef %pc_ack_completion, i32 noundef 200) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %pc_ack_completion to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %pc_ack_completion, align 4
  %8 = ptrtoint ptr %pc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pc.i, align 4
  %10 = ptrtoint ptr %pc_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pc_mask.i, align 4
  %call.i115 = tail call i32 @qcom_smem_state_update_bits(ptr noundef %9, i32 noundef %11, i32 noundef 0) #7
  br label %cleanup84

if.end14:                                         ; preds = %if.end8
  tail call void @__might_sleep(ptr noundef nonnull @.str.15, i32 noundef 742) #7
  %pc_state = getelementptr inbounds %struct.bam_dmux, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %pc_state to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pc_state, align 4, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool22.not = icmp eq i8 %13, 0
  br i1 %tobool22.not, label %if.then34, label %if.end14.if.end65_crit_edge

if.end14.if.end65_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then34:                                        ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %14 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %pc_wait = getelementptr inbounds %struct.bam_dmux, ptr %1, i32 0, i32 8
  %call37131 = call i32 @prepare_to_wait_event(ptr noundef %pc_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %15 = ptrtoint ptr %pc_state to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pc_state, align 4, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool40.not132.not = icmp eq i8 %16, 0
  br i1 %tobool40.not132.not, label %if.then34.cleanup_crit_edge, label %if.end61.thread

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  br label %cleanup

if.end61.thread:                                  ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  call void @finish_wait(ptr noundef %pc_wait, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %if.end65

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then34.cleanup_crit_edge
  %__ret35.1134 = phi i32 [ %__ret35.1, %cleanup.cleanup_crit_edge ], [ 200, %if.then34.cleanup_crit_edge ]
  %call58 = call i32 @schedule_timeout(i32 noundef %__ret35.1134) #7
  %call37 = call i32 @prepare_to_wait_event(ptr noundef %pc_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %17 = ptrtoint ptr %pc_state to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pc_state, align 4, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool40.not = icmp eq i8 %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool44.not = icmp eq i32 %call58, 0
  %spec.store.select85 = select i1 %tobool44.not, i32 1, i32 %call58
  %__ret35.1 = select i1 %tobool40.not, i32 %call58, i32 %spec.store.select85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret35.1)
  %tobool50.not = icmp eq i32 %__ret35.1, 0
  %not.tobool40.not = xor i1 %tobool40.not, true
  %19 = select i1 %not.tobool40.not, i1 true, i1 %tobool50.not
  br i1 %19, label %if.end61, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end61:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret35.1)
  %phi.cmp = icmp eq i32 %__ret35.1, 0
  call void @finish_wait(ptr noundef %pc_wait, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br i1 %phi.cmp, label %if.then64, label %if.end61.if.end65_crit_edge

if.end61.if.end65_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %pc_ack_completion to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %pc_ack_completion, align 4
  %21 = ptrtoint ptr %pc.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pc.i, align 4
  %23 = ptrtoint ptr %pc_mask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pc_mask.i, align 4
  %call.i119 = call i32 @qcom_smem_state_update_bits(ptr noundef %22, i32 noundef %24, i32 noundef 0) #7
  br label %cleanup84

if.end65:                                         ; preds = %if.end61.if.end65_crit_edge, %if.end61.thread, %if.end14.if.end65_crit_edge
  %rx = getelementptr inbounds %struct.bam_dmux, ptr %1, i32 0, i32 10
  %25 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rx, align 4
  %tobool66.not = icmp eq ptr %26, null
  br i1 %tobool66.not, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %pc_ack_completion to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %pc_ack_completion, align 4
  %28 = ptrtoint ptr %pc.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pc.i, align 4
  %30 = ptrtoint ptr %pc_mask.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pc_mask.i, align 4
  %call.i123 = call i32 @qcom_smem_state_update_bits(ptr noundef %29, i32 noundef %31, i32 noundef 0) #7
  br label %cleanup84

if.end68:                                         ; preds = %if.end65
  %tx = getelementptr inbounds %struct.bam_dmux, ptr %1, i32 0, i32 11
  %32 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tx, align 4
  %tobool69.not = icmp eq ptr %33, null
  br i1 %tobool69.not, label %if.end71, label %if.end68.cleanup84_crit_edge

if.end68.cleanup84_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup84

if.end71:                                         ; preds = %if.end68
  %call72 = call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull @.str.68) #7
  %34 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call72, ptr %tx, align 4
  %35 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rx, align 4
  %cmp.i = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end79, label %if.end71.cleanup84_crit_edge

if.end71.cleanup84_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup84

do.end79:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.69, ptr noundef %call72) #10
  %37 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %tx, align 4
  %call82 = call i32 @bam_dmux_runtime_suspend(ptr noundef %dev)
  br label %cleanup84

cleanup84:                                        ; preds = %do.end79, %if.end71.cleanup84_crit_edge, %if.end68.cleanup84_crit_edge, %if.then67, %if.then64, %if.then13, %do.end.cleanup84_crit_edge
  %retval.0 = phi i32 [ -6, %do.end79 ], [ -6, %if.then67 ], [ -110, %if.then64 ], [ -110, %if.then13 ], [ -110, %do.end.cleanup84_crit_edge ], [ 0, %if.end68.cleanup84_crit_edge ], [ 0, %if.end71.cleanup84_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !41, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !62, !63, !64, !65, !67, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !82, !84, !86, !87, !88, !90, !91, !92, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !109, !111, !112, !114, !115, !116, !118, !119, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !146, !147, !148, !149, !151, !152, !153, !155, !157, !159, !160, !161, !163, !165, !166}
!llvm.module.flags = !{!167, !168, !169, !170, !171, !172, !173, !174}
!llvm.ident = !{!175}

!0 = !{ptr @__initcall__kmod_qcom_bam_dmux__375_903_bam_dmux_driver_init6, !1, !"__initcall__kmod_qcom_bam_dmux__375_903_bam_dmux_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 903, i32 1}
!2 = !{ptr @__exitcall_bam_dmux_driver_exit, !1, !"__exitcall_bam_dmux_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file376, !4, !"__UNIQUE_ID_file376", i1 false, i1 false}
!4 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 905, i32 1}
!5 = !{ptr @__UNIQUE_ID_license377, !4, !"__UNIQUE_ID_license377", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description378, !7, !"__UNIQUE_ID_description378", i1 false, i1 false}
!7 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 906, i32 1}
!8 = !{ptr @__UNIQUE_ID_author379, !9, !"__UNIQUE_ID_author379", i1 false, i1 false}
!9 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 907, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 898, i32 11}
!12 = !{ptr @bam_dmux_driver, !13, !"bam_dmux_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 894, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 782, i32 47}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 786, i32 45}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 793, i32 10}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 799, i32 10}
!22 = !{ptr @bam_dmux_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 802, i32 2}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @bam_dmux_probe.__key.6, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 806, i32 2}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @bam_dmux_probe.__key.8, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 807, i32 2}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @bam_dmux_probe.__key.10, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 808, i32 2}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @init_completion.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../include/linux/completion.h", i32 87, i32 2}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 385, i32 3}
!39 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @bam_dmux_tx_wakeup_work._entry, !38, !"_entry", i1 false, i1 false}
!44 = !{ptr @bam_dmux_tx_wakeup_work._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 393, i32 2}
!47 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @bam_dmux_tx_wakeup_work.__UNIQUE_ID_ddebug367, !46, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 196, i32 3}
!51 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @bam_dmux_skb_dma_submit_tx._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @bam_dmux_skb_dma_submit_tx._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 136, i32 2}
!56 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @bam_dmux_tx_wake_queues.__UNIQUE_ID_ddebug365, !55, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 444, i32 12}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 458, i32 4}
!62 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @bam_dmux_register_netdev_work._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @bam_dmux_register_netdev_work._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @bam_dmux_ops, !66, !"bam_dmux_ops", i1 false, i1 false}
!66 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 404, i32 36}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 150, i32 2}
!69 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @bam_dmux_tx_stop_queues.__UNIQUE_ID_ddebug366, !68, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 117, i32 3}
!73 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @bam_dmux_skb_dma_map._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @bam_dmux_skb_dma_map._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!78 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 411, i32 10}
!82 = !{ptr @wwan_type, !83, !"wwan_type", i1 false, i1 false}
!83 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 410, i32 33}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 703, i32 2}
!86 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @bam_dmux_pc_ack_irq.__UNIQUE_ID_ddebug372, !85, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 681, i32 2}
!90 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @bam_dmux_pc_irq.__UNIQUE_ID_ddebug371, !89, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 625, i32 35}
!94 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 627, i32 3}
!96 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @bam_dmux_power_on._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @bam_dmux_power_on._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 479, i32 3}
!101 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @bam_dmux_skb_dma_submit_rx._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @bam_dmux_skb_dma_submit_rx._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 586, i32 3}
!106 = !{ptr @.str.44, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @bam_dmux_rx_callback._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @bam_dmux_rx_callback._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 591, i32 3}
!111 = !{ptr @bam_dmux_rx_callback.__UNIQUE_ID_ddebug370, !110, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!112 = !{ptr @.str.47, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 606, i32 3}
!114 = !{ptr @bam_dmux_rx_callback._entry.46, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @bam_dmux_rx_callback._entry_ptr.48, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.49, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 510, i32 3}
!118 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.51, !117, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @bam_dmux_cmd_data._entry, !117, !"_entry", i1 false, i1 false}
!121 = !{ptr @bam_dmux_cmd_data._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.53, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 515, i32 3}
!124 = !{ptr @bam_dmux_cmd_data._entry.52, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @bam_dmux_cmd_data._entry_ptr.54, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.55, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 546, i32 2}
!128 = !{ptr @.str.56, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @bam_dmux_cmd_open.__UNIQUE_ID_ddebug368, !127, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!130 = !{ptr @.str.57, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 549, i32 3}
!132 = !{ptr @bam_dmux_cmd_open._entry, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @bam_dmux_cmd_open._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.58, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 565, i32 2}
!136 = !{ptr @.str.59, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @bam_dmux_cmd_close.__UNIQUE_ID_ddebug369, !135, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!138 = !{ptr @.str.60, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 568, i32 3}
!140 = !{ptr @bam_dmux_cmd_close._entry, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @bam_dmux_cmd_close._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.61, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!144 = !{ptr @.str.62, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 874, i32 3}
!146 = !{ptr @.str.63, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @bam_dmux_remove._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @bam_dmux_remove._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.64, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 713, i32 2}
!151 = !{ptr @.str.65, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @bam_dmux_runtime_suspend.__UNIQUE_ID_ddebug373, !150, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!153 = !{ptr @bam_dmux_of_match, !154, !"bam_dmux_of_match", i1 false, i1 false}
!154 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 888, i32 34}
!155 = !{ptr @bam_dmux_pm_ops, !156, !"bam_dmux_pm_ops", i1 false, i1 false}
!156 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 884, i32 32}
!157 = !{ptr @.str.66, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 723, i32 2}
!159 = !{ptr @.str.67, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @bam_dmux_runtime_resume.__UNIQUE_ID_ddebug374, !158, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!161 = !{ptr @.str.68, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 757, i32 35}
!163 = !{ptr @.str.69, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wwan/qcom_bam_dmux.c", i32 759, i32 3}
!165 = !{ptr @bam_dmux_runtime_resume._entry, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @bam_dmux_runtime_resume._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{i32 1, !"wchar_size", i32 2}
!168 = !{i32 1, !"min_enum_size", i32 4}
!169 = !{i32 8, !"branch-target-enforcement", i32 0}
!170 = !{i32 8, !"sign-return-address", i32 0}
!171 = !{i32 8, !"sign-return-address-all", i32 0}
!172 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!173 = !{i32 7, !"uwtable", i32 1}
!174 = !{i32 7, !"frame-pointer", i32 2}
!175 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!176 = !{!"auto-init"}
!177 = !{i8 0, i8 2}
!178 = !{i64 2148819690, i64 2148819695, i64 2148819708, i64 2148819752, i64 2148819786, i64 2148819807}
!179 = !{i64 2148137625}
!180 = !{i64 513546, i64 513571, i64 513593, i64 513609, i64 513621, i64 513641, i64 513665, i64 513681, i64 513693}
!181 = !{i64 2148137813}
!182 = !{i64 2148313869}
!183 = !{i64 644974, i64 644991, i64 645015, i64 645041, i64 645059}
!184 = !{i64 2148314239}
!185 = !{i64 2148236996}
!186 = !{i64 2148147064, i64 2148147096, i64 2148147125, i64 2148147159, i64 2148147190, i64 2148147213}
!187 = !{i64 2148237223}
!188 = !{!"branch_weights", i32 2000, i32 1}

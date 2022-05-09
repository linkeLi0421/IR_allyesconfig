; ModuleID = '/llk/IR_all_yes/drivers/net/ipa/ipa_modem.c_pt.bc'
source_filename = "../drivers/net/ipa/ipa_modem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.22 }
%union.anon.22 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.113, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.8, i32, i32, i32, i16, i16, %union.anon.10, i32, %union.anon.11, %union.anon.12, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i16 }
%struct.ipa = type { %struct.gsi, i32, ptr, %struct.completion, %struct.notifier_block, ptr, ptr, ptr, i32, ptr, ptr, i8, i8, i32, ptr, i32, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.ipa_endpoint], [23 x ptr], [10 x ptr], i8, %struct.atomic_t, ptr, %struct.ipa_qmi, [24 x i8] }
%struct.gsi = type { ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.completion, %struct.mutex, [23 x %struct.gsi_channel], [24 x %struct.gsi_evt_ring], %struct.net_device }
%struct.gsi_channel = type { ptr, i8, i8, i8, i16, i16, %struct.gsi_ring, i32, i64, i64, i64, i64, i64, i64, %struct.gsi_trans_info, %struct.napi_struct }
%struct.gsi_ring = type { ptr, i32, i32, i32 }
%struct.gsi_trans_info = type { %struct.atomic_t, %struct.gsi_trans_pool, %struct.gsi_trans_pool, %struct.gsi_trans_pool, %struct.gsi_trans_pool, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.gsi_trans_pool = type { ptr, i32, i32, i32, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.gsi_evt_ring = type { ptr, %struct.gsi_ring }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.ipa_endpoint = type { ptr, i32, i32, i32, i8, ptr, i32, i32, ptr, [1 x i32], i32, %struct.atomic_t, %struct.atomic_t, %struct.delayed_work }
%struct.ipa_qmi = type { %struct.qmi_handle, %struct.qmi_handle, %struct.sockaddr_qrtr, %struct.work_struct, i8, i8, i8, i8, i8 }
%struct.qmi_handle = type { ptr, %struct.mutex, %struct.sockaddr_qrtr, %struct.work_struct, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.qmi_ops, %struct.idr, %struct.mutex, ptr }
%struct.qmi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.sockaddr_qrtr = type { i16, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.qcom_ssr_notify_data = type { ptr, i8 }
%struct.ipa_endpoint_config_data = type { i32, i8, i8, i8, i8, i8, i32, %union.anon.118 }
%union.anon.118 = type { %struct.ipa_endpoint_tx_data }
%struct.ipa_endpoint_tx_data = type { i32, i32, i32 }

@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rmnet_ipa%d\00", [20 x i8] zeroinitializer }, align 32
@ipa_modem_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&priv->work)\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpss\00", [27 x i8] zeroinitializer }, align 32
@ipa_modem_deconfig._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 467, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error %d unregistering notifier\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ipa_modem_deconfig\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/net/ipa/ipa_modem.c\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ipa_modem_deconfig._entry_ptr = internal global ptr @ipa_modem_deconfig._entry, section ".printk_index", align 4
@pm_wq = external dso_local local_unnamed_addr global ptr, align 4
@ipa_modem_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @ipa_open, ptr @ipa_stop, ptr @ipa_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ipa_modem_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.5, i32 417, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"received modem starting event\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ipa_modem_notify\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ipa_modem_notify._entry_ptr = internal global ptr @ipa_modem_notify._entry, section ".printk_index", align 4
@ipa_modem_notify._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.5, i32 423, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"received modem running event\0A\00", [34 x i8] zeroinitializer }, align 32
@ipa_modem_notify._entry_ptr.13 = internal global ptr @ipa_modem_notify._entry.11, section ".printk_index", align 4
@ipa_modem_notify._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.9, ptr @.str.5, i32 428, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"received modem %s event\0A\00", [39 x i8] zeroinitializer }, align 32
@ipa_modem_notify._entry_ptr.16 = internal global ptr @ipa_modem_notify._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"crashed\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"stopping\00", [23 x i8] zeroinitializer }, align 32
@ipa_modem_notify._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.9, ptr @.str.5, i32 434, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"received modem offline event\0A\00", [34 x i8] zeroinitializer }, align 32
@ipa_modem_notify._entry_ptr.21 = internal global ptr @ipa_modem_notify._entry.19, section ".printk_index", align 4
@ipa_modem_notify._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.9, ptr @.str.5, i32 438, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"received unrecognized event %lu\0A\00", [63 x i8] zeroinitializer }, align 32
@ipa_modem_notify._entry_ptr.24 = internal global ptr @ipa_modem_notify._entry.22, section ".printk_index", align 4
@ipa_modem_crashed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.5, i32 374, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"error %d getting power to handle crash\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ipa_modem_crashed\00", [46 x i8] zeroinitializer }, align 32
@ipa_modem_crashed._entry_ptr = internal global ptr @ipa_modem_crashed._entry, section ".printk_index", align 4
@ipa_modem_crashed._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.5, i32 386, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error %d flushing hash caches\0A\00", [33 x i8] zeroinitializer }, align 32
@ipa_modem_crashed._entry_ptr.29 = internal global ptr @ipa_modem_crashed._entry.27, section ".printk_index", align 4
@ipa_modem_crashed._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.5, i32 390, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"error %d resetting exception endpoint\0A\00", [57 x i8] zeroinitializer }, align 32
@ipa_modem_crashed._entry_ptr.32 = internal global ptr @ipa_modem_crashed._entry.30, section ".printk_index", align 4
@ipa_modem_crashed._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.26, ptr @.str.5, i32 396, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"error %d stopping modem\0A\00", [39 x i8] zeroinitializer }, align 32
@ipa_modem_crashed._entry_ptr.35 = internal global ptr @ipa_modem_crashed._entry.33, section ".printk_index", align 4
@ipa_modem_crashed._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.26, ptr @.str.5, i32 401, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"error %d zeroing modem memory regions\0A\00", [57 x i8] zeroinitializer }, align 32
@ipa_modem_crashed._entry_ptr.38 = internal global ptr @ipa_modem_crashed._entry.36, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.39 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967181]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967289]
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 292, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 302, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 451, i32 40 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 467, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [14 x i8] c"ipa_modem_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 196, i32 36 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 417, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 423, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 427, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 434, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 438, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 374, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 386, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 390, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 396, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.148 = private constant [31 x i8] c"../drivers/net/ipa/ipa_modem.c\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 401, i32 3 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @ipa_modem_crashed._entry, ptr @ipa_modem_crashed._entry.27, ptr @ipa_modem_crashed._entry.30, ptr @ipa_modem_crashed._entry.33, ptr @ipa_modem_crashed._entry.36, ptr @ipa_modem_crashed._entry_ptr, ptr @ipa_modem_crashed._entry_ptr.29, ptr @ipa_modem_crashed._entry_ptr.32, ptr @ipa_modem_crashed._entry_ptr.35, ptr @ipa_modem_crashed._entry_ptr.38, ptr @ipa_modem_deconfig._entry, ptr @ipa_modem_deconfig._entry_ptr, ptr @ipa_modem_notify._entry, ptr @ipa_modem_notify._entry.11, ptr @ipa_modem_notify._entry.14, ptr @ipa_modem_notify._entry.19, ptr @ipa_modem_notify._entry.22, ptr @ipa_modem_notify._entry_ptr, ptr @ipa_modem_notify._entry_ptr.13, ptr @ipa_modem_notify._entry_ptr.16, ptr @ipa_modem_notify._entry_ptr.21, ptr @ipa_modem_notify._entry_ptr.24, ptr @.str, ptr @ipa_modem_start.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ipa_modem_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_modem_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_modem_deconfig._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_modem_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_modem_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_modem_notify._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_modem_notify._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_modem_notify._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_modem_notify._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_modem_crashed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_modem_crashed._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_modem_crashed._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_modem_crashed._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_modem_crashed._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_modem_skb_rx(ptr noundef %netdev, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %stats1 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36
  %0 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %netdev, ptr %0, align 8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %2 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 249, ptr %protocol, align 8
  %3 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %stats1, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %stats1, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 2
  %7 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_bytes, align 4
  %add = add i32 %8, %6
  store i32 %add, ptr %rx_bytes, align 4
  %call = tail call i32 @netif_receive_skb(ptr noundef nonnull %skb) #4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 6
  %9 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_dropped, align 4
  %inc2 = add i32 %10, 1
  store i32 %inc2, ptr %rx_dropped, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_modem_suspend(ptr nocapture noundef readonly %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx = getelementptr %struct.ipa, ptr %3, i32 0, i32 35, i32 3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @ipa_endpoint_suspend_one(ptr noundef %5) #4
  %arrayidx3 = getelementptr %struct.ipa, ptr %3, i32 0, i32 35, i32 2
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx3, align 4
  tail call void @ipa_endpoint_suspend_one(ptr noundef %7) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_endpoint_suspend_one(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_modem_resume(ptr noundef %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx = getelementptr %struct.ipa, ptr %3, i32 0, i32 35, i32 2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @ipa_endpoint_resume_one(ptr noundef %5) #4
  %arrayidx3 = getelementptr %struct.ipa, ptr %3, i32 0, i32 35, i32 3
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx3, align 4
  tail call void @ipa_endpoint_resume_one(ptr noundef %7) #4
  %work = getelementptr i8, ptr %netdev, i32 2308
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_wq to i32))
  %8 = load ptr, ptr @pm_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %work) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_endpoint_resume_one(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipa_modem_start(ptr noundef %ipa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %modem_state = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 37
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %modem_state, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !71
  tail call void @llvm.prefetch.p0(ptr %modem_state, i32 1, i32 3, i32 1) #4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %entry
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %modem_state, ptr %modem_state, i32 0, i32 1, ptr elementtype(i32) %modem_state) #4, !srcloc !72
  %asmresult.i.i.i = extractvalue { i32, i32 } %0, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %0, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i)
  %cmp.not = icmp eq i32 %asmresult3.i.i.i, 0
  br i1 %cmp.not, label %if.end, label %atomic_cmpxchg.exit.cleanup_crit_edge

atomic_cmpxchg.exit.cleanup_crit_edge:            ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %atomic_cmpxchg.exit
  %call1 = tail call ptr @alloc_netdev_mqs(i32 noundef 48, ptr noundef nonnull @.str, i8 noundef zeroext 0, ptr noundef nonnull @ipa_modem_netdev_setup, i32 noundef 1, i32 noundef 1) #4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.do.end35_crit_edge, label %if.end3

if.end.do.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end35

if.end3:                                          ; preds = %if.end
  %pdev = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 2
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3
  %parent = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 133, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call1, i32 2304
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ipa, ptr %add.ptr.i, align 4
  %work = getelementptr i8, ptr %call1, i32 2308
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #4
  %5 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr i8, ptr %call1, i32 2324
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @ipa_modem_start.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry10 = getelementptr i8, ptr %call1, i32 2312
  %6 = ptrtoint ptr %entry10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry10, ptr %entry10, align 4
  %prev.i = getelementptr i8, ptr %call1, i32 2316
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry10, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call1, i32 2320
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ipa_modem_wake_queue_work, ptr %func, align 4
  %arrayidx = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 35, i32 2
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %netdev12 = getelementptr inbounds %struct.ipa_endpoint, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %netdev12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call1, ptr %netdev12, align 4
  %arrayidx14 = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 35, i32 3
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx14, align 4
  %netdev15 = getelementptr inbounds %struct.ipa_endpoint, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %netdev15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call1, ptr %netdev15, align 4
  %modem_netdev = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 38
  %15 = ptrtoint ptr %modem_netdev to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call1, ptr %modem_netdev, align 4
  %call16 = tail call i32 @register_netdev(ptr noundef nonnull %call1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end3.do.end35_crit_edge, label %if.then18

if.end3.do.end35_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end35

if.then18:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %modem_netdev to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %modem_netdev, align 4
  %17 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx14, align 4
  %netdev22 = getelementptr inbounds %struct.ipa_endpoint, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %netdev22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %netdev22, align 4
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %netdev25 = getelementptr inbounds %struct.ipa_endpoint, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %netdev25 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %netdev25, align 4
  tail call void @free_netdev(ptr noundef nonnull %call1) #4
  br label %do.end35

do.end35:                                         ; preds = %if.then18, %if.end3.do.end35_crit_edge, %if.end.do.end35_crit_edge
  %.sink = phi i32 [ 0, %if.then18 ], [ 0, %if.end.do.end35_crit_edge ], [ 2, %if.end3.do.end35_crit_edge ]
  %ret.069 = phi i32 [ %call16, %if.then18 ], [ -12, %if.end.do.end35_crit_edge ], [ 0, %if.end3.do.end35_crit_edge ]
  %call.i.i66 = tail call zeroext i1 @__kasan_check_write(ptr noundef %modem_state, i32 noundef 4) #4
  %23 = ptrtoint ptr %modem_state to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 %.sink, ptr %modem_state, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !74
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %atomic_cmpxchg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.069, %do.end35 ], [ 0, %atomic_cmpxchg.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipa_modem_netdev_setup(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ipa_modem_ops, ptr %netdev_ops, align 8
  tail call void @ether_setup(ptr noundef %netdev) #4
  %header_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 49
  %1 = ptrtoint ptr %header_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %header_ops, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 32
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 519, ptr %type, align 16
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 19
  %3 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %hard_header_len, align 2
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 31
  %4 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1500, ptr %max_mtu, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 20
  %5 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1500, ptr %mtu, align 4
  %addr_len = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 56
  %6 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %addr_len, align 1
  %flags = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 8
  %and = and i32 %8, -4099
  store i32 %and, ptr %flags, align 8
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 21
  %9 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 4, ptr %needed_headroom, align 8
  %needed_tailroom = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 22
  %10 = ptrtoint ptr %needed_tailroom to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %needed_tailroom, align 2
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 115
  %11 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1000, ptr %watchdog_timeo, align 4
  %hw_features = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 24
  %12 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 1, ptr %hw_features, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipa_modem_wake_queue_work(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void @ipa_power_modem_queue_wake(ptr noundef %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipa_modem_stop(ptr noundef %ipa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %modem_netdev = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 38
  %0 = ptrtoint ptr %modem_netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %modem_netdev, align 4
  %modem_state = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 37
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %modem_state, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !71
  tail call void @llvm.prefetch.p0(ptr %modem_state, i32 1, i32 3, i32 1) #4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %entry
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %modem_state, ptr %modem_state, i32 2, i32 3, ptr elementtype(i32) %modem_state) #4, !srcloc !72
  %asmresult.i.i.i = extractvalue { i32, i32 } %2, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %2, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !73
  %3 = zext i32 %asmresult3.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %asmresult3.i.i.i, label %if.then2 [
    i32 0, label %atomic_cmpxchg.exit.cleanup_crit_edge
    i32 2, label %if.end3
  ]

atomic_cmpxchg.exit.cleanup_crit_edge:            ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then2:                                         ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %atomic_cmpxchg.exit
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end3.if.end16_crit_edge, label %if.then4

if.end3.if.end16_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.then4:                                         ; preds = %if.end3
  %work = getelementptr i8, ptr %1, i32 2308
  %call6 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #4
  %flags = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.then4.if.end10_crit_edge, label %if.then8

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then8:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  %call9 = tail call i32 @ipa_stop(ptr noundef nonnull %1)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then4.if.end10_crit_edge
  tail call void @unregister_netdev(ptr noundef nonnull %1) #4
  %6 = ptrtoint ptr %modem_netdev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %modem_netdev, align 4
  %arrayidx = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 35, i32 3
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %netdev12 = getelementptr inbounds %struct.ipa_endpoint, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %netdev12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %netdev12, align 4
  %arrayidx14 = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 35, i32 2
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx14, align 4
  %netdev15 = getelementptr inbounds %struct.ipa_endpoint, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %netdev15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %netdev15, align 4
  tail call void @free_netdev(ptr noundef nonnull %1) #4
  br label %if.end16

if.end16:                                         ; preds = %if.end10, %if.end3.if.end16_crit_edge
  %call.i.i33 = tail call zeroext i1 @__kasan_check_write(ptr noundef %modem_state, i32 noundef 4) #4
  %13 = ptrtoint ptr %modem_state to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 0, ptr %modem_state, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !75
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then2, %atomic_cmpxchg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then2 ], [ 0, %if.end16 ], [ %asmresult3.i.i.i, %atomic_cmpxchg.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipa_stop(ptr nocapture noundef readonly %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %pdev = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev2, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.out_power_put_crit_edge, label %if.end

entry.out_power_put_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_power_put

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #4
  %arrayidx = getelementptr %struct.ipa, ptr %1, i32 0, i32 35, i32 3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void @ipa_endpoint_disable_one(ptr noundef %7) #4
  %arrayidx5 = getelementptr %struct.ipa, ptr %1, i32 0, i32 35, i32 2
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx5, align 4
  tail call void @ipa_endpoint_disable_one(ptr noundef %9) #4
  br label %out_power_put

out_power_put:                                    ; preds = %if.end, %entry.out_power_put_crit_edge
  %call.i12 = tail call i64 @ktime_get_mono_fast_ns() #4
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 12, i32 22
  %10 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store volatile i64 %call.i12, ptr %last_busy.i, align 8
  %call.i13 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev2, i32 noundef 13) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipa_modem_config(ptr noundef %ipa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %nb = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 4
  %0 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ipa_modem_notify, ptr %nb, align 64
  %call = tail call ptr @qcom_register_ssr_notifier(ptr noundef nonnull @.str.2, ptr noundef %nb) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %notifier4 = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 5
  %2 = ptrtoint ptr %notifier4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %notifier4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipa_modem_notify(ptr noundef %nb, i32 noundef %action, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -14272
  %pdev = getelementptr i8, ptr %nb, i32 -60
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %2 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %action, label %do.end17 [
    i32 0, label %do.end
    i32 1, label %do.end5
    i32 2, label %do.end9
    i32 3, label %do.end14
  ]

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.8) #7
  tail call void @ipa_uc_power(ptr noundef %add.ptr) #4
  tail call void @ipa_smp2p_notify_reset(ptr noundef %add.ptr) #4
  br label %sw.epilog

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.12) #7
  br label %sw.epilog

do.end9:                                          ; preds = %entry
  %crashed = getelementptr inbounds %struct.qcom_ssr_notify_data, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %crashed to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %crashed, align 4, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %cond = select i1 %tobool.not, ptr @.str.18, ptr @.str.17
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.15, ptr noundef nonnull %cond) #7
  %setup_complete = getelementptr i8, ptr %nb, i32 5116
  %5 = ptrtoint ptr %setup_complete to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %setup_complete, align 4, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool10.not = icmp eq i8 %6, 0
  br i1 %tobool10.not, label %do.end9.sw.epilog_crit_edge, label %if.then

do.end9.sw.epilog_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then:                                          ; preds = %do.end9
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  tail call void @ipa_smp2p_irq_disable_setup(ptr noundef %add.ptr) #4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1.i, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.25, i32 noundef %call.i.i) #7
  br label %ipa_modem_crashed.exit

if.end.i:                                         ; preds = %if.then
  tail call void @ipa_endpoint_modem_pause_all(ptr noundef %add.ptr, i1 noundef zeroext true) #4
  tail call void @ipa_endpoint_modem_hol_block_clear_all(ptr noundef %add.ptr) #4
  tail call void @ipa_table_reset(ptr noundef %add.ptr, i1 noundef zeroext true) #4
  %call2.i = tail call i32 @ipa_table_hash_flush(ptr noundef %add.ptr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end7.i_crit_edge, label %do.end6.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.28, i32 noundef %call2.i) #7
  br label %if.end7.i

if.end7.i:                                        ; preds = %do.end6.i, %if.end.i.if.end7.i_crit_edge
  %call8.i = tail call i32 @ipa_endpoint_modem_exception_reset_all(ptr noundef %add.ptr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end7.i.if.end14.i_crit_edge, label %do.end13.i

if.end7.i.if.end14.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14.i

do.end13.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.31, i32 noundef %call8.i) #7
  br label %if.end14.i

if.end14.i:                                       ; preds = %do.end13.i, %if.end7.i.if.end14.i_crit_edge
  tail call void @ipa_endpoint_modem_pause_all(ptr noundef %add.ptr, i1 noundef zeroext false) #4
  %call15.i = tail call i32 @ipa_modem_stop(ptr noundef %add.ptr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end14.i.if.end21.i_crit_edge, label %do.end20.i

if.end14.i.if.end21.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21.i

do.end20.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.34, i32 noundef %call15.i) #7
  br label %if.end21.i

if.end21.i:                                       ; preds = %do.end20.i, %if.end14.i.if.end21.i_crit_edge
  %call22.i = tail call i32 @ipa_mem_zero_modem(ptr noundef %add.ptr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end21.i.ipa_modem_crashed.exit_crit_edge, label %do.end27.i

if.end21.i.ipa_modem_crashed.exit_crit_edge:      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ipa_modem_crashed.exit

do.end27.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.37, i32 noundef %call22.i) #7
  br label %ipa_modem_crashed.exit

ipa_modem_crashed.exit:                           ; preds = %do.end27.i, %if.end21.i.ipa_modem_crashed.exit_crit_edge, %do.end.i
  %call.i55.i = tail call i64 @ktime_get_mono_fast_ns() #4
  %last_busy.i.i = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3, i32 12, i32 22
  %9 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store volatile i64 %call.i55.i, ptr %last_busy.i.i, align 8
  %call.i56.i = tail call i32 @__pm_runtime_suspend(ptr noundef %dev1.i, i32 noundef 13) #4
  br label %sw.epilog

do.end14:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.20) #7
  br label %sw.epilog

do.end17:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef %action) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end17, %do.end14, %ipa_modem_crashed.exit, %do.end9.sw.epilog_crit_edge, %do.end5, %do.end
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_register_ssr_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_modem_deconfig(ptr noundef %ipa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %notifier = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 5
  %2 = ptrtoint ptr %notifier to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %notifier, align 4
  %nb = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 4
  %call = tail call i32 @qcom_unregister_ssr_notifier(ptr noundef %3, ptr noundef %nb) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef %call) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = call ptr @memset(ptr %nb, i32 0, i32 16)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_unregister_ssr_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ether_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipa_open(ptr nocapture noundef readonly %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %pdev = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev2, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.err_power_put_crit_edge, label %if.end

entry.err_power_put_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_power_put

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.ipa, ptr %1, i32 0, i32 35, i32 2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call4 = tail call i32 @ipa_endpoint_enable_one(ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.err_power_put_crit_edge

if.end.err_power_put_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_power_put

if.end6:                                          ; preds = %if.end
  %arrayidx8 = getelementptr %struct.ipa, ptr %1, i32 0, i32 35, i32 3
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx8, align 4
  %call9 = tail call i32 @ipa_endpoint_enable_one(ptr noundef %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %err_disable_tx

if.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %9, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #4
  %call.i29 = tail call i64 @ktime_get_mono_fast_ns() #4
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 12, i32 22
  %10 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store volatile i64 %call.i29, ptr %last_busy.i, align 8
  %call.i30 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev2, i32 noundef 13) #4
  br label %cleanup

err_disable_tx:                                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  tail call void @ipa_endpoint_disable_one(ptr noundef %12) #4
  br label %err_power_put

err_power_put:                                    ; preds = %err_disable_tx, %if.end.err_power_put_crit_edge, %entry.err_power_put_crit_edge
  %ret.0 = phi i32 [ %call.i, %entry.err_power_put_crit_edge ], [ %call4, %if.end.err_power_put_crit_edge ], [ %call9, %err_disable_tx ]
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !77
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #4
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #4, !srcloc !78
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %err_power_put.cleanup_crit_edge, label %do.end11.i.i.i.i

err_power_put.cleanup_crit_edge:                  ; preds = %err_power_put
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %err_power_put
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !79
  br label %cleanup

cleanup:                                          ; preds = %do.end11.i.i.i.i, %err_power_put.cleanup_crit_edge, %if.end12
  %retval.0 = phi i32 [ 0, %if.end12 ], [ %ret.0, %err_power_put.cleanup_crit_edge ], [ %ret.0, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipa_start_xmit(ptr noundef %skb, ptr nocapture noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.err_drop_skb_crit_edge, label %if.end

entry.err_drop_skb_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_drop_skb

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.ipa, ptr %1, i32 0, i32 35, i32 2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %data = getelementptr inbounds %struct.ipa_endpoint, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %qmap = getelementptr inbounds %struct.ipa_endpoint_config_data, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %qmap to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %qmap, align 1, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %10 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 249, i16 %11)
  %cmp.not = icmp eq i16 %11, 249
  br i1 %cmp.not, label %land.lhs.true.if.end6_crit_edge, label %land.lhs.true.err_drop_skb_crit_edge

land.lhs.true.err_drop_skb_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_drop_skb

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %pdev = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 4
  %dev7 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev7, i32 noundef 5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp9 = icmp slt i32 %call.i, 1
  br i1 %cmp9, label %if.then11, label %if.end19

if.then11:                                        ; preds = %if.end6
  %14 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %call.i, label %if.then17 [
    i32 -115, label %if.then11.if.end18_crit_edge
    i32 0, label %if.then11.if.end18_crit_edge64
  ]

if.then11.if.end18_crit_edge64:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then11.if.end18_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then17:                                        ; preds = %if.then11
  tail call void @ipa_power_modem_queue_active(ptr noundef %1) #4
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !77
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #4
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #4, !srcloc !78
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then17.err_drop_skb_crit_edge, label %do.end11.i.i.i.i

if.then17.err_drop_skb_crit_edge:                 ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_drop_skb

do.end11.i.i.i.i:                                 ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !79
  br label %err_drop_skb

if.end18:                                         ; preds = %if.then11.if.end18_crit_edge, %if.then11.if.end18_crit_edge64
  tail call void @ipa_power_modem_queue_stop(ptr noundef %1) #4
  %usage_count.i56 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i57 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i56, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !77
  tail call void @llvm.prefetch.p0(ptr %usage_count.i56, i32 1, i32 3, i32 1) #4
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i56, ptr %usage_count.i56, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i56) #4, !srcloc !78
  %asmresult.i.i.i.i58 = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i58)
  %cmp.not.i.i.i.i59 = icmp eq i32 %asmresult.i.i.i.i58, 0
  br i1 %cmp.not.i.i.i.i59, label %if.end18.cleanup_crit_edge, label %do.end11.i.i.i.i60

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end11.i.i.i.i60:                               ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !79
  br label %cleanup

if.end19:                                         ; preds = %if.end6
  tail call void @ipa_power_modem_queue_active(ptr noundef %1) #4
  %call20 = tail call i32 @ipa_endpoint_skb_tx(ptr noundef %5, ptr noundef %skb) #4
  %call.i62 = tail call i64 @ktime_get_mono_fast_ns() #4
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3, i32 12, i32 22
  %17 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store volatile i64 %call.i62, ptr %last_busy.i, align 8
  %call.i63 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev7, i32 noundef 13) #4
  %18 = zext i32 %call20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %call20, label %if.end19.cleanup_crit_edge [
    i32 0, label %if.end28
    i32 -7, label %if.end19.err_drop_skb_crit_edge
  ]

if.end19.err_drop_skb_crit_edge:                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_drop_skb

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end28:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 1
  %19 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %tx_packets, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 3
  %21 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %22, %3
  store i32 %add, ptr %tx_bytes, align 4
  br label %cleanup

err_drop_skb:                                     ; preds = %if.end19.err_drop_skb_crit_edge, %do.end11.i.i.i.i, %if.then17.err_drop_skb_crit_edge, %land.lhs.true.err_drop_skb_crit_edge, %entry.err_drop_skb_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #4
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 7
  %23 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_dropped, align 4
  %inc29 = add i32 %24, 1
  store i32 %inc29, ptr %tx_dropped, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_drop_skb, %if.end28, %if.end19.cleanup_crit_edge, %do.end11.i.i.i.i60, %if.end18.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %err_drop_skb ], [ 0, %if.end28 ], [ 16, %if.end19.cleanup_crit_edge ], [ 16, %if.end18.cleanup_crit_edge ], [ 16, %do.end11.i.i.i.i60 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipa_endpoint_enable_one(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_endpoint_disable_one(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_power_modem_queue_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_power_modem_queue_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipa_endpoint_skb_tx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_power_modem_queue_wake(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_uc_power(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_smp2p_notify_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_smp2p_irq_disable_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_endpoint_modem_pause_all(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_endpoint_modem_hol_block_clear_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_table_reset(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipa_table_hash_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipa_endpoint_modem_exception_reset_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipa_mem_zero_modem(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !11, !12, !13, !14, !15, !17, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ipa/ipa_modem.c", i32 292, i32 11}
!2 = !{ptr @ipa_modem_start.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/net/ipa/ipa_modem.c", i32 302, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/ipa/ipa_modem.c", i32 451, i32 40}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ipa/ipa_modem.c", i32 467, i32 3}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !8, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ipa_modem_deconfig._entry, !8, !"_entry", i1 false, i1 false}
!14 = !{ptr @ipa_modem_deconfig._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @ipa_modem_ops, !16, !"ipa_modem_ops", i1 false, i1 false}
!16 = !{!"../drivers/net/ipa/ipa_modem.c", i32 196, i32 36}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ipa/ipa_modem.c", i32 417, i32 3}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ipa_modem_notify._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @ipa_modem_notify._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ipa/ipa_modem.c", i32 423, i32 3}
!25 = !{ptr @ipa_modem_notify._entry.11, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @ipa_modem_notify._entry_ptr.13, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ipa/ipa_modem.c", i32 427, i32 3}
!29 = !{ptr @ipa_modem_notify._entry.14, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @ipa_modem_notify._entry_ptr.16, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ipa/ipa_modem.c", i32 434, i32 3}
!35 = !{ptr @ipa_modem_notify._entry.19, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @ipa_modem_notify._entry_ptr.21, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.23, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ipa/ipa_modem.c", i32 438, i32 3}
!39 = !{ptr @ipa_modem_notify._entry.22, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ipa_modem_notify._entry_ptr.24, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ipa/ipa_modem.c", i32 374, i32 3}
!43 = !{ptr @.str.26, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @ipa_modem_crashed._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @ipa_modem_crashed._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ipa/ipa_modem.c", i32 386, i32 3}
!48 = !{ptr @ipa_modem_crashed._entry.27, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @ipa_modem_crashed._entry_ptr.29, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.31, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ipa/ipa_modem.c", i32 390, i32 3}
!52 = !{ptr @ipa_modem_crashed._entry.30, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @ipa_modem_crashed._entry_ptr.32, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.34, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ipa/ipa_modem.c", i32 396, i32 3}
!56 = !{ptr @ipa_modem_crashed._entry.33, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @ipa_modem_crashed._entry_ptr.35, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.37, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ipa/ipa_modem.c", i32 401, i32 3}
!60 = !{ptr @ipa_modem_crashed._entry.36, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @ipa_modem_crashed._entry_ptr.38, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{i64 2148463498}
!72 = !{i64 845411, i64 845435, i64 845456, i64 845473, i64 845490}
!73 = !{i64 2148463724}
!74 = !{i64 2156124963}
!75 = !{i64 2156125186}
!76 = !{i8 0, i8 2}
!77 = !{i64 2148361094}
!78 = !{i64 845917, i64 845942, i64 845964, i64 845980, i64 845992, i64 846012, i64 846036, i64 846052, i64 846064}
!79 = !{i64 2148361282}

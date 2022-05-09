; ModuleID = '/llk/IR_all_yes/drivers/staging/most/net/net.c_pt.bc'
source_filename = "../drivers/staging/most/net/net.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.most_component = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.most_channel_config = type { i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.net_dev_channel = type { i8, i32 }
%struct.mbo = type { ptr, ptr, %struct.list_head, ptr, ptr, i16, ptr, i32, i16, i16, i32, ptr }
%struct.net_dev_context = type { ptr, i8, ptr, %struct.net_dev_channel, %struct.net_dev_channel, %struct.list_head }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.117, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.117 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.most_interface = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }

@comp = internal global { %struct.most_component, [60 x i8] } { %struct.most_component { %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @comp_probe_channel, ptr @comp_disconnect_channel, ptr @comp_rx_data, ptr @comp_resume_tx_channel, ptr null }, [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_most_net__339_577_most_net_init6 = internal global ptr @most_net_init, section ".initcall6.init", align 4
@__exitcall_most_net_exit = internal global ptr @most_net_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file340 = internal constant [48 x i8] c"most_net.file=drivers/staging/most/net/most_net\00", section ".modinfo", align 1
@__UNIQUE_ID_license341 = internal constant [21 x i8] c"most_net.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author342 = internal constant [57 x i8] c"most_net.author=Andrey Shvetsov <andrey.shvetsov@k2l.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description343 = internal constant [62 x i8] c"most_net.description=Networking Component Module for Mostcore\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"net\00", [28 x i8] zeroinitializer }, align 32
@probe_disc_mt = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @probe_disc_mt, i64 52), ptr getelementptr (i8, ptr @probe_disc_mt, i64 52) }, ptr @probe_disc_mt, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"meth%d\00", [25 x i8] zeroinitializer }, align 32
@list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.24, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@net_devices = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @net_devices, ptr @net_devices }, [24 x i8] zeroinitializer }, align 32
@comp_probe_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013most_net: direction is allocated\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"comp_probe_channel\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/staging/most/net/net.c\00", [33 x i8] zeroinitializer }, align 32
@comp_probe_channel._entry_ptr = internal global ptr @comp_probe_channel._entry, section ".printk_index", align 4
@comp_probe_channel._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013most_net: register_netdev() failed\0A\00", [58 x i8] zeroinitializer }, align 32
@comp_probe_channel._entry_ptr.7 = internal global ptr @comp_probe_channel._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"probe_disc_mt.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"probe_disc_mt\00", [18 x i8] zeroinitializer }, align 32
@most_nd_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @most_nd_open, ptr @most_nd_stop, ptr @most_nd_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr @most_nd_set_mac_address, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"most_start_channel() failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"set mac %pM\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reject mac %pM\0A\00", [16 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@skb_to_mamac.broadcast = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\03\FF", [30 x i8] zeroinitializer }, align 32
@skb_to_mamac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013most_net: drop: too large packet! (%u)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"skb_to_mamac\00", [19 x i8] zeroinitializer }, align 32
@skb_to_mamac._entry_ptr = internal global ptr @skb_to_mamac._entry, section ".printk_index", align 4
@skb_to_mamac._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.4, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013most_net: drop: too small buffer! (%d for %d)\0A\00", [47 x i8] zeroinitializer }, align 32
@skb_to_mamac._entry_ptr.17 = internal global ptr @skb_to_mamac._entry.15, section ".printk_index", align 4
@skb_to_mamac._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.4, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013most_net: drop: too small packet! (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@skb_to_mamac._entry_ptr.20 = internal global ptr @skb_to_mamac._entry.18, section ".printk_index", align 4
@skb_to_mep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.21, ptr @.str.4, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"skb_to_mep\00", [21 x i8] zeroinitializer }, align 32
@skb_to_mep._entry_ptr = internal global ptr @skb_to_mep._entry, section ".printk_index", align 4
@skb_to_mep._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.21, ptr @.str.4, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@skb_to_mep._entry_ptr.23 = internal global ptr @skb_to_mep._entry.22, section ".printk_index", align 4
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"list_lock\00", [22 x i8] zeroinitializer }, align 32
@comp_rx_data.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@comp_rx_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013most_net: drop packet: no memory for skb\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"comp_rx_data\00", [19 x i8] zeroinitializer }, align 32
@comp_rx_data._entry_ptr = internal global ptr @comp_rx_data._entry, section ".printk_index", align 4
@___asan_gen_.27 = private unnamed_addr constant [5 x i8] c"comp\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 510, i32 30 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 512, i32 10 }
@___asan_gen_.33 = private unnamed_addr constant [14 x i8] c"probe_disc_mt\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 324, i32 9 }
@___asan_gen_.39 = private unnamed_addr constant [10 x i8] c"list_lock\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [12 x i8] c"net_devices\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 70, i32 25 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 343, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 349, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 71, i32 8 }
@___asan_gen_.69 = private unnamed_addr constant [12 x i8] c"most_nd_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 267, i32 36 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 194, i32 19 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 566, i32 21 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 570, i32 21 }
@___asan_gen_.81 = private unnamed_addr constant [10 x i8] c"broadcast\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 78, i32 18 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 85, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 90, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 96, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 137, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 142, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 72, i32 8 }
@___asan_gen_.117 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.124 = private constant [34 x i8] c"../drivers/staging/most/net/net.c\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 468, i32 3 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author342, ptr @__UNIQUE_ID_description343, ptr @__UNIQUE_ID_file340, ptr @__UNIQUE_ID_license341, ptr @__exitcall_most_net_exit, ptr @__initcall__kmod_most_net__339_577_most_net_init6, ptr @comp_probe_channel._entry, ptr @comp_probe_channel._entry.5, ptr @comp_probe_channel._entry_ptr, ptr @comp_probe_channel._entry_ptr.7, ptr @comp_rx_data._entry, ptr @comp_rx_data._entry_ptr, ptr @most_net_exit, ptr @skb_to_mamac._entry, ptr @skb_to_mamac._entry.15, ptr @skb_to_mamac._entry.18, ptr @skb_to_mamac._entry_ptr, ptr @skb_to_mamac._entry_ptr.17, ptr @skb_to_mamac._entry_ptr.20, ptr @skb_to_mep._entry, ptr @skb_to_mep._entry.22, ptr @skb_to_mep._entry_ptr, ptr @skb_to_mep._entry_ptr.23, ptr @comp, ptr @.str, ptr @probe_disc_mt, ptr @.str.1, ptr @list_lock, ptr @net_devices, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @most_nd_ops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @skb_to_mamac.broadcast, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comp to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe_disc_mt to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_devices to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comp_probe_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comp_probe_channel._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @most_nd_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_to_mamac.broadcast to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_to_mamac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_to_mamac._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_to_mamac._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_to_mep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_to_mep._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comp_rx_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @most_net_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @most_deregister_configfs_subsys(ptr noundef nonnull @comp) #6
  %call = tail call i32 @most_deregister_component(ptr noundef nonnull @comp) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @most_deregister_configfs_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @most_deregister_component(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @most_net_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @most_register_component(ptr noundef nonnull @comp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @most_register_configfs_subsys(ptr noundef nonnull @comp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @most_deregister_component(ptr noundef nonnull @comp) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comp_probe_channel(ptr noundef %iface, i32 noundef %channel_idx, ptr nocapture noundef readonly %ccfg, ptr nocapture noundef readnone %name, ptr nocapture noundef readnone %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %iface, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data_type = getelementptr inbounds %struct.most_channel_config, ptr %ccfg, i32 0, i32 1
  %0 = ptrtoint ptr %data_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @probe_disc_mt, i32 noundef 0) #6
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end2
  %.pn.in.i = phi ptr [ @net_devices, %if.end2 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @net_devices
  br i1 %cmp.not.i, label %for.cond.i.if.then4_crit_edge, label %for.body.i

for.cond.i.if.then4_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

for.body.i:                                       ; preds = %for.cond.i
  %nd.0.i = getelementptr i8, ptr %.pn.i, i32 -28
  %3 = ptrtoint ptr %nd.0.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd.0.i, align 4
  %cmp2.i = icmp eq ptr %4, %iface
  br i1 %cmp2.i, label %get_net_dev.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

get_net_dev.exit:                                 ; preds = %for.body.i
  %nd.0.i.le = getelementptr i8, ptr %.pn.i, i32 -28
  %tobool3.not = icmp eq ptr %nd.0.i.le, null
  br i1 %tobool3.not, label %get_net_dev.exit.if.then4_crit_edge, label %if.else

get_net_dev.exit.if.then4_crit_edge:              ; preds = %get_net_dev.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

if.then4:                                         ; preds = %get_net_dev.exit.if.then4_crit_edge, %for.cond.i.if.then4_crit_edge
  %call5 = tail call ptr @alloc_netdev_mqs(i32 noundef 36, ptr noundef nonnull @.str.1, i8 noundef zeroext 0, ptr noundef nonnull @most_nd_setup, i32 noundef 1, i32 noundef 1) #6
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then4.unlock_crit_edge, label %if.end8

if.then4.unlock_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end8:                                          ; preds = %if.then4
  %add.ptr.i = getelementptr i8, ptr %call5, i32 2304
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %iface, ptr %add.ptr.i, align 4
  %dev11 = getelementptr i8, ptr %call5, i32 2312
  %6 = ptrtoint ptr %dev11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5, ptr %dev11, align 4
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @list_lock) #6
  %list = getelementptr i8, ptr %call5, i32 2332
  %7 = load ptr, ptr @net_devices, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef nonnull @net_devices, ptr noundef %7) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end8.list_add.exit_crit_edge

if.end8.list_add.exit_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev1.i.i, align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %list, align 4
  %prev3.i.i = getelementptr i8, ptr %call5, i32 2336
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @net_devices, ptr %prev3.i.i, align 4
  store volatile ptr %list, ptr @net_devices, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end8.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @list_lock, i32 noundef %call15) #6
  %11 = ptrtoint ptr %ccfg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ccfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp18 = icmp eq i32 %12, 2
  %cond.v = select i1 %cmp18, i32 2324, i32 2316
  %cond = getelementptr i8, ptr %call5, i32 %cond.v
  br label %if.end47

if.else:                                          ; preds = %get_net_dev.exit
  %13 = ptrtoint ptr %ccfg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ccfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp21 = icmp eq i32 %14, 2
  %cond28.v = select i1 %cmp21, i32 -8, i32 -16
  %cond28 = getelementptr i8, ptr %.pn.i, i32 %cond28.v
  %15 = ptrtoint ptr %cond28 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cond28, align 4, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool29.not = icmp eq i8 %16, 0
  br i1 %tobool29.not, label %if.end36, label %do.end33

do.end33:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #9
  br label %unlock

if.end36:                                         ; preds = %if.else
  %dev37 = getelementptr i8, ptr %.pn.i, i32 -20
  %17 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev37, align 4
  %call38 = tail call i32 @register_netdev(ptr noundef %18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end36.if.end47_crit_edge, label %do.end43

if.end36.if.end47_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

do.end43:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #9
  br label %unlock

if.end47:                                         ; preds = %if.end36.if.end47_crit_edge, %list_add.exit
  %ch.0 = phi ptr [ %cond28, %if.end36.if.end47_crit_edge ], [ %cond, %list_add.exit ]
  %ch_id = getelementptr inbounds %struct.net_dev_channel, ptr %ch.0, i32 0, i32 1
  %19 = ptrtoint ptr %ch_id to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %channel_idx, ptr %ch_id, align 4
  %20 = ptrtoint ptr %ch.0 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %ch.0, align 4
  br label %unlock

unlock:                                           ; preds = %if.end47, %do.end43, %do.end33, %if.then4.unlock_crit_edge
  %ret.0 = phi i32 [ -22, %do.end33 ], [ -22, %do.end43 ], [ 0, %if.end47 ], [ -12, %if.then4.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @probe_disc_mt) #6
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %unlock ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comp_disconnect_channel(ptr noundef readnone %iface, i32 noundef %channel_idx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @probe_disc_mt, i32 noundef 0) #6
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ @net_devices, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @net_devices
  br i1 %cmp.not.i, label %for.cond.i.unlock_crit_edge, label %for.body.i

for.cond.i.unlock_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

for.body.i:                                       ; preds = %for.cond.i
  %nd.0.i = getelementptr i8, ptr %.pn.i, i32 -28
  %1 = ptrtoint ptr %nd.0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nd.0.i, align 4
  %cmp2.i = icmp eq ptr %2, %iface
  br i1 %cmp2.i, label %get_net_dev.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

get_net_dev.exit:                                 ; preds = %for.body.i
  %nd.0.i.le = getelementptr i8, ptr %.pn.i, i32 -28
  %tobool.not = icmp eq ptr %nd.0.i.le, null
  br i1 %tobool.not, label %get_net_dev.exit.unlock_crit_edge, label %if.end

get_net_dev.exit.unlock_crit_edge:                ; preds = %get_net_dev.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end:                                           ; preds = %get_net_dev.exit
  %rx = getelementptr i8, ptr %.pn.i, i32 -16
  %3 = ptrtoint ptr %rx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %rx, align 4, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %ch_id = getelementptr i8, ptr %.pn.i, i32 -12
  %5 = ptrtoint ptr %ch_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ch_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %channel_idx)
  %cmp = icmp eq i32 %6, %channel_idx
  br i1 %cmp, label %land.lhs.true.land.lhs.true19_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true.land.lhs.true19_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true19

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %tx = getelementptr i8, ptr %.pn.i, i32 -8
  %7 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tx, align 4, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool6.not = icmp eq i8 %8, 0
  br i1 %tobool6.not, label %if.else.unlock_crit_edge, label %land.lhs.true7

if.else.unlock_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

land.lhs.true7:                                   ; preds = %if.else
  %ch_id9 = getelementptr i8, ptr %.pn.i, i32 -4
  %9 = ptrtoint ptr %ch_id9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ch_id9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %channel_idx)
  %cmp10 = icmp eq i32 %10, %channel_idx
  br i1 %cmp10, label %if.end15, label %land.lhs.true7.unlock_crit_edge

land.lhs.true7.unlock_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end15:                                         ; preds = %land.lhs.true7
  br i1 %tobool1.not, label %if.end15.do.body33_crit_edge, label %if.end15.land.lhs.true19_crit_edge

if.end15.land.lhs.true19_crit_edge:               ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true19

if.end15.do.body33_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body33

land.lhs.true19:                                  ; preds = %if.end15.land.lhs.true19_crit_edge, %land.lhs.true.land.lhs.true19_crit_edge
  %ch.068 = phi ptr [ %tx, %if.end15.land.lhs.true19_crit_edge ], [ %rx, %land.lhs.true.land.lhs.true19_crit_edge ]
  %tx20 = getelementptr i8, ptr %.pn.i, i32 -8
  %11 = ptrtoint ptr %tx20 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tx20, align 4, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool22.not = icmp eq i8 %12, 0
  br i1 %tobool22.not, label %land.lhs.true19.do.body33_crit_edge, label %do.body24

land.lhs.true19.do.body33_crit_edge:              ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body33

do.body24:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #8
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @list_lock) #6
  %13 = ptrtoint ptr %ch.068 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %ch.068, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @list_lock, i32 noundef %call27) #6
  %dev = getelementptr i8, ptr %.pn.i, i32 -20
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void @unregister_netdev(ptr noundef %15) #6
  br label %unlock

do.body33:                                        ; preds = %land.lhs.true19.do.body33_crit_edge, %if.end15.do.body33_crit_edge
  %call40 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @list_lock) #6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.i) #6
  br i1 %call.i.i, label %if.end.i.i, label %do.body33.list_del.exit_crit_edge

do.body33.list_del.exit_crit_edge:                ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %.pn.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %.pn.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.body33.list_del.exit_crit_edge
  %22 = ptrtoint ptr %.pn.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @list_lock, i32 noundef %call40) #6
  %dev45 = getelementptr i8, ptr %.pn.i, i32 -20
  %24 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev45, align 4
  tail call void @free_netdev(ptr noundef %25) #6
  br label %unlock

unlock:                                           ; preds = %list_del.exit, %do.body24, %land.lhs.true7.unlock_crit_edge, %if.else.unlock_crit_edge, %get_net_dev.exit.unlock_crit_edge, %for.cond.i.unlock_crit_edge
  %ret.0 = phi i32 [ 0, %do.body24 ], [ 0, %list_del.exit ], [ -22, %get_net_dev.exit.unlock_crit_edge ], [ -22, %land.lhs.true7.unlock_crit_edge ], [ -22, %if.else.unlock_crit_edge ], [ -22, %for.cond.i.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @probe_disc_mt) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comp_rx_data(ptr noundef %mbo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %virt_address = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 6
  %0 = ptrtoint ptr %virt_address to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %virt_address, align 4
  %processed_length = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 9
  %2 = ptrtoint ptr %processed_length to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %processed_length, align 2
  %conv = zext i16 %3 to i32
  %ifp = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 3
  %4 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ifp, align 4
  %call = tail call fastcc ptr @get_net_dev_hold(ptr noundef %5)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ch_id = getelementptr inbounds %struct.net_dev_context, ptr %call, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %ch_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ch_id, align 4
  %hdm_channel_id = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 5
  %8 = ptrtoint ptr %hdm_channel_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hdm_channel_id, align 4
  %conv1 = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv1)
  %cmp.not = icmp eq i32 %7, %conv1
  br i1 %cmp.not, label %if.end4, label %if.end.put_nd_crit_edge

if.end.put_nd_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %put_nd

if.end4:                                          ; preds = %if.end
  %dev5 = getelementptr inbounds %struct.net_dev_context, ptr %call, i32 0, i32 2
  %10 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev5, align 4
  %is_mamac = getelementptr inbounds %struct.net_dev_context, ptr %call, i32 0, i32 1
  %12 = ptrtoint ptr %is_mamac to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_mamac, align 4, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool6.not = icmp eq i8 %13, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %3)
  %cmp.i = icmp ugt i16 %3, 16
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then7.put_nd_crit_edge

if.then7.put_nd_crit_edge:                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %put_nd

land.lhs.true.i:                                  ; preds = %if.then7
  %arrayidx.i = getelementptr i8, ptr %1, i32 3
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  %16 = and i8 %15, 56
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %16)
  %cmp1.i = icmp eq i8 %16, 8
  br i1 %cmp1.i, label %pms_is_mamac.exit, label %land.lhs.true.i.put_nd_crit_edge

land.lhs.true.i.put_nd_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %put_nd

pms_is_mamac.exit:                                ; preds = %land.lhs.true.i
  %arrayidx3.i = getelementptr i8, ptr %1, i32 14
  %17 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx3.i, align 1
  %.mask.i = and i8 %18, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %.mask.i)
  %cmp7.i = icmp eq i8 %.mask.i, -96
  br i1 %cmp7.i, label %pms_is_mamac.exit.if.end22_crit_edge, label %pms_is_mamac.exit.put_nd_crit_edge

pms_is_mamac.exit.put_nd_crit_edge:               ; preds = %pms_is_mamac.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %put_nd

pms_is_mamac.exit.if.end22_crit_edge:             ; preds = %pms_is_mamac.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %3)
  %cmp13 = icmp ugt i16 %3, 8
  br i1 %cmp13, label %land.lhs.true, label %if.else.put_nd_crit_edge

if.else.put_nd_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %put_nd

land.lhs.true:                                    ; preds = %if.else
  %arrayidx = getelementptr i8, ptr %1, i32 3
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  %21 = and i8 %20, 56
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %21)
  %cmp16 = icmp eq i8 %21, 32
  br i1 %cmp16, label %land.lhs.true.if.end22_crit_edge, label %land.lhs.true.put_nd_crit_edge

land.lhs.true.put_nd_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %put_nd

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.end22:                                         ; preds = %land.lhs.true.if.end22_crit_edge, %pms_is_mamac.exit.if.end22_crit_edge
  %.sink = phi i32 [ -2, %pms_is_mamac.exit.if.end22_crit_edge ], [ -8, %land.lhs.true.if.end22_crit_edge ]
  %sub20 = add nsw i32 %.sink, %conv
  %call.i.i119 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %sub20, i32 noundef 2592) #6
  %tobool23.not = icmp eq ptr %call.i.i119, null
  br i1 %tobool23.not, label %if.then24, label %if.end41

if.then24:                                        ; preds = %if.end22
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 36, i32 6
  %22 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_dropped, align 8
  %inc = add i32 %23, 1
  store i32 %inc, ptr %rx_dropped, align 8
  %.b118 = load i1, ptr @comp_rx_data.__already_done, align 1
  br i1 %.b118, label %if.then24.out_crit_edge, label %if.then31, !prof !83

if.then24.out_crit_edge:                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then31:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @comp_rx_data.__already_done, align 1
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #9
  br label %out

if.end41:                                         ; preds = %if.end22
  %24 = getelementptr inbounds %struct.anon.44, ptr %call.i.i119, i32 0, i32 2
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %11, ptr %24, align 8
  %26 = ptrtoint ptr %is_mamac to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %is_mamac, align 4, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool43.not = icmp eq i8 %27, 0
  br i1 %tobool43.not, label %if.end41.if.end55_crit_edge, label %if.then44

if.end41.if.end55_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %call45 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i119, i32 noundef 6) #6
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 86
  %28 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_addr, align 64
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %32 = ptrtoint ptr %call45 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %call45, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 4
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %call45, i32 4
  %35 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %add.ptr1.i, align 2
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i119, i32 noundef 4) #6
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 0, ptr %call.i, align 1
  %add.ptr = getelementptr i8, ptr %1, i32 5
  %call.i120 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i119, i32 noundef 2) #6
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %add.ptr, align 1
  %39 = ptrtoint ptr %call.i120 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 %38, ptr %call.i120, align 1
  %add.ptr48 = getelementptr i8, ptr %1, i32 10
  %call.i121 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i119, i32 noundef 2) #6
  %40 = ptrtoint ptr %add.ptr48 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %add.ptr48, align 1
  %42 = ptrtoint ptr %call.i121 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 2)
  store i16 %41, ptr %call.i121, align 1
  br label %if.end55

if.end55:                                         ; preds = %if.then44, %if.end41.if.end55_crit_edge
  %.sink125 = phi i32 [ 16, %if.then44 ], [ 8, %if.end41.if.end55_crit_edge ]
  %.sink124 = phi i32 [ -16, %if.then44 ], [ -8, %if.end41.if.end55_crit_edge ]
  %add.ptr53 = getelementptr i8, ptr %1, i32 %.sink125
  %sub54 = add nsw i32 %.sink124, %conv
  %call.i122 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i119, i32 noundef %sub54) #6
  %43 = call ptr @memcpy(ptr %call.i122, ptr %add.ptr53, i32 %sub54)
  %call57 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i.i119, ptr noundef %11) #6
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i.i119, i32 0, i32 15, i32 0, i32 18
  %44 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %call57, ptr %protocol, align 8
  %len58 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i119, i32 0, i32 6
  %45 = ptrtoint ptr %len58 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len58, align 4
  %call59 = tail call i32 @netif_rx(ptr noundef nonnull %call.i.i119) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp eq i32 %call59, 0
  br i1 %cmp60, label %if.then62, label %if.else67

if.then62:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  %stats63 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 36
  %47 = ptrtoint ptr %stats63 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %stats63, align 8
  %inc64 = add i32 %48, 1
  store i32 %inc64, ptr %stats63, align 8
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 36, i32 2
  %49 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rx_bytes, align 8
  %add66 = add i32 %50, %46
  store i32 %add66, ptr %rx_bytes, align 8
  br label %out

if.else67:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  %rx_dropped69 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 36, i32 6
  %51 = ptrtoint ptr %rx_dropped69 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rx_dropped69, align 8
  %inc70 = add i32 %52, 1
  store i32 %inc70, ptr %rx_dropped69, align 8
  br label %out

out:                                              ; preds = %if.else67, %if.then62, %if.then31, %if.then24.out_crit_edge
  tail call void @most_put_mbo(ptr noundef %mbo) #6
  br label %put_nd

put_nd:                                           ; preds = %out, %land.lhs.true.put_nd_crit_edge, %if.else.put_nd_crit_edge, %pms_is_mamac.exit.put_nd_crit_edge, %land.lhs.true.i.put_nd_crit_edge, %if.then7.put_nd_crit_edge, %if.end.put_nd_crit_edge
  %ret.0 = phi i32 [ 0, %out ], [ -5, %if.end.put_nd_crit_edge ], [ -5, %pms_is_mamac.exit.put_nd_crit_edge ], [ -5, %land.lhs.true.put_nd_crit_edge ], [ -5, %if.else.put_nd_crit_edge ], [ -5, %land.lhs.true.i.put_nd_crit_edge ], [ -5, %if.then7.put_nd_crit_edge ]
  %dev72 = getelementptr inbounds %struct.net_dev_context, ptr %call, i32 0, i32 2
  %53 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev72, align 4
  %tobool.not.i = icmp eq ptr %54, null
  br i1 %tobool.not.i, label %put_nd.cleanup_crit_edge, label %do.body1.i

put_nd.cleanup_crit_edge:                         ; preds = %put_nd
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body1.i:                                       ; preds = %put_nd
  %55 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !84
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 118
  %56 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pcpu_refcnt.i, align 4
  %58 = ptrtoint ptr %57 to i32
  %59 = tail call i32 @llvm.read_register.i32(metadata !72) #6
  %and.i.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cpu.i, align 4
  %arrayidx.i123 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %62
  %63 = ptrtoint ptr %arrayidx.i123 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i123, align 4
  %add.i = add i32 %64, %58
  %65 = inttoptr i32 %add.i to ptr
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 4
  %add13.i = add i32 %67, -1
  store i32 %add13.i, ptr %65, align 4
  %68 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !85
  %and.i.i.i = and i32 %68, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !86

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %55) #6, !srcloc !87
  br label %cleanup

cleanup:                                          ; preds = %do.end30.i, %put_nd.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ %ret.0, %put_nd.cleanup_crit_edge ], [ %ret.0, %do.end30.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comp_resume_tx_channel(ptr noundef %iface, i32 noundef %channel_idx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @get_net_dev_hold(ptr noundef %iface)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ch_id = getelementptr inbounds %struct.net_dev_context, ptr %call, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %ch_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ch_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %channel_idx)
  %cmp.not = icmp eq i32 %1, %channel_idx
  br i1 %cmp.not, label %if.end2, label %if.end.put_nd_crit_edge

if.end.put_nd_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %put_nd

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.net_dev_context, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %5) #6
  br label %put_nd

put_nd:                                           ; preds = %if.end2, %if.end.put_nd_crit_edge
  %dev3 = getelementptr inbounds %struct.net_dev_context, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev3, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %put_nd.cleanup_crit_edge, label %do.body1.i

put_nd.cleanup_crit_edge:                         ; preds = %put_nd
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body1.i:                                       ; preds = %put_nd
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !84
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 118
  %9 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcpu_refcnt.i, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !72) #6
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %17, %11
  %18 = inttoptr i32 %add.i to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %add13.i = add i32 %20, -1
  store i32 %add13.i, ptr %18, align 4
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !85
  %and.i.i.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !86

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #6, !srcloc !87
  br label %cleanup

cleanup:                                          ; preds = %do.end30.i, %put_nd.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @most_nd_setup(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ether_setup(ptr noundef %dev) #6
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @most_nd_ops, ptr %netdev_ops, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ether_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @most_nd_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void @mutex_lock_nested(ptr noundef nonnull @probe_disc_mt, i32 noundef 0) #6
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %ch_id = getelementptr i8, ptr %dev, i32 2320
  %2 = ptrtoint ptr %ch_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ch_id, align 4
  %call1 = tail call i32 @most_start_channel(ptr noundef %1, i32 noundef %3, ptr noundef nonnull @comp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %unlock

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  %ch_id3 = getelementptr i8, ptr %dev, i32 2328
  %6 = ptrtoint ptr %ch_id3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ch_id3, align 4
  %call4 = tail call i32 @most_start_channel(ptr noundef %5, i32 noundef %7, ptr noundef nonnull @comp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end11, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  %10 = ptrtoint ptr %ch_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ch_id, align 4
  %call10 = tail call i32 @most_stop_channel(ptr noundef %9, i32 noundef %11, ptr noundef nonnull @comp) #6
  br label %unlock

if.end11:                                         ; preds = %if.end
  tail call void @netif_carrier_off(ptr noundef %dev) #6
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %12 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_addr, align 64
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %16 = and i32 %15, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not.i = icmp eq i32 %16, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end11.if.else_crit_edge

if.end11.if.else_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

is_valid_ether_addr.exit:                         ; preds = %if.end11
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 4
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %18 to i32
  %or.i.i = or i32 %15, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.else_crit_edge, label %if.then13

is_valid_ether_addr.exit.if.else_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then13:                                        ; preds = %is_valid_ether_addr.exit
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %state.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then13.if.end14_crit_edge, label %if.then13.if.end14.sink.split_crit_edge

if.then13.if.end14.sink.split_crit_edge:          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.sink.split

if.then13.if.end14_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.else:                                          ; preds = %is_valid_ether_addr.exit.if.else_crit_edge, %if.end11.if.else_crit_edge
  %state.i40 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %call.i41 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %state.i40) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %tobool.not.i42 = icmp eq i32 %call.i41, 0
  br i1 %tobool.not.i42, label %if.else.if.end14.sink.split_crit_edge, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.else.if.end14.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.sink.split

if.end14.sink.split:                              ; preds = %if.else.if.end14.sink.split_crit_edge, %if.then13.if.end14.sink.split_crit_edge
  tail call void @linkwatch_fire_event(ptr noundef %dev) #6
  br label %if.end14

if.end14:                                         ; preds = %if.end14.sink.split, %if.else.if.end14_crit_edge, %if.then13.if.end14_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %19 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %20) #6
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 4
  %request_netinfo = getelementptr inbounds %struct.most_interface, ptr %22, i32 0, i32 12
  %23 = ptrtoint ptr %request_netinfo to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %request_netinfo, align 4
  %tobool16.not = icmp eq ptr %24, null
  br i1 %tobool16.not, label %if.end14.unlock_crit_edge, label %if.then17

if.end14.unlock_crit_edge:                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %ch_id3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ch_id3, align 4
  tail call void %24(ptr noundef %22, i32 noundef %26, ptr noundef nonnull @on_netinfo) #6
  br label %unlock

unlock:                                           ; preds = %if.then17, %if.end14.unlock_crit_edge, %if.then6, %if.then
  %ret.0 = phi i32 [ -16, %if.then ], [ -16, %if.then6 ], [ 0, %if.then17 ], [ 0, %if.end14.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @probe_disc_mt) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @most_nd_stop(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %request_netinfo = getelementptr inbounds %struct.most_interface, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %request_netinfo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %request_netinfo, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ch_id = getelementptr i8, ptr %dev, i32 2328
  %6 = ptrtoint ptr %ch_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ch_id, align 4
  tail call void %5(ptr noundef %3, i32 noundef %7, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  %ch_id5 = getelementptr i8, ptr %dev, i32 2320
  %10 = ptrtoint ptr %ch_id5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ch_id5, align 4
  %call6 = tail call i32 @most_stop_channel(ptr noundef %9, i32 noundef %11, ptr noundef nonnull @comp) #6
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  %ch_id9 = getelementptr i8, ptr %dev, i32 2328
  %14 = ptrtoint ptr %ch_id9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ch_id9, align 4
  %call10 = tail call i32 @most_stop_channel(ptr noundef %13, i32 noundef %15, ptr noundef nonnull @comp) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @most_nd_start_xmit(ptr noundef %skb, ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %ch_id = getelementptr i8, ptr %dev, i32 2328
  %2 = ptrtoint ptr %ch_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ch_id, align 4
  %call1 = tail call ptr @most_get_mbo(ptr noundef %1, i32 noundef %3, ptr noundef nonnull @comp) #6
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  %tx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 18
  %6 = ptrtoint ptr %tx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_fifo_errors, align 8
  %inc = add i32 %7, 1
  store i32 %inc, ptr %tx_fifo_errors, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_mamac = getelementptr i8, ptr %dev, i32 2308
  %8 = ptrtoint ptr %is_mamac to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_mamac, align 4, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  %virt_address.i33 = getelementptr inbounds %struct.mbo, ptr %call1, i32 0, i32 6
  %10 = ptrtoint ptr %virt_address.i33 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %virt_address.i33, align 4
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %13, i32 4
  %add.ptr2.i = getelementptr i8, ptr %13, i32 12
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i, align 4
  %sub.i = add i32 %15, -14
  %add.i = add i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %15)
  %cmp.i = icmp ugt i32 %15, -3
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %15) #9
  br label %if.then8

if.end.i:                                         ; preds = %if.then3
  %buffer_length.i = getelementptr inbounds %struct.mbo, ptr %call1, i32 0, i32 8
  %16 = ptrtoint ptr %buffer_length.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %buffer_length.i, align 4
  %conv.i = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i)
  %cmp5.i = icmp ugt i32 %add.i, %conv.i
  br i1 %cmp5.i, label %do.end10.i, label %if.end15.i

do.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %conv.i, i32 noundef %add.i) #9
  br label %if.then8

if.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %15)
  %cmp17.i = icmp ult i32 %15, 14
  br i1 %cmp17.i, label %do.end22.i, label %if.end26.i

do.end22.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %15) #9
  br label %if.then8

if.end26.i:                                       ; preds = %if.end15.i
  %18 = ptrtoint ptr %add.ptr.i32 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %add.ptr.i32, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %cmp28.i = icmp eq i8 %19, -1
  br i1 %cmp28.i, label %land.lhs.true.i, label %if.end26.i.if.end35.i_crit_edge

if.end26.i.if.end35.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35.i

land.lhs.true.i:                                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx30.i = getelementptr i8, ptr %13, i32 5
  %20 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx30.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %21)
  %cmp32.i = icmp eq i8 %21, -1
  %spec.store.select.i = select i1 %cmp32.i, ptr @skb_to_mamac.broadcast, ptr %add.ptr.i32
  br label %if.end35.i

if.end35.i:                                       ; preds = %land.lhs.true.i, %if.end26.i.if.end35.i_crit_edge
  %dest_addr.0.i = phi ptr [ %spec.store.select.i, %land.lhs.true.i ], [ %add.ptr.i32, %if.end26.i.if.end35.i_crit_edge ]
  %conv38.i = lshr i32 %15, 8
  %conv39.i = trunc i32 %conv38.i to i8
  %incdec.ptr.i = getelementptr i8, ptr %11, i32 1
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv39.i, ptr %11, align 1
  %conv41.i = trunc i32 %15 to i8
  %incdec.ptr42.i = getelementptr i8, ptr %11, i32 2
  %23 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv41.i, ptr %incdec.ptr.i, align 1
  %incdec.ptr43.i = getelementptr i8, ptr %11, i32 3
  %24 = ptrtoint ptr %incdec.ptr42.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 5, ptr %incdec.ptr42.i, align 1
  %incdec.ptr44.i = getelementptr i8, ptr %11, i32 4
  %25 = ptrtoint ptr %incdec.ptr43.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 12, ptr %incdec.ptr43.i, align 1
  %incdec.ptr45.i = getelementptr i8, ptr %11, i32 5
  %26 = ptrtoint ptr %incdec.ptr44.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %incdec.ptr44.i, align 1
  %27 = ptrtoint ptr %dest_addr.0.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dest_addr.0.i, align 1
  %incdec.ptr47.i = getelementptr i8, ptr %11, i32 6
  %29 = ptrtoint ptr %incdec.ptr45.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %incdec.ptr45.i, align 1
  %arrayidx48.i = getelementptr i8, ptr %dest_addr.0.i, i32 1
  %30 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx48.i, align 1
  %incdec.ptr49.i = getelementptr i8, ptr %11, i32 7
  %32 = ptrtoint ptr %incdec.ptr47.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %incdec.ptr47.i, align 1
  %incdec.ptr50.i = getelementptr i8, ptr %11, i32 8
  %33 = ptrtoint ptr %incdec.ptr49.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %incdec.ptr49.i, align 1
  %add51.i = add i32 %15, -8
  %conv53.i = lshr i32 %add51.i, 8
  %conv55.i = trunc i32 %conv53.i to i8
  %incdec.ptr56.i = getelementptr i8, ptr %11, i32 9
  %34 = ptrtoint ptr %incdec.ptr50.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv55.i, ptr %incdec.ptr50.i, align 1
  %conv58.i = trunc i32 %add51.i to i8
  %incdec.ptr59.i = getelementptr i8, ptr %11, i32 10
  %35 = ptrtoint ptr %incdec.ptr56.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv58.i, ptr %incdec.ptr56.i, align 1
  %36 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %add.ptr2.i, align 1
  %incdec.ptr61.i = getelementptr i8, ptr %11, i32 11
  %38 = ptrtoint ptr %incdec.ptr59.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %incdec.ptr59.i, align 1
  %arrayidx62.i = getelementptr i8, ptr %13, i32 13
  %39 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx62.i, align 1
  %incdec.ptr63.i = getelementptr i8, ptr %11, i32 12
  %41 = ptrtoint ptr %incdec.ptr61.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %incdec.ptr61.i, align 1
  %incdec.ptr64.i = getelementptr i8, ptr %11, i32 13
  %42 = ptrtoint ptr %incdec.ptr63.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %incdec.ptr63.i, align 1
  %incdec.ptr65.i = getelementptr i8, ptr %11, i32 14
  %43 = ptrtoint ptr %incdec.ptr64.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %incdec.ptr64.i, align 1
  %conv67.i = lshr i32 %sub.i, 8
  %44 = trunc i32 %conv67.i to i8
  %conv71.i = or i8 %44, -96
  %incdec.ptr72.i = getelementptr i8, ptr %11, i32 15
  %45 = ptrtoint ptr %incdec.ptr65.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv71.i, ptr %incdec.ptr65.i, align 1
  %conv73.i = trunc i32 %sub.i to i8
  %incdec.ptr74.i = getelementptr i8, ptr %11, i32 16
  %46 = ptrtoint ptr %incdec.ptr72.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv73.i, ptr %incdec.ptr72.i, align 1
  %47 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i, align 4
  %add.ptr76.i = getelementptr i8, ptr %48, i32 14
  %49 = call ptr @memcpy(ptr %incdec.ptr74.i, ptr %add.ptr76.i, i32 %sub.i)
  br label %if.end11

if.else:                                          ; preds = %if.end
  %len.i34 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %50 = ptrtoint ptr %len.i34 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len.i34, align 4
  %add.i35 = add i32 %51, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9, i32 %51)
  %cmp.i36 = icmp ugt i32 %51, -9
  br i1 %cmp.i36, label %do.end.i38, label %if.end.i41

do.end.i38:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call.i37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %51) #9
  br label %if.then8

if.end.i41:                                       ; preds = %if.else
  %buffer_length.i39 = getelementptr inbounds %struct.mbo, ptr %call1, i32 0, i32 8
  %52 = ptrtoint ptr %buffer_length.i39 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %buffer_length.i39, align 4
  %conv.i40 = zext i16 %53 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i35, i32 %conv.i40)
  %cmp3.i = icmp ugt i32 %add.i35, %conv.i40
  br i1 %cmp3.i, label %do.end8.i, label %if.end13.i

do.end8.i:                                        ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #8
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %conv.i40, i32 noundef %add.i35) #9
  br label %if.then8

if.end13.i:                                       ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i42 = add nuw i32 %51, 6
  %conv15.i = lshr i32 %sub.i42, 8
  %conv16.i = trunc i32 %conv15.i to i8
  %incdec.ptr.i43 = getelementptr i8, ptr %11, i32 1
  %54 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv16.i, ptr %11, align 1
  %conv18.i = trunc i32 %sub.i42 to i8
  %incdec.ptr19.i = getelementptr i8, ptr %11, i32 2
  %55 = ptrtoint ptr %incdec.ptr.i43 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv18.i, ptr %incdec.ptr.i43, align 1
  %incdec.ptr20.i = getelementptr i8, ptr %11, i32 3
  %56 = ptrtoint ptr %incdec.ptr19.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 5, ptr %incdec.ptr19.i, align 1
  %incdec.ptr21.i = getelementptr i8, ptr %11, i32 4
  %57 = ptrtoint ptr %incdec.ptr20.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 36, ptr %incdec.ptr20.i, align 1
  %incdec.ptr22.i = getelementptr i8, ptr %11, i32 5
  %58 = ptrtoint ptr %incdec.ptr21.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -16, ptr %incdec.ptr21.i, align 1
  %incdec.ptr23.i = getelementptr i8, ptr %11, i32 6
  %59 = ptrtoint ptr %incdec.ptr22.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %incdec.ptr22.i, align 1
  %incdec.ptr24.i = getelementptr i8, ptr %11, i32 7
  %60 = ptrtoint ptr %incdec.ptr23.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %incdec.ptr23.i, align 1
  %incdec.ptr25.i = getelementptr i8, ptr %11, i32 8
  %61 = ptrtoint ptr %incdec.ptr24.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %incdec.ptr24.i, align 1
  %data.i44 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %62 = ptrtoint ptr %data.i44 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data.i44, align 4
  %64 = ptrtoint ptr %len.i34 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len.i34, align 4
  %66 = call ptr @memcpy(ptr %incdec.ptr25.i, ptr %63, i32 %65)
  br label %if.end11

if.then8:                                         ; preds = %do.end8.i, %do.end.i38, %do.end22.i, %do.end10.i, %do.end.i
  tail call void @most_put_mbo(ptr noundef nonnull %call1) #6
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %67 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tx_dropped, align 4
  %inc10 = add i32 %68, 1
  store i32 %inc10, ptr %tx_dropped, align 4
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #6
  br label %cleanup

if.end11:                                         ; preds = %if.end13.i, %if.end35.i
  %add.i.sink = phi i32 [ %add.i, %if.end35.i ], [ %add.i35, %if.end13.i ]
  %buffer_length.i.sink = phi ptr [ %buffer_length.i, %if.end35.i ], [ %buffer_length.i39, %if.end13.i ]
  %conv77.i = trunc i32 %add.i.sink to i16
  %69 = ptrtoint ptr %buffer_length.i.sink to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv77.i, ptr %buffer_length.i.sink, align 4
  tail call void @most_submit_mbo(ptr noundef nonnull %call1) #6
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %70 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tx_packets, align 4
  %inc13 = add i32 %71, 1
  store i32 %inc13, ptr %tx_packets, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %72 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %74 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %75, %73
  store i32 %add, ptr %tx_bytes, align 4
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then8, %if.then
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 0, %if.end11 ], [ 16, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @most_nd_set_mac_address(ptr noundef %dev, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @eth_mac_addr(ptr noundef %dev, ptr noundef %p) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %0 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_addr, align 64
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.land.end.thread_crit_edge

if.end.land.end.thread_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end.thread

land.lhs.true:                                    ; preds = %if.end
  %arrayidx4 = getelementptr i8, ptr %1, i32 1
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp6 = icmp eq i8 %5, 0
  br i1 %cmp6, label %land.lhs.true8, label %land.lhs.true.land.end.thread_crit_edge

land.lhs.true.land.end.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end.thread

land.lhs.true8:                                   ; preds = %land.lhs.true
  %arrayidx10 = getelementptr i8, ptr %1, i32 2
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp12 = icmp eq i8 %7, 0
  br i1 %cmp12, label %land.end, label %land.lhs.true8.land.end.thread_crit_edge

land.lhs.true8.land.end.thread_crit_edge:         ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end.thread

land.end.thread:                                  ; preds = %land.lhs.true8.land.end.thread_crit_edge, %land.lhs.true.land.end.thread_crit_edge, %if.end.land.end.thread_crit_edge
  %is_mamac31 = getelementptr i8, ptr %dev, i32 2308
  %8 = ptrtoint ptr %is_mamac31 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %is_mamac31, align 4
  br label %12

land.end:                                         ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx15 = getelementptr i8, ptr %1, i32 3
  %9 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp17 = icmp eq i8 %10, 0
  %is_mamac = getelementptr i8, ptr %dev, i32 2308
  %frombool = zext i1 %cmp17 to i8
  %11 = ptrtoint ptr %is_mamac to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool, ptr %is_mamac, align 4
  %spec.select = select i1 %cmp17, i32 1008, i32 1500
  br label %12

12:                                               ; preds = %land.end, %land.end.thread
  %13 = phi i32 [ 1500, %land.end.thread ], [ %spec.select, %land.end ]
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %14 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %mtu, align 4
  br label %cleanup

cleanup:                                          ; preds = %12, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @most_start_channel(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @most_stop_channel(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netif_dormant_off(ptr noundef %dev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %state = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %state) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @linkwatch_fire_event(ptr noundef %dev) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @on_netinfo(ptr noundef %iface, i8 noundef zeroext %link_stat, ptr noundef %mac_addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @get_net_dev_hold(ptr noundef %iface)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.net_dev_context, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %link_stat)
  %tobool2.not = icmp eq i8 %link_stat, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @netif_carrier_on(ptr noundef %1) #6
  br label %if.end4

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @netif_carrier_off(ptr noundef %1) #6
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then3
  %tobool5.not = icmp eq ptr %mac_addr, null
  br i1 %tobool5.not, label %if.end4.if.end16_crit_edge, label %land.lhs.true

if.end4.if.end16_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end4
  %2 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac_addr, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

is_valid_ether_addr.exit:                         ; preds = %land.lhs.true
  %add.ptr.i.i = getelementptr i8, ptr %mac_addr, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %6 to i32
  %or.i.i = or i32 %3, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.end16_crit_edge, label %if.then7

is_valid_ether_addr.exit.if.end16_crit_edge:      ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then7:                                         ; preds = %is_valid_ether_addr.exit
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %7 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_addr, align 64
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i34 = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i34, label %is_valid_ether_addr.exit40, label %if.then7.if.then9_crit_edge

if.then7.if.then9_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

is_valid_ether_addr.exit40:                       ; preds = %if.then7
  %add.ptr.i.i35 = getelementptr i8, ptr %8, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i35 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i.i35, align 2
  %conv.i.i36 = zext i16 %13 to i32
  %or.i.i37 = or i32 %10, %conv.i.i36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i37)
  %cmp.i.i38.not = icmp eq i32 %or.i.i37, 0
  br i1 %cmp.i.i38.not, label %is_valid_ether_addr.exit40.if.then9_crit_edge, label %if.else10

is_valid_ether_addr.exit40.if.then9_crit_edge:    ; preds = %is_valid_ether_addr.exit40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

if.then9:                                         ; preds = %is_valid_ether_addr.exit40.if.then9_crit_edge, %if.then7.if.then9_crit_edge
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef nonnull %mac_addr) #9
  tail call void @dev_addr_mod(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %mac_addr, i32 noundef 6) #6
  tail call fastcc void @netif_dormant_off(ptr noundef %1)
  br label %if.end16

if.else10:                                        ; preds = %is_valid_ether_addr.exit40
  %xor.i = xor i32 %10, %3
  %14 = ptrtoint ptr %add.ptr.i.i35 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i.i35, align 2
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i = xor i16 %17, %15
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.else10.if.end16_crit_edge, label %if.then13

if.else10.if.end16_crit_edge:                     ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then13:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef nonnull %mac_addr) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.else10.if.end16_crit_edge, %if.then9, %is_valid_ether_addr.exit.if.end16_crit_edge, %land.lhs.true.if.end16_crit_edge, %if.end4.if.end16_crit_edge
  %18 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev1, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end16.cleanup_crit_edge, label %do.body1.i

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body1.i:                                       ; preds = %if.end16
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !84
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 118
  %21 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcpu_refcnt.i, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !72) #6
  %and.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %29, %23
  %30 = inttoptr i32 %add.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %add13.i = add i32 %32, -1
  store i32 %add13.i, ptr %30, align 4
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !85
  %and.i.i.i = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !86

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #6, !srcloc !87
  br label %cleanup

cleanup:                                          ; preds = %do.end30.i, %if.end16.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @linkwatch_fire_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_net_dev_hold(ptr noundef readnone %iface) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @list_lock) #6
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ @net_devices, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @net_devices
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %nd.0.i = getelementptr i8, ptr %.pn.i, i32 -28
  %1 = ptrtoint ptr %nd.0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nd.0.i, align 4
  %cmp2.i = icmp eq ptr %2, %iface
  br i1 %cmp2.i, label %get_net_dev.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

get_net_dev.exit:                                 ; preds = %for.body.i
  %nd.0.i.le = getelementptr i8, ptr %.pn.i, i32 -28
  %tobool.not = icmp eq ptr %nd.0.i.le, null
  br i1 %tobool.not, label %get_net_dev.exit.if.end_crit_edge, label %land.lhs.true

get_net_dev.exit.if.end_crit_edge:                ; preds = %get_net_dev.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %get_net_dev.exit
  %rx = getelementptr i8, ptr %.pn.i, i32 -16
  %3 = ptrtoint ptr %rx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %rx, align 4, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool6.not = icmp eq i8 %4, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true8

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true8:                                   ; preds = %land.lhs.true
  %tx = getelementptr i8, ptr %.pn.i, i32 -8
  %5 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tx, align 4, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool10.not = icmp eq i8 %6, 0
  br i1 %tobool10.not, label %land.lhs.true8.if.end_crit_edge, label %if.then

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true8
  %dev = getelementptr i8, ptr %.pn.i, i32 -20
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %do.body1.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body1.i:                                       ; preds = %if.then
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !84
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 118
  %10 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcpu_refcnt.i, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !72) #6
  %and.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %18, %12
  %19 = inttoptr i32 %add.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %add13.i = add i32 %21, 1
  store i32 %add13.i, ptr %19, align 4
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !85
  %and.i.i.i = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !86

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #6, !srcloc !87
  br label %if.end

if.end:                                           ; preds = %do.end30.i, %if.then.if.end_crit_edge, %land.lhs.true8.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %get_net_dev.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  %nd.0 = phi ptr [ null, %land.lhs.true8.if.end_crit_edge ], [ null, %land.lhs.true.if.end_crit_edge ], [ null, %get_net_dev.exit.if.end_crit_edge ], [ %nd.0.i.le, %if.then.if.end_crit_edge ], [ %nd.0.i.le, %do.end30.i ], [ null, %for.cond.i.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @list_lock, i32 noundef %call2) #6
  ret ptr %nd.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @most_get_mbo(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @most_put_mbo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @most_submit_mbo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @most_register_component(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @most_register_configfs_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !35, !37, !39, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !63, !64, !66, !68, !69, !70, !71}
!llvm.named.register.sp = !{!72}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__initcall__kmod_most_net__339_577_most_net_init6, !1, !"__initcall__kmod_most_net__339_577_most_net_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/most/net/net.c", i32 577, i32 1}
!2 = !{ptr @__exitcall_most_net_exit, !3, !"__exitcall_most_net_exit", i1 false, i1 false}
!3 = !{!"../drivers/staging/most/net/net.c", i32 578, i32 1}
!4 = !{ptr @__UNIQUE_ID_file340, !5, !"__UNIQUE_ID_file340", i1 false, i1 false}
!5 = !{!"../drivers/staging/most/net/net.c", i32 579, i32 1}
!6 = !{ptr @__UNIQUE_ID_license341, !5, !"__UNIQUE_ID_license341", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author342, !8, !"__UNIQUE_ID_author342", i1 false, i1 false}
!8 = !{!"../drivers/staging/most/net/net.c", i32 580, i32 1}
!9 = !{ptr @__UNIQUE_ID_description343, !10, !"__UNIQUE_ID_description343", i1 false, i1 false}
!10 = !{!"../drivers/staging/most/net/net.c", i32 581, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/staging/most/net/net.c", i32 512, i32 10}
!13 = !{ptr @comp, !14, !"comp", i1 false, i1 false}
!14 = !{!"../drivers/staging/most/net/net.c", i32 510, i32 30}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/staging/most/net/net.c", i32 324, i32 9}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/staging/most/net/net.c", i32 343, i32 4}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @comp_probe_channel._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @comp_probe_channel._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/staging/most/net/net.c", i32 349, i32 4}
!25 = !{ptr @comp_probe_channel._entry.5, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @comp_probe_channel._entry_ptr.7, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/staging/most/net/net.c", i32 71, i32 8}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @probe_disc_mt, !28, !"probe_disc_mt", i1 false, i1 false}
!31 = !{ptr @most_nd_ops, !32, !"most_nd_ops", i1 false, i1 false}
!32 = !{!"../drivers/staging/most/net/net.c", i32 267, i32 36}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/most/net/net.c", i32 194, i32 19}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/most/net/net.c", i32 566, i32 21}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/staging/most/net/net.c", i32 570, i32 21}
!39 = !{ptr @skb_to_mamac.broadcast, !40, !"broadcast", i1 false, i1 false}
!40 = !{!"../drivers/staging/most/net/net.c", i32 78, i32 18}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/staging/most/net/net.c", i32 85, i32 3}
!43 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @skb_to_mamac._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @skb_to_mamac._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/staging/most/net/net.c", i32 90, i32 3}
!48 = !{ptr @skb_to_mamac._entry.15, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @skb_to_mamac._entry_ptr.17, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/most/net/net.c", i32 96, i32 3}
!52 = !{ptr @skb_to_mamac._entry.18, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @skb_to_mamac._entry_ptr.20, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/most/net/net.c", i32 137, i32 3}
!56 = !{ptr @skb_to_mep._entry, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @skb_to_mep._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @skb_to_mep._entry.22, !59, !"_entry", i1 false, i1 false}
!59 = !{!"../drivers/staging/most/net/net.c", i32 142, i32 3}
!60 = !{ptr @skb_to_mep._entry_ptr.23, !59, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/staging/most/net/net.c", i32 72, i32 8}
!63 = !{ptr @list_lock, !62, !"list_lock", i1 false, i1 false}
!64 = !{ptr @net_devices, !65, !"net_devices", i1 false, i1 false}
!65 = !{!"../drivers/staging/most/net/net.c", i32 70, i32 25}
!66 = distinct !{null, !67, !"__already_done", i1 false, i1 false}
!67 = !{!"../drivers/staging/most/net/net.c", i32 468, i32 3}
!68 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @comp_rx_data._entry, !67, !"_entry", i1 false, i1 false}
!71 = !{ptr @comp_rx_data._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!72 = !{!"sp"}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{i8 0, i8 2}
!83 = !{!"branch_weights", i32 2000, i32 1}
!84 = !{i64 754487, i64 754548}
!85 = !{i64 757219}
!86 = !{!"branch_weights", i32 1, i32 2000}
!87 = !{i64 757504}

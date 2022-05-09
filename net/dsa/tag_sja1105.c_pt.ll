; ModuleID = '/llk/IR_all_yes/net/dsa/tag_sja1105.c_pt.bc'
source_filename = "../net/dsa/tag_sja1105.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dsa_tag_driver = type { ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dsa_device_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.144, %union.anon.145, [48 x i8], %union.anon.146, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.148, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.144 = type { ptr }
%union.anon.145 = type { i64 }
%union.anon.146 = type { %struct.anon.147 }
%struct.anon.147 = type { i32, ptr }
%union.anon.148 = type { %struct.anon.149 }
%struct.anon.149 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.150, i32, i32, i32, i16, i16, %union.anon.152, i32, %union.anon.153, %union.anon.154, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.150 = type { i32 }
%union.anon.152 = type { i32 }
%union.anon.153 = type { i32 }
%union.anon.154 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.dsa_port = type { %union.anon.129, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.129 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.118 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.118 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.dsa_switch_tree = type { %struct.list_head, %struct.list_head, %struct.raw_notifier_head, i32, %struct.kref, ptr, ptr, i32, i8, ptr, %struct.list_head, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.bridge_vlan_info = type { i16, i16 }
%struct.sja1105_meta = type { i64, i64, i64, i64, i64 }
%struct.vlan_ethhdr = type { %union.anon.165, i16, i16, i16 }
%union.anon.165 = type { %struct.anon.166 }
%struct.anon.166 = type { [6 x i8], [6 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.143, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.143 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.sja1105_tagger_private = type { %struct.sja1105_tagger_data, i32, %struct.spinlock, ptr, ptr }
%struct.sja1105_tagger_data = type { ptr, ptr, ptr, ptr }
%struct.dsa_bridge = type { ptr, i32, i8, %struct.refcount_struct }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.sja1105_deferred_xmit_work = type { ptr, ptr, %struct.kthread_work }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }

@__UNIQUE_ID_alias499 = internal constant [29 x i8] c"tag_sja1105.alias=dsa_tag-13\00", section ".modinfo", align 1
@__UNIQUE_ID_alias500 = internal constant [29 x i8] c"tag_sja1105.alias=dsa_tag-23\00", section ".modinfo", align 1
@__initcall__kmod_tag_sja1105__501_819_dsa_tag_driver_module_init6 = internal global ptr @dsa_tag_driver_module_init, section ".initcall6.init", align 4
@sja1105_tag_driver_array = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dsa_tag_driver_sja1105_netdev_ops, ptr @dsa_tag_driver_sja1110_netdev_ops], [24 x i8] zeroinitializer }, align 32
@__exitcall_dsa_tag_driver_module_exit = internal global ptr @dsa_tag_driver_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file502 = internal constant [37 x i8] c"tag_sja1105.file=net/dsa/tag_sja1105\00", section ".modinfo", align 1
@__UNIQUE_ID_license503 = internal constant [27 x i8] c"tag_sja1105.license=GPL v2\00", section ".modinfo", align 1
@dsa_tag_driver_sja1105_netdev_ops = internal global { %struct.dsa_tag_driver, [16 x i8] } { %struct.dsa_tag_driver { ptr @sja1105_netdev_ops, %struct.list_head zeroinitializer, ptr null }, [16 x i8] zeroinitializer }, align 32
@dsa_tag_driver_sja1110_netdev_ops = internal global { %struct.dsa_tag_driver, [16 x i8] } { %struct.dsa_tag_driver { ptr @sja1110_netdev_ops, %struct.list_head zeroinitializer, ptr null }, [16 x i8] zeroinitializer }, align 32
@sja1105_netdev_ops = internal constant { %struct.dsa_device_ops, [56 x i8] } { %struct.dsa_device_ops { ptr @sja1105_xmit, ptr @sja1105_rcv, ptr @sja1105_flow_dissect, ptr @sja1105_connect, ptr @sja1105_disconnect, i32 4, i32 0, ptr @.str, i32 13, i8 1 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sja1105\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sja1105_xmit_tpid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/dsa/tag_sja1105.c\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Port is VLAN-aware but cannot find associated bridge!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't decode source port\0A\00", [35 x i8] zeroinitializer }, align 32
@sja1105_rcv_meta_state_machine._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.sja1105_rcv_meta_state_machine = private unnamed_addr constant [31 x i8] c"sja1105_rcv_meta_state_machine\00", align 1
@sja1105_rcv_meta_state_machine._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.sja1105_rcv_meta_state_machine, ptr @.str.1, i32 402, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Expected meta frame, is %12llx in the DSA master multicast filter?\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sja1105_rcv_meta_state_machine._entry_ptr = internal global ptr @sja1105_rcv_meta_state_machine._entry, section ".printk_index", align 4
@sja1105_rcv_meta_state_machine._rs.8 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@sja1105_rcv_meta_state_machine._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.sja1105_rcv_meta_state_machine, ptr @.str.1, i32 445, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unexpected meta frame\0A\00", [41 x i8] zeroinitializer }, align 32
@sja1105_rcv_meta_state_machine._entry_ptr.11 = internal global ptr @sja1105_rcv_meta_state_machine._entry.9, section ".printk_index", align 4
@sja1105_rcv_meta_state_machine._rs.12 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@sja1105_rcv_meta_state_machine._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.sja1105_rcv_meta_state_machine, ptr @.str.1, i32 452, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Meta frame on wrong port\0A\00", [38 x i8] zeroinitializer }, align 32
@sja1105_rcv_meta_state_machine._entry_ptr.15 = internal global ptr @sja1105_rcv_meta_state_machine._entry.13, section ".printk_index", align 4
@sja1105_connect.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&priv->meta_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dsa%d:%d_xmit\00", [18 x i8] zeroinitializer }, align 32
@sja1110_netdev_ops = internal constant { %struct.dsa_device_ops, [56 x i8] } { %struct.dsa_device_ops { ptr @sja1110_xmit, ptr @sja1110_rcv, ptr @sja1110_flow_dissect, ptr @sja1105_connect, ptr @sja1105_disconnect, i32 8, i32 28, ptr @.str.18, i32 23, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sja1110\00", [24 x i8] zeroinitializer }, align 32
@sja1110_rcv_meta._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.1, i32 595, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: cannot find switch id %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sja1110_rcv_meta\00", [47 x i8] zeroinitializer }, align 32
@sja1110_rcv_meta._entry_ptr = internal global ptr @sja1110_rcv_meta._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 24, i64 72473, i64 98498]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 56027]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 24, i64 72473, i64 98498]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 13, i64 23]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 24, i64 72473, i64 98498]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 13, i64 23]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 56027]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 24, i64 72473, i64 98498]
@___asan_gen_.28 = private unnamed_addr constant [25 x i8] c"sja1105_tag_driver_array\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 814, i32 31 }
@___asan_gen_.31 = private unnamed_addr constant [34 x i8] c"dsa_tag_driver_sja1105_netdev_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 796, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant [34 x i8] c"dsa_tag_driver_sja1110_netdev_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 811, i32 1 }
@___asan_gen_.37 = private unnamed_addr constant [19 x i8] c"sja1105_netdev_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 784, i32 36 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 785, i32 10 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 203, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 569, i32 23 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 399, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 444, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 451, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 764, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 766, i32 41 }
@___asan_gen_.97 = private unnamed_addr constant [19 x i8] c"sja1110_netdev_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 799, i32 36 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 800, i32 10 }
@___asan_gen_.103 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [25 x i8] c"../net/dsa/tag_sja1105.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 594, i32 3 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_alias499, ptr @__UNIQUE_ID_alias500, ptr @__UNIQUE_ID_file502, ptr @__UNIQUE_ID_license503, ptr @__exitcall_dsa_tag_driver_module_exit, ptr @__initcall__kmod_tag_sja1105__501_819_dsa_tag_driver_module_init6, ptr @dsa_tag_driver_module_exit, ptr @sja1105_rcv_meta_state_machine._entry, ptr @sja1105_rcv_meta_state_machine._entry.13, ptr @sja1105_rcv_meta_state_machine._entry.9, ptr @sja1105_rcv_meta_state_machine._entry_ptr, ptr @sja1105_rcv_meta_state_machine._entry_ptr.11, ptr @sja1105_rcv_meta_state_machine._entry_ptr.15, ptr @sja1110_rcv_meta._entry, ptr @sja1110_rcv_meta._entry_ptr, ptr @sja1105_tag_driver_array, ptr @dsa_tag_driver_sja1105_netdev_ops, ptr @dsa_tag_driver_sja1110_netdev_ops, ptr @sja1105_netdev_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @sja1105_rcv_meta_state_machine._rs, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @sja1105_rcv_meta_state_machine._rs.8, ptr @.str.10, ptr @sja1105_rcv_meta_state_machine._rs.12, ptr @.str.14, ptr @sja1105_connect.__key, ptr @.str.16, ptr @.str.17, ptr @sja1110_netdev_ops, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_tag_driver_array to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_tag_driver_sja1105_netdev_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_tag_driver_sja1110_netdev_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_netdev_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_rcv_meta_state_machine._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_rcv_meta_state_machine._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_rcv_meta_state_machine._rs.8 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_rcv_meta_state_machine._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_rcv_meta_state_machine._rs.12 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_rcv_meta_state_machine._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_connect.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1110_netdev_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1110_rcv_meta._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_tag_driver_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dsa_tag_drivers_register(ptr noundef nonnull @sja1105_tag_driver_array, i32 noundef 2, ptr noundef null) #10
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dsa_tag_driver_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dsa_tag_drivers_unregister(ptr noundef nonnull @sja1105_tag_driver_array, i32 noundef 2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_tag_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_tag_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sja1105_xmit(ptr noundef %skb, ptr noundef %netdev) #2 align 64 {
entry:
  %proto.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %netdev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %2 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %queue_mapping.i, align 8
  %conv = zext i16 %3 to i32
  %call2 = tail call i32 @netdev_txq_to_tc(ptr noundef %netdev, i32 noundef %conv) #10
  %conv3 = trunc i32 %call2 to i8
  %call4 = tail call zeroext i16 @dsa_tag_8021q_tx_vid(ptr noundef %1) #10
  %offload_fwd_mark = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %4 = ptrtoint ptr %offload_fwd_mark to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %bf.load = load i32, ptr %offload_fwd_mark, align 2
  %5 = and i32 %bf.load, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call fastcc ptr @sja1105_imprecise_xmit(ptr noundef %skb, ptr noundef %netdev)
  br label %cleanup

if.end:                                           ; preds = %entry
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i.i.i, align 8
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %8 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %9 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 %conv.i.i.i
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %h_proto.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %11)
  %cmp.i = icmp eq i16 %11, 8
  br i1 %cmp.i, label %if.end.if.end15_crit_edge, label %sja1105_is_link_local.exit

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

sja1105_is_link_local.exit:                       ; preds = %if.end
  %12 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr.i.i.i, align 1
  %conv.i.i = zext i8 %13 to i24
  %14 = shl nuw i24 %conv.i.i, 16
  %arrayidx.1.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 1
  %15 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.1.i.i, align 1
  %conv.1.i.i = zext i8 %16 to i24
  %17 = shl nuw nsw i24 %conv.1.i.i, 8
  %shl.2.i.i = or i24 %17, %14
  %arrayidx.2.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 2
  %18 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.2.i.i, align 1
  %conv.2.i.i = zext i8 %19 to i24
  %or.2.i.i = or i24 %shl.2.i.i, %conv.2.i.i
  %20 = zext i24 %or.2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i24 %or.2.i.i, label %sja1105_is_link_local.exit.if.end15_crit_edge [
    i24 98498, label %sja1105_is_link_local.exit.if.then9_crit_edge
    i24 72473, label %sja1105_is_link_local.exit.if.then9_crit_edge41
  ]

sja1105_is_link_local.exit.if.then9_crit_edge41:  ; preds = %sja1105_is_link_local.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

sja1105_is_link_local.exit.if.then9_crit_edge:    ; preds = %sja1105_is_link_local.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

sja1105_is_link_local.exit.if.end15_crit_edge:    ; preds = %sja1105_is_link_local.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then9:                                         ; preds = %sja1105_is_link_local.exit.if.then9_crit_edge, %sja1105_is_link_local.exit.if.then9_crit_edge41
  %call10 = tail call fastcc ptr @sja1105_pvid_tag_control_pkt(ptr noundef %1, ptr noundef %skb, i8 noundef zeroext %conv3)
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.then9.cleanup_crit_edge, label %if.end13

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @sja1105_defer_xmit(ptr noundef %1, ptr noundef nonnull %call10)
  br label %cleanup

if.end15:                                         ; preds = %sja1105_is_link_local.exit.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %ds1.i = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %ds1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ds1.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %proto.i) #10
  %23 = ptrtoint ptr %proto.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -1, ptr %proto.i, align 2, !annotation !68
  %vlan_filtering_is_global.i.i = getelementptr inbounds %struct.dsa_switch, ptr %22, i32 0, i32 3
  %24 = ptrtoint ptr %vlan_filtering_is_global.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load.i.i = load i16, ptr %vlan_filtering_is_global.i.i, align 4
  %25 = and i16 %bf.load.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool.not.i.i = icmp eq i16 %25, 0
  br i1 %tobool.not.i.i, label %dsa_port_is_vlan_filtering.exit.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end15
  %26 = and i16 %bf.load.i.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool6.i.not.i = icmp eq i16 %26, 0
  br i1 %tobool6.i.not.i, label %if.then.i.i.sja1105_xmit_tpid.exit_crit_edge, label %if.then.i.i.if.end.i39_crit_edge

if.then.i.i.if.end.i39_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i39

if.then.i.i.sja1105_xmit_tpid.exit_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_xmit_tpid.exit

dsa_port_is_vlan_filtering.exit.i:                ; preds = %if.end15
  %vlan_filtering7.i.i = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 11
  %27 = ptrtoint ptr %vlan_filtering7.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load8.i.i = load i8, ptr %vlan_filtering7.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load8.i.i)
  %tobool10.i.i = icmp slt i8 %bf.load8.i.i, 0
  br i1 %tobool10.i.i, label %dsa_port_is_vlan_filtering.exit.i.if.end.i39_crit_edge, label %dsa_port_is_vlan_filtering.exit.i.sja1105_xmit_tpid.exit_crit_edge

dsa_port_is_vlan_filtering.exit.i.sja1105_xmit_tpid.exit_crit_edge: ; preds = %dsa_port_is_vlan_filtering.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_xmit_tpid.exit

dsa_port_is_vlan_filtering.exit.i.if.end.i39_crit_edge: ; preds = %dsa_port_is_vlan_filtering.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i39

if.end.i39:                                       ; preds = %dsa_port_is_vlan_filtering.exit.i.if.end.i39_crit_edge, %if.then.i.i.if.end.i39_crit_edge
  %dst.i = getelementptr inbounds %struct.dsa_switch, ptr %22, i32 0, i32 1
  %28 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dst.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn73.i = load ptr, ptr %ports.i, align 4
  %cmp.not74.i = icmp eq ptr %.pn73.i, %ports.i
  br i1 %cmp.not74.i, label %if.end.i39.land.end.i_crit_edge, label %if.end.i39.for.body.i_crit_edge

if.end.i39.for.body.i_crit_edge:                  ; preds = %if.end.i39
  br label %for.body.i

if.end.i39.land.end.i_crit_edge:                  ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i39.for.body.i_crit_edge
  %.pn75.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn73.i, %if.end.i39.for.body.i_crit_edge ]
  %ds4.i = getelementptr i8, ptr %.pn75.i, i32 -432
  %31 = ptrtoint ptr %ds4.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ds4.i, align 4
  %cmp5.i = icmp eq ptr %32, %22
  br i1 %cmp5.i, label %if.then6.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then6.i:                                       ; preds = %for.body.i
  %bridge.i.i = getelementptr i8, ptr %.pn75.i, i32 -396
  %33 = ptrtoint ptr %bridge.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bridge.i.i, align 4
  %tobool.not.i67.i = icmp eq ptr %34, null
  br i1 %tobool.not.i67.i, label %if.then6.i.for.inc.i_crit_edge, label %dsa_port_bridge_dev_get.exit.i

if.then6.i.for.inc.i_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

dsa_port_bridge_dev_get.exit.i:                   ; preds = %if.then6.i
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %dsa_port_bridge_dev_get.exit.i.for.inc.i_crit_edge, label %cleanup.i

dsa_port_bridge_dev_get.exit.i.for.inc.i_crit_edge: ; preds = %dsa_port_bridge_dev_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

cleanup.i:                                        ; preds = %dsa_port_bridge_dev_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call10.i = call i32 @br_vlan_get_proto(ptr noundef nonnull %36, ptr noundef nonnull %proto.i) #10
  %37 = ptrtoint ptr %proto.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %proto.i, align 2
  br label %sja1105_xmit_tpid.exit

for.inc.i:                                        ; preds = %dsa_port_bridge_dev_get.exit.i.for.inc.i_crit_edge, %if.then6.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %39 = ptrtoint ptr %.pn75.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn.i = load ptr, ptr %.pn75.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.land.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.land.end.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end.i

land.end.i:                                       ; preds = %for.inc.i.land.end.i_crit_edge, %if.end.i39.land.end.i_crit_edge
  %.b66.i = load i1, ptr @sja1105_xmit_tpid.__already_done, align 1
  br i1 %.b66.i, label %land.end.i.sja1105_xmit_tpid.exit_crit_edge, label %if.then23.i, !prof !69

land.end.i.sja1105_xmit_tpid.exit_crit_edge:      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_xmit_tpid.exit

if.then23.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @sja1105_xmit_tpid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 203, i32 noundef 9, ptr noundef nonnull @.str.2) #10
  br label %sja1105_xmit_tpid.exit

sja1105_xmit_tpid.exit:                           ; preds = %if.then23.i, %land.end.i.sja1105_xmit_tpid.exit_crit_edge, %cleanup.i, %dsa_port_is_vlan_filtering.exit.i.sja1105_xmit_tpid.exit_crit_edge, %if.then.i.i.sja1105_xmit_tpid.exit_crit_edge
  %retval.3.i = phi i16 [ %38, %cleanup.i ], [ -9509, %dsa_port_is_vlan_filtering.exit.i.sja1105_xmit_tpid.exit_crit_edge ], [ -9509, %if.then23.i ], [ -9509, %land.end.i.sja1105_xmit_tpid.exit_crit_edge ], [ -9509, %if.then.i.i.sja1105_xmit_tpid.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %proto.i) #10
  %call2.tr = trunc i32 %call2 to i16
  %40 = shl i16 %call2.tr, 13
  %conv19 = or i16 %40, %call4
  %call20 = call ptr @dsa_8021q_xmit(ptr noundef %skb, ptr noundef %netdev, i16 noundef zeroext %retval.3.i, i16 noundef zeroext %conv19) #10
  br label %cleanup

cleanup:                                          ; preds = %sja1105_xmit_tpid.exit, %if.end13, %if.then9.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %call5, %if.then ], [ null, %if.end13 ], [ %call20, %sja1105_xmit_tpid.exit ], [ null, %if.then9.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sja1105_rcv(ptr noundef %skb, ptr noundef %netdev) #2 align 64 {
entry:
  %vinfo.i = alloca %struct.bridge_vlan_info, align 2
  %source_port = alloca i32, align 4
  %switch_id = alloca i32, align 4
  %meta = alloca %struct.sja1105_meta, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %source_port) #10
  %0 = ptrtoint ptr %source_port to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %source_port, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %switch_id) #10
  %1 = ptrtoint ptr %switch_id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %switch_id, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %meta) #10
  %2 = call ptr @memset(ptr %meta, i32 0, i32 40)
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %3 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %5 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %6 to i32
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %conv.i.i
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %h_proto.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %8)
  %cmp.i = icmp eq i16 %8, 8
  br i1 %cmp.i, label %entry.sja1105_is_link_local.exit_crit_edge, label %if.end.i

entry.sja1105_is_link_local.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_is_link_local.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %add.ptr.i.i, align 1
  %conv.i.i65 = zext i8 %10 to i64
  %11 = shl nuw nsw i64 %conv.i.i65, 16
  %arrayidx.1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 1
  %12 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.1.i.i, align 1
  %conv.1.i.i = zext i8 %13 to i64
  %14 = shl nuw nsw i64 %conv.1.i.i, 8
  %shl.2.i.i = or i64 %14, %11
  %arrayidx.2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 2
  %15 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.2.i.i, align 1
  %conv.2.i.i = zext i8 %16 to i64
  %or.2.i.i = or i64 %shl.2.i.i, %conv.2.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 98498, i64 %or.2.i.i)
  %switch.selectcmp.case1.i = icmp eq i64 %or.2.i.i, 98498
  call void @__sanitizer_cov_trace_const_cmp8(i64 72473, i64 %or.2.i.i)
  %switch.selectcmp.case2.i = icmp eq i64 %or.2.i.i, 72473
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  br label %sja1105_is_link_local.exit

sja1105_is_link_local.exit:                       ; preds = %if.end.i, %entry.sja1105_is_link_local.exit_crit_edge
  %retval.0.i = phi i1 [ false, %entry.sja1105_is_link_local.exit_crit_edge ], [ %switch.selectcmp.i, %if.end.i ]
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %h_source.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %h_source.i, align 1
  %conv.i.i70 = zext i8 %18 to i64
  %arrayidx.1.i.i71 = getelementptr i8, ptr %h_source.i, i32 1
  %19 = ptrtoint ptr %arrayidx.1.i.i71 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.1.i.i71, align 1
  %conv.1.i.i72 = zext i8 %20 to i64
  %21 = shl nuw nsw i64 %conv.i.i70, 16
  %22 = shl nuw nsw i64 %conv.1.i.i72, 8
  %shl.2.i.i73 = or i64 %22, %21
  %arrayidx.2.i.i74 = getelementptr i8, ptr %h_source.i, i32 2
  %23 = ptrtoint ptr %arrayidx.2.i.i74 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.2.i.i74, align 1
  %conv.2.i.i75 = zext i8 %24 to i64
  %or.2.i.i76 = or i64 %shl.2.i.i73, %conv.2.i.i75
  %arrayidx.3.i.i = getelementptr i8, ptr %h_source.i, i32 3
  %25 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.3.i.i, align 1
  %conv.3.i.i = zext i8 %26 to i64
  %arrayidx.4.i.i = getelementptr i8, ptr %h_source.i, i32 4
  %27 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.4.i.i, align 1
  %conv.4.i.i = zext i8 %28 to i64
  %29 = shl nuw nsw i64 %or.2.i.i76, 24
  %30 = shl nuw nsw i64 %conv.3.i.i, 16
  %31 = shl nuw nsw i64 %conv.4.i.i, 8
  %32 = or i64 %31, %30
  %shl.5.i.i = or i64 %32, %29
  %arrayidx.5.i.i = getelementptr i8, ptr %h_source.i, i32 5
  %33 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.5.i.i, align 1
  %conv.5.i.i = zext i8 %34 to i64
  %or.5.i.i = or i64 %shl.5.i.i, %conv.5.i.i
  %35 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %add.ptr.i.i, align 1
  %conv.i15.i = zext i8 %36 to i64
  %arrayidx.1.i16.i = getelementptr i8, ptr %add.ptr.i.i, i32 1
  %37 = ptrtoint ptr %arrayidx.1.i16.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.1.i16.i, align 1
  %conv.1.i17.i = zext i8 %38 to i64
  %39 = shl nuw nsw i64 %conv.i15.i, 16
  %40 = shl nuw nsw i64 %conv.1.i17.i, 8
  %shl.2.i18.i = or i64 %40, %39
  %arrayidx.2.i19.i = getelementptr i8, ptr %add.ptr.i.i, i32 2
  %41 = ptrtoint ptr %arrayidx.2.i19.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.2.i19.i, align 1
  %conv.2.i20.i = zext i8 %42 to i64
  %or.2.i21.i = or i64 %shl.2.i18.i, %conv.2.i20.i
  %arrayidx.3.i22.i = getelementptr i8, ptr %add.ptr.i.i, i32 3
  %43 = ptrtoint ptr %arrayidx.3.i22.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.3.i22.i, align 1
  %conv.3.i23.i = zext i8 %44 to i64
  %arrayidx.4.i25.i = getelementptr i8, ptr %add.ptr.i.i, i32 4
  %45 = ptrtoint ptr %arrayidx.4.i25.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.4.i25.i, align 1
  %conv.4.i26.i = zext i8 %46 to i64
  %47 = shl nuw nsw i64 %or.2.i21.i, 24
  %48 = shl nuw nsw i64 %conv.3.i23.i, 16
  %49 = shl nuw nsw i64 %conv.4.i26.i, 8
  %50 = or i64 %49, %48
  %shl.5.i28.i = or i64 %50, %47
  %arrayidx.5.i29.i = getelementptr i8, ptr %add.ptr.i.i, i32 5
  %51 = ptrtoint ptr %arrayidx.5.i29.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.5.i29.i, align 1
  %conv.5.i30.i = zext i8 %52 to i64
  %or.5.i31.i = or i64 %shl.5.i28.i, %conv.5.i30.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 37529996894754, i64 %or.5.i.i)
  %cmp.not.i = icmp eq i64 %or.5.i.i, 37529996894754
  call void @__sanitizer_cov_trace_const_cmp8(i64 1652522221582, i64 %or.5.i31.i)
  %cmp4.not.i = icmp eq i64 %or.5.i31.i, 1652522221582
  %or.cond.i = select i1 %cmp.not.i, i1 %cmp4.not.i, i1 false
  %spec.select = select i1 %or.cond.i, i1 %cmp.i, i1 false
  %53 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.21)
  switch i16 %8, label %sja1105_skb_has_tag_8021q.exit [
    i16 -9509, label %sja1105_is_link_local.exit.if.then_crit_edge
    i16 -32512, label %sja1105_is_link_local.exit.if.then_crit_edge123
  ]

sja1105_is_link_local.exit.if.then_crit_edge123:  ; preds = %sja1105_is_link_local.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sja1105_is_link_local.exit.if.then_crit_edge:     ; preds = %sja1105_is_link_local.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sja1105_skb_has_tag_8021q.exit:                   ; preds = %sja1105_is_link_local.exit
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %54 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load.i)
  %tobool.i = icmp slt i32 %bf.load.i, 0
  br i1 %tobool.i, label %sja1105_skb_has_tag_8021q.exit.if.then_crit_edge, label %if.else

sja1105_skb_has_tag_8021q.exit.if.then_crit_edge: ; preds = %sja1105_skb_has_tag_8021q.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %sja1105_skb_has_tag_8021q.exit.if.then_crit_edge, %sja1105_is_link_local.exit.if.then_crit_edge, %sja1105_is_link_local.exit.if.then_crit_edge123
  %vlan_present.i88 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %55 = ptrtoint ptr %vlan_present.i88 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %bf.load.i89 = load i32, ptr %vlan_present.i88, align 2
  %vlan_tci1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %h_vlan_TCI.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %add.ptr.i.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load.i89)
  %tobool.not14.i = icmp slt i32 %bf.load.i89, 0
  %vlan_tci.0.in.i = select i1 %tobool.not14.i, ptr %vlan_tci1.i, ptr %h_vlan_TCI.i
  %56 = ptrtoint ptr %vlan_tci.0.in.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %vlan_tci.0.i = load i16, ptr %vlan_tci.0.in.i, align 2
  %57 = and i16 %vlan_tci.0.i, 4095
  %call3.i = tail call zeroext i1 @vid_is_dsa_8021q_rxvlan(i16 noundef zeroext %57) #10
  br i1 %call3.i, label %if.then4.i, label %if.then.if.end22thread-pre-split_crit_edge

if.then.if.end22thread-pre-split_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22thread-pre-split

if.then4.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @dsa_8021q_rcv(ptr noundef %skb, ptr noundef nonnull %source_port, ptr noundef nonnull %switch_id) #10
  br label %if.end22thread-pre-split

if.else:                                          ; preds = %sja1105_skb_has_tag_8021q.exit
  br i1 %retval.0.i, label %if.then5, label %if.else13

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %arrayidx.3.i22.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.3.i22.i, align 1
  %conv = zext i8 %59 to i32
  %60 = ptrtoint ptr %source_port to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv, ptr %source_port, align 4
  %61 = ptrtoint ptr %arrayidx.4.i25.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.4.i25.i, align 1
  %conv8 = zext i8 %62 to i32
  %63 = ptrtoint ptr %switch_id to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv8, ptr %switch_id, align 4
  store i8 0, ptr %arrayidx.3.i22.i, align 1
  store i8 0, ptr %arrayidx.4.i25.i, align 1
  br label %if.end22thread-pre-split

if.else13:                                        ; preds = %if.else
  br i1 %spec.select, label %if.then15, label %if.else13.cleanup_crit_edge

if.else13.cleanup_crit_edge:                      ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then15:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 14
  %call1.i = call i32 @packing(ptr noundef %add.ptr.i, ptr noundef nonnull %meta, i32 noundef 31, i32 noundef 0, i32 noundef 4, i32 noundef 1, i8 noundef zeroext 0) #10
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i.i, i32 18
  %dmac_byte_4.i = getelementptr inbounds %struct.sja1105_meta, ptr %meta, i32 0, i32 1
  %call3.i94 = call i32 @packing(ptr noundef %add.ptr2.i, ptr noundef %dmac_byte_4.i, i32 noundef 7, i32 noundef 0, i32 noundef 1, i32 noundef 1, i8 noundef zeroext 0) #10
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i.i, i32 19
  %dmac_byte_3.i = getelementptr inbounds %struct.sja1105_meta, ptr %meta, i32 0, i32 2
  %call5.i = call i32 @packing(ptr noundef %add.ptr4.i, ptr noundef %dmac_byte_3.i, i32 noundef 7, i32 noundef 0, i32 noundef 1, i32 noundef 1, i8 noundef zeroext 0) #10
  %add.ptr6.i = getelementptr i8, ptr %add.ptr.i.i, i32 20
  %source_port.i = getelementptr inbounds %struct.sja1105_meta, ptr %meta, i32 0, i32 3
  %call7.i = call i32 @packing(ptr noundef %add.ptr6.i, ptr noundef %source_port.i, i32 noundef 7, i32 noundef 0, i32 noundef 1, i32 noundef 1, i8 noundef zeroext 0) #10
  %add.ptr8.i = getelementptr i8, ptr %add.ptr.i.i, i32 21
  %switch_id.i = getelementptr inbounds %struct.sja1105_meta, ptr %meta, i32 0, i32 4
  %call9.i = call i32 @packing(ptr noundef %add.ptr8.i, ptr noundef %switch_id.i, i32 noundef 7, i32 noundef 0, i32 noundef 1, i32 noundef 1, i8 noundef zeroext 0) #10
  %64 = ptrtoint ptr %source_port.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %source_port.i, align 8
  %conv17 = trunc i64 %65 to i32
  %66 = ptrtoint ptr %source_port to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv17, ptr %source_port, align 4
  %67 = ptrtoint ptr %switch_id.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %switch_id.i, align 8
  %conv19 = trunc i64 %68 to i32
  %69 = ptrtoint ptr %switch_id to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %conv19, ptr %switch_id, align 4
  br label %if.end22

if.end22thread-pre-split:                         ; preds = %if.then5, %if.then4.i, %if.then.if.end22thread-pre-split_crit_edge
  %vid.1.ph = phi i16 [ %57, %if.then.if.end22thread-pre-split_crit_edge ], [ -1, %if.then4.i ], [ -1, %if.then5 ]
  %70 = ptrtoint ptr %source_port to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pr = load i32, ptr %source_port, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end22thread-pre-split, %if.then15
  %71 = phi i32 [ %.pr, %if.end22thread-pre-split ], [ %conv17, %if.then15 ]
  %vid.1 = phi i16 [ %vid.1.ph, %if.end22thread-pre-split ], [ -1, %if.then15 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %71)
  %cmp = icmp eq i32 %71, -1
  br i1 %cmp, label %if.end22.if.then26_crit_edge, label %lor.lhs.false

if.end22.if.then26_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26

lor.lhs.false:                                    ; preds = %if.end22
  %72 = ptrtoint ptr %switch_id to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %switch_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %73)
  %cmp24 = icmp eq i32 %73, -1
  br i1 %cmp24, label %lor.lhs.false.if.then26_crit_edge, label %if.else28

lor.lhs.false.if.then26_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26

if.then26:                                        ; preds = %lor.lhs.false.if.then26_crit_edge, %if.end22.if.then26_crit_edge
  %dsa_ptr.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 75
  %74 = ptrtoint ptr %dsa_ptr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dsa_ptr.i, align 4
  %dst1.i = getelementptr inbounds %struct.dsa_port, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dst1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vinfo.i) #10
  %78 = ptrtoint ptr %vinfo.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 -1, ptr %vinfo.i, align 2, !annotation !68
  %79 = getelementptr inbounds %struct.bridge_vlan_info, ptr %vinfo.i, i32 0, i32 1
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 -1, ptr %79, align 2, !annotation !68
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %77, i32 0, i32 1
  %81 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %.pn42.i = load ptr, ptr %ports.i, align 4
  %cmp.not44.i = icmp eq ptr %.pn42.i, %ports.i
  br i1 %cmp.not44.i, label %if.then26.dsa_find_designated_bridge_port_by_vid.exit_crit_edge, label %if.then26.for.body.i_crit_edge

if.then26.for.body.i_crit_edge:                   ; preds = %if.then26
  br label %for.body.i

if.then26.dsa_find_designated_bridge_port_by_vid.exit_crit_edge: ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_find_designated_bridge_port_by_vid.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then26.for.body.i_crit_edge
  %.pn45.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn42.i, %if.then26.for.body.i_crit_edge ]
  %dp.046.i = getelementptr i8, ptr %.pn45.i, i32 -448
  %type.i = getelementptr i8, ptr %.pn45.i, i32 -424
  %82 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %83)
  %cmp3.not.i = icmp eq i32 %83, 3
  br i1 %cmp3.not.i, label %if.end.i95, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i95:                                       ; preds = %for.body.i
  %bridge.i = getelementptr i8, ptr %.pn45.i, i32 -396
  %84 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bridge.i, align 4
  %tobool.not.i = icmp eq ptr %85, null
  br i1 %tobool.not.i, label %if.end.i95.for.inc.i_crit_edge, label %if.end5.i96

if.end.i95.for.inc.i_crit_edge:                   ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end5.i96:                                      ; preds = %if.end.i95
  %stp_state.i = getelementptr i8, ptr %.pn45.i, i32 -406
  %86 = ptrtoint ptr %stp_state.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %stp_state.i, align 2
  %88 = and i8 %87, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %88)
  %switch.i = icmp eq i8 %88, 2
  br i1 %switch.i, label %if.end13.i, label %if.end5.i96.for.inc.i_crit_edge

if.end5.i96.for.inc.i_crit_edge:                  ; preds = %if.end5.i96
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end13.i:                                       ; preds = %if.end5.i96
  %cpu_dp14.i = getelementptr i8, ptr %.pn45.i, i32 -416
  %89 = ptrtoint ptr %cpu_dp14.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cpu_dp14.i, align 4
  %cmp15.not.i = icmp eq ptr %90, %75
  br i1 %cmp15.not.i, label %if.end18.i, label %if.end13.i.for.inc.i_crit_edge

if.end13.i.for.inc.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end18.i:                                       ; preds = %if.end13.i
  %91 = ptrtoint ptr %dp.046.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dp.046.i, align 4
  %call.i = call i32 @br_vlan_get_info_rcu(ptr noundef %92, i16 noundef zeroext %vid.1, ptr noundef nonnull %vinfo.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool19.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool19.not.i, label %if.end18.i.dsa_find_designated_bridge_port_by_vid.exit_crit_edge, label %if.end18.i.for.inc.i_crit_edge

if.end18.i.for.inc.i_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end18.i.dsa_find_designated_bridge_port_by_vid.exit_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_find_designated_bridge_port_by_vid.exit

for.inc.i:                                        ; preds = %if.end18.i.for.inc.i_crit_edge, %if.end13.i.for.inc.i_crit_edge, %if.end5.i96.for.inc.i_crit_edge, %if.end.i95.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %93 = ptrtoint ptr %.pn45.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %.pn.i = load ptr, ptr %.pn45.i, align 4
  %cmp.not.i97 = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i97, label %for.inc.i.dsa_find_designated_bridge_port_by_vid.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.dsa_find_designated_bridge_port_by_vid.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_find_designated_bridge_port_by_vid.exit

dsa_find_designated_bridge_port_by_vid.exit:      ; preds = %for.inc.i.dsa_find_designated_bridge_port_by_vid.exit_crit_edge, %if.end18.i.dsa_find_designated_bridge_port_by_vid.exit_crit_edge, %if.then26.dsa_find_designated_bridge_port_by_vid.exit_crit_edge
  %retval.0.i98 = phi ptr [ null, %if.then26.dsa_find_designated_bridge_port_by_vid.exit_crit_edge ], [ %92, %if.end18.i.dsa_find_designated_bridge_port_by_vid.exit_crit_edge ], [ null, %for.inc.i.dsa_find_designated_bridge_port_by_vid.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vinfo.i) #10
  br label %if.end30

if.else28:                                        ; preds = %lor.lhs.false
  %dsa_ptr.i99 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 75
  %94 = ptrtoint ptr %dsa_ptr.i99 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dsa_ptr.i99, align 4
  %dst1.i100 = getelementptr inbounds %struct.dsa_port, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %dst1.i100 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dst1.i100, align 4
  %ports.i101 = getelementptr inbounds %struct.dsa_switch_tree, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %ports.i101 to i32
  call void @__asan_load4_noabort(i32 %98)
  %.pn22.i = load ptr, ptr %ports.i101, align 4
  %cmp.not23.i = icmp eq ptr %.pn22.i, %ports.i101
  br i1 %cmp.not23.i, label %if.else28.if.end30_crit_edge, label %if.else28.for.body.i102_crit_edge

if.else28.for.body.i102_crit_edge:                ; preds = %if.else28
  br label %for.body.i102

if.else28.if.end30_crit_edge:                     ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

for.body.i102:                                    ; preds = %for.inc.i106.for.body.i102_crit_edge, %if.else28.for.body.i102_crit_edge
  %.pn24.i = phi ptr [ %.pn.i104, %for.inc.i106.for.body.i102_crit_edge ], [ %.pn22.i, %if.else28.for.body.i102_crit_edge ]
  %ds.i = getelementptr i8, ptr %.pn24.i, i32 -432
  %99 = ptrtoint ptr %ds.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ds.i, align 4
  %index.i = getelementptr inbounds %struct.dsa_switch, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %73)
  %cmp3.i = icmp eq i32 %102, %73
  br i1 %cmp3.i, label %land.lhs.true.i, label %for.body.i102.for.inc.i106_crit_edge

for.body.i102.for.inc.i106_crit_edge:             ; preds = %for.body.i102
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i106

land.lhs.true.i:                                  ; preds = %for.body.i102
  %index4.i = getelementptr i8, ptr %.pn24.i, i32 -428
  %103 = ptrtoint ptr %index4.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %index4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %71)
  %cmp5.i = icmp eq i32 %104, %71
  br i1 %cmp5.i, label %land.lhs.true6.i, label %land.lhs.true.i.for.inc.i106_crit_edge

land.lhs.true.i.for.inc.i106_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i106

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %type.i103 = getelementptr i8, ptr %.pn24.i, i32 -424
  %105 = ptrtoint ptr %type.i103 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %type.i103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %106)
  %cmp7.i = icmp eq i32 %106, 3
  br i1 %cmp7.i, label %if.then.i, label %land.lhs.true6.i.for.inc.i106_crit_edge

land.lhs.true6.i.for.inc.i106_crit_edge:          ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i106

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #12
  %dp.0.le.i = getelementptr i8, ptr %.pn24.i, i32 -448
  %107 = ptrtoint ptr %dp.0.le.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dp.0.le.i, align 4
  br label %if.end30

for.inc.i106:                                     ; preds = %land.lhs.true6.i.for.inc.i106_crit_edge, %land.lhs.true.i.for.inc.i106_crit_edge, %for.body.i102.for.inc.i106_crit_edge
  %109 = ptrtoint ptr %.pn24.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %.pn.i104 = load ptr, ptr %.pn24.i, align 4
  %cmp.not.i105 = icmp eq ptr %.pn.i104, %ports.i101
  br i1 %cmp.not.i105, label %for.inc.i106.if.end30_crit_edge, label %for.inc.i106.for.body.i102_crit_edge

for.inc.i106.for.body.i102_crit_edge:             ; preds = %for.inc.i106
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i102

for.inc.i106.if.end30_crit_edge:                  ; preds = %for.inc.i106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.end30:                                         ; preds = %for.inc.i106.if.end30_crit_edge, %if.then.i, %if.else28.if.end30_crit_edge, %dsa_find_designated_bridge_port_by_vid.exit
  %retval.0.i107.sink = phi ptr [ %retval.0.i98, %dsa_find_designated_bridge_port_by_vid.exit ], [ %108, %if.then.i ], [ null, %if.else28.if.end30_crit_edge ], [ null, %for.inc.i106.if.end30_crit_edge ]
  %110 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %retval.0.i107.sink, ptr %110, align 8
  %112 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %tobool31.not = icmp eq ptr %retval.0.i107.sink, null
  br i1 %tobool31.not, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.3) #13
  br label %cleanup

if.end33:                                         ; preds = %if.end30
  %dp.i.i111 = getelementptr i8, ptr %retval.0.i107.sink, i32 2312
  %113 = ptrtoint ptr %dp.i.i111 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dp.i.i111, align 4
  br i1 %retval.0.i, label %if.then.i112, label %if.else.i

if.then.i112:                                     ; preds = %if.end33
  %ds2.i = getelementptr inbounds %struct.dsa_port, ptr %114, i32 0, i32 4
  %115 = ptrtoint ptr %ds2.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ds2.i, align 4
  %tagger_data.i.i = getelementptr inbounds %struct.dsa_switch, ptr %116, i32 0, i32 6
  %117 = ptrtoint ptr %tagger_data.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %tagger_data.i.i, align 4
  %state.i = getelementptr inbounds %struct.sja1105_tagger_private, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %120, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool5.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool5.not.i, label %if.then.i112.cleanup_crit_edge, label %if.end.i113

if.then.i112.cleanup_crit_edge:                   ; preds = %if.then.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i113:                                      ; preds = %if.then.i112
  %meta_lock.i = getelementptr inbounds %struct.sja1105_tagger_private, ptr %118, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %meta_lock.i) #10
  %stampable_skb.i = getelementptr inbounds %struct.sja1105_tagger_private, ptr %118, i32 0, i32 3
  %121 = ptrtoint ptr %stampable_skb.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %stampable_skb.i, align 4
  %tobool7.not.i = icmp eq ptr %122, null
  br i1 %tobool7.not.i, label %if.end.i113.if.end17.i_crit_edge, label %do.body.i

if.end.i113.if.end17.i_crit_edge:                 ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i

do.body.i:                                        ; preds = %if.end.i113
  %call9.i114 = call i32 @___ratelimit(ptr noundef nonnull @sja1105_rcv_meta_state_machine._rs, ptr noundef nonnull @__func__.sja1105_rcv_meta_state_machine) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i114)
  %tobool10.not.i = icmp eq i32 %call9.i114, 0
  br i1 %tobool10.not.i, label %do.body.i.do.end15.i_crit_edge, label %do.end.i

do.body.i.do.end15.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end15.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %123 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %116, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.5, i64 noundef 1652522221582) #13
  br label %do.end15.i

do.end15.i:                                       ; preds = %do.end.i, %do.body.i.do.end15.i_crit_edge
  %125 = ptrtoint ptr %stampable_skb.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %stampable_skb.i, align 4
  call void @kfree_skb_reason(ptr noundef %126, i32 noundef 0) #10
  br label %if.end17.i

if.end17.i:                                       ; preds = %do.end15.i, %if.end.i113.if.end17.i_crit_edge
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %users.i.i, i32 1, i32 3, i32 1) #10
  %127 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i, ptr %users.i.i, i32 1, ptr elementtype(i32) %users.i.i) #10, !srcloc !70
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %127, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end17.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !71

if.end17.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end17.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %128 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %128)
  %.not.i.i.i.i.i = icmp sgt i32 %128, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.skb_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !69

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.skb_get.exit.i_crit_edge:       ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_get.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end17.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end17.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %users.i.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %skb_get.exit.i

skb_get.exit.i:                                   ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.skb_get.exit.i_crit_edge
  %129 = ptrtoint ptr %stampable_skb.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %skb, ptr %stampable_skb.i, align 4
  br label %return.sink.split.i

if.else.i:                                        ; preds = %if.end33
  %bridge.i108 = getelementptr inbounds %struct.dsa_port, ptr %114, i32 0, i32 14
  %130 = ptrtoint ptr %bridge.i108 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %bridge.i108, align 4
  %tobool.not.i109 = icmp eq ptr %131, null
  %offload_fwd_mark.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %132 = ptrtoint ptr %offload_fwd_mark.i to i32
  call void @__asan_loadN_noabort(i32 %132, i32 4)
  %bf.load.i110 = load i32, ptr %offload_fwd_mark.i, align 2
  %bf.shl.i = select i1 %tobool.not.i109, i32 0, i32 1048576
  %bf.clear.i = and i32 %bf.load.i110, -1048577
  %bf.set.i = or i32 %bf.clear.i, %bf.shl.i
  store i32 %bf.set.i, ptr %offload_fwd_mark.i, align 2
  br i1 %spec.select, label %if.then24.i, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then24.i:                                      ; preds = %if.else.i
  %133 = ptrtoint ptr %dp.i.i111 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dp.i.i111, align 4
  %ds29.i = getelementptr inbounds %struct.dsa_port, ptr %134, i32 0, i32 4
  %135 = ptrtoint ptr %ds29.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ds29.i, align 4
  %tagger_data.i101.i = getelementptr inbounds %struct.dsa_switch, ptr %136, i32 0, i32 6
  %137 = ptrtoint ptr %tagger_data.i101.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %tagger_data.i101.i, align 4
  %state32.i = getelementptr inbounds %struct.sja1105_tagger_private, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %state32.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load volatile i32, ptr %state32.i, align 4
  %and1.i99.i = and i32 %140, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i99.i)
  %tobool34.not.i = icmp eq i32 %and1.i99.i, 0
  br i1 %tobool34.not.i, label %if.then24.i.cleanup_crit_edge, label %if.end36.i

if.then24.i.cleanup_crit_edge:                    ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end36.i:                                       ; preds = %if.then24.i
  %meta_lock37.i = getelementptr inbounds %struct.sja1105_tagger_private, ptr %138, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %meta_lock37.i) #10
  %stampable_skb38.i = getelementptr inbounds %struct.sja1105_tagger_private, ptr %138, i32 0, i32 3
  %141 = ptrtoint ptr %stampable_skb38.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %stampable_skb38.i, align 4
  store ptr null, ptr %stampable_skb38.i, align 4
  %tobool40.not.i = icmp eq ptr %142, null
  br i1 %tobool40.not.i, label %do.body42.i, label %if.end54.i

do.body42.i:                                      ; preds = %if.end36.i
  %call43.i = call i32 @___ratelimit(ptr noundef nonnull @sja1105_rcv_meta_state_machine._rs.8, ptr noundef nonnull @__func__.sja1105_rcv_meta_state_machine) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %do.body42.i.return.sink.split.i_crit_edge, label %do.end48.i

do.body42.i.return.sink.split.i_crit_edge:        ; preds = %do.body42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split.i

do.end48.i:                                       ; preds = %do.body42.i
  call void @__sanitizer_cov_trace_pc() #12
  %143 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %136, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %144, ptr noundef nonnull @.str.10) #13
  br label %return.sink.split.i

if.end54.i:                                       ; preds = %if.end36.i
  %145 = getelementptr inbounds %struct.anon, ptr %142, i32 0, i32 2
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %145, align 8
  %148 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %112, align 8
  %cmp.not.i115 = icmp eq ptr %147, %149
  br i1 %cmp.not.i115, label %cleanup70.i, label %do.body56.i

do.body56.i:                                      ; preds = %if.end54.i
  %call57.i = call i32 @___ratelimit(ptr noundef nonnull @sja1105_rcv_meta_state_machine._rs.12, ptr noundef nonnull @__func__.sja1105_rcv_meta_state_machine) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %do.body56.i.return.sink.split.i_crit_edge, label %do.end62.i

do.body56.i.return.sink.split.i_crit_edge:        ; preds = %do.body56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split.i

do.end62.i:                                       ; preds = %do.body56.i
  call void @__sanitizer_cov_trace_pc() #12
  %150 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %136, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %151, ptr noundef nonnull @.str.14) #13
  br label %return.sink.split.i

cleanup70.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %142, i32 0, i32 18
  %152 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %head.i.i.i.i, align 8
  %mac_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %142, i32 0, i32 15, i32 0, i32 21
  %154 = ptrtoint ptr %mac_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %mac_header.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %155 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %153, i32 %conv.i.i.i.i
  %dmac_byte_3.i.i = getelementptr inbounds %struct.sja1105_meta, ptr %meta, i32 0, i32 2
  %156 = ptrtoint ptr %dmac_byte_3.i.i to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %dmac_byte_3.i.i, align 8
  %conv.i.i116 = trunc i64 %157 to i8
  %arrayidx.i.i = getelementptr [6 x i8], ptr %add.ptr.i.i.i.i, i32 0, i32 3
  %158 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %conv.i.i116, ptr %arrayidx.i.i, align 1
  %dmac_byte_4.i.i = getelementptr inbounds %struct.sja1105_meta, ptr %meta, i32 0, i32 1
  %159 = ptrtoint ptr %dmac_byte_4.i.i to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %dmac_byte_4.i.i, align 8
  %conv1.i.i = trunc i64 %160 to i8
  %arrayidx3.i.i = getelementptr [6 x i8], ptr %add.ptr.i.i.i.i, i32 0, i32 4
  %161 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %conv1.i.i, ptr %arrayidx3.i.i, align 1
  %162 = ptrtoint ptr %meta to i32
  call void @__asan_load8_noabort(i32 %162)
  %163 = load i64, ptr %meta, align 8
  %tstamp4.i.i = getelementptr inbounds %struct.sk_buff, ptr %142, i32 0, i32 3, i32 8
  %164 = ptrtoint ptr %tstamp4.i.i to i32
  call void @__asan_store8_noabort(i32 %164)
  store i64 %163, ptr %tstamp4.i.i, align 8
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %cleanup70.i, %do.end62.i, %do.body56.i.return.sink.split.i_crit_edge, %do.end48.i, %do.body42.i.return.sink.split.i_crit_edge, %skb_get.exit.i
  %meta_lock37.sink.i = phi ptr [ %meta_lock37.i, %cleanup70.i ], [ %meta_lock.i, %skb_get.exit.i ], [ %meta_lock37.i, %do.end48.i ], [ %meta_lock37.i, %do.body42.i.return.sink.split.i_crit_edge ], [ %meta_lock37.i, %do.end62.i ], [ %meta_lock37.i, %do.body56.i.return.sink.split.i_crit_edge ]
  %retval.2.ph.i = phi ptr [ %142, %cleanup70.i ], [ null, %skb_get.exit.i ], [ null, %do.end48.i ], [ null, %do.body42.i.return.sink.split.i_crit_edge ], [ null, %do.end62.i ], [ null, %do.body56.i.return.sink.split.i_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %meta_lock37.sink.i) #10
  br label %cleanup

cleanup:                                          ; preds = %return.sink.split.i, %if.then24.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %if.then.i112.cleanup_crit_edge, %if.then32, %if.else13.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then32 ], [ null, %if.else13.cleanup_crit_edge ], [ %skb, %if.then.i112.cleanup_crit_edge ], [ %skb, %if.else.i.cleanup_crit_edge ], [ null, %if.then24.i.cleanup_crit_edge ], [ %retval.2.ph.i, %return.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %meta) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %switch_id) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %source_port) #10
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sja1105_flow_dissect(ptr nocapture noundef readonly %skb, ptr nocapture noundef writeonly %proto, ptr nocapture noundef writeonly %offset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i.i, align 8
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %2 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %3 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 %conv.i.i.i
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %h_proto.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %5)
  %cmp.i = icmp eq i16 %5, 8
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %sja1105_is_link_local.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sja1105_is_link_local.exit:                       ; preds = %entry
  %6 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr.i.i.i, align 1
  %conv.i.i = zext i8 %7 to i24
  %8 = shl nuw i24 %conv.i.i, 16
  %arrayidx.1.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.1.i.i, align 1
  %conv.1.i.i = zext i8 %10 to i24
  %11 = shl nuw nsw i24 %conv.1.i.i, 8
  %shl.2.i.i = or i24 %11, %8
  %arrayidx.2.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 2
  %12 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.2.i.i, align 1
  %conv.2.i.i = zext i8 %13 to i24
  %or.2.i.i = or i24 %shl.2.i.i, %conv.2.i.i
  %14 = zext i24 %or.2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.22)
  switch i24 %or.2.i.i, label %sja1105_is_link_local.exit.if.end_crit_edge [
    i24 98498, label %sja1105_is_link_local.exit.return_crit_edge
    i24 72473, label %sja1105_is_link_local.exit.return_crit_edge4
  ]

sja1105_is_link_local.exit.return_crit_edge4:     ; preds = %sja1105_is_link_local.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sja1105_is_link_local.exit.return_crit_edge:      ; preds = %sja1105_is_link_local.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sja1105_is_link_local.exit.if.end_crit_edge:      ; preds = %sja1105_is_link_local.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %sja1105_is_link_local.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %15 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %dsa_ptr.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 75
  %18 = ptrtoint ptr %dsa_ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dsa_ptr.i, align 4
  %tag_ops.i = getelementptr inbounds %struct.dsa_port, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %tag_ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tag_ops.i, align 4
  %needed_headroom.i = getelementptr inbounds %struct.dsa_device_ops, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %needed_headroom.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %needed_headroom.i, align 4
  %24 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %offset, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i, align 4
  %div.i = sdiv i32 %23, 2
  %sub.i = add nsw i32 %div.i, -1
  %arrayidx.i = getelementptr i16, ptr %26, i32 %sub.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx.i, align 2
  %29 = ptrtoint ptr %proto to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %proto, align 2
  br label %return

return:                                           ; preds = %if.end, %sja1105_is_link_local.exit.return_crit_edge, %sja1105_is_link_local.exit.return_crit_edge4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_connect(ptr nocapture noundef %ds) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 72) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  %meta_lock = getelementptr inbounds %struct.sja1105_tagger_private, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %meta_lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @sja1105_connect.__key, i16 noundef signext 3) #10
  %dst = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %1 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dst, align 4
  %index = getelementptr inbounds %struct.dsa_switch_tree, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index, align 4
  %index2 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 2
  %5 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index2, align 4
  %call3 = tail call ptr (i32, ptr, ...) @kthread_create_worker(i32 noundef 0, ptr noundef nonnull @.str.17, i32 noundef %4, i32 noundef %6) #10
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %call3 to i32
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end7:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %xmit_worker8 = getelementptr inbounds %struct.sja1105_tagger_private, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %xmit_worker8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call3, ptr %xmit_worker8, align 4
  %rxtstamp_get_state = getelementptr inbounds %struct.sja1105_tagger_data, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %rxtstamp_get_state to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @sja1105_rxtstamp_get_state, ptr %rxtstamp_get_state, align 8
  %rxtstamp_set_state = getelementptr inbounds %struct.sja1105_tagger_data, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %rxtstamp_set_state to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @sja1105_rxtstamp_set_state, ptr %rxtstamp_set_state, align 4
  %tagger_data9 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 6
  %11 = ptrtoint ptr %tagger_data9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %tagger_data9, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then5 ], [ 0, %if.end7 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1105_disconnect(ptr nocapture noundef %ds) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tagger_data = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 6
  %0 = ptrtoint ptr %tagger_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tagger_data, align 4
  %xmit_worker = getelementptr inbounds %struct.sja1105_tagger_private, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %xmit_worker to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xmit_worker, align 4
  tail call void @kthread_destroy_worker(ptr noundef %3) #10
  tail call void @kfree(ptr noundef %1) #10
  %4 = ptrtoint ptr %tagger_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %tagger_data, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_txq_to_tc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @dsa_tag_8021q_tx_vid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sja1105_imprecise_xmit(ptr noundef %skb, ptr noundef %netdev) unnamed_addr #2 align 64 {
entry:
  %proto.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %netdev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %bridge.i = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bridge.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.dsa_port_bridge_dev_get.exit_crit_edge, label %cond.true.i16

entry.dsa_port_bridge_dev_get.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_port_bridge_dev_get.exit

cond.true.i16:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %num.i = getelementptr inbounds %struct.dsa_bridge, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  br label %dsa_port_bridge_dev_get.exit

dsa_port_bridge_dev_get.exit:                     ; preds = %cond.true.i16, %entry.dsa_port_bridge_dev_get.exit_crit_edge
  %cond.i20 = phi i32 [ %5, %cond.true.i16 ], [ 0, %entry.dsa_port_bridge_dev_get.exit_crit_edge ]
  %cond.i17 = phi ptr [ %7, %cond.true.i16 ], [ null, %entry.dsa_port_bridge_dev_get.exit_crit_edge ]
  %call3 = tail call zeroext i1 @br_vlan_enabled(ptr noundef %cond.i17) #10
  br i1 %call3, label %dsa_port_bridge_dev_get.exit.cleanup_crit_edge, label %if.end

dsa_port_bridge_dev_get.exit.cleanup_crit_edge:   ; preds = %dsa_port_bridge_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %dsa_port_bridge_dev_get.exit
  %call4 = tail call zeroext i16 @dsa_8021q_bridge_tx_fwd_offload_vid(i32 noundef %cond.i20) #10
  %ds1.i = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %ds1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ds1.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %proto.i) #10
  %10 = ptrtoint ptr %proto.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %proto.i, align 2, !annotation !68
  %vlan_filtering_is_global.i.i = getelementptr inbounds %struct.dsa_switch, ptr %9, i32 0, i32 3
  %11 = ptrtoint ptr %vlan_filtering_is_global.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i.i = load i16, ptr %vlan_filtering_is_global.i.i, align 4
  %12 = and i16 %bf.load.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not.i.i = icmp eq i16 %12, 0
  br i1 %tobool.not.i.i, label %dsa_port_is_vlan_filtering.exit.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end
  %13 = and i16 %bf.load.i.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool6.i.not.i = icmp eq i16 %13, 0
  br i1 %tobool6.i.not.i, label %if.then.i.i.sja1105_xmit_tpid.exit_crit_edge, label %if.then.i.i.if.end.i_crit_edge

if.then.i.i.if.end.i_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i.i.sja1105_xmit_tpid.exit_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_xmit_tpid.exit

dsa_port_is_vlan_filtering.exit.i:                ; preds = %if.end
  %vlan_filtering7.i.i = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %vlan_filtering7.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load8.i.i = load i8, ptr %vlan_filtering7.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load8.i.i)
  %tobool10.i.i = icmp slt i8 %bf.load8.i.i, 0
  br i1 %tobool10.i.i, label %dsa_port_is_vlan_filtering.exit.i.if.end.i_crit_edge, label %dsa_port_is_vlan_filtering.exit.i.sja1105_xmit_tpid.exit_crit_edge

dsa_port_is_vlan_filtering.exit.i.sja1105_xmit_tpid.exit_crit_edge: ; preds = %dsa_port_is_vlan_filtering.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_xmit_tpid.exit

dsa_port_is_vlan_filtering.exit.i.if.end.i_crit_edge: ; preds = %dsa_port_is_vlan_filtering.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %dsa_port_is_vlan_filtering.exit.i.if.end.i_crit_edge, %if.then.i.i.if.end.i_crit_edge
  %dst.i = getelementptr inbounds %struct.dsa_switch, ptr %9, i32 0, i32 1
  %15 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dst.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn73.i = load ptr, ptr %ports.i, align 4
  %cmp.not74.i = icmp eq ptr %.pn73.i, %ports.i
  br i1 %cmp.not74.i, label %if.end.i.land.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.land.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %.pn75.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn73.i, %if.end.i.for.body.i_crit_edge ]
  %ds4.i = getelementptr i8, ptr %.pn75.i, i32 -432
  %18 = ptrtoint ptr %ds4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ds4.i, align 4
  %cmp5.i = icmp eq ptr %19, %9
  br i1 %cmp5.i, label %if.then6.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then6.i:                                       ; preds = %for.body.i
  %bridge.i.i = getelementptr i8, ptr %.pn75.i, i32 -396
  %20 = ptrtoint ptr %bridge.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bridge.i.i, align 4
  %tobool.not.i67.i = icmp eq ptr %21, null
  br i1 %tobool.not.i67.i, label %if.then6.i.for.inc.i_crit_edge, label %dsa_port_bridge_dev_get.exit.i

if.then6.i.for.inc.i_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

dsa_port_bridge_dev_get.exit.i:                   ; preds = %if.then6.i
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %tobool.not.i18 = icmp eq ptr %23, null
  br i1 %tobool.not.i18, label %dsa_port_bridge_dev_get.exit.i.for.inc.i_crit_edge, label %cleanup.i

dsa_port_bridge_dev_get.exit.i.for.inc.i_crit_edge: ; preds = %dsa_port_bridge_dev_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

cleanup.i:                                        ; preds = %dsa_port_bridge_dev_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call10.i = call i32 @br_vlan_get_proto(ptr noundef nonnull %23, ptr noundef nonnull %proto.i) #10
  %24 = ptrtoint ptr %proto.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %proto.i, align 2
  br label %sja1105_xmit_tpid.exit

for.inc.i:                                        ; preds = %dsa_port_bridge_dev_get.exit.i.for.inc.i_crit_edge, %if.then6.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %26 = ptrtoint ptr %.pn75.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn.i = load ptr, ptr %.pn75.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.land.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.land.end.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end.i

land.end.i:                                       ; preds = %for.inc.i.land.end.i_crit_edge, %if.end.i.land.end.i_crit_edge
  %.b66.i = load i1, ptr @sja1105_xmit_tpid.__already_done, align 1
  br i1 %.b66.i, label %land.end.i.sja1105_xmit_tpid.exit_crit_edge, label %if.then23.i, !prof !69

land.end.i.sja1105_xmit_tpid.exit_crit_edge:      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_xmit_tpid.exit

if.then23.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @sja1105_xmit_tpid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 203, i32 noundef 9, ptr noundef nonnull @.str.2) #10
  br label %sja1105_xmit_tpid.exit

sja1105_xmit_tpid.exit:                           ; preds = %if.then23.i, %land.end.i.sja1105_xmit_tpid.exit_crit_edge, %cleanup.i, %dsa_port_is_vlan_filtering.exit.i.sja1105_xmit_tpid.exit_crit_edge, %if.then.i.i.sja1105_xmit_tpid.exit_crit_edge
  %retval.3.i = phi i16 [ %25, %cleanup.i ], [ -9509, %dsa_port_is_vlan_filtering.exit.i.sja1105_xmit_tpid.exit_crit_edge ], [ -9509, %if.then23.i ], [ -9509, %land.end.i.sja1105_xmit_tpid.exit_crit_edge ], [ -9509, %if.then.i.i.sja1105_xmit_tpid.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %proto.i) #10
  %call6 = call ptr @dsa_8021q_xmit(ptr noundef %skb, ptr noundef %netdev, i16 noundef zeroext %retval.3.i, i16 noundef zeroext %call4) #10
  br label %cleanup

cleanup:                                          ; preds = %sja1105_xmit_tpid.exit, %dsa_port_bridge_dev_get.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %call6, %sja1105_xmit_tpid.exit ], [ %skb, %dsa_port_bridge_dev_get.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sja1105_pvid_tag_control_pkt(ptr nocapture noundef readonly %dp, ptr noundef %skb, i8 noundef zeroext %pcp) unnamed_addr #2 align 64 {
entry:
  %proto.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ds1.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %0 = ptrtoint ptr %ds1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds1.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %proto.i) #10
  %2 = ptrtoint ptr %proto.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %proto.i, align 2, !annotation !68
  %vlan_filtering_is_global.i.i = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %vlan_filtering_is_global.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load.i.i = load i16, ptr %vlan_filtering_is_global.i.i, align 4
  %4 = and i16 %bf.load.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not.i.i = icmp eq i16 %4, 0
  br i1 %tobool.not.i.i, label %dsa_port_is_vlan_filtering.exit.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  %5 = and i16 %bf.load.i.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool6.i.not.i = icmp eq i16 %5, 0
  br i1 %tobool6.i.not.i, label %if.then.i.i.sja1105_xmit_tpid.exit_crit_edge, label %if.then.i.i.if.end.i_crit_edge

if.then.i.i.if.end.i_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i.i.sja1105_xmit_tpid.exit_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_xmit_tpid.exit

dsa_port_is_vlan_filtering.exit.i:                ; preds = %entry
  %vlan_filtering7.i.i = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 11
  %6 = ptrtoint ptr %vlan_filtering7.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load8.i.i = load i8, ptr %vlan_filtering7.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load8.i.i)
  %tobool10.i.i = icmp slt i8 %bf.load8.i.i, 0
  br i1 %tobool10.i.i, label %dsa_port_is_vlan_filtering.exit.i.if.end.i_crit_edge, label %dsa_port_is_vlan_filtering.exit.i.sja1105_xmit_tpid.exit_crit_edge

dsa_port_is_vlan_filtering.exit.i.sja1105_xmit_tpid.exit_crit_edge: ; preds = %dsa_port_is_vlan_filtering.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_xmit_tpid.exit

dsa_port_is_vlan_filtering.exit.i.if.end.i_crit_edge: ; preds = %dsa_port_is_vlan_filtering.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %dsa_port_is_vlan_filtering.exit.i.if.end.i_crit_edge, %if.then.i.i.if.end.i_crit_edge
  %dst.i = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dst.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn73.i = load ptr, ptr %ports.i, align 4
  %cmp.not74.i = icmp eq ptr %.pn73.i, %ports.i
  br i1 %cmp.not74.i, label %if.end.i.land.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.land.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %.pn75.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn73.i, %if.end.i.for.body.i_crit_edge ]
  %ds4.i = getelementptr i8, ptr %.pn75.i, i32 -432
  %10 = ptrtoint ptr %ds4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ds4.i, align 4
  %cmp5.i = icmp eq ptr %11, %1
  br i1 %cmp5.i, label %if.then6.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then6.i:                                       ; preds = %for.body.i
  %bridge.i.i = getelementptr i8, ptr %.pn75.i, i32 -396
  %12 = ptrtoint ptr %bridge.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bridge.i.i, align 4
  %tobool.not.i67.i = icmp eq ptr %13, null
  br i1 %tobool.not.i67.i, label %if.then6.i.for.inc.i_crit_edge, label %dsa_port_bridge_dev_get.exit.i

if.then6.i.for.inc.i_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

dsa_port_bridge_dev_get.exit.i:                   ; preds = %if.then6.i
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %dsa_port_bridge_dev_get.exit.i.for.inc.i_crit_edge, label %cleanup.i

dsa_port_bridge_dev_get.exit.i.for.inc.i_crit_edge: ; preds = %dsa_port_bridge_dev_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

cleanup.i:                                        ; preds = %dsa_port_bridge_dev_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call10.i = call i32 @br_vlan_get_proto(ptr noundef nonnull %15, ptr noundef nonnull %proto.i) #10
  %16 = ptrtoint ptr %proto.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %proto.i, align 2
  br label %sja1105_xmit_tpid.exit

for.inc.i:                                        ; preds = %dsa_port_bridge_dev_get.exit.i.for.inc.i_crit_edge, %if.then6.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %18 = ptrtoint ptr %.pn75.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn.i = load ptr, ptr %.pn75.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.land.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.land.end.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end.i

land.end.i:                                       ; preds = %for.inc.i.land.end.i_crit_edge, %if.end.i.land.end.i_crit_edge
  %.b66.i = load i1, ptr @sja1105_xmit_tpid.__already_done, align 1
  br i1 %.b66.i, label %land.end.i.sja1105_xmit_tpid.exit_crit_edge, label %if.then23.i, !prof !69

land.end.i.sja1105_xmit_tpid.exit_crit_edge:      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_xmit_tpid.exit

if.then23.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @sja1105_xmit_tpid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 203, i32 noundef 9, ptr noundef nonnull @.str.2) #10
  br label %sja1105_xmit_tpid.exit

sja1105_xmit_tpid.exit:                           ; preds = %if.then23.i, %land.end.i.sja1105_xmit_tpid.exit_crit_edge, %cleanup.i, %dsa_port_is_vlan_filtering.exit.i.sja1105_xmit_tpid.exit_crit_edge, %if.then.i.i.sja1105_xmit_tpid.exit_crit_edge
  %retval.3.i = phi i16 [ %17, %cleanup.i ], [ -9509, %dsa_port_is_vlan_filtering.exit.i.sja1105_xmit_tpid.exit_crit_edge ], [ -9509, %if.then23.i ], [ -9509, %land.end.i.sja1105_xmit_tpid.exit_crit_edge ], [ -9509, %if.then.i.i.sja1105_xmit_tpid.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %proto.i) #10
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %19 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %bf.load = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool.not, label %sja1105_xmit_tpid.exit.if.end6_crit_edge, label %if.then, !prof !69

sja1105_xmit_tpid.exit.if.end6_crit_edge:         ; preds = %sja1105_xmit_tpid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %sja1105_xmit_tpid.exit
  %call3 = call fastcc ptr @__vlan_hwaccel_push_inside(ptr noundef %skb)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then.cleanup_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %sja1105_xmit_tpid.exit.if.end6_crit_edge
  %skb.addr.0 = phi ptr [ %call3, %if.then.if.end6_crit_edge ], [ %skb, %sja1105_xmit_tpid.exit.if.end6_crit_edge ]
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 18
  %20 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i, align 8
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 21
  %22 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %mac_header.i, align 2
  %conv.i = zext i16 %23 to i32
  %add.ptr.i = getelementptr i8, ptr %21, i32 %conv.i
  %h_vlan_proto = getelementptr inbounds %struct.vlan_ethhdr, ptr %add.ptr.i, i32 0, i32 1
  %24 = ptrtoint ptr %h_vlan_proto to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %h_vlan_proto, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %retval.3.i)
  %cmp = icmp eq i16 %25, %retval.3.i
  br i1 %cmp, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %conv12 = zext i8 %pcp to i16
  %shl = shl i16 %conv12, 13
  %or = or i16 %shl, 4095
  %cloned.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 12
  %26 = ptrtoint ptr %cloned.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load.i.i.i.i.i = load i8, ptr %cloned.i.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp sgt i8 %bf.load.i.i.i.i.i, -1
  br i1 %tobool.not.i.i.i.i.i, label %skb_header_cloned.exit.thread.i.i.i.i, label %skb_header_cloned.exit.i.i.i.i

skb_header_cloned.exit.i.i.i.i:                   ; preds = %if.end11
  %end.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 17
  %27 = ptrtoint ptr %end.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %end.i.i.i.i.i.i, align 4
  %dataref1.i.i.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %28, i32 0, i32 10
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i.i.i, i32 noundef 4) #10
  %29 = ptrtoint ptr %dataref1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %dataref1.i.i.i.i.i, align 4
  %data.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 19
  %31 = ptrtoint ptr %data.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i.i.i.i.i.i, align 4
  %33 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i.i.i = ptrtoint ptr %32 to i32
  %sub.ptr.rhs.cast.i.i.i.i.i.i = ptrtoint ptr %34 to i32
  %sub.ptr.sub.i.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i.i.i.i.i.i)
  %cmp.i1.i.i.i.i = icmp ult i32 %sub.ptr.sub.i.i.i.i.i.i, 4
  br i1 %cmp.i1.i.i.i.i, label %skb_header_cloned.exit.i.i.i.i.if.end.thread.i.i.i.i.i_crit_edge, label %if.end.i2.i.i.i.i

skb_header_cloned.exit.i.i.i.i.if.end.thread.i.i.i.i.i_crit_edge: ; preds = %skb_header_cloned.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.thread.i.i.i.i.i

skb_header_cloned.exit.thread.i.i.i.i:            ; preds = %if.end11
  %data.i.i5.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 19
  %35 = ptrtoint ptr %data.i.i5.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i.i5.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i7.i.i.i.i = ptrtoint ptr %36 to i32
  %sub.ptr.rhs.cast.i.i8.i.i.i.i = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i.i9.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i7.i.i.i.i, %sub.ptr.rhs.cast.i.i8.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i.i9.i.i.i.i)
  %cmp.i110.i.i.i.i = icmp ult i32 %sub.ptr.sub.i.i9.i.i.i.i, 4
  br i1 %cmp.i110.i.i.i.i, label %skb_header_cloned.exit.thread.i.i.i.i.if.end.thread.i.i.i.i.i_crit_edge, label %skb_header_cloned.exit.thread.i.i.i.i.__vlan_insert_inner_tag.exit.thread.i.i_crit_edge

skb_header_cloned.exit.thread.i.i.i.i.__vlan_insert_inner_tag.exit.thread.i.i_crit_edge: ; preds = %skb_header_cloned.exit.thread.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__vlan_insert_inner_tag.exit.thread.i.i

skb_header_cloned.exit.thread.i.i.i.i.if.end.thread.i.i.i.i.i_crit_edge: ; preds = %skb_header_cloned.exit.thread.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.thread.i.i.i.i.i

if.end.thread.i.i.i.i.i:                          ; preds = %skb_header_cloned.exit.thread.i.i.i.i.if.end.thread.i.i.i.i.i_crit_edge, %skb_header_cloned.exit.i.i.i.i.if.end.thread.i.i.i.i.i_crit_edge
  %sub.ptr.sub.i.i12.i.i.i.i = phi i32 [ %sub.ptr.sub.i.i9.i.i.i.i, %skb_header_cloned.exit.thread.i.i.i.i.if.end.thread.i.i.i.i.i_crit_edge ], [ %sub.ptr.sub.i.i.i.i.i.i, %skb_header_cloned.exit.i.i.i.i.if.end.thread.i.i.i.i.i_crit_edge ]
  %phi.bo.i.i.i.i.i = sub nuw nsw i32 131, %sub.ptr.sub.i.i12.i.i.i.i
  %phi.bo11.i.i.i.i.i = and i32 %phi.bo.i.i.i.i.i, -128
  br label %skb_cow_head.exit.i.i.i

if.end.i2.i.i.i.i:                                ; preds = %skb_header_cloned.exit.i.i.i.i
  %and.i.i.i.i.i = and i32 %30, 65535
  %shr.i.i.i.i.i = ashr i32 %30, 16
  %sub.i.i.i.i.i = sub nsw i32 %and.i.i.i.i.i, %shr.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i.i.i)
  %cmp.i.not.i.i.i.i = icmp eq i32 %sub.i.i.i.i.i, 1
  br i1 %cmp.i.not.i.i.i.i, label %if.end.i2.i.i.i.i.__vlan_insert_inner_tag.exit.thread.i.i_crit_edge, label %if.end.i2.i.i.i.i.skb_cow_head.exit.i.i.i_crit_edge

if.end.i2.i.i.i.i.skb_cow_head.exit.i.i.i_crit_edge: ; preds = %if.end.i2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_cow_head.exit.i.i.i

if.end.i2.i.i.i.i.__vlan_insert_inner_tag.exit.thread.i.i_crit_edge: ; preds = %if.end.i2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__vlan_insert_inner_tag.exit.thread.i.i

skb_cow_head.exit.i.i.i:                          ; preds = %if.end.i2.i.i.i.i.skb_cow_head.exit.i.i.i_crit_edge, %if.end.thread.i.i.i.i.i
  %delta.010.i.i.i.i.i = phi i32 [ %phi.bo11.i.i.i.i.i, %if.end.thread.i.i.i.i.i ], [ 0, %if.end.i2.i.i.i.i.skb_cow_head.exit.i.i.i_crit_edge ]
  %call4.i.i.i.i.i = call i32 @pskb_expand_head(ptr noundef %skb.addr.0, i32 noundef %delta.010.i.i.i.i.i, i32 noundef 0, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call4.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i22, label %skb_cow_head.exit.i.i.i.__vlan_insert_inner_tag.exit.thread.i.i_crit_edge

skb_cow_head.exit.i.i.i.__vlan_insert_inner_tag.exit.thread.i.i_crit_edge: ; preds = %skb_cow_head.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__vlan_insert_inner_tag.exit.thread.i.i

__vlan_insert_inner_tag.exit.thread.i.i:          ; preds = %skb_cow_head.exit.i.i.i.__vlan_insert_inner_tag.exit.thread.i.i_crit_edge, %if.end.i2.i.i.i.i.__vlan_insert_inner_tag.exit.thread.i.i_crit_edge, %skb_header_cloned.exit.thread.i.i.i.i.__vlan_insert_inner_tag.exit.thread.i.i_crit_edge
  %call1.i.i.i = call ptr @skb_push(ptr noundef %skb.addr.0, i32 noundef 4) #10
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 19
  %37 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %38, i32 4
  %39 = call ptr @memmove(ptr %38, ptr %add.ptr.i.i.i, i32 12)
  %40 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %mac_header.i, align 2
  %sub7.i.i.i = add i16 %41, -4
  store i16 %sub7.i.i.i, ptr %mac_header.i, align 2
  %42 = load ptr, ptr %data.i.i.i, align 4
  %h_vlan_proto.i.i.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %h_vlan_proto.i.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %retval.3.i, ptr %h_vlan_proto.i.i.i, align 2
  %h_vlan_TCI.i.i.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %42, i32 0, i32 2
  %44 = ptrtoint ptr %h_vlan_TCI.i.i.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %or, ptr %h_vlan_TCI.i.i.i, align 2
  br label %cleanup

if.then.i.i22:                                    ; preds = %skb_cow_head.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__dev_kfree_skb_any(ptr noundef %skb.addr.0, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i22, %__vlan_insert_inner_tag.exit.thread.i.i, %if.end6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then.cleanup_crit_edge ], [ %skb.addr.0, %if.end6.cleanup_crit_edge ], [ null, %if.then.i.i22 ], [ %skb.addr.0, %__vlan_insert_inner_tag.exit.thread.i.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sja1105_defer_xmit(ptr noundef %dp, ptr noundef %skb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ds = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %0 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds, align 4
  %dst.i = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dst.i, align 4
  %tag_ops.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %tag_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tag_ops.i, align 4
  %proto.i = getelementptr inbounds %struct.dsa_device_ops, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %proto.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %proto.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %7, label %do.body6.i [
    i32 23, label %entry.sja1105_tagger_data.exit_crit_edge
    i32 13, label %entry.sja1105_tagger_data.exit_crit_edge2
  ]

entry.sja1105_tagger_data.exit_crit_edge2:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_tagger_data.exit

entry.sja1105_tagger_data.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_tagger_data.exit

do.body6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dsa/sja1105.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 74, 0\0A.popsection", ""() #10, !srcloc !72
  unreachable

sja1105_tagger_data.exit:                         ; preds = %entry.sja1105_tagger_data.exit_crit_edge, %entry.sja1105_tagger_data.exit_crit_edge2
  %tagger_data.i = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %tagger_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tagger_data.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %xmit_worker4 = getelementptr inbounds %struct.sja1105_tagger_private, ptr %10, i32 0, i32 4
  %13 = ptrtoint ptr %xmit_worker4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xmit_worker4, align 4
  %tobool.not = icmp eq ptr %12, null
  %tobool5.not = icmp eq ptr %14, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %sja1105_tagger_data.exit.cleanup_crit_edge, label %if.end

sja1105_tagger_data.exit.cleanup_crit_edge:       ; preds = %sja1105_tagger_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %sja1105_tagger_data.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 2848, i32 noundef 28) #14
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.end
  %work = getelementptr inbounds %struct.sja1105_deferred_xmit_work, ptr %call7.i.i, i32 0, i32 2
  %16 = getelementptr inbounds %struct.sja1105_deferred_xmit_work, ptr %call7.i.i, i32 0, i32 2, i32 1
  %17 = call ptr @memset(ptr %16, i32 0, i32 12)
  %18 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %work, ptr %work, align 8
  %prev.i = getelementptr inbounds %struct.sja1105_deferred_xmit_work, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %work, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.sja1105_deferred_xmit_work, ptr %call7.i.i, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %12, ptr %func, align 8
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dp, ptr %call7.i.i, align 8
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #10
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #10, !srcloc !70
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %do.body.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !71

do.body.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %do.body
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %23 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %.not.i.i.i.i = icmp sgt i32 %23, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.skb_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !69

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.skb_get.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %do.body.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %do.body.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i, i32 noundef %.sink.i.i.i.i) #10
  br label %skb_get.exit

skb_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.skb_get.exit_crit_edge
  %skb14 = getelementptr inbounds %struct.sja1105_deferred_xmit_work, ptr %call7.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %skb14 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %skb, ptr %skb14, align 4
  %call16 = tail call zeroext i1 @kthread_queue_work(ptr noundef nonnull %14, ptr noundef %work) #10
  br label %cleanup

cleanup:                                          ; preds = %skb_get.exit, %if.end.cleanup_crit_edge, %sja1105_tagger_data.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dsa_8021q_xmit(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @br_vlan_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @dsa_8021q_bridge_tx_fwd_offload_vid(i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__vlan_hwaccel_push_inside(ptr noundef %skb) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %vlan_proto = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 9
  %0 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vlan_proto, align 8
  %vlan_tci = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %2 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vlan_tci, align 2
  %cloned.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %4 = ptrtoint ptr %cloned.i.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i.i.i.i.i.i = load i8, ptr %cloned.i.i.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp sgt i8 %bf.load.i.i.i.i.i.i, -1
  br i1 %tobool.not.i.i.i.i.i.i, label %skb_header_cloned.exit.thread.i.i.i.i.i, label %skb_header_cloned.exit.i.i.i.i.i

skb_header_cloned.exit.i.i.i.i.i:                 ; preds = %entry
  %end.i.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %5 = ptrtoint ptr %end.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %end.i.i.i.i.i.i.i, align 4
  %dataref1.i.i.i.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %6, i32 0, i32 10
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i.i.i.i, i32 noundef 4) #10
  %7 = ptrtoint ptr %dataref1.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %dataref1.i.i.i.i.i.i, align 4
  %data.i.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i.i.i.i.i.i, align 4
  %head.i.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %11 = ptrtoint ptr %head.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i.i.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i.i.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i.i.i.i.i.i.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i.i.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i.i.i.i.i.i.i)
  %cmp.i1.i.i.i.i.i = icmp ult i32 %sub.ptr.sub.i.i.i.i.i.i.i, 4
  br i1 %cmp.i1.i.i.i.i.i, label %skb_header_cloned.exit.i.i.i.i.i.if.end.thread.i.i.i.i.i.i_crit_edge, label %if.end.i2.i.i.i.i.i

skb_header_cloned.exit.i.i.i.i.i.if.end.thread.i.i.i.i.i.i_crit_edge: ; preds = %skb_header_cloned.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.thread.i.i.i.i.i.i

skb_header_cloned.exit.thread.i.i.i.i.i:          ; preds = %entry
  %data.i.i5.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %13 = ptrtoint ptr %data.i.i5.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i5.i.i.i.i.i, align 4
  %head.i.i6.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %15 = ptrtoint ptr %head.i.i6.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head.i.i6.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i7.i.i.i.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.rhs.cast.i.i8.i.i.i.i.i = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i.i9.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i7.i.i.i.i.i, %sub.ptr.rhs.cast.i.i8.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i.i9.i.i.i.i.i)
  %cmp.i110.i.i.i.i.i = icmp ult i32 %sub.ptr.sub.i.i9.i.i.i.i.i, 4
  br i1 %cmp.i110.i.i.i.i.i, label %skb_header_cloned.exit.thread.i.i.i.i.i.if.end.thread.i.i.i.i.i.i_crit_edge, label %skb_header_cloned.exit.thread.i.i.i.i.i.vlan_insert_tag.exit.i_crit_edge

skb_header_cloned.exit.thread.i.i.i.i.i.vlan_insert_tag.exit.i_crit_edge: ; preds = %skb_header_cloned.exit.thread.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vlan_insert_tag.exit.i

skb_header_cloned.exit.thread.i.i.i.i.i.if.end.thread.i.i.i.i.i.i_crit_edge: ; preds = %skb_header_cloned.exit.thread.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.thread.i.i.i.i.i.i

if.end.thread.i.i.i.i.i.i:                        ; preds = %skb_header_cloned.exit.thread.i.i.i.i.i.if.end.thread.i.i.i.i.i.i_crit_edge, %skb_header_cloned.exit.i.i.i.i.i.if.end.thread.i.i.i.i.i.i_crit_edge
  %sub.ptr.sub.i.i12.i.i.i.i.i = phi i32 [ %sub.ptr.sub.i.i9.i.i.i.i.i, %skb_header_cloned.exit.thread.i.i.i.i.i.if.end.thread.i.i.i.i.i.i_crit_edge ], [ %sub.ptr.sub.i.i.i.i.i.i.i, %skb_header_cloned.exit.i.i.i.i.i.if.end.thread.i.i.i.i.i.i_crit_edge ]
  %phi.bo.i.i.i.i.i.i = sub nuw nsw i32 131, %sub.ptr.sub.i.i12.i.i.i.i.i
  %phi.bo11.i.i.i.i.i.i = and i32 %phi.bo.i.i.i.i.i.i, -128
  br label %skb_cow_head.exit.i.i.i.i

if.end.i2.i.i.i.i.i:                              ; preds = %skb_header_cloned.exit.i.i.i.i.i
  %and.i.i.i.i.i.i = and i32 %8, 65535
  %shr.i.i.i.i.i.i = ashr i32 %8, 16
  %sub.i.i.i.i.i.i = sub nsw i32 %and.i.i.i.i.i.i, %shr.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i.i.i.i)
  %cmp.i.not.i.i.i.i.i = icmp eq i32 %sub.i.i.i.i.i.i, 1
  br i1 %cmp.i.not.i.i.i.i.i, label %if.end.i2.i.i.i.i.i.vlan_insert_tag.exit.i_crit_edge, label %if.end.i2.i.i.i.i.i.skb_cow_head.exit.i.i.i.i_crit_edge

if.end.i2.i.i.i.i.i.skb_cow_head.exit.i.i.i.i_crit_edge: ; preds = %if.end.i2.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_cow_head.exit.i.i.i.i

if.end.i2.i.i.i.i.i.vlan_insert_tag.exit.i_crit_edge: ; preds = %if.end.i2.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vlan_insert_tag.exit.i

skb_cow_head.exit.i.i.i.i:                        ; preds = %if.end.i2.i.i.i.i.i.skb_cow_head.exit.i.i.i.i_crit_edge, %if.end.thread.i.i.i.i.i.i
  %delta.010.i.i.i.i.i.i = phi i32 [ %phi.bo11.i.i.i.i.i.i, %if.end.thread.i.i.i.i.i.i ], [ 0, %if.end.i2.i.i.i.i.i.skb_cow_head.exit.i.i.i.i_crit_edge ]
  %call4.i.i.i.i.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %delta.010.i.i.i.i.i.i, i32 noundef 0, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call4.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %vlan_insert_tag.exit.thread.i, label %skb_cow_head.exit.i.i.i.i.vlan_insert_tag.exit.i_crit_edge

skb_cow_head.exit.i.i.i.i.vlan_insert_tag.exit.i_crit_edge: ; preds = %skb_cow_head.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vlan_insert_tag.exit.i

vlan_insert_tag.exit.thread.i:                    ; preds = %skb_cow_head.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #10
  br label %if.end

vlan_insert_tag.exit.i:                           ; preds = %skb_cow_head.exit.i.i.i.i.vlan_insert_tag.exit.i_crit_edge, %if.end.i2.i.i.i.i.i.vlan_insert_tag.exit.i_crit_edge, %skb_header_cloned.exit.thread.i.i.i.i.i.vlan_insert_tag.exit.i_crit_edge
  %call1.i.i.i.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 4) #10
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %17 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %18, i32 4
  %19 = call ptr @memmove(ptr %18, ptr %add.ptr.i.i.i.i, i32 12)
  %mac_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %20 = ptrtoint ptr %mac_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %mac_header.i.i.i.i, align 2
  %sub7.i.i.i.i = add i16 %21, -4
  store i16 %sub7.i.i.i.i, ptr %mac_header.i.i.i.i, align 2
  %22 = load ptr, ptr %data.i.i.i.i, align 4
  %h_vlan_proto.i.i.i.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %h_vlan_proto.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %1, ptr %h_vlan_proto.i.i.i.i, align 2
  %h_vlan_TCI.i.i.i.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %22, i32 0, i32 2
  %24 = ptrtoint ptr %h_vlan_TCI.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %3, ptr %h_vlan_TCI.i.i.i.i, align 2
  %tobool.not.i = icmp eq ptr %skb, null
  br i1 %tobool.not.i, label %vlan_insert_tag.exit.i.if.end_crit_edge, label %if.then

vlan_insert_tag.exit.i.if.end_crit_edge:          ; preds = %vlan_insert_tag.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %vlan_insert_tag.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %25 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %1, ptr %protocol.i, align 8
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %26 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  %bf.clear.i = and i32 %bf.load.i, 2147483647
  store i32 %bf.clear.i, ptr %vlan_present.i, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %vlan_insert_tag.exit.i.if.end_crit_edge, %vlan_insert_tag.exit.thread.i
  %retval.0.i.i7.i10 = phi ptr [ %skb, %if.then ], [ null, %vlan_insert_tag.exit.thread.i ], [ null, %vlan_insert_tag.exit.i.if.end_crit_edge ]
  ret ptr %retval.0.i.i7.i10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_vlan_get_proto(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vid_is_dsa_8021q_rxvlan(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_8021q_rcv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @packing(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_vlan_get_info_rcu(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_worker(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @sja1105_rxtstamp_get_state(ptr nocapture noundef readonly %ds) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tagger_data.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 6
  %0 = ptrtoint ptr %tagger_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tagger_data.i, align 4
  %state = getelementptr inbounds %struct.sja1105_tagger_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool = icmp ne i32 %and1.i, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1105_rxtstamp_set_state(ptr nocapture noundef readonly %ds, i1 noundef zeroext %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tagger_data.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 6
  %0 = ptrtoint ptr %tagger_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tagger_data.i, align 4
  %state = getelementptr inbounds %struct.sja1105_tagger_private, ptr %1, i32 0, i32 1
  br i1 %on, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %stampable_skb = getelementptr inbounds %struct.sja1105_tagger_private, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %stampable_skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stampable_skb, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %3, i32 noundef 0) #10
  %4 = ptrtoint ptr %stampable_skb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %stampable_skb, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_destroy_worker(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sja1110_xmit(ptr noundef %skb, ptr noundef %netdev) #2 align 64 {
entry:
  %proto.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 8
  %dp.i = getelementptr i8, ptr %netdev, i32 2312
  %2 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dp.i, align 4
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %4 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %queue_mapping.i, align 8
  %conv = zext i16 %5 to i32
  %call3 = tail call i32 @netdev_txq_to_tc(ptr noundef %netdev, i32 noundef %conv) #10
  %conv4 = trunc i32 %call3 to i8
  %call5 = tail call zeroext i16 @dsa_tag_8021q_tx_vid(ptr noundef %3) #10
  %offload_fwd_mark = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %6 = ptrtoint ptr %offload_fwd_mark to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %bf.load = load i32, ptr %offload_fwd_mark, align 2
  %7 = and i32 %bf.load, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call fastcc ptr @sja1105_imprecise_xmit(ptr noundef %skb, ptr noundef %netdev)
  br label %cleanup

if.end:                                           ; preds = %entry
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %8 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i.i.i, align 8
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %10 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %11 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 %conv.i.i.i
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %h_proto.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %13)
  %cmp.i = icmp eq i16 %13, 8
  br i1 %cmp.i, label %if.end.if.then11_crit_edge, label %sja1105_is_link_local.exit

if.end.if.then11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

sja1105_is_link_local.exit:                       ; preds = %if.end
  %14 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr.i.i.i, align 1
  %conv.i.i = zext i8 %15 to i24
  %16 = shl nuw i24 %conv.i.i, 16
  %arrayidx.1.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 1
  %17 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.1.i.i, align 1
  %conv.1.i.i = zext i8 %18 to i24
  %19 = shl nuw nsw i24 %conv.1.i.i, 8
  %shl.2.i.i = or i24 %19, %16
  %arrayidx.2.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 2
  %20 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.2.i.i, align 1
  %conv.2.i.i = zext i8 %21 to i24
  %or.2.i.i = or i24 %shl.2.i.i, %conv.2.i.i
  %22 = zext i24 %or.2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.24)
  switch i24 %or.2.i.i, label %sja1105_is_link_local.exit.if.then11_crit_edge [
    i24 98498, label %sja1105_is_link_local.exit.if.end17_crit_edge
    i24 72473, label %sja1105_is_link_local.exit.if.end17_crit_edge91
  ]

sja1105_is_link_local.exit.if.end17_crit_edge91:  ; preds = %sja1105_is_link_local.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

sja1105_is_link_local.exit.if.end17_crit_edge:    ; preds = %sja1105_is_link_local.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

sja1105_is_link_local.exit.if.then11_crit_edge:   ; preds = %sja1105_is_link_local.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

if.then11:                                        ; preds = %sja1105_is_link_local.exit.if.then11_crit_edge, %if.end.if.then11_crit_edge
  %ds1.i = getelementptr inbounds %struct.dsa_port, ptr %3, i32 0, i32 4
  %23 = ptrtoint ptr %ds1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ds1.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %proto.i) #10
  %25 = ptrtoint ptr %proto.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -1, ptr %proto.i, align 2, !annotation !68
  %vlan_filtering_is_global.i.i = getelementptr inbounds %struct.dsa_switch, ptr %24, i32 0, i32 3
  %26 = ptrtoint ptr %vlan_filtering_is_global.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load.i.i = load i16, ptr %vlan_filtering_is_global.i.i, align 4
  %27 = and i16 %bf.load.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool.not.i.i = icmp eq i16 %27, 0
  br i1 %tobool.not.i.i, label %dsa_port_is_vlan_filtering.exit.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then11
  %28 = and i16 %bf.load.i.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool6.i.not.i = icmp eq i16 %28, 0
  br i1 %tobool6.i.not.i, label %if.then.i.i.sja1105_xmit_tpid.exit_crit_edge, label %if.then.i.i.if.end.i87_crit_edge

if.then.i.i.if.end.i87_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i87

if.then.i.i.sja1105_xmit_tpid.exit_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_xmit_tpid.exit

dsa_port_is_vlan_filtering.exit.i:                ; preds = %if.then11
  %vlan_filtering7.i.i = getelementptr inbounds %struct.dsa_port, ptr %3, i32 0, i32 11
  %29 = ptrtoint ptr %vlan_filtering7.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load8.i.i = load i8, ptr %vlan_filtering7.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load8.i.i)
  %tobool10.i.i = icmp slt i8 %bf.load8.i.i, 0
  br i1 %tobool10.i.i, label %dsa_port_is_vlan_filtering.exit.i.if.end.i87_crit_edge, label %dsa_port_is_vlan_filtering.exit.i.sja1105_xmit_tpid.exit_crit_edge

dsa_port_is_vlan_filtering.exit.i.sja1105_xmit_tpid.exit_crit_edge: ; preds = %dsa_port_is_vlan_filtering.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_xmit_tpid.exit

dsa_port_is_vlan_filtering.exit.i.if.end.i87_crit_edge: ; preds = %dsa_port_is_vlan_filtering.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i87

if.end.i87:                                       ; preds = %dsa_port_is_vlan_filtering.exit.i.if.end.i87_crit_edge, %if.then.i.i.if.end.i87_crit_edge
  %dst.i = getelementptr inbounds %struct.dsa_switch, ptr %24, i32 0, i32 1
  %30 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dst.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn73.i = load ptr, ptr %ports.i, align 4
  %cmp.not74.i = icmp eq ptr %.pn73.i, %ports.i
  br i1 %cmp.not74.i, label %if.end.i87.land.end.i_crit_edge, label %if.end.i87.for.body.i_crit_edge

if.end.i87.for.body.i_crit_edge:                  ; preds = %if.end.i87
  br label %for.body.i

if.end.i87.land.end.i_crit_edge:                  ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i87.for.body.i_crit_edge
  %.pn75.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn73.i, %if.end.i87.for.body.i_crit_edge ]
  %ds4.i = getelementptr i8, ptr %.pn75.i, i32 -432
  %33 = ptrtoint ptr %ds4.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ds4.i, align 4
  %cmp5.i = icmp eq ptr %34, %24
  br i1 %cmp5.i, label %if.then6.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then6.i:                                       ; preds = %for.body.i
  %bridge.i.i = getelementptr i8, ptr %.pn75.i, i32 -396
  %35 = ptrtoint ptr %bridge.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bridge.i.i, align 4
  %tobool.not.i67.i = icmp eq ptr %36, null
  br i1 %tobool.not.i67.i, label %if.then6.i.for.inc.i_crit_edge, label %dsa_port_bridge_dev_get.exit.i

if.then6.i.for.inc.i_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

dsa_port_bridge_dev_get.exit.i:                   ; preds = %if.then6.i
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %tobool.not.i = icmp eq ptr %38, null
  br i1 %tobool.not.i, label %dsa_port_bridge_dev_get.exit.i.for.inc.i_crit_edge, label %cleanup.i

dsa_port_bridge_dev_get.exit.i.for.inc.i_crit_edge: ; preds = %dsa_port_bridge_dev_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

cleanup.i:                                        ; preds = %dsa_port_bridge_dev_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call10.i = call i32 @br_vlan_get_proto(ptr noundef nonnull %38, ptr noundef nonnull %proto.i) #10
  %39 = ptrtoint ptr %proto.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %proto.i, align 2
  br label %sja1105_xmit_tpid.exit

for.inc.i:                                        ; preds = %dsa_port_bridge_dev_get.exit.i.for.inc.i_crit_edge, %if.then6.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %41 = ptrtoint ptr %.pn75.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pn.i = load ptr, ptr %.pn75.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.land.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.land.end.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end.i

land.end.i:                                       ; preds = %for.inc.i.land.end.i_crit_edge, %if.end.i87.land.end.i_crit_edge
  %.b66.i = load i1, ptr @sja1105_xmit_tpid.__already_done, align 1
  br i1 %.b66.i, label %land.end.i.sja1105_xmit_tpid.exit_crit_edge, label %if.then23.i, !prof !69

land.end.i.sja1105_xmit_tpid.exit_crit_edge:      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_xmit_tpid.exit

if.then23.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @sja1105_xmit_tpid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 203, i32 noundef 9, ptr noundef nonnull @.str.2) #10
  br label %sja1105_xmit_tpid.exit

sja1105_xmit_tpid.exit:                           ; preds = %if.then23.i, %land.end.i.sja1105_xmit_tpid.exit_crit_edge, %cleanup.i, %dsa_port_is_vlan_filtering.exit.i.sja1105_xmit_tpid.exit_crit_edge, %if.then.i.i.sja1105_xmit_tpid.exit_crit_edge
  %retval.3.i = phi i16 [ %40, %cleanup.i ], [ -9509, %dsa_port_is_vlan_filtering.exit.i.sja1105_xmit_tpid.exit_crit_edge ], [ -9509, %if.then23.i ], [ -9509, %land.end.i.sja1105_xmit_tpid.exit_crit_edge ], [ -9509, %if.then.i.i.sja1105_xmit_tpid.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %proto.i) #10
  %call3.tr = trunc i32 %call3 to i16
  %42 = shl i16 %call3.tr, 13
  %conv15 = or i16 %42, %call5
  %call16 = call ptr @dsa_8021q_xmit(ptr noundef %skb, ptr noundef %netdev, i16 noundef zeroext %retval.3.i, i16 noundef zeroext %conv15) #10
  br label %cleanup

if.end17:                                         ; preds = %sja1105_is_link_local.exit.if.end17_crit_edge, %sja1105_is_link_local.exit.if.end17_crit_edge91
  %call18 = tail call fastcc ptr @sja1105_pvid_tag_control_pkt(ptr noundef %3, ptr noundef %skb, i8 noundef zeroext %conv4)
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %if.end21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %call22 = tail call ptr @skb_push(ptr noundef nonnull %call18, i32 noundef 4) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call18, i32 0, i32 19
  %43 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %44, i32 4
  %45 = call ptr @memmove(ptr %44, ptr %add.ptr.i, i32 12)
  %len = getelementptr inbounds %struct.sk_buff, ptr %call18, i32 0, i32 6
  %46 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len, align 4
  %48 = load ptr, ptr %data.i, align 4
  %add.ptr.i89 = getelementptr i8, ptr %48, i32 12
  %call24 = tail call ptr @skb_put(ptr noundef nonnull %call18, i32 noundef 4) #10
  %49 = ptrtoint ptr %add.ptr.i89 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 -9508, ptr %add.ptr.i89, align 2
  %50 = trunc i32 %47 to i16
  %51 = and i16 %50, 2047
  %conv26 = or i16 %51, -30720
  %arrayidx27 = getelementptr i8, ptr %48, i32 14
  %52 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv26, ptr %arrayidx27, align 2
  %conv28 = shl i32 %call3, 21
  %and30 = and i32 %conv28, 14680064
  %ds = getelementptr inbounds %struct.dsa_port, ptr %3, i32 0, i32 4
  %53 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ds, align 4
  %index = getelementptr inbounds %struct.dsa_switch, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %index, align 4
  %shl31 = shl i32 %56, 12
  %and32 = and i32 %shl31, 61440
  %or33 = or i32 %and32, %and30
  %index34 = getelementptr inbounds %struct.dsa_port, ptr %3, i32 0, i32 5
  %57 = ptrtoint ptr %index34 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %index34, align 4
  %shl36 = shl i32 2, %58
  %and37 = and i32 %shl36, 4094
  %or38 = or i32 %or33, %and37
  %59 = ptrtoint ptr %call24 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %or38, ptr %call24, align 4
  %tobool39.not = icmp eq ptr %1, null
  br i1 %tobool39.not, label %if.end21.cleanup_crit_edge, label %if.then40

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then40:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %ts_id43 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 16
  %60 = ptrtoint ptr %ts_id43 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %ts_id43, align 8
  %62 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx27, align 2
  %64 = or i16 %63, 8192
  store i16 %64, ptr %arrayidx27, align 2
  %conv48 = zext i8 %61 to i32
  %shl49 = shl nuw i32 %conv48, 24
  %65 = ptrtoint ptr %call24 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %call24, align 4
  %or51 = or i32 %66, %shl49
  store i32 %or51, ptr %call24, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %if.end21.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %sja1105_xmit_tpid.exit, %if.then
  %retval.0 = phi ptr [ %call6, %if.then ], [ %call16, %sja1105_xmit_tpid.exit ], [ null, %if.end17.cleanup_crit_edge ], [ %call18, %if.then40 ], [ %call18, %if.end21.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sja1110_rcv(ptr noundef %skb, ptr noundef %netdev) #2 align 64 {
entry:
  %vinfo.i = alloca %struct.bridge_vlan_info, align 2
  %source_port = alloca i32, align 4
  %switch_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %source_port) #10
  %0 = ptrtoint ptr %source_port to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %source_port, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %switch_id) #10
  %1 = ptrtoint ptr %switch_id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %switch_id, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i.i, align 8
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %4 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %5 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 %conv.i.i.i
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %h_proto.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -9508, i16 %7)
  %cmp.i = icmp eq i16 %7, -9508
  br i1 %cmp.i, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then:                                          ; preds = %entry
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %9, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i.i.i)
  %cmp.i.i = icmp ugt i32 %sub.i.i.i, 3
  br i1 %cmp.i.i, label %if.then.if.end.i_crit_edge, label %if.end.i.i, !prof !69

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp3.i.i = icmp ult i32 %9, 4
  br i1 %cmp3.i.i, label %if.end.i.i.cleanup_crit_edge, label %pskb_may_pull.exit.i, !prof !71

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

pskb_may_pull.exit.i:                             ; preds = %if.end.i.i
  %sub.i.i = sub nuw nsw i32 4, %sub.i.i.i
  %call13.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #10
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.cleanup_crit_edge, label %pskb_may_pull.exit.i.if.end.i_crit_edge, !prof !71

pskb_may_pull.exit.i.if.end.i_crit_edge:          ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

pskb_may_pull.exit.i.cleanup_crit_edge:           ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %pskb_may_pull.exit.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %13, align 2
  %conv.i = zext i16 %15 to i32
  %and.i = lshr i16 %15, 13
  %16 = trunc i16 %and.i to i8
  %17 = and i8 %16, 1
  %and7.i = and i32 %conv.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end11.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end.i
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 2
  %and.i.i = and i32 %conv.i, 15
  %and2.i.i = lshr i32 %conv.i, 4
  %shr.i.i = and i32 %and2.i.i, 31
  %18 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %dsa_ptr.i.i = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 75
  %21 = ptrtoint ptr %dsa_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dsa_ptr.i.i, align 4
  %dst.i.i = getelementptr inbounds %struct.dsa_port, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dst.i.i, align 4
  %index.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %index.i.i, align 4
  %call3.i.i = tail call ptr @dsa_switch_find(i32 noundef %26, i32 noundef %and.i.i) #10
  %tobool.not.i.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.end11.i52.i

do.body.i.i:                                      ; preds = %if.then9.i
  %call4.i.i = tail call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %do.body.i.i.cleanup_crit_edge, label %do.end.i.i

do.body.i.i.cleanup_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call8.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %20, i32 noundef %and.i.i) #13
  br label %cleanup

if.end11.i52.i:                                   ; preds = %if.then9.i
  %dst.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %call3.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %dst.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dst.i.i.i, align 4
  %tag_ops.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %tag_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tag_ops.i.i.i, align 4
  %proto.i.i.i = getelementptr inbounds %struct.dsa_device_ops, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %proto.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %proto.i.i.i, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %32, label %do.body6.i.i.i [
    i32 23, label %if.end11.i52.i.sja1105_tagger_data.exit.i.i_crit_edge
    i32 13, label %if.end11.i52.i.sja1105_tagger_data.exit.i.i_crit_edge72
  ]

if.end11.i52.i.sja1105_tagger_data.exit.i.i_crit_edge72: ; preds = %if.end11.i52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_tagger_data.exit.i.i

if.end11.i52.i.sja1105_tagger_data.exit.i.i_crit_edge: ; preds = %if.end11.i52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_tagger_data.exit.i.i

do.body6.i.i.i:                                   ; preds = %if.end11.i52.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dsa/sja1105.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 74, 0\0A.popsection", ""() #10, !srcloc !72
  unreachable

sja1105_tagger_data.exit.i.i:                     ; preds = %if.end11.i52.i.sja1105_tagger_data.exit.i.i_crit_edge, %if.end11.i52.i.sja1105_tagger_data.exit.i.i_crit_edge72
  %tagger_data.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %call3.i.i, i32 0, i32 6
  %34 = ptrtoint ptr %tagger_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tagger_data.i.i.i, align 4
  %meta_tstamp_handler.i.i = getelementptr inbounds %struct.sja1105_tagger_data, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %meta_tstamp_handler.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %meta_tstamp_handler.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %37, null
  br i1 %tobool13.not.i.i, label %sja1105_tagger_data.exit.i.i.cleanup_crit_edge, label %sja1105_tagger_data.exit.i.i.for.body.i.i_crit_edge

sja1105_tagger_data.exit.i.i.for.body.i.i_crit_edge: ; preds = %sja1105_tagger_data.exit.i.i
  br label %for.body.i.i

sja1105_tagger_data.exit.i.i.cleanup_crit_edge:   ; preds = %sja1105_tagger_data.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %sja1105_tagger_data.exit.i.i.for.body.i.i_crit_edge
  %buf.02.i.i = phi ptr [ %add.ptr31.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %sja1105_tagger_data.exit.i.i.for.body.i.i_crit_edge ]
  %i.01.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %sja1105_tagger_data.exit.i.i.for.body.i.i_crit_edge ]
  %38 = ptrtoint ptr %buf.02.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %buf.02.i.i, align 1
  %arrayidx17.i.i = getelementptr i8, ptr %buf.02.i.i, i32 1
  %40 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx17.i.i, align 1
  %shr20.i.i = lshr i8 %41, 4
  %42 = lshr i8 %41, 3
  %43 = and i8 %42, 1
  %add.ptr27.i.i = getelementptr i8, ptr %buf.02.i.i, i32 2
  %44 = ptrtoint ptr %add.ptr27.i.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %add.ptr27.i.i, align 8
  %46 = ptrtoint ptr %meta_tstamp_handler.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %meta_tstamp_handler.i.i, align 4
  %conv29.i.i = zext i8 %shr20.i.i to i32
  %conv30.i.i = zext i8 %43 to i32
  tail call void %47(ptr noundef nonnull %call3.i.i, i32 noundef %conv29.i.i, i8 noundef zeroext %39, i32 noundef %conv30.i.i, i64 noundef %45) #10
  %add.ptr31.i.i = getelementptr i8, ptr %buf.02.i.i, i32 10
  %inc.i.i = add nuw nsw i32 %i.01.i.i, 1
  %exitcond.i.i = icmp eq i32 %i.01.i.i, %shr.i.i
  br i1 %exitcond.i.i, label %for.body.i.i.cleanup_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i.cleanup_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11.i:                                       ; preds = %if.end.i
  %and13.i = and i32 %conv.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.else.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end11.i
  %and17.i = and i32 %conv.i, 4095
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %48 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %49, i32 -13
  %tstamp19.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %arrayidx.i = getelementptr i8, ptr %49, i32 -1
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i, align 1
  %call20.i = tail call i32 @packing(ptr noundef %add.ptr.i, ptr noundef %tstamp19.i, i32 noundef 63, i32 noundef 0, i32 noundef 8, i32 noundef 1, i8 noundef zeroext 0) #10
  %conv21.i = zext i8 %51 to i32
  %and22.i = and i32 %conv21.i, 15
  %52 = ptrtoint ptr %source_port to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %and22.i, ptr %source_port, align 4
  %shr.i = lshr i32 %conv21.i, 4
  %53 = ptrtoint ptr %switch_id to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %shr.i, ptr %switch_id, align 4
  %sub.i = add nsw i32 %and17.i, -14
  %54 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %sub.i)
  %cmp.not.i.i = icmp ugt i32 %55, %sub.i
  br i1 %cmp.not.i.i, label %if.end.i53.i, label %if.then15.i.sja1110_rcv_inband_control_extension.exit_crit_edge, !prof !71

if.then15.i.sja1110_rcv_inband_control_extension.exit_crit_edge: ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1110_rcv_inband_control_extension.exit

if.end.i53.i:                                     ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 @pskb_trim_rcsum_slow(ptr noundef %skb, i32 noundef %sub.i) #10
  br label %sja1110_rcv_inband_control_extension.exit

if.else.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %and27.i = lshr i32 %conv.i, 4
  %shr28.i = and i32 %and27.i, 15
  %56 = ptrtoint ptr %source_port to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %shr28.i, ptr %source_port, align 4
  %and30.i = and i32 %conv.i, 15
  %57 = ptrtoint ptr %switch_id to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %and30.i, ptr %switch_id, align 4
  br label %sja1110_rcv_inband_control_extension.exit

sja1110_rcv_inband_control_extension.exit:        ; preds = %if.else.i, %if.end.i53.i, %if.then15.i.sja1110_rcv_inband_control_extension.exit_crit_edge
  %call32.i = tail call ptr @skb_pull_rcsum(ptr noundef %skb, i32 noundef 4) #10
  %58 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i, align 4
  %add.ptr.i54.i = getelementptr i8, ptr %59, i32 -14
  %add.ptr3.i.i = getelementptr i8, ptr %59, i32 -18
  %60 = call ptr @memmove(ptr %add.ptr.i54.i, ptr %add.ptr3.i.i, i32 12)
  %61 = load ptr, ptr %data.i, align 4
  %62 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %61 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %63 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i36 = trunc i32 %sub.ptr.sub.i.i.i to i16
  %add.i.i = add i16 %conv.i.i.i36, -14
  %64 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %add.i.i, ptr %mac_header.i.i.i, align 2
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %sja1110_rcv_inband_control_extension.exit.cleanup_crit_edge, label %sja1110_rcv_inband_control_extension.exit.if.end3_crit_edge

sja1110_rcv_inband_control_extension.exit.if.end3_crit_edge: ; preds = %sja1110_rcv_inband_control_extension.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

sja1110_rcv_inband_control_extension.exit.cleanup_crit_edge: ; preds = %sja1110_rcv_inband_control_extension.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %sja1110_rcv_inband_control_extension.exit.if.end3_crit_edge, %entry.if.end3_crit_edge
  %host_only.2 = phi i8 [ %17, %sja1110_rcv_inband_control_extension.exit.if.end3_crit_edge ], [ 0, %entry.if.end3_crit_edge ]
  %65 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %head.i.i.i, align 8
  %67 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i40 = zext i16 %68 to i32
  %add.ptr.i.i.i41 = getelementptr i8, ptr %66, i32 %conv.i.i.i40
  %h_proto.i42 = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i41, i32 0, i32 2
  %69 = ptrtoint ptr %h_proto.i42 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 2)
  %70 = load i16, ptr %h_proto.i42, align 1
  %71 = zext i16 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.26)
  switch i16 %70, label %sja1105_skb_has_tag_8021q.exit [
    i16 -9509, label %if.end3.if.then7_crit_edge
    i16 -32512, label %if.end3.if.then7_crit_edge73
  ]

if.end3.if.then7_crit_edge73:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

if.end3.if.then7_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

sja1105_skb_has_tag_8021q.exit:                   ; preds = %if.end3
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %72 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load.i)
  %tobool.i = icmp slt i32 %bf.load.i, 0
  br i1 %tobool.i, label %sja1105_skb_has_tag_8021q.exit.if.then7_crit_edge, label %sja1105_skb_has_tag_8021q.exit.if.end8_crit_edge, !prof !69

sja1105_skb_has_tag_8021q.exit.if.end8_crit_edge: ; preds = %sja1105_skb_has_tag_8021q.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

sja1105_skb_has_tag_8021q.exit.if.then7_crit_edge: ; preds = %sja1105_skb_has_tag_8021q.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

if.then7:                                         ; preds = %sja1105_skb_has_tag_8021q.exit.if.then7_crit_edge, %if.end3.if.then7_crit_edge, %if.end3.if.then7_crit_edge73
  %vlan_present.i44 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %73 = ptrtoint ptr %vlan_present.i44 to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %bf.load.i45 = load i32, ptr %vlan_present.i44, align 2
  %vlan_tci1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %h_vlan_TCI.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %add.ptr.i.i.i41, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load.i45)
  %tobool.not14.i = icmp slt i32 %bf.load.i45, 0
  %vlan_tci.0.in.i = select i1 %tobool.not14.i, ptr %vlan_tci1.i, ptr %h_vlan_TCI.i
  %74 = ptrtoint ptr %vlan_tci.0.in.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %vlan_tci.0.i = load i16, ptr %vlan_tci.0.in.i, align 2
  %75 = and i16 %vlan_tci.0.i, 4095
  %call3.i = tail call zeroext i1 @vid_is_dsa_8021q_rxvlan(i16 noundef zeroext %75) #10
  br i1 %call3.i, label %if.then4.i46, label %if.then7.if.end8_crit_edge

if.then7.if.end8_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then4.i46:                                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  call void @dsa_8021q_rcv(ptr noundef %skb, ptr noundef nonnull %source_port, ptr noundef nonnull %switch_id) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then4.i46, %if.then7.if.end8_crit_edge, %sja1105_skb_has_tag_8021q.exit.if.end8_crit_edge
  %vid.1 = phi i16 [ 0, %sja1105_skb_has_tag_8021q.exit.if.end8_crit_edge ], [ 0, %if.then4.i46 ], [ %75, %if.then7.if.end8_crit_edge ]
  %76 = ptrtoint ptr %source_port to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %source_port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %77)
  %cmp = icmp eq i32 %77, -1
  br i1 %cmp, label %if.end8.if.then10_crit_edge, label %lor.lhs.false

if.end8.if.then10_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

lor.lhs.false:                                    ; preds = %if.end8
  %78 = ptrtoint ptr %switch_id to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %switch_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %79)
  %cmp9 = icmp eq i32 %79, -1
  br i1 %cmp9, label %lor.lhs.false.if.then10_crit_edge, label %if.else

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

if.then10:                                        ; preds = %lor.lhs.false.if.then10_crit_edge, %if.end8.if.then10_crit_edge
  %dsa_ptr.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 75
  %80 = ptrtoint ptr %dsa_ptr.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dsa_ptr.i, align 4
  %dst1.i = getelementptr inbounds %struct.dsa_port, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dst1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vinfo.i) #10
  %84 = ptrtoint ptr %vinfo.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 -1, ptr %vinfo.i, align 2, !annotation !68
  %85 = getelementptr inbounds %struct.bridge_vlan_info, ptr %vinfo.i, i32 0, i32 1
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 -1, ptr %85, align 2, !annotation !68
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %83, i32 0, i32 1
  %87 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %.pn42.i = load ptr, ptr %ports.i, align 4
  %cmp.not44.i = icmp eq ptr %.pn42.i, %ports.i
  br i1 %cmp.not44.i, label %if.then10.dsa_find_designated_bridge_port_by_vid.exit_crit_edge, label %if.then10.for.body.i_crit_edge

if.then10.for.body.i_crit_edge:                   ; preds = %if.then10
  br label %for.body.i

if.then10.dsa_find_designated_bridge_port_by_vid.exit_crit_edge: ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_find_designated_bridge_port_by_vid.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then10.for.body.i_crit_edge
  %.pn45.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn42.i, %if.then10.for.body.i_crit_edge ]
  %dp.046.i = getelementptr i8, ptr %.pn45.i, i32 -448
  %type.i = getelementptr i8, ptr %.pn45.i, i32 -424
  %88 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %89)
  %cmp3.not.i = icmp eq i32 %89, 3
  br i1 %cmp3.not.i, label %if.end.i48, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i48:                                       ; preds = %for.body.i
  %bridge.i = getelementptr i8, ptr %.pn45.i, i32 -396
  %90 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %bridge.i, align 4
  %tobool.not.i = icmp eq ptr %91, null
  br i1 %tobool.not.i, label %if.end.i48.for.inc.i_crit_edge, label %if.end5.i49

if.end.i48.for.inc.i_crit_edge:                   ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end5.i49:                                      ; preds = %if.end.i48
  %stp_state.i = getelementptr i8, ptr %.pn45.i, i32 -406
  %92 = ptrtoint ptr %stp_state.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %stp_state.i, align 2
  %94 = and i8 %93, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %94)
  %switch.i = icmp eq i8 %94, 2
  br i1 %switch.i, label %if.end13.i, label %if.end5.i49.for.inc.i_crit_edge

if.end5.i49.for.inc.i_crit_edge:                  ; preds = %if.end5.i49
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end13.i:                                       ; preds = %if.end5.i49
  %cpu_dp14.i = getelementptr i8, ptr %.pn45.i, i32 -416
  %95 = ptrtoint ptr %cpu_dp14.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cpu_dp14.i, align 4
  %cmp15.not.i = icmp eq ptr %96, %81
  br i1 %cmp15.not.i, label %if.end18.i, label %if.end13.i.for.inc.i_crit_edge

if.end13.i.for.inc.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end18.i:                                       ; preds = %if.end13.i
  %97 = ptrtoint ptr %dp.046.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dp.046.i, align 4
  %call.i = call i32 @br_vlan_get_info_rcu(ptr noundef %98, i16 noundef zeroext %vid.1, ptr noundef nonnull %vinfo.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool19.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool19.not.i, label %if.end18.i.dsa_find_designated_bridge_port_by_vid.exit_crit_edge, label %if.end18.i.for.inc.i_crit_edge

if.end18.i.for.inc.i_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end18.i.dsa_find_designated_bridge_port_by_vid.exit_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_find_designated_bridge_port_by_vid.exit

for.inc.i:                                        ; preds = %if.end18.i.for.inc.i_crit_edge, %if.end13.i.for.inc.i_crit_edge, %if.end5.i49.for.inc.i_crit_edge, %if.end.i48.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %99 = ptrtoint ptr %.pn45.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %.pn.i = load ptr, ptr %.pn45.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.dsa_find_designated_bridge_port_by_vid.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.dsa_find_designated_bridge_port_by_vid.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dsa_find_designated_bridge_port_by_vid.exit

dsa_find_designated_bridge_port_by_vid.exit:      ; preds = %for.inc.i.dsa_find_designated_bridge_port_by_vid.exit_crit_edge, %if.end18.i.dsa_find_designated_bridge_port_by_vid.exit_crit_edge, %if.then10.dsa_find_designated_bridge_port_by_vid.exit_crit_edge
  %retval.0.i50 = phi ptr [ null, %if.then10.dsa_find_designated_bridge_port_by_vid.exit_crit_edge ], [ %98, %if.end18.i.dsa_find_designated_bridge_port_by_vid.exit_crit_edge ], [ null, %for.inc.i.dsa_find_designated_bridge_port_by_vid.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vinfo.i) #10
  br label %if.end13

if.else:                                          ; preds = %lor.lhs.false
  %dsa_ptr.i51 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 75
  %100 = ptrtoint ptr %dsa_ptr.i51 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dsa_ptr.i51, align 4
  %dst1.i52 = getelementptr inbounds %struct.dsa_port, ptr %101, i32 0, i32 2
  %102 = ptrtoint ptr %dst1.i52 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dst1.i52, align 4
  %ports.i53 = getelementptr inbounds %struct.dsa_switch_tree, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %ports.i53 to i32
  call void @__asan_load4_noabort(i32 %104)
  %.pn22.i = load ptr, ptr %ports.i53, align 4
  %cmp.not23.i = icmp eq ptr %.pn22.i, %ports.i53
  br i1 %cmp.not23.i, label %if.else.if.end13_crit_edge, label %if.else.for.body.i54_crit_edge

if.else.for.body.i54_crit_edge:                   ; preds = %if.else
  br label %for.body.i54

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

for.body.i54:                                     ; preds = %for.inc.i58.for.body.i54_crit_edge, %if.else.for.body.i54_crit_edge
  %.pn24.i = phi ptr [ %.pn.i56, %for.inc.i58.for.body.i54_crit_edge ], [ %.pn22.i, %if.else.for.body.i54_crit_edge ]
  %ds.i = getelementptr i8, ptr %.pn24.i, i32 -432
  %105 = ptrtoint ptr %ds.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ds.i, align 4
  %index.i = getelementptr inbounds %struct.dsa_switch, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %79)
  %cmp3.i = icmp eq i32 %108, %79
  br i1 %cmp3.i, label %land.lhs.true.i, label %for.body.i54.for.inc.i58_crit_edge

for.body.i54.for.inc.i58_crit_edge:               ; preds = %for.body.i54
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i58

land.lhs.true.i:                                  ; preds = %for.body.i54
  %index4.i = getelementptr i8, ptr %.pn24.i, i32 -428
  %109 = ptrtoint ptr %index4.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %index4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %110, i32 %77)
  %cmp5.i = icmp eq i32 %110, %77
  br i1 %cmp5.i, label %land.lhs.true6.i, label %land.lhs.true.i.for.inc.i58_crit_edge

land.lhs.true.i.for.inc.i58_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i58

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %type.i55 = getelementptr i8, ptr %.pn24.i, i32 -424
  %111 = ptrtoint ptr %type.i55 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %type.i55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %112)
  %cmp7.i = icmp eq i32 %112, 3
  br i1 %cmp7.i, label %if.then.i, label %land.lhs.true6.i.for.inc.i58_crit_edge

land.lhs.true6.i.for.inc.i58_crit_edge:           ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i58

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #12
  %dp.0.le.i = getelementptr i8, ptr %.pn24.i, i32 -448
  %113 = ptrtoint ptr %dp.0.le.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dp.0.le.i, align 4
  br label %if.end13

for.inc.i58:                                      ; preds = %land.lhs.true6.i.for.inc.i58_crit_edge, %land.lhs.true.i.for.inc.i58_crit_edge, %for.body.i54.for.inc.i58_crit_edge
  %115 = ptrtoint ptr %.pn24.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %.pn.i56 = load ptr, ptr %.pn24.i, align 4
  %cmp.not.i57 = icmp eq ptr %.pn.i56, %ports.i53
  br i1 %cmp.not.i57, label %for.inc.i58.if.end13_crit_edge, label %for.inc.i58.for.body.i54_crit_edge

for.inc.i58.for.body.i54_crit_edge:               ; preds = %for.inc.i58
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i54

for.inc.i58.if.end13_crit_edge:                   ; preds = %for.inc.i58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.end13:                                         ; preds = %for.inc.i58.if.end13_crit_edge, %if.then.i, %if.else.if.end13_crit_edge, %dsa_find_designated_bridge_port_by_vid.exit
  %retval.0.i59.sink = phi ptr [ %retval.0.i50, %dsa_find_designated_bridge_port_by_vid.exit ], [ %114, %if.then.i ], [ null, %if.else.if.end13_crit_edge ], [ null, %for.inc.i58.if.end13_crit_edge ]
  %116 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %retval.0.i59.sink, ptr %116, align 8
  %tobool14.not = icmp eq ptr %retval.0.i59.sink, null
  br i1 %tobool14.not, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.3) #13
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %host_only.2)
  %tobool17.not = icmp eq i8 %host_only.2, 0
  br i1 %tobool17.not, label %if.then18, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %dp.i.i = getelementptr i8, ptr %retval.0.i59.sink, i32 2312
  %118 = ptrtoint ptr %dp.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dp.i.i, align 4
  %bridge.i60 = getelementptr inbounds %struct.dsa_port, ptr %119, i32 0, i32 14
  %120 = ptrtoint ptr %bridge.i60 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %bridge.i60, align 4
  %tobool.not.i61 = icmp eq ptr %121, null
  %offload_fwd_mark.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %122 = ptrtoint ptr %offload_fwd_mark.i to i32
  call void @__asan_loadN_noabort(i32 %122, i32 4)
  %bf.load.i62 = load i32, ptr %offload_fwd_mark.i, align 2
  %bf.shl.i = select i1 %tobool.not.i61, i32 0, i32 1048576
  %bf.clear.i = and i32 %bf.load.i62, -1048577
  %bf.set.i = or i32 %bf.clear.i, %bf.shl.i
  store i32 %bf.set.i, ptr %offload_fwd_mark.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end16.cleanup_crit_edge, %if.then15, %sja1110_rcv_inband_control_extension.exit.cleanup_crit_edge, %for.body.i.i.cleanup_crit_edge, %sja1105_tagger_data.exit.i.i.cleanup_crit_edge, %do.end.i.i, %do.body.i.i.cleanup_crit_edge, %pskb_may_pull.exit.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then15 ], [ null, %sja1110_rcv_inband_control_extension.exit.cleanup_crit_edge ], [ %skb, %if.then18 ], [ %skb, %if.end16.cleanup_crit_edge ], [ null, %pskb_may_pull.exit.i.cleanup_crit_edge ], [ null, %do.body.i.i.cleanup_crit_edge ], [ null, %do.end.i.i ], [ null, %sja1105_tagger_data.exit.i.i.cleanup_crit_edge ], [ null, %if.end.i.i.cleanup_crit_edge ], [ null, %for.body.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %switch_id) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %source_port) #10
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sja1110_flow_dissect(ptr nocapture noundef readonly %skb, ptr nocapture noundef writeonly %proto, ptr nocapture noundef writeonly %offset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i.i, align 8
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %2 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %3 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 %conv.i.i.i
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %h_proto.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %5)
  %cmp.i = icmp eq i16 %5, 8
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %sja1105_is_link_local.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sja1105_is_link_local.exit:                       ; preds = %entry
  %6 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr.i.i.i, align 1
  %conv.i.i = zext i8 %7 to i24
  %8 = shl nuw i24 %conv.i.i, 16
  %arrayidx.1.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.1.i.i, align 1
  %conv.1.i.i = zext i8 %10 to i24
  %11 = shl nuw nsw i24 %conv.1.i.i, 8
  %shl.2.i.i = or i24 %11, %8
  %arrayidx.2.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 2
  %12 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.2.i.i, align 1
  %conv.2.i.i = zext i8 %13 to i24
  %or.2.i.i = or i24 %shl.2.i.i, %conv.2.i.i
  %14 = zext i24 %or.2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.27)
  switch i24 %or.2.i.i, label %sja1105_is_link_local.exit.if.end_crit_edge [
    i24 98498, label %sja1105_is_link_local.exit.if.then_crit_edge
    i24 72473, label %sja1105_is_link_local.exit.if.then_crit_edge7
  ]

sja1105_is_link_local.exit.if.then_crit_edge7:    ; preds = %sja1105_is_link_local.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sja1105_is_link_local.exit.if.then_crit_edge:     ; preds = %sja1105_is_link_local.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sja1105_is_link_local.exit.if.end_crit_edge:      ; preds = %sja1105_is_link_local.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %sja1105_is_link_local.exit.if.then_crit_edge, %sja1105_is_link_local.exit.if.then_crit_edge7
  %15 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %dsa_ptr.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 75
  %18 = ptrtoint ptr %dsa_ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dsa_ptr.i, align 4
  %tag_ops.i = getelementptr inbounds %struct.dsa_port, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %tag_ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tag_ops.i, align 4
  %needed_headroom.i = getelementptr inbounds %struct.dsa_device_ops, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %needed_headroom.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %needed_headroom.i, align 4
  %24 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %offset, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i, align 4
  %div.i = sdiv i32 %23, 2
  %sub.i = add nsw i32 %div.i, -1
  %arrayidx.i = getelementptr i16, ptr %26, i32 %sub.i
  br label %return

if.end:                                           ; preds = %sja1105_is_link_local.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %27 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4, ptr %offset, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i16, ptr %29, i32 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %storemerge.in = phi ptr [ %arrayidx.i, %if.then ], [ %arrayidx, %if.end ]
  %30 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load2_noabort(i32 %30)
  %storemerge = load i16, ptr %storemerge.in, align 2
  %31 = ptrtoint ptr %proto to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %storemerge, ptr %proto, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull_rcsum(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dsa_switch_find(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_trim_rcsum_slow(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !24, !26, !27, !28, !29, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !43, !45, !46, !48, !50, !52, !54, !56, !57, !58}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__UNIQUE_ID_alias499, !1, !"__UNIQUE_ID_alias499", i1 false, i1 false}
!1 = !{!"../net/dsa/tag_sja1105.c", i32 797, i32 1}
!2 = !{ptr @__UNIQUE_ID_alias500, !3, !"__UNIQUE_ID_alias500", i1 false, i1 false}
!3 = !{!"../net/dsa/tag_sja1105.c", i32 812, i32 1}
!4 = !{ptr @__initcall__kmod_tag_sja1105__501_819_dsa_tag_driver_module_init6, !5, !"__initcall__kmod_tag_sja1105__501_819_dsa_tag_driver_module_init6", i1 false, i1 false}
!5 = !{!"../net/dsa/tag_sja1105.c", i32 819, i32 1}
!6 = !{ptr @__exitcall_dsa_tag_driver_module_exit, !5, !"__exitcall_dsa_tag_driver_module_exit", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_file502, !8, !"__UNIQUE_ID_file502", i1 false, i1 false}
!8 = !{!"../net/dsa/tag_sja1105.c", i32 821, i32 1}
!9 = !{ptr @__UNIQUE_ID_license503, !8, !"__UNIQUE_ID_license503", i1 false, i1 false}
!10 = !{ptr @sja1105_tag_driver_array, !11, !"sja1105_tag_driver_array", i1 false, i1 false}
!11 = !{!"../net/dsa/tag_sja1105.c", i32 814, i32 31}
!12 = !{ptr @dsa_tag_driver_sja1105_netdev_ops, !13, !"dsa_tag_driver_sja1105_netdev_ops", i1 false, i1 false}
!13 = !{!"../net/dsa/tag_sja1105.c", i32 796, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/dsa/tag_sja1105.c", i32 785, i32 10}
!16 = !{ptr @sja1105_netdev_ops, !17, !"sja1105_netdev_ops", i1 false, i1 false}
!17 = !{!"../net/dsa/tag_sja1105.c", i32 784, i32 36}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../net/dsa/tag_sja1105.c", i32 203, i32 2}
!20 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/dsa/tag_sja1105.c", i32 569, i32 23}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/dsa/tag_sja1105.c", i32 399, i32 4}
!26 = !{ptr @sja1105_rcv_meta_state_machine._rs, !25, !"_rs", i1 false, i1 false}
!27 = !{ptr @__func__.sja1105_rcv_meta_state_machine, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @sja1105_rcv_meta_state_machine._entry, !25, !"_entry", i1 false, i1 false}
!32 = !{ptr @sja1105_rcv_meta_state_machine._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @sja1105_rcv_meta_state_machine._rs.8, !34, !"_rs", i1 false, i1 false}
!34 = !{!"../net/dsa/tag_sja1105.c", i32 444, i32 4}
!35 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @sja1105_rcv_meta_state_machine._entry.9, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @sja1105_rcv_meta_state_machine._entry_ptr.11, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @sja1105_rcv_meta_state_machine._rs.12, !39, !"_rs", i1 false, i1 false}
!39 = !{!"../net/dsa/tag_sja1105.c", i32 451, i32 4}
!40 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @sja1105_rcv_meta_state_machine._entry.13, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @sja1105_rcv_meta_state_machine._entry_ptr.15, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @sja1105_connect.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../net/dsa/tag_sja1105.c", i32 764, i32 2}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/dsa/tag_sja1105.c", i32 766, i32 41}
!48 = !{ptr @dsa_tag_driver_sja1110_netdev_ops, !49, !"dsa_tag_driver_sja1110_netdev_ops", i1 false, i1 false}
!49 = !{!"../net/dsa/tag_sja1105.c", i32 811, i32 1}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/dsa/tag_sja1105.c", i32 800, i32 10}
!52 = !{ptr @sja1110_netdev_ops, !53, !"sja1110_netdev_ops", i1 false, i1 false}
!53 = !{!"../net/dsa/tag_sja1105.c", i32 799, i32 36}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/dsa/tag_sja1105.c", i32 594, i32 3}
!56 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @sja1110_rcv_meta._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @sja1110_rcv_meta._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{!"auto-init"}
!69 = !{!"branch_weights", i32 2000, i32 1}
!70 = !{i64 2148526943, i64 2148526975, i64 2148527004, i64 2148527038, i64 2148527069, i64 2148527092}
!71 = !{!"branch_weights", i32 1, i32 2000}
!72 = !{i64 2158014369, i64 2158014860, i64 2158014406, i64 2158014462, i64 2158014496, i64 2158014520, i64 2158014561, i64 2158014582, i64 2158014610, i64 2158014644}

; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/abm/qdisc.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/abm/qdisc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.radix_tree_iter = type { i32, i32, i32, ptr }
%struct.nfp_abm = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i8, i32, ptr, ptr, ptr }
%struct.nfp_abm_link = type { ptr, ptr, i32, i32, i32, i64, ptr, i8, i8, %struct.list_head, ptr, %struct.xarray }
%struct.list_head = type { ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nfp_qdisc = type { ptr, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %union.anon.181 }
%union.anon.181 = type { %struct.anon.183 }
%struct.anon.183 = type { i32, [16 x %struct.anon.184] }
%struct.anon.184 = type { i8, i32, %struct.nfp_alink_stats, %struct.nfp_alink_stats, %struct.nfp_alink_xstats, %struct.nfp_alink_xstats }
%struct.nfp_alink_stats = type { i64, i64, i64, i64, i64, i64 }
%struct.nfp_alink_xstats = type { i64, i64 }
%struct.nfp_app = type { ptr, ptr, ptr, ptr, [3 x ptr], ptr, i32, %struct.notifier_block, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.tc_gred_qopt_offload = type { i32, i32, i32, %union.anon.191 }
%union.anon.191 = type { %struct.tc_gred_qopt_offload_stats }
%struct.tc_gred_qopt_offload_stats = type { [16 x %struct.gnet_stats_basic_sync], [16 x %struct.gnet_stats_queue], [16 x ptr] }
%struct.gnet_stats_basic_sync = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.gnet_stats_queue = type { i32, i32, i32, i32, i32 }
%struct.tc_gred_qopt_offload_params = type { i8, i8, i32, i32, ptr, [16 x %struct.tc_gred_vq_qopt_offload_params] }
%struct.tc_gred_vq_qopt_offload_params = type { i8, i32, i32, i32, i32, i8, i8, i32, ptr }
%struct.red_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.137, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.161, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.137 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.161 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.nfp_port = type { ptr, i32, i32, i32, ptr, %struct.devlink_port, %union.anon.174, %struct.list_head }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.146 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.146 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%union.anon.174 = type { %struct.anon.176 }
%struct.anon.176 = type { i32, i32, i8, i32, ptr }
%struct.tc_red_qopt_offload = type { i32, i32, i32, %union.anon.192 }
%union.anon.192 = type { %struct.tc_red_qopt_offload_params }
%struct.tc_red_qopt_offload_params = type { i32, i32, i32, i32, i8, i8, i8, ptr }
%struct.tc_mq_qopt_offload = type { i32, i32, %union.anon.193 }
%union.anon.193 = type { %struct.tc_qopt_offload_stats }
%struct.tc_qopt_offload_stats = type { ptr, ptr }
%struct.tc_root_qopt_offload = type { i32, i32, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@nfp_abm_qdisc_tree_deref_slot.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/ethernet/netronome/nfp/abm/qdisc.c\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__nfp_abm_stats_init._entry = internal constant %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 155, ptr @.str.4, ptr @.str.5 }, align 1
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"nfp: RED stats init (%d, %d) failed with error %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__nfp_abm_stats_init\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__nfp_abm_stats_init._entry_ptr = internal global ptr @__nfp_abm_stats_init._entry, section ".printk_index", align 4
@__nfp_abm_stats_init._entry.6 = internal constant %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str, i32 163, ptr @.str.4, ptr @.str.5 }, align 1
@.str.7 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"nfp: RED xstats init (%d, %d) failed with error %d\0A\00", [44 x i8] zeroinitializer }, align 32
@__nfp_abm_stats_init._entry_ptr.8 = internal global ptr @__nfp_abm_stats_init._entry.6, section ".printk_index", align 4
@nfp_abm_qdisc_offload_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str, i32 126, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nfp: Offload of '%08x' stopped\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nfp_abm_qdisc_offload_stop\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@nfp_abm_qdisc_offload_stop._entry_ptr = internal global ptr @nfp_abm_qdisc_offload_stop._entry, section ".printk_index", align 4
@nfp_abm_stats_update_red._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str, i32 60, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"nfp: RED stats (%d, %d) read failed with error %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nfp_abm_stats_update_red\00", [39 x i8] zeroinitializer }, align 32
@nfp_abm_stats_update_red._entry_ptr = internal global ptr @nfp_abm_stats_update_red._entry, section ".printk_index", align 4
@nfp_abm_stats_update_red._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str, i32 66, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"nfp: RED xstats (%d, %d) read failed with error %d\0A\00", [44 x i8] zeroinitializer }, align 32
@nfp_abm_stats_update_red._entry_ptr.16 = internal global ptr @nfp_abm_stats_update_red._entry.14, section ".printk_index", align 4
@nfp_abm_qdisc_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str, i32 366, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"nfp: Qdisc insertion into radix tree failed: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nfp_abm_qdisc_alloc\00", [44 x i8] zeroinitializer }, align 32
@nfp_abm_qdisc_alloc._entry_ptr = internal global ptr @nfp_abm_qdisc_alloc._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nfp_abm_gred_check_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str, i32 525, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"nfp: GRED offload failed - GRIO and WRED not supported (p:%08x h:%08x)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nfp_abm_gred_check_params\00", [38 x i8] zeroinitializer }, align 32
@nfp_abm_gred_check_params._entry_ptr = internal global ptr @nfp_abm_gred_check_params._entry, section ".printk_index", align 4
@nfp_abm_gred_check_params._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str, i32 530, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"nfp: GRED offload failed - default band must be %d (p:%08x h:%08x)\0A\00", [60 x i8] zeroinitializer }, align 32
@nfp_abm_gred_check_params._entry_ptr.23 = internal global ptr @nfp_abm_gred_check_params._entry.21, section ".printk_index", align 4
@nfp_abm_gred_check_params._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str, i32 535, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"nfp: GRED offload failed - band count must be %d (p:%08x h:%08x)\0A\00", [62 x i8] zeroinitializer }, align 32
@nfp_abm_gred_check_params._entry_ptr.26 = internal global ptr @nfp_abm_gred_check_params._entry.24, section ".printk_index", align 4
@nfp_abm_gred_check_params._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.20, ptr @.str, i32 546, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"nfp: GRED offload failed - drop is not supported (ECN option required) (p:%08x h:%08x vq:%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@nfp_abm_gred_check_params._entry_ptr.29 = internal global ptr @nfp_abm_gred_check_params._entry.27, section ".printk_index", align 4
@nfp_abm_gred_check_params._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.20, ptr @.str, i32 551, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"nfp: GRED offload failed - ECN marking not supported (p:%08x h:%08x vq:%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@nfp_abm_gred_check_params._entry_ptr.32 = internal global ptr @nfp_abm_gred_check_params._entry.30, section ".printk_index", align 4
@nfp_abm_gred_check_params._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.20, ptr @.str, i32 556, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"nfp: GRED offload failed - harddrop is not supported (p:%08x h:%08x vq:%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@nfp_abm_gred_check_params._entry_ptr.35 = internal global ptr @nfp_abm_gred_check_params._entry.33, section ".printk_index", align 4
@nfp_abm_gred_check_params._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.20, ptr @.str, i32 561, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"nfp: GRED offload failed - threshold mismatch (p:%08x h:%08x vq:%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@nfp_abm_gred_check_params._entry_ptr.38 = internal global ptr @nfp_abm_gred_check_params._entry.36, section ".printk_index", align 4
@nfp_abm_gred_check_params._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.20, ptr @.str, i32 567, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"nfp: GRED offload failed - threshold too large %d > %d (p:%08x h:%08x vq:%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@nfp_abm_gred_check_params._entry_ptr.41 = internal global ptr @nfp_abm_gred_check_params._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"non-zero qdisc use count: %d (- %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@nfp_abm_red_check_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str, i32 669, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"nfp: RED offload failed - drop is not supported (ECN option required) (p:%08x h:%08x)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nfp_abm_red_check_params\00", [39 x i8] zeroinitializer }, align 32
@nfp_abm_red_check_params._entry_ptr = internal global ptr @nfp_abm_red_check_params._entry, section ".printk_index", align 4
@nfp_abm_red_check_params._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str, i32 674, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"nfp: RED offload failed - ECN marking not supported (p:%08x h:%08x)\0A\00", [59 x i8] zeroinitializer }, align 32
@nfp_abm_red_check_params._entry_ptr.48 = internal global ptr @nfp_abm_red_check_params._entry.46, section ".printk_index", align 4
@nfp_abm_red_check_params._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str, i32 679, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"nfp: RED offload failed - harddrop is not supported (p:%08x h:%08x)\0A\00", [59 x i8] zeroinitializer }, align 32
@nfp_abm_red_check_params._entry_ptr.51 = internal global ptr @nfp_abm_red_check_params._entry.49, section ".printk_index", align 4
@nfp_abm_red_check_params._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.45, ptr @.str, i32 684, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"nfp: RED offload failed - unsupported min/max parameters (p:%08x h:%08x)\0A\00", [54 x i8] zeroinitializer }, align 32
@nfp_abm_red_check_params._entry_ptr.54 = internal global ptr @nfp_abm_red_check_params._entry.52, section ".printk_index", align 4
@nfp_abm_red_check_params._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.45, ptr @.str, i32 690, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"nfp: RED offload failed - threshold too large %d > %d (p:%08x h:%08x)\0A\00", [57 x i8] zeroinitializer }, align 32
@nfp_abm_red_check_params._entry_ptr.57 = internal global ptr @nfp_abm_red_check_params._entry.55, section ".printk_index", align 4
@.str.58 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"graft child out of bound %d >= %d\0A\00", [61 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.59 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.60 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.61 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 29, i32 9 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 153, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 161, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 125, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 59, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 65, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 365, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 524, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 529, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 534, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 545, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 550, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 555, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 560, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 565, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 316, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 271, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 668, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 673, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 678, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 683, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 688, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.210 = private constant [50 x i8] c"../drivers/net/ethernet/netronome/nfp/abm/qdisc.c\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 439, i32 6 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @__nfp_abm_stats_init._entry, ptr @__nfp_abm_stats_init._entry.6, ptr @__nfp_abm_stats_init._entry_ptr, ptr @__nfp_abm_stats_init._entry_ptr.8, ptr @nfp_abm_gred_check_params._entry, ptr @nfp_abm_gred_check_params._entry.21, ptr @nfp_abm_gred_check_params._entry.24, ptr @nfp_abm_gred_check_params._entry.27, ptr @nfp_abm_gred_check_params._entry.30, ptr @nfp_abm_gred_check_params._entry.33, ptr @nfp_abm_gred_check_params._entry.36, ptr @nfp_abm_gred_check_params._entry.39, ptr @nfp_abm_gred_check_params._entry_ptr, ptr @nfp_abm_gred_check_params._entry_ptr.23, ptr @nfp_abm_gred_check_params._entry_ptr.26, ptr @nfp_abm_gred_check_params._entry_ptr.29, ptr @nfp_abm_gred_check_params._entry_ptr.32, ptr @nfp_abm_gred_check_params._entry_ptr.35, ptr @nfp_abm_gred_check_params._entry_ptr.38, ptr @nfp_abm_gred_check_params._entry_ptr.41, ptr @nfp_abm_qdisc_alloc._entry, ptr @nfp_abm_qdisc_alloc._entry_ptr, ptr @nfp_abm_qdisc_offload_stop._entry, ptr @nfp_abm_qdisc_offload_stop._entry_ptr, ptr @nfp_abm_red_check_params._entry, ptr @nfp_abm_red_check_params._entry.46, ptr @nfp_abm_red_check_params._entry.49, ptr @nfp_abm_red_check_params._entry.52, ptr @nfp_abm_red_check_params._entry.55, ptr @nfp_abm_red_check_params._entry_ptr, ptr @nfp_abm_red_check_params._entry_ptr.48, ptr @nfp_abm_red_check_params._entry_ptr.51, ptr @nfp_abm_red_check_params._entry_ptr.54, ptr @nfp_abm_red_check_params._entry_ptr.57, ptr @nfp_abm_stats_update_red._entry, ptr @nfp_abm_stats_update_red._entry.14, ptr @nfp_abm_stats_update_red._entry_ptr, ptr @nfp_abm_stats_update_red._entry_ptr.16, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.58], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_qdisc_offload_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_stats_update_red._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_stats_update_red._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_qdisc_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_gred_check_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_gred_check_params._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_gred_check_params._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_gred_check_params._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_gred_check_params._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_gred_check_params._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_gred_check_params._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_gred_check_params._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_red_check_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_red_check_params._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_red_check_params._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_red_check_params._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_red_check_params._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_abm_qdisc_offload_update(ptr noundef %alink) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.radix_tree_iter, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %alink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alink, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iter) #9
  %2 = getelementptr inbounds %struct.radix_tree_iter, ptr %iter, i32 0, i32 1
  %num_bands = getelementptr inbounds %struct.nfp_abm, ptr %1, i32 0, i32 4
  %3 = getelementptr inbounds i8, ptr %iter, i32 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 -1, ptr %3, align 4
  %5 = ptrtoint ptr %num_bands to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_bands, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp111.not = icmp eq i32 %6, 0
  br i1 %cmp111.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %threshold_undef = getelementptr inbounds %struct.nfp_abm, ptr %1, i32 0, i32 7
  %queue_base = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 3
  %total_queues = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0112 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %7 = ptrtoint ptr %threshold_undef to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %threshold_undef, align 4
  %mul = shl i32 %i.0112, 6
  %9 = ptrtoint ptr %queue_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %queue_base, align 4
  %add = add i32 %10, %mul
  %11 = ptrtoint ptr %total_queues to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %total_queues, align 8
  tail call void @__bitmap_set(ptr noundef %8, i32 noundef %add, i32 noundef %12) #9
  %inc = add nuw i32 %i.0112, 1
  %13 = ptrtoint ptr %num_bands to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_bands, align 4
  %cmp = icmp ult i32 %inc, %14
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %15 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %iter, align 4
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %2, align 4
  %qdiscs = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 11
  br label %for.cond2

for.cond2.loopexit:                               ; preds = %while.body.i.for.cond2.loopexit_crit_edge, %while.cond.i.for.cond2.loopexit_crit_edge
  %slot.0.ph = phi ptr [ null, %while.cond.i.for.cond2.loopexit_crit_edge ], [ %incdec.ptr29.i, %while.body.i.for.cond2.loopexit_crit_edge ]
  br label %for.cond2

for.cond2:                                        ; preds = %for.cond2.loopexit, %for.end
  %slot.0 = phi ptr [ null, %for.end ], [ %slot.0.ph, %for.cond2.loopexit ]
  %tobool.not = icmp eq ptr %slot.0, null
  br i1 %tobool.not, label %lor.rhs, label %for.cond2.for.body5_crit_edge

for.cond2.for.body5_crit_edge:                    ; preds = %for.cond2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body5

lor.rhs:                                          ; preds = %for.cond2
  %call3 = call ptr @radix_tree_next_chunk(ptr noundef %qdiscs, ptr noundef nonnull %iter, i32 noundef 0) #9
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %for.end9, label %lor.rhs.for.body5_crit_edge

lor.rhs.for.body5_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body5

for.body5:                                        ; preds = %lor.rhs.for.body5_crit_edge, %for.cond2.for.body5_crit_edge
  %slot.1 = phi ptr [ %slot.0, %for.cond2.for.body5_crit_edge ], [ %call3, %lor.rhs.for.body5_crit_edge ]
  %call.i = call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call.i, label %for.body5.nfp_abm_qdisc_tree_deref_slot.exit_crit_edge, label %land.lhs.true.i

for.body5.nfp_abm_qdisc_tree_deref_slot.exit_crit_edge: ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_abm_qdisc_tree_deref_slot.exit

land.lhs.true.i:                                  ; preds = %for.body5
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.nfp_abm_qdisc_tree_deref_slot.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.nfp_abm_qdisc_tree_deref_slot.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_abm_qdisc_tree_deref_slot.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @nfp_abm_qdisc_tree_deref_slot.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.nfp_abm_qdisc_tree_deref_slot.exit_crit_edge, label %if.then.i

land.lhs.true2.i.nfp_abm_qdisc_tree_deref_slot.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_abm_qdisc_tree_deref_slot.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfp_abm_qdisc_tree_deref_slot.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 29, ptr noundef nonnull @.str.1) #9
  br label %nfp_abm_qdisc_tree_deref_slot.exit

nfp_abm_qdisc_tree_deref_slot.exit:               ; preds = %if.then.i, %land.lhs.true2.i.nfp_abm_qdisc_tree_deref_slot.exit_crit_edge, %land.lhs.true.i.nfp_abm_qdisc_tree_deref_slot.exit_crit_edge, %for.body5.nfp_abm_qdisc_tree_deref_slot.exit_crit_edge
  %17 = ptrtoint ptr %slot.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %slot.1, align 4
  %offload_mark = getelementptr inbounds %struct.nfp_qdisc, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %offload_mark to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %offload_mark, align 1
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %2, align 4
  %22 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iter, align 4
  %sub.i.i = sub i32 %21, %23
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %nfp_abm_qdisc_tree_deref_slot.exit
  %slot.addr.0.i = phi ptr [ %slot.1, %nfp_abm_qdisc_tree_deref_slot.exit ], [ %incdec.ptr29.i, %while.body.i.while.cond.i_crit_edge ]
  %count.0.i = phi i32 [ %sub.i.i, %nfp_abm_qdisc_tree_deref_slot.exit ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  %dec.i = add i32 %count.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp sgt i32 %dec.i, 0
  br i1 %cmp.i, label %while.body.i, label %while.cond.i.for.cond2.loopexit_crit_edge

while.cond.i.for.cond2.loopexit_crit_edge:        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond2.loopexit

while.body.i:                                     ; preds = %while.cond.i
  %incdec.ptr29.i = getelementptr ptr, ptr %slot.addr.0.i, i32 1
  %24 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iter, align 4
  %add.i.i = add i32 %25, 1
  store i32 %add.i.i, ptr %iter, align 4
  %26 = ptrtoint ptr %incdec.ptr29.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %incdec.ptr29.i, align 4
  %tobool32.not.i = icmp eq ptr %27, null
  br i1 %tobool32.not.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.for.cond2.loopexit_crit_edge, !prof !106

while.body.i.for.cond2.loopexit_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond2.loopexit

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

for.end9:                                         ; preds = %lor.rhs
  %root_qdisc = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 10
  %28 = ptrtoint ptr %root_qdisc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %root_qdisc, align 8
  %tobool10.not = icmp eq ptr %29, null
  br i1 %tobool10.not, label %for.end9.if.end_crit_edge, label %if.then

for.end9.if.end_crit_edge:                        ; preds = %for.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %for.end9
  %type.i = getelementptr inbounds %struct.nfp_qdisc, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp.i88 = icmp eq i32 %31, 1
  %offload_mark.i = getelementptr inbounds %struct.nfp_qdisc, ptr %29, i32 0, i32 8
  %frombool.i = zext i1 %cmp.i88 to i8
  %32 = ptrtoint ptr %offload_mark.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %frombool.i, ptr %offload_mark.i, align 1
  br i1 %cmp.i88, label %for.cond.preheader.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.cond.preheader.i:                             ; preds = %if.then
  %total_queues.i = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 4
  %33 = ptrtoint ptr %total_queues.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %total_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp224.not.i = icmp eq i32 %34, 0
  br i1 %cmp224.not.i, label %for.cond.preheader.i.if.end_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end_crit_edge:            ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %children.i = getelementptr inbounds %struct.nfp_qdisc, ptr %29, i32 0, i32 6
  %has_prio.i.i = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.025.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %35 = ptrtoint ptr %children.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %children.i, align 8
  %arrayidx.i89 = getelementptr ptr, ptr %36, i32 %i.025.i
  %37 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i89, align 4
  %switch.i = icmp ult ptr %38, inttoptr (i32 2 to ptr)
  br i1 %switch.i, label %for.body.i.cleanup.i_crit_edge, label %if.end4.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end4.i:                                        ; preds = %for.body.i
  %type.i.i = getelementptr inbounds %struct.nfp_qdisc, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %type.i.i, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values)
  switch i32 %40, label %if.end4.i.land.end14.thread.i.i_crit_edge [
    i32 2, label %land.lhs.true.i.i
    i32 3, label %land.lhs.true8.i.i
  ]

if.end4.i.land.end14.thread.i.i_crit_edge:        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end14.thread.i.i

land.lhs.true.i.i:                                ; preds = %if.end4.i
  %params_ok.i.i = getelementptr inbounds %struct.nfp_qdisc, ptr %38, i32 0, i32 7
  %42 = ptrtoint ptr %params_ok.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %params_ok.i.i, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i17.i = icmp eq i8 %43, 0
  br i1 %tobool.not.i17.i, label %land.lhs.true.i.i.land.end14.thread.i.i_crit_edge, label %land.lhs.true1.i.i

land.lhs.true.i.i.land.end14.thread.i.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end14.thread.i.i

land.lhs.true1.i.i:                               ; preds = %land.lhs.true.i.i
  %use_cnt.i.i = getelementptr inbounds %struct.nfp_qdisc, ptr %38, i32 0, i32 4
  %44 = ptrtoint ptr %use_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %use_cnt.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp2.i.i = icmp eq i32 %45, 1
  br i1 %cmp2.i.i, label %land.lhs.true3.i.i, label %land.lhs.true1.i.i.land.end14.thread.i.i_crit_edge

land.lhs.true1.i.i.land.end14.thread.i.i_crit_edge: ; preds = %land.lhs.true1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end14.thread.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true1.i.i
  %46 = ptrtoint ptr %has_prio.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %has_prio.i.i, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool4.not.i.i = icmp eq i8 %47, 0
  br i1 %tobool4.not.i.i, label %land.end14.i.i, label %land.lhs.true3.i.i.land.end14.thread.i.i_crit_edge

land.lhs.true3.i.i.land.end14.thread.i.i_crit_edge: ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end14.thread.i.i

land.lhs.true8.i.i:                               ; preds = %if.end4.i
  %params_ok9.i.i = getelementptr inbounds %struct.nfp_qdisc, ptr %38, i32 0, i32 7
  %48 = ptrtoint ptr %params_ok9.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %params_ok9.i.i, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool10.not.i.i = icmp eq i8 %49, 0
  br i1 %tobool10.not.i.i, label %land.lhs.true8.i.i.land.end14.thread.i.i_crit_edge, label %land.rhs11.i.i

land.lhs.true8.i.i.land.end14.thread.i.i_crit_edge: ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end14.thread.i.i

land.rhs11.i.i:                                   ; preds = %land.lhs.true8.i.i
  %use_cnt12.i.i = getelementptr inbounds %struct.nfp_qdisc, ptr %38, i32 0, i32 4
  %50 = ptrtoint ptr %use_cnt12.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %use_cnt12.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %51)
  %cmp13.i.i = icmp eq i32 %51, 1
  %offload_mark86.i.i = getelementptr inbounds %struct.nfp_qdisc, ptr %38, i32 0, i32 8
  %frombool1887.i.i = zext i1 %cmp13.i.i to i8
  %52 = ptrtoint ptr %offload_mark86.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %frombool1887.i.i, ptr %offload_mark86.i.i, align 1
  br i1 %cmp13.i.i, label %land.rhs11.i.i.land.lhs.true21.i.i_crit_edge, label %land.rhs11.i.i.cleanup.i_crit_edge

land.rhs11.i.i.cleanup.i_crit_edge:               ; preds = %land.rhs11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

land.rhs11.i.i.land.lhs.true21.i.i_crit_edge:     ; preds = %land.rhs11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true21.i.i

land.end14.thread.i.i:                            ; preds = %land.lhs.true8.i.i.land.end14.thread.i.i_crit_edge, %land.lhs.true3.i.i.land.end14.thread.i.i_crit_edge, %land.lhs.true1.i.i.land.end14.thread.i.i_crit_edge, %land.lhs.true.i.i.land.end14.thread.i.i_crit_edge, %if.end4.i.land.end14.thread.i.i_crit_edge
  %offload_mark83.i.i = getelementptr inbounds %struct.nfp_qdisc, ptr %38, i32 0, i32 8
  br label %cleanup.sink.split.i.i

land.end14.i.i:                                   ; preds = %land.lhs.true3.i.i
  %children.i18.i = getelementptr inbounds %struct.nfp_qdisc, ptr %38, i32 0, i32 6
  %53 = ptrtoint ptr %children.i18.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %children.i18.i, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %tobool5.not.i.i = icmp eq ptr %56, null
  %offload_mark.i.i = getelementptr inbounds %struct.nfp_qdisc, ptr %38, i32 0, i32 8
  %frombool18.i.i = zext i1 %tobool5.not.i.i to i8
  %57 = ptrtoint ptr %offload_mark.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %frombool18.i.i, ptr %offload_mark.i.i, align 1
  br i1 %tobool5.not.i.i, label %land.end14.i.i.land.lhs.true21.i.i_crit_edge, label %land.end14.i.i.cleanup.i_crit_edge

land.end14.i.i.cleanup.i_crit_edge:               ; preds = %land.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

land.end14.i.i.land.lhs.true21.i.i_crit_edge:     ; preds = %land.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true21.i.i

land.lhs.true21.i.i:                              ; preds = %land.end14.i.i.land.lhs.true21.i.i_crit_edge, %land.rhs11.i.i.land.lhs.true21.i.i_crit_edge
  %offload_mark88.i.i = phi ptr [ %offload_mark86.i.i, %land.rhs11.i.i.land.lhs.true21.i.i_crit_edge ], [ %offload_mark.i.i, %land.end14.i.i.land.lhs.true21.i.i_crit_edge ]
  %offloaded.i.i = getelementptr inbounds %struct.nfp_qdisc, ptr %38, i32 0, i32 9
  %58 = ptrtoint ptr %offloaded.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %offloaded.i.i, align 2, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool22.not.i.i = icmp eq i8 %59, 0
  br i1 %tobool22.not.i.i, label %if.then.i.i, label %land.lhs.true21.i.i.for.cond.preheader.i.i_crit_edge

land.lhs.true21.i.i.for.cond.preheader.i.i_crit_edge: ; preds = %land.lhs.true21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %nfp_abm_stats_init.exit.thread.i.i.for.cond.preheader.i.i_crit_edge, %land.lhs.true21.i.i.for.cond.preheader.i.i_crit_edge
  %60 = ptrtoint ptr %alink to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %alink, align 8
  %num_bands75.i.i = getelementptr inbounds %struct.nfp_abm, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %num_bands75.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_bands75.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp3176.not.i.i = icmp eq i32 %63, 0
  br i1 %cmp3176.not.i.i, label %for.cond.preheader.i.i.cleanup.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.cleanup.i_crit_edge:       ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.then.i.i:                                      ; preds = %land.lhs.true21.i.i
  %64 = getelementptr inbounds %struct.nfp_qdisc, ptr %38, i32 0, i32 10
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp16.not.i.i.i = icmp eq i32 %66, 0
  br i1 %cmp16.not.i.i.i, label %if.then.i.i.nfp_abm_stats_init.exit.thread.i.i_crit_edge, label %if.then.i.i.for.body.i.i.i_crit_edge

if.then.i.i.for.body.i.i.i_crit_edge:             ; preds = %if.then.i.i
  br label %for.body.i.i.i

if.then.i.i.nfp_abm_stats_init.exit.thread.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_abm_stats_init.exit.thread.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.then.i.i.for.body.i.i.i_crit_edge
  %i.017.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.then.i.i.for.body.i.i.i_crit_edge ]
  %prev_stats.i.i.i = getelementptr %struct.nfp_qdisc, ptr %38, i32 0, i32 10, i32 0, i32 1, i32 %i.017.i.i.i, i32 3
  %backlog_pkts1.i.i.i.i = getelementptr %struct.nfp_qdisc, ptr %38, i32 0, i32 10, i32 0, i32 1, i32 %i.017.i.i.i, i32 3, i32 2
  %67 = ptrtoint ptr %backlog_pkts1.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %backlog_pkts1.i.i.i.i, align 8
  %backlog_bytes2.i.i.i.i = getelementptr %struct.nfp_qdisc, ptr %38, i32 0, i32 10, i32 0, i32 1, i32 %i.017.i.i.i, i32 3, i32 3
  %69 = ptrtoint ptr %backlog_bytes2.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %backlog_bytes2.i.i.i.i, align 8
  %call.i.i.i.i = call i32 @nfp_abm_ctrl_read_q_stats(ptr noundef %alink, i32 noundef %i.017.i.i.i, i32 noundef %i.025.i, ptr noundef %prev_stats.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %do.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %alink to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %alink, align 8
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  %cpp.i.i.i.i = getelementptr inbounds %struct.nfp_app, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %cpp.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cpp.i.i.i.i, align 4
  %call3.i.i.i.i = call ptr @nfp_cpp_device(ptr noundef %76) #9
  %parent.i.i.i.i = getelementptr inbounds %struct.device, ptr %call3.i.i.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %parent.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %parent.i.i.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.2, i32 noundef %i.017.i.i.i, i32 noundef %i.025.i, i32 noundef %call.i.i.i.i) #12
  br label %cleanup.sink.split.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i.i
  %prev_xstats.i.i.i = getelementptr %struct.nfp_qdisc, ptr %38, i32 0, i32 10, i32 0, i32 1, i32 %i.017.i.i.i, i32 5
  %call4.i.i.i.i = call i32 @nfp_abm_ctrl_read_q_xstats(ptr noundef %alink, i32 noundef %i.017.i.i.i, i32 noundef %i.025.i, ptr noundef %prev_xstats.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i.i)
  %tobool5.not.i.i.i.i = icmp eq i32 %call4.i.i.i.i, 0
  br i1 %tobool5.not.i.i.i.i, label %for.inc.i.i.i, label %do.end9.i.i.i.i

do.end9.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %alink to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %alink, align 8
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %cpp12.i.i.i.i = getelementptr inbounds %struct.nfp_app, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %cpp12.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cpp12.i.i.i.i, align 4
  %call13.i.i.i.i = call ptr @nfp_cpp_device(ptr noundef %84) #9
  %parent14.i.i.i.i = getelementptr inbounds %struct.device, ptr %call13.i.i.i.i, i32 0, i32 1
  %85 = ptrtoint ptr %parent14.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %parent14.i.i.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.7, i32 noundef %i.017.i.i.i, i32 noundef %i.025.i, i32 noundef %call4.i.i.i.i) #12
  br label %cleanup.sink.split.i.i

for.inc.i.i.i:                                    ; preds = %if.end.i.i.i.i
  %87 = ptrtoint ptr %backlog_pkts1.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %68, ptr %backlog_pkts1.i.i.i.i, align 8
  %88 = ptrtoint ptr %backlog_bytes2.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %70, ptr %backlog_bytes2.i.i.i.i, align 8
  %inc.i.i.i = add nuw i32 %i.017.i.i.i, 1
  %89 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %64, align 8
  %cmp.i.i.i = icmp ult i32 %inc.i.i.i, %90
  br i1 %cmp.i.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, label %for.inc.i.i.i.nfp_abm_stats_init.exit.thread.i.i_crit_edge

for.inc.i.i.i.nfp_abm_stats_init.exit.thread.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_abm_stats_init.exit.thread.i.i

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

nfp_abm_stats_init.exit.thread.i.i:               ; preds = %for.inc.i.i.i.nfp_abm_stats_init.exit.thread.i.i_crit_edge, %if.then.i.i.nfp_abm_stats_init.exit.thread.i.i_crit_edge
  %91 = ptrtoint ptr %offload_mark88.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %.pr.i.i = load i8, ptr %offload_mark88.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i.i)
  %phi.cmp.i.i = icmp eq i8 %.pr.i.i, 0
  br i1 %phi.cmp.i.i, label %nfp_abm_stats_init.exit.thread.i.i.cleanup.i_crit_edge, label %nfp_abm_stats_init.exit.thread.i.i.for.cond.preheader.i.i_crit_edge

nfp_abm_stats_init.exit.thread.i.i.for.cond.preheader.i.i_crit_edge: ; preds = %nfp_abm_stats_init.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader.i.i

nfp_abm_stats_init.exit.thread.i.i.cleanup.i_crit_edge: ; preds = %nfp_abm_stats_init.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.077.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %arrayidx32.i.i = getelementptr %struct.nfp_qdisc, ptr %38, i32 0, i32 10, i32 0, i32 1, i32 %i.077.i.i
  %threshold.i.i = getelementptr %struct.nfp_qdisc, ptr %38, i32 0, i32 10, i32 0, i32 1, i32 %i.077.i.i, i32 1
  %92 = ptrtoint ptr %threshold.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %threshold.i.i, align 4
  %call33.i.i = call i32 @nfp_abm_ctrl_set_q_lvl(ptr noundef %alink, i32 noundef %i.077.i.i, i32 noundef %i.025.i, i32 noundef %93) #9
  %94 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx32.i.i, align 8, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool36.not.i.i = icmp eq i8 %95, 0
  %cond.i.i = select i1 %tobool36.not.i.i, i32 2, i32 0
  %call37.i.i = call i32 @nfp_abm_ctrl_set_q_act(ptr noundef %alink, i32 noundef %i.077.i.i, i32 noundef %i.025.i, i32 noundef %cond.i.i) #9
  %inc.i.i = add nuw i32 %i.077.i.i, 1
  %96 = ptrtoint ptr %alink to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %alink, align 8
  %num_bands.i.i = getelementptr inbounds %struct.nfp_abm, ptr %97, i32 0, i32 4
  %98 = ptrtoint ptr %num_bands.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %num_bands.i.i, align 4
  %cmp31.i.i = icmp ult i32 %inc.i.i, %99
  br i1 %cmp31.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.cleanup.i_crit_edge

for.body.i.i.cleanup.i_crit_edge:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

cleanup.sink.split.i.i:                           ; preds = %do.end9.i.i.i.i, %do.end.i.i.i.i, %land.end14.thread.i.i
  %offload_mark83.sink.i.i = phi ptr [ %offload_mark83.i.i, %land.end14.thread.i.i ], [ %offload_mark88.i.i, %do.end9.i.i.i.i ], [ %offload_mark88.i.i, %do.end.i.i.i.i ]
  %100 = ptrtoint ptr %offload_mark83.sink.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %offload_mark83.sink.i.i, align 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.sink.split.i.i, %for.body.i.i.cleanup.i_crit_edge, %nfp_abm_stats_init.exit.thread.i.i.cleanup.i_crit_edge, %for.cond.preheader.i.i.cleanup.i_crit_edge, %land.end14.i.i.cleanup.i_crit_edge, %land.rhs11.i.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw i32 %i.025.i, 1
  %101 = ptrtoint ptr %total_queues.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %total_queues.i, align 8
  %cmp2.i = icmp ult i32 %inc.i, %102
  br i1 %cmp2.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.if.end_crit_edge

cleanup.i.if.end_crit_edge:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end:                                           ; preds = %cleanup.i.if.end_crit_edge, %for.cond.preheader.i.if.end_crit_edge, %if.then.if.end_crit_edge, %for.end9.if.end_crit_edge
  %103 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %iter, align 4
  %104 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %2, align 4
  br label %for.cond13

for.cond13.loopexit:                              ; preds = %while.body.i86.for.cond13.loopexit_crit_edge, %while.cond.i82.for.cond13.loopexit_crit_edge
  %slot.2.ph = phi ptr [ null, %while.cond.i82.for.cond13.loopexit_crit_edge ], [ %incdec.ptr29.i83, %while.body.i86.for.cond13.loopexit_crit_edge ]
  br label %for.cond13

for.cond13:                                       ; preds = %for.cond13.loopexit, %if.end
  %slot.2 = phi ptr [ null, %if.end ], [ %slot.2.ph, %for.cond13.loopexit ]
  %tobool14.not = icmp eq ptr %slot.2, null
  br i1 %tobool14.not, label %lor.rhs15, label %for.cond13.for.body20_crit_edge

for.cond13.for.body20_crit_edge:                  ; preds = %for.cond13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body20

lor.rhs15:                                        ; preds = %for.cond13
  %call17 = call ptr @radix_tree_next_chunk(ptr noundef %qdiscs, ptr noundef nonnull %iter, i32 noundef 0) #9
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %for.cond33.preheader, label %lor.rhs15.for.body20_crit_edge

lor.rhs15.for.body20_crit_edge:                   ; preds = %lor.rhs15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body20

for.cond33.preheader:                             ; preds = %lor.rhs15
  %num_thresholds = getelementptr inbounds %struct.nfp_abm, ptr %1, i32 0, i32 9
  %105 = ptrtoint ptr %num_thresholds to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %num_thresholds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp34113.not = icmp eq i32 %106, 0
  br i1 %cmp34113.not, label %for.cond33.preheader.for.end44_crit_edge, label %for.body35.lr.ph

for.cond33.preheader.for.end44_crit_edge:         ; preds = %for.cond33.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end44

for.body35.lr.ph:                                 ; preds = %for.cond33.preheader
  %threshold_undef36 = getelementptr inbounds %struct.nfp_abm, ptr %1, i32 0, i32 7
  br label %for.body35

for.body20:                                       ; preds = %lor.rhs15.for.body20_crit_edge, %for.cond13.for.body20_crit_edge
  %slot.3 = phi ptr [ %slot.2, %for.cond13.for.body20_crit_edge ], [ %call17, %lor.rhs15.for.body20_crit_edge ]
  %call.i90 = call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call.i90, label %for.body20.nfp_abm_qdisc_tree_deref_slot.exit97_crit_edge, label %land.lhs.true.i93

for.body20.nfp_abm_qdisc_tree_deref_slot.exit97_crit_edge: ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_abm_qdisc_tree_deref_slot.exit97

land.lhs.true.i93:                                ; preds = %for.body20
  %call1.i91 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i91)
  %tobool.not.i92 = icmp eq i32 %call1.i91, 0
  br i1 %tobool.not.i92, label %land.lhs.true.i93.nfp_abm_qdisc_tree_deref_slot.exit97_crit_edge, label %land.lhs.true2.i95

land.lhs.true.i93.nfp_abm_qdisc_tree_deref_slot.exit97_crit_edge: ; preds = %land.lhs.true.i93
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_abm_qdisc_tree_deref_slot.exit97

land.lhs.true2.i95:                               ; preds = %land.lhs.true.i93
  %.b4.i94 = load i1, ptr @nfp_abm_qdisc_tree_deref_slot.__warned, align 1
  br i1 %.b4.i94, label %land.lhs.true2.i95.nfp_abm_qdisc_tree_deref_slot.exit97_crit_edge, label %if.then.i96

land.lhs.true2.i95.nfp_abm_qdisc_tree_deref_slot.exit97_crit_edge: ; preds = %land.lhs.true2.i95
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_abm_qdisc_tree_deref_slot.exit97

if.then.i96:                                      ; preds = %land.lhs.true2.i95
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfp_abm_qdisc_tree_deref_slot.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 29, ptr noundef nonnull @.str.1) #9
  br label %nfp_abm_qdisc_tree_deref_slot.exit97

nfp_abm_qdisc_tree_deref_slot.exit97:             ; preds = %if.then.i96, %land.lhs.true2.i95.nfp_abm_qdisc_tree_deref_slot.exit97_crit_edge, %land.lhs.true.i93.nfp_abm_qdisc_tree_deref_slot.exit97_crit_edge, %for.body20.nfp_abm_qdisc_tree_deref_slot.exit97_crit_edge
  %107 = ptrtoint ptr %slot.3 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %slot.3, align 4
  %offload_mark22 = getelementptr inbounds %struct.nfp_qdisc, ptr %108, i32 0, i32 8
  %109 = ptrtoint ptr %offload_mark22 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %offload_mark22, align 1, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool23.not = icmp eq i8 %110, 0
  br i1 %tobool23.not, label %land.lhs.true, label %nfp_abm_qdisc_tree_deref_slot.exit97.if.end26_crit_edge

nfp_abm_qdisc_tree_deref_slot.exit97.if.end26_crit_edge: ; preds = %nfp_abm_qdisc_tree_deref_slot.exit97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

land.lhs.true:                                    ; preds = %nfp_abm_qdisc_tree_deref_slot.exit97
  %offloaded = getelementptr inbounds %struct.nfp_qdisc, ptr %108, i32 0, i32 9
  %111 = ptrtoint ptr %offloaded to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %offloaded, align 2, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool24.not = icmp eq i8 %112, 0
  br i1 %tobool24.not, label %land.lhs.true.if.end26_crit_edge, label %if.then25

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then25:                                        ; preds = %land.lhs.true
  %use_cnt.i = getelementptr inbounds %struct.nfp_qdisc, ptr %108, i32 0, i32 4
  %113 = ptrtoint ptr %use_cnt.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %use_cnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool.not.i98 = icmp eq i32 %114, 0
  br i1 %tobool.not.i98, label %if.then25.if.end.i_crit_edge, label %do.end.i

if.then25.if.end.i_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  %115 = ptrtoint ptr %alink to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %alink, align 8
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %116, align 4
  %cpp.i = getelementptr inbounds %struct.nfp_app, ptr %118, i32 0, i32 2
  %119 = ptrtoint ptr %cpp.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %cpp.i, align 4
  %call.i99 = call ptr @nfp_cpp_device(ptr noundef %120) #9
  %parent.i = getelementptr inbounds %struct.device, ptr %call.i99, i32 0, i32 1
  %121 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %parent.i, align 8
  %handle.i = getelementptr inbounds %struct.nfp_qdisc, ptr %108, i32 0, i32 2
  %123 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %handle.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %122, ptr noundef nonnull @.str.9, i32 noundef %124) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then25.if.end.i_crit_edge
  %type.i.i100 = getelementptr inbounds %struct.nfp_qdisc, ptr %108, i32 0, i32 1
  %125 = ptrtoint ptr %type.i.i100 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %type.i.i100, align 4
  %127 = and i32 %126, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %127)
  %128 = icmp eq i32 %127, 2
  br i1 %128, label %for.cond.preheader.i101, label %if.end.i.if.end26_crit_edge

if.end.i.if.end26_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

for.cond.preheader.i101:                          ; preds = %if.end.i
  %129 = getelementptr inbounds %struct.nfp_qdisc, ptr %108, i32 0, i32 10
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %129, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %cmp15.not.i = icmp eq i32 %131, 0
  br i1 %cmp15.not.i, label %for.cond.preheader.i101.if.end26_crit_edge, label %for.cond.preheader.i101.for.body.i104_crit_edge

for.cond.preheader.i101.for.body.i104_crit_edge:  ; preds = %for.cond.preheader.i101
  br label %for.body.i104

for.cond.preheader.i101.if.end26_crit_edge:       ; preds = %for.cond.preheader.i101
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

for.body.i104:                                    ; preds = %for.body.i104.for.body.i104_crit_edge, %for.cond.preheader.i101.for.body.i104_crit_edge
  %i.016.i = phi i32 [ %inc.i102, %for.body.i104.for.body.i104_crit_edge ], [ 0, %for.cond.preheader.i101.for.body.i104_crit_edge ]
  %backlog_pkts.i = getelementptr %struct.nfp_qdisc, ptr %108, i32 0, i32 10, i32 0, i32 1, i32 %i.016.i, i32 2, i32 2
  %inc.i102 = add nuw i32 %i.016.i, 1
  %132 = call ptr @memset(ptr %backlog_pkts.i, i32 0, i32 16)
  %133 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %129, align 8
  %cmp.i103 = icmp ult i32 %inc.i102, %134
  br i1 %cmp.i103, label %for.body.i104.for.body.i104_crit_edge, label %for.body.i104.if.end26_crit_edge

for.body.i104.if.end26_crit_edge:                 ; preds = %for.body.i104
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

for.body.i104.for.body.i104_crit_edge:            ; preds = %for.body.i104
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i104

if.end26:                                         ; preds = %for.body.i104.if.end26_crit_edge, %for.cond.preheader.i101.if.end26_crit_edge, %if.end.i.if.end26_crit_edge, %land.lhs.true.if.end26_crit_edge, %nfp_abm_qdisc_tree_deref_slot.exit97.if.end26_crit_edge
  %135 = ptrtoint ptr %offload_mark22 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %offload_mark22, align 1, !range !107
  %offloaded29 = getelementptr inbounds %struct.nfp_qdisc, ptr %108, i32 0, i32 9
  %137 = ptrtoint ptr %offloaded29 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %136, ptr %offloaded29, align 2
  %138 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %2, align 4
  %140 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %iter, align 4
  %sub.i.i77 = sub i32 %139, %141
  br label %while.cond.i82

while.cond.i82:                                   ; preds = %while.body.i86.while.cond.i82_crit_edge, %if.end26
  %slot.addr.0.i78 = phi ptr [ %slot.3, %if.end26 ], [ %incdec.ptr29.i83, %while.body.i86.while.cond.i82_crit_edge ]
  %count.0.i79 = phi i32 [ %sub.i.i77, %if.end26 ], [ %dec.i80, %while.body.i86.while.cond.i82_crit_edge ]
  %dec.i80 = add i32 %count.0.i79, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i80)
  %cmp.i81 = icmp sgt i32 %dec.i80, 0
  br i1 %cmp.i81, label %while.body.i86, label %while.cond.i82.for.cond13.loopexit_crit_edge

while.cond.i82.for.cond13.loopexit_crit_edge:     ; preds = %while.cond.i82
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond13.loopexit

while.body.i86:                                   ; preds = %while.cond.i82
  %incdec.ptr29.i83 = getelementptr ptr, ptr %slot.addr.0.i78, i32 1
  %142 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %iter, align 4
  %add.i.i84 = add i32 %143, 1
  store i32 %add.i.i84, ptr %iter, align 4
  %144 = ptrtoint ptr %incdec.ptr29.i83 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %incdec.ptr29.i83, align 4
  %tobool32.not.i85 = icmp eq ptr %145, null
  br i1 %tobool32.not.i85, label %while.body.i86.while.cond.i82_crit_edge, label %while.body.i86.for.cond13.loopexit_crit_edge, !prof !106

while.body.i86.for.cond13.loopexit_crit_edge:     ; preds = %while.body.i86
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond13.loopexit

while.body.i86.while.cond.i82_crit_edge:          ; preds = %while.body.i86
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i82

for.body35:                                       ; preds = %for.inc42.for.body35_crit_edge, %for.body35.lr.ph
  %i.1114 = phi i32 [ 0, %for.body35.lr.ph ], [ %inc43, %for.inc42.for.body35_crit_edge ]
  %146 = ptrtoint ptr %threshold_undef36 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %threshold_undef36, align 4
  %div3.i = lshr i32 %i.1114, 5
  %arrayidx.i = getelementptr i32, ptr %147, i32 %div3.i
  %148 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.1114, 31
  %150 = shl nuw i32 1, %and.i
  %151 = and i32 %149, %150
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool38.not = icmp eq i32 %151, 0
  br i1 %tobool38.not, label %for.body35.for.inc42_crit_edge, label %if.then39

for.body35.for.inc42_crit_edge:                   ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc42

if.then39:                                        ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #11
  %call40 = call i32 @__nfp_abm_ctrl_set_q_lvl(ptr noundef %1, i32 noundef %i.1114, i32 noundef 2147483647) #9
  br label %for.inc42

for.inc42:                                        ; preds = %if.then39, %for.body35.for.inc42_crit_edge
  %inc43 = add nuw i32 %i.1114, 1
  %152 = ptrtoint ptr %num_thresholds to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %num_thresholds, align 4
  %cmp34 = icmp ult i32 %inc43, %153
  br i1 %cmp34, label %for.inc42.for.body35_crit_edge, label %for.inc42.for.end44_crit_edge

for.inc42.for.end44_crit_edge:                    ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end44

for.inc42.for.body35_crit_edge:                   ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body35

for.end44:                                        ; preds = %for.inc42.for.end44_crit_edge, %for.cond33.preheader.for.end44_crit_edge
  %call45 = call i64 @ktime_get() #9
  call fastcc void @__nfp_abm_stats_update(ptr noundef %alink, i64 noundef %call45)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iter) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_next_chunk(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nfp_abm_ctrl_set_q_lvl(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__nfp_abm_stats_update(ptr noundef %alink, i64 noundef %time_now) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %last_stats_update = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 5
  %0 = ptrtoint ptr %last_stats_update to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %time_now, ptr %last_stats_update, align 8
  %root_qdisc = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 10
  %1 = ptrtoint ptr %root_qdisc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %root_qdisc, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %type.i = getelementptr inbounds %struct.nfp_qdisc, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.not.i = icmp eq i32 %4, 1
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.cond.preheader.i:                             ; preds = %if.then
  %total_queues.i = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 4
  %5 = ptrtoint ptr %total_queues.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %total_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp113.not.i = icmp eq i32 %6, 0
  br i1 %cmp113.not.i, label %for.cond.preheader.i.if.end_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end_crit_edge:            ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %children.i.i = getelementptr inbounds %struct.nfp_qdisc, ptr %2, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %children.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %children.i.i, align 8
  %arrayidx.i.i = getelementptr ptr, ptr %8, i32 %i.014.i
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i, align 4
  %switch.i = icmp ult ptr %10, inttoptr (i32 2 to ptr)
  br i1 %switch.i, label %for.body.i.for.inc.i_crit_edge, label %if.then2.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then2.i:                                       ; preds = %for.body.i
  %11 = ptrtoint ptr %alink to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %alink, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %cpp1.i.i = getelementptr inbounds %struct.nfp_app, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %cpp1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cpp1.i.i, align 4
  %offloaded.i.i = getelementptr inbounds %struct.nfp_qdisc, ptr %10, i32 0, i32 9
  %17 = ptrtoint ptr %offloaded.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %offloaded.i.i, align 2, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i11.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i11.i, label %if.then2.i.for.inc.i_crit_edge, label %for.cond.preheader.i.i

if.then2.i.for.inc.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.cond.preheader.i.i:                           ; preds = %if.then2.i
  %19 = getelementptr inbounds %struct.nfp_qdisc, ptr %10, i32 0, i32 10
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp38.not.i.i = icmp eq i32 %21, 0
  br i1 %cmp38.not.i.i, label %for.cond.preheader.i.i.for.inc.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.for.inc.i_crit_edge:       ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.039.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %stats.i.i = getelementptr %struct.nfp_qdisc, ptr %10, i32 0, i32 10, i32 0, i32 1, i32 %i.039.i.i, i32 2
  %call.i.i = tail call i32 @nfp_abm_ctrl_read_q_stats(ptr noundef %alink, i32 noundef %i.039.i.i, i32 noundef %i.014.i, ptr noundef %stats.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %for.body.i.i.if.end5.i.i_crit_edge, label %do.end.i.i

for.body.i.i.if.end5.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i.i

do.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i.i = tail call ptr @nfp_cpp_device(ptr noundef %16) #9
  %parent.i.i = getelementptr inbounds %struct.device, ptr %call4.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.12, i32 noundef %i.039.i.i, i32 noundef %i.014.i, i32 noundef %call.i.i) #12
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %do.end.i.i, %for.body.i.i.if.end5.i.i_crit_edge
  %xstats.i.i = getelementptr %struct.nfp_qdisc, ptr %10, i32 0, i32 10, i32 0, i32 1, i32 %i.039.i.i, i32 4
  %call8.i.i = tail call i32 @nfp_abm_ctrl_read_q_xstats(ptr noundef %alink, i32 noundef %i.039.i.i, i32 noundef %i.014.i, ptr noundef %xstats.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end5.i.i.for.inc.i.i_crit_edge, label %do.end13.i.i

if.end5.i.i.for.inc.i.i_crit_edge:                ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

do.end13.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call14.i.i = tail call ptr @nfp_cpp_device(ptr noundef %16) #9
  %parent15.i.i = getelementptr inbounds %struct.device, ptr %call14.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %parent15.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent15.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.15, i32 noundef %i.039.i.i, i32 noundef %i.014.i, i32 noundef %call8.i.i) #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %do.end13.i.i, %if.end5.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.039.i.i, 1
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %19, align 8
  %cmp.i12.i = icmp ult i32 %inc.i.i, %27
  br i1 %cmp.i12.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.for.inc.i_crit_edge

for.inc.i.i.for.inc.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i:                                        ; preds = %for.inc.i.i.for.inc.i_crit_edge, %for.cond.preheader.i.i.for.inc.i_crit_edge, %if.then2.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.014.i, 1
  %28 = ptrtoint ptr %total_queues.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %total_queues.i, align 8
  %cmp1.i = icmp ult i32 %inc.i, %29
  br i1 %cmp1.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %for.cond.preheader.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_abm_setup_tc_gred(ptr noundef %netdev, ptr noundef %alink, ptr noundef %opt) local_unnamed_addr #0 align 64 {
entry:
  %qdisc.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %opt, align 16
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %1, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %qdisc.i) #9
  %3 = ptrtoint ptr %qdisc.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %qdisc.i, align 4, !annotation !108
  %parent.i = getelementptr inbounds %struct.tc_gred_qopt_offload, ptr %opt, i32 0, i32 2
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %parent.i, align 8
  %handle.i = getelementptr inbounds %struct.tc_gred_qopt_offload, ptr %opt, i32 0, i32 1
  %6 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %handle.i, align 4
  %call.i = call fastcc i32 @nfp_abm_qdisc_replace(ptr noundef %netdev, ptr noundef %alink, i32 noundef 3, i32 noundef %5, i32 noundef %7, i32 noundef 0, ptr noundef nonnull %qdisc.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.nfp_abm_gred_replace.exit_crit_edge, label %if.end.i

sw.bb.nfp_abm_gred_replace.exit_crit_edge:        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_abm_gred_replace.exit

if.end.i:                                         ; preds = %sw.bb
  %8 = ptrtoint ptr %alink to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %alink, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %cpp1.i.i = getelementptr inbounds %struct.nfp_app, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %cpp1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cpp1.i.i, align 4
  %14 = getelementptr inbounds %struct.tc_gred_qopt_offload, ptr %opt, i32 0, i32 3
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 16, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.end.i.do.end.i.i_crit_edge

if.end.i.do.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %wred_on.i.i = getelementptr inbounds %struct.tc_gred_qopt_offload_params, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %wred_on.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %wred_on.i.i, align 1, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool4.not.i.i = icmp eq i8 %18, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.do.end.i.i_crit_edge

lor.lhs.false.i.i.do.end.i.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %lor.lhs.false.i.i.do.end.i.i_crit_edge, %if.end.i.do.end.i.i_crit_edge
  %call.i.i = tail call ptr @nfp_cpp_device(ptr noundef %13) #9
  %parent.i.i = getelementptr inbounds %struct.device, ptr %call.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent.i.i, align 8
  %21 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %parent.i, align 8
  %23 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %handle.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.19, i32 noundef %22, i32 noundef %24) #12
  br label %if.end13.sink.split.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %dp_def.i.i = getelementptr inbounds %struct.tc_gred_qopt_offload, ptr %opt, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %25 = ptrtoint ptr %dp_def.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dp_def.i.i, align 8
  %def_band.i.i = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 8
  %27 = ptrtoint ptr %def_band.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %def_band.i.i, align 1
  %conv.i.i = zext i8 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %conv.i.i)
  %cmp.not.i.i = icmp eq i32 %26, %conv.i.i
  br i1 %cmp.not.i.i, label %if.end17.i.i, label %do.end10.i.i

do.end10.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call11.i.i = tail call ptr @nfp_cpp_device(ptr noundef %13) #9
  %parent12.i.i = getelementptr inbounds %struct.device, ptr %call11.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %parent12.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent12.i.i, align 8
  %31 = ptrtoint ptr %def_band.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %def_band.i.i, align 1
  %conv14.i.i = zext i8 %32 to i32
  %33 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %parent.i, align 8
  %35 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %handle.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %30, ptr noundef nonnull @.str.22, i32 noundef %conv14.i.i, i32 noundef %34, i32 noundef %36) #12
  br label %if.end13.sink.split.i

if.end17.i.i:                                     ; preds = %if.end.i.i
  %dp_cnt.i.i = getelementptr inbounds %struct.tc_gred_qopt_offload_params, ptr %14, i32 0, i32 2
  %37 = ptrtoint ptr %dp_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dp_cnt.i.i, align 4
  %num_bands.i.i = getelementptr inbounds %struct.nfp_abm, ptr %9, i32 0, i32 4
  %39 = ptrtoint ptr %num_bands.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_bands.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp18.not.i.i = icmp eq i32 %38, %40
  br i1 %cmp18.not.i.i, label %for.cond.preheader.i.i, label %do.end23.i.i

for.cond.preheader.i.i:                           ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp31160.not.i.i = icmp eq i32 %38, 0
  br i1 %cmp31160.not.i.i, label %for.cond.preheader.i.i.if.then3.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.if.then3.i_crit_edge:      ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %tab.i.i = getelementptr inbounds %struct.tc_gred_qopt_offload, ptr %opt, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %action_mask.i151.i.i = getelementptr inbounds %struct.nfp_abm, ptr %9, i32 0, i32 5
  br label %for.body.i.i

do.end23.i.i:                                     ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call24.i.i = tail call ptr @nfp_cpp_device(ptr noundef %13) #9
  %parent25.i.i = getelementptr inbounds %struct.device, ptr %call24.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %parent25.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %parent25.i.i, align 8
  %43 = ptrtoint ptr %num_bands.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_bands.i.i, align 4
  %45 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %parent.i, align 8
  %47 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %handle.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str.25, i32 noundef %44, i32 noundef %46, i32 noundef %48) #12
  br label %if.end13.sink.split.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0161.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [16 x %struct.tc_gred_vq_qopt_offload_params], ptr %tab.i.i, i32 0, i32 %i.0161.i.i
  %49 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.i.i, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool33.not.i.i = icmp eq i8 %50, 0
  br i1 %tobool33.not.i.i, label %for.body.i.i.if.end13.sink.split.i_crit_edge, label %if.end35.i.i

for.body.i.i.if.end13.sink.split.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.sink.split.i

if.end35.i.i:                                     ; preds = %for.body.i.i
  %is_ecn.i.i = getelementptr [16 x %struct.tc_gred_vq_qopt_offload_params], ptr %tab.i.i, i32 0, i32 %i.0161.i.i, i32 5
  %51 = ptrtoint ptr %is_ecn.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %is_ecn.i.i, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool36.not.i.i = icmp eq i8 %52, 0
  %53 = ptrtoint ptr %action_mask.i151.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %action_mask.i151.i.i, align 4
  br i1 %tobool36.not.i.i, label %land.lhs.true.i.i, label %land.lhs.true50.i.i

land.lhs.true.i.i:                                ; preds = %if.end35.i.i
  %and.i.i.i = and i32 %54, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %do.end41.i.i, label %land.lhs.true.i.i.if.end60.i.i_crit_edge

land.lhs.true.i.i.if.end60.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60.i.i

do.end41.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call42.i.i = tail call ptr @nfp_cpp_device(ptr noundef %13) #9
  %parent43.i.i = getelementptr inbounds %struct.device, ptr %call42.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %parent43.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %parent43.i.i, align 8
  %57 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %parent.i, align 8
  %59 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %handle.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %56, ptr noundef nonnull @.str.28, i32 noundef %58, i32 noundef %60, i32 noundef %i.0161.i.i) #12
  br label %if.end13.sink.split.i

land.lhs.true50.i.i:                              ; preds = %if.end35.i.i
  %and.i152.i.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i152.i.i)
  %tobool.i153.not.i.i = icmp eq i32 %and.i152.i.i, 0
  br i1 %tobool.i153.not.i.i, label %do.end55.i.i, label %land.lhs.true50.i.i.if.end60.i.i_crit_edge

land.lhs.true50.i.i.if.end60.i.i_crit_edge:       ; preds = %land.lhs.true50.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60.i.i

do.end55.i.i:                                     ; preds = %land.lhs.true50.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call56.i.i = tail call ptr @nfp_cpp_device(ptr noundef %13) #9
  %parent57.i.i = getelementptr inbounds %struct.device, ptr %call56.i.i, i32 0, i32 1
  %61 = ptrtoint ptr %parent57.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %parent57.i.i, align 8
  %63 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %parent.i, align 8
  %65 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %handle.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %62, ptr noundef nonnull @.str.31, i32 noundef %64, i32 noundef %66, i32 noundef %i.0161.i.i) #12
  br label %if.end13.sink.split.i

if.end60.i.i:                                     ; preds = %land.lhs.true50.i.i.if.end60.i.i_crit_edge, %land.lhs.true.i.i.if.end60.i.i_crit_edge
  %is_harddrop.i.i = getelementptr [16 x %struct.tc_gred_vq_qopt_offload_params], ptr %tab.i.i, i32 0, i32 %i.0161.i.i, i32 6
  %67 = ptrtoint ptr %is_harddrop.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %is_harddrop.i.i, align 1, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool61.not.i.i = icmp eq i8 %68, 0
  br i1 %tobool61.not.i.i, label %if.end70.i.i, label %do.end65.i.i

do.end65.i.i:                                     ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call66.i.i = tail call ptr @nfp_cpp_device(ptr noundef %13) #9
  %parent67.i.i = getelementptr inbounds %struct.device, ptr %call66.i.i, i32 0, i32 1
  %69 = ptrtoint ptr %parent67.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %parent67.i.i, align 8
  %71 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %parent.i, align 8
  %73 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %handle.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %70, ptr noundef nonnull @.str.34, i32 noundef %72, i32 noundef %74, i32 noundef %i.0161.i.i) #12
  br label %if.end13.sink.split.i

if.end70.i.i:                                     ; preds = %if.end60.i.i
  %min.i.i = getelementptr [16 x %struct.tc_gred_vq_qopt_offload_params], ptr %tab.i.i, i32 0, i32 %i.0161.i.i, i32 3
  %75 = ptrtoint ptr %min.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %min.i.i, align 4
  %max.i.i = getelementptr [16 x %struct.tc_gred_vq_qopt_offload_params], ptr %tab.i.i, i32 0, i32 %i.0161.i.i, i32 4
  %77 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %max.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %78)
  %cmp71.not.i.i = icmp eq i32 %76, %78
  br i1 %cmp71.not.i.i, label %if.end81.i.i, label %do.end76.i.i

do.end76.i.i:                                     ; preds = %if.end70.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call77.i.i = tail call ptr @nfp_cpp_device(ptr noundef %13) #9
  %parent78.i.i = getelementptr inbounds %struct.device, ptr %call77.i.i, i32 0, i32 1
  %79 = ptrtoint ptr %parent78.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %parent78.i.i, align 8
  %81 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %parent.i, align 8
  %83 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %handle.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %80, ptr noundef nonnull @.str.37, i32 noundef %82, i32 noundef %84, i32 noundef %i.0161.i.i) #12
  br label %if.end13.sink.split.i

if.end81.i.i:                                     ; preds = %if.end70.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp83.i.i = icmp slt i32 %76, 0
  br i1 %cmp83.i.i, label %do.end88.i.i, label %for.inc.i.i

do.end88.i.i:                                     ; preds = %if.end81.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call89.i.i = tail call ptr @nfp_cpp_device(ptr noundef %13) #9
  %parent90.i.i = getelementptr inbounds %struct.device, ptr %call89.i.i, i32 0, i32 1
  %85 = ptrtoint ptr %parent90.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %parent90.i.i, align 8
  %87 = ptrtoint ptr %min.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %min.i.i, align 4
  %89 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %parent.i, align 8
  %91 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %handle.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %86, ptr noundef nonnull @.str.40, i32 noundef %88, i32 noundef 2147483647, i32 noundef %90, i32 noundef %92, i32 noundef %i.0161.i.i) #12
  br label %if.end13.sink.split.i

for.inc.i.i:                                      ; preds = %if.end81.i.i
  %inc.i.i = add nuw i32 %i.0161.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %38
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.then3.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.if.then3.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i

if.then3.i:                                       ; preds = %for.inc.i.i.if.then3.i_crit_edge, %for.cond.preheader.i.i.if.then3.i_crit_edge
  %93 = ptrtoint ptr %qdisc.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %.sink.i = load ptr, ptr %qdisc.i, align 4
  %params_ok40.i = getelementptr inbounds %struct.nfp_qdisc, ptr %.sink.i, i32 0, i32 7
  %94 = ptrtoint ptr %params_ok40.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %params_ok40.i, align 4
  %95 = ptrtoint ptr %dp_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %dp_cnt.i.i, align 4
  %97 = getelementptr inbounds %struct.nfp_qdisc, ptr %.sink.i, i32 0, i32 10
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %96, ptr %97, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp556.not.i = icmp eq i32 %96, 0
  br i1 %cmp556.not.i, label %if.then3.i.if.end13.i_crit_edge, label %for.body.lr.ph.i

if.then3.i.if.end13.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

for.body.lr.ph.i:                                 ; preds = %if.then3.i
  %tab.i = getelementptr inbounds %struct.tc_gred_qopt_offload, ptr %opt, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.057.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %is_ecn.i = getelementptr [16 x %struct.tc_gred_vq_qopt_offload_params], ptr %tab.i, i32 0, i32 %i.057.i, i32 5
  %99 = ptrtoint ptr %is_ecn.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %is_ecn.i, align 4, !range !107
  %arrayidx7.i = getelementptr %struct.nfp_qdisc, ptr %.sink.i, i32 0, i32 10, i32 0, i32 1, i32 %i.057.i
  %101 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %arrayidx7.i, align 8
  %min.i = getelementptr [16 x %struct.tc_gred_vq_qopt_offload_params], ptr %tab.i, i32 0, i32 %i.057.i, i32 3
  %102 = ptrtoint ptr %min.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %min.i, align 4
  %threshold.i = getelementptr %struct.nfp_qdisc, ptr %.sink.i, i32 0, i32 10, i32 0, i32 1, i32 %i.057.i, i32 1
  %104 = ptrtoint ptr %threshold.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %threshold.i, align 4
  %inc.i = add nuw i32 %i.057.i, 1
  %105 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %97, align 8
  %cmp5.i = icmp ult i32 %inc.i, %106
  br i1 %cmp5.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end13.i_crit_edge

for.body.i.if.end13.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end13.sink.split.i:                            ; preds = %do.end88.i.i, %do.end76.i.i, %do.end65.i.i, %do.end55.i.i, %do.end41.i.i, %for.body.i.i.if.end13.sink.split.i_crit_edge, %do.end23.i.i, %do.end10.i.i, %do.end.i.i
  %107 = ptrtoint ptr %qdisc.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %.sink80.i = load ptr, ptr %qdisc.i, align 4
  %params_ok.i = getelementptr inbounds %struct.nfp_qdisc, ptr %.sink80.i, i32 0, i32 7
  %108 = ptrtoint ptr %params_ok.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %params_ok.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.end13.sink.split.i, %for.body.i.if.end13.i_crit_edge, %if.then3.i.if.end13.i_crit_edge
  %109 = phi ptr [ %.sink.i, %if.then3.i.if.end13.i_crit_edge ], [ %.sink80.i, %if.end13.sink.split.i ], [ %.sink.i, %for.body.i.if.end13.i_crit_edge ]
  %use_cnt.i = getelementptr inbounds %struct.nfp_qdisc, ptr %109, i32 0, i32 4
  %110 = ptrtoint ptr %use_cnt.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %use_cnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool14.not.i = icmp eq i32 %111, 0
  br i1 %tobool14.not.i, label %if.end13.i.nfp_abm_gred_replace.exit_crit_edge, label %if.then15.i

if.end13.i.nfp_abm_gred_replace.exit_crit_edge:   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_abm_gred_replace.exit

if.then15.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nfp_abm_qdisc_offload_update(ptr noundef %alink) #9
  br label %nfp_abm_gred_replace.exit

nfp_abm_gred_replace.exit:                        ; preds = %if.then15.i, %if.end13.i.nfp_abm_gred_replace.exit_crit_edge, %sw.bb.nfp_abm_gred_replace.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %sw.bb.nfp_abm_gred_replace.exit_crit_edge ], [ 0, %if.then15.i ], [ 0, %if.end13.i.nfp_abm_gred_replace.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qdisc.i) #9
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %handle = getelementptr inbounds %struct.tc_gred_qopt_offload, ptr %opt, i32 0, i32 1
  %112 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %handle, align 4
  tail call fastcc void @nfp_abm_qdisc_destroy(ptr noundef %netdev, ptr noundef %alink, i32 noundef %113)
  br label %return

sw.bb2:                                           ; preds = %entry
  %handle3 = getelementptr inbounds %struct.tc_gred_qopt_offload, ptr %opt, i32 0, i32 1
  %114 = ptrtoint ptr %handle3 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %handle3, align 4
  %116 = getelementptr inbounds %struct.tc_gred_qopt_offload, ptr %opt, i32 0, i32 3
  %call.i.i12 = tail call i64 @ktime_get() #9
  %last_stats_update.i.i = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 5
  %117 = ptrtoint ptr %last_stats_update.i.i to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %last_stats_update.i.i, align 8
  %sub.i.i = sub i64 %call.i.i12, %118
  call void @__sanitizer_cov_trace_const_cmp8(i64 2500000, i64 %sub.i.i)
  %cmp.i.i = icmp ult i64 %sub.i.i, 2500000
  br i1 %cmp.i.i, label %sw.bb2.nfp_abm_stats_update.exit.i_crit_edge, label %if.end.i.i13

sw.bb2.nfp_abm_stats_update.exit.i_crit_edge:     ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_abm_stats_update.exit.i

if.end.i.i13:                                     ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @__nfp_abm_stats_update(ptr noundef %alink, i64 noundef %call.i.i12) #9
  br label %nfp_abm_stats_update.exit.i

nfp_abm_stats_update.exit.i:                      ; preds = %if.end.i.i13, %sw.bb2.nfp_abm_stats_update.exit.i_crit_edge
  %qdiscs.i.i = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 11
  %and.i.i = and i32 %115, -65536
  %call.i58.i = tail call ptr @radix_tree_lookup(ptr noundef %qdiscs.i.i, i32 noundef %and.i.i) #9
  %tobool.not.i = icmp eq ptr %call.i58.i, null
  br i1 %tobool.not.i, label %nfp_abm_stats_update.exit.i.return_crit_edge, label %for.cond.preheader.i

nfp_abm_stats_update.exit.i.return_crit_edge:     ; preds = %nfp_abm_stats_update.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

for.cond.preheader.i:                             ; preds = %nfp_abm_stats_update.exit.i
  %119 = getelementptr inbounds %struct.nfp_qdisc, ptr %call.i58.i, i32 0, i32 10
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %119, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp60.not.i = icmp eq i32 %121, 0
  br i1 %cmp60.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i14_crit_edge

for.cond.preheader.i.for.body.i14_crit_edge:      ; preds = %for.cond.preheader.i
  br label %for.body.i14

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i14:                                     ; preds = %for.inc.i.for.body.i14_crit_edge, %for.cond.preheader.i.for.body.i14_crit_edge
  %i.061.i = phi i32 [ %inc.i15, %for.inc.i.for.body.i14_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i14_crit_edge ]
  %arrayidx.i = getelementptr %struct.tc_gred_qopt_offload_stats, ptr %116, i32 0, i32 2, i32 %i.061.i
  %122 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx.i, align 4
  %tobool1.not.i = icmp eq ptr %123, null
  br i1 %tobool1.not.i, label %for.body.i14.for.inc.i_crit_edge, label %if.end3.i

for.body.i14.for.inc.i_crit_edge:                 ; preds = %for.body.i14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end3.i:                                        ; preds = %for.body.i14
  call void @__sanitizer_cov_trace_pc() #11
  %stats5.i = getelementptr %struct.nfp_qdisc, ptr %call.i58.i, i32 0, i32 10, i32 0, i32 1, i32 %i.061.i, i32 2
  %prev_stats.i = getelementptr %struct.nfp_qdisc, ptr %call.i58.i, i32 0, i32 10, i32 0, i32 1, i32 %i.061.i, i32 3
  %arrayidx8.i = getelementptr [16 x %struct.gnet_stats_basic_sync], ptr %116, i32 0, i32 %i.061.i
  %arrayidx9.i = getelementptr %struct.tc_gred_qopt_offload_stats, ptr %116, i32 0, i32 1, i32 %i.061.i
  tail call fastcc void @nfp_abm_stats_calculate(ptr noundef %stats5.i, ptr noundef %prev_stats.i, ptr noundef %arrayidx8.i, ptr noundef %arrayidx9.i) #9
  %124 = call ptr @memcpy(ptr %prev_stats.i, ptr %stats5.i, i32 48)
  %xstats18.i = getelementptr %struct.nfp_qdisc, ptr %call.i58.i, i32 0, i32 10, i32 0, i32 1, i32 %i.061.i, i32 4
  %prev_xstats.i = getelementptr %struct.nfp_qdisc, ptr %call.i58.i, i32 0, i32 10, i32 0, i32 1, i32 %i.061.i, i32 5
  %125 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx.i, align 4
  %127 = ptrtoint ptr %xstats18.i to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %xstats18.i, align 8
  %129 = ptrtoint ptr %prev_xstats.i to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %prev_xstats.i, align 8
  %sub.i59.i = sub i64 %128, %130
  %forced_mark.i.i = getelementptr inbounds %struct.red_stats, ptr %126, i32 0, i32 3
  %131 = ptrtoint ptr %forced_mark.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %forced_mark.i.i, align 4
  %133 = trunc i64 %sub.i59.i to i32
  %conv2.i.i = add i32 %132, %133
  store i32 %conv2.i.i, ptr %forced_mark.i.i, align 4
  %pdrop.i.i = getelementptr %struct.nfp_qdisc, ptr %call.i58.i, i32 0, i32 10, i32 0, i32 1, i32 %i.061.i, i32 4, i32 1
  %134 = ptrtoint ptr %pdrop.i.i to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %pdrop.i.i, align 8
  %pdrop3.i.i = getelementptr %struct.nfp_qdisc, ptr %call.i58.i, i32 0, i32 10, i32 0, i32 1, i32 %i.061.i, i32 5, i32 1
  %136 = ptrtoint ptr %pdrop3.i.i to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %pdrop3.i.i, align 8
  %sub4.i.i = sub i64 %135, %137
  %pdrop5.i.i = getelementptr inbounds %struct.red_stats, ptr %126, i32 0, i32 4
  %138 = ptrtoint ptr %pdrop5.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %pdrop5.i.i, align 4
  %140 = trunc i64 %sub4.i.i to i32
  %conv8.i.i = add i32 %139, %140
  store i32 %conv8.i.i, ptr %pdrop5.i.i, align 4
  %141 = call ptr @memcpy(ptr %prev_xstats.i, ptr %xstats18.i, i32 16)
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end3.i, %for.body.i14.for.inc.i_crit_edge
  %inc.i15 = add nuw i32 %i.061.i, 1
  %142 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %119, align 8
  %cmp.i16 = icmp ult i32 %inc.i15, %143
  br i1 %cmp.i16, label %for.inc.i.for.body.i14_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.i.for.body.i14_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i14

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %offloaded.i = getelementptr inbounds %struct.nfp_qdisc, ptr %call.i58.i, i32 0, i32 9
  %144 = ptrtoint ptr %offloaded.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %offloaded.i, align 2, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool29.not.i = icmp eq i8 %145, 0
  %cond.i = select i1 %tobool29.not.i, i32 -95, i32 0
  br label %return

return:                                           ; preds = %for.end.i, %nfp_abm_stats_update.exit.i.return_crit_edge, %sw.bb1, %nfp_abm_gred_replace.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb1 ], [ %retval.0.i, %nfp_abm_gred_replace.exit ], [ -95, %entry.return_crit_edge ], [ %cond.i, %for.end.i ], [ -95, %nfp_abm_stats_update.exit.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfp_abm_qdisc_destroy(ptr noundef %netdev, ptr noundef %alink, i32 noundef %handle) unnamed_addr #0 align 64 {
entry:
  %iter.i.i = alloca %struct.radix_tree_iter, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %qdiscs.i = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 11
  %and.i = and i32 %handle, -65536
  %call.i = tail call ptr @radix_tree_lookup(ptr noundef %qdiscs.i, i32 noundef %and.i) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %root_qdisc = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 10
  %0 = ptrtoint ptr %root_qdisc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root_qdisc, align 8
  %cmp = icmp eq ptr %1, %call.i
  br i1 %cmp, label %if.then1, label %if.end.if.end2_crit_edge

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %use_cnt = getelementptr inbounds %struct.nfp_qdisc, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %use_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %use_cnt, align 8
  %dec = add i32 %3, -1
  store i32 %dec, ptr %use_cnt, align 8
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end.if.end2_crit_edge
  %num_children = getelementptr inbounds %struct.nfp_qdisc, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %num_children to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_children, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp9.i.not = icmp eq i32 %5, 0
  br i1 %cmp9.i.not, label %if.end2.if.end.i_crit_edge, label %for.body.lr.ph.i

if.end2.if.end.i_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

for.body.lr.ph.i:                                 ; preds = %if.end2
  %children.i.i = getelementptr inbounds %struct.nfp_qdisc, ptr %call.i, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %children.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %children.i.i, align 8
  %arrayidx.i.i = getelementptr ptr, ptr %7, i32 %i.010.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  %switch.i = icmp ult ptr %9, inttoptr (i32 2 to ptr)
  br i1 %switch.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %use_cnt.i = getelementptr inbounds %struct.nfp_qdisc, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %use_cnt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %use_cnt.i, align 8
  %dec.i = add i32 %11, -1
  store i32 %dec.i, ptr %use_cnt.i, align 8
  %12 = ptrtoint ptr %children.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %children.i.i, align 8
  %arrayidx2.i = getelementptr ptr, ptr %13, i32 %i.010.i
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx2.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.inc.i.if.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.if.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %for.inc.i.if.end.i_crit_edge, %if.end2.if.end.i_crit_edge
  %call.i19 = tail call ptr @nfp_port_from_netdev(ptr noundef %netdev) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iter.i.i) #9
  %15 = getelementptr inbounds %struct.radix_tree_iter, ptr %iter.i.i, i32 0, i32 1
  %use_cnt.i.i = getelementptr inbounds %struct.nfp_qdisc, ptr %call.i, i32 0, i32 4
  %16 = getelementptr inbounds i8, ptr %iter.i.i, i32 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 -1, ptr %16, align 4
  %18 = ptrtoint ptr %use_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %use_cnt.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i, label %if.end.i.nfp_abm_qdisc_clear_mq.exit.i_crit_edge, label %if.end.i.i

if.end.i.nfp_abm_qdisc_clear_mq.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_abm_qdisc_clear_mq.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  %type.i.i = getelementptr inbounds %struct.nfp_qdisc, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.i.i = icmp eq i32 %21, 1
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end.i.i.if.end5.i.i_crit_edge

if.end.i.i.if.end5.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %22 = ptrtoint ptr %root_qdisc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %root_qdisc, align 8
  %cmp1.i.i = icmp eq ptr %23, %call.i
  br i1 %cmp1.i.i, label %land.lhs.true2.i.i, label %land.lhs.true.i.i.if.end5.i.i_crit_edge

land.lhs.true.i.i.if.end5.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %reg_state.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 121
  %24 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %bf.load.i.i)
  %cmp3.i.i = icmp eq i8 %bf.load.i.i, 2
  br i1 %cmp3.i.i, label %land.lhs.true2.i.i.nfp_abm_qdisc_clear_mq.exit.i_crit_edge, label %land.lhs.true2.i.i.if.end5.i.i_crit_edge

land.lhs.true2.i.i.if.end5.i.i_crit_edge:         ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i.i

land.lhs.true2.i.i.nfp_abm_qdisc_clear_mq.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_abm_qdisc_clear_mq.exit.i

if.end5.i.i:                                      ; preds = %land.lhs.true2.i.i.if.end5.i.i_crit_edge, %land.lhs.true.i.i.if.end5.i.i_crit_edge, %if.end.i.i.if.end5.i.i_crit_edge
  %25 = ptrtoint ptr %iter.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %iter.i.i, align 4
  %26 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %15, align 4
  br label %for.cond.i.i

for.cond.i.i.loopexit:                            ; preds = %while.body.i.i.i.for.cond.i.i.loopexit_crit_edge, %while.cond.i.i.i.for.cond.i.i.loopexit_crit_edge
  %slot.0.i.i.ph = phi ptr [ null, %while.cond.i.i.i.for.cond.i.i.loopexit_crit_edge ], [ %incdec.ptr29.i.i.i, %while.body.i.i.i.for.cond.i.i.loopexit_crit_edge ]
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.loopexit, %if.end5.i.i
  %slot.0.i.i = phi ptr [ null, %if.end5.i.i ], [ %slot.0.i.i.ph, %for.cond.i.i.loopexit ]
  %mq_refs.0.i.i = phi i32 [ 0, %if.end5.i.i ], [ %mq_refs.3.i.i, %for.cond.i.i.loopexit ]
  %tobool6.not.i.i = icmp eq ptr %slot.0.i.i, null
  br i1 %tobool6.not.i.i, label %lor.rhs.i.i, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

lor.rhs.i.i:                                      ; preds = %for.cond.i.i
  %call7.i.i = call ptr @radix_tree_next_chunk(ptr noundef %qdiscs.i, ptr noundef nonnull %iter.i.i, i32 noundef 0) #9
  %tobool8.not.i.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not.i.i, label %for.end28.i.i, label %lor.rhs.i.i.for.body.i.i_crit_edge

lor.rhs.i.i.for.body.i.i_crit_edge:               ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %lor.rhs.i.i.for.body.i.i_crit_edge, %for.cond.i.i.for.body.i.i_crit_edge
  %slot.1.i.i = phi ptr [ %slot.0.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ %call7.i.i, %lor.rhs.i.i.for.body.i.i_crit_edge ]
  %call.i.i.i = call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call.i.i.i, label %for.body.i.i.nfp_abm_qdisc_tree_deref_slot.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

for.body.i.i.nfp_abm_qdisc_tree_deref_slot.exit.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_abm_qdisc_tree_deref_slot.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.nfp_abm_qdisc_tree_deref_slot.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.nfp_abm_qdisc_tree_deref_slot.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_abm_qdisc_tree_deref_slot.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @nfp_abm_qdisc_tree_deref_slot.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.nfp_abm_qdisc_tree_deref_slot.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.nfp_abm_qdisc_tree_deref_slot.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_abm_qdisc_tree_deref_slot.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfp_abm_qdisc_tree_deref_slot.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 29, ptr noundef nonnull @.str.1) #9
  br label %nfp_abm_qdisc_tree_deref_slot.exit.i.i

nfp_abm_qdisc_tree_deref_slot.exit.i.i:           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.nfp_abm_qdisc_tree_deref_slot.exit.i.i_crit_edge, %land.lhs.true.i.i.i.nfp_abm_qdisc_tree_deref_slot.exit.i.i_crit_edge, %for.body.i.i.nfp_abm_qdisc_tree_deref_slot.exit.i.i_crit_edge
  %27 = ptrtoint ptr %slot.1.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %slot.1.i.i, align 4
  %type10.i.i = getelementptr inbounds %struct.nfp_qdisc, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %type10.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %type10.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp11.not.i.i = icmp eq i32 %30, 1
  br i1 %cmp11.not.i.i, label %lor.lhs.false.i.i, label %nfp_abm_qdisc_tree_deref_slot.exit.i.i.cleanup.i.i_crit_edge

nfp_abm_qdisc_tree_deref_slot.exit.i.i.cleanup.i.i_crit_edge: ; preds = %nfp_abm_qdisc_tree_deref_slot.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

lor.lhs.false.i.i:                                ; preds = %nfp_abm_qdisc_tree_deref_slot.exit.i.i
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %28, align 8
  %cmp13.not.i.i = icmp eq ptr %32, %netdev
  br i1 %cmp13.not.i.i, label %for.cond16.preheader.i.i, label %lor.lhs.false.i.i.cleanup.i.i_crit_edge

lor.lhs.false.i.i.cleanup.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

for.cond16.preheader.i.i:                         ; preds = %lor.lhs.false.i.i
  %num_children.i.i = getelementptr inbounds %struct.nfp_qdisc, ptr %28, i32 0, i32 5
  %33 = ptrtoint ptr %num_children.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_children.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp1777.not.i.i = icmp eq i32 %34, 0
  br i1 %cmp1777.not.i.i, label %for.cond16.preheader.i.i.cleanup.i.i_crit_edge, label %for.body18.lr.ph.i.i

for.cond16.preheader.i.i.cleanup.i.i_crit_edge:   ; preds = %for.cond16.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

for.body18.lr.ph.i.i:                             ; preds = %for.cond16.preheader.i.i
  %children.i.i20 = getelementptr inbounds %struct.nfp_qdisc, ptr %28, i32 0, i32 6
  br label %for.body18.i.i

for.body18.i.i:                                   ; preds = %for.inc.i.i.for.body18.i.i_crit_edge, %for.body18.lr.ph.i.i
  %mq_refs.179.i.i = phi i32 [ %mq_refs.0.i.i, %for.body18.lr.ph.i.i ], [ %mq_refs.2.i.i, %for.inc.i.i.for.body18.i.i_crit_edge ]
  %i.078.i.i = phi i32 [ 0, %for.body18.lr.ph.i.i ], [ %inc24.i.i, %for.inc.i.i.for.body18.i.i_crit_edge ]
  %35 = ptrtoint ptr %children.i.i20 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %children.i.i20, align 8
  %arrayidx.i.i21 = getelementptr ptr, ptr %36, i32 %i.078.i.i
  %37 = ptrtoint ptr %arrayidx.i.i21 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i.i21, align 4
  %cmp19.i.i = icmp eq ptr %38, %call.i
  br i1 %cmp19.i.i, label %if.then20.i.i, label %for.body18.i.i.for.inc.i.i_crit_edge

for.body18.i.i.for.inc.i.i_crit_edge:             ; preds = %for.body18.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then20.i.i:                                    ; preds = %for.body18.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %arrayidx.i.i21 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %arrayidx.i.i21, align 4
  %inc.i.i = add i32 %mq_refs.179.i.i, 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then20.i.i, %for.body18.i.i.for.inc.i.i_crit_edge
  %mq_refs.2.i.i = phi i32 [ %inc.i.i, %if.then20.i.i ], [ %mq_refs.179.i.i, %for.body18.i.i.for.inc.i.i_crit_edge ]
  %inc24.i.i = add nuw i32 %i.078.i.i, 1
  %40 = ptrtoint ptr %num_children.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_children.i.i, align 4
  %cmp17.i.i = icmp ult i32 %inc24.i.i, %41
  br i1 %cmp17.i.i, label %for.inc.i.i.for.body18.i.i_crit_edge, label %for.inc.i.i.cleanup.i.i_crit_edge

for.inc.i.i.cleanup.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

for.inc.i.i.for.body18.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body18.i.i

cleanup.i.i:                                      ; preds = %for.inc.i.i.cleanup.i.i_crit_edge, %for.cond16.preheader.i.i.cleanup.i.i_crit_edge, %lor.lhs.false.i.i.cleanup.i.i_crit_edge, %nfp_abm_qdisc_tree_deref_slot.exit.i.i.cleanup.i.i_crit_edge
  %mq_refs.3.i.i = phi i32 [ %mq_refs.0.i.i, %lor.lhs.false.i.i.cleanup.i.i_crit_edge ], [ %mq_refs.0.i.i, %nfp_abm_qdisc_tree_deref_slot.exit.i.i.cleanup.i.i_crit_edge ], [ %mq_refs.0.i.i, %for.cond16.preheader.i.i.cleanup.i.i_crit_edge ], [ %mq_refs.2.i.i, %for.inc.i.i.cleanup.i.i_crit_edge ]
  %42 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %15, align 4
  %44 = ptrtoint ptr %iter.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %iter.i.i, align 4
  %sub.i.i.i.i = sub i32 %43, %45
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i.i.i.while.cond.i.i.i_crit_edge, %cleanup.i.i
  %slot.addr.0.i.i.i = phi ptr [ %slot.1.i.i, %cleanup.i.i ], [ %incdec.ptr29.i.i.i, %while.body.i.i.i.while.cond.i.i.i_crit_edge ]
  %count.0.i.i.i = phi i32 [ %sub.i.i.i.i, %cleanup.i.i ], [ %dec.i.i.i, %while.body.i.i.i.while.cond.i.i.i_crit_edge ]
  %dec.i.i.i = add i32 %count.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %cmp.i.i.i = icmp sgt i32 %dec.i.i.i, 0
  br i1 %cmp.i.i.i, label %while.body.i.i.i, label %while.cond.i.i.i.for.cond.i.i.loopexit_crit_edge

while.cond.i.i.i.for.cond.i.i.loopexit_crit_edge: ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i.loopexit

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  %incdec.ptr29.i.i.i = getelementptr ptr, ptr %slot.addr.0.i.i.i, i32 1
  %46 = ptrtoint ptr %iter.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %iter.i.i, align 4
  %add.i.i.i.i = add i32 %47, 1
  store i32 %add.i.i.i.i, ptr %iter.i.i, align 4
  %48 = ptrtoint ptr %incdec.ptr29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %incdec.ptr29.i.i.i, align 4
  %tobool32.not.i.i.i = icmp eq ptr %49, null
  br i1 %tobool32.not.i.i.i, label %while.body.i.i.i.while.cond.i.i.i_crit_edge, label %while.body.i.i.i.for.cond.i.i.loopexit_crit_edge, !prof !106

while.body.i.i.i.for.cond.i.i.loopexit_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i.loopexit

while.body.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i.i

for.end28.i.i:                                    ; preds = %lor.rhs.i.i
  %50 = ptrtoint ptr %use_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %use_cnt.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %mq_refs.0.i.i)
  %cmp30.not.i.i = icmp eq i32 %51, %mq_refs.0.i.i
  br i1 %cmp30.not.i.i, label %for.end28.i.i.nfp_abm_qdisc_clear_mq.exit.i_crit_edge, label %do.end.i.i, !prof !109

for.end28.i.i.nfp_abm_qdisc_clear_mq.exit.i_crit_edge: ; preds = %for.end28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_abm_qdisc_clear_mq.exit.i

do.end.i.i:                                       ; preds = %for.end28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 317, i32 noundef 9, ptr noundef nonnull @.str.42, i32 noundef %51, i32 noundef %mq_refs.0.i.i) #9
  br label %nfp_abm_qdisc_clear_mq.exit.i

nfp_abm_qdisc_clear_mq.exit.i:                    ; preds = %do.end.i.i, %for.end28.i.i.nfp_abm_qdisc_clear_mq.exit.i_crit_edge, %land.lhs.true2.i.i.nfp_abm_qdisc_clear_mq.exit.i_crit_edge, %if.end.i.nfp_abm_qdisc_clear_mq.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iter.i.i) #9
  %handle.i = getelementptr inbounds %struct.nfp_qdisc, ptr %call.i, i32 0, i32 2
  %52 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %handle.i, align 8
  %and.i23 = and i32 %53, -65536
  %call1.i = call ptr @radix_tree_delete(ptr noundef %qdiscs.i, i32 noundef %and.i23) #9
  %cmp.not.i = icmp eq ptr %call1.i, %call.i
  br i1 %cmp.not.i, label %nfp_abm_qdisc_clear_mq.exit.i.nfp_abm_qdisc_free.exit_crit_edge, label %do.end.i, !prof !109

nfp_abm_qdisc_clear_mq.exit.i.nfp_abm_qdisc_free.exit_crit_edge: ; preds = %nfp_abm_qdisc_clear_mq.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_abm_qdisc_free.exit

do.end.i:                                         ; preds = %nfp_abm_qdisc_clear_mq.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 330, i32 noundef 9, ptr noundef null) #9
  br label %nfp_abm_qdisc_free.exit

nfp_abm_qdisc_free.exit:                          ; preds = %do.end.i, %nfp_abm_qdisc_clear_mq.exit.i.nfp_abm_qdisc_free.exit_crit_edge
  %children.i = getelementptr inbounds %struct.nfp_qdisc, ptr %call.i, i32 0, i32 6
  %54 = ptrtoint ptr %children.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %children.i, align 8
  call void @kfree(ptr noundef %55) #9
  call void @kfree(ptr noundef nonnull %call.i) #9
  %tc_offload_cnt.i = getelementptr inbounds %struct.nfp_port, ptr %call.i19, i32 0, i32 3
  %56 = ptrtoint ptr %tc_offload_cnt.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tc_offload_cnt.i, align 4
  %dec.i24 = add i32 %57, -1
  store i32 %dec.i24, ptr %tc_offload_cnt.i, align 4
  %58 = ptrtoint ptr %root_qdisc to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %root_qdisc, align 8
  %cmp4 = icmp eq ptr %59, %call.i
  br i1 %cmp4, label %if.then5, label %nfp_abm_qdisc_free.exit.cleanup_crit_edge

nfp_abm_qdisc_free.exit.cleanup_crit_edge:        ; preds = %nfp_abm_qdisc_free.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5:                                         ; preds = %nfp_abm_qdisc_free.exit
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %root_qdisc to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %root_qdisc, align 8
  call void @nfp_abm_qdisc_offload_update(ptr noundef %alink)
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %nfp_abm_qdisc_free.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_abm_setup_tc_red(ptr noundef %netdev, ptr noundef %alink, ptr nocapture noundef readonly %opt) local_unnamed_addr #0 align 64 {
entry:
  %qdisc.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %opt, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %1, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb5
    i32 4, label %sw.bb7
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %qdisc.i) #9
  %3 = ptrtoint ptr %qdisc.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %qdisc.i, align 4, !annotation !108
  %parent.i = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %opt, i32 0, i32 2
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %parent.i, align 4
  %handle.i = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %opt, i32 0, i32 1
  %6 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %handle.i, align 4
  %call.i = call fastcc i32 @nfp_abm_qdisc_replace(ptr noundef %netdev, ptr noundef %alink, i32 noundef 2, i32 noundef %5, i32 noundef %7, i32 noundef 1, ptr noundef nonnull %qdisc.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.nfp_abm_red_replace.exit_crit_edge, label %if.end.i

sw.bb.nfp_abm_red_replace.exit_crit_edge:         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_abm_red_replace.exit

if.end.i:                                         ; preds = %sw.bb
  %8 = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %opt, i32 0, i32 3
  %limit.i = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %opt, i32 0, i32 3, i32 0, i32 3
  %9 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %limit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  %11 = ptrtoint ptr %qdisc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %qdisc.i, align 4
  %children.i.i = getelementptr inbounds %struct.nfp_qdisc, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %children.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %children.i.i, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %switch.i = icmp ult ptr %16, inttoptr (i32 2 to ptr)
  br i1 %switch.i, label %if.then1.i.if.end12.sink.split.i_crit_edge, label %if.then3.i

if.then1.i.if.end12.sink.split.i_crit_edge:       ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.sink.split.i

if.then3.i:                                       ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  %use_cnt.i = getelementptr inbounds %struct.nfp_qdisc, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %use_cnt.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %use_cnt.i, align 8
  %dec.i = add i32 %18, -1
  store i32 %dec.i, ptr %use_cnt.i, align 8
  br label %if.end12.sink.split.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %if.else.i.if.end12.i_crit_edge

if.else.i.if.end12.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %qdisc.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %qdisc.i, align 4
  %children9.i = getelementptr inbounds %struct.nfp_qdisc, ptr %20, i32 0, i32 6
  br label %if.end12.sink.split.i

if.end12.sink.split.i:                            ; preds = %if.then8.i, %if.then3.i, %if.then1.i.if.end12.sink.split.i_crit_edge
  %children9.sink.i = phi ptr [ %children9.i, %if.then8.i ], [ %children.i.i, %if.then1.i.if.end12.sink.split.i_crit_edge ], [ %children.i.i, %if.then3.i ]
  %.sink.i = phi ptr [ inttoptr (i32 1 to ptr), %if.then8.i ], [ null, %if.then1.i.if.end12.sink.split.i_crit_edge ], [ null, %if.then3.i ]
  %21 = ptrtoint ptr %children9.sink.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %children9.sink.i, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %.sink.i, ptr %22, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.end12.sink.split.i, %if.else.i.if.end12.i_crit_edge
  %24 = ptrtoint ptr %alink to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %alink, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %cpp1.i.i = getelementptr inbounds %struct.nfp_app, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %cpp1.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cpp1.i.i, align 4
  %is_ecn.i.i = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %opt, i32 0, i32 3, i32 0, i32 4
  %30 = ptrtoint ptr %is_ecn.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %is_ecn.i.i, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i37.i = icmp eq i8 %31, 0
  %action_mask.i.i.i = getelementptr inbounds %struct.nfp_abm, ptr %25, i32 0, i32 5
  %32 = ptrtoint ptr %action_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %action_mask.i.i.i, align 4
  br i1 %tobool.not.i37.i, label %land.lhs.true.i.i, label %land.lhs.true8.i.i

land.lhs.true.i.i:                                ; preds = %if.end12.i
  %and.i.i.i = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %do.end.i.i, label %land.lhs.true.i.i.if.end18.i.i_crit_edge

land.lhs.true.i.i.if.end18.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i.i

do.end.i.i:                                       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i.i = tail call ptr @nfp_cpp_device(ptr noundef %29) #9
  %parent.i.i = getelementptr inbounds %struct.device, ptr %call4.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parent.i.i, align 8
  %36 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %parent.i, align 4
  %38 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %handle.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str.44, i32 noundef %37, i32 noundef %39) #12
  br label %nfp_abm_red_check_params.exit.thread.i

land.lhs.true8.i.i:                               ; preds = %if.end12.i
  %and.i74.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i74.i.i)
  %tobool.i75.not.i.i = icmp eq i32 %and.i74.i.i, 0
  br i1 %tobool.i75.not.i.i, label %do.end13.i.i, label %land.lhs.true8.i.i.if.end18.i.i_crit_edge

land.lhs.true8.i.i.if.end18.i.i_crit_edge:        ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i.i

do.end13.i.i:                                     ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call14.i.i = tail call ptr @nfp_cpp_device(ptr noundef %29) #9
  %parent15.i.i = getelementptr inbounds %struct.device, ptr %call14.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %parent15.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %parent15.i.i, align 8
  %42 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %parent.i, align 4
  %44 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %handle.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %41, ptr noundef nonnull @.str.47, i32 noundef %43, i32 noundef %45) #12
  br label %nfp_abm_red_check_params.exit.thread.i

if.end18.i.i:                                     ; preds = %land.lhs.true8.i.i.if.end18.i.i_crit_edge, %land.lhs.true.i.i.if.end18.i.i_crit_edge
  %is_harddrop.i.i = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %opt, i32 0, i32 3, i32 0, i32 5
  %46 = ptrtoint ptr %is_harddrop.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %is_harddrop.i.i, align 1, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool19.not.i.i = icmp eq i8 %47, 0
  br i1 %tobool19.not.i.i, label %if.end28.i.i, label %do.end23.i.i

do.end23.i.i:                                     ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call24.i.i = tail call ptr @nfp_cpp_device(ptr noundef %29) #9
  %parent25.i.i = getelementptr inbounds %struct.device, ptr %call24.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %parent25.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %parent25.i.i, align 8
  %50 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %parent.i, align 4
  %52 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %handle.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %49, ptr noundef nonnull @.str.50, i32 noundef %51, i32 noundef %53) #12
  br label %nfp_abm_red_check_params.exit.thread.i

if.end28.i.i:                                     ; preds = %if.end18.i.i
  %54 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %8, align 4
  %max.i.i = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %opt, i32 0, i32 3, i32 0, i32 1
  %56 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %max.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %57)
  %cmp.not.i.i = icmp eq i32 %55, %57
  br i1 %cmp.not.i.i, label %if.end37.i.i, label %do.end32.i.i

do.end32.i.i:                                     ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call33.i.i = tail call ptr @nfp_cpp_device(ptr noundef %29) #9
  %parent34.i.i = getelementptr inbounds %struct.device, ptr %call33.i.i, i32 0, i32 1
  %58 = ptrtoint ptr %parent34.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %parent34.i.i, align 8
  %60 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %parent.i, align 4
  %62 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %handle.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %59, ptr noundef nonnull @.str.53, i32 noundef %61, i32 noundef %63) #12
  br label %nfp_abm_red_check_params.exit.thread.i

if.end37.i.i:                                     ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp39.i.i = icmp slt i32 %55, 0
  br i1 %cmp39.i.i, label %do.end43.i.i, label %if.then16.i

do.end43.i.i:                                     ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call44.i.i = tail call ptr @nfp_cpp_device(ptr noundef %29) #9
  %parent45.i.i = getelementptr inbounds %struct.device, ptr %call44.i.i, i32 0, i32 1
  %64 = ptrtoint ptr %parent45.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %parent45.i.i, align 8
  %66 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %8, align 4
  %68 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %parent.i, align 4
  %70 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %handle.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %65, ptr noundef nonnull @.str.56, i32 noundef %67, i32 noundef 2147483647, i32 noundef %69, i32 noundef %71) #12
  br label %nfp_abm_red_check_params.exit.thread.i

nfp_abm_red_check_params.exit.thread.i:           ; preds = %do.end43.i.i, %do.end32.i.i, %do.end23.i.i, %do.end13.i.i, %do.end.i.i
  %72 = ptrtoint ptr %qdisc.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %qdisc.i, align 4
  %params_ok39.i = getelementptr inbounds %struct.nfp_qdisc, ptr %73, i32 0, i32 7
  %74 = ptrtoint ptr %params_ok39.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %params_ok39.i, align 4
  br label %if.end22.i

if.then16.i:                                      ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %qdisc.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %qdisc.i, align 4
  %params_ok.i = getelementptr inbounds %struct.nfp_qdisc, ptr %76, i32 0, i32 7
  %77 = ptrtoint ptr %params_ok.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %params_ok.i, align 4
  %78 = getelementptr inbounds %struct.nfp_qdisc, ptr %76, i32 0, i32 10
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1, ptr %78, align 8
  %80 = ptrtoint ptr %is_ecn.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %is_ecn.i.i, align 4, !range !107
  %band.i = getelementptr inbounds %struct.nfp_qdisc, ptr %76, i32 0, i32 10, i32 0, i32 1
  %82 = ptrtoint ptr %band.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %band.i, align 8
  %83 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %8, align 4
  %threshold.i = getelementptr inbounds %struct.nfp_qdisc, ptr %76, i32 0, i32 10, i32 0, i32 1, i32 0, i32 1
  %85 = ptrtoint ptr %threshold.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %threshold.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then16.i, %nfp_abm_red_check_params.exit.thread.i
  %86 = phi ptr [ %73, %nfp_abm_red_check_params.exit.thread.i ], [ %76, %if.then16.i ]
  %use_cnt23.i = getelementptr inbounds %struct.nfp_qdisc, ptr %86, i32 0, i32 4
  %87 = ptrtoint ptr %use_cnt23.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %use_cnt23.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %88)
  %cmp24.i = icmp eq i32 %88, 1
  br i1 %cmp24.i, label %if.then25.i, label %if.end22.i.nfp_abm_red_replace.exit_crit_edge

if.end22.i.nfp_abm_red_replace.exit_crit_edge:    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_abm_red_replace.exit

if.then25.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nfp_abm_qdisc_offload_update(ptr noundef %alink) #9
  br label %nfp_abm_red_replace.exit

nfp_abm_red_replace.exit:                         ; preds = %if.then25.i, %if.end22.i.nfp_abm_red_replace.exit_crit_edge, %sw.bb.nfp_abm_red_replace.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %sw.bb.nfp_abm_red_replace.exit_crit_edge ], [ 0, %if.then25.i ], [ 0, %if.end22.i.nfp_abm_red_replace.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qdisc.i) #9
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %handle = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %opt, i32 0, i32 1
  %89 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %handle, align 4
  tail call fastcc void @nfp_abm_qdisc_destroy(ptr noundef %netdev, ptr noundef %alink, i32 noundef %90)
  br label %return

sw.bb2:                                           ; preds = %entry
  %handle3 = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %opt, i32 0, i32 1
  %91 = ptrtoint ptr %handle3 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %handle3, align 4
  %93 = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %opt, i32 0, i32 3
  %call.i.i = tail call i64 @ktime_get() #9
  %last_stats_update.i.i = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 5
  %94 = ptrtoint ptr %last_stats_update.i.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %last_stats_update.i.i, align 8
  %sub.i.i = sub i64 %call.i.i, %95
  call void @__sanitizer_cov_trace_const_cmp8(i64 2500000, i64 %sub.i.i)
  %cmp.i.i = icmp ult i64 %sub.i.i, 2500000
  br i1 %cmp.i.i, label %sw.bb2.nfp_abm_stats_update.exit.i_crit_edge, label %if.end.i.i

sw.bb2.nfp_abm_stats_update.exit.i_crit_edge:     ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_abm_stats_update.exit.i

if.end.i.i:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @__nfp_abm_stats_update(ptr noundef %alink, i64 noundef %call.i.i) #9
  br label %nfp_abm_stats_update.exit.i

nfp_abm_stats_update.exit.i:                      ; preds = %if.end.i.i, %sw.bb2.nfp_abm_stats_update.exit.i_crit_edge
  %qdiscs.i.i = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 11
  %and.i.i = and i32 %92, -65536
  %call.i18.i = tail call ptr @radix_tree_lookup(ptr noundef %qdiscs.i.i, i32 noundef %and.i.i) #9
  %tobool.not.i22 = icmp eq ptr %call.i18.i, null
  br i1 %tobool.not.i22, label %nfp_abm_stats_update.exit.i.return_crit_edge, label %if.end.i23

nfp_abm_stats_update.exit.i.return_crit_edge:     ; preds = %nfp_abm_stats_update.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.i23:                                       ; preds = %nfp_abm_stats_update.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %stats1.i = getelementptr inbounds %struct.nfp_qdisc, ptr %call.i18.i, i32 0, i32 10, i32 0, i32 1, i32 0, i32 2
  %prev_stats.i = getelementptr inbounds %struct.nfp_qdisc, ptr %call.i18.i, i32 0, i32 10, i32 0, i32 1, i32 0, i32 3
  %96 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %93, align 4
  %qstats.i = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %opt, i32 0, i32 3, i32 0, i32 1
  %98 = ptrtoint ptr %qstats.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %qstats.i, align 4
  tail call fastcc void @nfp_abm_stats_calculate(ptr noundef %stats1.i, ptr noundef %prev_stats.i, ptr noundef %97, ptr noundef %99) #9
  %100 = call ptr @memcpy(ptr %prev_stats.i, ptr %stats1.i, i32 48)
  %offloaded.i = getelementptr inbounds %struct.nfp_qdisc, ptr %call.i18.i, i32 0, i32 9
  %101 = ptrtoint ptr %offloaded.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %offloaded.i, align 2, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool10.not.i = icmp eq i8 %102, 0
  %cond.i = select i1 %tobool10.not.i, i32 -95, i32 0
  br label %return

sw.bb5:                                           ; preds = %entry
  %call.i.i25 = tail call i64 @ktime_get() #9
  %last_stats_update.i.i26 = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 5
  %103 = ptrtoint ptr %last_stats_update.i.i26 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %last_stats_update.i.i26, align 8
  %sub.i.i27 = sub i64 %call.i.i25, %104
  call void @__sanitizer_cov_trace_const_cmp8(i64 2500000, i64 %sub.i.i27)
  %cmp.i.i28 = icmp ult i64 %sub.i.i27, 2500000
  br i1 %cmp.i.i28, label %sw.bb5.nfp_abm_stats_update.exit.i34_crit_edge, label %if.end.i.i29

sw.bb5.nfp_abm_stats_update.exit.i34_crit_edge:   ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_abm_stats_update.exit.i34

if.end.i.i29:                                     ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @__nfp_abm_stats_update(ptr noundef %alink, i64 noundef %call.i.i25) #9
  br label %nfp_abm_stats_update.exit.i34

nfp_abm_stats_update.exit.i34:                    ; preds = %if.end.i.i29, %sw.bb5.nfp_abm_stats_update.exit.i34_crit_edge
  %handle.i30 = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %opt, i32 0, i32 1
  %105 = ptrtoint ptr %handle.i30 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %handle.i30, align 4
  %qdiscs.i.i31 = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 11
  %and.i.i32 = and i32 %106, -65536
  %call.i17.i = tail call ptr @radix_tree_lookup(ptr noundef %qdiscs.i.i31, i32 noundef %and.i.i32) #9
  %tobool.not.i33 = icmp eq ptr %call.i17.i, null
  br i1 %tobool.not.i33, label %nfp_abm_stats_update.exit.i34.return_crit_edge, label %lor.lhs.false.i

nfp_abm_stats_update.exit.i34.return_crit_edge:   ; preds = %nfp_abm_stats_update.exit.i34
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false.i:                                  ; preds = %nfp_abm_stats_update.exit.i34
  %offloaded.i35 = getelementptr inbounds %struct.nfp_qdisc, ptr %call.i17.i, i32 0, i32 9
  %107 = ptrtoint ptr %offloaded.i35 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %offloaded.i35, align 2, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool1.not.i = icmp eq i8 %108, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.return_crit_edge, label %if.end.i36

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.i36:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %xstats.i = getelementptr inbounds %struct.nfp_qdisc, ptr %call.i17.i, i32 0, i32 10, i32 0, i32 1, i32 0, i32 4
  %prev_xstats.i = getelementptr inbounds %struct.nfp_qdisc, ptr %call.i17.i, i32 0, i32 10, i32 0, i32 1, i32 0, i32 5
  %109 = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %opt, i32 0, i32 3
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 4
  %112 = ptrtoint ptr %xstats.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %xstats.i, align 8
  %114 = ptrtoint ptr %prev_xstats.i to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %prev_xstats.i, align 8
  %sub.i18.i = sub i64 %113, %115
  %forced_mark.i.i = getelementptr inbounds %struct.red_stats, ptr %111, i32 0, i32 3
  %116 = ptrtoint ptr %forced_mark.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %forced_mark.i.i, align 4
  %118 = trunc i64 %sub.i18.i to i32
  %conv2.i.i = add i32 %117, %118
  store i32 %conv2.i.i, ptr %forced_mark.i.i, align 4
  %pdrop.i.i = getelementptr inbounds %struct.nfp_qdisc, ptr %call.i17.i, i32 0, i32 10, i32 0, i32 1, i32 0, i32 4, i32 1
  %119 = ptrtoint ptr %pdrop.i.i to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %pdrop.i.i, align 8
  %pdrop3.i.i = getelementptr inbounds %struct.nfp_qdisc, ptr %call.i17.i, i32 0, i32 10, i32 0, i32 1, i32 0, i32 5, i32 1
  %121 = ptrtoint ptr %pdrop3.i.i to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %pdrop3.i.i, align 8
  %sub4.i.i = sub i64 %120, %122
  %pdrop5.i.i = getelementptr inbounds %struct.red_stats, ptr %111, i32 0, i32 4
  %123 = ptrtoint ptr %pdrop5.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %pdrop5.i.i, align 4
  %125 = trunc i64 %sub4.i.i to i32
  %conv8.i.i = add i32 %124, %125
  store i32 %conv8.i.i, ptr %pdrop5.i.i, align 4
  %126 = call ptr @memcpy(ptr %prev_xstats.i, ptr %xstats.i, i32 16)
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %handle8 = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %opt, i32 0, i32 1
  %127 = ptrtoint ptr %handle8 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %handle8, align 4
  %129 = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %opt, i32 0, i32 3
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %129, align 4
  %call9 = tail call fastcc i32 @nfp_abm_qdisc_graft(ptr noundef %alink, i32 noundef %128, i32 noundef %131, i32 noundef 0)
  br label %return

return:                                           ; preds = %sw.bb7, %if.end.i36, %lor.lhs.false.i.return_crit_edge, %nfp_abm_stats_update.exit.i34.return_crit_edge, %if.end.i23, %nfp_abm_stats_update.exit.i.return_crit_edge, %sw.bb1, %nfp_abm_red_replace.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call9, %sw.bb7 ], [ 0, %sw.bb1 ], [ %retval.0.i, %nfp_abm_red_replace.exit ], [ -95, %entry.return_crit_edge ], [ %cond.i, %if.end.i23 ], [ -95, %nfp_abm_stats_update.exit.i.return_crit_edge ], [ 0, %if.end.i36 ], [ -95, %lor.lhs.false.i.return_crit_edge ], [ -95, %nfp_abm_stats_update.exit.i34.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_abm_qdisc_graft(ptr noundef %alink, i32 noundef %handle, i32 noundef %child_handle, i32 noundef %id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %qdiscs.i = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 11
  %and.i = and i32 %handle, -65536
  %call.i = tail call ptr @radix_tree_lookup(ptr noundef %qdiscs.i, i32 noundef %and.i) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_children = getelementptr inbounds %struct.nfp_qdisc, ptr %call.i, i32 0, i32 5
  %0 = ptrtoint ptr %num_children to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_children, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %id)
  %cmp.not = icmp ugt i32 %1, %id
  br i1 %cmp.not, label %for.body.lr.ph.i, label %do.end, !prof !109

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 441, i32 noundef 9, ptr noundef nonnull @.str.58, i32 noundef %id, i32 noundef %1) #9
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end
  %children.i.i = getelementptr inbounds %struct.nfp_qdisc, ptr %call.i, i32 0, i32 6
  %2 = ptrtoint ptr %children.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %children.i.i, align 8
  %arrayidx.i.i = getelementptr ptr, ptr %3, i32 %id
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %switch.i = icmp ult ptr %5, inttoptr (i32 2 to ptr)
  br i1 %switch.i, label %for.body.lr.ph.i.for.inc.i_crit_edge, label %if.then.i

for.body.lr.ph.i.for.inc.i_crit_edge:             ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #11
  %use_cnt.i = getelementptr inbounds %struct.nfp_qdisc, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %use_cnt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %use_cnt.i, align 8
  %dec.i = add i32 %7, -1
  store i32 %dec.i, ptr %use_cnt.i, align 8
  %8 = ptrtoint ptr %children.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %children.i.i, align 8
  %arrayidx2.i = getelementptr ptr, ptr %9, i32 %id
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx2.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.lr.ph.i.for.inc.i_crit_edge
  %and.i45 = and i32 %child_handle, -65536
  %call.i46 = tail call ptr @radix_tree_lookup(ptr noundef %qdiscs.i, i32 noundef %and.i45) #9
  %tobool27.not = icmp eq ptr %call.i46, null
  br i1 %tobool27.not, label %for.inc.i.if.end29_crit_edge, label %if.then28

for.inc.i.if.end29_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then28:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  %use_cnt = getelementptr inbounds %struct.nfp_qdisc, ptr %call.i46, i32 0, i32 4
  %11 = ptrtoint ptr %use_cnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %use_cnt, align 8
  %inc = add i32 %12, 1
  store i32 %inc, ptr %use_cnt, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %for.inc.i.if.end29_crit_edge
  %child.0 = phi ptr [ %call.i46, %if.then28 ], [ inttoptr (i32 1 to ptr), %for.inc.i.if.end29_crit_edge ]
  %13 = ptrtoint ptr %children.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %children.i.i, align 8
  %arrayidx = getelementptr ptr, ptr %14, i32 %id
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %child.0, ptr %arrayidx, align 4
  tail call void @nfp_abm_qdisc_offload_update(ptr noundef %alink)
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end29 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_abm_setup_tc_mq(ptr noundef %netdev, ptr noundef %alink, ptr nocapture noundef readonly %opt) local_unnamed_addr #0 align 64 {
entry:
  %qdisc.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %opt, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %1, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb5
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %qdisc.i) #9
  %3 = ptrtoint ptr %qdisc.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %qdisc.i, align 4, !annotation !108
  %handle.i = getelementptr inbounds %struct.tc_mq_qopt_offload, ptr %opt, i32 0, i32 1
  %4 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %handle.i, align 4
  %total_queues.i = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 4
  %6 = ptrtoint ptr %total_queues.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %total_queues.i, align 8
  %call.i = call fastcc i32 @nfp_abm_qdisc_replace(ptr noundef %netdev, ptr noundef %alink, i32 noundef 1, i32 noundef -1, i32 noundef %5, i32 noundef %7, ptr noundef nonnull %qdisc.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.nfp_abm_mq_create.exit_crit_edge, label %if.end.i

sw.bb.nfp_abm_mq_create.exit_crit_edge:           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_abm_mq_create.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %qdisc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qdisc.i, align 4
  %params_ok.i = getelementptr inbounds %struct.nfp_qdisc, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %params_ok.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %params_ok.i, align 4
  %offloaded.i = getelementptr inbounds %struct.nfp_qdisc, ptr %9, i32 0, i32 9
  %11 = ptrtoint ptr %offloaded.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %offloaded.i, align 2
  tail call void @nfp_abm_qdisc_offload_update(ptr noundef %alink) #9
  br label %nfp_abm_mq_create.exit

nfp_abm_mq_create.exit:                           ; preds = %if.end.i, %sw.bb.nfp_abm_mq_create.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ %call.i, %sw.bb.nfp_abm_mq_create.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qdisc.i) #9
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %handle = getelementptr inbounds %struct.tc_mq_qopt_offload, ptr %opt, i32 0, i32 1
  %12 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %handle, align 4
  tail call fastcc void @nfp_abm_qdisc_destroy(ptr noundef %netdev, ptr noundef %alink, i32 noundef %13)
  br label %return

sw.bb2:                                           ; preds = %entry
  %handle3 = getelementptr inbounds %struct.tc_mq_qopt_offload, ptr %opt, i32 0, i32 1
  %14 = ptrtoint ptr %handle3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %handle3, align 4
  %16 = getelementptr inbounds %struct.tc_mq_qopt_offload, ptr %opt, i32 0, i32 2
  %qdiscs.i.i = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 11
  %and.i.i = and i32 %15, -65536
  %call.i.i = tail call ptr @radix_tree_lookup(ptr noundef %qdiscs.i.i, i32 noundef %and.i.i) #9
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %sw.bb2.return_crit_edge, label %if.end.i19

sw.bb2.return_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.i19:                                       ; preds = %sw.bb2
  %call.i51.i = tail call i64 @ktime_get() #9
  %last_stats_update.i.i = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 5
  %17 = ptrtoint ptr %last_stats_update.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %last_stats_update.i.i, align 8
  %sub.i.i = sub i64 %call.i51.i, %18
  call void @__sanitizer_cov_trace_const_cmp8(i64 2500000, i64 %sub.i.i)
  %cmp.i.i = icmp ult i64 %sub.i.i, 2500000
  br i1 %cmp.i.i, label %if.end.i19.nfp_abm_stats_update.exit.i_crit_edge, label %if.end.i.i

if.end.i19.nfp_abm_stats_update.exit.i_crit_edge: ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_abm_stats_update.exit.i

if.end.i.i:                                       ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @__nfp_abm_stats_update(ptr noundef %alink, i64 noundef %call.i51.i) #9
  br label %nfp_abm_stats_update.exit.i

nfp_abm_stats_update.exit.i:                      ; preds = %if.end.i.i, %if.end.i19.nfp_abm_stats_update.exit.i_crit_edge
  %19 = getelementptr inbounds %struct.nfp_qdisc, ptr %call.i.i, i32 0, i32 10
  %prev_stats.i = getelementptr inbounds %struct.nfp_qdisc, ptr %call.i.i, i32 0, i32 10, i32 0, i32 1, i32 0, i32 2, i32 4
  %num_children.i = getelementptr inbounds %struct.nfp_qdisc, ptr %call.i.i, i32 0, i32 5
  %20 = call ptr @memset(ptr %19, i32 0, i32 96)
  %21 = ptrtoint ptr %num_children.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_children.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp71.not.i = icmp eq i32 %22, 0
  br i1 %cmp71.not.i, label %nfp_abm_stats_update.exit.i.for.end22.i_crit_edge, label %for.body.lr.ph.i

nfp_abm_stats_update.exit.i.for.end22.i_crit_edge: ; preds = %nfp_abm_stats_update.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end22.i

for.body.lr.ph.i:                                 ; preds = %nfp_abm_stats_update.exit.i
  %children.i.i = getelementptr inbounds %struct.nfp_qdisc, ptr %call.i.i, i32 0, i32 6
  %tx_bytes2.i.i = getelementptr inbounds %struct.nfp_qdisc, ptr %call.i.i, i32 0, i32 10, i32 0, i32 1
  %backlog_pkts4.i.i = getelementptr inbounds %struct.nfp_qdisc, ptr %call.i.i, i32 0, i32 10, i32 0, i32 1, i32 0, i32 2
  %backlog_bytes6.i.i = getelementptr inbounds %struct.nfp_qdisc, ptr %call.i.i, i32 0, i32 10, i32 0, i32 1, i32 0, i32 2, i32 1
  %overlimits8.i.i = getelementptr inbounds %struct.nfp_qdisc, ptr %call.i.i, i32 0, i32 10, i32 0, i32 1, i32 0, i32 2, i32 2
  %drops10.i.i = getelementptr inbounds %struct.nfp_qdisc, ptr %call.i.i, i32 0, i32 10, i32 0, i32 1, i32 0, i32 2, i32 3
  %tx_bytes2.i55.i = getelementptr inbounds %struct.nfp_qdisc, ptr %call.i.i, i32 0, i32 10, i32 0, i32 1, i32 0, i32 2, i32 5
  %backlog_pkts4.i58.i = getelementptr inbounds %struct.nfp_qdisc, ptr %call.i.i, i32 0, i32 10, i32 0, i32 1, i32 0, i32 3
  %backlog_bytes6.i61.i = getelementptr inbounds %struct.nfp_qdisc, ptr %call.i.i, i32 0, i32 10, i32 0, i32 1, i32 0, i32 3, i32 1
  %overlimits8.i64.i = getelementptr inbounds %struct.nfp_qdisc, ptr %call.i.i, i32 0, i32 10, i32 0, i32 1, i32 0, i32 3, i32 2
  %drops10.i67.i = getelementptr inbounds %struct.nfp_qdisc, ptr %call.i.i, i32 0, i32 10, i32 0, i32 1, i32 0, i32 3, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc20.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.072.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc21.i, %for.inc20.i.for.body.i_crit_edge ]
  %23 = ptrtoint ptr %children.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %children.i.i, align 8
  %arrayidx.i.i = getelementptr ptr, ptr %24, i32 %i.072.i
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.i, align 4
  %switch.i = icmp ult ptr %26, inttoptr (i32 2 to ptr)
  br i1 %switch.i, label %for.body.i.for.inc20.i_crit_edge, label %if.end4.i

for.body.i.for.inc20.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc20.i

if.end4.i:                                        ; preds = %for.body.i
  %type.i.i = getelementptr inbounds %struct.nfp_qdisc, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type.i.i, align 4
  %29 = and i32 %28, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %for.cond10.preheader.i, label %if.end4.i.for.inc20.i_crit_edge

if.end4.i.for.inc20.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc20.i

for.cond10.preheader.i:                           ; preds = %if.end4.i
  %31 = getelementptr inbounds %struct.nfp_qdisc, ptr %26, i32 0, i32 10
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp1169.not.i = icmp eq i32 %33, 0
  br i1 %cmp1169.not.i, label %for.cond10.preheader.i.for.inc20.i_crit_edge, label %for.cond10.preheader.i.for.body12.i_crit_edge

for.cond10.preheader.i.for.body12.i_crit_edge:    ; preds = %for.cond10.preheader.i
  br label %for.body12.i

for.cond10.preheader.i.for.inc20.i_crit_edge:     ; preds = %for.cond10.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc20.i

for.body12.i:                                     ; preds = %for.body12.i.for.body12.i_crit_edge, %for.cond10.preheader.i.for.body12.i_crit_edge
  %j.070.i = phi i32 [ %inc.i, %for.body12.i.for.body12.i_crit_edge ], [ 0, %for.cond10.preheader.i.for.body12.i_crit_edge ]
  %stats15.i = getelementptr %struct.nfp_qdisc, ptr %26, i32 0, i32 10, i32 0, i32 1, i32 %j.070.i, i32 2
  %34 = ptrtoint ptr %stats15.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %stats15.i, align 8
  %36 = ptrtoint ptr %19 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %19, align 8
  %add.i.i = add i64 %37, %35
  store i64 %add.i.i, ptr %19, align 8
  %tx_bytes.i.i = getelementptr %struct.nfp_qdisc, ptr %26, i32 0, i32 10, i32 0, i32 1, i32 %j.070.i, i32 2, i32 1
  %38 = ptrtoint ptr %tx_bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %tx_bytes.i.i, align 8
  %40 = ptrtoint ptr %tx_bytes2.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %tx_bytes2.i.i, align 8
  %add3.i.i = add i64 %41, %39
  store i64 %add3.i.i, ptr %tx_bytes2.i.i, align 8
  %backlog_pkts.i.i = getelementptr %struct.nfp_qdisc, ptr %26, i32 0, i32 10, i32 0, i32 1, i32 %j.070.i, i32 2, i32 2
  %42 = ptrtoint ptr %backlog_pkts.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %backlog_pkts.i.i, align 8
  %44 = ptrtoint ptr %backlog_pkts4.i.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %backlog_pkts4.i.i, align 8
  %add5.i.i = add i64 %45, %43
  store i64 %add5.i.i, ptr %backlog_pkts4.i.i, align 8
  %backlog_bytes.i.i = getelementptr %struct.nfp_qdisc, ptr %26, i32 0, i32 10, i32 0, i32 1, i32 %j.070.i, i32 2, i32 3
  %46 = ptrtoint ptr %backlog_bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %backlog_bytes.i.i, align 8
  %48 = ptrtoint ptr %backlog_bytes6.i.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %backlog_bytes6.i.i, align 8
  %add7.i.i = add i64 %49, %47
  store i64 %add7.i.i, ptr %backlog_bytes6.i.i, align 8
  %overlimits.i.i = getelementptr %struct.nfp_qdisc, ptr %26, i32 0, i32 10, i32 0, i32 1, i32 %j.070.i, i32 2, i32 4
  %50 = ptrtoint ptr %overlimits.i.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %overlimits.i.i, align 8
  %52 = ptrtoint ptr %overlimits8.i.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %overlimits8.i.i, align 8
  %add9.i.i = add i64 %53, %51
  store i64 %add9.i.i, ptr %overlimits8.i.i, align 8
  %drops.i.i = getelementptr %struct.nfp_qdisc, ptr %26, i32 0, i32 10, i32 0, i32 1, i32 %j.070.i, i32 2, i32 5
  %54 = ptrtoint ptr %drops.i.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %drops.i.i, align 8
  %56 = ptrtoint ptr %drops10.i.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %drops10.i.i, align 8
  %add11.i.i = add i64 %57, %55
  store i64 %add11.i.i, ptr %drops10.i.i, align 8
  %prev_stats19.i = getelementptr %struct.nfp_qdisc, ptr %26, i32 0, i32 10, i32 0, i32 1, i32 %j.070.i, i32 3
  %58 = ptrtoint ptr %prev_stats19.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %prev_stats19.i, align 8
  %60 = ptrtoint ptr %prev_stats.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %prev_stats.i, align 8
  %add.i53.i = add i64 %61, %59
  store i64 %add.i53.i, ptr %prev_stats.i, align 8
  %tx_bytes.i54.i = getelementptr %struct.nfp_qdisc, ptr %26, i32 0, i32 10, i32 0, i32 1, i32 %j.070.i, i32 3, i32 1
  %62 = ptrtoint ptr %tx_bytes.i54.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %tx_bytes.i54.i, align 8
  %64 = ptrtoint ptr %tx_bytes2.i55.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %tx_bytes2.i55.i, align 8
  %add3.i56.i = add i64 %65, %63
  store i64 %add3.i56.i, ptr %tx_bytes2.i55.i, align 8
  %backlog_pkts.i57.i = getelementptr %struct.nfp_qdisc, ptr %26, i32 0, i32 10, i32 0, i32 1, i32 %j.070.i, i32 3, i32 2
  %66 = ptrtoint ptr %backlog_pkts.i57.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %backlog_pkts.i57.i, align 8
  %68 = ptrtoint ptr %backlog_pkts4.i58.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %backlog_pkts4.i58.i, align 8
  %add5.i59.i = add i64 %69, %67
  store i64 %add5.i59.i, ptr %backlog_pkts4.i58.i, align 8
  %backlog_bytes.i60.i = getelementptr %struct.nfp_qdisc, ptr %26, i32 0, i32 10, i32 0, i32 1, i32 %j.070.i, i32 3, i32 3
  %70 = ptrtoint ptr %backlog_bytes.i60.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %backlog_bytes.i60.i, align 8
  %72 = ptrtoint ptr %backlog_bytes6.i61.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %backlog_bytes6.i61.i, align 8
  %add7.i62.i = add i64 %73, %71
  store i64 %add7.i62.i, ptr %backlog_bytes6.i61.i, align 8
  %overlimits.i63.i = getelementptr %struct.nfp_qdisc, ptr %26, i32 0, i32 10, i32 0, i32 1, i32 %j.070.i, i32 3, i32 4
  %74 = ptrtoint ptr %overlimits.i63.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %overlimits.i63.i, align 8
  %76 = ptrtoint ptr %overlimits8.i64.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %overlimits8.i64.i, align 8
  %add9.i65.i = add i64 %77, %75
  store i64 %add9.i65.i, ptr %overlimits8.i64.i, align 8
  %drops.i66.i = getelementptr %struct.nfp_qdisc, ptr %26, i32 0, i32 10, i32 0, i32 1, i32 %j.070.i, i32 3, i32 5
  %78 = ptrtoint ptr %drops.i66.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %drops.i66.i, align 8
  %80 = ptrtoint ptr %drops10.i67.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %drops10.i67.i, align 8
  %add11.i68.i = add i64 %81, %79
  store i64 %add11.i68.i, ptr %drops10.i67.i, align 8
  %inc.i = add nuw i32 %j.070.i, 1
  %82 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %31, align 8
  %cmp11.i = icmp ult i32 %inc.i, %83
  br i1 %cmp11.i, label %for.body12.i.for.body12.i_crit_edge, label %for.body12.i.for.inc20.i_crit_edge

for.body12.i.for.inc20.i_crit_edge:               ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc20.i

for.body12.i.for.body12.i_crit_edge:              ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body12.i

for.inc20.i:                                      ; preds = %for.body12.i.for.inc20.i_crit_edge, %for.cond10.preheader.i.for.inc20.i_crit_edge, %if.end4.i.for.inc20.i_crit_edge, %for.body.i.for.inc20.i_crit_edge
  %inc21.i = add nuw i32 %i.072.i, 1
  %84 = ptrtoint ptr %num_children.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %num_children.i, align 4
  %cmp.i20 = icmp ult i32 %inc21.i, %85
  br i1 %cmp.i20, label %for.inc20.i.for.body.i_crit_edge, label %for.inc20.i.for.end22.i_crit_edge

for.inc20.i.for.end22.i_crit_edge:                ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end22.i

for.inc20.i.for.body.i_crit_edge:                 ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end22.i:                                      ; preds = %for.inc20.i.for.end22.i_crit_edge, %nfp_abm_stats_update.exit.i.for.end22.i_crit_edge
  %86 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %16, align 4
  %qstats.i = getelementptr inbounds %struct.tc_mq_qopt_offload, ptr %opt, i32 0, i32 2, i32 0, i32 1
  %88 = ptrtoint ptr %qstats.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %qstats.i, align 4
  tail call fastcc void @nfp_abm_stats_calculate(ptr noundef %19, ptr noundef %prev_stats.i, ptr noundef %87, ptr noundef %89) #9
  %offloaded.i21 = getelementptr inbounds %struct.nfp_qdisc, ptr %call.i.i, i32 0, i32 9
  %90 = ptrtoint ptr %offloaded.i21 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %offloaded.i21, align 2, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool25.not.i = icmp eq i8 %91, 0
  %cond.i = select i1 %tobool25.not.i, i32 -95, i32 0
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %handle6 = getelementptr inbounds %struct.tc_mq_qopt_offload, ptr %opt, i32 0, i32 1
  %92 = ptrtoint ptr %handle6 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %handle6, align 4
  %94 = getelementptr inbounds %struct.tc_mq_qopt_offload, ptr %opt, i32 0, i32 2
  %child_handle = getelementptr inbounds %struct.tc_mq_qopt_offload, ptr %opt, i32 0, i32 2, i32 0, i32 1
  %95 = ptrtoint ptr %child_handle to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %child_handle, align 4
  %97 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %94, align 4
  %call7 = tail call fastcc i32 @nfp_abm_qdisc_graft(ptr noundef %alink, i32 noundef %93, i32 noundef %96, i32 noundef %98)
  br label %return

return:                                           ; preds = %sw.bb5, %for.end22.i, %sw.bb2.return_crit_edge, %sw.bb1, %nfp_abm_mq_create.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call7, %sw.bb5 ], [ 0, %sw.bb1 ], [ %retval.0.i, %nfp_abm_mq_create.exit ], [ -95, %entry.return_crit_edge ], [ %cond.i, %for.end22.i ], [ -95, %sw.bb2.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_abm_setup_root(ptr nocapture noundef readnone %netdev, ptr noundef %alink, ptr nocapture noundef readonly %opt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ingress = getelementptr inbounds %struct.tc_root_qopt_offload, ptr %opt, i32 0, i32 2
  %0 = ptrtoint ptr %ingress to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ingress, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %root_qdisc = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 10
  %2 = ptrtoint ptr %root_qdisc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root_qdisc, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %use_cnt = getelementptr inbounds %struct.nfp_qdisc, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %use_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %use_cnt, align 8
  %dec = add i32 %5, -1
  store i32 %dec, ptr %use_cnt, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %handle = getelementptr inbounds %struct.tc_root_qopt_offload, ptr %opt, i32 0, i32 1
  %6 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %handle, align 4
  %qdiscs.i = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 11
  %and.i = and i32 %7, -65536
  %call.i = tail call ptr @radix_tree_lookup(ptr noundef %qdiscs.i, i32 noundef %and.i) #9
  %8 = ptrtoint ptr %root_qdisc to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %root_qdisc, align 8
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.end4.if.end11_crit_edge, label %if.then8

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %use_cnt10 = getelementptr inbounds %struct.nfp_qdisc, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %use_cnt10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %use_cnt10, align 8
  %inc = add i32 %10, 1
  store i32 %inc, ptr %use_cnt10, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end4.if.end11_crit_edge
  tail call void @nfp_abm_qdisc_offload_update(ptr noundef %alink)
  br label %return

return:                                           ; preds = %if.end11, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_abm_ctrl_set_q_lvl(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_abm_ctrl_set_q_act(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_abm_ctrl_read_q_stats(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_cpp_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_abm_ctrl_read_q_xstats(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_abm_qdisc_replace(ptr noundef %netdev, ptr noundef %alink, i32 noundef %type, i32 noundef %parent_handle, i32 noundef %handle, i32 noundef %children, ptr nocapture noundef writeonly %qdisc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %qdiscs.i = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 11
  %and.i = and i32 %handle, -65536
  %call.i = tail call ptr @radix_tree_lookup(ptr noundef %qdiscs.i, i32 noundef %and.i) #9
  %0 = ptrtoint ptr %qdisc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %qdisc, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end25, label %if.then

if.then:                                          ; preds = %entry
  %type1 = getelementptr inbounds %struct.nfp_qdisc, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %type)
  %cmp.not = icmp eq i32 %2, %type
  br i1 %cmp.not, label %if.then.return_crit_edge, label %do.end, !prof !109

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 393, i32 noundef 9, ptr noundef null) #9
  br label %return

if.end25:                                         ; preds = %entry
  %call.i36 = tail call ptr @nfp_port_from_netdev(ptr noundef %netdev) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 2216) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end25.nfp_abm_qdisc_alloc.exit_crit_edge, label %if.end.i

if.end25.nfp_abm_qdisc_alloc.exit_crit_edge:      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfp_abm_qdisc_alloc.exit

if.end.i:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %children)
  %tobool2.not.i = icmp eq i32 %children, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then3.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then3.i:                                       ; preds = %if.end.i
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %children, i32 4) #9
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !106

kcalloc.exit.thread.i:                            ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  %children542.i = getelementptr inbounds %struct.nfp_qdisc, ptr %call7.i.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %children542.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %children542.i, align 8
  br label %err_free_qdisc.i

if.end7.i.i.i:                                    ; preds = %if.then3.i
  %7 = extractvalue { i32, i1 } %4, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #14
  %children5.i = getelementptr inbounds %struct.nfp_qdisc, ptr %call7.i.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %children5.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8.i.i.i, ptr %children5.i, align 8
  %tobool7.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool7.not.i, label %if.end7.i.i.i.err_free_qdisc.i_crit_edge, label %if.end7.i.i.i.if.end10.i_crit_edge

if.end7.i.i.i.if.end10.i_crit_edge:               ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.end7.i.i.i.err_free_qdisc.i_crit_edge:         ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_qdisc.i

if.end10.i:                                       ; preds = %if.end7.i.i.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  %9 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %netdev, ptr %call7.i.i.i, align 8
  %type12.i = getelementptr inbounds %struct.nfp_qdisc, ptr %call7.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %type12.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %type, ptr %type12.i, align 4
  %parent_handle13.i = getelementptr inbounds %struct.nfp_qdisc, ptr %call7.i.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %parent_handle13.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %parent_handle, ptr %parent_handle13.i, align 4
  %handle14.i = getelementptr inbounds %struct.nfp_qdisc, ptr %call7.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %handle14.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %handle, ptr %handle14.i, align 8
  %num_children.i = getelementptr inbounds %struct.nfp_qdisc, ptr %call7.i.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %num_children.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %children, ptr %num_children.i, align 4
  %call16.i = tail call i32 @radix_tree_insert(ptr noundef %qdiscs.i, i32 noundef %and.i, ptr noundef nonnull %call7.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end20.i, label %do.end.i

do.end.i:                                         ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %alink to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %alink, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %cpp.i = getelementptr inbounds %struct.nfp_app, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %cpp.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cpp.i, align 4
  %call19.i = tail call ptr @nfp_cpp_device(ptr noundef %19) #9
  %parent.i = getelementptr inbounds %struct.device, ptr %call19.i, i32 0, i32 1
  %20 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.17, i32 noundef %call16.i) #12
  %children21.i = getelementptr inbounds %struct.nfp_qdisc, ptr %call7.i.i.i, i32 0, i32 6
  %22 = ptrtoint ptr %children21.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %children21.i, align 8
  tail call void @kfree(ptr noundef %23) #9
  br label %err_free_qdisc.i

if.end20.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %tc_offload_cnt.i = getelementptr inbounds %struct.nfp_port, ptr %call.i36, i32 0, i32 3
  %24 = ptrtoint ptr %tc_offload_cnt.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tc_offload_cnt.i, align 4
  %inc.i = add i32 %25, 1
  store i32 %inc.i, ptr %tc_offload_cnt.i, align 4
  br label %nfp_abm_qdisc_alloc.exit

err_free_qdisc.i:                                 ; preds = %do.end.i, %if.end7.i.i.i.err_free_qdisc.i_crit_edge, %kcalloc.exit.thread.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %nfp_abm_qdisc_alloc.exit

nfp_abm_qdisc_alloc.exit:                         ; preds = %err_free_qdisc.i, %if.end20.i, %if.end25.nfp_abm_qdisc_alloc.exit_crit_edge
  %retval.0.i = phi ptr [ null, %err_free_qdisc.i ], [ %call7.i.i.i, %if.end20.i ], [ null, %if.end25.nfp_abm_qdisc_alloc.exit_crit_edge ]
  %26 = ptrtoint ptr %qdisc to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %retval.0.i, ptr %qdisc, align 4
  %tobool27.not = icmp eq ptr %retval.0.i, null
  %cond = select i1 %tobool27.not, i32 -12, i32 0
  br label %return

return:                                           ; preds = %nfp_abm_qdisc_alloc.exit, %do.end, %if.then.return_crit_edge
  %retval.0 = phi i32 [ %cond, %nfp_abm_qdisc_alloc.exit ], [ -22, %do.end ], [ 1, %if.then.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_port_from_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_delete(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfp_abm_stats_calculate(ptr nocapture noundef readonly %new, ptr nocapture noundef readonly %old, ptr noundef %bstats, ptr nocapture noundef %qstats) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_bytes = getelementptr inbounds %struct.nfp_alink_stats, ptr %new, i32 0, i32 1
  %0 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %tx_bytes, align 8
  %tx_bytes1 = getelementptr inbounds %struct.nfp_alink_stats, ptr %old, i32 0, i32 1
  %2 = ptrtoint ptr %tx_bytes1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %tx_bytes1, align 8
  %4 = ptrtoint ptr %new to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %new, align 8
  %6 = ptrtoint ptr %old to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %old, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %8 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i, label %entry._bstats_update.exit_crit_edge, label %land.lhs.true.i.i.i

entry._bstats_update.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %_bstats_update.exit

land.lhs.true.i.i.i:                              ; preds = %entry
  %9 = tail call i32 @llvm.read_register.i32(metadata !96) #9
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !110
  %13 = tail call i32 @llvm.read_register.i32(metadata !96) #9
  %and.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %18, ptrtoint (ptr @lockdep_recursion to i32)
  %19 = inttoptr i32 %add.i.i.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !111
  %22 = tail call i32 @llvm.read_register.i32(metadata !96) #9
  %and.i.i.i7.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i7.i.i.i to ptr
  %preempt_count.i.i8.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i8.i.i.i, align 4
  %sub.i.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i8.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool20.not.i.i.i = icmp eq i32 %21, 0
  br i1 %tobool20.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i._bstats_update.exit_crit_edge

land.lhs.true.i.i.i._bstats_update.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_bstats_update.exit

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !96) #9
  %and.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i.i.i = icmp eq i32 %29, 0
  br i1 %cmp.i.i.i, label %land.rhs22.i.i.i, label %land.rhs.i.i.i._bstats_update.exit_crit_edge

land.rhs.i.i.i._bstats_update.exit_crit_edge:     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_bstats_update.exit

land.rhs22.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %30 = tail call i32 @llvm.read_register.i32(metadata !96) #9
  %and.i.i.i9.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i9.i.i.i to ptr
  %preempt_count.i.i10.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i10.i.i.i, align 4
  %add.i11.i.i.i = add i32 %33, 1
  store volatile i32 %add.i11.i.i.i, ptr %preempt_count.i.i10.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !112
  %34 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx46.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx46.i.i.i, align 4
  %add47.i.i.i = add i32 %37, ptrtoint (ptr @hardirqs_enabled to i32)
  %38 = inttoptr i32 %add47.i.i.i to ptr
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %38, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !113
  %41 = tail call i32 @llvm.read_register.i32(metadata !96) #9
  %and.i.i.i12.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i12.i.i.i to ptr
  %preempt_count.i.i13.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i13.i.i.i, align 4
  %sub.i14.i.i.i = add i32 %44, -1
  store volatile i32 %sub.i14.i.i.i, ptr %preempt_count.i.i13.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool54.not.i.i.i = icmp eq i32 %40, 0
  br i1 %tobool54.not.i.i.i, label %land.rhs22.i.i.i._bstats_update.exit_crit_edge, label %land.rhs58.i.i.i

land.rhs22.i.i.i._bstats_update.exit_crit_edge:   ; preds = %land.rhs22.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_bstats_update.exit

land.rhs58.i.i.i:                                 ; preds = %land.rhs22.i.i.i
  %.b1.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs58.i.i.i._bstats_update.exit_crit_edge, label %if.then.i.i.i, !prof !109

land.rhs58.i.i.i._bstats_update.exit_crit_edge:   ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_bstats_update.exit

if.then.i.i.i:                                    ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 271, i32 noundef 9, ptr noundef null) #9
  br label %_bstats_update.exit

_bstats_update.exit:                              ; preds = %if.then.i.i.i, %land.rhs58.i.i.i._bstats_update.exit_crit_edge, %land.rhs22.i.i.i._bstats_update.exit_crit_edge, %land.rhs.i.i.i._bstats_update.exit_crit_edge, %land.lhs.true.i.i.i._bstats_update.exit_crit_edge, %entry._bstats_update.exit_crit_edge
  %sub3 = sub i64 %5, %7
  %sub = sub i64 %1, %3
  %syncp.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %bstats, i32 0, i32 2
  %45 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i.i = add i32 %46, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !114
  %dep_map.i.i.i.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %bstats, i32 0, i32 2, i32 0, i32 1
  %47 = tail call ptr @llvm.returnaddress(i32 0) #9
  %48 = ptrtoint ptr %47 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %48) #9
  %conv.i.i = and i64 %sub, 4294967295
  %49 = ptrtoint ptr %bstats to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %bstats, align 8
  %add.i.i = add i64 %50, %conv.i.i
  store i64 %add.i.i, ptr %bstats, align 8
  %packets2.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %bstats, i32 0, i32 1
  %conv.i7.i = and i64 %sub3, 4294967295
  %51 = ptrtoint ptr %packets2.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %packets2.i, align 8
  %add.i8.i = add i64 %52, %conv.i7.i
  store i64 %add.i8.i, ptr %packets2.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %48) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !115
  %53 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %54, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  %backlog_pkts = getelementptr inbounds %struct.nfp_alink_stats, ptr %new, i32 0, i32 2
  %55 = ptrtoint ptr %backlog_pkts to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %backlog_pkts, align 8
  %backlog_pkts4 = getelementptr inbounds %struct.nfp_alink_stats, ptr %old, i32 0, i32 2
  %57 = ptrtoint ptr %backlog_pkts4 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %backlog_pkts4, align 8
  %sub5 = sub i64 %56, %58
  %59 = ptrtoint ptr %qstats to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %qstats, align 4
  %61 = trunc i64 %sub5 to i32
  %conv7 = add i32 %60, %61
  store i32 %conv7, ptr %qstats, align 4
  %backlog_bytes = getelementptr inbounds %struct.nfp_alink_stats, ptr %new, i32 0, i32 3
  %62 = ptrtoint ptr %backlog_bytes to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %backlog_bytes, align 8
  %backlog_bytes8 = getelementptr inbounds %struct.nfp_alink_stats, ptr %old, i32 0, i32 3
  %64 = ptrtoint ptr %backlog_bytes8 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %backlog_bytes8, align 8
  %sub9 = sub i64 %63, %65
  %backlog = getelementptr inbounds %struct.gnet_stats_queue, ptr %qstats, i32 0, i32 1
  %66 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %backlog, align 4
  %68 = trunc i64 %sub9 to i32
  %conv12 = add i32 %67, %68
  store i32 %conv12, ptr %backlog, align 4
  %overlimits = getelementptr inbounds %struct.nfp_alink_stats, ptr %new, i32 0, i32 4
  %69 = ptrtoint ptr %overlimits to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %overlimits, align 8
  %overlimits13 = getelementptr inbounds %struct.nfp_alink_stats, ptr %old, i32 0, i32 4
  %71 = ptrtoint ptr %overlimits13 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %overlimits13, align 8
  %sub14 = sub i64 %70, %72
  %overlimits15 = getelementptr inbounds %struct.gnet_stats_queue, ptr %qstats, i32 0, i32 4
  %73 = ptrtoint ptr %overlimits15 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %overlimits15, align 4
  %75 = trunc i64 %sub14 to i32
  %conv18 = add i32 %74, %75
  store i32 %conv18, ptr %overlimits15, align 4
  %drops = getelementptr inbounds %struct.nfp_alink_stats, ptr %new, i32 0, i32 5
  %76 = ptrtoint ptr %drops to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %drops, align 8
  %drops19 = getelementptr inbounds %struct.nfp_alink_stats, ptr %old, i32 0, i32 5
  %78 = ptrtoint ptr %drops19 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %drops19, align 8
  %sub20 = sub i64 %77, %79
  %drops21 = getelementptr inbounds %struct.gnet_stats_queue, ptr %qstats, i32 0, i32 2
  %80 = ptrtoint ptr %drops21 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %drops21, align 4
  %82 = trunc i64 %sub20 to i32
  %conv24 = add i32 %81, %82
  store i32 %conv24, ptr %drops21, align 4
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94}
!llvm.named.register.sp = !{!96}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/abm/qdisc.c", i32 29, i32 9}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/netronome/nfp/abm/qdisc.c", i32 153, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__nfp_abm_stats_init._entry, !5, !"_entry", i1 false, i1 false}
!10 = !{ptr @__nfp_abm_stats_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/netronome/nfp/abm/qdisc.c", i32 161, i32 3}
!13 = !{ptr @__nfp_abm_stats_init._entry.6, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @__nfp_abm_stats_init._entry_ptr.8, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/netronome/nfp/abm/qdisc.c", i32 125, i32 3}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.11, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @nfp_abm_qdisc_offload_stop._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @nfp_abm_qdisc_offload_stop._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/netronome/nfp/abm/qdisc.c", i32 59, i32 4}
!23 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @nfp_abm_stats_update_red._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @nfp_abm_stats_update_red._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/netronome/nfp/abm/qdisc.c", i32 65, i32 4}
!28 = !{ptr @nfp_abm_stats_update_red._entry.14, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @nfp_abm_stats_update_red._entry_ptr.16, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/netronome/nfp/abm/qdisc.c", i32 365, i32 3}
!32 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @nfp_abm_qdisc_alloc._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @nfp_abm_qdisc_alloc._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/netronome/nfp/abm/qdisc.c", i32 524, i32 3}
!37 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @nfp_abm_gred_check_params._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @nfp_abm_gred_check_params._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/netronome/nfp/abm/qdisc.c", i32 529, i32 3}
!42 = !{ptr @nfp_abm_gred_check_params._entry.21, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @nfp_abm_gred_check_params._entry_ptr.23, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/netronome/nfp/abm/qdisc.c", i32 534, i32 3}
!46 = !{ptr @nfp_abm_gred_check_params._entry.24, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @nfp_abm_gred_check_params._entry_ptr.26, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/netronome/nfp/abm/qdisc.c", i32 545, i32 4}
!50 = !{ptr @nfp_abm_gred_check_params._entry.27, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @nfp_abm_gred_check_params._entry_ptr.29, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.31, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/netronome/nfp/abm/qdisc.c", i32 550, i32 4}
!54 = !{ptr @nfp_abm_gred_check_params._entry.30, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @nfp_abm_gred_check_params._entry_ptr.32, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.34, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/netronome/nfp/abm/qdisc.c", i32 555, i32 4}
!58 = !{ptr @nfp_abm_gred_check_params._entry.33, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @nfp_abm_gred_check_params._entry_ptr.35, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.37, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/netronome/nfp/abm/qdisc.c", i32 560, i32 4}
!62 = !{ptr @nfp_abm_gred_check_params._entry.36, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @nfp_abm_gred_check_params._entry_ptr.38, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.40, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/netronome/nfp/abm/qdisc.c", i32 565, i32 4}
!66 = !{ptr @nfp_abm_gred_check_params._entry.39, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @nfp_abm_gred_check_params._entry_ptr.41, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.42, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/netronome/nfp/abm/qdisc.c", i32 316, i32 2}
!70 = distinct !{null, !71, !"__already_done", i1 false, i1 false}
!71 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!72 = !{ptr @.str.43, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.44, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/netronome/nfp/abm/qdisc.c", i32 668, i32 3}
!75 = !{ptr @.str.45, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @nfp_abm_red_check_params._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @nfp_abm_red_check_params._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.47, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/netronome/nfp/abm/qdisc.c", i32 673, i32 3}
!80 = !{ptr @nfp_abm_red_check_params._entry.46, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @nfp_abm_red_check_params._entry_ptr.48, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.50, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/netronome/nfp/abm/qdisc.c", i32 678, i32 3}
!84 = !{ptr @nfp_abm_red_check_params._entry.49, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @nfp_abm_red_check_params._entry_ptr.51, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.53, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/netronome/nfp/abm/qdisc.c", i32 683, i32 3}
!88 = !{ptr @nfp_abm_red_check_params._entry.52, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @nfp_abm_red_check_params._entry_ptr.54, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.56, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/netronome/nfp/abm/qdisc.c", i32 688, i32 3}
!92 = !{ptr @nfp_abm_red_check_params._entry.55, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @nfp_abm_red_check_params._entry_ptr.57, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.58, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/netronome/nfp/abm/qdisc.c", i32 439, i32 6}
!96 = !{!"sp"}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{!"branch_weights", i32 1, i32 2000}
!107 = !{i8 0, i8 2}
!108 = !{!"auto-init"}
!109 = !{!"branch_weights", i32 2000, i32 1}
!110 = !{i64 2150257311}
!111 = !{i64 2150262245}
!112 = !{i64 2150283963}
!113 = !{i64 2150288857}
!114 = !{i64 2150365384}
!115 = !{i64 2150365709}

; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/bpf/offload.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/bpf/offload.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bpf_prog_offload_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bpf_map_dev_ops = type { ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nfp_app = type { ptr, ptr, ptr, ptr, [3 x ptr], ptr, i32, %struct.notifier_block, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.netdev_bpf = type { i32, %union.anon.197 }
%union.anon.197 = type { %struct.anon.198 }
%struct.anon.198 = type { i32, ptr, ptr }
%struct.nfp_app_bpf = type { ptr, %struct.nfp_ccm, ptr, i32, i32, i32, %struct.list_head, i32, i32, %struct.rhashtable, i32, %struct.nfp_bpf_cap_adjust_head, %struct.anon.234, %struct.anon.235, i8, i8, i8, i8 }
%struct.nfp_ccm = type { ptr, [2048 x i32], i16, i16, %struct.sk_buff_head, %struct.wait_queue_head }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nfp_bpf_cap_adjust_head = type { i32, i32, i32, i32, i32 }
%struct.anon.234 = type { i32, i32, i32, i32, i32, i32 }
%struct.anon.235 = type { i32, i32, i32, i32 }
%struct.bpf_map = type { ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], i8, i8, [30 x i8], %struct.atomic64_t, %struct.atomic64_t, %struct.work_struct, %struct.mutex, %struct.atomic64_t, [96 x i8] }
%struct.atomic64_t = type { i64 }
%struct.bpf_offloaded_map = type { %struct.bpf_map, ptr, ptr, ptr, %struct.list_head, [108 x i8] }
%struct.nfp_bpf_map = type { ptr, ptr, i32, %struct.spinlock, i32, i32, i64, ptr, %struct.list_head, [0 x %struct.nfp_bpf_map_word] }
%struct.nfp_bpf_map_word = type { i8 }
%struct.cmsg_bpf_event = type { %struct.nfp_ccm_hdr, i32, i64, i32, i32, [0 x i8] }
%struct.nfp_ccm_hdr = type { %union.anon.236 }
%union.anon.236 = type { i32 }
%struct.anon.237 = type { i8, i8, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nfp_net_dp = type { ptr, ptr, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.nfp_bpf_neutral_map = type { %struct.rhash_head, ptr, i32, i32 }
%struct.rhash_head = type { ptr }
%struct.rhashtable_compare_arg = type { ptr, ptr }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }
%struct.callback_head = type { ptr, ptr }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.130 }
%union.anon.130 = type { %struct.anon.131 }
%struct.anon.131 = type { %struct.anon.132, [0 x %struct.sock_filter] }
%struct.anon.132 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_prog_aux = type { %struct.atomic64_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.mutex, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, %struct.hlist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.bpf_ksym, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i32, [2 x ptr], [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, %union.anon.129 }
%struct.bpf_ksym = type { i32, i32, [128 x i8], %struct.list_head, %struct.latch_tree_node, i8 }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.129 = type { %struct.work_struct }
%struct.bpf_prog_offload = type { ptr, ptr, ptr, ptr, %struct.list_head, i8, i8, ptr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.192, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.213, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.192 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.213 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.nfp_prog = type { ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, %struct.list_head }
%struct.nfp_net = type { %struct.nfp_net_dp, %struct.nfp_net_fw_version, i32, i32, i32, i8, i32, [40 x i8], [128 x i8], %struct.xdp_attachment_info, %struct.xdp_attachment_info, i32, i32, i32, i32, i32, [88 x i8], [64 x %struct.nfp_net_r_vector], [66 x %struct.msix_entry], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], i8, %struct.spinlock, %struct.spinlock, i32, i8, i8, %struct.timer_list, i32, %struct.semaphore, i8, i8, i32, i32, i32, i32, ptr, ptr, ptr, %struct.nfp_net_tlv_caps, i32, i32, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.225, ptr, %struct.list_head, ptr, ptr, i8, ptr, ptr, [116 x i8] }
%struct.nfp_net_fw_version = type { i8, i8, i8, i8 }
%struct.xdp_attachment_info = type { ptr, i32 }
%struct.nfp_net_r_vector = type { ptr, %union.anon.214, ptr, ptr, i16, i16, %struct.dim, %struct.dim, %struct.u64_stats_sync, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, %struct.u64_stats_sync, i64, i64, [104 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, ptr, [24 x i8], %struct.cpumask, [20 x i8] }
%union.anon.214 = type { %struct.napi_struct }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.cpumask = type { [1 x i32] }
%struct.msix_entry = type { i32, i16 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.nfp_net_tlv_caps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.anon.225 = type { %struct.sk_buff_head, %struct.wait_queue_head, ptr, %struct.work_struct, %struct.work_struct, i16 }
%struct.page = type { i32, %union.anon.2, %union.anon.188, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.188 = type { %struct.atomic_t }
%struct.bpf_insn = type { i8, i8, i16, i32 }
%struct.nfp_insn_meta = type { %struct.bpf_insn, %union.anon.238, i32, i16, i16, i16, ptr, %struct.list_head }
%union.anon.238 = type { %struct.anon.242 }
%struct.anon.242 = type { i32, %struct.bpf_reg_state, %struct.nfp_bpf_reg_state }
%struct.bpf_reg_state = type { i32, i32, %union.anon.118, i32, i32, %struct.tnum, i64, i64, i64, i64, i32, i32, i32, i32, ptr, i32, i32, i32, i8 }
%union.anon.118 = type { %struct.anon.119 }
%struct.anon.119 = type { ptr, i32 }
%struct.tnum = type { i64, i64 }
%struct.nfp_bpf_reg_state = type { %struct.bpf_reg_state, i8 }

@nfp_bpf_maps_neutral_params = external dso_local local_unnamed_addr constant %struct.rhashtable_params, align 4
@.str = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"perf event: map id %lld (0x%llx) not recognized, dropping event\0A\00", [63 x i8] zeroinitializer }, align 32
@nfp_bpf_event_output._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 472, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nfp_bpf_event_output\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/ethernet/netronome/nfp/bpf/offload.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nfp_bpf_event_output._entry_ptr = internal global ptr @nfp_bpf_event_output._entry, section ".printk_index", align 4
@nfp_net_bpf_offload.__msg = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"nfp: FW does not support live reload\00", [59 x i8] zeroinitializer }, align 32
@nfp_bpf_dev_ops = dso_local constant { %struct.bpf_prog_offload_ops, [36 x i8] } { %struct.bpf_prog_offload_ops { ptr @nfp_verify_insn, ptr @nfp_bpf_finalize, ptr @nfp_bpf_opt_replace_insn, ptr @nfp_bpf_opt_remove_insns, ptr @nfp_bpf_verifier_prep, ptr @nfp_bpf_translate, ptr @nfp_bpf_destroy }, [36 x i8] zeroinitializer }, align 32
@nfp_bpf_map_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016NFP net bpf: map flags are not supported\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfp_bpf_map_alloc\00", [46 x i8] zeroinitializer }, align 32
@nfp_bpf_map_alloc._entry_ptr = internal global ptr @nfp_bpf_map_alloc._entry, section ".printk_index", align 4
@nfp_bpf_map_alloc._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016NFP net bpf: map type not supported\0A\00", [57 x i8] zeroinitializer }, align 32
@nfp_bpf_map_alloc._entry_ptr.9 = internal global ptr @nfp_bpf_map_alloc._entry.7, section ".printk_index", align 4
@nfp_bpf_map_alloc._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016NFP net bpf: too many maps for a device\0A\00", [53 x i8] zeroinitializer }, align 32
@nfp_bpf_map_alloc._entry_ptr.12 = internal global ptr @nfp_bpf_map_alloc._entry.10, section ".printk_index", align 4
@nfp_bpf_map_alloc._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.2, i32 359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016NFP net bpf: map with too many elements: %u, left: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@nfp_bpf_map_alloc._entry_ptr.15 = internal global ptr @nfp_bpf_map_alloc._entry.13, section ".printk_index", align 4
@nfp_bpf_map_alloc._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.6, ptr @.str.2, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\016NFP net bpf: map elements too large: %u, FW max element size (key+value): %u\0A\00", [48 x i8] zeroinitializer }, align 32
@nfp_bpf_map_alloc._entry_ptr.18 = internal global ptr @nfp_bpf_map_alloc._entry.16, section ".printk_index", align 4
@nfp_bpf_map_alloc._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.6, ptr @.str.2, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016NFP net bpf: map key size %u, FW max is %u\0A\00", [50 x i8] zeroinitializer }, align 32
@nfp_bpf_map_alloc._entry_ptr.21 = internal global ptr @nfp_bpf_map_alloc._entry.19, section ".printk_index", align 4
@nfp_bpf_map_alloc._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.6, ptr @.str.2, i32 378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016NFP net bpf: map value size %u, FW max is %u\0A\00", [48 x i8] zeroinitializer }, align 32
@nfp_bpf_map_alloc._entry_ptr.24 = internal global ptr @nfp_bpf_map_alloc._entry.22, section ".printk_index", align 4
@nfp_bpf_map_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&nfp_map->cache_lock\00", [43 x i8] zeroinitializer }, align 32
@nfp_bpf_map_ops = internal constant { %struct.bpf_map_dev_ops, [16 x i8] } { %struct.bpf_map_dev_ops { ptr @nfp_bpf_map_get_next_key, ptr @nfp_bpf_map_lookup_entry, ptr @nfp_bpf_map_update_entry, ptr @nfp_bpf_map_delete_elem }, [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nfp_bpf_map_free.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned.30 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.31 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@nfp_net_bpf_load.__msg = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"nfp: BPF offload not supported with potential packet access beyond HW packet split boundary\00", [36 x i8] zeroinitializer }, align 32
@nfp_net_bpf_load.__msg.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nfp: stack too large\00", [43 x i8] zeroinitializer }, align 32
@nfp_net_bpf_load.__msg.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfp: program too long\00", [42 x i8] zeroinitializer }, align 32
@nfp_net_bpf_load.__msg.34 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"nfp: FW command error while loading BPF\00", [56 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@nfp_net_bpf_start.__msg = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"nfp: FW command error while enabling BPF\00", [55 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.38 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned.39 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned.40 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.42 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.44 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 3, i64 4, i64 7]
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 471, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 588, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant [16 x i8] c"nfp_bpf_dev_ops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 611, i32 35 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 343, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 348, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 352, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 357, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 365, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 372, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 377, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 392, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [16 x i8] c"nfp_bpf_map_ops\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 324, i32 37 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 695, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 594, i32 8 }
@___asan_gen_.138 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 723, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 506, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 512, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 518, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 540, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 326, i32 6 }
@___asan_gen_.158 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.159 = private constant [52 x i8] c"../drivers/net/ethernet/netronome/nfp/bpf/offload.c\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 560, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 755, i32 10 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @nfp_bpf_event_output._entry, ptr @nfp_bpf_event_output._entry_ptr, ptr @nfp_bpf_map_alloc._entry, ptr @nfp_bpf_map_alloc._entry.10, ptr @nfp_bpf_map_alloc._entry.13, ptr @nfp_bpf_map_alloc._entry.16, ptr @nfp_bpf_map_alloc._entry.19, ptr @nfp_bpf_map_alloc._entry.22, ptr @nfp_bpf_map_alloc._entry.7, ptr @nfp_bpf_map_alloc._entry_ptr, ptr @nfp_bpf_map_alloc._entry_ptr.12, ptr @nfp_bpf_map_alloc._entry_ptr.15, ptr @nfp_bpf_map_alloc._entry_ptr.18, ptr @nfp_bpf_map_alloc._entry_ptr.21, ptr @nfp_bpf_map_alloc._entry_ptr.24, ptr @nfp_bpf_map_alloc._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @nfp_net_bpf_offload.__msg, ptr @nfp_bpf_dev_ops, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @nfp_bpf_map_alloc.__key, ptr @.str.25, ptr @nfp_bpf_map_ops, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @nfp_net_bpf_load.__msg, ptr @nfp_net_bpf_load.__msg.32, ptr @nfp_net_bpf_load.__msg.33, ptr @nfp_net_bpf_load.__msg.34, ptr @.str.35, ptr @.str.36, ptr @nfp_net_bpf_start.__msg, ptr @.str.38], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_event_output._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_bpf_offload.__msg to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_dev_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_map_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_map_alloc._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_map_alloc._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_map_alloc._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_map_alloc._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_map_alloc._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_map_alloc._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_map_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_map_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_bpf_load.__msg to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_bpf_load.__msg.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_bpf_load.__msg.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_bpf_load.__msg.34 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_bpf_start.__msg to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_ndo_bpf(ptr nocapture noundef readonly %app, ptr nocapture noundef readnone %nn, ptr nocapture noundef readonly %bpf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bpf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bpf, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.return_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb:                                            ; preds = %entry
  %priv = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %5 = getelementptr inbounds %struct.netdev_bpf, ptr %bpf, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %maps.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %4, i32 0, i32 12
  %8 = ptrtoint ptr %maps.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %maps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %sw.bb.return_crit_edge, label %if.end.i

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end.i:                                         ; preds = %sw.bb
  %map_flags.i = getelementptr inbounds %struct.bpf_map, ptr %7, i32 0, i32 8
  %10 = ptrtoint ptr %map_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %map_flags.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.not.i = icmp eq i32 %11, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %numa_node.i = getelementptr inbounds %struct.bpf_map, ptr %7, i32 0, i32 12
  %12 = ptrtoint ptr %numa_node.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %numa_node.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.not.i = icmp eq i32 %13, -1
  br i1 %cmp.not.i, label %if.end4.i, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #15
  br label %return

if.end4.i:                                        ; preds = %lor.lhs.false.i
  %map_type.i = getelementptr inbounds %struct.bpf_map, ptr %7, i32 0, i32 3
  %14 = ptrtoint ptr %map_type.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %map_type.i, align 4
  %shl.i = shl nuw i32 1, %15
  %and.i = and i32 %shl.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool8.not.i, label %do.end12.i, label %if.end15.i

do.end12.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #15
  br label %return

if.end15.i:                                       ; preds = %if.end4.i
  %max_maps.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %4, i32 0, i32 12, i32 1
  %16 = ptrtoint ptr %max_maps.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_maps.i, align 4
  %maps_in_use.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %4, i32 0, i32 7
  %18 = ptrtoint ptr %maps_in_use.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %maps_in_use.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp17.i = icmp eq i32 %17, %19
  br i1 %cmp17.i, label %do.end21.i, label %if.end24.i

do.end21.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #15
  br label %return

if.end24.i:                                       ; preds = %if.end15.i
  %max_elems.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %4, i32 0, i32 12, i32 2
  %20 = ptrtoint ptr %max_elems.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_elems.i, align 4
  %map_elems_in_use.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %4, i32 0, i32 8
  %22 = ptrtoint ptr %map_elems_in_use.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %map_elems_in_use.i, align 4
  %sub.i = sub i32 %21, %23
  %max_entries.i = getelementptr inbounds %struct.bpf_map, ptr %7, i32 0, i32 6
  %24 = ptrtoint ptr %max_entries.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_entries.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %25)
  %cmp27.i = icmp ult i32 %sub.i, %25
  br i1 %cmp27.i, label %do.end31.i, label %if.end40.i

do.end31.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  %call39.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %25, i32 noundef %sub.i) #15
  br label %return

if.end40.i:                                       ; preds = %if.end24.i
  %key_size.i = getelementptr inbounds %struct.bpf_map, ptr %7, i32 0, i32 4
  %26 = ptrtoint ptr %key_size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %key_size.i, align 16
  %sub42.i = add i32 %27, -1
  %or.i = or i32 %sub42.i, 7
  %value_size.i = getelementptr inbounds %struct.bpf_map, ptr %7, i32 0, i32 5
  %28 = ptrtoint ptr %value_size.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %value_size.i, align 4
  %sub44.i = add i32 %29, -1
  %or45.i = or i32 %sub44.i, 7
  %add46.i = add i32 %or.i, 2
  %add47.i = add i32 %add46.i, %or45.i
  %max_elem_sz.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %4, i32 0, i32 12, i32 5
  %30 = ptrtoint ptr %max_elem_sz.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_elem_sz.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add47.i, i32 %31)
  %cmp49.i = icmp ugt i32 %add47.i, %31
  br i1 %cmp49.i, label %do.end53.i, label %if.end69.i

do.end53.i:                                       ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  %call68.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %add47.i, i32 noundef %31) #15
  br label %return

if.end69.i:                                       ; preds = %if.end40.i
  %max_key_sz.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %4, i32 0, i32 12, i32 3
  %32 = ptrtoint ptr %max_key_sz.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_key_sz.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %33)
  %cmp73.i = icmp ugt i32 %27, %33
  br i1 %cmp73.i, label %do.end77.i, label %if.end84.i

do.end77.i:                                       ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #14
  %call83.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %27, i32 noundef %33) #15
  br label %return

if.end84.i:                                       ; preds = %if.end69.i
  %max_val_sz.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %4, i32 0, i32 12, i32 4
  %34 = ptrtoint ptr %max_val_sz.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_val_sz.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %35)
  %cmp88.i = icmp ugt i32 %29, %35
  br i1 %cmp88.i, label %do.end92.i, label %if.end8.i.i.i

do.end92.i:                                       ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #14
  %call98.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %29, i32 noundef %35) #15
  br label %return

if.end8.i.i.i:                                    ; preds = %if.end84.i
  %sub103.i = add i32 %29, 3
  %div179.i = lshr i32 %sub103.i, 2
  %add104.i = add nuw nsw i32 %div179.i, 88
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add104.i, i32 noundef 1052096) #16
  %tobool106.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool106.not.i, label %if.end8.i.i.i.return_crit_edge, label %if.end108.i

if.end8.i.i.i.return_crit_edge:                   ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end108.i:                                      ; preds = %if.end8.i.i.i
  %dev_priv.i = getelementptr inbounds %struct.bpf_offloaded_map, ptr %7, i32 0, i32 3
  %36 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call9.i.i.i, ptr %dev_priv.i, align 8
  %37 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %7, ptr %call9.i.i.i, align 128
  %bpf110.i = getelementptr inbounds %struct.nfp_bpf_map, ptr %call9.i.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %bpf110.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %4, ptr %bpf110.i, align 4
  %cache_lock.i = getelementptr inbounds %struct.nfp_bpf_map, ptr %call9.i.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %cache_lock.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @nfp_bpf_map_alloc.__key, i16 noundef signext 3) #12
  %call116.i = tail call i64 @nfp_bpf_ctrl_alloc_map(ptr noundef %4, ptr noundef %7) #12
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call116.i)
  %cmp117.i = icmp slt i64 %call116.i, 0
  br i1 %cmp117.i, label %if.then118.i, label %if.end119.i

if.then118.i:                                     ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #12
  %conv.i = trunc i64 %call116.i to i32
  br label %return

if.end119.i:                                      ; preds = %if.end108.i
  %conv120.i = trunc i64 %call116.i to i32
  %tid.i = getelementptr inbounds %struct.nfp_bpf_map, ptr %call9.i.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %tid.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv120.i, ptr %tid.i, align 8
  %dev_ops.i = getelementptr inbounds %struct.bpf_offloaded_map, ptr %7, i32 0, i32 2
  %40 = ptrtoint ptr %dev_ops.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @nfp_bpf_map_ops, ptr %dev_ops.i, align 4
  %41 = ptrtoint ptr %maps_in_use.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %maps_in_use.i, align 4
  %inc.i = add i32 %42, 1
  store i32 %inc.i, ptr %maps_in_use.i, align 4
  %43 = ptrtoint ptr %max_entries.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max_entries.i, align 8
  %45 = ptrtoint ptr %map_elems_in_use.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %map_elems_in_use.i, align 4
  %add125.i = add i32 %46, %44
  store i32 %add125.i, ptr %map_elems_in_use.i, align 4
  %l.i = getelementptr inbounds %struct.nfp_bpf_map, ptr %call9.i.i.i, i32 0, i32 8
  %map_list.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %4, i32 0, i32 6
  %prev.i.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %4, i32 0, i32 6, i32 1
  %47 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %l.i, ptr noundef %48, ptr noundef %map_list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i180.i, label %if.end119.i.return_crit_edge

if.end119.i.return_crit_edge:                     ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end.i.i180.i:                                  ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %l.i, ptr %prev.i.i, align 4
  %50 = ptrtoint ptr %l.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %map_list.i, ptr %l.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.nfp_bpf_map, ptr %call9.i.i.i, i32 0, i32 8, i32 1
  %51 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev3.i.i.i, align 16
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %l.i, ptr %48, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %priv2 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %53 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %priv2, align 4
  %55 = getelementptr inbounds %struct.netdev_bpf, ptr %bpf, i32 0, i32 1
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %dev_priv.i8 = getelementptr inbounds %struct.bpf_offloaded_map, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %dev_priv.i8 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev_priv.i8, align 8
  tail call void @nfp_bpf_ctrl_free_map(ptr noundef %54, ptr noundef %59) #12
  %cache.i = getelementptr inbounds %struct.nfp_bpf_map, ptr %59, i32 0, i32 7
  %60 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cache.i, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef %61, i32 noundef 0) #12
  %cache_blockers.i = getelementptr inbounds %struct.nfp_bpf_map, ptr %59, i32 0, i32 4
  %62 = ptrtoint ptr %cache_blockers.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cache_blockers.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.i9 = icmp eq i32 %63, 0
  br i1 %tobool.not.i9, label %sw.bb1.if.end28.i_crit_edge, label %land.rhs.i

sw.bb1.if.end28.i_crit_edge:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i

land.rhs.i:                                       ; preds = %sw.bb1
  %.b1.i = load i1, ptr @nfp_bpf_map_free.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.end28.i_crit_edge, label %if.then.i, !prof !110

land.rhs.i.if.end28.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nfp_bpf_map_free.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 416, i32 noundef 9, ptr noundef null) #12
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end28.i_crit_edge, %sw.bb1.if.end28.i_crit_edge
  %l.i10 = getelementptr inbounds %struct.nfp_bpf_map, ptr %59, i32 0, i32 8
  %call.i.i.i11 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %l.i10) #12
  br i1 %call.i.i.i11, label %if.end.i.i.i12, label %if.end28.i.nfp_bpf_map_free.exit_crit_edge

if.end28.i.nfp_bpf_map_free.exit_crit_edge:       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_bpf_map_free.exit

if.end.i.i.i12:                                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.nfp_bpf_map, ptr %59, i32 0, i32 8, i32 1
  %64 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i.i.i, align 4
  %66 = ptrtoint ptr %l.i10 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %l.i10, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev1.i.i.i.i, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %67, ptr %65, align 4
  br label %nfp_bpf_map_free.exit

nfp_bpf_map_free.exit:                            ; preds = %if.end.i.i.i12, %if.end28.i.nfp_bpf_map_free.exit_crit_edge
  %70 = ptrtoint ptr %l.i10 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %l.i10, ptr %l.i10, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.nfp_bpf_map, ptr %59, i32 0, i32 8, i32 1
  %71 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %l.i10, ptr %prev.i3.i.i, align 4
  %max_entries.i13 = getelementptr inbounds %struct.bpf_map, ptr %57, i32 0, i32 6
  %72 = ptrtoint ptr %max_entries.i13 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %max_entries.i13, align 8
  %map_elems_in_use.i14 = getelementptr inbounds %struct.nfp_app_bpf, ptr %54, i32 0, i32 8
  %74 = ptrtoint ptr %map_elems_in_use.i14 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %map_elems_in_use.i14, align 4
  %sub.i15 = sub i32 %75, %73
  store i32 %sub.i15, ptr %map_elems_in_use.i14, align 4
  %maps_in_use.i16 = getelementptr inbounds %struct.nfp_app_bpf, ptr %54, i32 0, i32 7
  %76 = ptrtoint ptr %maps_in_use.i16 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %maps_in_use.i16, align 4
  %dec.i = add i32 %77, -1
  store i32 %dec.i, ptr %maps_in_use.i16, align 4
  tail call void @kfree(ptr noundef %59) #12
  br label %return

return:                                           ; preds = %nfp_bpf_map_free.exit, %if.end.i.i180.i, %if.end119.i.return_crit_edge, %if.then118.i, %if.end8.i.i.i.return_crit_edge, %do.end92.i, %do.end77.i, %do.end53.i, %do.end31.i, %do.end21.i, %do.end12.i, %do.end.i, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %nfp_bpf_map_free.exit ], [ -22, %entry.return_crit_edge ], [ -22, %do.end.i ], [ -12, %do.end21.i ], [ -12, %do.end31.i ], [ -12, %do.end53.i ], [ -12, %do.end77.i ], [ -12, %do.end92.i ], [ %conv.i, %if.then118.i ], [ -95, %do.end12.i ], [ -95, %sw.bb.return_crit_edge ], [ -12, %if.end8.i.i.i.return_crit_edge ], [ 0, %if.end119.i.return_crit_edge ], [ 0, %if.end.i.i180.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_bpf_event_output(ptr noundef %bpf, ptr noundef %data, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %map_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %map_id) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %len)
  %cmp = icmp ult i32 %len, 24
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %pkt_size1 = getelementptr inbounds %struct.cmsg_bpf_event, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %pkt_size1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pkt_size1, align 4
  %data_size2 = getelementptr inbounds %struct.cmsg_bpf_event, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %data_size2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_size2, align 8
  %map_ptr = getelementptr inbounds %struct.cmsg_bpf_event, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %map_ptr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %map_ptr, align 8
  %conv = trunc i64 %5 to i32
  %6 = ptrtoint ptr %map_id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %map_id, align 4
  %add = add i32 %1, 24
  %add3 = add i32 %add, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %add3, i32 %len)
  %cmp4 = icmp ugt i32 %add3, %len
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %ver = getelementptr inbounds %struct.anon.237, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp9.not = icmp eq i8 %8, 1
  br i1 %cmp9.not, label %if.end12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %9 = tail call i32 @llvm.read_register.i32(metadata !100) #12
  %and.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !111
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end12.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end12.rcu_read_lock.exit_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end12
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 696, ptr noundef nonnull @.str.27) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end12.rcu_read_lock.exit_crit_edge
  %maps_neutral = getelementptr inbounds %struct.nfp_app_bpf, ptr %bpf, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfp_bpf_maps_neutral_params to i32))
  %.unpack = load i32, ptr @nfp_bpf_maps_neutral_params, align 4
  %13 = insertvalue [7 x i32] undef, i32 %.unpack, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_bpf_maps_neutral_params, i32 0, i32 2) to i32))
  %.unpack58 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_bpf_maps_neutral_params, i32 0, i32 2), align 4
  %14 = insertvalue [7 x i32] %13, i32 %.unpack58, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_bpf_maps_neutral_params, i32 0, i32 4) to i32))
  %.unpack59 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_bpf_maps_neutral_params, i32 0, i32 4), align 4
  %15 = insertvalue [7 x i32] %14, i32 %.unpack59, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_bpf_maps_neutral_params, i32 0, i32 5) to i32))
  %.unpack60 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_bpf_maps_neutral_params, i32 0, i32 5), align 4
  %16 = insertvalue [7 x i32] %15, i32 %.unpack60, 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_bpf_maps_neutral_params, i32 0, i32 7) to i32))
  %.unpack61 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_bpf_maps_neutral_params, i32 0, i32 7), align 4
  %17 = insertvalue [7 x i32] %16, i32 %.unpack61, 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_bpf_maps_neutral_params, i32 0, i32 8) to i32))
  %.unpack62 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_bpf_maps_neutral_params, i32 0, i32 8), align 4
  %18 = insertvalue [7 x i32] %17, i32 %.unpack62, 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_bpf_maps_neutral_params, i32 0, i32 9) to i32))
  %.unpack63 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_bpf_maps_neutral_params, i32 0, i32 9), align 4
  %19 = insertvalue [7 x i32] %18, i32 %.unpack63, 6
  %call = call fastcc ptr @rhashtable_lookup(ptr noundef %maps_neutral, ptr noundef nonnull %map_id, [7 x i32] %19)
  %tobool.not = icmp eq ptr %call, null
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %5)
  %cmp13 = icmp ugt i64 %5, 4294967295
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp13
  br i1 %or.cond, label %if.then15, label %if.end26

if.then15:                                        ; preds = %rcu_read_lock.exit
  %call.i64 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i64, label %if.then15.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i67

if.then15.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i67:                                ; preds = %if.then15
  %call1.i65 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i65)
  %tobool.not.i66 = icmp eq i32 %call1.i65, 0
  br i1 %tobool.not.i66, label %land.lhs.true.i67.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i69

land.lhs.true.i67.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i67
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i69:                               ; preds = %land.lhs.true.i67
  %.b4.i68 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i68, label %land.lhs.true2.i69.rcu_read_unlock.exit_crit_edge, label %if.then.i70

land.lhs.true2.i69.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i69
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i70:                                      ; preds = %land.lhs.true2.i69
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 724, ptr noundef nonnull @.str.31) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i70, %land.lhs.true2.i69.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i67.rcu_read_unlock.exit_crit_edge, %if.then15.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !112
  %20 = call i32 @llvm.read_register.i32(metadata !100) #12
  %and.i.i.i.i.i71 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i71 to ptr
  %preempt_count.i.i.i.i72 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i72 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i72, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i72, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %24 = ptrtoint ptr %bpf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bpf, align 4
  %ctrl = getelementptr inbounds %struct.nfp_app, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctrl, align 4
  %call16 = call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %rcu_read_unlock.exit.cleanup_crit_edge, label %if.then20, !prof !110

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then20:                                        ; preds = %rcu_read_unlock.exit
  %netdev = getelementptr inbounds %struct.nfp_net_dp, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %netdev, align 4
  %tobool21.not = icmp eq ptr %29, null
  br i1 %tobool21.not, label %do.end, label %if.then22

if.then22:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %29, ptr noundef nonnull @.str, i64 noundef %5, i64 noundef %5) #15
  br label %cleanup

do.end:                                           ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %27, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str, i64 noundef %5, i64 noundef %5) #15
  br label %cleanup

if.end26:                                         ; preds = %rcu_read_lock.exit
  %ptr = getelementptr inbounds %struct.nfp_bpf_neutral_map, ptr %call, i32 0, i32 1
  %32 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ptr, align 4
  %cpu_id = getelementptr inbounds %struct.cmsg_bpf_event, ptr %data, i32 0, i32 1
  %34 = ptrtoint ptr %cpu_id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cpu_id, align 4
  %conv27 = zext i32 %35 to i64
  %data28 = getelementptr inbounds %struct.cmsg_bpf_event, ptr %data, i32 0, i32 5
  %sub = add i32 %1, -1
  %or = or i32 %sub, 3
  %add29 = add i32 %or, 1
  %arrayidx = getelementptr %struct.cmsg_bpf_event, ptr %data, i32 0, i32 5, i32 %add29
  %conv30 = zext i32 %3 to i64
  %conv32 = zext i32 %1 to i64
  %call33 = call i64 @bpf_event_output(ptr noundef %33, i64 noundef %conv27, ptr noundef %arrayidx, i64 noundef %conv30, ptr noundef %data28, i64 noundef %conv32, ptr noundef nonnull @nfp_bpf_perf_event_copy) #12
  %call.i73 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i73, label %if.end26.rcu_read_unlock.exit83_crit_edge, label %land.lhs.true.i76

if.end26.rcu_read_unlock.exit83_crit_edge:        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit83

land.lhs.true.i76:                                ; preds = %if.end26
  %call1.i74 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i74)
  %tobool.not.i75 = icmp eq i32 %call1.i74, 0
  br i1 %tobool.not.i75, label %land.lhs.true.i76.rcu_read_unlock.exit83_crit_edge, label %land.lhs.true2.i78

land.lhs.true.i76.rcu_read_unlock.exit83_crit_edge: ; preds = %land.lhs.true.i76
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit83

land.lhs.true2.i78:                               ; preds = %land.lhs.true.i76
  %.b4.i77 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i77, label %land.lhs.true2.i78.rcu_read_unlock.exit83_crit_edge, label %if.then.i79

land.lhs.true2.i78.rcu_read_unlock.exit83_crit_edge: ; preds = %land.lhs.true2.i78
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit83

if.then.i79:                                      ; preds = %land.lhs.true2.i78
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 724, ptr noundef nonnull @.str.31) #12
  br label %rcu_read_unlock.exit83

rcu_read_unlock.exit83:                           ; preds = %if.then.i79, %land.lhs.true2.i78.rcu_read_unlock.exit83_crit_edge, %land.lhs.true.i76.rcu_read_unlock.exit83_crit_edge, %if.end26.rcu_read_unlock.exit83_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !112
  %36 = call i32 @llvm.read_register.i32(metadata !100) #12
  %and.i.i.i.i.i80 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i80 to ptr
  %preempt_count.i.i.i.i81 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i.i81 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i.i81, align 4
  %sub.i.i.i82 = add i32 %39, -1
  store volatile i32 %sub.i.i.i82, ptr %preempt_count.i.i.i.i81, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit83, %do.end, %if.then22, %rcu_read_unlock.exit.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rcu_read_unlock.exit83 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -22, %if.then22 ], [ -22, %do.end ], [ -22, %rcu_read_unlock.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %map_id) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rhashtable_lookup(ptr noundef %ht, ptr noundef %key, [7 x i32] %params.coerce) unnamed_addr #2 align 64 {
entry:
  %arg.i = alloca %struct.rhashtable_compare_arg, align 4
  call void @__sanitizer_cov_trace_pc() #14
  %params.coerce.fca.6.extract.i = extractvalue [7 x i32] %params.coerce, 6
  %0 = inttoptr i32 %params.coerce.fca.6.extract.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i) #12
  %1 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg.i, i32 0, i32 1
  %2 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ht, ptr %arg.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %key, ptr %1, align 4
  %4 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ht, align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.do.end12.i_crit_edge

entry.do.end12.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i

lor.lhs.false.i:                                  ; preds = %entry
  %call5.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end12.i_crit_edge

lor.lhs.false.i.do.end12.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call7.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i.do.end12.i_crit_edge, label %land.lhs.true9.i

land.lhs.true.i.do.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %.b92.i = load i1, ptr @__rhashtable_lookup.__warned, align 1
  br i1 %.b92.i, label %land.lhs.true9.i.do.end12.i_crit_edge, label %if.then.i

land.lhs.true9.i.do.end12.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i

if.then.i:                                        ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 594, ptr noundef nonnull @.str.29) #12
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then.i, %land.lhs.true9.i.do.end12.i_crit_edge, %land.lhs.true.i.do.end12.i_crit_edge, %lor.lhs.false.i.do.end12.i_crit_edge, %entry.do.end12.i_crit_edge
  %hashfn.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %key_len1.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.6.extract.i)
  %tobool19.not.i = icmp eq i32 %params.coerce.fca.6.extract.i, 0
  %head_offset.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %do.end60.i.if.then.i.i.i_crit_edge, %do.end12.i
  %tbl.0.i = phi ptr [ %5, %do.end12.i ], [ %36, %do.end60.i.if.then.i.i.i_crit_edge ]
  %hash_rnd.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %6 = ptrtoint ptr %hash_rnd.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hash_rnd.i.i, align 8
  %8 = ptrtoint ptr %hashfn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hashfn.i.i.i, align 4
  %10 = ptrtoint ptr %key_len1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %key_len1.i.i.i, align 4
  %call.i.i.i = call i32 %9(ptr noundef %key, i32 noundef %11, i32 noundef %7) #12
  %12 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tbl.0.i, align 128
  %sub.i.i.i = add i32 %13, -1
  %and.i3.i.i = and i32 %sub.i.i.i, %call.i.i.i
  %nest.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 1
  %14 = ptrtoint ptr %nest.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nest.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %cond.true.i.i, !prof !110

cond.true.i.i:                                    ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = call ptr @rht_bucket_nested(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i) #12
  br label %rht_bucket.exit.i

cond.false.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 8, i32 %and.i3.i.i
  br label %rht_bucket.exit.i

rht_bucket.exit.i:                                ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi ptr [ %call.i.i, %cond.true.i.i ], [ %arrayidx.i.i, %cond.false.i.i ]
  %16 = ptrtoint ptr %cond.i.i to i32
  %or.i.i.i = or i32 %16, 1
  %17 = inttoptr i32 %or.i.i.i to ptr
  br label %do.body16.i

do.body16.i:                                      ; preds = %do.cond34.i.do.body16.i_crit_edge, %rht_bucket.exit.i
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !113
  %18 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %cond.i.i, align 4
  %call.i93.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i)
  %tobool.not.i94.i = icmp eq i32 %call.i93.i, 0
  br i1 %tobool.not.i94.i, label %land.lhs.true.i.i, label %do.body16.i.rht_ptr_rcu.exit.i_crit_edge

do.body16.i.rht_ptr_rcu.exit.i_crit_edge:         ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr_rcu.exit.i

land.lhs.true.i.i:                                ; preds = %do.body16.i
  %call2.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.rht_ptr_rcu.exit.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.rht_ptr_rcu.exit.i_crit_edge:   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr_rcu.exit.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b11.i.i = load i1, ptr @rht_ptr_rcu.__warned, align 1
  br i1 %.b11.i.i, label %land.lhs.true4.i.i.rht_ptr_rcu.exit.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.rht_ptr_rcu.exit.i_crit_edge:  ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr_rcu.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 369, ptr noundef nonnull @.str.29) #12
  br label %rht_ptr_rcu.exit.i

rht_ptr_rcu.exit.i:                               ; preds = %if.then.i.i, %land.lhs.true4.i.i.rht_ptr_rcu.exit.i_crit_edge, %land.lhs.true.i.i.rht_ptr_rcu.exit.i_crit_edge, %do.body16.i.rht_ptr_rcu.exit.i_crit_edge
  %20 = ptrtoint ptr %19 to i32
  %and.i.i95.i = and i32 %20, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95.i)
  %tobool.not.i.i96.i = icmp eq i32 %and.i.i95.i, 0
  %cond.i.i.i = select i1 %tobool.not.i.i96.i, i32 %or.i.i.i, i32 %and.i.i95.i
  %21 = inttoptr i32 %cond.i.i.i to ptr
  %and.i106.i = and i32 %cond.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106.i)
  %tobool.i.not107.i = icmp eq i32 %and.i106.i, 0
  br i1 %tobool.i.not107.i, label %rht_ptr_rcu.exit.i.for.body.i_crit_edge, label %rht_ptr_rcu.exit.i.do.cond34.i_crit_edge

rht_ptr_rcu.exit.i.do.cond34.i_crit_edge:         ; preds = %rht_ptr_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond34.i

rht_ptr_rcu.exit.i.for.body.i_crit_edge:          ; preds = %rht_ptr_rcu.exit.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %rht_ptr_rcu.exit.i.for.body.i_crit_edge
  %he.0108.i = phi ptr [ %33, %for.inc.i.for.body.i_crit_edge ], [ %21, %rht_ptr_rcu.exit.i.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %head_offset.i.i, align 2
  %conv.i98.i = zext i16 %23 to i32
  %idx.neg.i99.i = sub nsw i32 0, %conv.i98.i
  %add.ptr.i100.i = getelementptr i8, ptr %he.0108.i, i32 %idx.neg.i99.i
  br i1 %tobool19.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %for.body.i
  %call22.i = call i32 %0(ptr noundef nonnull %arg.i, ptr noundef %add.ptr.i100.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %cond.true.i.__rhashtable_lookup.exit_crit_edge, label %cond.true.i.for.inc.i_crit_edge

cond.true.i.for.inc.i_crit_edge:                  ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

cond.true.i.__rhashtable_lookup.exit_crit_edge:   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_lookup.exit

cond.false.i:                                     ; preds = %for.body.i
  %24 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arg.i, align 4
  %key_offset.i.i = getelementptr inbounds %struct.rhashtable, ptr %25, i32 0, i32 3, i32 2
  %26 = ptrtoint ptr %key_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %key_offset.i.i, align 4
  %conv.i101.i = zext i16 %27 to i32
  %add.ptr.i102.i = getelementptr i8, ptr %add.ptr.i100.i, i32 %conv.i101.i
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %key_len.i.i = getelementptr inbounds %struct.rhashtable, ptr %25, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %key_len.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %key_len.i.i, align 2
  %conv3.i.i = zext i16 %31 to i32
  %bcmp.i = call i32 @bcmp(ptr %add.ptr.i102.i, ptr %29, i32 %conv3.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool26.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool26.not.i, label %cond.false.i.__rhashtable_lookup.exit_crit_edge, label %cond.false.i.for.inc.i_crit_edge

cond.false.i.for.inc.i_crit_edge:                 ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

cond.false.i.__rhashtable_lookup.exit_crit_edge:  ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_lookup.exit

for.inc.i:                                        ; preds = %cond.false.i.for.inc.i_crit_edge, %cond.true.i.for.inc.i_crit_edge
  %32 = ptrtoint ptr %he.0108.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %he.0108.i, align 4
  %34 = ptrtoint ptr %33 to i32
  %and.i.i = and i32 %34, 1
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do.cond34.i_crit_edge

for.inc.i.do.cond34.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond34.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

do.cond34.i:                                      ; preds = %for.inc.i.do.cond34.i_crit_edge, %rht_ptr_rcu.exit.i.do.cond34.i_crit_edge
  %he.0.lcssa.i = phi ptr [ %21, %rht_ptr_rcu.exit.i.do.cond34.i_crit_edge ], [ %33, %for.inc.i.do.cond34.i_crit_edge ]
  %cmp.not.i = icmp eq ptr %he.0.lcssa.i, %17
  br i1 %cmp.not.i, label %do.end39.i, label %do.cond34.i.do.body16.i_crit_edge

do.cond34.i.do.body16.i_crit_edge:                ; preds = %do.cond34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body16.i

do.end39.i:                                       ; preds = %do.cond34.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !114
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 5
  %35 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %future_tbl.i, align 4
  %call47.i = call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %lor.lhs.false49.i, label %do.end39.i.do.end60.i_crit_edge

do.end39.i.do.end60.i_crit_edge:                  ; preds = %do.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i

lor.lhs.false49.i:                                ; preds = %do.end39.i
  %call50.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %land.lhs.true52.i, label %lor.lhs.false49.i.do.end60.i_crit_edge

lor.lhs.false49.i.do.end60.i_crit_edge:           ; preds = %lor.lhs.false49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i

land.lhs.true52.i:                                ; preds = %lor.lhs.false49.i
  %call53.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %land.lhs.true52.i.do.end60.i_crit_edge, label %land.lhs.true55.i

land.lhs.true52.i.do.end60.i_crit_edge:           ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i

land.lhs.true55.i:                                ; preds = %land.lhs.true52.i
  %.b9091.i = load i1, ptr @__rhashtable_lookup.__warned.30, align 1
  br i1 %.b9091.i, label %land.lhs.true55.i.do.end60.i_crit_edge, label %if.then57.i

land.lhs.true55.i.do.end60.i_crit_edge:           ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i

if.then57.i:                                      ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_lookup.__warned.30, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 614, ptr noundef nonnull @.str.29) #12
  br label %do.end60.i

do.end60.i:                                       ; preds = %if.then57.i, %land.lhs.true55.i.do.end60.i_crit_edge, %land.lhs.true52.i.do.end60.i_crit_edge, %lor.lhs.false49.i.do.end60.i_crit_edge, %do.end39.i.do.end60.i_crit_edge
  %tobool62.not.i = icmp eq ptr %36, null
  br i1 %tobool62.not.i, label %__rhashtable_lookup.exit.thread, label %do.end60.i.if.then.i.i.i_crit_edge, !prof !110

do.end60.i.if.then.i.i.i_crit_edge:               ; preds = %do.end60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

__rhashtable_lookup.exit.thread:                  ; preds = %do.end60.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i) #12
  br label %cond.end

__rhashtable_lookup.exit:                         ; preds = %cond.false.i.__rhashtable_lookup.exit_crit_edge, %cond.true.i.__rhashtable_lookup.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i) #12
  %tobool.not = icmp eq ptr %he.0108.i, null
  br i1 %tobool.not, label %__rhashtable_lookup.exit.cond.end_crit_edge, label %cond.true

__rhashtable_lookup.exit.cond.end_crit_edge:      ; preds = %__rhashtable_lookup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %__rhashtable_lookup.exit
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %head_offset.i.i, align 2
  %conv.i = zext i16 %38 to i32
  %idx.neg.i = sub nsw i32 0, %conv.i
  %add.ptr.i = getelementptr i8, ptr %he.0108.i, i32 %idx.neg.i
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %__rhashtable_lookup.exit.cond.end_crit_edge, %__rhashtable_lookup.exit.thread
  %cond = phi ptr [ %add.ptr.i, %cond.true ], [ null, %__rhashtable_lookup.exit.cond.end_crit_edge ], [ null, %__rhashtable_lookup.exit.thread ]
  ret ptr %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @bpf_event_output(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfp_bpf_perf_event_copy(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src, i32 noundef %off, i32 noundef %len) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %src, i32 %off
  %0 = call ptr @memcpy(ptr %dst, ptr %add.ptr, i32 %len)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfp_bpf_offload_check_mtu(ptr nocapture noundef readonly %nn, ptr nocapture noundef readonly %prog, i32 noundef %mtu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_bar.i = getelementptr inbounds %struct.nfp_net_dp, ptr %nn, i32 0, i32 11
  %0 = ptrtoint ptr %ctrl_bar.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_bar.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 137
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #12, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !116
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 10
  %3 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %aux, align 4
  %max_pkt_offset = getelementptr inbounds %struct.bpf_prog_aux, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %max_pkt_offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_pkt_offset, align 4
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 %mtu)
  %conv = zext i8 %2 to i32
  %mul = shl nuw nsw i32 %conv, 6
  %sub = add nsw i32 %mul, -32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %7)
  %cmp2 = icmp ult i32 %sub, %7
  ret i1 %cmp2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_net_bpf_offload(ptr noundef %nn, ptr noundef %prog, i1 noundef zeroext %old_prog, ptr noundef writeonly %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %prog, null
  br i1 %tobool.not, label %if.end13, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %netdev = getelementptr inbounds %struct.nfp_net_dp, ptr %nn, i32 0, i32 1
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %call = tail call zeroext i1 @bpf_offload_dev_match(ptr noundef nonnull %prog, ptr noundef %1) #12
  br i1 %call, label %land.lhs.true2.critedge, label %land.lhs.true.cleanup35_crit_edge

land.lhs.true.cleanup35_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup35

land.lhs.true2.critedge:                          ; preds = %land.lhs.true
  br i1 %old_prog, label %if.then4, label %land.lhs.true2.critedge.land.lhs.true15_crit_edge

land.lhs.true2.critedge.land.lhs.true15_crit_edge: ; preds = %land.lhs.true2.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true15

if.then4:                                         ; preds = %land.lhs.true2.critedge
  %ctrl_bar.i = getelementptr inbounds %struct.nfp_net_dp, ptr %nn, i32 0, i32 11
  %2 = ptrtoint ptr %ctrl_bar.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_bar.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 129
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #12, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !116
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool7.not = icmp eq i8 %5, 0
  br i1 %tobool7.not, label %do.body, label %if.then4.if.end27_crit_edge

if.then4.if.end27_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

do.body:                                          ; preds = %if.then4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_net_bpf_offload.__msg) #12
  %tobool9.not = icmp eq ptr %extack, null
  br i1 %tobool9.not, label %do.body.cleanup35_crit_edge, label %if.then10

do.body.cleanup35_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup35

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @nfp_net_bpf_offload.__msg, ptr %extack, align 4
  br label %cleanup35

if.end13:                                         ; preds = %entry
  br i1 %old_prog, label %if.then25.critedge, label %if.end13.land.lhs.true15_crit_edge

if.end13.land.lhs.true15_crit_edge:               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true15

land.lhs.true15:                                  ; preds = %if.end13.land.lhs.true15_crit_edge, %land.lhs.true2.critedge.land.lhs.true15_crit_edge
  %ctrl = getelementptr inbounds %struct.nfp_net_dp, ptr %nn, i32 0, i32 6
  %7 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ctrl, align 16
  %and17 = and i32 %8, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %land.lhs.true15.if.end27_crit_edge, label %land.lhs.true15.cleanup35_crit_edge

land.lhs.true15.cleanup35_crit_edge:              ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup35

land.lhs.true15.if.end27_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then25.critedge:                               ; preds = %if.end13
  %ctrl.i = getelementptr inbounds %struct.nfp_net_dp, ptr %nn, i32 0, i32 6
  %9 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ctrl.i, align 16
  %and.i = and i32 %10, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then25.critedge.cleanup35_crit_edge, label %if.end.i

if.then25.critedge.cleanup35_crit_edge:           ; preds = %if.then25.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup35

if.end.i:                                         ; preds = %if.then25.critedge
  call void @__sanitizer_cov_trace_pc() #14
  %and3.i = and i32 %10, -134217729
  %11 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and3.i, ptr %ctrl.i, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !117
  tail call void @arm_heavy_mb() #12
  %12 = tail call i32 @llvm.bswap.i32(i32 %and3.i) #12
  %ctrl_bar.i.i = getelementptr inbounds %struct.nfp_net_dp, ptr %nn, i32 0, i32 11
  %13 = ptrtoint ptr %ctrl_bar.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctrl_bar.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #12, !srcloc !118
  %call.i = tail call i32 @nfp_net_reconfig(ptr noundef %nn, i32 noundef 1) #12
  br label %cleanup35

if.end27:                                         ; preds = %land.lhs.true15.if.end27_crit_edge, %if.then4.if.end27_crit_edge
  %aux.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 10
  %15 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %aux.i, align 4
  %offload.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %16, i32 0, i32 48
  %17 = ptrtoint ptr %offload.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %offload.i, align 8
  %dev_priv.i = getelementptr inbounds %struct.bpf_prog_offload, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_priv.i, align 4
  %netdev.i = getelementptr inbounds %struct.nfp_net_dp, ptr %nn, i32 0, i32 1
  %21 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %netdev.i, align 4
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 20
  %23 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mtu.i, align 4
  %ctrl_bar.i.i.i = getelementptr inbounds %struct.nfp_net_dp, ptr %nn, i32 0, i32 11
  %25 = ptrtoint ptr %ctrl_bar.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctrl_bar.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %26, i32 137
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i) #12, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !116
  %28 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %aux.i, align 4
  %max_pkt_offset.i.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %max_pkt_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_pkt_offset.i.i, align 4
  %32 = tail call i32 @llvm.umin.i32(i32 %31, i32 %24) #12
  %conv.i.i = zext i8 %27 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 6
  %sub.i.i = add nsw i32 %mul.i.i, -32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %32)
  %cmp2.i.i = icmp ult i32 %sub.i.i, %32
  br i1 %cmp2.i.i, label %do.body.i, label %if.end2.i

do.body.i:                                        ; preds = %if.end27
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_net_bpf_load.__msg) #12
  %tobool.not.i56 = icmp eq ptr %extack, null
  br i1 %tobool.not.i56, label %do.body.i.cleanup35_crit_edge, label %if.then1.i

do.body.i.cleanup35_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup35

if.then1.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @nfp_net_bpf_load.__msg, ptr %extack, align 4
  br label %cleanup35

if.end2.i:                                        ; preds = %if.end27
  %34 = ptrtoint ptr %ctrl_bar.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctrl_bar.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %35, i32 136
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #12, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !116
  %conv.i57 = zext i8 %36 to i32
  %mul.i = shl nuw nsw i32 %conv.i57, 6
  %stack_size.i = getelementptr inbounds %struct.nfp_prog, ptr %20, i32 0, i32 4
  %37 = ptrtoint ptr %stack_size.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %stack_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %mul.i)
  %cmp.i = icmp ugt i32 %38, %mul.i
  br i1 %cmp.i, label %do.body6.i, label %if.end14.i

do.body6.i:                                       ; preds = %if.end2.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_net_bpf_load.__msg.32) #12
  %tobool8.not.i = icmp eq ptr %extack, null
  br i1 %tobool8.not.i, label %do.body6.i.cleanup35_crit_edge, label %if.then9.i

do.body6.i.cleanup35_crit_edge:                   ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup35

if.then9.i:                                       ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @nfp_net_bpf_load.__msg.32, ptr %extack, align 4
  br label %cleanup35

if.end14.i:                                       ; preds = %if.end2.i
  %40 = ptrtoint ptr %ctrl_bar.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctrl_bar.i.i.i, align 4
  %add.ptr.i100.i = getelementptr i8, ptr %41, i32 130
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i100.i) #12, !srcloc !119
  %43 = tail call i16 @llvm.bswap.i16(i16 %42) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !120
  %conv16.i = zext i16 %43 to i32
  %prog_len.i = getelementptr inbounds %struct.nfp_prog, ptr %20, i32 0, i32 2
  %44 = ptrtoint ptr %prog_len.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %prog_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %conv16.i)
  %cmp17.i = icmp ugt i32 %45, %conv16.i
  br i1 %cmp17.i, label %do.body20.i, label %if.end28.i

do.body20.i:                                      ; preds = %if.end14.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_net_bpf_load.__msg.33) #12
  %tobool22.not.i = icmp eq ptr %extack, null
  br i1 %tobool22.not.i, label %do.body20.i.cleanup35_crit_edge, label %if.then23.i

do.body20.i.cleanup35_crit_edge:                  ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup35

if.then23.i:                                      ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @nfp_net_bpf_load.__msg.33, ptr %extack, align 4
  br label %cleanup35

if.end28.i:                                       ; preds = %if.end14.i
  %app_priv.i = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 58
  %47 = ptrtoint ptr %app_priv.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %app_priv.i, align 8
  %call29.i = tail call ptr @nfp_bpf_relo_for_vnic(ptr noundef %20, ptr noundef %48) #12
  %cmp.i.i = icmp ugt ptr %call29.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then31.i, label %if.end33.i

if.then31.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %call29.i to i32
  br label %nfp_net_bpf_load.exit

if.end33.i:                                       ; preds = %if.end28.i
  %50 = ptrtoint ptr %nn to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %nn, align 128
  %52 = ptrtoint ptr %prog_len.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %prog_len.i, align 4
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %call29.i) #12
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.end33.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !110

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %51) #12
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %51, i32 0, i32 3
  %54 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %55, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %56 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %51, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %57, %if.end.i.i.i ], [ %55, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #12
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  %58 = ptrtoint ptr %nn to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %nn, align 128
  tail call void @debug_dma_mapping_error(ptr noundef %59, i32 noundef -1) #12
  br label %if.then42.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end33.i
  %mul36.i = shl i32 %53, 3
  tail call void @debug_dma_map_single(ptr noundef %51, ptr noundef %call29.i, i32 noundef %mul36.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %60 = load ptr, ptr @mem_map, align 4
  %61 = ptrtoint ptr %call29.i to i32
  %sub.i101.i = add i32 %61, 1073741824
  %shr.i.i = lshr i32 %sub.i101.i, 12
  %add.ptr.i102.i = getelementptr %struct.page, ptr %60, i32 %shr.i.i
  %and.i.i = and i32 %61, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %51, ptr noundef %add.ptr.i102.i, i32 noundef %and.i.i, i32 noundef %mul36.i, i32 noundef 1, i32 noundef 0) #12
  %62 = ptrtoint ptr %nn to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %nn, align 128
  tail call void @debug_dma_mapping_error(ptr noundef %63, i32 noundef %call41.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i103.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i103.i, label %dma_map_single_attrs.exit.i.if.then42.i_crit_edge, label %if.end43.i

dma_map_single_attrs.exit.i.if.then42.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then42.i

if.then42.i:                                      ; preds = %dma_map_single_attrs.exit.i.if.then42.i_crit_edge, %dma_map_single_attrs.exit.thread.i
  tail call void @kfree(ptr noundef %call29.i) #12
  br label %cleanup35

if.end43.i:                                       ; preds = %dma_map_single_attrs.exit.i
  %64 = ptrtoint ptr %prog_len.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %prog_len.i, align 4
  %conv45.i = trunc i32 %65 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !121
  tail call void @arm_heavy_mb() #12
  %66 = tail call i16 @llvm.bswap.i16(i16 %conv45.i) #12
  %67 = ptrtoint ptr %ctrl_bar.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ctrl_bar.i.i.i, align 4
  %add.ptr.i105.i = getelementptr i8, ptr %68, i32 142
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i105.i, i16 %66) #12, !srcloc !122
  %69 = ptrtoint ptr %ctrl_bar.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ctrl_bar.i.i.i, align 4
  %add.ptr.i107.i = getelementptr i8, ptr %70, i32 144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !123
  tail call void @arm_heavy_mb() #12
  %add.ptr.i.i108.i = getelementptr i8, ptr %70, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i108.i, i32 0) #12, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  tail call void @arm_heavy_mb() #12
  %71 = tail call i32 @llvm.bswap.i32(i32 %call41.i.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107.i, i32 %71) #12, !srcloc !118
  %call47.i = tail call i32 @nfp_net_reconfig(ptr noundef %nn, i32 noundef 1024) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %if.end43.i.if.end58.i_crit_edge, label %do.body50.i

if.end43.i.if.end58.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58.i

do.body50.i:                                      ; preds = %if.end43.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_net_bpf_load.__msg.34) #12
  %tobool52.not.i = icmp eq ptr %extack, null
  br i1 %tobool52.not.i, label %do.body50.i.if.end58.i_crit_edge, label %if.then53.i

do.body50.i.if.end58.i_crit_edge:                 ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58.i

if.then53.i:                                      ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @nfp_net_bpf_load.__msg.34, ptr %extack, align 4
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then53.i, %do.body50.i.if.end58.i_crit_edge, %if.end43.i.if.end58.i_crit_edge
  %73 = ptrtoint ptr %nn to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %nn, align 128
  %75 = ptrtoint ptr %prog_len.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %prog_len.i, align 4
  %mul62.i = shl i32 %76, 3
  tail call void @dma_unmap_page_attrs(ptr noundef %74, i32 noundef %call41.i.i, i32 noundef %mul62.i, i32 noundef 1, i32 noundef 0) #12
  tail call void @kfree(ptr noundef %call29.i) #12
  br label %nfp_net_bpf_load.exit

nfp_net_bpf_load.exit:                            ; preds = %if.end58.i, %if.then31.i
  %retval.0.i58 = phi i32 [ %49, %if.then31.i ], [ %call47.i, %if.end58.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i58)
  %tobool29.not = icmp ne i32 %retval.0.i58, 0
  %brmerge = or i1 %tobool29.not, %old_prog
  br i1 %brmerge, label %nfp_net_bpf_load.exit.cleanup35_crit_edge, label %if.then33

nfp_net_bpf_load.exit.cleanup35_crit_edge:        ; preds = %nfp_net_bpf_load.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup35

if.then33:                                        ; preds = %nfp_net_bpf_load.exit
  %ctrl.i59 = getelementptr inbounds %struct.nfp_net_dp, ptr %nn, i32 0, i32 6
  %77 = ptrtoint ptr %ctrl.i59 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ctrl.i59, align 16
  %or.i = or i32 %78, 134217728
  store i32 %or.i, ptr %ctrl.i59, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !117
  tail call void @arm_heavy_mb() #12
  %79 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %80 = ptrtoint ptr %ctrl_bar.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ctrl_bar.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %79) #12, !srcloc !118
  %call.i61 = tail call i32 @nfp_net_reconfig(ptr noundef %nn, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %tobool.not.i62 = icmp eq i32 %call.i61, 0
  br i1 %tobool.not.i62, label %if.then33.cleanup35_crit_edge, label %do.body.i63

if.then33.cleanup35_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup35

do.body.i63:                                      ; preds = %if.then33
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_net_bpf_start.__msg) #12
  %tobool3.not.i = icmp eq ptr %extack, null
  br i1 %tobool3.not.i, label %do.body.i63.cleanup35_crit_edge, label %if.then4.i

do.body.i63.cleanup35_crit_edge:                  ; preds = %do.body.i63
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup35

if.then4.i:                                       ; preds = %do.body.i63
  call void @__sanitizer_cov_trace_pc() #14
  %82 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @nfp_net_bpf_start.__msg, ptr %extack, align 4
  br label %cleanup35

cleanup35:                                        ; preds = %if.then4.i, %do.body.i63.cleanup35_crit_edge, %if.then33.cleanup35_crit_edge, %nfp_net_bpf_load.exit.cleanup35_crit_edge, %if.then42.i, %if.then23.i, %do.body20.i.cleanup35_crit_edge, %if.then9.i, %do.body6.i.cleanup35_crit_edge, %if.then1.i, %do.body.i.cleanup35_crit_edge, %if.end.i, %if.then25.critedge.cleanup35_crit_edge, %land.lhs.true15.cleanup35_crit_edge, %if.then10, %do.body.cleanup35_crit_edge, %land.lhs.true.cleanup35_crit_edge
  %retval.1 = phi i32 [ -22, %land.lhs.true.cleanup35_crit_edge ], [ -16, %if.then10 ], [ -16, %land.lhs.true15.cleanup35_crit_edge ], [ %retval.0.i58, %nfp_net_bpf_load.exit.cleanup35_crit_edge ], [ -16, %do.body.cleanup35_crit_edge ], [ %call.i, %if.end.i ], [ 0, %if.then25.critedge.cleanup35_crit_edge ], [ 0, %if.then33.cleanup35_crit_edge ], [ 0, %do.body.i63.cleanup35_crit_edge ], [ 0, %if.then4.i ], [ -95, %do.body20.i.cleanup35_crit_edge ], [ -95, %if.then23.i ], [ -95, %do.body6.i.cleanup35_crit_edge ], [ -95, %if.then9.i ], [ -95, %do.body.i.cleanup35_crit_edge ], [ -95, %if.then1.i ], [ -12, %if.then42.i ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bpf_offload_dev_match(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_verify_insn(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_bpf_finalize(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_bpf_opt_replace_insn(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_bpf_opt_remove_insns(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_bpf_verifier_prep(ptr nocapture noundef readonly %prog) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 92) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 10
  %1 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %aux, align 4
  %offload = getelementptr inbounds %struct.bpf_prog_aux, ptr %2, i32 0, i32 48
  %3 = ptrtoint ptr %offload to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %offload, align 8
  %dev_priv = getelementptr inbounds %struct.bpf_prog_offload, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %dev_priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %dev_priv, align 4
  %insns = getelementptr inbounds %struct.nfp_prog, ptr %call7.i.i, i32 0, i32 21
  %6 = ptrtoint ptr %insns to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %insns, ptr %insns, align 4
  %prev.i = getelementptr inbounds %struct.nfp_prog, ptr %call7.i.i, i32 0, i32 21, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %insns, ptr %prev.i, align 8
  %type = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 2
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  %type1 = getelementptr inbounds %struct.nfp_prog, ptr %call7.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %type1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %type1, align 8
  %11 = load ptr, ptr %aux, align 4
  %offload3 = getelementptr inbounds %struct.bpf_prog_aux, ptr %11, i32 0, i32 48
  %12 = ptrtoint ptr %offload3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %offload3, align 8
  %offdev = getelementptr inbounds %struct.bpf_prog_offload, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %offdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %offdev, align 4
  %call4 = tail call ptr @bpf_offload_dev_priv(ptr noundef %15) #12
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call4, ptr %call7.i.i, align 8
  %insnsi = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 1
  %len = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 4
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp17.not.i = icmp eq i32 %18, 0
  br i1 %cmp17.not.i, label %if.end.if.end8_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

for.body.i:                                       ; preds = %list_add_tail.exit.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.018.i = phi i32 [ %inc.i, %list_add_tail.exit.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 272) #18
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %err_free, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.bpf_insn, ptr %insnsi, i32 %i.018.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %arrayidx.i, align 4
  %22 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %call7.i.i.i, align 8
  %conv.i = trunc i32 %i.018.i to i16
  %n.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %call7.i.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %n.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.i, ptr %n.i, align 4
  %24 = lshr i64 %21, 56
  %trunc.i = trunc i64 %24 to i3
  %25 = zext i3 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.45)
  switch i3 %trunc.i, label %if.end.i.if.end3.i_crit_edge [
    i3 -1, label %if.end.i.if.then2.i_crit_edge
    i3 -4, label %if.end.i.if.then2.i_crit_edge32
  ]

if.end.i.if.then2.i_crit_edge32:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then2.i

if.end.i.if.then2.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then2.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i.if.then2.i_crit_edge, %if.end.i.if.then2.i_crit_edge32
  %26 = getelementptr inbounds %struct.nfp_insn_meta, ptr %call7.i.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 -1, ptr %26, align 8
  %umin_dst.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %umin_dst.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 -1, ptr %umin_dst.i, align 8
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  %l.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %call7.i.i.i, i32 0, i32 7
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %l.i, ptr noundef %30, ptr noundef %insns) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end3.i.list_add_tail.exit.i_crit_edge

if.end3.i.list_add_tail.exit.i_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %l.i, ptr %prev.i, align 8
  %32 = ptrtoint ptr %l.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %insns, ptr %l.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %call7.i.i.i, i32 0, i32 7, i32 1
  %33 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %l.i, ptr %30, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end3.i.list_add_tail.exit.i_crit_edge
  %inc.i = add nuw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %18
  br i1 %exitcond.not.i, label %list_add_tail.exit.i.if.end8_crit_edge, label %list_add_tail.exit.i.for.body.i_crit_edge

list_add_tail.exit.i.for.body.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

list_add_tail.exit.i.if.end8_crit_edge:           ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.end8:                                          ; preds = %list_add_tail.exit.i.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %n_insns.i = getelementptr inbounds %struct.nfp_prog, ptr %call7.i.i, i32 0, i32 20
  %35 = ptrtoint ptr %n_insns.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %18, ptr %n_insns.i, align 8
  tail call void @nfp_bpf_jit_prepare(ptr noundef nonnull %call7.i.i) #12
  %36 = ptrtoint ptr %insns to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %insns, align 4
  %add.ptr = getelementptr i8, ptr %37, i32 -264
  %verifier_meta = getelementptr inbounds %struct.nfp_prog, ptr %call7.i.i, i32 0, i32 5
  %38 = ptrtoint ptr %verifier_meta to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr, ptr %verifier_meta, align 4
  br label %cleanup

err_free:                                         ; preds = %for.body.i
  %subprog.i = getelementptr inbounds %struct.nfp_prog, ptr %call7.i.i, i32 0, i32 19
  %39 = ptrtoint ptr %subprog.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %subprog.i, align 4
  tail call void @kfree(ptr noundef %40) #12
  %41 = ptrtoint ptr %insns to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %insns, align 4
  %cmp.not22.i = icmp eq ptr %42, %insns
  br i1 %cmp.not22.i, label %err_free.nfp_prog_free.exit_crit_edge, label %err_free.for.body.i26_crit_edge

err_free.for.body.i26_crit_edge:                  ; preds = %err_free
  br label %for.body.i26

err_free.nfp_prog_free.exit_crit_edge:            ; preds = %err_free
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_prog_free.exit

for.body.i26:                                     ; preds = %list_del.exit.i.for.body.i26_crit_edge, %err_free.for.body.i26_crit_edge
  %.pn.in23.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i26_crit_edge ], [ %42, %err_free.for.body.i26_crit_edge ]
  %meta.0.i = getelementptr i8, ptr %.pn.in23.i, i32 -264
  %43 = ptrtoint ptr %.pn.in23.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn.i = load ptr, ptr %.pn.in23.i, align 8
  %call.i.i.i25 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in23.i) #12
  br i1 %call.i.i.i25, label %if.end.i.i.i27, label %for.body.i26.list_del.exit.i_crit_edge

for.body.i26.list_del.exit.i_crit_edge:           ; preds = %for.body.i26
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i27:                                   ; preds = %for.body.i26
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in23.i, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i.i.i, align 4
  %46 = ptrtoint ptr %.pn.in23.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %.pn.in23.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev1.i.i.i.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %47, ptr %45, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i27, %for.body.i26.list_del.exit.i_crit_edge
  %50 = ptrtoint ptr %.pn.in23.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in23.i, align 4
  %prev.i.i28 = getelementptr inbounds %struct.list_head, ptr %.pn.in23.i, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i.i28 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i28, align 4
  tail call void @kfree(ptr noundef %meta.0.i) #12
  %cmp.not.i = icmp eq ptr %.pn.i, %insns
  br i1 %cmp.not.i, label %list_del.exit.i.nfp_prog_free.exit_crit_edge, label %list_del.exit.i.for.body.i26_crit_edge

list_del.exit.i.for.body.i26_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i26

list_del.exit.i.nfp_prog_free.exit_crit_edge:     ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_prog_free.exit

nfp_prog_free.exit:                               ; preds = %list_del.exit.i.nfp_prog_free.exit_crit_edge, %err_free.nfp_prog_free.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %nfp_prog_free.exit, %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %nfp_prog_free.exit ], [ 0, %if.end8 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_bpf_translate(ptr nocapture noundef readonly %prog) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 10
  %0 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux, align 4
  %offload = getelementptr inbounds %struct.bpf_prog_aux, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %offload to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %offload, align 8
  %dev_priv = getelementptr inbounds %struct.bpf_prog_offload, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv, align 4
  %opt_failed = getelementptr inbounds %struct.bpf_prog_offload, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %opt_failed to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %opt_failed, align 1, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %netdev = getelementptr inbounds %struct.bpf_prog_offload, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev, align 4
  %ctrl_bar.i = getelementptr i8, ptr %9, i32 2340
  %10 = ptrtoint ptr %ctrl_bar.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrl_bar.i, align 4
  %add.ptr.i41 = getelementptr i8, ptr %11, i32 130
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i41) #12, !srcloc !119
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !120
  %conv = zext i16 %13 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %__prog_alloc_len = getelementptr inbounds %struct.nfp_prog, ptr %5, i32 0, i32 3
  %14 = ptrtoint ptr %__prog_alloc_len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul, ptr %__prog_alloc_len, align 4
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef %mul, i32 noundef 3264, i32 noundef -1) #16
  %prog8 = getelementptr inbounds %struct.nfp_prog, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %prog8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %prog8, align 4
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call13 = tail call i32 @nfp_bpf_jit(ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %prog_len = getelementptr inbounds %struct.nfp_prog, ptr %5, i32 0, i32 2
  %16 = ptrtoint ptr %prog_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %prog_len, align 4
  %mul17 = shl i32 %17, 3
  %18 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %aux, align 4
  %offload19 = getelementptr inbounds %struct.bpf_prog_aux, ptr %19, i32 0, i32 48
  %20 = ptrtoint ptr %offload19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %offload19, align 8
  %jited_len = getelementptr inbounds %struct.bpf_prog_offload, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %jited_len to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul17, ptr %jited_len, align 4
  %23 = ptrtoint ptr %prog8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prog8, align 4
  %25 = load ptr, ptr %aux, align 4
  %offload22 = getelementptr inbounds %struct.bpf_prog_aux, ptr %25, i32 0, i32 48
  %26 = ptrtoint ptr %offload22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %offload22, align 8
  %jited_image = getelementptr inbounds %struct.bpf_prog_offload, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %jited_image to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %24, ptr %jited_image, align 4
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %5, align 4
  %31 = load ptr, ptr %aux, align 4
  %used_maps_mutex.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %31, i32 0, i32 39
  tail call void @mutex_lock_nested(ptr noundef %used_maps_mutex.i, i32 noundef 0) #12
  %32 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %aux, align 4
  %used_map_cnt.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %used_map_cnt.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %used_map_cnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp95.not.i = icmp eq i32 %35, 0
  br i1 %cmp95.not.i, label %if.end16.nfp_map_ptrs_record.exit_crit_edge, label %for.body.lr.ph.i

if.end16.nfp_map_ptrs_record.exit_crit_edge:      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_map_ptrs_record.exit

for.body.lr.ph.i:                                 ; preds = %if.end16
  %used_maps.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %33, i32 0, i32 38
  %36 = ptrtoint ptr %used_maps.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %used_maps.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.097.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc3.i, %for.body.i.for.body.i_crit_edge ]
  %cnt.096.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %spec.select.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %37, i32 %i.097.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i, align 4
  %map_type.i.i = getelementptr inbounds %struct.bpf_map, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %map_type.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %map_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %41)
  %cmp.i.i = icmp eq i32 %41, 4
  %inc.i = zext i1 %cmp.i.i to i32
  %spec.select.i = add i32 %cnt.096.i, %inc.i
  %inc3.i = add nuw i32 %i.097.i, 1
  %exitcond.not.i = icmp eq i32 %inc3.i, %35
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool.not.i = icmp eq i32 %spec.select.i, 0
  br i1 %tobool.not.i, label %for.end.i.nfp_map_ptrs_record.exit_crit_edge, label %if.end5.i

for.end.i.nfp_map_ptrs_record.exit_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_map_ptrs_record.exit

if.end5.i:                                        ; preds = %for.end.i
  %42 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %spec.select.i, i32 4) #12
  %43 = extractvalue { i32, i1 } %42, 1
  br i1 %43, label %kmalloc_array.exit.thread.i, label %if.end7.i.i, !prof !126

kmalloc_array.exit.thread.i:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  %map_records89.i = getelementptr inbounds %struct.nfp_prog, ptr %5, i32 0, i32 18
  %44 = ptrtoint ptr %map_records89.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %map_records89.i, align 4
  br label %nfp_map_ptrs_record.exit

if.end7.i.i:                                      ; preds = %if.end5.i
  %45 = extractvalue { i32, i1 } %42, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %45, i32 noundef 3264) #16
  %map_records.i = getelementptr inbounds %struct.nfp_prog, ptr %5, i32 0, i32 18
  %46 = ptrtoint ptr %map_records.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call8.i.i, ptr %map_records.i, align 4
  %tobool8.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool8.not.i, label %if.end7.i.i.nfp_map_ptrs_record.exit_crit_edge, label %for.cond11.preheader.i

if.end7.i.i.nfp_map_ptrs_record.exit_crit_edge:   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_map_ptrs_record.exit

for.cond11.preheader.i:                           ; preds = %if.end7.i.i
  %47 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %aux, align 4
  %used_map_cnt1398.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %used_map_cnt1398.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %used_map_cnt1398.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp1499.not.i = icmp eq i32 %50, 0
  br i1 %cmp1499.not.i, label %for.cond11.preheader.i.for.end31.i_crit_edge, label %for.body15.lr.ph.i

for.cond11.preheader.i.for.end31.i_crit_edge:     ; preds = %for.cond11.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end31.i

for.body15.lr.ph.i:                               ; preds = %for.cond11.preheader.i
  %maps_neutral.i.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %30, i32 0, i32 9
  %map_records_cnt.i.i = getelementptr inbounds %struct.nfp_prog, ptr %5, i32 0, i32 16
  %head_offset.i.i.i.i.i.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %30, i32 0, i32 9, i32 3, i32 3
  %key_len6.i.i.i.i.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %30, i32 0, i32 9, i32 3, i32 1
  %hashfn.i.i.i.i.i.i.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %30, i32 0, i32 9, i32 3, i32 7
  %key_len1.i.i.i.i.i.i.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %30, i32 0, i32 9, i32 1
  %nelems.i.i.i.i.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %30, i32 0, i32 9, i32 8
  %max_elems.i.i.i.i.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %30, i32 0, i32 9, i32 2
  %max_size.i.i.i.i.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %30, i32 0, i32 9, i32 3, i32 4
  %run_work.i.i.i.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %30, i32 0, i32 9, i32 5
  br label %for.body15.i

for.body15.i:                                     ; preds = %for.inc29.i.for.body15.i_crit_edge, %for.body15.lr.ph.i
  %51 = phi ptr [ %48, %for.body15.lr.ph.i ], [ %157, %for.inc29.i.for.body15.i_crit_edge ]
  %i.1100.i = phi i32 [ 0, %for.body15.lr.ph.i ], [ %inc30.i, %for.inc29.i.for.body15.i_crit_edge ]
  %used_maps17.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %51, i32 0, i32 38
  %52 = ptrtoint ptr %used_maps17.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %used_maps17.i, align 8
  %arrayidx18.i = getelementptr ptr, ptr %53, i32 %i.1100.i
  %54 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx18.i, align 4
  %map_type.i78.i = getelementptr inbounds %struct.bpf_map, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %map_type.i78.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %map_type.i78.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %57)
  %cmp.i79.i = icmp eq i32 %57, 4
  br i1 %cmp.i79.i, label %if.then20.i, label %for.body15.i.for.inc29.i_crit_edge

for.body15.i.for.inc29.i_crit_edge:               ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc29.i

if.then20.i:                                      ; preds = %for.body15.i
  %id.i.i = getelementptr inbounds %struct.bpf_map, ptr %55, i32 0, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfp_bpf_maps_neutral_params to i32))
  %.unpack.i.i = load i32, ptr @nfp_bpf_maps_neutral_params, align 4
  %58 = insertvalue [7 x i32] undef, i32 %.unpack.i.i, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_bpf_maps_neutral_params, i32 0, i32 2) to i32))
  %.unpack36.i.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_bpf_maps_neutral_params, i32 0, i32 2), align 4
  %59 = insertvalue [7 x i32] %58, i32 %.unpack36.i.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_bpf_maps_neutral_params, i32 0, i32 4) to i32))
  %.unpack37.i.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_bpf_maps_neutral_params, i32 0, i32 4), align 4
  %60 = insertvalue [7 x i32] %59, i32 %.unpack37.i.i, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_bpf_maps_neutral_params, i32 0, i32 5) to i32))
  %.unpack38.i.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_bpf_maps_neutral_params, i32 0, i32 5), align 4
  %61 = insertvalue [7 x i32] %60, i32 %.unpack38.i.i, 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_bpf_maps_neutral_params, i32 0, i32 7) to i32))
  %.unpack39.i.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_bpf_maps_neutral_params, i32 0, i32 7), align 4
  %62 = insertvalue [7 x i32] %61, i32 %.unpack39.i.i, 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_bpf_maps_neutral_params, i32 0, i32 8) to i32))
  %.unpack40.i.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_bpf_maps_neutral_params, i32 0, i32 8), align 4
  %63 = insertvalue [7 x i32] %62, i32 %.unpack40.i.i, 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_bpf_maps_neutral_params, i32 0, i32 9) to i32))
  %.unpack41.i.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_bpf_maps_neutral_params, i32 0, i32 9), align 4
  %64 = insertvalue [7 x i32] %63, i32 %.unpack41.i.i, 6
  %65 = tail call i32 @llvm.read_register.i32(metadata !100) #12
  %and.i.i.i.i.i.i.i.i = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %68, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !111
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i.i.i, label %if.then20.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then20.i.rcu_read_lock.exit.i.i.i_crit_edge:   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then20.i
  %call1.i.i.i80.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i80.i)
  %tobool.not.i.i.i81.i = icmp eq i32 %call1.i.i.i80.i, 0
  br i1 %tobool.not.i.i.i81.i, label %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b4.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i, label %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 696, ptr noundef nonnull @.str.27) #12
  br label %rcu_read_lock.exit.i.i.i

rcu_read_lock.exit.i.i.i:                         ; preds = %if.then.i.i.i.i, %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %if.then20.i.rcu_read_lock.exit.i.i.i_crit_edge
  %call.i.i.i = tail call fastcc ptr @rhashtable_lookup(ptr noundef %maps_neutral.i.i, ptr noundef %id.i.i, [7 x i32] %64) #12
  %call.i1.i.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i1.i.i.i, label %rcu_read_lock.exit.i.i.i.rhashtable_lookup_fast.exit.i.i_crit_edge, label %land.lhs.true.i4.i.i.i

rcu_read_lock.exit.i.i.i.rhashtable_lookup_fast.exit.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rhashtable_lookup_fast.exit.i.i

land.lhs.true.i4.i.i.i:                           ; preds = %rcu_read_lock.exit.i.i.i
  %call1.i2.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2.i.i.i)
  %tobool.not.i3.i.i.i = icmp eq i32 %call1.i2.i.i.i, 0
  br i1 %tobool.not.i3.i.i.i, label %land.lhs.true.i4.i.i.i.rhashtable_lookup_fast.exit.i.i_crit_edge, label %land.lhs.true2.i6.i.i.i

land.lhs.true.i4.i.i.i.rhashtable_lookup_fast.exit.i.i_crit_edge: ; preds = %land.lhs.true.i4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rhashtable_lookup_fast.exit.i.i

land.lhs.true2.i6.i.i.i:                          ; preds = %land.lhs.true.i4.i.i.i
  %.b4.i5.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i5.i.i.i, label %land.lhs.true2.i6.i.i.i.rhashtable_lookup_fast.exit.i.i_crit_edge, label %if.then.i7.i.i.i

land.lhs.true2.i6.i.i.i.rhashtable_lookup_fast.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i6.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rhashtable_lookup_fast.exit.i.i

if.then.i7.i.i.i:                                 ; preds = %land.lhs.true2.i6.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 724, ptr noundef nonnull @.str.31) #12
  br label %rhashtable_lookup_fast.exit.i.i

rhashtable_lookup_fast.exit.i.i:                  ; preds = %if.then.i7.i.i.i, %land.lhs.true2.i6.i.i.i.rhashtable_lookup_fast.exit.i.i_crit_edge, %land.lhs.true.i4.i.i.i.rhashtable_lookup_fast.exit.i.i_crit_edge, %rcu_read_lock.exit.i.i.i.rhashtable_lookup_fast.exit.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !112
  %69 = tail call i32 @llvm.read_register.i32(metadata !100) #12
  %and.i.i.i.i.i8.i.i.i = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i.i.i8.i.i.i to ptr
  %preempt_count.i.i.i.i9.i.i.i = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %preempt_count.i.i.i.i9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %preempt_count.i.i.i.i9.i.i.i, align 4
  %sub.i.i.i.i.i82.i = add i32 %72, -1
  store volatile i32 %sub.i.i.i.i.i82.i, ptr %preempt_count.i.i.i.i9.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i84.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %rhashtable_lookup_fast.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %73 = ptrtoint ptr %map_records.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %map_records.i, align 4
  %75 = ptrtoint ptr %map_records_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %map_records_cnt.i.i, align 4
  %inc.i.i = add i32 %76, 1
  store i32 %inc.i.i, ptr %map_records_cnt.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %74, i32 %76
  %77 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call.i.i.i, ptr %arrayidx.i.i, align 4
  %count.i.i = getelementptr inbounds %struct.nfp_bpf_neutral_map, ptr %call.i.i.i, i32 0, i32 3
  %78 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %count.i.i, align 4
  %inc1.i.i = add i32 %79, 1
  store i32 %inc1.i.i, ptr %count.i.i, align 4
  br label %for.inc29.i

if.end.i84.i:                                     ; preds = %rhashtable_lookup_fast.exit.i.i
  tail call void @bpf_map_inc(ptr noundef %55) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %80 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i83.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %80, i32 noundef 3264, i32 noundef 16) #18
  %tobool3.not.i.i = icmp eq ptr %call7.i.i83.i, null
  br i1 %tobool3.not.i.i, label %if.end.i84.i.if.then26.i_crit_edge, label %if.end5.i.i

if.end.i84.i.if.then26.i_crit_edge:               ; preds = %if.end.i84.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26.i

if.end5.i.i:                                      ; preds = %if.end.i84.i
  %ptr.i.i = getelementptr inbounds %struct.nfp_bpf_neutral_map, ptr %call7.i.i83.i, i32 0, i32 1
  %81 = ptrtoint ptr %ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %55, ptr %ptr.i.i, align 4
  %82 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %id.i.i, align 4
  %map_id.i.i = getelementptr inbounds %struct.nfp_bpf_neutral_map, ptr %call7.i.i83.i, i32 0, i32 2
  %84 = ptrtoint ptr %map_id.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %map_id.i.i, align 8
  %count7.i.i = getelementptr inbounds %struct.nfp_bpf_neutral_map, ptr %call7.i.i83.i, i32 0, i32 3
  %85 = ptrtoint ptr %count7.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1, ptr %count7.i.i, align 4
  %86 = tail call i32 @llvm.read_register.i32(metadata !100) #12
  %and.i.i.i.i.i.i.i.i.i = and i32 %86, -16384
  %87 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i.i = add i32 %89, 1
  store volatile i32 %add.i.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !111
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i.i.i.i, label %if.end5.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

if.end5.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.end5.i.i
  %call1.i.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i.i

land.lhs.true.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i.i.i

land.lhs.true2.i.i.i.i.i:                         ; preds = %land.lhs.true.i.i.i.i.i
  %.b4.i.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i.i, label %land.lhs.true2.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

land.lhs.true2.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true2.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 696, ptr noundef nonnull @.str.27) #12
  br label %rcu_read_lock.exit.i.i.i.i

rcu_read_lock.exit.i.i.i.i:                       ; preds = %if.then.i.i.i.i.i, %land.lhs.true2.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, %if.end5.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge
  %90 = ptrtoint ptr %maps_neutral.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile ptr, ptr %maps_neutral.i.i, align 4
  %call.i.i49.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %maps_neutral.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i49.i.i)
  %tobool.not.i.i50.i.i = icmp eq i32 %call.i.i49.i.i, 0
  br i1 %tobool.not.i.i50.i.i, label %lor.lhs.false.i.i.i.i, label %rcu_read_lock.exit.i.i.i.i.do.end12.i.i.i.i_crit_edge

rcu_read_lock.exit.i.i.i.i.do.end12.i.i.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %rcu_read_lock.exit.i.i.i.i
  %call5.i.i.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i.i)
  %tobool6.not.i.i.i.i = icmp eq i32 %call5.i.i.i.i, 0
  br i1 %tobool6.not.i.i.i.i, label %land.lhs.true.i.i51.i.i, label %lor.lhs.false.i.i.i.i.do.end12.i.i.i.i_crit_edge

lor.lhs.false.i.i.i.i.do.end12.i.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i.i.i

land.lhs.true.i.i51.i.i:                          ; preds = %lor.lhs.false.i.i.i.i
  %call7.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i.i)
  %tobool8.not.i.i.i.i = icmp eq i32 %call7.i.i.i.i, 0
  br i1 %tobool8.not.i.i.i.i, label %land.lhs.true.i.i51.i.i.do.end12.i.i.i.i_crit_edge, label %land.lhs.true9.i.i.i.i

land.lhs.true.i.i51.i.i.do.end12.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i51.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i.i.i

land.lhs.true9.i.i.i.i:                           ; preds = %land.lhs.true.i.i51.i.i
  %.b2.i.i.i.i = load i1, ptr @__rhashtable_insert_fast.__warned, align 1
  br i1 %.b2.i.i.i.i, label %land.lhs.true9.i.i.i.i.do.end12.i.i.i.i_crit_edge, label %if.then.i.i52.i.i

land.lhs.true9.i.i.i.i.do.end12.i.i.i.i_crit_edge: ; preds = %land.lhs.true9.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i.i.i

if.then.i.i52.i.i:                                ; preds = %land.lhs.true9.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_insert_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 715, ptr noundef nonnull @.str.29) #12
  br label %do.end12.i.i.i.i

do.end12.i.i.i.i:                                 ; preds = %if.then.i.i52.i.i, %land.lhs.true9.i.i.i.i.do.end12.i.i.i.i_crit_edge, %land.lhs.true.i.i51.i.i.do.end12.i.i.i.i_crit_edge, %lor.lhs.false.i.i.i.i.do.end12.i.i.i.i_crit_edge, %rcu_read_lock.exit.i.i.i.i.do.end12.i.i.i.i_crit_edge
  %92 = inttoptr i32 %.unpack40.i.i to ptr
  %93 = ptrtoint ptr %head_offset.i.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %head_offset.i.i.i.i.i.i, align 2
  %conv.i.i.i.i.i.i = zext i16 %94 to i32
  %idx.neg.i.i.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i.i.i
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %call7.i.i83.i, i32 %idx.neg.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack40.i.i)
  %tobool.not.i3.i.i.i.i = icmp eq i32 %.unpack40.i.i, 0
  br i1 %tobool.not.i3.i.i.i.i, label %if.then.i.i.i.i.i.i.i, label %cond.true.i.i.i.i.i, !prof !126

cond.true.i.i.i.i.i:                              ; preds = %do.end12.i.i.i.i
  %conv.i.i.i.i.i = and i32 %.unpack.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i.i.i)
  %tobool4.not.i.i.i.i.i = icmp eq i32 %conv.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i.i, label %cond.false.i.i.i.i.i, label %cond.true.i.i.i.i.i.cond.end.i.i.i.i.i_crit_edge

cond.true.i.i.i.i.i.cond.end.i.i.i.i.i_crit_edge: ; preds = %cond.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i.i.i.i.i

cond.false.i.i.i.i.i:                             ; preds = %cond.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %95 = ptrtoint ptr %key_len6.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %key_len6.i.i.i.i.i, align 2
  %conv7.i.i.i.i.i = zext i16 %96 to i32
  br label %cond.end.i.i.i.i.i

cond.end.i.i.i.i.i:                               ; preds = %cond.false.i.i.i.i.i, %cond.true.i.i.i.i.i.cond.end.i.i.i.i.i_crit_edge
  %cond.i.i.i.i.i = phi i32 [ %conv7.i.i.i.i.i, %cond.false.i.i.i.i.i ], [ %conv.i.i.i.i.i, %cond.true.i.i.i.i.i.cond.end.i.i.i.i.i_crit_edge ]
  %hash_rnd.i.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %91, i32 0, i32 2
  %97 = ptrtoint ptr %hash_rnd.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %hash_rnd.i.i.i.i.i, align 8
  %call8.i.i.i.i.i = tail call i32 %92(ptr noundef %add.ptr.i.i.i.i.i.i, i32 noundef %cond.i.i.i.i.i, i32 noundef %98) #12
  br label %rht_head_hashfn.exit.i.i.i.i

if.then.i.i.i.i.i.i.i:                            ; preds = %do.end12.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %hash_rnd.i.i.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %91, i32 0, i32 2
  %99 = ptrtoint ptr %hash_rnd.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %hash_rnd.i.i.i.i.i.i, align 8
  %params.sroa.3.4.extract.shift.i.i.i.i.i = lshr i32 %.unpack36.i.i, 16
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i.i, i32 %params.sroa.3.4.extract.shift.i.i.i.i.i
  %101 = ptrtoint ptr %hashfn.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %hashfn.i.i.i.i.i.i.i, align 4
  %103 = ptrtoint ptr %key_len1.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %key_len1.i.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i.i = tail call i32 %102(ptr noundef %add.ptr.i.i.i.i.i, i32 noundef %104, i32 noundef %100) #12
  br label %rht_head_hashfn.exit.i.i.i.i

rht_head_hashfn.exit.i.i.i.i:                     ; preds = %if.then.i.i.i.i.i.i.i, %cond.end.i.i.i.i.i
  %hash.2.i.i.sink.i.i.i.i.i = phi i32 [ %call8.i.i.i.i.i, %cond.end.i.i.i.i.i ], [ %call.i.i.i.i.i.i.i, %if.then.i.i.i.i.i.i.i ]
  %105 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %91, align 128
  %sub.i.i.i.i.i.i.i = add i32 %106, -1
  %and.i3.i.i.i.i.i.i = and i32 %sub.i.i.i.i.i.i.i, %hash.2.i.i.sink.i.i.i.i.i
  %nest.i.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %91, i32 0, i32 1
  %107 = ptrtoint ptr %nest.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %nest.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool.not.i4.i.i.i.i = icmp eq i32 %108, 0
  br i1 %tobool.not.i4.i.i.i.i, label %cond.false.i7.i.i.i.i, label %cond.true.i6.i.i.i.i, !prof !110

cond.true.i6.i.i.i.i:                             ; preds = %rht_head_hashfn.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i5.i.i.i.i = tail call ptr @rht_bucket_nested_insert(ptr noundef %maps_neutral.i.i, ptr noundef %91, i32 noundef %and.i3.i.i.i.i.i.i) #12
  br label %rht_bucket_insert.exit.i.i.i.i

cond.false.i7.i.i.i.i:                            ; preds = %rht_head_hashfn.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i.i.i.i = getelementptr %struct.bucket_table, ptr %91, i32 0, i32 8, i32 %and.i3.i.i.i.i.i.i
  br label %rht_bucket_insert.exit.i.i.i.i

rht_bucket_insert.exit.i.i.i.i:                   ; preds = %cond.false.i7.i.i.i.i, %cond.true.i6.i.i.i.i
  %cond.i8.i.i.i.i = phi ptr [ %call.i5.i.i.i.i, %cond.true.i6.i.i.i.i ], [ %arrayidx.i.i.i.i.i, %cond.false.i7.i.i.i.i ]
  %tobool17.not.i.i.i.i = icmp eq ptr %cond.i8.i.i.i.i, null
  br i1 %tobool17.not.i.i.i.i, label %rht_bucket_insert.exit.i.i.i.i.out.i.i.i.i_crit_edge, label %if.end19.i.i.i.i

rht_bucket_insert.exit.i.i.i.i.out.i.i.i.i_crit_edge: ; preds = %rht_bucket_insert.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i.i.i.i

if.end19.i.i.i.i:                                 ; preds = %rht_bucket_insert.exit.i.i.i.i
  tail call fastcc void @rht_lock(ptr noundef %91, ptr noundef nonnull %cond.i8.i.i.i.i) #12
  %future_tbl.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %91, i32 0, i32 5
  %109 = ptrtoint ptr %future_tbl.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile ptr, ptr %future_tbl.i.i.i.i, align 4
  %tobool25.not.i.i.i.i = icmp eq ptr %110, null
  br i1 %tobool25.not.i.i.i.i, label %if.end30.i.i.i.i, label %if.end19.i.i.i.i.slow_path.i.i.i.i_crit_edge, !prof !110

if.end19.i.i.i.i.slow_path.i.i.i.i_crit_edge:     ; preds = %if.end19.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path.i.i.i.i

slow_path.i.i.i.i:                                ; preds = %rht_grow_above_100.exit.i.i.i.i.slow_path.i.i.i.i_crit_edge, %for.end.i.i.i.i.slow_path.i.i.i.i_crit_edge, %if.end19.i.i.i.i.slow_path.i.i.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %91, ptr noundef nonnull %cond.i8.i.i.i.i) #12
  %call.i10.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i10.i.i.i.i, label %slow_path.i.i.i.i.rcu_read_unlock.exit.i.i.i.i_crit_edge, label %land.lhs.true.i13.i.i.i.i

slow_path.i.i.i.i.rcu_read_unlock.exit.i.i.i.i_crit_edge: ; preds = %slow_path.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i.i.i.i

land.lhs.true.i13.i.i.i.i:                        ; preds = %slow_path.i.i.i.i
  %call1.i11.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i.i.i.i)
  %tobool.not.i12.i.i.i.i = icmp eq i32 %call1.i11.i.i.i.i, 0
  br i1 %tobool.not.i12.i.i.i.i, label %land.lhs.true.i13.i.i.i.i.rcu_read_unlock.exit.i.i.i.i_crit_edge, label %land.lhs.true2.i15.i.i.i.i

land.lhs.true.i13.i.i.i.i.rcu_read_unlock.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i13.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i.i.i.i

land.lhs.true2.i15.i.i.i.i:                       ; preds = %land.lhs.true.i13.i.i.i.i
  %.b4.i14.i.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i.i.i.i, label %land.lhs.true2.i15.i.i.i.i.rcu_read_unlock.exit.i.i.i.i_crit_edge, label %if.then.i16.i.i.i.i

land.lhs.true2.i15.i.i.i.i.rcu_read_unlock.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true2.i15.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i.i.i.i

if.then.i16.i.i.i.i:                              ; preds = %land.lhs.true2.i15.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 724, ptr noundef nonnull @.str.31) #12
  br label %rcu_read_unlock.exit.i.i.i.i

rcu_read_unlock.exit.i.i.i.i:                     ; preds = %if.then.i16.i.i.i.i, %land.lhs.true2.i15.i.i.i.i.rcu_read_unlock.exit.i.i.i.i_crit_edge, %land.lhs.true.i13.i.i.i.i.rcu_read_unlock.exit.i.i.i.i_crit_edge, %slow_path.i.i.i.i.rcu_read_unlock.exit.i.i.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !112
  %111 = tail call i32 @llvm.read_register.i32(metadata !100) #12
  %and.i.i.i.i.i17.i.i.i.i = and i32 %111, -16384
  %112 = inttoptr i32 %and.i.i.i.i.i17.i.i.i.i to ptr
  %preempt_count.i.i.i.i18.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %preempt_count.i.i.i.i18.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %preempt_count.i.i.i.i18.i.i.i.i, align 4
  %sub.i.i.i19.i.i.i.i = add i32 %114, -1
  store volatile i32 %sub.i.i.i19.i.i.i.i, ptr %preempt_count.i.i.i.i18.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %call29.i.i.i.i = tail call ptr @rhashtable_insert_slow(ptr noundef %maps_neutral.i.i, ptr noundef null, ptr noundef nonnull %call7.i.i83.i) #12
  br label %rhashtable_insert_fast.exit.i.i

if.end30.i.i.i.i:                                 ; preds = %if.end19.i.i.i.i
  %call.i20.i.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %91, i32 noundef %and.i3.i.i.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i.i.i)
  %tobool.not.i21.i.i.i.i = icmp eq i32 %call.i20.i.i.i.i, 0
  br i1 %tobool.not.i21.i.i.i.i, label %land.lhs.true.i23.i.i.i.i, label %if.end30.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge

if.end30.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge:  ; preds = %if.end30.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i.i.i

land.lhs.true.i23.i.i.i.i:                        ; preds = %if.end30.i.i.i.i
  %call1.i22.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22.i.i.i.i)
  %tobool2.not.i.i.i.i.i = icmp eq i32 %call1.i22.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i.i, label %land.lhs.true.i23.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i.i

land.lhs.true.i23.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i23.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i.i.i

land.lhs.true3.i.i.i.i.i:                         ; preds = %land.lhs.true.i23.i.i.i.i
  %.b7.i.i.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i.i.i, label %land.lhs.true3.i.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge, label %if.then.i24.i.i.i.i

land.lhs.true3.i.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i.i.i

if.then.i24.i.i.i.i:                              ; preds = %land.lhs.true3.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 377, ptr noundef nonnull @.str.38) #12
  br label %rht_ptr.exit.i.i.i.i

rht_ptr.exit.i.i.i.i:                             ; preds = %if.then.i24.i.i.i.i, %land.lhs.true3.i.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge, %land.lhs.true.i23.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge, %if.end30.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge
  %115 = ptrtoint ptr %cond.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %cond.i8.i.i.i.i, align 4
  %117 = ptrtoint ptr %116 to i32
  %and.i.i.i.i.i.i = and i32 %117, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  %118 = ptrtoint ptr %cond.i8.i.i.i.i to i32
  %or.i.i.i.i.i.i = or i32 %118, 1
  %cond.i.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i, i32 %or.i.i.i.i.i.i, i32 %and.i.i.i.i.i.i
  %and.i63.i.i.i.i = and i32 %cond.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63.i.i.i.i)
  %tobool.i.not64.i.i.i.i = icmp eq i32 %and.i63.i.i.i.i, 0
  br i1 %tobool.i.not64.i.i.i.i, label %for.body.preheader.i.i.i.i, label %rht_ptr.exit.i.i.i.i.if.end152.i.i.i.i_crit_edge

rht_ptr.exit.i.i.i.i.if.end152.i.i.i.i_crit_edge: ; preds = %rht_ptr.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152.i.i.i.i

for.body.preheader.i.i.i.i:                       ; preds = %rht_ptr.exit.i.i.i.i
  %119 = inttoptr i32 %cond.i.i.i.i.i.i to ptr
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %do.end147.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.preheader.i.i.i.i
  %head.066.i.i.i.i = phi ptr [ %121, %do.end147.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %119, %for.body.preheader.i.i.i.i ]
  %elasticity.065.i.i.i.i = phi i32 [ %dec.i.i.i.i, %do.end147.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 16, %for.body.preheader.i.i.i.i ]
  %dec.i.i.i.i = add i32 %elasticity.065.i.i.i.i, -1
  %call137.i.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %91, i32 noundef %and.i3.i.i.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i.i.i.i)
  %tobool138.not.i.i.i.i = icmp eq i32 %call137.i.i.i.i, 0
  br i1 %tobool138.not.i.i.i.i, label %land.lhs.true139.i.i.i.i, label %for.body.i.i.i.i.do.end147.i.i.i.i_crit_edge

for.body.i.i.i.i.do.end147.i.i.i.i_crit_edge:     ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end147.i.i.i.i

land.lhs.true139.i.i.i.i:                         ; preds = %for.body.i.i.i.i
  %call140.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i.i.i.i)
  %tobool141.not.i.i.i.i = icmp eq i32 %call140.i.i.i.i, 0
  br i1 %tobool141.not.i.i.i.i, label %land.lhs.true139.i.i.i.i.do.end147.i.i.i.i_crit_edge, label %land.lhs.true142.i.i.i.i

land.lhs.true139.i.i.i.i.do.end147.i.i.i.i_crit_edge: ; preds = %land.lhs.true139.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end147.i.i.i.i

land.lhs.true142.i.i.i.i:                         ; preds = %land.lhs.true139.i.i.i.i
  %.b2811.i.i.i.i = load i1, ptr @__rhashtable_insert_fast.__warned.39, align 1
  br i1 %.b2811.i.i.i.i, label %land.lhs.true142.i.i.i.i.do.end147.i.i.i.i_crit_edge, label %if.then144.i.i.i.i

land.lhs.true142.i.i.i.i.do.end147.i.i.i.i_crit_edge: ; preds = %land.lhs.true142.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end147.i.i.i.i

if.then144.i.i.i.i:                               ; preds = %land.lhs.true142.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_insert_fast.__warned.39, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 732, ptr noundef nonnull @.str.38) #12
  br label %do.end147.i.i.i.i

do.end147.i.i.i.i:                                ; preds = %if.then144.i.i.i.i, %land.lhs.true142.i.i.i.i.do.end147.i.i.i.i_crit_edge, %land.lhs.true139.i.i.i.i.do.end147.i.i.i.i_crit_edge, %for.body.i.i.i.i.do.end147.i.i.i.i_crit_edge
  %120 = ptrtoint ptr %head.066.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %head.066.i.i.i.i, align 4
  %122 = ptrtoint ptr %121 to i32
  %and.i.i.i.i.i = and i32 %122, 1
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %do.end147.i.i.i.i.for.body.i.i.i.i_crit_edge, label %for.end.i.i.i.i

do.end147.i.i.i.i.for.body.i.i.i.i_crit_edge:     ; preds = %do.end147.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i.i

for.end.i.i.i.i:                                  ; preds = %do.end147.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i.i.i.i)
  %phi.cmp.i.i.i.i = icmp slt i32 %dec.i.i.i.i, 1
  br i1 %phi.cmp.i.i.i.i, label %for.end.i.i.i.i.slow_path.i.i.i.i_crit_edge, label %for.end.i.i.i.i.if.end152.i.i.i.i_crit_edge

for.end.i.i.i.i.if.end152.i.i.i.i_crit_edge:      ; preds = %for.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152.i.i.i.i

for.end.i.i.i.i.slow_path.i.i.i.i_crit_edge:      ; preds = %for.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path.i.i.i.i

if.end152.i.i.i.i:                                ; preds = %for.end.i.i.i.i.if.end152.i.i.i.i_crit_edge, %rht_ptr.exit.i.i.i.i.if.end152.i.i.i.i_crit_edge
  %call.i.i.i25.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i.i.i, i32 noundef 4) #12
  %123 = ptrtoint ptr %nelems.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile i32, ptr %nelems.i.i.i.i.i, align 4
  %125 = ptrtoint ptr %max_elems.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %max_elems.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %124, i32 %126)
  %cmp.i.not.i.i.i.i = icmp ult i32 %124, %126
  br i1 %cmp.i.not.i.i.i.i, label %if.end162.i.i.i.i, label %out_unlock.i.i.i.i, !prof !110

if.end162.i.i.i.i:                                ; preds = %if.end152.i.i.i.i
  %call.i.i.i27.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i.i.i, i32 noundef 4) #12
  %127 = ptrtoint ptr %nelems.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %nelems.i.i.i.i.i, align 4
  %129 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %91, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %128, i32 %130)
  %cmp.i28.i.i.i.i = icmp ugt i32 %128, %130
  br i1 %cmp.i28.i.i.i.i, label %rht_grow_above_100.exit.i.i.i.i, label %if.end162.i.i.i.i.if.end171.i.i.i.i_crit_edge

if.end162.i.i.i.i.if.end171.i.i.i.i_crit_edge:    ; preds = %if.end162.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end171.i.i.i.i

rht_grow_above_100.exit.i.i.i.i:                  ; preds = %if.end162.i.i.i.i
  %131 = ptrtoint ptr %max_size.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %max_size.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool.not.i29.i.i.i.i = icmp eq i32 %132, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %130, i32 %132)
  %cmp4.i.i.i.i.i = icmp ult i32 %130, %132
  %spec.select.i.i.i.i.i = select i1 %tobool.not.i29.i.i.i.i, i1 true, i1 %cmp4.i.i.i.i.i
  br i1 %spec.select.i.i.i.i.i, label %rht_grow_above_100.exit.i.i.i.i.slow_path.i.i.i.i_crit_edge, label %rht_grow_above_100.exit.i.i.i.i.if.end171.i.i.i.i_crit_edge, !prof !126

rht_grow_above_100.exit.i.i.i.i.if.end171.i.i.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end171.i.i.i.i

rht_grow_above_100.exit.i.i.i.i.slow_path.i.i.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path.i.i.i.i

if.end171.i.i.i.i:                                ; preds = %rht_grow_above_100.exit.i.i.i.i.if.end171.i.i.i.i_crit_edge, %if.end162.i.i.i.i.if.end171.i.i.i.i_crit_edge
  %call.i30.i.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %91, i32 noundef %and.i3.i.i.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i.i.i.i)
  %tobool.not.i31.i.i.i.i = icmp eq i32 %call.i30.i.i.i.i, 0
  br i1 %tobool.not.i31.i.i.i.i, label %land.lhs.true.i34.i.i.i.i, label %if.end171.i.i.i.i.rht_ptr.exit42.i.i.i.i_crit_edge

if.end171.i.i.i.i.rht_ptr.exit42.i.i.i.i_crit_edge: ; preds = %if.end171.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit42.i.i.i.i

land.lhs.true.i34.i.i.i.i:                        ; preds = %if.end171.i.i.i.i
  %call1.i32.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32.i.i.i.i)
  %tobool2.not.i33.i.i.i.i = icmp eq i32 %call1.i32.i.i.i.i, 0
  br i1 %tobool2.not.i33.i.i.i.i, label %land.lhs.true.i34.i.i.i.i.rht_ptr.exit42.i.i.i.i_crit_edge, label %land.lhs.true3.i36.i.i.i.i

land.lhs.true.i34.i.i.i.i.rht_ptr.exit42.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i34.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit42.i.i.i.i

land.lhs.true3.i36.i.i.i.i:                       ; preds = %land.lhs.true.i34.i.i.i.i
  %.b7.i35.i.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i35.i.i.i.i, label %land.lhs.true3.i36.i.i.i.i.rht_ptr.exit42.i.i.i.i_crit_edge, label %if.then.i37.i.i.i.i

land.lhs.true3.i36.i.i.i.i.rht_ptr.exit42.i.i.i.i_crit_edge: ; preds = %land.lhs.true3.i36.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit42.i.i.i.i

if.then.i37.i.i.i.i:                              ; preds = %land.lhs.true3.i36.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 377, ptr noundef nonnull @.str.38) #12
  br label %rht_ptr.exit42.i.i.i.i

rht_ptr.exit42.i.i.i.i:                           ; preds = %if.then.i37.i.i.i.i, %land.lhs.true3.i36.i.i.i.i.rht_ptr.exit42.i.i.i.i_crit_edge, %land.lhs.true.i34.i.i.i.i.rht_ptr.exit42.i.i.i.i_crit_edge, %if.end171.i.i.i.i.rht_ptr.exit42.i.i.i.i_crit_edge
  %133 = ptrtoint ptr %cond.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %cond.i8.i.i.i.i, align 4
  %135 = ptrtoint ptr %134 to i32
  %and.i.i38.i.i.i.i = and i32 %135, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i38.i.i.i.i)
  %tobool.not.i.i39.i.i.i.i = icmp eq i32 %and.i.i38.i.i.i.i, 0
  %cond.i.i41.i.i.i.i = select i1 %tobool.not.i.i39.i.i.i.i, i32 %or.i.i.i.i.i.i, i32 %and.i.i38.i.i.i.i
  %136 = inttoptr i32 %cond.i.i41.i.i.i.i to ptr
  %137 = ptrtoint ptr %call7.i.i83.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store volatile ptr %136, ptr %call7.i.i83.i, align 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i.i.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %138 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i.i.i.i, ptr %nelems.i.i.i.i.i, i32 1, ptr elementtype(i32) %nelems.i.i.i.i.i) #12, !srcloc !127
  tail call fastcc void @rht_assign_unlock(ptr noundef %91, ptr noundef nonnull %cond.i8.i.i.i.i, ptr noundef nonnull %call7.i.i83.i) #12
  %call.i.i.i44.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i.i.i, i32 noundef 4) #12
  %139 = ptrtoint ptr %nelems.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load volatile i32, ptr %nelems.i.i.i.i.i, align 4
  %141 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %91, align 128
  %div8.i.i.i.i.i = lshr i32 %142, 2
  %mul.i.i.i.i.i = mul nuw i32 %div8.i.i.i.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %140, i32 %mul.i.i.i.i.i)
  %cmp.i45.i.i.i.i = icmp ugt i32 %140, %mul.i.i.i.i.i
  br i1 %cmp.i45.i.i.i.i, label %rht_grow_above_75.exit.i.i.i.i, label %rht_ptr.exit42.i.i.i.i.out.i.i.i.i_crit_edge

rht_ptr.exit42.i.i.i.i.out.i.i.i.i_crit_edge:     ; preds = %rht_ptr.exit42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i.i.i.i

rht_grow_above_75.exit.i.i.i.i:                   ; preds = %rht_ptr.exit42.i.i.i.i
  %143 = ptrtoint ptr %max_size.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %max_size.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool.not.i47.i.i.i.i = icmp eq i32 %144, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %142, i32 %144)
  %cmp4.i48.i.i.i.i = icmp ult i32 %142, %144
  %spec.select.i49.i.i.i.i = select i1 %tobool.not.i47.i.i.i.i, i1 true, i1 %cmp4.i48.i.i.i.i
  br i1 %spec.select.i49.i.i.i.i, label %if.then207.i.i.i.i, label %rht_grow_above_75.exit.i.i.i.i.out.i.i.i.i_crit_edge

rht_grow_above_75.exit.i.i.i.i.out.i.i.i.i_crit_edge: ; preds = %rht_grow_above_75.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i.i.i.i

if.then207.i.i.i.i:                               ; preds = %rht_grow_above_75.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %145 = load ptr, ptr @system_wq, align 4
  %call.i.i51.i.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %145, ptr noundef %run_work.i.i.i.i) #12
  br label %out.i.i.i.i

out.i.i.i.i:                                      ; preds = %out_unlock.i.i.i.i, %if.then207.i.i.i.i, %rht_grow_above_75.exit.i.i.i.i.out.i.i.i.i_crit_edge, %rht_ptr.exit42.i.i.i.i.out.i.i.i.i_crit_edge, %rht_bucket_insert.exit.i.i.i.i.out.i.i.i.i_crit_edge
  %data.2.i.i.i.i = phi ptr [ inttoptr (i32 -7 to ptr), %out_unlock.i.i.i.i ], [ inttoptr (i32 -12 to ptr), %rht_bucket_insert.exit.i.i.i.i.out.i.i.i.i_crit_edge ], [ null, %if.then207.i.i.i.i ], [ null, %rht_grow_above_75.exit.i.i.i.i.out.i.i.i.i_crit_edge ], [ null, %rht_ptr.exit42.i.i.i.i.out.i.i.i.i_crit_edge ]
  %call.i52.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i52.i.i.i.i, label %out.i.i.i.i.rcu_read_unlock.exit62.i.i.i.i_crit_edge, label %land.lhs.true.i55.i.i.i.i

out.i.i.i.i.rcu_read_unlock.exit62.i.i.i.i_crit_edge: ; preds = %out.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit62.i.i.i.i

land.lhs.true.i55.i.i.i.i:                        ; preds = %out.i.i.i.i
  %call1.i53.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53.i.i.i.i)
  %tobool.not.i54.i.i.i.i = icmp eq i32 %call1.i53.i.i.i.i, 0
  br i1 %tobool.not.i54.i.i.i.i, label %land.lhs.true.i55.i.i.i.i.rcu_read_unlock.exit62.i.i.i.i_crit_edge, label %land.lhs.true2.i57.i.i.i.i

land.lhs.true.i55.i.i.i.i.rcu_read_unlock.exit62.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i55.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit62.i.i.i.i

land.lhs.true2.i57.i.i.i.i:                       ; preds = %land.lhs.true.i55.i.i.i.i
  %.b4.i56.i.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i56.i.i.i.i, label %land.lhs.true2.i57.i.i.i.i.rcu_read_unlock.exit62.i.i.i.i_crit_edge, label %if.then.i58.i.i.i.i

land.lhs.true2.i57.i.i.i.i.rcu_read_unlock.exit62.i.i.i.i_crit_edge: ; preds = %land.lhs.true2.i57.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit62.i.i.i.i

if.then.i58.i.i.i.i:                              ; preds = %land.lhs.true2.i57.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 724, ptr noundef nonnull @.str.31) #12
  br label %rcu_read_unlock.exit62.i.i.i.i

rcu_read_unlock.exit62.i.i.i.i:                   ; preds = %if.then.i58.i.i.i.i, %land.lhs.true2.i57.i.i.i.i.rcu_read_unlock.exit62.i.i.i.i_crit_edge, %land.lhs.true.i55.i.i.i.i.rcu_read_unlock.exit62.i.i.i.i_crit_edge, %out.i.i.i.i.rcu_read_unlock.exit62.i.i.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !112
  %146 = tail call i32 @llvm.read_register.i32(metadata !100) #12
  %and.i.i.i.i.i59.i.i.i.i = and i32 %146, -16384
  %147 = inttoptr i32 %and.i.i.i.i.i59.i.i.i.i to ptr
  %preempt_count.i.i.i.i60.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %147, i32 0, i32 1
  %148 = ptrtoint ptr %preempt_count.i.i.i.i60.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load volatile i32, ptr %preempt_count.i.i.i.i60.i.i.i.i, align 4
  %sub.i.i.i61.i.i.i.i = add i32 %149, -1
  store volatile i32 %sub.i.i.i61.i.i.i.i, ptr %preempt_count.i.i.i.i60.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %rhashtable_insert_fast.exit.i.i

out_unlock.i.i.i.i:                               ; preds = %if.end152.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @rht_unlock(ptr noundef %91, ptr noundef nonnull %cond.i8.i.i.i.i) #12
  br label %out.i.i.i.i

rhashtable_insert_fast.exit.i.i:                  ; preds = %rcu_read_unlock.exit62.i.i.i.i, %rcu_read_unlock.exit.i.i.i.i
  %retval.0.i.i.i.i = phi ptr [ %call29.i.i.i.i, %rcu_read_unlock.exit.i.i.i.i ], [ %data.2.i.i.i.i, %rcu_read_unlock.exit62.i.i.i.i ]
  %cmp.i.i.i85.i = icmp ugt ptr %retval.0.i.i.i.i, inttoptr (i32 -4096 to ptr)
  %150 = ptrtoint ptr %retval.0.i.i.i.i to i32
  %cmp.i.i86.i = icmp eq ptr %retval.0.i.i.i.i, null
  %cond.i.i.i = select i1 %cmp.i.i86.i, i32 0, i32 -17
  %retval.0.i.i.i = select i1 %cmp.i.i.i85.i, i32 %150, i32 %cond.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %tobool10.not.i.i = icmp eq i32 %retval.0.i.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end12.i.i, label %err_free_rec.i.i

if.end12.i.i:                                     ; preds = %rhashtable_insert_fast.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %151 = ptrtoint ptr %map_records.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %map_records.i, align 4
  %153 = ptrtoint ptr %map_records_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %map_records_cnt.i.i, align 4
  %inc15.i.i = add i32 %154, 1
  store i32 %inc15.i.i, ptr %map_records_cnt.i.i, align 4
  %arrayidx16.i.i = getelementptr ptr, ptr %152, i32 %154
  %155 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %call7.i.i83.i, ptr %arrayidx16.i.i, align 4
  br label %for.inc29.i

err_free_rec.i.i:                                 ; preds = %rhashtable_insert_fast.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i83.i) #12
  br label %if.then26.i

if.then26.i:                                      ; preds = %err_free_rec.i.i, %if.end.i84.i.if.then26.i_crit_edge
  %err.0.i.i = phi i32 [ %retval.0.i.i.i, %err_free_rec.i.i ], [ -12, %if.end.i84.i.if.then26.i_crit_edge ]
  tail call void @bpf_map_put(ptr noundef %55) #12
  tail call fastcc void @nfp_map_ptrs_forget(ptr noundef %30, ptr noundef %5) #12
  br label %nfp_map_ptrs_record.exit

for.inc29.i:                                      ; preds = %if.end12.i.i, %if.then.i.i, %for.body15.i.for.inc29.i_crit_edge
  %inc30.i = add nuw i32 %i.1100.i, 1
  %156 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %aux, align 4
  %used_map_cnt13.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %157, i32 0, i32 1
  %158 = ptrtoint ptr %used_map_cnt13.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %used_map_cnt13.i, align 8
  %cmp14.i = icmp ult i32 %inc30.i, %159
  br i1 %cmp14.i, label %for.inc29.i.for.body15.i_crit_edge, label %for.inc29.i.for.end31.i_crit_edge

for.inc29.i.for.end31.i_crit_edge:                ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end31.i

for.inc29.i.for.body15.i_crit_edge:               ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body15.i

for.end31.i:                                      ; preds = %for.inc29.i.for.end31.i_crit_edge, %for.cond11.preheader.i.for.end31.i_crit_edge
  %map_records_cnt.i = getelementptr inbounds %struct.nfp_prog, ptr %5, i32 0, i32 16
  %160 = ptrtoint ptr %map_records_cnt.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %map_records_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %161)
  %cmp32.not.i = icmp eq i32 %spec.select.i, %161
  br i1 %cmp32.not.i, label %for.end31.i.nfp_map_ptrs_record.exit_crit_edge, label %do.end.i, !prof !110

for.end31.i.nfp_map_ptrs_record.exit_crit_edge:   ; preds = %for.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_map_ptrs_record.exit

do.end.i:                                         ; preds = %for.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 143, i32 noundef 9, ptr noundef null) #12
  br label %nfp_map_ptrs_record.exit

nfp_map_ptrs_record.exit:                         ; preds = %do.end.i, %for.end31.i.nfp_map_ptrs_record.exit_crit_edge, %if.then26.i, %if.end7.i.i.nfp_map_ptrs_record.exit_crit_edge, %kmalloc_array.exit.thread.i, %for.end.i.nfp_map_ptrs_record.exit_crit_edge, %if.end16.nfp_map_ptrs_record.exit_crit_edge
  %err.2.i = phi i32 [ %err.0.i.i, %if.then26.i ], [ 0, %for.end.i.nfp_map_ptrs_record.exit_crit_edge ], [ -12, %if.end7.i.i.nfp_map_ptrs_record.exit_crit_edge ], [ 0, %do.end.i ], [ 0, %for.end31.i.nfp_map_ptrs_record.exit_crit_edge ], [ -12, %kmalloc_array.exit.thread.i ], [ 0, %if.end16.nfp_map_ptrs_record.exit_crit_edge ]
  %162 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %aux, align 4
  %used_maps_mutex55.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %163, i32 0, i32 39
  tail call void @mutex_unlock(ptr noundef %used_maps_mutex55.i) #12
  br label %cleanup

cleanup:                                          ; preds = %nfp_map_ptrs_record.exit, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2.i, %nfp_map_ptrs_record.exit ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfp_bpf_destroy(ptr nocapture noundef readonly %prog) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 10
  %0 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux, align 4
  %offload = getelementptr inbounds %struct.bpf_prog_aux, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %offload to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %offload, align 8
  %dev_priv = getelementptr inbounds %struct.bpf_prog_offload, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv, align 4
  %prog1 = getelementptr inbounds %struct.nfp_prog, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prog1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prog1, align 4
  tail call void @kvfree(ptr noundef %7) #12
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  tail call fastcc void @nfp_map_ptrs_forget(ptr noundef %9, ptr noundef %5)
  %subprog.i = getelementptr inbounds %struct.nfp_prog, ptr %5, i32 0, i32 19
  %10 = ptrtoint ptr %subprog.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %subprog.i, align 4
  tail call void @kfree(ptr noundef %11) #12
  %insns.i = getelementptr inbounds %struct.nfp_prog, ptr %5, i32 0, i32 21
  %12 = ptrtoint ptr %insns.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %insns.i, align 4
  %cmp.not22.i = icmp eq ptr %13, %insns.i
  br i1 %cmp.not22.i, label %entry.nfp_prog_free.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.nfp_prog_free.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_prog_free.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn.in23.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %13, %entry.for.body.i_crit_edge ]
  %meta.0.i = getelementptr i8, ptr %.pn.in23.i, i32 -264
  %14 = ptrtoint ptr %.pn.in23.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.i = load ptr, ptr %.pn.in23.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in23.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in23.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i.i, align 4
  %17 = ptrtoint ptr %.pn.in23.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %.pn.in23.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %21 = ptrtoint ptr %.pn.in23.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in23.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in23.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %meta.0.i) #12
  %cmp.not.i = icmp eq ptr %.pn.i, %insns.i
  br i1 %cmp.not.i, label %list_del.exit.i.nfp_prog_free.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

list_del.exit.i.nfp_prog_free.exit_crit_edge:     ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_prog_free.exit

nfp_prog_free.exit:                               ; preds = %list_del.exit.i.nfp_prog_free.exit_crit_edge, %entry.nfp_prog_free.exit_crit_edge
  tail call void @kfree(ptr noundef %5) #12
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nfp_bpf_ctrl_alloc_map(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_bpf_map_get_next_key(ptr noundef %offmap, ptr noundef %key, ptr noundef %next_key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %key, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @nfp_bpf_ctrl_getfirst_entry(ptr noundef %offmap, ptr noundef %next_key) #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 @nfp_bpf_ctrl_getnext_entry(ptr noundef %offmap, ptr noundef nonnull %key, ptr noundef %next_key) #12
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_bpf_map_lookup_entry(ptr noundef %offmap, ptr noundef %key, ptr noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nfp_bpf_ctrl_lookup_entry(ptr noundef %offmap, ptr noundef %key, ptr noundef %value) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_bpf_map_update_entry(ptr noundef %offmap, ptr noundef %key, ptr noundef %value, i64 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nfp_bpf_ctrl_update_entry(ptr noundef %offmap, ptr noundef %key, ptr noundef %value, i64 noundef %flags) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_bpf_map_delete_elem(ptr noundef %offmap, ptr noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %map_type = getelementptr inbounds %struct.bpf_map, ptr %offmap, i32 0, i32 3
  %0 = ptrtoint ptr %map_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %map_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @nfp_bpf_ctrl_del_entry(ptr noundef %offmap, ptr noundef %key) #12
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_bpf_ctrl_getfirst_entry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_bpf_ctrl_getnext_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_bpf_ctrl_lookup_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_bpf_ctrl_update_entry(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_bpf_ctrl_del_entry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_bpf_ctrl_free_map(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_net_reconfig(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_bpf_relo_for_vnic(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_offload_dev_priv(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_bpf_jit_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_bpf_jit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfp_map_ptrs_forget(ptr noundef %bpf, ptr nocapture noundef %nfp_prog) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %map_records_cnt = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 16
  %0 = ptrtoint ptr %map_records_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %map_records_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp88.not = icmp eq i32 %1, 0
  br i1 %cmp88.not, label %entry.if.end45_crit_edge, label %for.body.lr.ph

entry.if.end45_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

for.body.lr.ph:                                   ; preds = %entry
  %map_records = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 18
  %maps_neutral = getelementptr inbounds %struct.nfp_app_bpf, ptr %bpf, i32 0, i32 9
  %head_offset.i.i.i.i.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %bpf, i32 0, i32 9, i32 3, i32 3
  %key_len6.i.i.i.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %bpf, i32 0, i32 9, i32 3, i32 1
  %hashfn.i.i.i.i.i.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %bpf, i32 0, i32 9, i32 3, i32 7
  %key_len1.i.i.i.i.i.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %bpf, i32 0, i32 9, i32 1
  %nelems.i.i.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %bpf, i32 0, i32 9, i32 8
  %automatic_shrinking.i.i.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %bpf, i32 0, i32 9, i32 3, i32 6
  %min_size.i.i.i.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %bpf, i32 0, i32 9, i32 3, i32 5
  %run_work.i.i.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %bpf, i32 0, i32 9, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %freed.0.off091 = phi i1 [ false, %for.body.lr.ph ], [ %freed.1.off0, %for.inc.for.body_crit_edge ]
  %i.089 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %map_records to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map_records, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.089
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %count = getelementptr inbounds %struct.nfp_bpf_neutral_map, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  %8 = ptrtoint ptr %map_records to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map_records, align 4
  %arrayidx4 = getelementptr ptr, ptr %9, i32 %i.089
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx4, align 4
  br label %for.inc

if.end:                                           ; preds = %for.body
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx4, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfp_bpf_maps_neutral_params to i32))
  %.unpack = load i32, ptr @nfp_bpf_maps_neutral_params, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_bpf_maps_neutral_params, i32 0, i32 2) to i32))
  %.unpack70 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_bpf_maps_neutral_params, i32 0, i32 2), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_bpf_maps_neutral_params, i32 0, i32 8) to i32))
  %.unpack74 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_bpf_maps_neutral_params, i32 0, i32 8), align 4
  %13 = tail call i32 @llvm.read_register.i32(metadata !100) #12
  %and.i.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %16, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !111
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i.i, label %if.end.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.rcu_read_lock.exit.i.i_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 696, ptr noundef nonnull @.str.27) #12
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end.rcu_read_lock.exit.i.i_crit_edge
  %17 = ptrtoint ptr %maps_neutral to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %maps_neutral, align 4
  %call.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %maps_neutral) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.i.i.do.end10.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end10.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call3.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end10.i.i_crit_edge

lor.lhs.false.i.i.do.end10.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call5.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i.do.end10.i.i_crit_edge, label %land.lhs.true7.i.i

land.lhs.true.i.i.do.end10.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_remove_fast.__warned, align 1
  br i1 %.b2.i.i, label %land.lhs.true7.i.i.do.end10.i.i_crit_edge, label %if.then.i.i

land.lhs.true7.i.i.do.end10.i.i_crit_edge:        ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i.i

if.then.i.i:                                      ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 1076, ptr noundef nonnull @.str.29) #12
  br label %do.end10.i.i

do.end10.i.i:                                     ; preds = %if.then.i.i, %land.lhs.true7.i.i.do.end10.i.i_crit_edge, %land.lhs.true.i.i.do.end10.i.i_crit_edge, %lor.lhs.false.i.i.do.end10.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end10.i.i_crit_edge
  %19 = inttoptr i32 %.unpack74 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack74)
  %tobool.not.i.i.i.i = icmp eq i32 %.unpack74, 0
  %conv.i.i.i.i = and i32 %.unpack, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %conv.i.i.i.i, 0
  %params.sroa.3.4.extract.shift.i.i.i.i = lshr i32 %.unpack70, 16
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %do.end33.i.i.while.cond.i.i_crit_edge, %do.end10.i.i
  %tbl.0.i.i = phi ptr [ %18, %do.end10.i.i ], [ %58, %do.end33.i.i.while.cond.i.i_crit_edge ]
  %20 = ptrtoint ptr %head_offset.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %head_offset.i.i.i.i.i, align 2
  %conv.i.i.i.i.i = zext i16 %21 to i32
  %idx.neg.i.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i.i
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %12, i32 %idx.neg.i.i.i.i.i
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i.i.i, label %cond.true.i.i.i.i, !prof !126

cond.true.i.i.i.i:                                ; preds = %while.cond.i.i
  br i1 %tobool4.not.i.i.i.i, label %cond.false.i.i.i.i, label %cond.true.i.i.i.i.cond.end.i.i.i.i_crit_edge

cond.true.i.i.i.i.cond.end.i.i.i.i_crit_edge:     ; preds = %cond.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i.i.i.i

cond.false.i.i.i.i:                               ; preds = %cond.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %key_len6.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %key_len6.i.i.i.i, align 2
  %conv7.i.i.i.i = zext i16 %23 to i32
  br label %cond.end.i.i.i.i

cond.end.i.i.i.i:                                 ; preds = %cond.false.i.i.i.i, %cond.true.i.i.i.i.cond.end.i.i.i.i_crit_edge
  %cond.i.i.i.i = phi i32 [ %conv7.i.i.i.i, %cond.false.i.i.i.i ], [ %conv.i.i.i.i, %cond.true.i.i.i.i.cond.end.i.i.i.i_crit_edge ]
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %call8.i.i.i.i = tail call i32 %19(ptr noundef %add.ptr.i.i.i.i.i, i32 noundef %cond.i.i.i.i, i32 noundef %25) #12
  br label %rht_head_hashfn.exit.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %hash_rnd.i.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %hash_rnd.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hash_rnd.i.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i, i32 %params.sroa.3.4.extract.shift.i.i.i.i
  %28 = ptrtoint ptr %hashfn.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hashfn.i.i.i.i.i.i, align 4
  %30 = ptrtoint ptr %key_len1.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %key_len1.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i = tail call i32 %29(ptr noundef %add.ptr.i.i.i.i, i32 noundef %31, i32 noundef %27) #12
  br label %rht_head_hashfn.exit.i.i.i

rht_head_hashfn.exit.i.i.i:                       ; preds = %if.then.i.i.i.i.i.i, %cond.end.i.i.i.i
  %hash.2.i.i.sink.i.i.i.i = phi i32 [ %call8.i.i.i.i, %cond.end.i.i.i.i ], [ %call.i.i.i.i.i.i, %if.then.i.i.i.i.i.i ]
  %32 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tbl.0.i.i, align 128
  %sub.i.i.i.i.i.i = add i32 %33, -1
  %and.i3.i.i.i.i.i = and i32 %sub.i.i.i.i.i.i, %hash.2.i.i.sink.i.i.i.i
  %nest.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %nest.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nest.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i3.i.i.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i3.i.i.i, label %cond.false.i5.i.i.i, label %cond.true.i4.i.i.i, !prof !110

cond.true.i4.i.i.i:                               ; preds = %rht_head_hashfn.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i = tail call ptr @__rht_bucket_nested(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i.i.i) #12
  br label %rht_bucket_var.exit.i.i.i

cond.false.i5.i.i.i:                              ; preds = %rht_head_hashfn.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 8, i32 %and.i3.i.i.i.i.i
  br label %rht_bucket_var.exit.i.i.i

rht_bucket_var.exit.i.i.i:                        ; preds = %cond.false.i5.i.i.i, %cond.true.i4.i.i.i
  %cond.i6.i.i.i = phi ptr [ %call.i.i.i.i, %cond.true.i4.i.i.i ], [ %arrayidx.i.i.i.i, %cond.false.i5.i.i.i ]
  %tobool.not.i3.i.i = icmp eq ptr %cond.i6.i.i.i, null
  br i1 %tobool.not.i3.i.i, label %rht_bucket_var.exit.i.i.i.land.rhs.i.i_crit_edge, label %if.end.i.i.i

rht_bucket_var.exit.i.i.i.land.rhs.i.i_crit_edge: ; preds = %rht_bucket_var.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i

if.end.i.i.i:                                     ; preds = %rht_bucket_var.exit.i.i.i
  tail call fastcc void @rht_lock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i) #12
  %call.i8.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i.i.i)
  %tobool.not.i9.i.i.i = icmp eq i32 %call.i8.i.i.i, 0
  br i1 %tobool.not.i9.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end.i.i.i.rht_ptr.exit.i.i.i_crit_edge

if.end.i.i.i.rht_ptr.exit.i.i.i_crit_edge:        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i.i.i
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b7.i.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i.i, label %land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 377, ptr noundef nonnull @.str.38) #12
  br label %rht_ptr.exit.i.i.i

rht_ptr.exit.i.i.i:                               ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, %if.end.i.i.i.rht_ptr.exit.i.i.i_crit_edge
  %36 = ptrtoint ptr %cond.i6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cond.i6.i.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  %and.i.i.i.i.i = and i32 %38, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  %39 = ptrtoint ptr %cond.i6.i.i.i to i32
  %or.i.i.i.i.i = or i32 %39, 1
  %cond.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %or.i.i.i.i.i, i32 %and.i.i.i.i.i
  %and.i20.i.i.i = and i32 %cond.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i.i.i)
  %tobool.i.not21.i.i.i = icmp eq i32 %and.i20.i.i.i, 0
  br i1 %tobool.i.not21.i.i.i, label %for.body.preheader.i.i.i, label %rht_ptr.exit.i.i.i.unlocked.i.i.i_crit_edge

rht_ptr.exit.i.i.i.unlocked.i.i.i_crit_edge:      ; preds = %rht_ptr.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlocked.i.i.i

for.body.preheader.i.i.i:                         ; preds = %rht_ptr.exit.i.i.i
  %40 = inttoptr i32 %cond.i.i.i.i.i to ptr
  %cmp.not.i21.i.i = icmp eq ptr %12, %40
  br i1 %cmp.not.i21.i.i, label %for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge, label %for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge

for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i
  br label %do.body145.i.i.i

for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body54.i.i.i

for.body.i.i.i:                                   ; preds = %do.end156.i.i.i
  %cmp.not.i.i.i = icmp eq ptr %45, %12
  br i1 %cmp.not.i.i.i, label %for.body.i.i.i.do.body54.i.i.i_crit_edge, label %for.body.i.i.i.do.body145.i.i.i_crit_edge

for.body.i.i.i.do.body145.i.i.i_crit_edge:        ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body145.i.i.i

for.body.i.i.i.do.body54.i.i.i_crit_edge:         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body54.i.i.i

do.body54.i.i.i:                                  ; preds = %for.body.i.i.i.do.body54.i.i.i_crit_edge, %for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge
  %pprev.023.i.lcssa.i.i = phi ptr [ %he.022.i22.i.i, %for.body.i.i.i.do.body54.i.i.i_crit_edge ], [ null, %for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge ]
  %call55.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i.i)
  %tobool56.not.i.i.i = icmp eq i32 %call55.i.i.i, 0
  br i1 %tobool56.not.i.i.i, label %land.lhs.true57.i.i.i, label %do.body54.i.i.i.do.end65.i.i.i_crit_edge

do.body54.i.i.i.do.end65.i.i.i_crit_edge:         ; preds = %do.body54.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65.i.i.i

land.lhs.true57.i.i.i:                            ; preds = %do.body54.i.i.i
  %call58.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i.i)
  %tobool59.not.i.i.i = icmp eq i32 %call58.i.i.i, 0
  br i1 %tobool59.not.i.i.i, label %land.lhs.true57.i.i.i.do.end65.i.i.i_crit_edge, label %land.lhs.true60.i.i.i

land.lhs.true57.i.i.i.do.end65.i.i.i_crit_edge:   ; preds = %land.lhs.true57.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65.i.i.i

land.lhs.true60.i.i.i:                            ; preds = %land.lhs.true57.i.i.i
  %.b2.i.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.42, align 1
  br i1 %.b2.i.i.i, label %land.lhs.true60.i.i.i.do.end65.i.i.i_crit_edge, label %if.then62.i.i.i

land.lhs.true60.i.i.i.do.end65.i.i.i_crit_edge:   ; preds = %land.lhs.true60.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65.i.i.i

if.then62.i.i.i:                                  ; preds = %land.lhs.true60.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.42, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 1032, ptr noundef nonnull @.str.38) #12
  br label %do.end65.i.i.i

do.end65.i.i.i:                                   ; preds = %if.then62.i.i.i, %land.lhs.true60.i.i.i.do.end65.i.i.i_crit_edge, %land.lhs.true57.i.i.i.do.end65.i.i.i_crit_edge, %do.body54.i.i.i.do.end65.i.i.i_crit_edge
  %41 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %12, align 4
  %tobool103.not.i.i.i = icmp eq ptr %pprev.023.i.lcssa.i.i, null
  br i1 %tobool103.not.i.i.i, label %if.else142.i.i.i, label %do.body105.i.i.i

do.body105.i.i.i:                                 ; preds = %do.end65.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !128
  %43 = ptrtoint ptr %pprev.023.i.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %42, ptr %pprev.023.i.lcssa.i.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i) #12
  br label %if.then160.i.i.i

if.else142.i.i.i:                                 ; preds = %do.end65.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @rht_assign_unlock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i, ptr noundef %42) #12
  br label %if.then160.i.i.i

do.body145.i.i.i:                                 ; preds = %for.body.i.i.i.do.body145.i.i.i_crit_edge, %for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge
  %he.022.i22.i.i = phi ptr [ %45, %for.body.i.i.i.do.body145.i.i.i_crit_edge ], [ %40, %for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge ]
  %call146.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i.i.i)
  %tobool147.not.i.i.i = icmp eq i32 %call146.i.i.i, 0
  br i1 %tobool147.not.i.i.i, label %land.lhs.true148.i.i.i, label %do.body145.i.i.i.do.end156.i.i.i_crit_edge

do.body145.i.i.i.do.end156.i.i.i_crit_edge:       ; preds = %do.body145.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end156.i.i.i

land.lhs.true148.i.i.i:                           ; preds = %do.body145.i.i.i
  %call149.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i.i.i)
  %tobool150.not.i.i.i = icmp eq i32 %call149.i.i.i, 0
  br i1 %tobool150.not.i.i.i, label %land.lhs.true148.i.i.i.do.end156.i.i.i_crit_edge, label %land.lhs.true151.i.i.i

land.lhs.true148.i.i.i.do.end156.i.i.i_crit_edge: ; preds = %land.lhs.true148.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end156.i.i.i

land.lhs.true151.i.i.i:                           ; preds = %land.lhs.true148.i.i.i
  %.b2281.i.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.44, align 1
  br i1 %.b2281.i.i.i, label %land.lhs.true151.i.i.i.do.end156.i.i.i_crit_edge, label %if.then153.i.i.i

land.lhs.true151.i.i.i.do.end156.i.i.i_crit_edge: ; preds = %land.lhs.true151.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end156.i.i.i

if.then153.i.i.i:                                 ; preds = %land.lhs.true151.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.44, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 1004, ptr noundef nonnull @.str.38) #12
  br label %do.end156.i.i.i

do.end156.i.i.i:                                  ; preds = %if.then153.i.i.i, %land.lhs.true151.i.i.i.do.end156.i.i.i_crit_edge, %land.lhs.true148.i.i.i.do.end156.i.i.i_crit_edge, %do.body145.i.i.i.do.end156.i.i.i_crit_edge
  %44 = ptrtoint ptr %he.022.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %he.022.i22.i.i, align 4
  %46 = ptrtoint ptr %45 to i32
  %and.i.i.i.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %for.body.i.i.i, label %do.end156.i.i.i.unlocked.i.i.i_crit_edge

do.end156.i.i.i.unlocked.i.i.i_crit_edge:         ; preds = %do.end156.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlocked.i.i.i

unlocked.i.i.i:                                   ; preds = %do.end156.i.i.i.unlocked.i.i.i_crit_edge, %rht_ptr.exit.i.i.i.unlocked.i.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i) #12
  br label %land.rhs.i.i

if.then160.i.i.i:                                 ; preds = %if.else142.i.i.i, %do.body105.i.i.i
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i.i, i32 1, i32 3, i32 1) #12
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i.i, ptr %nelems.i.i.i, i32 1, ptr elementtype(i32) %nelems.i.i.i) #12, !srcloc !129
  %48 = ptrtoint ptr %automatic_shrinking.i.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %automatic_shrinking.i.i.i, align 2, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool161.not.i.i.i = icmp eq i8 %49, 0
  br i1 %tobool161.not.i.i.i, label %if.then160.i.i.i.while.end.i.i_crit_edge, label %land.rhs162.i.i.i

if.then160.i.i.i.while.end.i.i_crit_edge:         ; preds = %if.then160.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

land.rhs162.i.i.i:                                ; preds = %if.then160.i.i.i
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #12
  %50 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %nelems.i.i.i, align 4
  %52 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tbl.0.i.i, align 128
  %mul.i.i.i.i = mul i32 %53, 3
  %div.i.i.i.i = udiv i32 %mul.i.i.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %div.i.i.i.i)
  %cmp.i.i.i.i = icmp ult i32 %51, %div.i.i.i.i
  br i1 %cmp.i.i.i.i, label %rht_shrink_below_30.exit.i.i.i, label %land.rhs162.i.i.i.while.end.i.i_crit_edge

land.rhs162.i.i.i.while.end.i.i_crit_edge:        ; preds = %land.rhs162.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

rht_shrink_below_30.exit.i.i.i:                   ; preds = %land.rhs162.i.i.i
  %54 = ptrtoint ptr %min_size.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %min_size.i.i.i.i, align 4
  %conv.i11.i.i.i = zext i16 %55 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %conv.i11.i.i.i)
  %cmp2.i.i.i.i = icmp ugt i32 %53, %conv.i11.i.i.i
  br i1 %cmp2.i.i.i.i, label %if.then168.i.i.i, label %rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge, !prof !126

rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge: ; preds = %rht_shrink_below_30.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

if.then168.i.i.i:                                 ; preds = %rht_shrink_below_30.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %56 = load ptr, ptr @system_wq, align 4
  %call.i.i12.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %56, ptr noundef %run_work.i.i.i) #12
  br label %while.end.i.i

land.rhs.i.i:                                     ; preds = %unlocked.i.i.i, %rht_bucket_var.exit.i.i.i.land.rhs.i.i_crit_edge
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 5
  %57 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %call20.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %maps_neutral) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool21.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool21.not.i.i, label %lor.lhs.false22.i.i, label %land.rhs.i.i.do.end33.i.i_crit_edge

land.rhs.i.i.do.end33.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i.i

lor.lhs.false22.i.i:                              ; preds = %land.rhs.i.i
  %call23.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i)
  %tobool24.not.i.i = icmp eq i32 %call23.i.i, 0
  br i1 %tobool24.not.i.i, label %land.lhs.true25.i.i, label %lor.lhs.false22.i.i.do.end33.i.i_crit_edge

lor.lhs.false22.i.i.do.end33.i.i_crit_edge:       ; preds = %lor.lhs.false22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i.i

land.lhs.true25.i.i:                              ; preds = %lor.lhs.false22.i.i
  %call26.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i)
  %tobool27.not.i.i = icmp eq i32 %call26.i.i, 0
  br i1 %tobool27.not.i.i, label %land.lhs.true25.i.i.do.end33.i.i_crit_edge, label %land.lhs.true28.i.i

land.lhs.true25.i.i.do.end33.i.i_crit_edge:       ; preds = %land.lhs.true25.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i.i

land.lhs.true28.i.i:                              ; preds = %land.lhs.true25.i.i
  %.b401.i.i = load i1, ptr @__rhashtable_remove_fast.__warned.40, align 1
  br i1 %.b401.i.i, label %land.lhs.true28.i.i.do.end33.i.i_crit_edge, label %if.then30.i.i

land.lhs.true28.i.i.do.end33.i.i_crit_edge:       ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i.i

if.then30.i.i:                                    ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast.__warned.40, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 1085, ptr noundef nonnull @.str.29) #12
  br label %do.end33.i.i

do.end33.i.i:                                     ; preds = %if.then30.i.i, %land.lhs.true28.i.i.do.end33.i.i_crit_edge, %land.lhs.true25.i.i.do.end33.i.i_crit_edge, %lor.lhs.false22.i.i.do.end33.i.i_crit_edge, %land.rhs.i.i.do.end33.i.i_crit_edge
  %tobool35.not.i.i = icmp eq ptr %58, null
  br i1 %tobool35.not.i.i, label %do.end33.i.i.while.end.i.i_crit_edge, label %do.end33.i.i.while.cond.i.i_crit_edge

do.end33.i.i.while.cond.i.i_crit_edge:            ; preds = %do.end33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i

do.end33.i.i.while.end.i.i_crit_edge:             ; preds = %do.end33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %do.end33.i.i.while.end.i.i_crit_edge, %if.then168.i.i.i, %rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge, %land.rhs162.i.i.i.while.end.i.i_crit_edge, %if.then160.i.i.i.while.end.i.i_crit_edge
  %tobool5.not = phi i1 [ true, %if.then168.i.i.i ], [ true, %rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge ], [ true, %land.rhs162.i.i.i.while.end.i.i_crit_edge ], [ true, %if.then160.i.i.i.while.end.i.i_crit_edge ], [ false, %do.end33.i.i.while.end.i.i_crit_edge ]
  %call.i4.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i4.i.i, label %while.end.i.i.rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true.i7.i.i

while.end.i.i.rhashtable_remove_fast.exit_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rhashtable_remove_fast.exit

land.lhs.true.i7.i.i:                             ; preds = %while.end.i.i
  %call1.i5.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i.i)
  %tobool.not.i6.i.i = icmp eq i32 %call1.i5.i.i, 0
  br i1 %tobool.not.i6.i.i, label %land.lhs.true.i7.i.i.rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true2.i9.i.i

land.lhs.true.i7.i.i.rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true.i7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rhashtable_remove_fast.exit

land.lhs.true2.i9.i.i:                            ; preds = %land.lhs.true.i7.i.i
  %.b4.i8.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i.i, label %land.lhs.true2.i9.i.i.rhashtable_remove_fast.exit_crit_edge, label %if.then.i10.i.i

land.lhs.true2.i9.i.i.rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true2.i9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rhashtable_remove_fast.exit

if.then.i10.i.i:                                  ; preds = %land.lhs.true2.i9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 724, ptr noundef nonnull @.str.31) #12
  br label %rhashtable_remove_fast.exit

rhashtable_remove_fast.exit:                      ; preds = %if.then.i10.i.i, %land.lhs.true2.i9.i.i.rhashtable_remove_fast.exit_crit_edge, %land.lhs.true.i7.i.i.rhashtable_remove_fast.exit_crit_edge, %while.end.i.i.rhashtable_remove_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !112
  %59 = tail call i32 @llvm.read_register.i32(metadata !100) #12
  %and.i.i.i.i.i11.i.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i.i11.i.i to ptr
  %preempt_count.i.i.i.i12.i.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i.i.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i.i.i12.i.i, align 4
  %sub.i.i.i.i.i = add i32 %62, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i12.i.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br i1 %tobool5.not, label %rhashtable_remove_fast.exit.for.inc_crit_edge, label %do.end, !prof !110

rhashtable_remove_fast.exit.for.inc_crit_edge:    ; preds = %rhashtable_remove_fast.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

do.end:                                           ; preds = %rhashtable_remove_fast.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 91, i32 noundef 9, ptr noundef null) #12
  br label %for.inc

for.inc:                                          ; preds = %do.end, %rhashtable_remove_fast.exit.for.inc_crit_edge, %if.then
  %freed.1.off0 = phi i1 [ %freed.0.off091, %if.then ], [ true, %do.end ], [ true, %rhashtable_remove_fast.exit.for.inc_crit_edge ]
  %inc = add nuw i32 %i.089, 1
  %63 = ptrtoint ptr %map_records_cnt to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %map_records_cnt, align 4
  %cmp = icmp ult i32 %inc, %64
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  br i1 %freed.1.off0, label %if.then28, label %for.end.if.end45_crit_edge

for.end.if.end45_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then28:                                        ; preds = %for.end
  tail call void @synchronize_rcu() #12
  %65 = ptrtoint ptr %map_records_cnt to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %map_records_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp3192.not = icmp eq i32 %66, 0
  br i1 %cmp3192.not, label %if.then28.if.end45_crit_edge, label %for.body32.lr.ph

if.then28.if.end45_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

for.body32.lr.ph:                                 ; preds = %if.then28
  %map_records33 = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 18
  br label %for.body32

for.body32:                                       ; preds = %for.inc42.for.body32_crit_edge, %for.body32.lr.ph
  %i.193 = phi i32 [ 0, %for.body32.lr.ph ], [ %inc43, %for.inc42.for.body32_crit_edge ]
  %67 = ptrtoint ptr %map_records33 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %map_records33, align 4
  %arrayidx34 = getelementptr ptr, ptr %68, i32 %i.193
  %69 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx34, align 4
  %tobool35.not = icmp eq ptr %70, null
  br i1 %tobool35.not, label %for.body32.for.inc42_crit_edge, label %if.then36

for.body32.for.inc42_crit_edge:                   ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc42

if.then36:                                        ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #14
  %ptr = getelementptr inbounds %struct.nfp_bpf_neutral_map, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ptr, align 4
  tail call void @bpf_map_put(ptr noundef %72) #12
  %73 = ptrtoint ptr %map_records33 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %map_records33, align 4
  %arrayidx40 = getelementptr ptr, ptr %74, i32 %i.193
  %75 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx40, align 4
  tail call void @kfree(ptr noundef %76) #12
  br label %for.inc42

for.inc42:                                        ; preds = %if.then36, %for.body32.for.inc42_crit_edge
  %inc43 = add nuw i32 %i.193, 1
  %77 = ptrtoint ptr %map_records_cnt to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %map_records_cnt, align 4
  %cmp31 = icmp ult i32 %inc43, %78
  br i1 %cmp31, label %for.inc42.for.body32_crit_edge, label %for.inc42.if.end45_crit_edge

for.inc42.if.end45_crit_edge:                     ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

for.inc42.for.body32_crit_edge:                   ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body32

if.end45:                                         ; preds = %for.inc42.if.end45_crit_edge, %if.then28.if.end45_crit_edge, %for.end.if.end45_crit_edge, %entry.if.end45_crit_edge
  %map_records46 = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 18
  %79 = ptrtoint ptr %map_records46 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %map_records46, align 4
  tail call void @kfree(ptr noundef %80) #12
  %81 = ptrtoint ptr %map_records46 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %map_records46, align 4
  %82 = ptrtoint ptr %map_records_cnt to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %map_records_cnt, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_inc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !100) #12
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !130
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #12
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !131

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #12, !srcloc !132
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !133
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !110

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !134
  %7 = tail call i32 @llvm.read_register.i32(metadata !100) #12
  %and.i.i.i1.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.body4.i.do.body4.i_crit_edge, %do.body2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !135
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !136
  %11 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %12, 1
  %tobool12.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body4.i

do.body14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = tail call i32 @llvm.read_register.i32(metadata !100) #12
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !137
  br label %while.cond.i

__here:                                           ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rht_lock, %__here) to i32)) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_unlock, %__here) to i32)) #12
  %0 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !126

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #12, !srcloc !138
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !139
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #12, !srcloc !140
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !141
  %3 = tail call i32 @llvm.read_register.i32(metadata !100) #12
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_bucket_is_held(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %obj to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, ptr %obj, ptr null
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_assign_unlock, %__here) to i32)) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !142
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !143
  %2 = tail call i32 @llvm.read_register.i32(metadata !100) #12
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %5, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !46, !48, !50, !51, !52, !54, !55, !56, !58, !60, !62, !63, !65, !67, !69, !71, !73, !74, !75, !77, !79, !81, !82, !84, !86, !88, !90, !92, !94, !96, !98}
!llvm.named.register.sp = !{!100}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/offload.c", i32 471, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nfp_bpf_event_output._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nfp_bpf_event_output._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @nfp_net_bpf_offload.__msg, !9, !"__msg", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/offload.c", i32 588, i32 4}
!10 = !{ptr @nfp_bpf_dev_ops, !11, !"nfp_bpf_dev_ops", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/offload.c", i32 611, i32 35}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/offload.c", i32 343, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @nfp_bpf_map_alloc._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @nfp_bpf_map_alloc._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/offload.c", i32 348, i32 3}
!19 = !{ptr @nfp_bpf_map_alloc._entry.7, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @nfp_bpf_map_alloc._entry_ptr.9, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/offload.c", i32 352, i32 3}
!23 = !{ptr @nfp_bpf_map_alloc._entry.10, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @nfp_bpf_map_alloc._entry_ptr.12, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/offload.c", i32 357, i32 3}
!27 = !{ptr @nfp_bpf_map_alloc._entry.13, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @nfp_bpf_map_alloc._entry_ptr.15, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/offload.c", i32 365, i32 3}
!31 = !{ptr @nfp_bpf_map_alloc._entry.16, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @nfp_bpf_map_alloc._entry_ptr.18, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/offload.c", i32 372, i32 3}
!35 = !{ptr @nfp_bpf_map_alloc._entry.19, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @nfp_bpf_map_alloc._entry_ptr.21, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.23, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/offload.c", i32 377, i32 3}
!39 = !{ptr @nfp_bpf_map_alloc._entry.22, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @nfp_bpf_map_alloc._entry_ptr.24, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @nfp_bpf_map_alloc.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/offload.c", i32 392, i32 2}
!43 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @nfp_bpf_map_ops, !45, !"nfp_bpf_map_ops", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/offload.c", i32 324, i32 37}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/offload.c", i32 416, i32 2}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!50 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../include/linux/rhashtable.h", i32 594, i32 8}
!54 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../include/linux/rhashtable.h", i32 614, i32 8}
!58 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!59 = !{!"../include/linux/rhashtable.h", i32 369, i32 19}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!62 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @nfp_net_bpf_load.__msg, !64, !"__msg", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/offload.c", i32 506, i32 3}
!65 = !{ptr @nfp_net_bpf_load.__msg.32, !66, !"__msg", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/offload.c", i32 512, i32 3}
!67 = !{ptr @nfp_net_bpf_load.__msg.33, !68, !"__msg", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/offload.c", i32 518, i32 3}
!69 = !{ptr @nfp_net_bpf_load.__msg.34, !70, !"__msg", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/offload.c", i32 540, i32 3}
!71 = distinct !{null, !72, !"__already_done", i1 false, i1 false}
!72 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!73 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @nfp_net_bpf_start.__msg, !76, !"__msg", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/offload.c", i32 560, i32 3}
!77 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!78 = !{!"../include/linux/rhashtable.h", i32 715, i32 8}
!79 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!80 = !{!"../include/linux/rhashtable.h", i32 755, i32 10}
!81 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!82 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!83 = !{!"../include/linux/rhashtable.h", i32 732, i32 2}
!84 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!85 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!86 = distinct !{null, !87, !"__warned", i1 false, i1 false}
!87 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!88 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!89 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!90 = distinct !{null, !91, !"__warned", i1 false, i1 false}
!91 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!92 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!93 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!94 = distinct !{null, !95, !"__warned", i1 false, i1 false}
!95 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!96 = distinct !{null, !97, !"__warned", i1 false, i1 false}
!97 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!98 = distinct !{null, !99, !"__warned", i1 false, i1 false}
!99 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!100 = !{!"sp"}
!101 = !{i32 1, !"wchar_size", i32 2}
!102 = !{i32 1, !"min_enum_size", i32 4}
!103 = !{i32 8, !"branch-target-enforcement", i32 0}
!104 = !{i32 8, !"sign-return-address", i32 0}
!105 = !{i32 8, !"sign-return-address-all", i32 0}
!106 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!110 = !{!"branch_weights", i32 2000, i32 1}
!111 = !{i64 2149688816}
!112 = !{i64 2149689082}
!113 = !{i64 2157606601}
!114 = !{i64 2157610035}
!115 = !{i64 7325913}
!116 = !{i64 2159859516}
!117 = !{i64 2159862255}
!118 = !{i64 7325715}
!119 = !{i64 7325295}
!120 = !{i64 2159860631}
!121 = !{i64 2159861018}
!122 = !{i64 7325095}
!123 = !{i64 2159854322}
!124 = !{i64 2159854707}
!125 = !{i8 0, i8 2}
!126 = !{!"branch_weights", i32 1, i32 2000}
!127 = !{i64 2148697495, i64 2148697521, i64 2148697550, i64 2148697584, i64 2148697615, i64 2148697638}
!128 = !{i64 2157673977}
!129 = !{i64 2148699960, i64 2148699986, i64 2148700015, i64 2148700049, i64 2148700080, i64 2148700103}
!130 = !{i64 2152052642}
!131 = !{!"branch_weights", i32 2146410443, i32 1073205}
!132 = !{i64 2148706353, i64 2148706385, i64 2148706414, i64 2148706448, i64 2148706479, i64 2148706502}
!133 = !{i64 2148795458}
!134 = !{i64 2152052802}
!135 = !{i64 2152053079}
!136 = !{i64 2152052921}
!137 = !{i64 2152053284}
!138 = !{i64 2152054347, i64 2152058900, i64 2152054384, i64 2152054440, i64 2152054474, i64 2152054498, i64 2152054539, i64 2152054560, i64 2152054588, i64 2152054622}
!139 = !{i64 2148794345}
!140 = !{i64 2148704740, i64 2148704772, i64 2148704801, i64 2148704835, i64 2148704866, i64 2148704889}
!141 = !{i64 2152059803}
!142 = !{i64 2157599674}
!143 = !{i64 2157601973}

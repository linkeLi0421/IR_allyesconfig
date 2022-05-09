; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/bpf/main.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/bpf/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.nfp_app_type = type { i32, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bpf_prog_offload_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.nfp_app = type { ptr, ptr, ptr, ptr, [3 x ptr], ptr, i32, %struct.notifier_block, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nfp_app_bpf = type { ptr, %struct.nfp_ccm, ptr, i32, i32, i32, %struct.list_head, i32, i32, %struct.rhashtable, i32, %struct.nfp_bpf_cap_adjust_head, %struct.anon.240, %struct.anon.241, i8, i8, i8, i8 }
%struct.nfp_ccm = type { ptr, [2048 x i32], i16, i16, %struct.sk_buff_head, %struct.wait_queue_head }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nfp_bpf_cap_adjust_head = type { i32, i32, i32, i32, i32 }
%struct.anon.240 = type { i32, i32, i32, i32, i32, i32 }
%struct.anon.241 = type { i32, i32, i32, i32 }
%struct.nfp_pf = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i32, %struct.mutex }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.nfp_net = type { %struct.nfp_net_dp, %struct.nfp_net_fw_version, i32, i32, i32, i8, i32, [40 x i8], [128 x i8], %struct.xdp_attachment_info, %struct.xdp_attachment_info, i32, i32, i32, i32, i32, [88 x i8], [64 x %struct.nfp_net_r_vector], [66 x %struct.msix_entry], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], i8, %struct.spinlock, %struct.spinlock, i32, i8, i8, %struct.timer_list, i32, %struct.semaphore, i8, i8, i32, i32, i32, i32, ptr, ptr, ptr, %struct.nfp_net_tlv_caps, i32, i32, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.228, ptr, %struct.list_head, ptr, ptr, i8, ptr, ptr, [116 x i8] }
%struct.nfp_net_dp = type { ptr, ptr, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.nfp_net_fw_version = type { i8, i8, i8, i8 }
%struct.xdp_attachment_info = type { ptr, i32 }
%struct.nfp_net_r_vector = type { ptr, %union.anon.217, ptr, ptr, i16, i16, %struct.dim, %struct.dim, %struct.u64_stats_sync, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, %struct.u64_stats_sync, i64, i64, [104 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, ptr, [24 x i8], %struct.cpumask, [20 x i8] }
%union.anon.217 = type { %struct.napi_struct }
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
%struct.atomic64_t = type { i64 }
%struct.anon.228 = type { %struct.sk_buff_head, %struct.wait_queue_head, ptr, %struct.work_struct, %struct.work_struct, i16 }
%struct.nfp_bpf_vnic = type { ptr, i32, i32 }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.192, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.216, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.192 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.216 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }

@nfp_bpf_maps_neutral_params = dso_local constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 4, i16 4, i16 8, i16 0, i32 0, i16 0, i8 1, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ebpf\00", [27 x i8] zeroinitializer }, align 32
@app_bpf = dso_local constant { %struct.nfp_app_type, [48 x i8] } { %struct.nfp_app_type { i32 2, ptr @.str, i32 0, i8 0, ptr @nfp_bpf_init, ptr @nfp_bpf_clean, ptr @nfp_bpf_extra_cap, ptr @nfp_bpf_ndo_init, ptr @nfp_bpf_ndo_uninit, ptr @nfp_bpf_vnic_alloc, ptr @nfp_bpf_vnic_free, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nfp_bpf_check_mtu, ptr null, ptr null, ptr null, ptr null, ptr @nfp_bpf_start, ptr null, ptr null, ptr @nfp_bpf_ctrl_msg_rx, ptr @nfp_bpf_ctrl_msg_rx_raw, ptr @nfp_bpf_setup_tc, ptr @nfp_ndo_bpf, ptr @nfp_bpf_xdp_offload, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@nfp_bpf_dev_ops = external dso_local constant %struct.bpf_prog_offload_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"_abi_bpf_capabilities\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bpf.cap\00", [24 x i8] zeroinitializer }, align 32
@nfp_bpf_parse_capabilities.__UNIQUE_ID_ddebug726 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nfp\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nfp_bpf_parse_capabilities\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/ethernet/netronome/nfp/bpf/main.c\00", [50 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"nfp: unknown BPF capability: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@nfp_bpf_parse_capabilities._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 404, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"nfp: BPF capabilities left after parsing, parsed:%zd total length:%zu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nfp_bpf_parse_capabilities._entry_ptr = internal global ptr @nfp_bpf_parse_capabilities._entry, section ".printk_index", align 4
@nfp_bpf_parse_capabilities._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.4, ptr @.str.5, i32 413, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"nfp: invalid BPF capabilities at offset:%zd\0A\00", [51 x i8] zeroinitializer }, align 32
@nfp_bpf_parse_capabilities._entry_ptr.12 = internal global ptr @nfp_bpf_parse_capabilities._entry.10, section ".printk_index", align 4
@nfp_bpf_parse_cap_func._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.5, i32 243, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"nfp: truncated function TLV: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nfp_bpf_parse_cap_func\00", [41 x i8] zeroinitializer }, align 32
@nfp_bpf_parse_cap_func._entry_ptr = internal global ptr @nfp_bpf_parse_cap_func._entry, section ".printk_index", align 4
@nfp_bpf_parse_cap_adjust_head._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.5, i32 213, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"nfp: truncated adjust_head TLV: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nfp_bpf_parse_cap_adjust_head\00", [34 x i8] zeroinitializer }, align 32
@nfp_bpf_parse_cap_adjust_head._entry_ptr = internal global ptr @nfp_bpf_parse_cap_adjust_head._entry, section ".printk_index", align 4
@nfp_bpf_parse_cap_adjust_head._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.5, i32 224, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"nfp: invalid adjust_head TLV: min > max\0A\00", [55 x i8] zeroinitializer }, align 32
@nfp_bpf_parse_cap_adjust_head._entry_ptr.19 = internal global ptr @nfp_bpf_parse_cap_adjust_head._entry.17, section ".printk_index", align 4
@nfp_bpf_parse_cap_adjust_head._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.5, i32 229, ptr @.str.22, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"nfp: disabling adjust_head - driver expects min/max to fit in as immediates\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@nfp_bpf_parse_cap_adjust_head._entry_ptr.23 = internal global ptr @nfp_bpf_parse_cap_adjust_head._entry.20, section ".printk_index", align 4
@nfp_bpf_parse_cap_maps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.5, i32 271, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nfp: truncated maps TLV: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nfp_bpf_parse_cap_maps\00", [41 x i8] zeroinitializer }, align 32
@nfp_bpf_parse_cap_maps._entry_ptr = internal global ptr @nfp_bpf_parse_cap_maps._entry, section ".printk_index", align 4
@nfp_bpf_parse_cap_abi_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.5, i32 322, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"nfp: truncated ABI version TLV: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nfp_bpf_parse_cap_abi_version\00", [34 x i8] zeroinitializer }, align 32
@nfp_bpf_parse_cap_abi_version._entry_ptr = internal global ptr @nfp_bpf_parse_cap_abi_version._entry, section ".printk_index", align 4
@nfp_bpf_parse_cap_abi_version._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.5, i32 329, ptr @.str.22, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"nfp: unsupported BPF ABI version: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@nfp_bpf_parse_cap_abi_version._entry_ptr.30 = internal global ptr @nfp_bpf_parse_cap_abi_version._entry.28, section ".printk_index", align 4
@.str.32 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@nfp_bpf_vnic_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.5, i32 70, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfp: No ETH table\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfp_bpf_vnic_alloc\00", [45 x i8] zeroinitializer }, align 32
@nfp_bpf_vnic_alloc._entry_ptr = internal global ptr @nfp_bpf_vnic_alloc._entry, section ".printk_index", align 4
@nfp_bpf_vnic_alloc._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.5, i32 75, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"nfp: ETH entries don't match vNICs (%d vs %d)\0A\00", [49 x i8] zeroinitializer }, align 32
@nfp_bpf_vnic_alloc._entry_ptr.37 = internal global ptr @nfp_bpf_vnic_alloc._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"BPF offload active, potential packet access beyond hardware packet boundary\00", [52 x i8] zeroinitializer }, align 32
@nfp_bpf_check_mtu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.5, i32 199, ptr @.str.38, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"ctrl: BPF offload active, potential packet access beyond hardware packet boundary\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfp_bpf_check_mtu\00", [46 x i8] zeroinitializer }, align 32
@nfp_bpf_check_mtu._entry_ptr = internal global ptr @nfp_bpf_check_mtu._entry, section ".printk_index", align 4
@nfp_bpf_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.5, i32 444, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"nfp: ctrl channel MTU below min required %u < %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nfp_bpf_start\00", [18 x i8] zeroinitializer }, align 32
@nfp_bpf_start._entry_ptr = internal global ptr @nfp_bpf_start._entry, section ".printk_index", align 4
@nfp_bpf_block_cb_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @nfp_bpf_block_cb_list, ptr @nfp_bpf_block_cb_list }, [24 x i8] zeroinitializer }, align 32
@nfp_bpf_setup_tc_block_cb.__msg = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"nfp: only offload of BPF classifiers supported\00", [49 x i8] zeroinitializer }, align 32
@nfp_bpf_setup_tc_block_cb.__msg.44 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"nfp: NFP firmware does not support eBPF offload\00", [48 x i8] zeroinitializer }, align 32
@tc_cls_can_offload_and_chain0.__msg = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Driver supports only offload of chain 0\00", [56 x i8] zeroinitializer }, align 32
@tc_can_offload_extack.__msg = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"TC offload is disabled on net device\00", [59 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.47 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 25]
@___asan_gen_.48 = private unnamed_addr constant [28 x i8] c"nfp_bpf_maps_neutral_params\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 16, i32 32 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 523, i32 11 }
@___asan_gen_.54 = private unnamed_addr constant [8 x i8] c"app_bpf\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 521, i32 27 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 342, i32 37 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 342, i32 62 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 398, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 403, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 413, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 243, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 213, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 224, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 229, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 271, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 321, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 328, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 59, i32 44 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 70, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 74, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 199, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 442, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant [22 x i8] c"nfp_bpf_block_cb_list\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 163, i32 8 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 115, i32 3 }
@___asan_gen_.199 = private constant [49 x i8] c"../drivers/net/ethernet/netronome/nfp/bpf/main.c\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 122, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 676, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [25 x i8] c"../include/net/pkt_cls.h\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 664, i32 3 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @nfp_bpf_check_mtu._entry, ptr @nfp_bpf_check_mtu._entry_ptr, ptr @nfp_bpf_parse_cap_abi_version._entry, ptr @nfp_bpf_parse_cap_abi_version._entry.28, ptr @nfp_bpf_parse_cap_abi_version._entry_ptr, ptr @nfp_bpf_parse_cap_abi_version._entry_ptr.30, ptr @nfp_bpf_parse_cap_adjust_head._entry, ptr @nfp_bpf_parse_cap_adjust_head._entry.17, ptr @nfp_bpf_parse_cap_adjust_head._entry.20, ptr @nfp_bpf_parse_cap_adjust_head._entry_ptr, ptr @nfp_bpf_parse_cap_adjust_head._entry_ptr.19, ptr @nfp_bpf_parse_cap_adjust_head._entry_ptr.23, ptr @nfp_bpf_parse_cap_func._entry, ptr @nfp_bpf_parse_cap_func._entry_ptr, ptr @nfp_bpf_parse_cap_maps._entry, ptr @nfp_bpf_parse_cap_maps._entry_ptr, ptr @nfp_bpf_parse_capabilities._entry, ptr @nfp_bpf_parse_capabilities._entry.10, ptr @nfp_bpf_parse_capabilities._entry_ptr, ptr @nfp_bpf_parse_capabilities._entry_ptr.12, ptr @nfp_bpf_start._entry, ptr @nfp_bpf_start._entry_ptr, ptr @nfp_bpf_vnic_alloc._entry, ptr @nfp_bpf_vnic_alloc._entry.35, ptr @nfp_bpf_vnic_alloc._entry_ptr, ptr @nfp_bpf_vnic_alloc._entry_ptr.37, ptr @nfp_bpf_maps_neutral_params, ptr @.str, ptr @app_bpf, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @nfp_bpf_block_cb_list, ptr @nfp_bpf_setup_tc_block_cb.__msg, ptr @nfp_bpf_setup_tc_block_cb.__msg.44, ptr @tc_cls_can_offload_and_chain0.__msg, ptr @tc_can_offload_extack.__msg], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_maps_neutral_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @app_bpf to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_parse_capabilities._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_parse_capabilities._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_parse_cap_func._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_parse_cap_adjust_head._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_parse_cap_adjust_head._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_parse_cap_adjust_head._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_parse_cap_maps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_parse_cap_abi_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_parse_cap_abi_version._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_vnic_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_vnic_alloc._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_check_mtu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_block_cb_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_setup_tc_block_cb.__msg to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_setup_tc_block_cb.__msg.44 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_cls_can_offload_and_chain0.__msg to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_can_offload_extack.__msg to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_bpf_init(ptr noundef %app) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 8640, i32 noundef 3520, i32 noundef 2) #11
  %tobool.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %app, ptr %call1.i.i.i, align 4096
  %priv = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1.i.i.i, ptr %priv, align 4
  %map_list = getelementptr inbounds %struct.nfp_app_bpf, ptr %call1.i.i.i, i32 0, i32 6
  %2 = ptrtoint ptr %map_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %map_list, ptr %map_list, align 8
  %prev.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %call1.i.i.i, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %map_list, ptr %prev.i, align 4
  %ccm = getelementptr inbounds %struct.nfp_app_bpf, ptr %call1.i.i.i, i32 0, i32 1
  %call2 = tail call i32 @nfp_ccm_init(ptr noundef %ccm, ptr noundef %app) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.err_free_bpf_crit_edge

if.end.err_free_bpf_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_bpf

if.end5:                                          ; preds = %if.end
  %maps_neutral = getelementptr inbounds %struct.nfp_app_bpf, ptr %call1.i.i.i, i32 0, i32 9
  %call6 = tail call i32 @rhashtable_init(ptr noundef %maps_neutral, ptr noundef nonnull @nfp_bpf_maps_neutral_params) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.err_clean_ccm_crit_edge

if.end5.err_clean_ccm_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_clean_ccm

if.end9:                                          ; preds = %if.end5
  %abi_version.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %call1.i.i.i, i32 0, i32 10
  %4 = ptrtoint ptr %abi_version.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %abi_version.i, align 4
  %call10 = tail call fastcc i32 @nfp_bpf_parse_capabilities(ptr noundef %app)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.err_free_neutral_maps_crit_edge

if.end9.err_free_neutral_maps_crit_edge:          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_neutral_maps

if.end13:                                         ; preds = %if.end9
  %5 = ptrtoint ptr %abi_version.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %abi_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp = icmp ult i32 %6, 3
  br i1 %cmp, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %cmsg_key_sz = getelementptr inbounds %struct.nfp_app_bpf, ptr %call1.i.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %cmsg_key_sz to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 64, ptr %cmsg_key_sz, align 4
  %cmsg_val_sz = getelementptr inbounds %struct.nfp_app_bpf, ptr %call1.i.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %cmsg_val_sz to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 64, ptr %cmsg_val_sz, align 128
  br label %if.end19

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %max_key_sz = getelementptr inbounds %struct.nfp_app_bpf, ptr %call1.i.i.i, i32 0, i32 12, i32 3
  %9 = ptrtoint ptr %max_key_sz to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_key_sz, align 32
  %cmsg_key_sz15 = getelementptr inbounds %struct.nfp_app_bpf, ptr %call1.i.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %cmsg_key_sz15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %cmsg_key_sz15, align 4
  %max_val_sz = getelementptr inbounds %struct.nfp_app_bpf, ptr %call1.i.i.i, i32 0, i32 12, i32 4
  %12 = ptrtoint ptr %max_val_sz to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_val_sz, align 4
  %cmsg_val_sz17 = getelementptr inbounds %struct.nfp_app_bpf, ptr %call1.i.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %cmsg_val_sz17 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %cmsg_val_sz17, align 128
  %call18 = tail call i32 @nfp_bpf_ctrl_cmsg_mtu(ptr noundef nonnull %call1.i.i.i) #8
  %ctrl_mtu = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 6
  %15 = ptrtoint ptr %ctrl_mtu to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call18, ptr %ctrl_mtu, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then14
  %call20 = tail call ptr @bpf_offload_dev_create(ptr noundef nonnull @nfp_bpf_dev_ops, ptr noundef nonnull %call1.i.i.i) #8
  %bpf_dev = getelementptr inbounds %struct.nfp_app_bpf, ptr %call1.i.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %bpf_dev to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call20, ptr %bpf_dev, align 8
  %cmp.i.i.not = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  %17 = ptrtoint ptr %call20 to i32
  br i1 %cmp.i.i.not, label %if.end19.err_free_neutral_maps_crit_edge, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19.err_free_neutral_maps_crit_edge:         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_neutral_maps

err_free_neutral_maps:                            ; preds = %if.end19.err_free_neutral_maps_crit_edge, %if.end9.err_free_neutral_maps_crit_edge
  %err.0 = phi i32 [ %call10, %if.end9.err_free_neutral_maps_crit_edge ], [ %17, %if.end19.err_free_neutral_maps_crit_edge ]
  tail call void @rhashtable_destroy(ptr noundef %maps_neutral) #8
  br label %err_clean_ccm

err_clean_ccm:                                    ; preds = %err_free_neutral_maps, %if.end5.err_clean_ccm_crit_edge
  %err.1 = phi i32 [ %call6, %if.end5.err_clean_ccm_crit_edge ], [ %err.0, %err_free_neutral_maps ]
  tail call void @nfp_ccm_clean(ptr noundef %ccm) #8
  br label %err_free_bpf

err_free_bpf:                                     ; preds = %err_clean_ccm, %if.end.err_free_bpf_crit_edge
  %err.2 = phi i32 [ %call2, %if.end.err_free_bpf_crit_edge ], [ %err.1, %err_clean_ccm ]
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_free_bpf, %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %err_free_bpf ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfp_bpf_clean(ptr nocapture noundef readonly %app) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %bpf_dev = getelementptr inbounds %struct.nfp_app_bpf, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bpf_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bpf_dev, align 4
  tail call void @bpf_offload_dev_destroy(ptr noundef %3) #8
  %ccm = getelementptr inbounds %struct.nfp_app_bpf, ptr %1, i32 0, i32 1
  tail call void @nfp_ccm_clean(ptr noundef %ccm) #8
  %map_list = getelementptr inbounds %struct.nfp_app_bpf, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %map_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %map_list, align 4
  %cmp.i.not = icmp eq ptr %5, %map_list
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !107

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 514, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %maps_in_use = getelementptr inbounds %struct.nfp_app_bpf, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %maps_in_use to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %maps_in_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool22.not = icmp eq i32 %7, 0
  br i1 %tobool22.not, label %lor.rhs, label %if.end.do.end39_crit_edge

if.end.do.end39_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39

lor.rhs:                                          ; preds = %if.end
  %map_elems_in_use = getelementptr inbounds %struct.nfp_app_bpf, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %map_elems_in_use to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %map_elems_in_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool23.not = icmp eq i32 %9, 0
  br i1 %tobool23.not, label %lor.rhs.if.end45_crit_edge, label %lor.rhs.do.end39_crit_edge, !prof !107

lor.rhs.do.end39_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39

lor.rhs.if.end45_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

do.end39:                                         ; preds = %lor.rhs.do.end39_crit_edge, %if.end.do.end39_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 515, i32 noundef 9, ptr noundef null) #8
  br label %if.end45

if.end45:                                         ; preds = %do.end39, %lor.rhs.if.end45_crit_edge
  %maps_neutral = getelementptr inbounds %struct.nfp_app_bpf, ptr %1, i32 0, i32 9
  tail call void @rhashtable_free_and_destroy(ptr noundef %maps_neutral, ptr noundef nonnull @nfp_check_rhashtable_empty, ptr noundef null) #8
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @nfp_bpf_extra_cap(ptr nocapture noundef readnone %app, ptr nocapture noundef readnone %nn) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str.32
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_bpf_ndo_init(ptr nocapture noundef readonly %app, ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %bpf_dev = getelementptr inbounds %struct.nfp_app_bpf, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bpf_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bpf_dev, align 4
  %call = tail call i32 @bpf_offload_dev_netdev_register(ptr noundef %3, ptr noundef %netdev) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfp_bpf_ndo_uninit(ptr nocapture noundef readonly %app, ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %bpf_dev = getelementptr inbounds %struct.nfp_app_bpf, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bpf_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bpf_dev, align 4
  tail call void @bpf_offload_dev_netdev_unregister(ptr noundef %3, ptr noundef %netdev) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_bpf_vnic_alloc(ptr noundef %app, ptr noundef %nn, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pf1 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 1
  %0 = ptrtoint ptr %pf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf1, align 4
  %eth_tbl = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %eth_tbl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eth_tbl, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cpp = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpp, align 4
  %call = tail call ptr @nfp_cpp_device(ptr noundef %5) #8
  %parent = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.33) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_data_vnics = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 29
  %8 = ptrtoint ptr %max_data_vnics to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_data_vnics, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.not = icmp eq i32 %9, %11
  br i1 %cmp.not, label %if.end13, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %cpp7 = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %cpp7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cpp7, align 4
  %call8 = tail call ptr @nfp_cpp_device(ptr noundef %13) #8
  %parent9 = getelementptr inbounds %struct.device, ptr %call8, i32 0, i32 1
  %14 = ptrtoint ptr %parent9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent9, align 8
  %16 = ptrtoint ptr %max_data_vnics to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_data_vnics, align 4
  %18 = ptrtoint ptr %eth_tbl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %eth_tbl, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.36, i32 noundef %17, i32 noundef %21) #12
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 12) #13
  %tobool15.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %app_priv = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 58
  %23 = ptrtoint ptr %app_priv to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %app_priv, align 8
  %call18 = tail call i32 @nfp_app_nic_vnic_alloc(ptr noundef %app, ptr noundef %nn, i32 noundef %id) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %err_free_priv

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %ctrl_bar.i = getelementptr inbounds %struct.nfp_net_dp, ptr %nn, i32 0, i32 11
  %24 = ptrtoint ptr %ctrl_bar.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctrl_bar.i, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 132
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #8, !srcloc !108
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %conv = zext i16 %27 to i32
  %start_off = getelementptr inbounds %struct.nfp_bpf_vnic, ptr %call7.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %start_off to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv, ptr %start_off, align 4
  %29 = ptrtoint ptr %ctrl_bar.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctrl_bar.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %30, i32 134
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i44) #8, !srcloc !108
  %32 = tail call i16 @llvm.bswap.i16(i16 %31) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %conv24 = zext i16 %32 to i32
  %tgt_done = getelementptr inbounds %struct.nfp_bpf_vnic, ptr %call7.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %tgt_done to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv24, ptr %tgt_done, align 8
  br label %cleanup

err_free_priv:                                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %app_priv to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %app_priv, align 8
  tail call void @kfree(ptr noundef %35) #8
  br label %cleanup

cleanup:                                          ; preds = %err_free_priv, %if.end21, %if.end13.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end6 ], [ %call18, %err_free_priv ], [ 0, %if.end21 ], [ -22, %do.end ], [ -12, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfp_bpf_vnic_free(ptr nocapture noundef readnone %app, ptr nocapture noundef readonly %nn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %app_priv = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 58
  %0 = ptrtoint ptr %app_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app_priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !107

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 101, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_bpf_check_mtu(ptr nocapture noundef readnone %app, ptr noundef %netdev, i32 noundef %new_mtu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %ctrl = getelementptr i8, ptr %netdev, i32 2320
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctrl, align 16
  %neg = and i32 %1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %neg)
  %tobool.not.not = icmp eq i32 %neg, 0
  br i1 %tobool.not.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %xdp_hw = getelementptr i8, ptr %netdev, i32 2572
  %2 = ptrtoint ptr %xdp_hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xdp_hw, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.else, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %app_priv = getelementptr i8, ptr %netdev, i32 61192
  %4 = ptrtoint ptr %app_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %app_priv, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.end.if.end6_crit_edge
  %prog.0 = phi ptr [ %7, %if.else ], [ %3, %if.end.if.end6_crit_edge ]
  %call7 = tail call zeroext i1 @nfp_bpf_offload_check_mtu(ptr noundef %add.ptr.i, ptr noundef %prog.0, i32 noundef %new_mtu) #8
  br i1 %call7, label %if.then8, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8:                                         ; preds = %if.end6
  %netdev10 = getelementptr i8, ptr %netdev, i32 2308
  %8 = ptrtoint ptr %netdev10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev10, align 4
  %tobool11.not = icmp eq ptr %9, null
  br i1 %tobool11.not, label %do.end, label %if.then12

if.then12:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull %9, ptr noundef nonnull @.str.39) #12
  br label %cleanup

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 128
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.38, ptr noundef %11, ptr noundef nonnull @.str.40) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then12, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -16, %do.end ], [ -16, %if.then12 ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_bpf_start(ptr nocapture noundef readonly %app) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %ctrl = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 3
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl, align 4
  %mtu = getelementptr inbounds %struct.nfp_net_dp, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mtu, align 64
  %call = tail call i32 @nfp_bpf_ctrl_cmsg_min_mtu(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %call)
  %cmp = icmp ult i32 %5, %call
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %cpp = getelementptr inbounds %struct.nfp_app, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cpp, align 4
  %call2 = tail call ptr @nfp_cpp_device(ptr noundef %9) #8
  %parent = getelementptr inbounds %struct.device, ptr %call2, i32 0, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %12 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctrl, align 4
  %mtu5 = getelementptr inbounds %struct.nfp_net_dp, ptr %13, i32 0, i32 18
  %14 = ptrtoint ptr %mtu5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mtu5, align 64
  %call6 = tail call i32 @nfp_bpf_ctrl_cmsg_min_mtu(ptr noundef %1) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.42, i32 noundef %15, i32 noundef %call6) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmsg_multi_ent = getelementptr inbounds %struct.nfp_app_bpf, ptr %1, i32 0, i32 17
  %16 = ptrtoint ptr %cmsg_multi_ent to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cmsg_multi_ent, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 @nfp_bpf_ctrl_cmsg_cache_cnt(ptr noundef %1) #8
  %cmsg_cache_cnt = getelementptr inbounds %struct.nfp_app_bpf, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %cmsg_cache_cnt to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call8, ptr %cmsg_cache_cnt, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %cmsg_cache_cnt9 = getelementptr inbounds %struct.nfp_app_bpf, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %cmsg_cache_cnt9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %cmsg_cache_cnt9, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.else ], [ 0, %if.then7 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_bpf_ctrl_msg_rx(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_bpf_ctrl_msg_rx_raw(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_bpf_setup_tc(ptr nocapture noundef readnone %app, ptr noundef %netdev, i32 noundef %type, ptr noundef %type_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %type)
  %cond = icmp eq i32 %type, 5
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %call1 = tail call i32 @flow_block_cb_setup_simple(ptr noundef %type_data, ptr noundef nonnull @nfp_bpf_block_cb_list, ptr noundef nonnull @nfp_bpf_setup_tc_block_cb, ptr noundef %add.ptr.i, ptr noundef %add.ptr.i, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %sw.bb ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_ndo_bpf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfp_bpf_xdp_offload(ptr nocapture noundef readnone %app, ptr nocapture noundef readnone %nn, ptr nocapture noundef readnone %prog, ptr nocapture noundef readnone %extack) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_ccm_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_bpf_parse_capabilities(ptr nocapture noundef readonly %app) unnamed_addr #0 align 64 {
entry:
  %area = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pf = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 1
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf, align 4
  %cpp1 = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cpp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpp1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %area) #8
  %4 = ptrtoint ptr %area to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %area, align 4, !annotation !111
  %rtbl = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %rtbl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rtbl, align 4
  %call = call ptr @nfp_rtsym_map(ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 8, ptr noundef nonnull %area) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %7 = ptrtoint ptr %call to i32
  br i1 %cmp.i, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %8 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %area, align 4
  %call6226 = call i32 @nfp_cpp_area_size(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call6226)
  %cmp7.not227 = icmp ult i32 %call6226, 8
  br i1 %cmp7.not227, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %priv65 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  br label %while.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cmp = icmp eq ptr %call, inttoptr (i32 -2 to ptr)
  %spec.select = select i1 %cmp, i32 0, i32 %7
  br label %cleanup104

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %mem.0228 = phi ptr [ %call, %while.body.lr.ph ], [ %add.ptr17, %cleanup.while.body_crit_edge ]
  %10 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mem.0228) #8, !srcloc !112
  %11 = call i32 @llvm.bswap.i32(i32 %10)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  %add.ptr = getelementptr i8, ptr %mem.0228, i32 4
  %12 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !112
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  %add.ptr15 = getelementptr i8, ptr %mem.0228, i32 8
  %add16 = add i32 %13, 8
  %add.ptr17 = getelementptr i8, ptr %mem.0228, i32 %add16
  %sub.ptr.lhs.cast18 = ptrtoint ptr %add.ptr17 to i32
  %sub.ptr.sub20 = sub i32 %sub.ptr.lhs.cast18, %7
  %14 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %area, align 4
  %call21 = call i32 @nfp_cpp_area_size(ptr noundef %15) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub20, i32 %call21)
  %cmp22 = icmp ugt i32 %sub.ptr.sub20, %call21
  br i1 %cmp22, label %while.body.do.end98_crit_edge, label %if.end24

while.body.do.end98_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end98

if.end24:                                         ; preds = %while.body
  %16 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %do.body [
    i32 1, label %sw.bb
    i32 2, label %sw.bb28
    i32 3, label %sw.bb34
    i32 4, label %sw.bb40
    i32 5, label %sw.bb46
    i32 6, label %sw.bb52
    i32 7, label %sw.bb58
    i32 8, label %sw.bb64
  ]

sw.bb:                                            ; preds = %if.end24
  %17 = ptrtoint ptr %priv65 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %13)
  %cmp.i152 = icmp ult i32 %13, 8
  br i1 %cmp.i152, label %nfp_bpf_parse_cap_func.exit, label %if.end.i

if.end.i:                                         ; preds = %sw.bb
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #8, !srcloc !112
  %20 = call i32 @llvm.bswap.i32(i32 %19) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !115
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %20, label %if.end.i.cleanup_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb8.i
    i32 3, label %sw.bb16.i
    i32 25, label %sw.bb24.i
  ]

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %func_addr.i = getelementptr i8, ptr %mem.0228, i32 12
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %func_addr.i) #8, !srcloc !112
  %23 = call i32 @llvm.bswap.i32(i32 %22) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  %helpers.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %18, i32 0, i32 13
  %24 = ptrtoint ptr %helpers.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %helpers.i, align 4
  br label %cleanup

sw.bb8.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %func_addr11.i = getelementptr i8, ptr %mem.0228, i32 12
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %func_addr11.i) #8, !srcloc !112
  %26 = call i32 @llvm.bswap.i32(i32 %25) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %map_update.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %18, i32 0, i32 13, i32 1
  %27 = ptrtoint ptr %map_update.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %map_update.i, align 4
  br label %cleanup

sw.bb16.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %func_addr19.i = getelementptr i8, ptr %mem.0228, i32 12
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %func_addr19.i) #8, !srcloc !112
  %29 = call i32 @llvm.bswap.i32(i32 %28) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  %map_delete.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %18, i32 0, i32 13, i32 2
  %30 = ptrtoint ptr %map_delete.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %map_delete.i, align 4
  br label %cleanup

sw.bb24.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %func_addr27.i = getelementptr i8, ptr %mem.0228, i32 12
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %func_addr27.i) #8, !srcloc !112
  %32 = call i32 @llvm.bswap.i32(i32 %31) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %perf_event_output.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %18, i32 0, i32 13, i32 3
  %33 = ptrtoint ptr %perf_event_output.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %perf_event_output.i, align 4
  br label %cleanup

nfp_bpf_parse_cap_func.exit:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %18, align 4
  %cpp.i = getelementptr inbounds %struct.nfp_app, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %cpp.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cpp.i, align 4
  %call.i = call ptr @nfp_cpp_device(ptr noundef %37) #8
  %parent.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 1
  %38 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %parent.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.13, i32 noundef %13) #12
  br label %do.end98

sw.bb28:                                          ; preds = %if.end24
  %40 = ptrtoint ptr %priv65 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv65, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %pf.i = getelementptr inbounds %struct.nfp_app, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %pf.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pf.i, align 4
  %cpp1.i = getelementptr inbounds %struct.nfp_pf, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %cpp1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cpp1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %13)
  %cmp.i154 = icmp ult i32 %13, 20
  br i1 %cmp.i154, label %do.end.i157, label %if.end.i158

do.end.i157:                                      ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #10
  %call.i155 = call ptr @nfp_cpp_device(ptr noundef %47) #8
  %parent.i156 = getelementptr inbounds %struct.device, ptr %call.i155, i32 0, i32 1
  %48 = ptrtoint ptr %parent.i156 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %parent.i156, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.15, i32 noundef %13) #12
  br label %do.end98

if.end.i158:                                      ; preds = %sw.bb28
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #8, !srcloc !112
  %51 = call i32 @llvm.bswap.i32(i32 %50) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  %adjust_head.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %41, i32 0, i32 11
  %52 = ptrtoint ptr %adjust_head.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %adjust_head.i, align 4
  %off_min.i = getelementptr i8, ptr %mem.0228, i32 12
  %53 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %off_min.i) #8, !srcloc !112
  %54 = call i32 @llvm.bswap.i32(i32 %53) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  %off_min11.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %41, i32 0, i32 11, i32 1
  %55 = ptrtoint ptr %off_min11.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %off_min11.i, align 4
  %off_max.i = getelementptr i8, ptr %mem.0228, i32 16
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %off_max.i) #8, !srcloc !112
  %57 = call i32 @llvm.bswap.i32(i32 %56) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  %off_max18.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %41, i32 0, i32 11, i32 2
  %58 = ptrtoint ptr %off_max18.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %off_max18.i, align 4
  %guaranteed_sub.i = getelementptr i8, ptr %mem.0228, i32 20
  %59 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %guaranteed_sub.i) #8, !srcloc !112
  %60 = call i32 @llvm.bswap.i32(i32 %59) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %guaranteed_sub25.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %41, i32 0, i32 11, i32 3
  %61 = ptrtoint ptr %guaranteed_sub25.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %guaranteed_sub25.i, align 4
  %guaranteed_add.i = getelementptr i8, ptr %mem.0228, i32 24
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %guaranteed_add.i) #8, !srcloc !112
  %63 = call i32 @llvm.bswap.i32(i32 %62) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  %guaranteed_add32.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %41, i32 0, i32 11, i32 4
  %64 = ptrtoint ptr %guaranteed_add32.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %guaranteed_add32.i, align 4
  %65 = ptrtoint ptr %off_min11.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %off_min11.i, align 4
  %67 = ptrtoint ptr %off_max18.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %off_max18.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %68)
  %cmp37.i = icmp sgt i32 %66, %68
  br i1 %cmp37.i, label %do.end41.i, label %do.end59.i

do.end41.i:                                       ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_pc() #10
  %call42.i = call ptr @nfp_cpp_device(ptr noundef %47) #8
  %parent43.i = getelementptr inbounds %struct.device, ptr %call42.i, i32 0, i32 1
  %69 = ptrtoint ptr %parent43.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %parent43.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.18) #12
  br label %do.end98

do.end59.i:                                       ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %66)
  %tobool.not.i = icmp ult i32 %66, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %68)
  %tobool85.not.i = icmp ult i32 %68, 256
  %or.cond.i = select i1 %tobool.not.i, i1 %tobool85.not.i, i1 false
  br i1 %or.cond.i, label %do.end59.i.cleanup_crit_edge, label %do.end92.i

do.end59.i.cleanup_crit_edge:                     ; preds = %do.end59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end92.i:                                       ; preds = %do.end59.i
  call void @__sanitizer_cov_trace_pc() #10
  %call93.i = call ptr @nfp_cpp_device(ptr noundef %47) #8
  %parent94.i = getelementptr inbounds %struct.device, ptr %call93.i, i32 0, i32 1
  %71 = ptrtoint ptr %parent94.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %parent94.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %72, ptr noundef nonnull @.str.21) #12
  %73 = call ptr @memset(ptr %adjust_head.i, i32 0, i32 20)
  br label %cleanup

sw.bb34:                                          ; preds = %if.end24
  %74 = ptrtoint ptr %priv65 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %priv65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %13)
  %cmp.i160 = icmp ult i32 %13, 24
  br i1 %cmp.i160, label %nfp_bpf_parse_cap_maps.exit, label %nfp_bpf_parse_cap_maps.exit.thread

nfp_bpf_parse_cap_maps.exit.thread:               ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #10
  %76 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #8, !srcloc !112
  %77 = call i32 @llvm.bswap.i32(i32 %76) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !125
  %maps.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %75, i32 0, i32 12
  %78 = ptrtoint ptr %maps.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %maps.i, align 4
  %max_maps.i = getelementptr i8, ptr %mem.0228, i32 12
  %79 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %max_maps.i) #8, !srcloc !112
  %80 = call i32 @llvm.bswap.i32(i32 %79) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  %max_maps10.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %75, i32 0, i32 12, i32 1
  %81 = ptrtoint ptr %max_maps10.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %max_maps10.i, align 4
  %max_elems.i = getelementptr i8, ptr %mem.0228, i32 16
  %82 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %max_elems.i) #8, !srcloc !112
  %83 = call i32 @llvm.bswap.i32(i32 %82) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  %max_elems17.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %75, i32 0, i32 12, i32 2
  %84 = ptrtoint ptr %max_elems17.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %max_elems17.i, align 4
  %max_key_sz.i = getelementptr i8, ptr %mem.0228, i32 20
  %85 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %max_key_sz.i) #8, !srcloc !112
  %86 = call i32 @llvm.bswap.i32(i32 %85) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  %max_key_sz24.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %75, i32 0, i32 12, i32 3
  %87 = ptrtoint ptr %max_key_sz24.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %max_key_sz24.i, align 4
  %max_val_sz.i = getelementptr i8, ptr %mem.0228, i32 24
  %88 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %max_val_sz.i) #8, !srcloc !112
  %89 = call i32 @llvm.bswap.i32(i32 %88) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  %max_val_sz31.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %75, i32 0, i32 12, i32 4
  %90 = ptrtoint ptr %max_val_sz31.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %max_val_sz31.i, align 4
  %max_elem_sz.i = getelementptr i8, ptr %mem.0228, i32 28
  %91 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %max_elem_sz.i) #8, !srcloc !112
  %92 = call i32 @llvm.bswap.i32(i32 %91) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %max_elem_sz38.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %75, i32 0, i32 12, i32 5
  %93 = ptrtoint ptr %max_elem_sz38.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %max_elem_sz38.i, align 4
  br label %cleanup

nfp_bpf_parse_cap_maps.exit:                      ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #10
  %94 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %75, align 4
  %cpp.i161 = getelementptr inbounds %struct.nfp_app, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %cpp.i161 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cpp.i161, align 4
  %call.i162 = call ptr @nfp_cpp_device(ptr noundef %97) #8
  %parent.i163 = getelementptr inbounds %struct.device, ptr %call.i162, i32 0, i32 1
  %98 = ptrtoint ptr %parent.i163 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %parent.i163, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.24, i32 noundef %13) #12
  br label %do.end98

sw.bb40:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %100 = ptrtoint ptr %priv65 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %priv65, align 4
  %pseudo_random.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %101, i32 0, i32 14
  %102 = ptrtoint ptr %pseudo_random.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 1, ptr %pseudo_random.i, align 4
  br label %cleanup

sw.bb46:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %103 = ptrtoint ptr %priv65 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %priv65, align 4
  %queue_select.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %104, i32 0, i32 15
  %105 = ptrtoint ptr %queue_select.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 1, ptr %queue_select.i, align 1
  br label %cleanup

sw.bb52:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %106 = ptrtoint ptr %priv65 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %priv65, align 4
  %adjust_tail.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %107, i32 0, i32 16
  %108 = ptrtoint ptr %adjust_tail.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 1, ptr %adjust_tail.i, align 2
  br label %cleanup

sw.bb58:                                          ; preds = %if.end24
  %109 = ptrtoint ptr %priv65 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %priv65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp.i167 = icmp ult i32 %13, 4
  br i1 %cmp.i167, label %nfp_bpf_parse_cap_abi_version.exit, label %if.end.i172

if.end.i172:                                      ; preds = %sw.bb58
  %111 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #8, !srcloc !112
  %112 = call i32 @llvm.bswap.i32(i32 %111) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  %abi_version.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %110, i32 0, i32 10
  %113 = ptrtoint ptr %abi_version.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %abi_version.i, align 4
  %114 = and i32 %112, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %114)
  %.not.i = icmp eq i32 %114, 2
  br i1 %.not.i, label %if.end.i172.cleanup_crit_edge, label %do.end9.i

if.end.i172.cleanup_crit_edge:                    ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end9.i:                                        ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #10
  %115 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %110, align 4
  %cpp11.i = getelementptr inbounds %struct.nfp_app, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %cpp11.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %cpp11.i, align 4
  %call12.i = call ptr @nfp_cpp_device(ptr noundef %118) #8
  %parent13.i = getelementptr inbounds %struct.device, ptr %call12.i, i32 0, i32 1
  %119 = ptrtoint ptr %parent13.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %parent13.i, align 8
  %121 = ptrtoint ptr %abi_version.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %abi_version.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %120, ptr noundef nonnull @.str.29, i32 noundef %122) #12
  %123 = ptrtoint ptr %abi_version.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %abi_version.i, align 4
  br label %cleanup

nfp_bpf_parse_cap_abi_version.exit:               ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #10
  %124 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %110, align 4
  %cpp.i168 = getelementptr inbounds %struct.nfp_app, ptr %125, i32 0, i32 2
  %126 = ptrtoint ptr %cpp.i168 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %cpp.i168, align 4
  %call.i169 = call ptr @nfp_cpp_device(ptr noundef %127) #8
  %parent.i170 = getelementptr inbounds %struct.device, ptr %call.i169, i32 0, i32 1
  %128 = ptrtoint ptr %parent.i170 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %parent.i170, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %129, ptr noundef nonnull @.str.26, i32 noundef %13) #12
  br label %do.end98

sw.bb64:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %130 = ptrtoint ptr %priv65 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %priv65, align 4
  %cmsg_multi_ent.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %131, i32 0, i32 17
  %132 = ptrtoint ptr %cmsg_multi_ent.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 1, ptr %cmsg_multi_ent.i, align 1
  br label %cleanup

do.body:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfp_bpf_parse_capabilities.__UNIQUE_ID_ddebug726, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfp_bpf_parse_capabilities, %if.then75)) #8
          to label %cleanup [label %if.then75], !srcloc !132

if.then75:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call76 = call ptr @nfp_cpp_device(ptr noundef %3) #8
  %parent = getelementptr inbounds %struct.device, ptr %call76, i32 0, i32 1
  %133 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %parent, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nfp_bpf_parse_capabilities.__UNIQUE_ID_ddebug726, ptr noundef %134, ptr noundef nonnull @.str.6, i32 noundef %11) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then75, %do.body, %sw.bb64, %do.end9.i, %if.end.i172.cleanup_crit_edge, %sw.bb52, %sw.bb46, %sw.bb40, %nfp_bpf_parse_cap_maps.exit.thread, %do.end92.i, %do.end59.i.cleanup_crit_edge, %sw.bb24.i, %sw.bb16.i, %sw.bb8.i, %sw.bb.i, %if.end.i.cleanup_crit_edge
  %add = add i32 %sub.ptr.sub20, 8
  %135 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %area, align 4
  %call6 = call i32 @nfp_cpp_area_size(ptr noundef %136) #8
  %cmp7.not = icmp ugt i32 %add, %call6
  br i1 %cmp7.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %mem.0.lcssa = phi ptr [ %call, %while.cond.preheader.while.end_crit_edge ], [ %add.ptr17, %cleanup.while.end_crit_edge ]
  %sub.ptr.sub.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %sub.ptr.sub20, %cleanup.while.end_crit_edge ]
  %137 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %area, align 4
  %call83 = call i32 @nfp_cpp_area_size(ptr noundef %138) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.lcssa, i32 %call83)
  %cmp84.not = icmp eq i32 %sub.ptr.sub.lcssa, %call83
  br i1 %cmp84.not, label %if.end95, label %do.end88

do.end88:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %call89 = call ptr @nfp_cpp_device(ptr noundef %3) #8
  %parent90 = getelementptr inbounds %struct.device, ptr %call89, i32 0, i32 1
  %139 = ptrtoint ptr %parent90 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %parent90, align 8
  %141 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %area, align 4
  %call94 = call i32 @nfp_cpp_area_size(ptr noundef %142) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %140, ptr noundef nonnull @.str.7, i32 noundef %sub.ptr.sub.lcssa, i32 noundef %call94) #12
  %.pre = ptrtoint ptr %mem.0.lcssa to i32
  %.pre248 = sub i32 %.pre, %7
  br label %do.end98

if.end95:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %143 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %area, align 4
  call void @nfp_cpp_area_release_free(ptr noundef %144) #8
  br label %cleanup104

do.end98:                                         ; preds = %do.end88, %nfp_bpf_parse_cap_abi_version.exit, %nfp_bpf_parse_cap_maps.exit, %do.end41.i, %do.end.i157, %nfp_bpf_parse_cap_func.exit, %while.body.do.end98_crit_edge
  %sub.ptr.sub103.pre-phi = phi i32 [ %sub.ptr.sub20, %do.end41.i ], [ %sub.ptr.sub20, %do.end.i157 ], [ %sub.ptr.sub20, %nfp_bpf_parse_cap_abi_version.exit ], [ %sub.ptr.sub20, %nfp_bpf_parse_cap_maps.exit ], [ %sub.ptr.sub20, %nfp_bpf_parse_cap_func.exit ], [ %.pre248, %do.end88 ], [ %sub.ptr.sub20, %while.body.do.end98_crit_edge ]
  %call99 = call ptr @nfp_cpp_device(ptr noundef %3) #8
  %parent100 = getelementptr inbounds %struct.device, ptr %call99, i32 0, i32 1
  %145 = ptrtoint ptr %parent100 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %parent100, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %146, ptr noundef nonnull @.str.11, i32 noundef %sub.ptr.sub103.pre-phi) #12
  %147 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %area, align 4
  call void @nfp_cpp_area_release_free(ptr noundef %148) #8
  br label %cleanup104

cleanup104:                                       ; preds = %do.end98, %if.end95, %if.then
  %retval.0 = phi i32 [ -22, %do.end98 ], [ 0, %if.end95 ], [ %spec.select, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %area) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_bpf_ctrl_cmsg_mtu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_offload_dev_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_ccm_clean(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_rtsym_map(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_cpp_area_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_cpp_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_cpp_area_release_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_offload_dev_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_free_and_destroy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_check_rhashtable_empty(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_offload_dev_netdev_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_offload_dev_netdev_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_app_nic_vnic_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfp_bpf_offload_check_mtu(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_bpf_ctrl_cmsg_min_mtu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_bpf_ctrl_cmsg_cache_cnt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flow_block_cb_setup_simple(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_bpf_setup_tc_block_cb(i32 noundef %type, ptr nocapture noundef readonly %type_data, ptr nocapture noundef readonly %cb_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %type)
  %cmp.not = icmp eq i32 %type, 4
  br i1 %cmp.not, label %if.end2, label %do.body

do.body:                                          ; preds = %entry
  %extack = getelementptr inbounds %struct.flow_cls_common_offload, ptr %type_data, i32 0, i32 3
  %0 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extack, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_bpf_setup_tc_block_cb.__msg) #8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then1

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then1:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @nfp_bpf_setup_tc_block_cb.__msg, ptr %1, align 4
  br label %cleanup

if.end2:                                          ; preds = %entry
  %netdev = getelementptr inbounds %struct.nfp_net_dp, ptr %cb_priv, i32 0, i32 1
  %3 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %netdev, align 4
  %extack.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %type_data, i32 0, i32 3
  %5 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %extack.i, align 4
  %features.i.i.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 23
  %7 = ptrtoint ptr %features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %features.i.i.i, align 16
  %and.i.i.i = and i64 %8, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.i.not.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %do.body.i.i, label %if.end.i

do.body.i.i:                                      ; preds = %if.end2
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @tc_can_offload_extack.__msg) #8
  %tobool1.not.i.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i.i, label %do.body.i.i.cleanup_crit_edge, label %if.then2.i.i

do.body.i.i.cleanup_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @tc_can_offload_extack.__msg, ptr %6, align 4
  br label %cleanup

if.end.i:                                         ; preds = %if.end2
  %10 = ptrtoint ptr %type_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.end5, label %do.body.i

do.body.i:                                        ; preds = %if.end.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @tc_cls_can_offload_and_chain0.__msg) #8
  %tobool3.not.i = icmp eq ptr %6, null
  br i1 %tobool3.not.i, label %do.body.i.cleanup_crit_edge, label %if.then4.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @tc_cls_can_offload_and_chain0.__msg, ptr %6, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end.i
  %13 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %extack.i, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_bpf_setup_tc_block_cb.__msg.44) #8
  %tobool12.not = icmp eq ptr %14, null
  br i1 %tobool12.not, label %if.end5.cleanup_crit_edge, label %if.then13

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @nfp_bpf_setup_tc_block_cb.__msg.44, ptr %14, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end5.cleanup_crit_edge, %if.then4.i, %do.body.i.cleanup_crit_edge, %if.then2.i.i, %do.body.i.i.cleanup_crit_edge, %if.then1, %do.body.cleanup_crit_edge
  ret i32 -95
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !78, !79, !81, !82, !83, !84, !86, !88, !90, !92, !94, !96}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @nfp_bpf_maps_neutral_params, !1, !"nfp_bpf_maps_neutral_params", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/main.c", i32 16, i32 32}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/main.c", i32 523, i32 11}
!4 = !{ptr @app_bpf, !5, !"app_bpf", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/main.c", i32 521, i32 27}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/main.c", i32 342, i32 37}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/main.c", i32 342, i32 62}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/main.c", i32 398, i32 4}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @nfp_bpf_parse_capabilities.__UNIQUE_ID_ddebug726, !11, !"__UNIQUE_ID_ddebug726", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/main.c", i32 403, i32 3}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @nfp_bpf_parse_capabilities._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @nfp_bpf_parse_capabilities._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/main.c", i32 413, i32 2}
!24 = !{ptr @nfp_bpf_parse_capabilities._entry.10, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @nfp_bpf_parse_capabilities._entry_ptr.12, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/main.c", i32 243, i32 3}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @nfp_bpf_parse_cap_func._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @nfp_bpf_parse_cap_func._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/main.c", i32 213, i32 3}
!33 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @nfp_bpf_parse_cap_adjust_head._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @nfp_bpf_parse_cap_adjust_head._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/main.c", i32 224, i32 3}
!38 = !{ptr @nfp_bpf_parse_cap_adjust_head._entry.17, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @nfp_bpf_parse_cap_adjust_head._entry_ptr.19, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/main.c", i32 229, i32 3}
!42 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @nfp_bpf_parse_cap_adjust_head._entry.20, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @nfp_bpf_parse_cap_adjust_head._entry_ptr.23, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/main.c", i32 271, i32 3}
!47 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @nfp_bpf_parse_cap_maps._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @nfp_bpf_parse_cap_maps._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/main.c", i32 321, i32 3}
!52 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @nfp_bpf_parse_cap_abi_version._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @nfp_bpf_parse_cap_abi_version._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/main.c", i32 328, i32 3}
!57 = !{ptr @nfp_bpf_parse_cap_abi_version._entry.28, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @nfp_bpf_parse_cap_abi_version._entry_ptr.30, !56, !"_entry_ptr", i1 false, i1 false}
!59 = distinct !{null, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/main.c", i32 59, i32 36}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/main.c", i32 59, i32 44}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/main.c", i32 70, i32 3}
!65 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @nfp_bpf_vnic_alloc._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @nfp_bpf_vnic_alloc._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/main.c", i32 74, i32 3}
!70 = !{ptr @nfp_bpf_vnic_alloc._entry.35, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @nfp_bpf_vnic_alloc._entry_ptr.37, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/main.c", i32 199, i32 3}
!74 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.40, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.41, !73, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @nfp_bpf_check_mtu._entry, !73, !"_entry", i1 false, i1 false}
!78 = !{ptr @nfp_bpf_check_mtu._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/main.c", i32 442, i32 3}
!81 = !{ptr @.str.43, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @nfp_bpf_start._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @nfp_bpf_start._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @nfp_bpf_block_cb_list, !85, !"nfp_bpf_block_cb_list", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/main.c", i32 163, i32 8}
!86 = !{ptr @nfp_bpf_setup_tc_block_cb.__msg, !87, !"__msg", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/main.c", i32 115, i32 3}
!88 = !{ptr @nfp_bpf_setup_tc_block_cb.__msg.44, !89, !"__msg", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/main.c", i32 122, i32 3}
!90 = distinct !{null, !91, !"__msg", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/main.c", i32 127, i32 3}
!92 = distinct !{null, !93, !"__msg", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/main.c", i32 135, i32 3}
!94 = !{ptr @tc_cls_can_offload_and_chain0.__msg, !95, !"__msg", i1 false, i1 false}
!95 = !{!"../include/net/pkt_cls.h", i32 676, i32 3}
!96 = !{ptr @tc_can_offload_extack.__msg, !97, !"__msg", i1 false, i1 false}
!97 = !{!"../include/net/pkt_cls.h", i32 664, i32 3}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{!"branch_weights", i32 2000, i32 1}
!108 = !{i64 6646696}
!109 = !{i64 2159024862}
!110 = !{i8 0, i8 2}
!111 = !{!"auto-init"}
!112 = !{i64 6647534}
!113 = !{i64 2160096932}
!114 = !{i64 2160097378}
!115 = !{i64 2160085368}
!116 = !{i64 2160085846}
!117 = !{i64 2160086324}
!118 = !{i64 2160086802}
!119 = !{i64 2160087280}
!120 = !{i64 2160049008}
!121 = !{i64 2160049478}
!122 = !{i64 2160049948}
!123 = !{i64 2160050446}
!124 = !{i64 2160050944}
!125 = !{i64 2160089650}
!126 = !{i64 2160090124}
!127 = !{i64 2160090602}
!128 = !{i64 2160091084}
!129 = !{i64 2160091566}
!130 = !{i64 2160092052}
!131 = !{i64 2160094468}
!132 = !{i64 2148983122, i64 2148983127, i64 2148983140, i64 2148983184, i64 2148983218, i64 2148983239}

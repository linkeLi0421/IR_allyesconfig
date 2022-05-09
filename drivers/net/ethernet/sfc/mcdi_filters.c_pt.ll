; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sfc/mcdi_filters.c_pt.bc'
source_filename = "../drivers/net/ethernet/sfc/mcdi_filters.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.efx_nic = type { [16 x i8], %struct.list_head, ptr, %struct.list_head, ptr, i32, ptr, i32, i8, ptr, [16 x i8], %struct.work_struct, i32, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, [32 x ptr], [32 x %struct.efx_msi_context], [2 x ptr], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.efx_rss_context, %struct.mutex, i32, i32, i32, i8, i8, %struct.efx_buffer, i32, i32, %struct.delayed_work, %struct.list_head, ptr, ptr, %struct.mutex, %struct.work_struct, i8, i8, i8, ptr, i64, i16, %struct.efx_buffer, i64, i64, i8, i32, ptr, %struct.mdio_if_info, i32, i32, [3 x i32], i32, %struct.efx_link_state, i32, i8, %union.efx_multicast_hash, i8, i32, %struct.atomic_t, i32, i64, ptr, ptr, %struct.rw_semaphore, ptr, %struct.mutex, i32, [8 x %struct.efx_async_filter_insertion], %struct.spinlock, ptr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, ptr, i8, ptr, i8, %struct.notifier_block, i32, i32, %struct.delayed_work, %struct.spinlock, i32, %struct.spinlock, %struct.atomic_t, [60 x i8] }
%struct.efx_msi_context = type { ptr, i32, [22 x i8] }
%struct.efx_rss_context = type { %struct.list_head, i32, i32, i8, [40 x i8], [128 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.efx_buffer = type { ptr, i32, i32 }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.efx_link_state = type { i8, i8, i8, i32 }
%union.efx_multicast_hash = type { [2 x %union.efx_oword] }
%union.efx_oword = type { [2 x i64] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.efx_async_filter_insertion = type { ptr, %struct.efx_filter_spec, %struct.work_struct, i16, i32 }
%struct.efx_filter_spec = type { i32, i32, i16, i16, [6 x i8], [6 x i8], i16, i8, [4 x i32], [4 x i32], i16, i16, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%union.efx_dword = type { [1 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.efx_mcdi_filter_table = type { [122 x i32], i32, i8, %struct.rw_semaphore, ptr, [32 x %struct.efx_mcdi_dev_addr], [256 x %struct.efx_mcdi_dev_addr], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, %struct.list_head }
%struct.efx_mcdi_dev_addr = type { [6 x i8] }
%struct.anon.153 = type { i32, i64 }
%struct.efx_nic_type = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8, i8, i8, i32, i32, i64, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.128, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.145, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.128 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.145 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.efx_mcdi_filter_vlan = type { %struct.list_head, i16, [32 x i16], [256 x i16], [15 x i16] }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.efx_arfs_rule = type { %struct.hlist_node, %struct.efx_filter_spec, i16, i16, i32 }

@.str = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"VLAN filters are not supported in this firmware variant\0A\00", [39 x i8] zeroinitializer }, align 32
@efx_mcdi_filter_table_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&table->lock\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/ethernet/sfc/mcdi_filters.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Warning: unable to restore a filter with nonexistent RSS context %u.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"Warning: unable to restore a filter with RSS context %u as it was not created.\0A\00", [48 x i8] zeroinitializer }, align 32
@efx_mcdi_filter_table_restore.__UNIQUE_ID_ddebug546 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 1, i8 107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sfc\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"efx_mcdi_filter_table_restore\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Did not restore %u filters that are now unsupported.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to restore %u filters\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: filter %04x remove failed\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.efx_mcdi_filter_table_down = private unnamed_addr constant [27 x i8] c"efx_mcdi_filter_table_down\00", align 1
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"VLAN %u already added\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VLAN %u not found in filter state\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"failed to restore RSS context %u, rc=%d; RSS filters may fail to be applied\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"Could not allocate an exclusive RSS context; allocated a shared one of different size. Wanted %u, got %u.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [109 x i8], [51 x i8] } { [109 x i8] c"Could not allocate an exclusive RSS context; allocated a shared one but could not apply custom indirection.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Could not allocate an exclusive RSS context; allocated a shared one.\0A\00", [58 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@efx_mcdi_filter_get_unsafe_id.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/net/ethernet/sfc/efx.h\00", [33 x i8] zeroinitializer }, align 32
@efx_mcdi_filter_table_probe_matches.__UNIQUE_ID_ddebug544 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 1, i8 64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"efx_mcdi_filter_table_probe_matches\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: fw flags %#x pri %u not supported in driver\0A\00", [47 x i8] zeroinitializer }, align 32
@efx_mcdi_filter_table_probe_matches.__UNIQUE_ID_ddebug545 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.17, ptr @.str.2, ptr @.str.19, i8 1, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: fw flags %#x pri %u supported as driver flags %#x pri %u\0A\00", [34 x i8] zeroinitializer }, align 32
@efx_mcdi_filter_mcdi_flags_from_spec.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@efx_mcdi_filter_push_prep.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@efx_mcdi_filter_push_prep.__already_done.20 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Multicast\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unicast\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VXLAN \00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NVGRE \00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GENEVE \00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IPv6 \00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IPv4 \00", [26 x i8] zeroinitializer }, align 32
@efx_mcdi_filter_insert_def.__UNIQUE_ID_ddebug539 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 -36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"efx_mcdi_filter_insert_def\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s%s%s mismatch filter insert failed rc=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@efx_mcdi_filter_insert_def.map = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 2, i32 4, i32 8, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6, i32 10, i32 14], [48 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Broadcast filter insert failed rc=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@efx_mcdi_filter_insert_def.map.32 = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 1, i32 3, i32 7, i32 11, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, i32 9, i32 13], [48 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"efx_mcdi_filter_insert failed rc=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@efx_mcdi_filter_mark_one_old.__UNIQUE_ID_ddebug547 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 1, i8 127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"efx_mcdi_filter_mark_one_old\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"marked null spec old %04x:%04x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: failed to remove %d filters\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.efx_mcdi_filter_remove_old = private unnamed_addr constant [27 x i8] c"efx_mcdi_filter_remove_old\00", align 1
@.str.37 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: failed to remove %d non-existent filters\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: failed rc=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.efx_mcdi_filter_rx_push_exclusive_rss_config = private unnamed_addr constant [45 x i8] c"efx_mcdi_filter_rx_push_exclusive_rss_config\00", align 1
@switch.table.efx_mcdi_filter_insert_def = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1327, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1345, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1381, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1409, i32 5 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1416, i32 5 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1451, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1456, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1489, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1580, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1641, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 2210, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 2246, i32 5 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 2253, i32 5 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 2259, i32 5 }
@___asan_gen_.100 = private unnamed_addr constant [34 x i8] c"../drivers/net/ethernet/sfc/efx.h\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 227, i32 6 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1281, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1285, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 857, i32 32 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 857, i32 46 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 858, i32 28 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 863, i32 17 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 866, i32 17 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 869, i32 17 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 871, i32 16 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 873, i32 16 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 880, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 886, i32 47 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 918, i32 5 }
@___asan_gen_.147 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 940, i32 47 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 773, i32 5 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1530, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 671, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 675, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.166 = private constant [43 x i8] c"../drivers/net/ethernet/sfc/mcdi_filters.c\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 2095, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant [40 x i8] c"switch.table.efx_mcdi_filter_insert_def\00", align 1
@llvm.compiler.used = appending global [41 x ptr] [ptr @.str, ptr @efx_mcdi_filter_table_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @efx_mcdi_filter_insert_def.map, ptr @.str.31, ptr @efx_mcdi_filter_insert_def.map.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @switch.table.efx_mcdi_filter_insert_def], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_mcdi_filter_table_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 109, i32 160, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_mcdi_filter_insert_def.map to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_mcdi_filter_insert_def.map.32 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.efx_mcdi_filter_insert_def to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_filter_insert(ptr noundef %efx, ptr noundef %spec, i1 noundef zeroext %replace_equal) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_sem = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 108
  tail call void @down_read(ptr noundef %filter_sem) #13
  %call = tail call fastcc i32 @efx_mcdi_filter_insert_locked(ptr noundef %efx, ptr noundef %spec, i1 noundef zeroext %replace_equal)
  tail call void @up_read(ptr noundef %filter_sem) #13
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efx_mcdi_filter_insert_locked(ptr noundef %efx, ptr noundef %spec, i1 noundef zeroext %replace_equal) unnamed_addr #0 align 64 {
entry:
  %mc_rem_map = alloca [7 x i32], align 4
  %wait = alloca %struct.wait_queue_entry, align 4
  %inbuf = alloca [43 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %mc_rem_map) #13
  %0 = call ptr @memset(ptr %mc_rem_map, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #13
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %wait, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !90) #13
  %and.i422 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i422 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @autoremove_wake_function, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %3, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %3, ptr %4, align 4
  %filter_sem = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 108
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %filter_sem, i32 noundef 4) #13
  %14 = ptrtoint ptr %filter_sem to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %filter_sem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i.not = icmp eq i32 %15, 0
  br i1 %cmp.i.not, label %do.end, label %entry.if.end_crit_edge, !prof !100

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 358, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %filter_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %16 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %filter_state, align 8
  %lock = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %17, i32 0, i32 3
  call void @down_write(ptr noundef %lock) #13
  %18 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load = load i32, ptr %spec, align 4
  %19 = and i32 %bf.load, 98304
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %19)
  %cmp.not = icmp eq i32 %19, 32768
  br i1 %cmp.not, label %if.end26, label %if.end.if.end306_crit_edge

if.end.if.end306_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end306

if.end26:                                         ; preds = %if.end
  %call.i = call fastcc i32 @efx_mcdi_filter_mcdi_flags_from_spec(ptr noundef %spec) #13
  %rx_match_count.i = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %rx_match_count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_match_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp7.not.i = icmp eq i32 %21, 0
  br i1 %cmp7.not.i, label %if.end26.if.end306_crit_edge, label %if.end26.for.body.i_crit_edge

if.end26.for.body.i_crit_edge:                    ; preds = %if.end26
  br label %for.body.i

if.end26.if.end306_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end306

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end26.for.body.i_crit_edge
  %match_pri.08.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end26.for.body.i_crit_edge ]
  %arrayidx.i423 = getelementptr [122 x i32], ptr %17, i32 0, i32 %match_pri.08.i
  %22 = ptrtoint ptr %arrayidx.i423 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i423, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %call.i)
  %cmp1.i = icmp eq i32 %23, %call.i
  br i1 %cmp1.i, label %efx_mcdi_filter_pri.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %match_pri.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %21
  br i1 %exitcond.not.i, label %for.inc.i.if.end306_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.if.end306_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end306

efx_mcdi_filter_pri.exit:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %match_pri.08.i)
  %cmp28 = icmp slt i32 %match_pri.08.i, 0
  br i1 %cmp28, label %efx_mcdi_filter_pri.exit.if.end306_crit_edge, label %if.end30

efx_mcdi_filter_pri.exit.if.end306_crit_edge:     ; preds = %efx_mcdi_filter_pri.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end306

if.end30:                                         ; preds = %efx_mcdi_filter_pri.exit
  %call31 = call i32 @efx_filter_spec_hash(ptr noundef %spec) #13
  %call32 = call zeroext i1 @efx_filter_is_mc_recipient(ptr noundef %spec) #13
  br i1 %call32, label %if.then35, label %if.end30.if.end36_crit_edge

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  %24 = call ptr @memset(ptr %mc_rem_map, i32 0, i32 28)
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end30.if.end36_crit_edge
  %25 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load37 = load i32, ptr %spec, align 4
  %26 = and i32 %bf.load37, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool41.not = icmp eq i32 %26, 0
  br i1 %tobool41.not, label %if.end36.if.end55_crit_edge, label %if.then42

if.end36.if.end55_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

if.then42:                                        ; preds = %if.end36
  %rss_lock = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 65
  call void @mutex_lock_nested(ptr noundef %rss_lock, i32 noundef 0) #13
  %rss_context = getelementptr inbounds %struct.efx_filter_spec, ptr %spec, i32 0, i32 1
  %27 = ptrtoint ptr %rss_context to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rss_context, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool43.not = icmp eq i32 %28, 0
  br i1 %tobool43.not, label %if.else, label %if.then44

if.then44:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #15
  %call46 = call ptr @efx_find_rss_context_entry(ptr noundef %efx, i32 noundef %28) #13
  br label %if.end48

if.else:                                          ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #15
  %rss_context47 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 64
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then44
  %ctx.0 = phi ptr [ %call46, %if.then44 ], [ %rss_context47, %if.else ]
  %tobool49.not = icmp eq ptr %ctx.0, null
  br i1 %tobool49.not, label %if.end48.if.then304_crit_edge, label %if.end51

if.end48.if.then304_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then304

if.end51:                                         ; preds = %if.end48
  %context_id = getelementptr inbounds %struct.efx_rss_context, ptr %ctx.0, i32 0, i32 1
  %29 = ptrtoint ptr %context_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %context_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp52 = icmp eq i32 %30, -1
  br i1 %cmp52, label %if.end51.if.then304_crit_edge, label %if.end51.if.end55_crit_edge

if.end51.if.end55_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

if.end51.if.then304_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then304

if.end55:                                         ; preds = %if.end51.if.end55_crit_edge, %if.end36.if.end55_crit_edge
  %ctx.1 = phi ptr [ %ctx.0, %if.end51.if.end55_crit_edge ], [ null, %if.end36.if.end55_crit_edge ]
  %entry1.i = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %17, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end55
  %ins_index.0478 = phi i32 [ -1, %if.end55 ], [ %ins_index.1, %for.inc.for.body_crit_edge ]
  %depth.0476 = phi i32 [ 1, %if.end55 ], [ %inc, %for.inc.for.body_crit_edge ]
  %add = add i32 %depth.0476, %call31
  %and57 = and i32 %add, 8191
  %31 = ptrtoint ptr %entry1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %entry1.i, align 4
  %arrayidx.i424 = getelementptr %struct.anon.153, ptr %32, i32 %and57
  %33 = ptrtoint ptr %arrayidx.i424 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i424, align 8
  %and.i425 = and i32 %34, -4
  %35 = inttoptr i32 %and.i425 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i425)
  %tobool59.not = icmp eq i32 %and.i425, 0
  br i1 %tobool59.not, label %if.then60, label %if.else64

if.then60:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ins_index.0478)
  %cmp61 = icmp slt i32 %ins_index.0478, 0
  %spec.select = select i1 %cmp61, i32 %and57, i32 %ins_index.0478
  br label %for.inc

if.else64:                                        ; preds = %for.body
  %call65 = call zeroext i1 @efx_filter_spec_equal(ptr noundef %spec, ptr noundef nonnull %35) #13
  br i1 %call65, label %if.then66, label %if.else64.for.inc_crit_edge

if.else64.for.inc_crit_edge:                      ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then66:                                        ; preds = %if.else64
  %36 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %36)
  %bf.load67 = load i32, ptr %spec, align 4
  %bf.lshr68 = lshr i32 %bf.load67, 18
  %bf.clear69 = and i32 %bf.lshr68, 3
  %37 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %37)
  %bf.load70 = load i32, ptr %35, align 4
  %bf.lshr71 = lshr i32 %bf.load70, 18
  %bf.clear72 = and i32 %bf.lshr71, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear69, i32 %bf.clear72)
  %cmp73 = icmp uge i32 %bf.clear69, %bf.clear72
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear69)
  %cmp77.not = icmp eq i32 %bf.clear69, 1
  %or.cond = or i1 %cmp77.not, %cmp73
  br i1 %or.cond, label %if.end79, label %if.then66.out_unlock_crit_edge

if.then66.out_unlock_crit_edge:                   ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.end79:                                         ; preds = %if.then66
  br i1 %call32, label %if.else93, label %if.then81

if.then81:                                        ; preds = %if.end79
  %bf.lshr83419 = xor i32 %bf.load70, %bf.load67
  %38 = and i32 %bf.lshr83419, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp88 = icmp ne i32 %38, 0
  %brmerge = or i1 %cmp88, %replace_equal
  br i1 %brmerge, label %if.then81.if.end122_crit_edge, label %if.then81.out_unlock_crit_edge

if.then81.out_unlock_crit_edge:                   ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.then81.if.end122_crit_edge:                    ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end122

if.else93:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear69, i32 %bf.clear72)
  %cmp100 = icmp ugt i32 %bf.clear69, %bf.clear72
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear69, i32 %bf.clear72)
  %cmp107 = icmp eq i32 %bf.clear69, %bf.clear72
  %39 = and i1 %cmp107, %replace_equal
  %or.cond469 = or i1 %cmp100, %39
  br i1 %or.cond469, label %if.then110, label %if.else93.for.inc_crit_edge

if.else93.for.inc_crit_edge:                      ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then110:                                       ; preds = %if.else93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ins_index.0478)
  %cmp111 = icmp slt i32 %ins_index.0478, 0
  br i1 %cmp111, label %if.then110.for.inc_crit_edge, label %if.else113

if.then110.for.inc_crit_edge:                     ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.else113:                                       ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #15
  %rem.i = and i32 %depth.0476, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %depth.0476, 5
  %add.ptr.i = getelementptr i32, ptr %mc_rem_map, i32 %div2.i
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %41, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.else113, %if.then110.for.inc_crit_edge, %if.else93.for.inc_crit_edge, %if.else64.for.inc_crit_edge, %if.then60
  %ins_index.1 = phi i32 [ %ins_index.0478, %if.else113 ], [ %ins_index.0478, %if.else64.for.inc_crit_edge ], [ %spec.select, %if.then60 ], [ %and57, %if.then110.for.inc_crit_edge ], [ %ins_index.0478, %if.else93.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %depth.0476, 1
  %exitcond.not = icmp eq i32 %inc, 200
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ins_index.1)
  %cmp120 = icmp slt i32 %ins_index.1, 0
  br i1 %cmp120, label %for.end.out_unlock_crit_edge, label %for.end.if.end122_crit_edge

for.end.if.end122_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end122

for.end.out_unlock_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.end122:                                        ; preds = %for.end.if.end122_crit_edge, %if.then81.if.end122_crit_edge
  %ins_index.2452 = phi i32 [ %ins_index.1, %for.end.if.end122_crit_edge ], [ %and57, %if.then81.if.end122_crit_edge ]
  %42 = ptrtoint ptr %entry1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %entry1.i, align 4
  %arrayidx.i427 = getelementptr %struct.anon.153, ptr %43, i32 %ins_index.2452
  %44 = ptrtoint ptr %arrayidx.i427 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i427, align 8
  %and.i428 = and i32 %45, -4
  %46 = inttoptr i32 %and.i428 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i428)
  %tobool124.not = icmp eq i32 %and.i428, 0
  br i1 %tobool124.not, label %if.else152, label %if.then125

if.then125:                                       ; preds = %if.end122
  %47 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %47)
  %bf.load126 = load i32, ptr %spec, align 4
  %48 = and i32 %bf.load126, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %48)
  %cmp129 = icmp eq i32 %48, 262144
  br i1 %cmp129, label %land.lhs.true130, label %if.then125.if.end150_crit_edge

if.then125.if.end150_crit_edge:                   ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end150

land.lhs.true130:                                 ; preds = %if.then125
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %49)
  %bf.load131 = load i32, ptr %46, align 4
  %bf.lshr132 = lshr i32 %bf.load131, 18
  %bf.clear133 = and i32 %bf.lshr132, 3
  %50 = zext i32 %bf.clear133 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values)
  switch i32 %bf.clear133, label %if.then140 [
    i32 0, label %land.lhs.true130.if.end150_crit_edge
    i32 1, label %land.lhs.true130.if.end146_crit_edge
  ]

land.lhs.true130.if.end146_crit_edge:             ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end146

land.lhs.true130.if.end150_crit_edge:             ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end150

if.then140:                                       ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #15
  %bf.set = or i32 %bf.load131, 16384
  %51 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %bf.set, ptr %46, align 4
  br label %if.end146

if.end146:                                        ; preds = %if.then140, %land.lhs.true130.if.end146_crit_edge
  %52 = ptrtoint ptr %entry1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %entry1.i, align 4
  %arrayidx = getelementptr %struct.anon.153, ptr %53, i32 %ins_index.2452
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx, align 8
  %and149 = and i32 %55, -3
  store i32 %and149, ptr %arrayidx, align 8
  br i1 %tobool41.not, label %if.end146.if.end306_crit_edge, label %if.end146.if.then304_crit_edge

if.end146.if.then304_crit_edge:                   ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then304

if.end146.if.end306_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end306

if.end150:                                        ; preds = %land.lhs.true130.if.end150_crit_edge, %if.then125.if.end150_crit_edge
  %and.i431 = and i32 %45, 3
  br label %if.end157

if.else152:                                       ; preds = %if.end122
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %56 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %56, i32 noundef 2592, i32 noundef 68) #16
  %tobool154.not = icmp eq ptr %call7.i, null
  br i1 %tobool154.not, label %if.else152.out_unlock_crit_edge, label %if.end156

if.else152.out_unlock_crit_edge:                  ; preds = %if.else152
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.end156:                                        ; preds = %if.else152
  call void @__sanitizer_cov_trace_pc() #15
  %57 = call ptr @memcpy(ptr %call7.i, ptr %spec, i32 68)
  br label %if.end157

if.end157:                                        ; preds = %if.end156, %if.end150
  %saved_spec.0 = phi ptr [ %46, %if.end150 ], [ %call7.i, %if.end156 ]
  %priv_flags.0 = phi i32 [ %and.i431, %if.end150 ], [ 0, %if.end156 ]
  %58 = xor i1 %tobool124.not, true
  %59 = ptrtoint ptr %saved_spec.0 to i32
  %or.i432 = or i32 %priv_flags.0, %59
  %60 = ptrtoint ptr %entry1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %entry1.i, align 4
  %arrayidx.i434 = getelementptr %struct.anon.153, ptr %61, i32 %ins_index.2452
  %62 = ptrtoint ptr %arrayidx.i434 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or.i432, ptr %arrayidx.i434, align 8
  %63 = load ptr, ptr %entry1.i, align 4
  %handle = getelementptr %struct.anon.153, ptr %63, i32 %ins_index.2452, i32 1
  %call161 = call fastcc i32 @efx_mcdi_filter_push(ptr noundef %efx, ptr noundef %spec, ptr noundef %handle, ptr noundef %ctx.1, i1 noundef zeroext %58)
  %64 = zext i32 %call161 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %call161, label %if.end157.if.else224_crit_edge [
    i32 -22, label %if.end166.thread
    i32 0, label %if.then168
  ]

if.end157.if.else224_crit_edge:                   ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else224

if.end166.thread:                                 ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #15
  %must_realloc_vis = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 69
  %65 = ptrtoint ptr %must_realloc_vis to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %must_realloc_vis, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool164.not = icmp eq i8 %66, 0
  %spec.select421 = select i1 %tobool164.not, i32 -22, i32 -11
  br label %if.else224

if.then168:                                       ; preds = %if.end157
  br i1 %tobool124.not, label %if.then168.if.end229_crit_edge, label %if.then170

if.then168.if.end229_crit_edge:                   ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end229

if.then170:                                       ; preds = %if.then168
  %67 = ptrtoint ptr %saved_spec.0 to i32
  call void @__asan_load4_noabort(i32 %67)
  %bf.load171 = load i32, ptr %saved_spec.0, align 4
  %68 = and i32 %bf.load171, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %68)
  %cmp174 = icmp eq i32 %68, 262144
  br i1 %cmp174, label %if.then175, label %if.then170.if.end185_crit_edge

if.then170.if.end185_crit_edge:                   ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end185

if.then175:                                       ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #15
  %bf.set184 = or i32 %bf.load171, 16384
  %69 = ptrtoint ptr %saved_spec.0 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %bf.set184, ptr %saved_spec.0, align 4
  br label %if.end185

if.end185:                                        ; preds = %if.then175, %if.then170.if.end185_crit_edge
  %70 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %70)
  %bf.load186 = load i32, ptr %spec, align 4
  %bf.clear188 = and i32 %bf.load186, 786432
  %71 = ptrtoint ptr %saved_spec.0 to i32
  call void @__asan_load4_noabort(i32 %71)
  %bf.load189 = load i32, ptr %saved_spec.0, align 4
  %bf.clear192 = and i32 %bf.load189, -1044481
  %bf.set193 = or i32 %bf.clear192, %bf.clear188
  %and197 = and i32 %bf.load189, 16384
  %bf.set202 = or i32 %bf.set193, %and197
  store i32 %bf.set202, ptr %saved_spec.0, align 4
  %bf.load203 = load i32, ptr %spec, align 4
  %bf.clear205 = and i32 %bf.load203, 258048
  %bf.set214 = or i32 %bf.set202, %bf.clear205
  store i32 %bf.set214, ptr %saved_spec.0, align 4
  %rss_context215 = getelementptr inbounds %struct.efx_filter_spec, ptr %spec, i32 0, i32 1
  %72 = ptrtoint ptr %rss_context215 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rss_context215, align 4
  %rss_context216 = getelementptr inbounds %struct.efx_filter_spec, ptr %saved_spec.0, i32 0, i32 1
  %74 = ptrtoint ptr %rss_context216 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %rss_context216, align 4
  %bf.load217 = load i32, ptr %spec, align 4
  %bf.clear218 = and i32 %bf.load217, 4095
  %bf.clear221 = and i32 %bf.set214, -4096
  %bf.set222 = or i32 %bf.clear218, %bf.clear221
  store i32 %bf.set222, ptr %saved_spec.0, align 4
  br label %if.end229

if.else224:                                       ; preds = %if.end166.thread, %if.end157.if.else224_crit_edge
  %rc.0456 = phi i32 [ %spec.select421, %if.end166.thread ], [ %call161, %if.end157.if.else224_crit_edge ]
  br i1 %tobool124.not, label %if.then226, label %if.else224.if.end229_crit_edge

if.else224.if.end229_crit_edge:                   ; preds = %if.else224
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end229

if.then226:                                       ; preds = %if.else224
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %saved_spec.0) #13
  br label %if.end229

if.end229:                                        ; preds = %if.then226, %if.else224.if.end229_crit_edge, %if.end185, %if.then168.if.end229_crit_edge
  %rc.0455 = phi i32 [ 0, %if.end185 ], [ 0, %if.then168.if.end229_crit_edge ], [ %rc.0456, %if.else224.if.end229_crit_edge ], [ %rc.0456, %if.then226 ]
  %saved_spec.1 = phi ptr [ %saved_spec.0, %if.end185 ], [ %saved_spec.0, %if.then168.if.end229_crit_edge ], [ %saved_spec.0, %if.else224.if.end229_crit_edge ], [ null, %if.then226 ]
  %75 = ptrtoint ptr %saved_spec.1 to i32
  %or.i435 = or i32 %priv_flags.0, %75
  %76 = ptrtoint ptr %entry1.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %entry1.i, align 4
  %arrayidx.i437 = getelementptr %struct.anon.153, ptr %77, i32 %ins_index.2452
  %78 = ptrtoint ptr %arrayidx.i437 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %or.i435, ptr %arrayidx.i437, align 8
  br i1 %call32, label %if.then231, label %if.end229.if.end296_crit_edge

if.end229.if.end296_crit_edge:                    ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end296

if.then231:                                       ; preds = %if.end229
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %inbuf) #13
  %add.ptr263 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 1
  %arrayidx280 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 2
  %79 = call ptr @memset(ptr %inbuf, i32 0, i32 172)
  br label %for.body237

for.body237:                                      ; preds = %for.inc293.for.body237_crit_edge, %if.then231
  %depth232.0480 = phi i32 [ 0, %if.then231 ], [ %inc294, %for.inc293.for.body237_crit_edge ]
  %rc.1479 = phi i32 [ %rc.0455, %if.then231 ], [ %rc.3, %for.inc293.for.body237_crit_edge ]
  %div3.i = lshr i32 %depth232.0480, 5
  %arrayidx.i = getelementptr i32, ptr %mc_rem_map, i32 %div3.i
  %80 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %depth232.0480, 31
  %82 = shl nuw i32 1, %and.i
  %83 = and i32 %81, %82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool240.not = icmp eq i32 %83, 0
  br i1 %tobool240.not, label %for.body237.for.inc293_crit_edge, label %if.end242

for.body237.for.inc293_crit_edge:                 ; preds = %for.body237
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc293

if.end242:                                        ; preds = %for.body237
  %add243 = add i32 %depth232.0480, %call31
  %and244 = and i32 %add243, 8191
  %84 = ptrtoint ptr %entry1.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %entry1.i, align 4
  %arrayidx.i439 = getelementptr %struct.anon.153, ptr %85, i32 %and244
  %86 = ptrtoint ptr %arrayidx.i439 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.i439, align 8
  %and.i440 = and i32 %87, -4
  %88 = inttoptr i32 %and.i440 to ptr
  %and.i443 = and i32 %87, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1479)
  %cmp247 = icmp eq i32 %rc.1479, 0
  br i1 %cmp247, label %if.end288, label %if.end242.if.end292_crit_edge

if.end242.if.end292_crit_edge:                    ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end292

if.end288:                                        ; preds = %if.end242
  %89 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 50331648, ptr %inbuf, align 4
  %handle258 = getelementptr %struct.anon.153, ptr %85, i32 %and244, i32 1
  %90 = ptrtoint ptr %handle258 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %handle258, align 8
  %conv = trunc i64 %91 to i32
  %92 = call i32 @llvm.bswap.i32(i32 %conv)
  %93 = ptrtoint ptr %add.ptr263 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %add.ptr263, align 4
  %94 = ptrtoint ptr %handle258 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %handle258, align 8
  %shr272 = lshr i64 %95, 32
  %conv273 = trunc i64 %shr272 to i32
  %96 = call i32 @llvm.bswap.i32(i32 %conv273)
  %97 = ptrtoint ptr %arrayidx280 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %arrayidx280, align 4
  %call287 = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 138, ptr noundef nonnull %inbuf, i32 noundef 172, ptr noundef null, i32 noundef 0, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call287)
  %cmp289 = icmp eq i32 %call287, 0
  br i1 %cmp289, label %if.then291, label %if.end288.if.end292_crit_edge

if.end288.if.end292_crit_edge:                    ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end292

if.then291:                                       ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef %88) #13
  br label %if.end292

if.end292:                                        ; preds = %if.then291, %if.end288.if.end292_crit_edge, %if.end242.if.end292_crit_edge
  %rc.2459 = phi i32 [ 0, %if.then291 ], [ %call287, %if.end288.if.end292_crit_edge ], [ %rc.1479, %if.end242.if.end292_crit_edge ]
  %saved_spec.2 = phi ptr [ null, %if.then291 ], [ %88, %if.end288.if.end292_crit_edge ], [ %88, %if.end242.if.end292_crit_edge ]
  %priv_flags.1 = phi i32 [ 0, %if.then291 ], [ %and.i443, %if.end288.if.end292_crit_edge ], [ %and.i443, %if.end242.if.end292_crit_edge ]
  %98 = ptrtoint ptr %saved_spec.2 to i32
  %or.i444 = or i32 %priv_flags.1, %98
  %99 = ptrtoint ptr %entry1.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %entry1.i, align 4
  %arrayidx.i446 = getelementptr %struct.anon.153, ptr %100, i32 %and244
  %101 = ptrtoint ptr %arrayidx.i446 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %or.i444, ptr %arrayidx.i446, align 8
  br label %for.inc293

for.inc293:                                       ; preds = %if.end292, %for.body237.for.inc293_crit_edge
  %rc.3 = phi i32 [ %rc.2459, %if.end292 ], [ %rc.1479, %for.body237.for.inc293_crit_edge ]
  %inc294 = add nuw nsw i32 %depth232.0480, 1
  %exitcond487.not = icmp eq i32 %inc294, 200
  br i1 %exitcond487.not, label %for.end295, label %for.inc293.for.body237_crit_edge

for.inc293.for.body237_crit_edge:                 ; preds = %for.inc293
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body237

for.end295:                                       ; preds = %for.inc293
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %inbuf) #13
  br label %if.end296

if.end296:                                        ; preds = %for.end295, %if.end229.if.end296_crit_edge
  %rc.4 = phi i32 [ %rc.3, %for.end295 ], [ %rc.0455, %if.end229.if.end296_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.4)
  %cmp297 = icmp eq i32 %rc.4, 0
  br i1 %cmp297, label %if.then299, label %if.end296.out_unlock_crit_edge

if.end296.out_unlock_crit_edge:                   ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.then299:                                       ; preds = %if.end296
  %mul1.i = shl i32 %match_pri.08.i, 14
  %conv.i447 = and i32 %ins_index.2452, 65535
  %add.i = add i32 %conv.i447, %mul1.i
  br i1 %tobool41.not, label %if.then299.if.end306_crit_edge, label %if.then299.if.then304_crit_edge

if.then299.if.then304_crit_edge:                  ; preds = %if.then299
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then304

if.then299.if.end306_crit_edge:                   ; preds = %if.then299
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end306

out_unlock:                                       ; preds = %if.end296.out_unlock_crit_edge, %if.else152.out_unlock_crit_edge, %for.end.out_unlock_crit_edge, %if.then81.out_unlock_crit_edge, %if.then66.out_unlock_crit_edge
  %rc.5 = phi i32 [ %rc.4, %if.end296.out_unlock_crit_edge ], [ -17, %if.then81.out_unlock_crit_edge ], [ -16, %for.end.out_unlock_crit_edge ], [ -12, %if.else152.out_unlock_crit_edge ], [ -1, %if.then66.out_unlock_crit_edge ]
  br i1 %tobool41.not, label %out_unlock.if.end306_crit_edge, label %out_unlock.if.then304_crit_edge

out_unlock.if.then304_crit_edge:                  ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then304

out_unlock.if.end306_crit_edge:                   ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end306

if.then304:                                       ; preds = %out_unlock.if.then304_crit_edge, %if.then299.if.then304_crit_edge, %if.end146.if.then304_crit_edge, %if.end51.if.then304_crit_edge, %if.end48.if.then304_crit_edge
  %rc.5468 = phi i32 [ %rc.5, %out_unlock.if.then304_crit_edge ], [ %ins_index.2452, %if.end146.if.then304_crit_edge ], [ %add.i, %if.then299.if.then304_crit_edge ], [ -95, %if.end51.if.then304_crit_edge ], [ -2, %if.end48.if.then304_crit_edge ]
  %rss_lock305 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 65
  call void @mutex_unlock(ptr noundef %rss_lock305) #13
  br label %if.end306

if.end306:                                        ; preds = %if.then304, %out_unlock.if.end306_crit_edge, %if.then299.if.end306_crit_edge, %if.end146.if.end306_crit_edge, %efx_mcdi_filter_pri.exit.if.end306_crit_edge, %for.inc.i.if.end306_crit_edge, %if.end26.if.end306_crit_edge, %if.end.if.end306_crit_edge
  %rc.5462 = phi i32 [ %rc.5468, %if.then304 ], [ %rc.5, %out_unlock.if.end306_crit_edge ], [ %ins_index.2452, %if.end146.if.end306_crit_edge ], [ %add.i, %if.then299.if.end306_crit_edge ], [ -22, %if.end.if.end306_crit_edge ], [ %match_pri.08.i, %efx_mcdi_filter_pri.exit.if.end306_crit_edge ], [ -93, %if.end26.if.end306_crit_edge ], [ -93, %for.inc.i.if.end306_crit_edge ]
  call void @up_write(ptr noundef %lock) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %mc_rem_map) #13
  ret i32 %rc.5462
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_filter_remove_safe(ptr noundef %efx, i32 noundef %priority, i32 noundef %filter_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_sem = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 108
  tail call void @down_read(ptr noundef %filter_sem) #13
  %filter_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 8
  %lock = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 3
  tail call void @down_write(ptr noundef %lock) #13
  %shl = shl nuw i32 1, %priority
  %call = tail call fastcc i32 @efx_mcdi_filter_remove_internal(ptr noundef %efx, i32 noundef %shl, i32 noundef %filter_id, i1 noundef zeroext false)
  tail call void @up_write(ptr noundef %lock) #13
  tail call void @up_read(ptr noundef %filter_sem) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efx_mcdi_filter_remove_internal(ptr noundef %efx, i32 noundef %priority_mask, i32 noundef %filter_id, i1 noundef zeroext %by_index) unnamed_addr #0 align 64 {
entry:
  %inbuf = alloca [3 x %union.efx_dword], align 4
  %wait = alloca %struct.wait_queue_entry, align 4
  %new_spec = alloca %struct.efx_filter_spec, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %filter_id)
  %cmp.i = icmp eq i32 %filter_id, 65535
  br i1 %cmp.i, label %land.rhs.i, label %entry.efx_mcdi_filter_get_unsafe_id.exit_crit_edge

entry.efx_mcdi_filter_get_unsafe_id.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_filter_get_unsafe_id.exit

land.rhs.i:                                       ; preds = %entry
  %.b38.i = load i1, ptr @efx_mcdi_filter_get_unsafe_id.__already_done, align 1
  br i1 %.b38.i, label %land.rhs.i.efx_mcdi_filter_get_unsafe_id.exit_crit_edge, label %if.then.i, !prof !102

land.rhs.i.efx_mcdi_filter_get_unsafe_id.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_filter_get_unsafe_id.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @efx_mcdi_filter_get_unsafe_id.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 43, i32 noundef 9, ptr noundef null) #13
  br label %efx_mcdi_filter_get_unsafe_id.exit

efx_mcdi_filter_get_unsafe_id.exit:               ; preds = %if.then.i, %land.rhs.i.efx_mcdi_filter_get_unsafe_id.exit_crit_edge, %entry.efx_mcdi_filter_get_unsafe_id.exit_crit_edge
  %and.i = and i32 %filter_id, 8191
  %filter_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %inbuf) #13
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #13
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %wait, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !90) #13
  %and.i142 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i142 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @autoremove_wake_function, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %4, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %4, ptr %5, align 4
  %entry1.i = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %entry1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %entry1.i, align 4
  %arrayidx.i = getelementptr %struct.anon.153, ptr %16, i32 %and.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 8
  %and.i143 = and i32 %18, -4
  %19 = inttoptr i32 %and.i143 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i143)
  %tobool.not = icmp eq i32 %and.i143, 0
  br i1 %tobool.not, label %efx_mcdi_filter_get_unsafe_id.exit.cleanup_crit_edge, label %lor.lhs.false

efx_mcdi_filter_get_unsafe_id.exit.cleanup_crit_edge: ; preds = %efx_mcdi_filter_get_unsafe_id.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %efx_mcdi_filter_get_unsafe_id.exit
  br i1 %by_index, label %lor.lhs.false.if.end_crit_edge, label %land.lhs.true

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call.i = call fastcc i32 @efx_mcdi_filter_mcdi_flags_from_spec(ptr noundef nonnull %19) #13
  %rx_match_count.i = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %rx_match_count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_match_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp7.not.i = icmp eq i32 %21, 0
  br i1 %cmp7.not.i, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.body.i_crit_edge

land.lhs.true.for.body.i_crit_edge:               ; preds = %land.lhs.true
  br label %for.body.i

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %land.lhs.true.for.body.i_crit_edge
  %match_pri.08.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %land.lhs.true.for.body.i_crit_edge ]
  %arrayidx.i144 = getelementptr [122 x i32], ptr %1, i32 0, i32 %match_pri.08.i
  %22 = ptrtoint ptr %arrayidx.i144 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i144, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %call.i)
  %cmp1.i = icmp eq i32 %23, %call.i
  br i1 %cmp1.i, label %efx_mcdi_filter_pri.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %match_pri.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %21
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

efx_mcdi_filter_pri.exit:                         ; preds = %for.body.i
  %div1.i = lshr i32 %filter_id, 14
  call void @__sanitizer_cov_trace_cmp4(i32 %match_pri.08.i, i32 %div1.i)
  %cmp.not = icmp eq i32 %match_pri.08.i, %div1.i
  br i1 %cmp.not, label %efx_mcdi_filter_pri.exit.if.end_crit_edge, label %efx_mcdi_filter_pri.exit.cleanup_crit_edge

efx_mcdi_filter_pri.exit.cleanup_crit_edge:       ; preds = %efx_mcdi_filter_pri.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

efx_mcdi_filter_pri.exit.if.end_crit_edge:        ; preds = %efx_mcdi_filter_pri.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %efx_mcdi_filter_pri.exit.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %bf.load = load i32, ptr %19, align 4
  %25 = and i32 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool9.not = icmp ne i32 %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %priority_mask)
  %cmp11 = icmp eq i32 %priority_mask, 2
  %or.cond = and i1 %cmp11, %tobool9.not
  br i1 %or.cond, label %if.then12, label %if.end22

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %bf.set = and i32 %bf.load, -16385
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %bf.set, ptr %19, align 4
  %27 = ptrtoint ptr %entry1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %entry1.i, align 4
  %arrayidx = getelementptr %struct.anon.153, ptr %28, i32 %and.i
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 8
  %and21 = and i32 %30, -3
  store i32 %and21, ptr %arrayidx, align 8
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %bf.lshr24 = lshr i32 %bf.load, 18
  %bf.clear25 = and i32 %bf.lshr24, 3
  %shl = shl nuw nsw i32 1, %bf.clear25
  %and26 = and i32 %shl, %priority_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end22.cleanup_crit_edge, label %if.end29

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool34.not = icmp eq i32 %25, 0
  br i1 %tobool34.not, label %do.body, label %if.then35

if.then35:                                        ; preds = %if.end29
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %new_spec) #13
  %31 = call ptr @memcpy(ptr %new_spec, ptr %19, i32 68)
  %32 = ptrtoint ptr %new_spec to i32
  call void @__asan_load4_noabort(i32 %32)
  %bf.load36 = load i32, ptr %new_spec, align 4
  %rss_context = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 64
  %context_id.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 64, i32 1
  %33 = ptrtoint ptr %context_id.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %context_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp.i145.not = icmp eq i32 %34, -1
  %bf.shl42 = select i1 %cmp.i145.not, i32 32768, i32 36864
  %bf.set38 = and i32 %bf.load36, -1048576
  %bf.clear43 = or i32 %bf.set38, 262144
  %bf.set44 = or i32 %bf.shl42, %bf.clear43
  %35 = ptrtoint ptr %new_spec to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %bf.set44, ptr %new_spec, align 4
  %rss_context48 = getelementptr inbounds %struct.efx_filter_spec, ptr %new_spec, i32 0, i32 1
  %36 = ptrtoint ptr %rss_context48 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %rss_context48, align 4
  %37 = ptrtoint ptr %entry1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %entry1.i, align 4
  %handle = getelementptr %struct.anon.153, ptr %38, i32 %and.i, i32 1
  %call52 = call fastcc i32 @efx_mcdi_filter_push(ptr noundef %efx, ptr noundef nonnull %new_spec, ptr noundef %handle, ptr noundef %rss_context, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp eq i32 %call52, 0
  br i1 %cmp53, label %if.then54, label %if.then35.if.end55_crit_edge

if.then35.if.end55_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

if.then54:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  %39 = call ptr @memcpy(ptr %19, ptr %new_spec, i32 68)
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.then35.if.end55_crit_edge
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %new_spec) #13
  br label %cleanup

do.body:                                          ; preds = %if.end29
  %40 = and i32 %bf.load, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i, label %do.body.if.end.i_crit_edge, label %land.lhs.true.i

do.body.if.end.i_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %do.body
  %loc_mac.i = getelementptr inbounds %struct.efx_filter_spec, ptr %19, i32 0, i32 4
  %41 = ptrtoint ptr %loc_mac.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %loc_mac.i, align 4
  %43 = and i32 %42, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.i.not.i = icmp eq i32 %43, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i._crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i._crit_edge:                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %52

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %do.body.if.end.i_crit_edge
  %44 = and i32 %bf.load, 69206016
  call void @__sanitizer_cov_trace_const_cmp4(i32 69206016, i32 %44)
  %cmp.i146 = icmp eq i32 %44, 69206016
  br i1 %cmp.i146, label %if.then4.i, label %if.end.i.efx_mcdi_filter_is_exclusive.exit_crit_edge

if.end.i.efx_mcdi_filter_is_exclusive.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_filter_is_exclusive.exit

if.then4.i:                                       ; preds = %if.end.i
  %ether_type.i = getelementptr inbounds %struct.efx_filter_spec, ptr %19, i32 0, i32 6
  %45 = ptrtoint ptr %ether_type.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %ether_type.i, align 4
  %47 = zext i16 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.40)
  switch i16 %46, label %if.then4.i.efx_mcdi_filter_is_exclusive.exit_crit_edge [
    i16 2048, label %land.lhs.true7.i
    i16 -31011, label %land.lhs.true15.i
  ]

if.then4.i.efx_mcdi_filter_is_exclusive.exit_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_filter_is_exclusive.exit

land.lhs.true7.i:                                 ; preds = %if.then4.i
  %loc_host.i = getelementptr inbounds %struct.efx_filter_spec, ptr %19, i32 0, i32 8
  %48 = ptrtoint ptr %loc_host.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %loc_host.i, align 4
  %and.i.i = and i32 %49, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, -536870912
  br i1 %cmp.i.i, label %land.lhs.true7.i.efx_mcdi_filter_is_exclusive.exit_crit_edge, label %land.lhs.true7.i._crit_edge

land.lhs.true7.i._crit_edge:                      ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %52

land.lhs.true7.i.efx_mcdi_filter_is_exclusive.exit_crit_edge: ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_filter_is_exclusive.exit

land.lhs.true15.i:                                ; preds = %if.then4.i
  %loc_host16.i = getelementptr inbounds %struct.efx_filter_spec, ptr %19, i32 0, i32 8
  %50 = ptrtoint ptr %loc_host16.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %loc_host16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %51)
  %cmp20.not.i = icmp eq i8 %51, -1
  br i1 %cmp20.not.i, label %land.lhs.true15.i.efx_mcdi_filter_is_exclusive.exit_crit_edge, label %land.lhs.true15.i._crit_edge

land.lhs.true15.i._crit_edge:                     ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %52

land.lhs.true15.i.efx_mcdi_filter_is_exclusive.exit_crit_edge: ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_filter_is_exclusive.exit

52:                                               ; preds = %land.lhs.true15.i._crit_edge, %land.lhs.true7.i._crit_edge, %land.lhs.true.i._crit_edge
  br label %efx_mcdi_filter_is_exclusive.exit

efx_mcdi_filter_is_exclusive.exit:                ; preds = %52, %land.lhs.true15.i.efx_mcdi_filter_is_exclusive.exit_crit_edge, %land.lhs.true7.i.efx_mcdi_filter_is_exclusive.exit_crit_edge, %if.then4.i.efx_mcdi_filter_is_exclusive.exit_crit_edge, %if.end.i.efx_mcdi_filter_is_exclusive.exit_crit_edge
  %53 = phi i32 [ 16777216, %52 ], [ 50331648, %if.end.i.efx_mcdi_filter_is_exclusive.exit_crit_edge ], [ 50331648, %if.then4.i.efx_mcdi_filter_is_exclusive.exit_crit_edge ], [ 50331648, %land.lhs.true7.i.efx_mcdi_filter_is_exclusive.exit_crit_edge ], [ 50331648, %land.lhs.true15.i.efx_mcdi_filter_is_exclusive.exit_crit_edge ]
  %54 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %inbuf, align 4
  %55 = ptrtoint ptr %entry1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %entry1.i, align 4
  %handle65 = getelementptr %struct.anon.153, ptr %56, i32 %and.i, i32 1
  %57 = ptrtoint ptr %handle65 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %handle65, align 8
  %conv66 = trunc i64 %58 to i32
  %59 = call i32 @llvm.bswap.i32(i32 %conv66)
  %add.ptr72 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 1
  %60 = ptrtoint ptr %add.ptr72 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %add.ptr72, align 4
  %61 = ptrtoint ptr %handle65 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %handle65, align 8
  %shr81 = lshr i64 %62, 32
  %conv82 = trunc i64 %shr81 to i32
  %63 = call i32 @llvm.bswap.i32(i32 %conv82)
  %arrayidx89 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 2
  %64 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %arrayidx89, align 4
  %call96 = call i32 @efx_mcdi_rpc_quiet(ptr noundef %efx, i32 noundef 138, ptr noundef nonnull %inbuf, i32 noundef 12, ptr noundef null, i32 noundef 0, ptr noundef null) #13
  %65 = zext i32 %call96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %call96, label %if.else103 [
    i32 0, label %efx_mcdi_filter_is_exclusive.exit.if.then102_crit_edge
    i32 -2, label %efx_mcdi_filter_is_exclusive.exit.if.then102_crit_edge160
  ]

efx_mcdi_filter_is_exclusive.exit.if.then102_crit_edge160: ; preds = %efx_mcdi_filter_is_exclusive.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then102

efx_mcdi_filter_is_exclusive.exit.if.then102_crit_edge: ; preds = %efx_mcdi_filter_is_exclusive.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then102

if.then102:                                       ; preds = %efx_mcdi_filter_is_exclusive.exit.if.then102_crit_edge, %efx_mcdi_filter_is_exclusive.exit.if.then102_crit_edge160
  call void @kfree(ptr noundef nonnull %19) #13
  %66 = ptrtoint ptr %entry1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %entry1.i, align 4
  %arrayidx.i149 = getelementptr %struct.anon.153, ptr %67, i32 %and.i
  %68 = ptrtoint ptr %arrayidx.i149 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %arrayidx.i149, align 8
  br label %cleanup

if.else103:                                       ; preds = %efx_mcdi_filter_is_exclusive.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @efx_mcdi_display_error(ptr noundef %efx, i32 noundef 138, i32 noundef 172, ptr noundef null, i32 noundef 0, i32 noundef %call96) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else103, %if.then102, %if.end55, %if.end22.cleanup_crit_edge, %if.then12, %efx_mcdi_filter_pri.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %efx_mcdi_filter_get_unsafe_id.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then12 ], [ -2, %efx_mcdi_filter_pri.exit.cleanup_crit_edge ], [ -2, %efx_mcdi_filter_get_unsafe_id.exit.cleanup_crit_edge ], [ -2, %if.end22.cleanup_crit_edge ], [ %call52, %if.end55 ], [ %call96, %if.then102 ], [ %call96, %if.else103 ], [ -2, %land.lhs.true.cleanup_crit_edge ], [ -2, %for.inc.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %inbuf) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_filter_get_safe(ptr noundef %efx, i32 noundef %priority, i32 noundef %filter_id, ptr nocapture noundef writeonly %spec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %filter_id)
  %cmp.i = icmp eq i32 %filter_id, 65535
  br i1 %cmp.i, label %land.rhs.i, label %entry.efx_mcdi_filter_get_unsafe_id.exit_crit_edge

entry.efx_mcdi_filter_get_unsafe_id.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_filter_get_unsafe_id.exit

land.rhs.i:                                       ; preds = %entry
  %.b38.i = load i1, ptr @efx_mcdi_filter_get_unsafe_id.__already_done, align 1
  br i1 %.b38.i, label %land.rhs.i.efx_mcdi_filter_get_unsafe_id.exit_crit_edge, label %if.then.i, !prof !102

land.rhs.i.efx_mcdi_filter_get_unsafe_id.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_filter_get_unsafe_id.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @efx_mcdi_filter_get_unsafe_id.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 43, i32 noundef 9, ptr noundef null) #13
  br label %efx_mcdi_filter_get_unsafe_id.exit

efx_mcdi_filter_get_unsafe_id.exit:               ; preds = %if.then.i, %land.rhs.i.efx_mcdi_filter_get_unsafe_id.exit_crit_edge, %entry.efx_mcdi_filter_get_unsafe_id.exit_crit_edge
  %and.i = and i32 %filter_id, 8191
  %filter_sem = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 108
  tail call void @down_read(ptr noundef %filter_sem) #13
  %filter_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 8
  %lock = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 3
  tail call void @down_read(ptr noundef %lock) #13
  %entry1.i = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %entry1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entry1.i, align 4
  %arrayidx.i = getelementptr %struct.anon.153, ptr %3, i32 %and.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 8
  %and.i17 = and i32 %5, -4
  %6 = inttoptr i32 %and.i17 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17)
  %tobool.not = icmp eq i32 %and.i17, 0
  br i1 %tobool.not, label %efx_mcdi_filter_get_unsafe_id.exit.if.end_crit_edge, label %land.lhs.true

efx_mcdi_filter_get_unsafe_id.exit.if.end_crit_edge: ; preds = %efx_mcdi_filter_get_unsafe_id.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %efx_mcdi_filter_get_unsafe_id.exit
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load = load i32, ptr %6, align 4
  %bf.lshr = lshr i32 %bf.load, 18
  %bf.clear = and i32 %bf.lshr, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear, i32 %priority)
  %cmp = icmp eq i32 %bf.clear, %priority
  br i1 %cmp, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %call.i = tail call fastcc i32 @efx_mcdi_filter_mcdi_flags_from_spec(ptr noundef nonnull %6) #13
  %rx_match_count.i = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %rx_match_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_match_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp7.not.i = icmp eq i32 %9, 0
  br i1 %cmp7.not.i, label %land.lhs.true2.if.end_crit_edge, label %land.lhs.true2.for.body.i_crit_edge

land.lhs.true2.for.body.i_crit_edge:              ; preds = %land.lhs.true2
  br label %for.body.i

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %land.lhs.true2.for.body.i_crit_edge
  %match_pri.08.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %land.lhs.true2.for.body.i_crit_edge ]
  %arrayidx.i18 = getelementptr [122 x i32], ptr %1, i32 0, i32 %match_pri.08.i
  %10 = ptrtoint ptr %arrayidx.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %call.i)
  %cmp1.i = icmp eq i32 %11, %call.i
  br i1 %cmp1.i, label %efx_mcdi_filter_pri.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %match_pri.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

efx_mcdi_filter_pri.exit:                         ; preds = %for.body.i
  %div1.i = lshr i32 %filter_id, 14
  call void @__sanitizer_cov_trace_cmp4(i32 %match_pri.08.i, i32 %div1.i)
  %cmp5 = icmp eq i32 %match_pri.08.i, %div1.i
  br i1 %cmp5, label %if.then, label %efx_mcdi_filter_pri.exit.if.end_crit_edge

efx_mcdi_filter_pri.exit.if.end_crit_edge:        ; preds = %efx_mcdi_filter_pri.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %efx_mcdi_filter_pri.exit
  call void @__sanitizer_cov_trace_pc() #15
  %12 = call ptr @memcpy(ptr %spec, ptr %6, i32 68)
  br label %if.end

if.end:                                           ; preds = %if.then, %efx_mcdi_filter_pri.exit.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %efx_mcdi_filter_get_unsafe_id.exit.if.end_crit_edge
  %rc.0 = phi i32 [ 0, %if.then ], [ -2, %efx_mcdi_filter_pri.exit.if.end_crit_edge ], [ -2, %land.lhs.true.if.end_crit_edge ], [ -2, %efx_mcdi_filter_get_unsafe_id.exit.if.end_crit_edge ], [ -2, %land.lhs.true2.if.end_crit_edge ], [ -2, %for.inc.i.if.end_crit_edge ]
  tail call void @up_read(ptr noundef %lock) #13
  tail call void @up_read(ptr noundef %filter_sem) #13
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_filter_clear_rx(ptr noundef %efx, i32 noundef %priority) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %priority, 1
  %notmask = shl nsw i32 -1, %add
  %sub = and i32 %notmask, -3
  %and = xor i32 %sub, -3
  %filter_sem = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 108
  tail call void @down_read(ptr noundef %filter_sem) #13
  %filter_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 8
  %lock = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 3
  tail call void @down_write(ptr noundef %lock) #13
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.012 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %call = tail call fastcc i32 @efx_mcdi_filter_remove_internal(ptr noundef %efx, i32 noundef %and, i32 noundef %i.012, i1 noundef zeroext true)
  %2 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %call, label %for.body.for.end_crit_edge [
    i32 0, label %for.body.if.end_crit_edge
    i32 -2, label %for.body.if.end_crit_edge13
  ]

for.body.if.end_crit_edge13:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %for.body.if.end_crit_edge13
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, 8192
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge
  %rc.1 = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %call, %for.body.for.end_crit_edge ]
  tail call void @up_write(ptr noundef %lock) #13
  tail call void @up_read(ptr noundef %filter_sem) #13
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_filter_count_rx_used(ptr noundef %efx, i32 noundef %priority) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_sem = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 108
  tail call void @down_read(ptr noundef %filter_sem) #13
  %filter_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 8
  %lock = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 3
  tail call void @down_read(ptr noundef %lock) #13
  %entry1 = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entry1, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %count.016 = phi i32 [ 0, %entry ], [ %count.1, %for.inc.for.body_crit_edge ]
  %filter_idx.015 = phi i32 [ 0, %entry ], [ %inc3, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.anon.153, ptr %3, i32 %filter_idx.015
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %and.i = and i32 %5, -4
  %6 = inttoptr i32 %and.i to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load = load i32, ptr %6, align 4
  %bf.lshr = lshr i32 %bf.load, 18
  %bf.clear = and i32 %bf.lshr, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear, i32 %priority)
  %cmp2 = icmp eq i32 %bf.clear, %priority
  %inc = zext i1 %cmp2 to i32
  %spec.select = add i32 %count.016, %inc
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body.for.inc_crit_edge
  %count.1 = phi i32 [ %count.016, %for.body.for.inc_crit_edge ], [ %spec.select, %land.lhs.true ]
  %inc3 = add nuw nsw i32 %filter_idx.015, 1
  %exitcond.not = icmp eq i32 %inc3, 8192
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @up_read(ptr noundef %lock) #13
  tail call void @up_read(ptr noundef %filter_sem) #13
  ret i32 %count.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @efx_mcdi_filter_get_rx_id_limit(ptr nocapture noundef readonly %efx) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 8
  %rx_match_count = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rx_match_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_match_count, align 4
  %mul1 = shl i32 %3, 14
  ret i32 %mul1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_filter_get_rx_ids(ptr noundef %efx, i32 noundef %priority, ptr nocapture noundef writeonly %buf, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_sem = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 108
  tail call void @down_read(ptr noundef %filter_sem) #13
  %filter_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 8
  %lock = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 3
  tail call void @down_read(ptr noundef %lock) #13
  %entry1.i = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 4
  %rx_match_count.i = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %count.025 = phi i32 [ 0, %entry ], [ %count.1, %for.inc.for.body_crit_edge ]
  %filter_idx.023 = phi i32 [ 0, %entry ], [ %inc7, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %entry1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entry1.i, align 4
  %arrayidx.i = getelementptr %struct.anon.153, ptr %3, i32 %filter_idx.023
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 8
  %and.i = and i32 %5, -4
  %6 = inttoptr i32 %and.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load = load i32, ptr %6, align 4
  %bf.lshr = lshr i32 %bf.load, 18
  %bf.clear = and i32 %bf.lshr, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear, i32 %priority)
  %cmp1 = icmp eq i32 %bf.clear, %priority
  br i1 %cmp1, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_cmp4(i32 %count.025, i32 %size)
  %cmp2 = icmp eq i32 %count.025, %size
  br i1 %cmp2, label %if.then.for.end_crit_edge, label %if.end

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end:                                           ; preds = %if.then
  %call.i = tail call fastcc i32 @efx_mcdi_filter_mcdi_flags_from_spec(ptr noundef nonnull %6) #13
  %8 = ptrtoint ptr %rx_match_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_match_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp7.not.i = icmp eq i32 %9, 0
  br i1 %cmp7.not.i, label %if.end.efx_mcdi_filter_pri.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.efx_mcdi_filter_pri.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_filter_pri.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %match_pri.08.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i22 = getelementptr [122 x i32], ptr %1, i32 0, i32 %match_pri.08.i
  %10 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %call.i)
  %cmp1.i = icmp eq i32 %11, %call.i
  br i1 %cmp1.i, label %for.body.i.efx_mcdi_filter_pri.exit_crit_edge, label %for.inc.i

for.body.i.efx_mcdi_filter_pri.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_filter_pri.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %match_pri.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not.i, label %for.inc.i.efx_mcdi_filter_pri.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.efx_mcdi_filter_pri.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_filter_pri.exit

efx_mcdi_filter_pri.exit:                         ; preds = %for.inc.i.efx_mcdi_filter_pri.exit_crit_edge, %for.body.i.efx_mcdi_filter_pri.exit_crit_edge, %if.end.efx_mcdi_filter_pri.exit_crit_edge
  %retval.0.i = phi i32 [ -93, %if.end.efx_mcdi_filter_pri.exit_crit_edge ], [ %match_pri.08.i, %for.body.i.efx_mcdi_filter_pri.exit_crit_edge ], [ -93, %for.inc.i.efx_mcdi_filter_pri.exit_crit_edge ]
  %mul1.i = shl i32 %retval.0.i, 14
  %add.i = add i32 %mul1.i, %filter_idx.023
  %inc = add i32 %count.025, 1
  %arrayidx = getelementptr i32, ptr %buf, i32 %count.025
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add.i, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %efx_mcdi_filter_pri.exit, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %count.1 = phi i32 [ %inc, %efx_mcdi_filter_pri.exit ], [ %count.025, %land.lhs.true.for.inc_crit_edge ], [ %count.025, %for.body.for.inc_crit_edge ]
  %inc7 = add nuw nsw i32 %filter_idx.023, 1
  %exitcond.not = icmp eq i32 %inc7, 8192
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then.for.end_crit_edge
  %count.2 = phi i32 [ %count.1, %for.inc.for.end_crit_edge ], [ -90, %if.then.for.end_crit_edge ]
  tail call void @up_read(ptr noundef %lock) #13
  tail call void @up_read(ptr noundef %filter_sem) #13
  ret i32 %count.2
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @efx_mcdi_filter_match_supported(ptr nocapture noundef readonly %table, i1 noundef zeroext %encap, i32 noundef %match_flags) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_match_count = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %table, i32 0, i32 1
  %0 = ptrtoint ptr %rx_match_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_match_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6.not = icmp eq i32 %1, 0
  br i1 %cmp6.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %table, align 4
  %call10 = tail call fastcc i32 @efx_mcdi_filter_match_flags_from_mcdi(i1 noundef zeroext %encap, i32 noundef %3)
  call void @__sanitizer_cov_trace_cmp4(i32 %call10, i32 %match_flags)
  %cmp111 = icmp eq i32 %call10, %match_flags
  br i1 %cmp111, label %for.body.preheader.cleanup_crit_edge, label %for.body.preheader.for.cond_crit_edge

for.body.preheader.for.cond_crit_edge:            ; preds = %for.body.preheader
  br label %for.cond

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.body.preheader.for.cond_crit_edge
  %match_pri.0712 = phi i32 [ %inc, %for.body.for.cond_crit_edge ], [ 0, %for.body.preheader.for.cond_crit_edge ]
  %inc = add nuw i32 %match_pri.0712, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %1)
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.cond.cleanup.loopexit_crit_edge, label %for.body

for.cond.cleanup.loopexit_crit_edge:              ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.loopexit

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr [122 x i32], ptr %table, i32 0, i32 %inc
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %call = tail call fastcc i32 @efx_mcdi_filter_match_flags_from_mcdi(i1 noundef zeroext %encap, i32 noundef %5)
  %cmp1 = icmp eq i32 %call, %match_flags
  br i1 %cmp1, label %for.body.cleanup.loopexit_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.body.cleanup.loopexit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.loopexit

cleanup.loopexit:                                 ; preds = %for.body.cleanup.loopexit_crit_edge, %for.cond.cleanup.loopexit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %1)
  %cmp.le = icmp ult i32 %inc, %1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp.lcssa = phi i1 [ false, %entry.cleanup_crit_edge ], [ true, %for.body.preheader.cleanup_crit_edge ], [ %cmp.le, %cleanup.loopexit ]
  ret i1 %cmp.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @efx_mcdi_filter_match_flags_from_mcdi(i1 noundef zeroext %encap, i32 noundef %mcdi_flags) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %encap, label %if.then, label %do.body104

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %and1 = and i32 %mcdi_flags, -577
  %and2 = and i32 %mcdi_flags, -705
  call void @__sanitizer_cov_trace_cmp4(i32 %and2, i32 %and1)
  %cmp.not = icmp eq i32 %and2, %and1
  %spec.select = select i1 %cmp.not, i32 2048, i32 2176
  %and7 = and i32 %mcdi_flags, -961
  call void @__sanitizer_cov_trace_cmp4(i32 %and7, i32 %and2)
  %cmp8.not = icmp eq i32 %and7, %and2
  %or10 = or i32 %spec.select, 256
  %match_flags.1 = select i1 %cmp8.not, i32 %spec.select, i32 %or10
  %and16 = and i32 %mcdi_flags, -33555393
  call void @__sanitizer_cov_trace_cmp4(i32 %and16, i32 %and7)
  %cmp17.not = icmp eq i32 %and16, %and7
  %or19 = or i32 %match_flags.1, 1024
  %and25 = and i32 %mcdi_flags, -50332609
  call void @__sanitizer_cov_trace_cmp4(i32 %and25, i32 %and16)
  %cmp26.not = icmp eq i32 %and25, %and16
  %0 = and i1 %cmp26.not, %cmp17.not
  %match_flags.3 = select i1 %0, i32 %match_flags.1, i32 %or19
  %and34 = and i32 %mcdi_flags, -50336705
  call void @__sanitizer_cov_trace_cmp4(i32 %and34, i32 %and25)
  %cmp35.not = icmp ne i32 %and34, %and25
  %or37 = zext i1 %cmp35.not to i32
  %match_flags.4 = or i32 %match_flags.3, %or37
  %and43 = and i32 %mcdi_flags, -50344897
  call void @__sanitizer_cov_trace_cmp4(i32 %and43, i32 %and34)
  %cmp44.not = icmp eq i32 %and43, %and34
  %or46 = or i32 %match_flags.4, 2
  %match_flags.5 = select i1 %cmp44.not, i32 %match_flags.4, i32 %or46
  %and52 = and i32 %mcdi_flags, -50361281
  call void @__sanitizer_cov_trace_cmp4(i32 %and52, i32 %and43)
  %cmp53.not = icmp eq i32 %and52, %and43
  %or55 = or i32 %match_flags.5, 4
  %match_flags.6 = select i1 %cmp53.not, i32 %match_flags.5, i32 %or55
  %and61 = and i32 %mcdi_flags, -50394049
  call void @__sanitizer_cov_trace_cmp4(i32 %and61, i32 %and52)
  %cmp62.not = icmp eq i32 %and61, %and52
  %or64 = or i32 %match_flags.6, 8
  %match_flags.7 = select i1 %cmp62.not, i32 %match_flags.6, i32 %or64
  %and70 = and i32 %mcdi_flags, -50459585
  call void @__sanitizer_cov_trace_cmp4(i32 %and70, i32 %and61)
  %cmp71.not = icmp eq i32 %and70, %and61
  %or73 = or i32 %match_flags.7, 16
  %match_flags.8 = select i1 %cmp71.not, i32 %match_flags.7, i32 %or73
  %and79 = and i32 %mcdi_flags, -50590657
  call void @__sanitizer_cov_trace_cmp4(i32 %and79, i32 %and70)
  %cmp80.not = icmp eq i32 %and79, %and70
  %or82 = or i32 %match_flags.8, 32
  %match_flags.9 = select i1 %cmp80.not, i32 %match_flags.8, i32 %or82
  %and88 = and i32 %mcdi_flags, -50852801
  call void @__sanitizer_cov_trace_cmp4(i32 %and88, i32 %and79)
  %cmp89.not = icmp eq i32 %and88, %and79
  %or91 = or i32 %match_flags.9, 64
  %match_flags.10 = select i1 %cmp89.not, i32 %match_flags.9, i32 %or91
  %and97 = and i32 %mcdi_flags, -52949953
  call void @__sanitizer_cov_trace_cmp4(i32 %and97, i32 %and88)
  %cmp98.not = icmp eq i32 %and97, %and88
  %or100 = or i32 %match_flags.10, 512
  %match_flags.11 = select i1 %cmp98.not, i32 %match_flags.10, i32 %or100
  br label %if.end212

do.body104:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %and106 = and i32 %mcdi_flags, 2147483647
  %1 = lshr i32 %mcdi_flags, 21
  %2 = and i32 %1, 1024
  %and115 = and i32 %mcdi_flags, 1073741823
  call void @__sanitizer_cov_trace_cmp4(i32 %and115, i32 %and106)
  %cmp116.not = icmp eq i32 %and115, %and106
  %match_flags.13 = select i1 %cmp116.not, i32 %2, i32 1024
  %and124 = and i32 %mcdi_flags, 1073741822
  call void @__sanitizer_cov_trace_cmp4(i32 %and124, i32 %and115)
  %cmp125.not = icmp ne i32 %and124, %and115
  %or127 = zext i1 %cmp125.not to i32
  %match_flags.14 = or i32 %match_flags.13, %or127
  %and133 = and i32 %mcdi_flags, 1073741820
  call void @__sanitizer_cov_trace_cmp4(i32 %and133, i32 %and124)
  %cmp134.not = icmp eq i32 %and133, %and124
  %or136 = or i32 %match_flags.14, 2
  %match_flags.15 = select i1 %cmp134.not, i32 %match_flags.14, i32 %or136
  %and142 = and i32 %mcdi_flags, 1073741816
  call void @__sanitizer_cov_trace_cmp4(i32 %and142, i32 %and133)
  %cmp143.not = icmp eq i32 %and142, %and133
  %or145 = or i32 %match_flags.15, 4
  %match_flags.16 = select i1 %cmp143.not, i32 %match_flags.15, i32 %or145
  %and151 = and i32 %mcdi_flags, 1073741808
  call void @__sanitizer_cov_trace_cmp4(i32 %and151, i32 %and142)
  %cmp152.not = icmp eq i32 %and151, %and142
  %or154 = or i32 %match_flags.16, 8
  %match_flags.17 = select i1 %cmp152.not, i32 %match_flags.16, i32 %or154
  %and160 = and i32 %mcdi_flags, 1073741792
  call void @__sanitizer_cov_trace_cmp4(i32 %and160, i32 %and151)
  %cmp161.not = icmp eq i32 %and160, %and151
  %or163 = or i32 %match_flags.17, 16
  %match_flags.18 = select i1 %cmp161.not, i32 %match_flags.17, i32 %or163
  %and169 = and i32 %mcdi_flags, 1073741760
  call void @__sanitizer_cov_trace_cmp4(i32 %and169, i32 %and160)
  %cmp170.not = icmp eq i32 %and169, %and160
  %or172 = or i32 %match_flags.18, 32
  %match_flags.19 = select i1 %cmp170.not, i32 %match_flags.18, i32 %or172
  %and178 = and i32 %mcdi_flags, 1073741696
  call void @__sanitizer_cov_trace_cmp4(i32 %and178, i32 %and169)
  %cmp179.not = icmp eq i32 %and178, %and169
  %or181 = or i32 %match_flags.19, 64
  %match_flags.20 = select i1 %cmp179.not, i32 %match_flags.19, i32 %or181
  %and187 = and i32 %mcdi_flags, 1073741568
  call void @__sanitizer_cov_trace_cmp4(i32 %and187, i32 %and178)
  %cmp188.not = icmp eq i32 %and187, %and178
  %or190 = or i32 %match_flags.20, 128
  %match_flags.21 = select i1 %cmp188.not, i32 %match_flags.20, i32 %or190
  %and196 = and i32 %mcdi_flags, 1073741312
  call void @__sanitizer_cov_trace_cmp4(i32 %and196, i32 %and187)
  %cmp197.not = icmp eq i32 %and196, %and187
  %or199 = or i32 %match_flags.21, 256
  %match_flags.22 = select i1 %cmp197.not, i32 %match_flags.21, i32 %or199
  %and205 = and i32 %mcdi_flags, 1073740800
  call void @__sanitizer_cov_trace_cmp4(i32 %and205, i32 %and196)
  %cmp206.not = icmp eq i32 %and205, %and196
  %or208 = or i32 %match_flags.22, 512
  %match_flags.23 = select i1 %cmp206.not, i32 %match_flags.22, i32 %or208
  br label %if.end212

if.end212:                                        ; preds = %do.body104, %if.then
  %match_flags.24 = phi i32 [ %match_flags.11, %if.then ], [ %match_flags.23, %do.body104 ]
  %mcdi_flags.addr.0 = phi i32 [ %and97, %if.then ], [ %and205, %do.body104 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mcdi_flags.addr.0)
  %tobool213.not = icmp eq i32 %mcdi_flags.addr.0, 0
  %match_flags.24. = select i1 %tobool213.not, i32 %match_flags.24, i32 -22
  ret i32 %match_flags.24.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_filter_table_probe(ptr noundef %efx, i1 noundef zeroext %multicast_chaining) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %multicast_chaining to i8
  %net_dev1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %0 = ptrtoint ptr %net_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net_dev1, align 4
  %filter_sem = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 108
  %call.i = tail call i32 @down_read_trylock(ptr noundef %filter_sem) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %efx_rwsem_assert_write_locked.exit, !prof !102

efx_rwsem_assert_write_locked.exit:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 227, i32 noundef 9, ptr noundef null) #13
  tail call void @up_read(ptr noundef %filter_sem) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %filter_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %2 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %filter_state, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 2348) #16
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %mc_chaining = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %call7.i.i, i32 0, i32 15
  %5 = ptrtoint ptr %mc_chaining to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %mc_chaining, align 2
  %rx_match_count = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %rx_match_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %rx_match_count, align 8
  %call10 = tail call fastcc i32 @efx_mcdi_filter_table_probe_matches(ptr noundef %efx, ptr noundef nonnull %call7.i.i, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end7.fail_crit_edge

if.end7.fail_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.end13:                                         ; preds = %if.end7
  %type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %type, align 4
  %check_caps = getelementptr inbounds %struct.efx_nic_type, ptr %8, i32 0, i32 35
  %9 = ptrtoint ptr %check_caps to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %check_caps, align 4
  %call14 = tail call i32 %10(ptr noundef %efx, i8 noundef zeroext 31, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end13.if.end21_crit_edge, label %if.end18

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.end18:                                         ; preds = %if.end13
  %call17 = tail call fastcc i32 @efx_mcdi_filter_table_probe_matches(ptr noundef %efx, ptr noundef nonnull %call7.i.i, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool19.not = icmp eq i32 %call17, 0
  br i1 %tobool19.not, label %if.end18.if.end21_crit_edge, label %if.end18.fail_crit_edge

if.end18.fail_crit_edge:                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.end18.if.end21_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.end21:                                         ; preds = %if.end18.if.end21_crit_edge, %if.end13.if.end21_crit_edge
  %11 = ptrtoint ptr %net_dev1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net_dev1, align 4
  %features.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 23
  %13 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %features.i, align 16
  %hw_features.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 24
  %15 = ptrtoint ptr %hw_features.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %hw_features.i, align 8
  %or.i = or i64 %16, %14
  %and = and i64 %or.i, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool23.not = icmp eq i64 %and, 0
  br i1 %tobool23.not, label %if.end21.if.end35_crit_edge, label %land.lhs.true

if.end21.if.end35_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

land.lhs.true:                                    ; preds = %if.end21
  %call24 = tail call zeroext i1 @efx_mcdi_filter_match_supported(ptr noundef nonnull %call7.i.i, i1 noundef zeroext false, i32 noundef 272)
  br i1 %call24, label %land.lhs.true25, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

land.lhs.true25:                                  ; preds = %land.lhs.true
  %call26 = tail call zeroext i1 @efx_mcdi_filter_match_supported(ptr noundef nonnull %call7.i.i, i1 noundef zeroext false, i32 noundef 1280)
  br i1 %call26, label %land.lhs.true25.if.end35_crit_edge, label %land.lhs.true25.do.body_crit_edge

land.lhs.true25.do.body_crit_edge:                ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

land.lhs.true25.if.end35_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

do.body:                                          ; preds = %land.lhs.true25.do.body_crit_edge, %land.lhs.true.do.body_crit_edge
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %17 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %msg_enable, align 4
  %and28 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %do.body.do.end_crit_edge, label %if.then30

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then30:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str) #17
  br label %do.end

do.end:                                           ; preds = %if.then30, %do.body.do.end_crit_edge
  %features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %19 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %features, align 16
  %and32 = and i64 %20, -513
  store i64 %and32, ptr %features, align 16
  %fixed_features = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 84
  %21 = ptrtoint ptr %fixed_features to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %fixed_features, align 128
  %and33 = and i64 %22, -513
  store i64 %and33, ptr %fixed_features, align 128
  %hw_features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 24
  %23 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %hw_features, align 8
  %and34 = and i64 %24, -513
  store i64 %and34, ptr %hw_features, align 8
  br label %if.end35

if.end35:                                         ; preds = %do.end, %land.lhs.true25.if.end35_crit_edge, %if.end21.if.end35_crit_edge
  %call37 = tail call noalias ptr @vzalloc(i32 noundef 131072) #18
  %entry38 = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %call7.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %entry38 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call37, ptr %entry38, align 8
  %tobool40.not = icmp eq ptr %call37, null
  br i1 %tobool40.not, label %if.end35.fail_crit_edge, label %if.end42

if.end35.fail_crit_edge:                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.end42:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  %mc_promisc_last = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %call7.i.i, i32 0, i32 11
  %26 = ptrtoint ptr %mc_promisc_last to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %mc_promisc_last, align 2
  %27 = ptrtoint ptr %net_dev1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %net_dev1, align 4
  %features44 = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 23
  %29 = ptrtoint ptr %features44 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %features44, align 16
  %vlan_filter = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %call7.i.i, i32 0, i32 16
  %and45 = lshr i64 %30, 9
  %31 = trunc i64 %and45 to i8
  %32 = and i8 %31, 1
  %33 = ptrtoint ptr %vlan_filter to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %vlan_filter, align 1
  %vlan_list = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %call7.i.i, i32 0, i32 17
  %34 = ptrtoint ptr %vlan_list to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %vlan_list, ptr %vlan_list, align 4
  %prev.i = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %call7.i.i, i32 0, i32 17, i32 1
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %vlan_list, ptr %prev.i, align 8
  %lock = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %call7.i.i, i32 0, i32 3
  tail call void @__init_rwsem(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @efx_mcdi_filter_table_probe.__key) #13
  %36 = ptrtoint ptr %filter_state to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call7.i.i, ptr %filter_state, align 8
  br label %cleanup

fail:                                             ; preds = %if.end35.fail_crit_edge, %if.end18.fail_crit_edge, %if.end7.fail_crit_edge
  %rc.1 = phi i32 [ %call10, %if.end7.fail_crit_edge ], [ %call17, %if.end18.fail_crit_edge ], [ -12, %if.end35.fail_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end42, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %efx_rwsem_assert_write_locked.exit
  %retval.0 = phi i32 [ %rc.1, %fail ], [ 0, %if.end42 ], [ -22, %efx_rwsem_assert_write_locked.exit ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efx_mcdi_filter_table_probe_matches(ptr noundef %efx, ptr nocapture noundef %table, i1 noundef zeroext %encap) unnamed_addr #0 align 64 {
entry:
  %inbuf = alloca [1 x %union.efx_dword], align 4
  %outbuf = alloca [63 x %union.efx_dword], align 4
  %outlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf) #13
  call void @llvm.lifetime.start.p0(i64 252, ptr nonnull %outbuf) #13
  %0 = call ptr @memset(ptr %outbuf, i32 0, i32 252)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen) #13
  %1 = ptrtoint ptr %outlen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %outlen, align 4, !annotation !103
  %cond = select i1 %encap, i32 67108864, i32 16777216
  %2 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond, ptr %inbuf, align 4
  %call = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 228, ptr noundef nonnull %inbuf, i32 noundef 4, ptr noundef nonnull %outbuf, i32 noundef 252, ptr noundef nonnull %outlen) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %outlen, align 4
  %sub = add i32 %4, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 247, i32 %sub)
  %cmp = icmp ugt i32 %sub, 247
  %div92 = lshr i32 %sub, 2
  %cond6 = select i1 %cmp, i32 61, i32 %div92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond6)
  %cmp798.not = icmp eq i32 %cond6, 0
  br i1 %cmp798.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %add.ptr10 = getelementptr inbounds i8, ptr %outbuf, i32 8
  %msg_enable38 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %net_dev55 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %rx_match_count = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %table, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end65.for.body_crit_edge, %for.body.lr.ph
  %pd_match_pri.099 = phi i32 [ 0, %for.body.lr.ph ], [ %inc66, %if.end65.for.body_crit_edge ]
  %mul = shl i32 %pd_match_pri.099, 2
  %add.ptr11 = getelementptr i8, ptr %add.ptr10, i32 %mul
  %5 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr11, align 4
  %7 = call i32 @llvm.bswap.i32(i32 %6)
  %call15 = call fastcc i32 @efx_mcdi_filter_match_flags_from_mcdi(i1 noundef zeroext %encap, i32 noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  %8 = ptrtoint ptr %msg_enable38 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable38, align 4
  %and20 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %cmp16, label %do.body19, label %do.body37

do.body19:                                        ; preds = %for.body
  br i1 %tobool21.not, label %do.body19.if.end65_crit_edge, label %do.body23

do.body19.if.end65_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

do.body23:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_mcdi_filter_table_probe_matches.__UNIQUE_ID_ddebug544, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_mcdi_filter_table_probe_matches, %if.then30)) #13
          to label %if.end65 [label %if.then30], !srcloc !104

if.then30:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %net_dev55 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net_dev55, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_mcdi_filter_table_probe_matches.__UNIQUE_ID_ddebug544, ptr noundef %11, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i32 noundef %7, i32 noundef %pd_match_pri.099) #13
  br label %if.end65

do.body37:                                        ; preds = %for.body
  br i1 %tobool21.not, label %do.body37.do.end61_crit_edge, label %do.body42

do.body37.do.end61_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end61

do.body42:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_mcdi_filter_table_probe_matches.__UNIQUE_ID_ddebug545, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_mcdi_filter_table_probe_matches, %if.then54)) #13
          to label %do.end61 [label %if.then54], !srcloc !104

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %net_dev55 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net_dev55, align 4
  %14 = ptrtoint ptr %rx_match_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_match_count, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_mcdi_filter_table_probe_matches.__UNIQUE_ID_ddebug545, ptr noundef %13, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %7, i32 noundef %pd_match_pri.099, i32 noundef %call15, i32 noundef %15) #13
  br label %do.end61

do.end61:                                         ; preds = %if.then54, %do.body42, %do.body37.do.end61_crit_edge
  %16 = ptrtoint ptr %rx_match_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_match_count, align 4
  %arrayidx63 = getelementptr [122 x i32], ptr %table, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %7, ptr %arrayidx63, align 4
  %19 = load i32, ptr %rx_match_count, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %rx_match_count, align 4
  br label %if.end65

if.end65:                                         ; preds = %do.end61, %if.then30, %do.body23, %do.body19.if.end65_crit_edge
  %inc66 = add nuw nsw i32 %pd_match_pri.099, 1
  %exitcond.not = icmp eq i32 %inc66, %cond6
  br i1 %exitcond.not, label %if.end65.cleanup_crit_edge, label %if.end65.for.body_crit_edge

if.end65.for.body_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %if.end65.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end65.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen) #13
  call void @llvm.lifetime.end.p0(i64 252, ptr nonnull %outbuf) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf) #13
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @efx_mcdi_filter_table_reset_mc_allocations(ptr nocapture noundef readonly %efx) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %must_restore_filters = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %must_restore_filters to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %must_restore_filters, align 1
  %must_restore_rss_contexts = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %must_restore_rss_contexts to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %must_restore_rss_contexts, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_mcdi_filter_table_restore(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 8
  %filter_sem = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 108
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %filter_sem, i32 noundef 4) #13
  %2 = ptrtoint ptr %filter_sem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %filter_sem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.not, label %do.end, label %entry.if.end_crit_edge, !prof !100

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1381, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool21.not = icmp eq ptr %1, null
  br i1 %tobool21.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %must_restore_filters = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %must_restore_filters to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %must_restore_filters, align 1, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool22.not = icmp eq i8 %5, 0
  br i1 %tobool22.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end24

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end24:                                         ; preds = %lor.lhs.false
  %lock = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 3
  tail call void @down_write(ptr noundef %lock) #13
  %rss_lock = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 65
  tail call void @mutex_lock_nested(ptr noundef %rss_lock, i32 noundef 0) #13
  %entry1.i = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 4
  %rx_match_count = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 1
  %rss_context41 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 64
  %msg_enable60 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %net_dev64 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %vlan_list = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %for.inc107.for.body_crit_edge, %if.end24
  %invalid_filters.0234 = phi i32 [ 0, %if.end24 ], [ %invalid_filters.2, %for.inc107.for.body_crit_edge ]
  %failed.0232 = phi i32 [ 0, %if.end24 ], [ %failed.3, %for.inc107.for.body_crit_edge ]
  %filter_idx.0230 = phi i32 [ 0, %if.end24 ], [ %inc108, %for.inc107.for.body_crit_edge ]
  %6 = ptrtoint ptr %entry1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %entry1.i, align 4
  %arrayidx.i = getelementptr %struct.anon.153, ptr %7, i32 %filter_idx.0230
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 8
  %and.i = and i32 %9, -4
  %10 = inttoptr i32 %and.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool26.not = icmp eq i32 %and.i, 0
  br i1 %tobool26.not, label %for.body.for.inc107_crit_edge, label %if.end28

for.body.for.inc107_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc107

if.end28:                                         ; preds = %for.body
  %call29 = tail call fastcc i32 @efx_mcdi_filter_mcdi_flags_from_spec(ptr noundef nonnull %10)
  %11 = ptrtoint ptr %rx_match_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_match_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp30224.not = icmp eq i32 %12, 0
  br i1 %cmp30224.not, label %if.end28.if.then34_crit_edge, label %if.end28.land.rhs_crit_edge

if.end28.land.rhs_crit_edge:                      ; preds = %if.end28
  br label %land.rhs

if.end28.if.then34_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then34

while.cond:                                       ; preds = %land.rhs
  %inc = add nuw i32 %match_pri.0225, 1
  %exitcond.not = icmp eq i32 %inc, %12
  br i1 %exitcond.not, label %while.cond.if.then34_crit_edge, label %while.cond.land.rhs_crit_edge

while.cond.land.rhs_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

while.cond.if.then34_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then34

land.rhs:                                         ; preds = %while.cond.land.rhs_crit_edge, %if.end28.land.rhs_crit_edge
  %match_pri.0225 = phi i32 [ %inc, %while.cond.land.rhs_crit_edge ], [ 0, %if.end28.land.rhs_crit_edge ]
  %arrayidx = getelementptr [122 x i32], ptr %1, i32 0, i32 %match_pri.0225
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %call29)
  %cmp31.not = icmp eq i32 %14, %call29
  br i1 %cmp31.not, label %if.end36, label %while.cond

if.then34:                                        ; preds = %while.cond.if.then34_crit_edge, %if.end28.if.then34_crit_edge
  %inc35 = add i32 %invalid_filters.0234, 1
  br label %not_restored

if.end36:                                         ; preds = %land.rhs
  %rss_context = getelementptr inbounds %struct.efx_filter_spec, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %rss_context to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rss_context, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool37.not = icmp eq i32 %16, 0
  br i1 %tobool37.not, label %if.end36.if.end42_crit_edge, label %if.then38

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  %call40 = tail call ptr @efx_find_rss_context_entry(ptr noundef %efx, i32 noundef %16) #13
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %if.end36.if.end42_crit_edge
  %ctx.0 = phi ptr [ %call40, %if.then38 ], [ %rss_context41, %if.end36.if.end42_crit_edge ]
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load = load i32, ptr %10, align 4
  %18 = and i32 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool43.not = icmp eq i32 %18, 0
  br i1 %tobool43.not, label %if.end42.if.end71_crit_edge, label %if.then44

if.end42.if.end71_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71

if.then44:                                        ; preds = %if.end42
  %tobool45.not = icmp eq ptr %ctx.0, null
  br i1 %tobool45.not, label %do.body47, label %if.end56

do.body47:                                        ; preds = %if.then44
  %19 = ptrtoint ptr %msg_enable60 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_enable60, align 4
  %and48 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %do.body47.do.end54_crit_edge, label %if.then50

do.body47.do.end54_crit_edge:                     ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end54

if.then50:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %net_dev64 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net_dev64, align 4
  %23 = ptrtoint ptr %rss_context to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rss_context, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %22, ptr noundef nonnull @.str.3, i32 noundef %24) #17
  br label %do.end54

do.end54:                                         ; preds = %if.then50, %do.body47.do.end54_crit_edge
  %inc55 = add i32 %invalid_filters.0234, 1
  br label %not_restored

if.end56:                                         ; preds = %if.then44
  %context_id = getelementptr inbounds %struct.efx_rss_context, ptr %ctx.0, i32 0, i32 1
  %25 = ptrtoint ptr %context_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %context_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp57 = icmp eq i32 %26, -1
  br i1 %cmp57, label %do.body59, label %if.end56.if.end71_crit_edge

if.end56.if.end71_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71

do.body59:                                        ; preds = %if.end56
  %27 = ptrtoint ptr %msg_enable60 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %msg_enable60, align 4
  %and61 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %do.body59.do.end68_crit_edge, label %if.then63

do.body59.do.end68_crit_edge:                     ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end68

if.then63:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %net_dev64 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %net_dev64, align 4
  %31 = ptrtoint ptr %rss_context to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rss_context, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %30, ptr noundef nonnull @.str.4, i32 noundef %32) #17
  br label %do.end68

do.end68:                                         ; preds = %if.then63, %do.body59.do.end68_crit_edge
  %inc69 = add i32 %invalid_filters.0234, 1
  br label %not_restored

if.end71:                                         ; preds = %if.end56.if.end71_crit_edge, %if.end42.if.end71_crit_edge
  %33 = ptrtoint ptr %entry1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %entry1.i, align 4
  %handle = getelementptr %struct.anon.153, ptr %34, i32 %filter_idx.0230, i32 1
  %call74 = tail call fastcc i32 @efx_mcdi_filter_push(ptr noundef %efx, ptr noundef nonnull %10, ptr noundef %handle, ptr noundef %ctx.0, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  %inc77 = add i32 %failed.0232, 1
  br i1 %tobool75.not, label %if.end71.for.inc107_crit_edge, label %if.end71.not_restored_crit_edge

if.end71.not_restored_crit_edge:                  ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  br label %not_restored

if.end71.for.inc107_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc107

not_restored:                                     ; preds = %if.end71.not_restored_crit_edge, %do.end68, %do.end54, %if.then34
  %failed.2 = phi i32 [ %failed.0232, %if.then34 ], [ %failed.0232, %do.end68 ], [ %inc77, %if.end71.not_restored_crit_edge ], [ %failed.0232, %do.end54 ]
  %invalid_filters.1 = phi i32 [ %inc35, %if.then34 ], [ %inc69, %do.end68 ], [ %invalid_filters.0234, %if.end71.not_restored_crit_edge ], [ %inc55, %do.end54 ]
  %35 = ptrtoint ptr %vlan_list to i32
  call void @__asan_load4_noabort(i32 %35)
  %vlan.0227 = load ptr, ptr %vlan_list, align 4
  %cmp84.not228 = icmp eq ptr %vlan.0227, %vlan_list
  br i1 %cmp84.not228, label %not_restored.for.end105_crit_edge, label %not_restored.for.cond88.preheader_crit_edge

not_restored.for.cond88.preheader_crit_edge:      ; preds = %not_restored
  br label %for.cond88.preheader

not_restored.for.end105_crit_edge:                ; preds = %not_restored
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end105

for.cond88.preheader:                             ; preds = %for.inc.14.for.cond88.preheader_crit_edge, %not_restored.for.cond88.preheader_crit_edge
  %vlan.0229 = phi ptr [ %vlan.0, %for.inc.14.for.cond88.preheader_crit_edge ], [ %vlan.0227, %not_restored.for.cond88.preheader_crit_edge ]
  %arrayidx91 = getelementptr %struct.efx_mcdi_filter_vlan, ptr %vlan.0229, i32 0, i32 4, i32 0
  %36 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx91, align 2
  %conv = zext i16 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %filter_idx.0230, i32 %conv)
  %cmp92 = icmp eq i32 %filter_idx.0230, %conv
  br i1 %cmp92, label %if.then94, label %for.cond88.preheader.for.inc_crit_edge

for.cond88.preheader.for.inc_crit_edge:           ; preds = %for.cond88.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then94:                                        ; preds = %for.cond88.preheader
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 -1, ptr %arrayidx91, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then94, %for.cond88.preheader.for.inc_crit_edge
  %arrayidx91.1 = getelementptr %struct.efx_mcdi_filter_vlan, ptr %vlan.0229, i32 0, i32 4, i32 1
  %39 = ptrtoint ptr %arrayidx91.1 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx91.1, align 2
  %conv.1 = zext i16 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %filter_idx.0230, i32 %conv.1)
  %cmp92.1 = icmp eq i32 %filter_idx.0230, %conv.1
  br i1 %cmp92.1, label %if.then94.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

if.then94.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %arrayidx91.1 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 -1, ptr %arrayidx91.1, align 2
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then94.1, %for.inc.for.inc.1_crit_edge
  %arrayidx91.2 = getelementptr %struct.efx_mcdi_filter_vlan, ptr %vlan.0229, i32 0, i32 4, i32 2
  %42 = ptrtoint ptr %arrayidx91.2 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx91.2, align 2
  %conv.2 = zext i16 %43 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %filter_idx.0230, i32 %conv.2)
  %cmp92.2 = icmp eq i32 %filter_idx.0230, %conv.2
  br i1 %cmp92.2, label %if.then94.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

if.then94.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %arrayidx91.2 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 -1, ptr %arrayidx91.2, align 2
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then94.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx91.3 = getelementptr %struct.efx_mcdi_filter_vlan, ptr %vlan.0229, i32 0, i32 4, i32 3
  %45 = ptrtoint ptr %arrayidx91.3 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx91.3, align 2
  %conv.3 = zext i16 %46 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %filter_idx.0230, i32 %conv.3)
  %cmp92.3 = icmp eq i32 %filter_idx.0230, %conv.3
  br i1 %cmp92.3, label %if.then94.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3

if.then94.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  %47 = ptrtoint ptr %arrayidx91.3 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 -1, ptr %arrayidx91.3, align 2
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then94.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx91.4 = getelementptr %struct.efx_mcdi_filter_vlan, ptr %vlan.0229, i32 0, i32 4, i32 4
  %48 = ptrtoint ptr %arrayidx91.4 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx91.4, align 2
  %conv.4 = zext i16 %49 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %filter_idx.0230, i32 %conv.4)
  %cmp92.4 = icmp eq i32 %filter_idx.0230, %conv.4
  br i1 %cmp92.4, label %if.then94.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.4

if.then94.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #15
  %50 = ptrtoint ptr %arrayidx91.4 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 -1, ptr %arrayidx91.4, align 2
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then94.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx91.5 = getelementptr %struct.efx_mcdi_filter_vlan, ptr %vlan.0229, i32 0, i32 4, i32 5
  %51 = ptrtoint ptr %arrayidx91.5 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx91.5, align 2
  %conv.5 = zext i16 %52 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %filter_idx.0230, i32 %conv.5)
  %cmp92.5 = icmp eq i32 %filter_idx.0230, %conv.5
  br i1 %cmp92.5, label %if.then94.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.5

if.then94.5:                                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #15
  %53 = ptrtoint ptr %arrayidx91.5 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 -1, ptr %arrayidx91.5, align 2
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then94.5, %for.inc.4.for.inc.5_crit_edge
  %arrayidx91.6 = getelementptr %struct.efx_mcdi_filter_vlan, ptr %vlan.0229, i32 0, i32 4, i32 6
  %54 = ptrtoint ptr %arrayidx91.6 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx91.6, align 2
  %conv.6 = zext i16 %55 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %filter_idx.0230, i32 %conv.6)
  %cmp92.6 = icmp eq i32 %filter_idx.0230, %conv.6
  br i1 %cmp92.6, label %if.then94.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.6

if.then94.6:                                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #15
  %56 = ptrtoint ptr %arrayidx91.6 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 -1, ptr %arrayidx91.6, align 2
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then94.6, %for.inc.5.for.inc.6_crit_edge
  %arrayidx91.7 = getelementptr %struct.efx_mcdi_filter_vlan, ptr %vlan.0229, i32 0, i32 4, i32 7
  %57 = ptrtoint ptr %arrayidx91.7 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx91.7, align 2
  %conv.7 = zext i16 %58 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %filter_idx.0230, i32 %conv.7)
  %cmp92.7 = icmp eq i32 %filter_idx.0230, %conv.7
  br i1 %cmp92.7, label %if.then94.7, label %for.inc.6.for.inc.7_crit_edge

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.7

if.then94.7:                                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #15
  %59 = ptrtoint ptr %arrayidx91.7 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 -1, ptr %arrayidx91.7, align 2
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then94.7, %for.inc.6.for.inc.7_crit_edge
  %arrayidx91.8 = getelementptr %struct.efx_mcdi_filter_vlan, ptr %vlan.0229, i32 0, i32 4, i32 8
  %60 = ptrtoint ptr %arrayidx91.8 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx91.8, align 2
  %conv.8 = zext i16 %61 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %filter_idx.0230, i32 %conv.8)
  %cmp92.8 = icmp eq i32 %filter_idx.0230, %conv.8
  br i1 %cmp92.8, label %if.then94.8, label %for.inc.7.for.inc.8_crit_edge

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.8

if.then94.8:                                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #15
  %62 = ptrtoint ptr %arrayidx91.8 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 -1, ptr %arrayidx91.8, align 2
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then94.8, %for.inc.7.for.inc.8_crit_edge
  %arrayidx91.9 = getelementptr %struct.efx_mcdi_filter_vlan, ptr %vlan.0229, i32 0, i32 4, i32 9
  %63 = ptrtoint ptr %arrayidx91.9 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx91.9, align 2
  %conv.9 = zext i16 %64 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %filter_idx.0230, i32 %conv.9)
  %cmp92.9 = icmp eq i32 %filter_idx.0230, %conv.9
  br i1 %cmp92.9, label %if.then94.9, label %for.inc.8.for.inc.9_crit_edge

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.9

if.then94.9:                                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #15
  %65 = ptrtoint ptr %arrayidx91.9 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 -1, ptr %arrayidx91.9, align 2
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.then94.9, %for.inc.8.for.inc.9_crit_edge
  %arrayidx91.10 = getelementptr %struct.efx_mcdi_filter_vlan, ptr %vlan.0229, i32 0, i32 4, i32 10
  %66 = ptrtoint ptr %arrayidx91.10 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx91.10, align 2
  %conv.10 = zext i16 %67 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %filter_idx.0230, i32 %conv.10)
  %cmp92.10 = icmp eq i32 %filter_idx.0230, %conv.10
  br i1 %cmp92.10, label %if.then94.10, label %for.inc.9.for.inc.10_crit_edge

for.inc.9.for.inc.10_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.10

if.then94.10:                                     ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #15
  %68 = ptrtoint ptr %arrayidx91.10 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 -1, ptr %arrayidx91.10, align 2
  br label %for.inc.10

for.inc.10:                                       ; preds = %if.then94.10, %for.inc.9.for.inc.10_crit_edge
  %arrayidx91.11 = getelementptr %struct.efx_mcdi_filter_vlan, ptr %vlan.0229, i32 0, i32 4, i32 11
  %69 = ptrtoint ptr %arrayidx91.11 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx91.11, align 2
  %conv.11 = zext i16 %70 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %filter_idx.0230, i32 %conv.11)
  %cmp92.11 = icmp eq i32 %filter_idx.0230, %conv.11
  br i1 %cmp92.11, label %if.then94.11, label %for.inc.10.for.inc.11_crit_edge

for.inc.10.for.inc.11_crit_edge:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.11

if.then94.11:                                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #15
  %71 = ptrtoint ptr %arrayidx91.11 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 -1, ptr %arrayidx91.11, align 2
  br label %for.inc.11

for.inc.11:                                       ; preds = %if.then94.11, %for.inc.10.for.inc.11_crit_edge
  %arrayidx91.12 = getelementptr %struct.efx_mcdi_filter_vlan, ptr %vlan.0229, i32 0, i32 4, i32 12
  %72 = ptrtoint ptr %arrayidx91.12 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %arrayidx91.12, align 2
  %conv.12 = zext i16 %73 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %filter_idx.0230, i32 %conv.12)
  %cmp92.12 = icmp eq i32 %filter_idx.0230, %conv.12
  br i1 %cmp92.12, label %if.then94.12, label %for.inc.11.for.inc.12_crit_edge

for.inc.11.for.inc.12_crit_edge:                  ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.12

if.then94.12:                                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #15
  %74 = ptrtoint ptr %arrayidx91.12 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 -1, ptr %arrayidx91.12, align 2
  br label %for.inc.12

for.inc.12:                                       ; preds = %if.then94.12, %for.inc.11.for.inc.12_crit_edge
  %arrayidx91.13 = getelementptr %struct.efx_mcdi_filter_vlan, ptr %vlan.0229, i32 0, i32 4, i32 13
  %75 = ptrtoint ptr %arrayidx91.13 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx91.13, align 2
  %conv.13 = zext i16 %76 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %filter_idx.0230, i32 %conv.13)
  %cmp92.13 = icmp eq i32 %filter_idx.0230, %conv.13
  br i1 %cmp92.13, label %if.then94.13, label %for.inc.12.for.inc.13_crit_edge

for.inc.12.for.inc.13_crit_edge:                  ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.13

if.then94.13:                                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #15
  %77 = ptrtoint ptr %arrayidx91.13 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 -1, ptr %arrayidx91.13, align 2
  br label %for.inc.13

for.inc.13:                                       ; preds = %if.then94.13, %for.inc.12.for.inc.13_crit_edge
  %arrayidx91.14 = getelementptr %struct.efx_mcdi_filter_vlan, ptr %vlan.0229, i32 0, i32 4, i32 14
  %78 = ptrtoint ptr %arrayidx91.14 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %arrayidx91.14, align 2
  %conv.14 = zext i16 %79 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %filter_idx.0230, i32 %conv.14)
  %cmp92.14 = icmp eq i32 %filter_idx.0230, %conv.14
  br i1 %cmp92.14, label %if.then94.14, label %for.inc.13.for.inc.14_crit_edge

for.inc.13.for.inc.14_crit_edge:                  ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.14

if.then94.14:                                     ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #15
  %80 = ptrtoint ptr %arrayidx91.14 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 -1, ptr %arrayidx91.14, align 2
  br label %for.inc.14

for.inc.14:                                       ; preds = %if.then94.14, %for.inc.13.for.inc.14_crit_edge
  %81 = ptrtoint ptr %vlan.0229 to i32
  call void @__asan_load4_noabort(i32 %81)
  %vlan.0 = load ptr, ptr %vlan.0229, align 4
  %cmp84.not = icmp eq ptr %vlan.0, %vlan_list
  br i1 %cmp84.not, label %for.inc.14.for.end105_crit_edge, label %for.inc.14.for.cond88.preheader_crit_edge

for.inc.14.for.cond88.preheader_crit_edge:        ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond88.preheader

for.inc.14.for.end105_crit_edge:                  ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end105

for.end105:                                       ; preds = %for.inc.14.for.end105_crit_edge, %not_restored.for.end105_crit_edge
  tail call void @kfree(ptr noundef nonnull %10) #13
  %82 = ptrtoint ptr %entry1.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %entry1.i, align 4
  %arrayidx.i222 = getelementptr %struct.anon.153, ptr %83, i32 %filter_idx.0230
  %84 = ptrtoint ptr %arrayidx.i222 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %arrayidx.i222, align 8
  br label %for.inc107

for.inc107:                                       ; preds = %for.end105, %if.end71.for.inc107_crit_edge, %for.body.for.inc107_crit_edge
  %failed.3 = phi i32 [ %failed.2, %for.end105 ], [ %failed.0232, %if.end71.for.inc107_crit_edge ], [ %failed.0232, %for.body.for.inc107_crit_edge ]
  %invalid_filters.2 = phi i32 [ %invalid_filters.1, %for.end105 ], [ %invalid_filters.0234, %if.end71.for.inc107_crit_edge ], [ %invalid_filters.0234, %for.body.for.inc107_crit_edge ]
  %inc108 = add nuw nsw i32 %filter_idx.0230, 1
  %exitcond238.not = icmp eq i32 %inc108, 8192
  br i1 %exitcond238.not, label %for.end109, label %for.inc107.for.body_crit_edge

for.inc107.for.body_crit_edge:                    ; preds = %for.inc107
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end109:                                       ; preds = %for.inc107
  tail call void @mutex_unlock(ptr noundef %rss_lock) #13
  tail call void @up_write(ptr noundef %lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %invalid_filters.2)
  %tobool112.not = icmp eq i32 %invalid_filters.2, 0
  br i1 %tobool112.not, label %for.end109.if.end137_crit_edge, label %do.body114

for.end109.if.end137_crit_edge:                   ; preds = %for.end109
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end137

do.body114:                                       ; preds = %for.end109
  %85 = ptrtoint ptr %msg_enable60 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %msg_enable60, align 4
  %and116 = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %do.body114.if.end137_crit_edge, label %do.body119

do.body114.if.end137_crit_edge:                   ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end137

do.body119:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_mcdi_filter_table_restore.__UNIQUE_ID_ddebug546, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_mcdi_filter_table_restore, %if.then129)) #13
          to label %if.end137 [label %if.then129], !srcloc !104

if.then129:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #15
  %87 = ptrtoint ptr %net_dev64 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %net_dev64, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_mcdi_filter_table_restore.__UNIQUE_ID_ddebug546, ptr noundef %88, ptr noundef nonnull @.str.7, i32 noundef %invalid_filters.2) #13
  br label %if.end137

if.end137:                                        ; preds = %if.then129, %do.body119, %do.body114.if.end137_crit_edge, %for.end109.if.end137_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %failed.3)
  %tobool138.not = icmp eq i32 %failed.3, 0
  br i1 %tobool138.not, label %if.else149, label %do.body140

do.body140:                                       ; preds = %if.end137
  %89 = ptrtoint ptr %msg_enable60 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %msg_enable60, align 4
  %and142 = and i32 %90, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142)
  %tobool143.not = icmp eq i32 %and142, 0
  br i1 %tobool143.not, label %do.body140.cleanup_crit_edge, label %if.then144

do.body140.cleanup_crit_edge:                     ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then144:                                       ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #15
  %91 = ptrtoint ptr %net_dev64 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %net_dev64, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %92, ptr noundef nonnull @.str.8, i32 noundef %failed.3) #17
  br label %cleanup

if.else149:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #15
  %93 = ptrtoint ptr %must_restore_filters to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %must_restore_filters, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else149, %if.then144, %do.body140.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efx_mcdi_filter_mcdi_flags_from_spec(ptr nocapture noundef readonly %spec) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load.i = load i32, ptr %spec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool.not.i = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool.not.i, label %efx_filter_get_encap_type.exit.thread, label %efx_filter_get_encap_type.exit

efx_filter_get_encap_type.exit.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %bf.lshr190 = lshr i32 %bf.load.i, 20
  %and191 = and i32 %bf.lshr190, 4094
  call void @__sanitizer_cov_trace_cmp4(i32 %and191, i32 %bf.lshr190)
  %cmp.not192 = icmp eq i32 %and191, %bf.lshr190
  br label %2

efx_filter_get_encap_type.exit:                   ; preds = %entry
  %encap_type.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec, i32 0, i32 12
  %1 = ptrtoint ptr %encap_type.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load1.i = load i8, ptr %encap_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %bf.load1.i)
  %phi.cmp = icmp ult i8 %bf.load1.i, 16
  %bf.lshr = lshr i32 %bf.load.i, 20
  %and = and i32 %bf.lshr, 4094
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %bf.lshr)
  %cmp.not = icmp eq i32 %and, %bf.lshr
  br i1 %phi.cmp, label %efx_filter_get_encap_type.exit._crit_edge, label %efx_filter_get_encap_type.exit._crit_edge201

efx_filter_get_encap_type.exit._crit_edge201:     ; preds = %efx_filter_get_encap_type.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %3

efx_filter_get_encap_type.exit._crit_edge:        ; preds = %efx_filter_get_encap_type.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %2

2:                                                ; preds = %efx_filter_get_encap_type.exit._crit_edge, %efx_filter_get_encap_type.exit.thread
  %cmp.not200 = phi i1 [ %cmp.not192, %efx_filter_get_encap_type.exit.thread ], [ %cmp.not, %efx_filter_get_encap_type.exit._crit_edge ]
  %and198 = phi i32 [ %and191, %efx_filter_get_encap_type.exit.thread ], [ %and, %efx_filter_get_encap_type.exit._crit_edge ]
  %bf.lshr196 = phi i32 [ %bf.lshr190, %efx_filter_get_encap_type.exit.thread ], [ %bf.lshr, %efx_filter_get_encap_type.exit._crit_edge ]
  br label %3

3:                                                ; preds = %2, %efx_filter_get_encap_type.exit._crit_edge201
  %cmp.not199 = phi i1 [ %cmp.not200, %2 ], [ %cmp.not, %efx_filter_get_encap_type.exit._crit_edge201 ]
  %and197 = phi i32 [ %and198, %2 ], [ %and, %efx_filter_get_encap_type.exit._crit_edge201 ]
  %bf.lshr195 = phi i32 [ %bf.lshr196, %2 ], [ %bf.lshr, %efx_filter_get_encap_type.exit._crit_edge201 ]
  %retval.0.i193 = phi i1 [ true, %2 ], [ false, %efx_filter_get_encap_type.exit._crit_edge201 ]
  %4 = phi i32 [ 1, %2 ], [ 4096, %efx_filter_get_encap_type.exit._crit_edge201 ]
  %mcdi_flags.0 = select i1 %cmp.not199, i32 0, i32 %4
  %and2 = and i32 %bf.lshr195, 4092
  call void @__sanitizer_cov_trace_cmp4(i32 %and2, i32 %and197)
  %cmp3.not = icmp eq i32 %and2, %and197
  %shl7 = select i1 %retval.0.i193, i32 2, i32 8192
  %or8 = select i1 %cmp3.not, i32 0, i32 %shl7
  %mcdi_flags.1 = or i32 %mcdi_flags.0, %or8
  %and11 = and i32 %bf.lshr195, 4088
  call void @__sanitizer_cov_trace_cmp4(i32 %and11, i32 %and2)
  %cmp12.not = icmp eq i32 %and11, %and2
  %shl16 = select i1 %retval.0.i193, i32 4, i32 16384
  %or17 = select i1 %cmp12.not, i32 0, i32 %shl16
  %mcdi_flags.2 = or i32 %mcdi_flags.1, %or17
  %and20 = and i32 %bf.lshr195, 4080
  call void @__sanitizer_cov_trace_cmp4(i32 %and20, i32 %and11)
  %cmp21.not = icmp eq i32 %and20, %and11
  %shl25 = select i1 %retval.0.i193, i32 8, i32 32768
  %or26 = select i1 %cmp21.not, i32 0, i32 %shl25
  %mcdi_flags.3 = or i32 %mcdi_flags.2, %or26
  %and29 = and i32 %bf.lshr195, 4064
  call void @__sanitizer_cov_trace_cmp4(i32 %and29, i32 %and20)
  %cmp30.not = icmp eq i32 %and29, %and20
  %shl34 = select i1 %retval.0.i193, i32 16, i32 65536
  %or35 = select i1 %cmp30.not, i32 0, i32 %shl34
  %mcdi_flags.4 = or i32 %mcdi_flags.3, %or35
  %and38 = and i32 %bf.lshr195, 4032
  call void @__sanitizer_cov_trace_cmp4(i32 %and38, i32 %and29)
  %cmp39.not = icmp eq i32 %and38, %and29
  %shl43 = select i1 %retval.0.i193, i32 32, i32 131072
  %or44 = select i1 %cmp39.not, i32 0, i32 %shl43
  %mcdi_flags.5 = or i32 %mcdi_flags.4, %or44
  %and47 = and i32 %bf.lshr195, 3968
  call void @__sanitizer_cov_trace_cmp4(i32 %and47, i32 %and38)
  %cmp48.not = icmp eq i32 %and47, %and38
  %shl52 = select i1 %retval.0.i193, i32 64, i32 262144
  %or53 = select i1 %cmp48.not, i32 0, i32 %shl52
  %mcdi_flags.6 = or i32 %mcdi_flags.5, %or53
  %and56 = and i32 %bf.lshr195, 3456
  call void @__sanitizer_cov_trace_cmp4(i32 %and56, i32 %and47)
  %cmp57.not = icmp eq i32 %and56, %and47
  %shl61 = select i1 %retval.0.i193, i32 512, i32 2097152
  %or62 = select i1 %cmp57.not, i32 0, i32 %shl61
  %mcdi_flags.7 = or i32 %mcdi_flags.6, %or62
  %and65 = and i32 %bf.lshr195, 3328
  call void @__sanitizer_cov_trace_cmp4(i32 %and65, i32 %and56)
  %cmp66.not = icmp eq i32 %and65, %and56
  %or68 = or i32 %mcdi_flags.7, 128
  %mcdi_flags.8 = select i1 %cmp66.not, i32 %mcdi_flags.7, i32 %or68
  %and71 = and i32 %bf.lshr195, 3072
  call void @__sanitizer_cov_trace_cmp4(i32 %and71, i32 %and65)
  %cmp72.not = icmp eq i32 %and71, %and65
  %or74 = or i32 %mcdi_flags.8, 256
  %mcdi_flags.9 = select i1 %cmp72.not, i32 %mcdi_flags.8, i32 %or74
  br i1 %retval.0.i193, label %.if.end81_crit_edge, label %if.then77

.if.end81_crit_edge:                              ; preds = %3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

if.then77:                                        ; preds = %3
  call void @__sanitizer_cov_trace_pc() #15
  %and78 = and i32 %bf.lshr195, 1024
  %or80 = or i32 %mcdi_flags.9, 576
  br label %if.end81

if.end81:                                         ; preds = %if.then77, %.if.end81_crit_edge
  %mcdi_flags.10 = phi i32 [ %or80, %if.then77 ], [ %mcdi_flags.9, %.if.end81_crit_edge ]
  %mc_match.0 = phi i32 [ 24, %if.then77 ], [ 30, %.if.end81_crit_edge ]
  %uc_match.0 = phi i32 [ 25, %if.then77 ], [ 31, %.if.end81_crit_edge ]
  %match_flags.0 = phi i32 [ %and78, %if.then77 ], [ %and71, %.if.end81_crit_edge ]
  %and82 = and i32 %match_flags.0, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %if.end81.if.end91_crit_edge, label %if.then84

if.end81.if.end91_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end91

if.then84:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  %and85 = and i32 %match_flags.0, 2048
  %loc_mac = getelementptr inbounds %struct.efx_filter_spec, ptr %spec, i32 0, i32 4
  %5 = ptrtoint ptr %loc_mac to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %loc_mac, align 4
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not = icmp eq i32 %7, 0
  %mc_match.0.uc_match.0 = select i1 %tobool.i.not, i32 %uc_match.0, i32 %mc_match.0
  %cond89 = shl nuw i32 1, %mc_match.0.uc_match.0
  %or90 = or i32 %cond89, %mcdi_flags.10
  br label %if.end91

if.end91:                                         ; preds = %if.then84, %if.end81.if.end91_crit_edge
  %mcdi_flags.11 = phi i32 [ %or90, %if.then84 ], [ %mcdi_flags.10, %if.end81.if.end91_crit_edge ]
  %match_flags.1 = phi i32 [ %and85, %if.then84 ], [ %match_flags.0, %if.end81.if.end91_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %match_flags.1)
  %tobool92.not = icmp eq i32 %match_flags.1, 0
  br i1 %tobool92.not, label %if.end91.if.end122_crit_edge, label %land.rhs

if.end91.if.end122_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end122

land.rhs:                                         ; preds = %if.end91
  %.b188 = load i1, ptr @efx_mcdi_filter_mcdi_flags_from_spec.__already_done, align 1
  br i1 %.b188, label %land.rhs.if.end122_crit_edge, label %if.then100, !prof !102

land.rhs.if.end122_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end122

if.then100:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @efx_mcdi_filter_mcdi_flags_from_spec.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 320, i32 noundef 9, ptr noundef null) #13
  br label %if.end122

if.end122:                                        ; preds = %if.then100, %land.rhs.if.end122_crit_edge, %if.end91.if.end122_crit_edge
  ret i32 %mcdi_flags.11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @efx_find_rss_context_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efx_mcdi_filter_push(ptr noundef %efx, ptr noundef readonly %spec, ptr nocapture noundef %handle, ptr noundef readonly %ctx, i1 noundef zeroext %replacing) unnamed_addr #0 align 64 {
entry:
  %inbuf = alloca [43 x %union.efx_dword], align 4
  %outbuf = alloca [3 x %union.efx_dword], align 4
  %outlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %inbuf) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %outbuf) #13
  %0 = call ptr @memset(ptr %outbuf, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen) #13
  %1 = ptrtoint ptr %outlen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %outlen, align 4, !annotation !103
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %handle, align 8
  %4 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load.i = load i32, ptr %spec, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 12
  %bf.clear.i = and i32 %bf.lshr.i, 63
  %5 = call ptr @memset(ptr %inbuf, i32 0, i32 172)
  %6 = and i32 %bf.load.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %entry.if.end101.i_crit_edge, label %if.then.i

entry.if.end101.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end101.i

if.then.i:                                        ; preds = %entry
  %tobool1.not.i = icmp eq ptr %ctx, null
  br i1 %tobool1.not.i, label %land.rhs.i, label %if.else.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b235.i = load i1, ptr @efx_mcdi_filter_push_prep.__already_done, align 1
  br i1 %.b235.i, label %land.rhs.i.if.end101.i_crit_edge, label %land.rhs.i.if.end101.sink.split.i_crit_edge, !prof !102

land.rhs.i.if.end101.sink.split.i_crit_edge:      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end101.sink.split.i

land.rhs.i.if.end101.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end101.i

if.else.i:                                        ; preds = %if.then.i
  %context_id.i = getelementptr inbounds %struct.efx_rss_context, ptr %ctx, i32 0, i32 1
  %7 = ptrtoint ptr %context_id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %context_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.i = icmp eq i32 %8, -1
  br i1 %cmp.i, label %land.rhs50.i, label %if.else.i.if.end101.i_crit_edge

if.else.i.if.end101.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end101.i

land.rhs50.i:                                     ; preds = %if.else.i
  %.b233234.i = load i1, ptr @efx_mcdi_filter_push_prep.__already_done.20, align 1
  br i1 %.b233234.i, label %land.rhs50.i.if.end101.i_crit_edge, label %land.rhs50.i.if.end101.sink.split.i_crit_edge, !prof !102

land.rhs50.i.if.end101.sink.split.i_crit_edge:    ; preds = %land.rhs50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end101.sink.split.i

land.rhs50.i.if.end101.i_crit_edge:               ; preds = %land.rhs50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end101.i

if.end101.sink.split.i:                           ; preds = %land.rhs50.i.if.end101.sink.split.i_crit_edge, %land.rhs.i.if.end101.sink.split.i_crit_edge
  %efx_mcdi_filter_push_prep.__already_done.20.sink.i = phi ptr [ @efx_mcdi_filter_push_prep.__already_done, %land.rhs.i.if.end101.sink.split.i_crit_edge ], [ @efx_mcdi_filter_push_prep.__already_done.20, %land.rhs50.i.if.end101.sink.split.i_crit_edge ]
  %.sink.i = phi i32 [ 210, %land.rhs.i.if.end101.sink.split.i_crit_edge ], [ 212, %land.rhs50.i.if.end101.sink.split.i_crit_edge ]
  %9 = ptrtoint ptr %efx_mcdi_filter_push_prep.__already_done.20.sink.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i1 true, ptr %efx_mcdi_filter_push_prep.__already_done.20.sink.i, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef %.sink.i, i32 noundef 9, ptr noundef null) #13
  br label %if.end101.i

if.end101.i:                                      ; preds = %if.end101.sink.split.i, %land.rhs50.i.if.end101.i_crit_edge, %if.else.i.if.end101.i_crit_edge, %land.rhs.i.if.end101.i_crit_edge, %entry.if.end101.i_crit_edge
  %flags.0.i = phi i32 [ %bf.clear.i, %entry.if.end101.i_crit_edge ], [ 0, %land.rhs.i.if.end101.i_crit_edge ], [ %bf.clear.i, %if.else.i.if.end101.i_crit_edge ], [ 0, %land.rhs50.i.if.end101.i_crit_edge ], [ 0, %if.end101.sink.split.i ]
  br i1 %replacing, label %do.body104.i, label %if.else130.i

do.body104.i:                                     ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 67108864, ptr %inbuf, align 4
  %conv.i = trunc i64 %3 to i32
  %11 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #13
  %add.ptr111.i = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 1
  %12 = ptrtoint ptr %add.ptr111.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %add.ptr111.i, align 4
  %shr117.i = lshr i64 %3, 32
  %conv118.i = trunc i64 %shr117.i to i32
  br label %do.body132.i

if.else130.i:                                     ; preds = %if.end101.i
  %13 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load.i.i.i = load i32, ptr %spec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i32 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %if.else130.i.efx_filter_get_encap_type.exit.i.i_crit_edge, label %if.then.i.i.i

if.else130.i.efx_filter_get_encap_type.exit.i.i_crit_edge: ; preds = %if.else130.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_filter_get_encap_type.exit.i.i

if.then.i.i.i:                                    ; preds = %if.else130.i
  call void @__sanitizer_cov_trace_pc() #15
  %encap_type.i.i.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec, i32 0, i32 12
  %14 = ptrtoint ptr %encap_type.i.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load1.i.i.i = load i8, ptr %encap_type.i.i.i, align 4
  %bf.lshr2.i.i.i = lshr i8 %bf.load1.i.i.i, 4
  %bf.cast.i.i.i = zext i8 %bf.lshr2.i.i.i to i32
  br label %efx_filter_get_encap_type.exit.i.i

efx_filter_get_encap_type.exit.i.i:               ; preds = %if.then.i.i.i, %if.else130.i.efx_filter_get_encap_type.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %bf.cast.i.i.i, %if.then.i.i.i ], [ 0, %if.else130.i.efx_filter_get_encap_type.exit.i.i_crit_edge ]
  %15 = and i32 %bf.load.i.i.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i2.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i2.i.i, label %efx_filter_get_encap_type.exit.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

efx_filter_get_encap_type.exit.i.i.if.end.i.i.i_crit_edge: ; preds = %efx_filter_get_encap_type.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %efx_filter_get_encap_type.exit.i.i
  %loc_mac.i.i.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec, i32 0, i32 4
  %16 = ptrtoint ptr %loc_mac.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %loc_mac.i.i.i, align 4
  %18 = and i32 %17, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not.i.i.i = icmp eq i32 %18, 0
  br i1 %tobool.i.not.i.i.i, label %land.lhs.true.i.i.i._crit_edge, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i

land.lhs.true.i.i.i._crit_edge:                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %27

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %efx_filter_get_encap_type.exit.i.i.if.end.i.i.i_crit_edge
  %19 = and i32 %bf.load.i.i.i, 69206016
  call void @__sanitizer_cov_trace_const_cmp4(i32 69206016, i32 %19)
  %cmp.i.i.i = icmp eq i32 %19, 69206016
  br i1 %cmp.i.i.i, label %if.then4.i.i.i, label %if.end.i.i.i.efx_mcdi_filter_is_exclusive.exit.i.i_crit_edge

if.end.i.i.i.efx_mcdi_filter_is_exclusive.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_filter_is_exclusive.exit.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i
  %ether_type.i.i.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec, i32 0, i32 6
  %20 = ptrtoint ptr %ether_type.i.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %ether_type.i.i.i, align 4
  %22 = zext i16 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.43)
  switch i16 %21, label %if.then4.i.i.i.efx_mcdi_filter_is_exclusive.exit.i.i_crit_edge [
    i16 2048, label %land.lhs.true7.i.i.i
    i16 -31011, label %land.lhs.true15.i.i.i
  ]

if.then4.i.i.i.efx_mcdi_filter_is_exclusive.exit.i.i_crit_edge: ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_filter_is_exclusive.exit.i.i

land.lhs.true7.i.i.i:                             ; preds = %if.then4.i.i.i
  %loc_host.i.i.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec, i32 0, i32 8
  %23 = ptrtoint ptr %loc_host.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %loc_host.i.i.i, align 4
  %and.i.i.i.i = and i32 %24, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %and.i.i.i.i, -536870912
  br i1 %cmp.i.i.i.i, label %land.lhs.true7.i.i.i.efx_mcdi_filter_is_exclusive.exit.i.i_crit_edge, label %land.lhs.true7.i.i.i._crit_edge

land.lhs.true7.i.i.i._crit_edge:                  ; preds = %land.lhs.true7.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %27

land.lhs.true7.i.i.i.efx_mcdi_filter_is_exclusive.exit.i.i_crit_edge: ; preds = %land.lhs.true7.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_filter_is_exclusive.exit.i.i

land.lhs.true15.i.i.i:                            ; preds = %if.then4.i.i.i
  %loc_host16.i.i.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec, i32 0, i32 8
  %25 = ptrtoint ptr %loc_host16.i.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %loc_host16.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %26)
  %cmp20.not.i.i.i = icmp eq i8 %26, -1
  br i1 %cmp20.not.i.i.i, label %land.lhs.true15.i.i.i.efx_mcdi_filter_is_exclusive.exit.i.i_crit_edge, label %land.lhs.true15.i.i.i._crit_edge

land.lhs.true15.i.i.i._crit_edge:                 ; preds = %land.lhs.true15.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %27

land.lhs.true15.i.i.i.efx_mcdi_filter_is_exclusive.exit.i.i_crit_edge: ; preds = %land.lhs.true15.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_filter_is_exclusive.exit.i.i

27:                                               ; preds = %land.lhs.true15.i.i.i._crit_edge, %land.lhs.true7.i.i.i._crit_edge, %land.lhs.true.i.i.i._crit_edge
  br label %efx_mcdi_filter_is_exclusive.exit.i.i

efx_mcdi_filter_is_exclusive.exit.i.i:            ; preds = %27, %land.lhs.true15.i.i.i.efx_mcdi_filter_is_exclusive.exit.i.i_crit_edge, %land.lhs.true7.i.i.i.efx_mcdi_filter_is_exclusive.exit.i.i_crit_edge, %if.then4.i.i.i.efx_mcdi_filter_is_exclusive.exit.i.i_crit_edge, %if.end.i.i.i.efx_mcdi_filter_is_exclusive.exit.i.i_crit_edge
  %28 = phi i32 [ 0, %27 ], [ 33554432, %if.end.i.i.i.efx_mcdi_filter_is_exclusive.exit.i.i_crit_edge ], [ 33554432, %if.then4.i.i.i.efx_mcdi_filter_is_exclusive.exit.i.i_crit_edge ], [ 33554432, %land.lhs.true7.i.i.i.efx_mcdi_filter_is_exclusive.exit.i.i_crit_edge ], [ 33554432, %land.lhs.true15.i.i.i.efx_mcdi_filter_is_exclusive.exit.i.i_crit_edge ]
  %29 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %inbuf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %tobool.not.i.i = icmp eq i32 %retval.0.i.i.i, 0
  br i1 %tobool.not.i.i, label %efx_mcdi_filter_is_exclusive.exit.i.i.if.end69.i.i_crit_edge, label %if.then.i.i

efx_mcdi_filter_is_exclusive.exit.i.i.if.end69.i.i_crit_edge: ; preds = %efx_mcdi_filter_is_exclusive.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69.i.i

if.then.i.i:                                      ; preds = %efx_mcdi_filter_is_exclusive.exit.i.i
  %and.i.i = and i32 %retval.0.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool3.not.i.i = icmp eq i32 %and.i.i, 0
  %conv5.i.i = select i1 %tobool3.not.i.i, i16 2048, i16 -31011
  %and6.i.i = and i32 %retval.0.i.i.i, 7
  %30 = zext i32 %and6.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %and6.i.i, label %do.end57.i.i [
    i32 1, label %sw.bb.i.i
    i32 3, label %if.then.i.i.do.body8.i.i_crit_edge
    i32 2, label %do.body34.i.i
  ]

if.then.i.i.do.body8.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body8.i.i

sw.bb.i.i:                                        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body8.i.i

do.body8.i.i:                                     ; preds = %sw.bb.i.i, %if.then.i.i.do.body8.i.i_crit_edge
  %vni_type.0.i.i = phi i32 [ 1, %if.then.i.i.do.body8.i.i_crit_edge ], [ 0, %sw.bb.i.i ]
  %add.ptr13.i.i = getelementptr inbounds i8, ptr %inbuf, i32 60
  %31 = ptrtoint ptr %add.ptr13.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv5.i.i, ptr %add.ptr13.i.i, align 4
  %add.ptr21.i.i = getelementptr inbounds i8, ptr %inbuf, i32 66
  %32 = ptrtoint ptr %add.ptr21.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 17, ptr %add.ptr21.i.i, align 2
  %add.ptr29.i.i = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 18
  %33 = ptrtoint ptr %add.ptr29.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %vni_type.0.i.i, ptr %add.ptr29.i.i, align 4
  br label %if.end69.i.i

do.body34.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr39.i.i = getelementptr inbounds i8, ptr %inbuf, i32 60
  %34 = ptrtoint ptr %add.ptr39.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv5.i.i, ptr %add.ptr39.i.i, align 4
  %add.ptr47.i.i = getelementptr inbounds i8, ptr %inbuf, i32 66
  %35 = ptrtoint ptr %add.ptr47.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 47, ptr %add.ptr47.i.i, align 2
  br label %if.end69.i.i

do.end57.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 163, i32 noundef 9, ptr noundef null) #13
  br label %if.end69.i.i

if.end69.i.i:                                     ; preds = %do.end57.i.i, %do.body34.i.i, %do.body8.i.i, %efx_mcdi_filter_is_exclusive.exit.i.i.if.end69.i.i_crit_edge
  %match_fields.1.i.i = phi i32 [ 0, %do.end57.i.i ], [ 576, %do.body34.i.i ], [ 576, %do.body8.i.i ], [ 0, %efx_mcdi_filter_is_exclusive.exit.i.i.if.end69.i.i_crit_edge ]
  %uc_match.0.i.i = phi i32 [ 25, %do.end57.i.i ], [ 25, %do.body34.i.i ], [ 25, %do.body8.i.i ], [ 31, %efx_mcdi_filter_is_exclusive.exit.i.i.if.end69.i.i_crit_edge ]
  %mc_match.0.i.i = phi i32 [ 24, %do.end57.i.i ], [ 24, %do.body34.i.i ], [ 24, %do.body8.i.i ], [ 30, %efx_mcdi_filter_is_exclusive.exit.i.i.if.end69.i.i_crit_edge ]
  %36 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %36)
  %bf.load.i.i = load i32, ptr %spec, align 4
  %37 = and i32 %bf.load.i.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool71.not.i.i = icmp eq i32 %37, 0
  br i1 %tobool71.not.i.i, label %if.end69.i.i.if.end79.i.i_crit_edge, label %if.then72.i.i

if.end69.i.i.if.end79.i.i_crit_edge:              ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79.i.i

if.then72.i.i:                                    ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %loc_mac.i.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec, i32 0, i32 4
  %38 = ptrtoint ptr %loc_mac.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %loc_mac.i.i, align 4
  %40 = and i32 %39, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.i.not.i.i = icmp eq i32 %40, 0
  %mc_match.0.uc_match.0.i.i = select i1 %tobool.i.not.i.i, i32 %uc_match.0.i.i, i32 %mc_match.0.i.i
  %cond77.i.i = shl nuw i32 1, %mc_match.0.uc_match.0.i.i
  %or78.i.i = or i32 %cond77.i.i, %match_fields.1.i.i
  br label %if.end79.i.i

if.end79.i.i:                                     ; preds = %if.then72.i.i, %if.end69.i.i.if.end79.i.i_crit_edge
  %match_fields.2.i.i = phi i32 [ %or78.i.i, %if.then72.i.i ], [ %match_fields.1.i.i, %if.end69.i.i.if.end79.i.i_crit_edge ]
  %41 = and i32 %bf.load.i.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool83.not.i.i = icmp eq i32 %41, 0
  br i1 %tobool83.not.i.i, label %if.end79.i.i.if.end93.i.i_crit_edge, label %do.body85.i.i

if.end79.i.i.if.end93.i.i_crit_edge:              ; preds = %if.end79.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end93.i.i

do.body85.i.i:                                    ; preds = %if.end79.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %or86.i.i = or i32 %match_fields.2.i.i, 1
  %add.ptr90.i.i = getelementptr inbounds i8, ptr %inbuf, i32 76
  %rem_host.i.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec, i32 0, i32 9
  %42 = call ptr @memcpy(ptr %add.ptr90.i.i, ptr %rem_host.i.i, i32 16)
  br label %if.end93.i.i

if.end93.i.i:                                     ; preds = %do.body85.i.i, %if.end79.i.i.if.end93.i.i_crit_edge
  %match_fields.3.i.i = phi i32 [ %or86.i.i, %do.body85.i.i ], [ %match_fields.2.i.i, %if.end79.i.i.if.end93.i.i_crit_edge ]
  %43 = and i32 %bf.load.i.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool97.not.i.i = icmp eq i32 %43, 0
  br i1 %tobool97.not.i.i, label %if.end93.i.i.if.end107.i.i_crit_edge, label %do.body99.i.i

if.end93.i.i.if.end107.i.i_crit_edge:             ; preds = %if.end93.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end107.i.i

do.body99.i.i:                                    ; preds = %if.end93.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %or100.i.i = or i32 %match_fields.3.i.i, 2
  %add.ptr104.i.i = getelementptr inbounds i8, ptr %inbuf, i32 92
  %loc_host.i.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec, i32 0, i32 8
  %44 = call ptr @memcpy(ptr %add.ptr104.i.i, ptr %loc_host.i.i, i32 16)
  br label %if.end107.i.i

if.end107.i.i:                                    ; preds = %do.body99.i.i, %if.end93.i.i.if.end107.i.i_crit_edge
  %match_fields.4.i.i = phi i32 [ %or100.i.i, %do.body99.i.i ], [ %match_fields.3.i.i, %if.end93.i.i.if.end107.i.i_crit_edge ]
  %45 = and i32 %bf.load.i.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool111.not.i.i = icmp eq i32 %45, 0
  br i1 %tobool111.not.i.i, label %if.end107.i.i.if.end121.i.i_crit_edge, label %do.body113.i.i

if.end107.i.i.if.end121.i.i_crit_edge:            ; preds = %if.end107.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end121.i.i

do.body113.i.i:                                   ; preds = %if.end107.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %or114.i.i = or i32 %match_fields.4.i.i, 4
  %add.ptr118.i.i = getelementptr inbounds i8, ptr %inbuf, i32 44
  %rem_mac.i.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec, i32 0, i32 5
  %46 = call ptr @memcpy(ptr %add.ptr118.i.i, ptr %rem_mac.i.i, i32 6)
  br label %if.end121.i.i

if.end121.i.i:                                    ; preds = %do.body113.i.i, %if.end107.i.i.if.end121.i.i_crit_edge
  %match_fields.5.i.i = phi i32 [ %or114.i.i, %do.body113.i.i ], [ %match_fields.4.i.i, %if.end107.i.i.if.end121.i.i_crit_edge ]
  %47 = and i32 %bf.load.i.i, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool125.not.i.i = icmp eq i32 %47, 0
  br i1 %tobool125.not.i.i, label %if.end121.i.i.if.end135.i.i_crit_edge, label %do.body127.i.i

if.end121.i.i.if.end135.i.i_crit_edge:            ; preds = %if.end121.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end135.i.i

do.body127.i.i:                                   ; preds = %if.end121.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %or128.i.i = or i32 %match_fields.5.i.i, 8
  %add.ptr132.i.i = getelementptr inbounds i8, ptr %inbuf, i32 50
  %rem_port.i.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec, i32 0, i32 11
  %48 = ptrtoint ptr %rem_port.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %rem_port.i.i, align 2
  %50 = ptrtoint ptr %add.ptr132.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %add.ptr132.i.i, align 2
  br label %if.end135.i.i

if.end135.i.i:                                    ; preds = %do.body127.i.i, %if.end121.i.i.if.end135.i.i_crit_edge
  %match_fields.6.i.i = phi i32 [ %or128.i.i, %do.body127.i.i ], [ %match_fields.5.i.i, %if.end121.i.i.if.end135.i.i_crit_edge ]
  %51 = and i32 %bf.load.i.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool139.not.i.i = icmp eq i32 %51, 0
  br i1 %tobool139.not.i.i, label %if.end135.i.i.if.end150.i.i_crit_edge, label %do.body141.i.i

if.end135.i.i.if.end150.i.i_crit_edge:            ; preds = %if.end135.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end150.i.i

do.body141.i.i:                                   ; preds = %if.end135.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %or142.i.i = or i32 %match_fields.6.i.i, 16
  %add.ptr146.i.i = getelementptr inbounds i8, ptr %inbuf, i32 52
  %loc_mac147.i.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec, i32 0, i32 4
  %52 = call ptr @memcpy(ptr %add.ptr146.i.i, ptr %loc_mac147.i.i, i32 6)
  br label %if.end150.i.i

if.end150.i.i:                                    ; preds = %do.body141.i.i, %if.end135.i.i.if.end150.i.i_crit_edge
  %match_fields.7.i.i = phi i32 [ %or142.i.i, %do.body141.i.i ], [ %match_fields.6.i.i, %if.end135.i.i.if.end150.i.i_crit_edge ]
  %53 = and i32 %bf.load.i.i, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool154.not.i.i = icmp eq i32 %53, 0
  br i1 %tobool154.not.i.i, label %if.end150.i.i.if.end164.i.i_crit_edge, label %do.body156.i.i

if.end150.i.i.if.end164.i.i_crit_edge:            ; preds = %if.end150.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end164.i.i

do.body156.i.i:                                   ; preds = %if.end150.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %or157.i.i = or i32 %match_fields.7.i.i, 32
  %add.ptr161.i.i = getelementptr inbounds i8, ptr %inbuf, i32 58
  %loc_port.i.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec, i32 0, i32 10
  %54 = ptrtoint ptr %loc_port.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %loc_port.i.i, align 4
  %56 = ptrtoint ptr %add.ptr161.i.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %add.ptr161.i.i, align 2
  br label %if.end164.i.i

if.end164.i.i:                                    ; preds = %do.body156.i.i, %if.end150.i.i.if.end164.i.i_crit_edge
  %match_fields.8.i.i = phi i32 [ %or157.i.i, %do.body156.i.i ], [ %match_fields.7.i.i, %if.end150.i.i.if.end164.i.i_crit_edge ]
  %57 = and i32 %bf.load.i.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool168.not.i.i = icmp eq i32 %57, 0
  br i1 %tobool168.not.i.i, label %if.end164.i.i.if.end179.i.i_crit_edge, label %do.body170.i.i

if.end164.i.i.if.end179.i.i_crit_edge:            ; preds = %if.end164.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end179.i.i

do.body170.i.i:                                   ; preds = %if.end164.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %or171.i.i = or i32 %match_fields.8.i.i, 64
  %add.ptr175.i.i = getelementptr inbounds i8, ptr %inbuf, i32 60
  %ether_type176.i.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec, i32 0, i32 6
  %58 = ptrtoint ptr %ether_type176.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %ether_type176.i.i, align 4
  %60 = ptrtoint ptr %add.ptr175.i.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %add.ptr175.i.i, align 4
  br label %if.end179.i.i

if.end179.i.i:                                    ; preds = %do.body170.i.i, %if.end164.i.i.if.end179.i.i_crit_edge
  %match_fields.9.i.i = phi i32 [ %or171.i.i, %do.body170.i.i ], [ %match_fields.8.i.i, %if.end164.i.i.if.end179.i.i_crit_edge ]
  %61 = and i32 %bf.load.i.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool183.not.i.i = icmp eq i32 %61, 0
  br i1 %tobool183.not.i.i, label %if.end179.i.i.if.end193.i.i_crit_edge, label %do.body185.i.i

if.end179.i.i.if.end193.i.i_crit_edge:            ; preds = %if.end179.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end193.i.i

do.body185.i.i:                                   ; preds = %if.end179.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %or186.i.i = or i32 %match_fields.9.i.i, 128
  %add.ptr190.i.i = getelementptr inbounds i8, ptr %inbuf, i32 62
  %inner_vid.i.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec, i32 0, i32 3
  %62 = ptrtoint ptr %inner_vid.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %inner_vid.i.i, align 2
  %64 = ptrtoint ptr %add.ptr190.i.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %add.ptr190.i.i, align 2
  br label %if.end193.i.i

if.end193.i.i:                                    ; preds = %do.body185.i.i, %if.end179.i.i.if.end193.i.i_crit_edge
  %match_fields.10.i.i = phi i32 [ %or186.i.i, %do.body185.i.i ], [ %match_fields.9.i.i, %if.end179.i.i.if.end193.i.i_crit_edge ]
  %65 = and i32 %bf.load.i.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool197.not.i.i = icmp eq i32 %65, 0
  br i1 %tobool197.not.i.i, label %if.end193.i.i.if.end207.i.i_crit_edge, label %do.body199.i.i

if.end193.i.i.if.end207.i.i_crit_edge:            ; preds = %if.end193.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end207.i.i

do.body199.i.i:                                   ; preds = %if.end193.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %or200.i.i = or i32 %match_fields.10.i.i, 256
  %add.ptr204.i.i = getelementptr inbounds i8, ptr %inbuf, i32 64
  %outer_vid.i.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec, i32 0, i32 2
  %66 = ptrtoint ptr %outer_vid.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %outer_vid.i.i, align 4
  %68 = ptrtoint ptr %add.ptr204.i.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %add.ptr204.i.i, align 4
  br label %if.end207.i.i

if.end207.i.i:                                    ; preds = %do.body199.i.i, %if.end193.i.i.if.end207.i.i_crit_edge
  %match_fields.11.i.i = phi i32 [ %or200.i.i, %do.body199.i.i ], [ %match_fields.10.i.i, %if.end193.i.i.if.end207.i.i_crit_edge ]
  %69 = and i32 %bf.load.i.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool211.not.i.i = icmp eq i32 %69, 0
  br i1 %tobool211.not.i.i, label %if.end207.i.i.do.body132.i_crit_edge, label %do.body213.i.i

if.end207.i.i.do.body132.i_crit_edge:             ; preds = %if.end207.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body132.i

do.body213.i.i:                                   ; preds = %if.end207.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %or214.i.i = or i32 %match_fields.11.i.i, 512
  %add.ptr218.i.i = getelementptr inbounds i8, ptr %inbuf, i32 66
  %ip_proto.i.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec, i32 0, i32 7
  %70 = ptrtoint ptr %ip_proto.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %ip_proto.i.i, align 2
  %72 = ptrtoint ptr %add.ptr218.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %add.ptr218.i.i, align 2
  br label %do.body132.i

do.body132.i:                                     ; preds = %do.body213.i.i, %if.end207.i.i.do.body132.i_crit_edge, %do.body104.i
  %match_fields.12.i.i.sink = phi i32 [ %conv118.i, %do.body104.i ], [ %or214.i.i, %do.body213.i.i ], [ %match_fields.11.i.i, %if.end207.i.i.do.body132.i_crit_edge ]
  %.sink239.i = phi i32 [ 2, %do.body104.i ], [ 4, %do.body213.i.i ], [ 4, %if.end207.i.i.do.body132.i_crit_edge ]
  %73 = tail call i32 @llvm.bswap.i32(i32 %match_fields.12.i.i.sink) #13
  %arrayidx124.i = getelementptr %union.efx_dword, ptr %inbuf, i32 %.sink239.i
  %74 = ptrtoint ptr %arrayidx124.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %arrayidx124.i, align 4
  %vport_id.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 66
  %75 = ptrtoint ptr %vport_id.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %vport_id.i, align 8
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #13
  %add.ptr137.i = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 3
  %78 = ptrtoint ptr %add.ptr137.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %add.ptr137.i, align 4
  %79 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %79)
  %bf.load142.i = load i32, ptr %spec, align 4
  %bf.clear143.i = and i32 %bf.load142.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %bf.clear143.i)
  %cmp144.not.i = icmp eq i32 %bf.clear143.i, 4095
  %80 = select i1 %cmp144.not.i, i32 0, i32 16777216
  %add.ptr150.i = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 5
  %81 = ptrtoint ptr %add.ptr150.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %add.ptr150.i, align 4
  %add.ptr155.i = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 9
  %82 = ptrtoint ptr %add.ptr155.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %add.ptr155.i, align 4
  %add.ptr160.i = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 10
  %83 = ptrtoint ptr %add.ptr160.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 -1, ptr %add.ptr160.i, align 4
  %spec.select237.i = select i1 %cmp144.not.i, i32 0, i32 %bf.clear143.i
  %84 = tail call i32 @llvm.bswap.i32(i32 %spec.select237.i) #13
  %add.ptr176.i = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 6
  %85 = ptrtoint ptr %add.ptr176.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %add.ptr176.i, align 4
  %and181.i = and i32 %flags.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181.i)
  %tobool182.not.i = icmp eq i32 %and181.i, 0
  %86 = shl nuw nsw i32 %and181.i, 24
  %add.ptr188.i = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 7
  %87 = ptrtoint ptr %add.ptr188.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %add.ptr188.i, align 4
  br i1 %tobool182.not.i, label %do.body132.i.efx_mcdi_filter_push_prep.exit_crit_edge, label %do.body195.i

do.body132.i.efx_mcdi_filter_push_prep.exit_crit_edge: ; preds = %do.body132.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_filter_push_prep.exit

do.body195.i:                                     ; preds = %do.body132.i
  call void @__sanitizer_cov_trace_pc() #15
  %context_id196.i = getelementptr inbounds %struct.efx_rss_context, ptr %ctx, i32 0, i32 1
  %88 = ptrtoint ptr %context_id196.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %context_id196.i, align 4
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #13
  %add.ptr201.i = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 8
  %91 = ptrtoint ptr %add.ptr201.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %add.ptr201.i, align 4
  br label %efx_mcdi_filter_push_prep.exit

efx_mcdi_filter_push_prep.exit:                   ; preds = %do.body195.i, %do.body132.i.efx_mcdi_filter_push_prep.exit_crit_edge
  %call = call i32 @efx_mcdi_rpc_quiet(ptr noundef %efx, i32 noundef 138, ptr noundef nonnull %inbuf, i32 noundef 172, ptr noundef nonnull %outbuf, i32 noundef 12, ptr noundef nonnull %outlen) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cond = icmp eq i32 %call, 0
  br i1 %cond, label %if.then6, label %land.lhs.true

land.lhs.true:                                    ; preds = %efx_mcdi_filter_push_prep.exit
  %92 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %92)
  %bf.load = load i32, ptr %spec, align 4
  %93 = and i32 %bf.load, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp.not = icmp eq i32 %93, 0
  br i1 %cmp.not, label %land.lhs.true.if.end17_crit_edge, label %if.then

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %94 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %outlen, align 4
  call void @efx_mcdi_display_error(ptr noundef %efx, i32 noundef 138, i32 noundef 172, ptr noundef nonnull %outbuf, i32 noundef %95, i32 noundef %call) #13
  br label %if.end17

if.then6:                                         ; preds = %efx_mcdi_filter_push_prep.exit
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 1
  %96 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %add.ptr, align 4
  %arrayidx11 = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 2
  %98 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx11, align 4
  %100 = zext i32 %99 to i64
  %101 = zext i32 %97 to i64
  %102 = shl nuw i64 %101, 32
  %103 = or i64 %102, %100
  %104 = call i64 @llvm.bswap.i64(i64 %103)
  %105 = ptrtoint ptr %handle to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %104, ptr %handle, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then6, %if.then, %land.lhs.true.if.end17_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call)
  %cmp18 = icmp eq i32 %call, -28
  %spec.store.select = select i1 %cmp18, i32 -16, i32 %call
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %outbuf) #13
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %inbuf) #13
  ret i32 %spec.store.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_mcdi_filter_table_down(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  %inbuf = alloca [43 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 8
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %inbuf) #13
  %2 = call ptr @memset(ptr %inbuf, i32 0, i32 172)
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %filter_sem.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 108
  %call.i.i = tail call i32 @down_read_trylock(ptr noundef %filter_sem.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end2.i, label %efx_rwsem_assert_write_locked.exit.thread.i, !prof !102

efx_rwsem_assert_write_locked.exit.thread.i:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 227, i32 noundef 9, ptr noundef null) #13
  tail call void @up_read(ptr noundef %filter_sem.i) #13
  br label %efx_mcdi_filter_cleanup_vlans.exit

if.end2.i:                                        ; preds = %if.end
  %vlan_list.i = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 17
  %3 = ptrtoint ptr %vlan_list.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vlan_list.i, align 4
  %cmp.not26.i = icmp eq ptr %4, %vlan_list.i
  br i1 %cmp.not26.i, label %if.end2.i.efx_mcdi_filter_cleanup_vlans.exit_crit_edge, label %if.end2.i.for.body.i_crit_edge

if.end2.i.for.body.i_crit_edge:                   ; preds = %if.end2.i
  br label %for.body.i

if.end2.i.efx_mcdi_filter_cleanup_vlans.exit_crit_edge: ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_filter_cleanup_vlans.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end2.i.for.body.i_crit_edge
  %vlan.027.i = phi ptr [ %next_vlan.0.i, %for.body.i.for.body.i_crit_edge ], [ %4, %if.end2.i.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %vlan.027.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %next_vlan.0.i = load ptr, ptr %vlan.027.i, align 4
  tail call fastcc void @efx_mcdi_filter_del_vlan_internal(ptr noundef %efx, ptr noundef %vlan.027.i) #13
  %cmp.not.i = icmp eq ptr %next_vlan.0.i, %vlan_list.i
  br i1 %cmp.not.i, label %for.body.i.efx_mcdi_filter_cleanup_vlans.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.efx_mcdi_filter_cleanup_vlans.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_filter_cleanup_vlans.exit

efx_mcdi_filter_cleanup_vlans.exit:               ; preds = %for.body.i.efx_mcdi_filter_cleanup_vlans.exit_crit_edge, %if.end2.i.efx_mcdi_filter_cleanup_vlans.exit_crit_edge, %efx_rwsem_assert_write_locked.exit.thread.i
  %entry1.i = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 4
  %add.ptr16 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 1
  %arrayidx33 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 2
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %efx_mcdi_filter_cleanup_vlans.exit
  %filter_idx.070 = phi i32 [ 0, %efx_mcdi_filter_cleanup_vlans.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %entry1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %entry1.i, align 4
  %arrayidx.i = getelementptr %struct.anon.153, ptr %7, i32 %filter_idx.070
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 8
  %and.i = and i32 %9, -4
  %10 = inttoptr i32 %and.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not = icmp eq i32 %and.i, 0
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %do.body

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

do.body:                                          ; preds = %for.body
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load.i = load i32, ptr %10, align 4
  %12 = and i32 %bf.load.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i68 = icmp eq i32 %12, 0
  br i1 %tobool.not.i68, label %do.body.if.end.i_crit_edge, label %land.lhs.true.i

do.body.if.end.i_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %do.body
  %loc_mac.i = getelementptr inbounds %struct.efx_filter_spec, ptr %10, i32 0, i32 4
  %13 = ptrtoint ptr %loc_mac.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %loc_mac.i, align 4
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not.i = icmp eq i32 %15, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i._crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i._crit_edge:                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %24

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %do.body.if.end.i_crit_edge
  %16 = and i32 %bf.load.i, 69206016
  call void @__sanitizer_cov_trace_const_cmp4(i32 69206016, i32 %16)
  %cmp.i = icmp eq i32 %16, 69206016
  br i1 %cmp.i, label %if.then4.i, label %if.end.i.efx_mcdi_filter_is_exclusive.exit_crit_edge

if.end.i.efx_mcdi_filter_is_exclusive.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_filter_is_exclusive.exit

if.then4.i:                                       ; preds = %if.end.i
  %ether_type.i = getelementptr inbounds %struct.efx_filter_spec, ptr %10, i32 0, i32 6
  %17 = ptrtoint ptr %ether_type.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %ether_type.i, align 4
  %19 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.45)
  switch i16 %18, label %if.then4.i.efx_mcdi_filter_is_exclusive.exit_crit_edge [
    i16 2048, label %land.lhs.true7.i
    i16 -31011, label %land.lhs.true15.i
  ]

if.then4.i.efx_mcdi_filter_is_exclusive.exit_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_filter_is_exclusive.exit

land.lhs.true7.i:                                 ; preds = %if.then4.i
  %loc_host.i = getelementptr inbounds %struct.efx_filter_spec, ptr %10, i32 0, i32 8
  %20 = ptrtoint ptr %loc_host.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %loc_host.i, align 4
  %and.i.i = and i32 %21, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, -536870912
  br i1 %cmp.i.i, label %land.lhs.true7.i.efx_mcdi_filter_is_exclusive.exit_crit_edge, label %land.lhs.true7.i._crit_edge

land.lhs.true7.i._crit_edge:                      ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %24

land.lhs.true7.i.efx_mcdi_filter_is_exclusive.exit_crit_edge: ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_filter_is_exclusive.exit

land.lhs.true15.i:                                ; preds = %if.then4.i
  %loc_host16.i = getelementptr inbounds %struct.efx_filter_spec, ptr %10, i32 0, i32 8
  %22 = ptrtoint ptr %loc_host16.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %loc_host16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %23)
  %cmp20.not.i = icmp eq i8 %23, -1
  br i1 %cmp20.not.i, label %land.lhs.true15.i.efx_mcdi_filter_is_exclusive.exit_crit_edge, label %land.lhs.true15.i._crit_edge

land.lhs.true15.i._crit_edge:                     ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %24

land.lhs.true15.i.efx_mcdi_filter_is_exclusive.exit_crit_edge: ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_filter_is_exclusive.exit

24:                                               ; preds = %land.lhs.true15.i._crit_edge, %land.lhs.true7.i._crit_edge, %land.lhs.true.i._crit_edge
  br label %efx_mcdi_filter_is_exclusive.exit

efx_mcdi_filter_is_exclusive.exit:                ; preds = %24, %land.lhs.true15.i.efx_mcdi_filter_is_exclusive.exit_crit_edge, %land.lhs.true7.i.efx_mcdi_filter_is_exclusive.exit_crit_edge, %if.then4.i.efx_mcdi_filter_is_exclusive.exit_crit_edge, %if.end.i.efx_mcdi_filter_is_exclusive.exit_crit_edge
  %25 = phi i32 [ 16777216, %24 ], [ 50331648, %if.end.i.efx_mcdi_filter_is_exclusive.exit_crit_edge ], [ 50331648, %if.then4.i.efx_mcdi_filter_is_exclusive.exit_crit_edge ], [ 50331648, %land.lhs.true7.i.efx_mcdi_filter_is_exclusive.exit_crit_edge ], [ 50331648, %land.lhs.true15.i.efx_mcdi_filter_is_exclusive.exit_crit_edge ]
  %26 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %inbuf, align 4
  %handle = getelementptr %struct.anon.153, ptr %7, i32 %filter_idx.070, i32 1
  %27 = ptrtoint ptr %handle to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %handle, align 8
  %conv10 = trunc i64 %28 to i32
  %29 = call i32 @llvm.bswap.i32(i32 %conv10)
  %30 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %add.ptr16, align 4
  %31 = ptrtoint ptr %handle to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %handle, align 8
  %shr25 = lshr i64 %32, 32
  %conv26 = trunc i64 %shr25 to i32
  %33 = call i32 @llvm.bswap.i32(i32 %conv26)
  %34 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx33, align 4
  %call40 = call i32 @efx_mcdi_rpc_quiet(ptr noundef %efx, i32 noundef 138, ptr noundef nonnull %inbuf, i32 noundef 172, ptr noundef null, i32 noundef 0, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %efx_mcdi_filter_is_exclusive.exit.if.end49_crit_edge, label %do.body43

efx_mcdi_filter_is_exclusive.exit.if.end49_crit_edge: ; preds = %efx_mcdi_filter_is_exclusive.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

do.body43:                                        ; preds = %efx_mcdi_filter_is_exclusive.exit
  %35 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %msg_enable, align 4
  %and = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool44.not = icmp eq i32 %and, 0
  br i1 %tobool44.not, label %do.body43.if.end49_crit_edge, label %if.then45

do.body43.if.end49_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.then45:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %net_dev, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %38, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.efx_mcdi_filter_table_down, i32 noundef %filter_idx.070) #17
  br label %if.end49

if.end49:                                         ; preds = %if.then45, %do.body43.if.end49_crit_edge, %efx_mcdi_filter_is_exclusive.exit.if.end49_crit_edge
  call void @kfree(ptr noundef nonnull %10) #13
  br label %for.inc

for.inc:                                          ; preds = %if.end49, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %filter_idx.070, 1
  %exitcond.not = icmp eq i32 %inc, 8192
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %inbuf) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_mcdi_filter_cleanup_vlans(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 8
  %filter_sem = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 108
  %call.i = tail call i32 @down_read_trylock(ptr noundef %filter_sem) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %efx_rwsem_assert_write_locked.exit, label %efx_rwsem_assert_write_locked.exit.thread, !prof !102

efx_rwsem_assert_write_locked.exit.thread:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 227, i32 noundef 9, ptr noundef null) #13
  tail call void @up_read(ptr noundef %filter_sem) #13
  br label %cleanup

efx_rwsem_assert_write_locked.exit:               ; preds = %entry
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %efx_rwsem_assert_write_locked.exit.cleanup_crit_edge, label %if.end2

efx_rwsem_assert_write_locked.exit.cleanup_crit_edge: ; preds = %efx_rwsem_assert_write_locked.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end2:                                          ; preds = %efx_rwsem_assert_write_locked.exit
  %vlan_list = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %vlan_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vlan_list, align 4
  %cmp.not26 = icmp eq ptr %3, %vlan_list
  br i1 %cmp.not26, label %if.end2.cleanup_crit_edge, label %if.end2.for.body_crit_edge

if.end2.for.body_crit_edge:                       ; preds = %if.end2
  br label %for.body

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end2.for.body_crit_edge
  %vlan.027 = phi ptr [ %next_vlan.0, %for.body.for.body_crit_edge ], [ %3, %if.end2.for.body_crit_edge ]
  %4 = ptrtoint ptr %vlan.027 to i32
  call void @__asan_load4_noabort(i32 %4)
  %next_vlan.0 = load ptr, ptr %vlan.027, align 4
  tail call fastcc void @efx_mcdi_filter_del_vlan_internal(ptr noundef %efx, ptr noundef %vlan.027)
  %cmp.not = icmp eq ptr %next_vlan.0, %vlan_list
  br i1 %cmp.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %efx_rwsem_assert_write_locked.exit.cleanup_crit_edge, %efx_rwsem_assert_write_locked.exit.thread
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_rpc_quiet(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_mcdi_filter_table_remove(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 8
  tail call void @efx_mcdi_filter_table_down(ptr noundef %efx)
  %2 = ptrtoint ptr %filter_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %filter_state, align 8
  %filter_sem = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 108
  %call.i = tail call i32 @down_read_trylock(ptr noundef %filter_sem) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %efx_rwsem_assert_write_locked.exit, label %efx_rwsem_assert_write_locked.exit.thread, !prof !102

efx_rwsem_assert_write_locked.exit.thread:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 227, i32 noundef 9, ptr noundef null) #13
  tail call void @up_read(ptr noundef %filter_sem) #13
  br label %cleanup

efx_rwsem_assert_write_locked.exit:               ; preds = %entry
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %efx_rwsem_assert_write_locked.exit.cleanup_crit_edge, label %if.end3

efx_rwsem_assert_write_locked.exit.cleanup_crit_edge: ; preds = %efx_rwsem_assert_write_locked.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %efx_rwsem_assert_write_locked.exit
  call void @__sanitizer_cov_trace_pc() #15
  %entry4 = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %entry4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %entry4, align 4
  tail call void @vfree(ptr noundef %4) #13
  tail call void @kfree(ptr noundef nonnull %1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %efx_rwsem_assert_write_locked.exit.cleanup_crit_edge, %efx_rwsem_assert_write_locked.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_filter_add_vlan(ptr noundef %efx, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 8
  %filter_sem = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 108
  %call.i = tail call i32 @down_read_trylock(ptr noundef %filter_sem) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %efx_rwsem_assert_write_locked.exit, !prof !102

efx_rwsem_assert_write_locked.exit:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 227, i32 noundef 9, ptr noundef null) #13
  tail call void @up_read(ptr noundef %filter_sem) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %filter_state, align 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %filter_sem, i32 noundef 4) #13
  %4 = ptrtoint ptr %filter_sem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %filter_sem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.not.i = icmp eq i32 %5, 0
  br i1 %cmp.i.not.i, label %do.end.i84, label %if.end.if.end.i_crit_edge, !prof !100

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i84:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1655, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i84, %if.end.if.end.i_crit_edge
  %vlan_list.i = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %3, i32 0, i32 17
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %vlan.0.in.i = phi ptr [ %vlan_list.i, %if.end.i ], [ %vlan.0.i, %for.body.i.for.cond.i_crit_edge ]
  %6 = ptrtoint ptr %vlan.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %vlan.0.i = load ptr, ptr %vlan.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %vlan.0.i, %vlan_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.end31_crit_edge, label %for.body.i

for.cond.i.if.end31_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

for.body.i:                                       ; preds = %for.cond.i
  %vid25.i = getelementptr inbounds %struct.efx_mcdi_filter_vlan, ptr %vlan.0.i, i32 0, i32 1
  %7 = ptrtoint ptr %vid25.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vid25.i, align 4
  %cmp27.i = icmp eq i16 %8, %vid
  br i1 %cmp27.i, label %efx_mcdi_filter_find_vlan.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

efx_mcdi_filter_find_vlan.exit:                   ; preds = %for.body.i
  %tobool.not = icmp eq ptr %vlan.0.i, null
  br i1 %tobool.not, label %efx_mcdi_filter_find_vlan.exit.if.end31_crit_edge, label %do.end, !prof !102

efx_mcdi_filter_find_vlan.exit.if.end31_crit_edge: ; preds = %efx_mcdi_filter_find_vlan.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

do.end:                                           ; preds = %efx_mcdi_filter_find_vlan.exit
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1579, i32 noundef 9, ptr noundef null) #13
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %9 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_enable, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %do.end.cleanup_crit_edge, label %if.then27

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then27:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %11 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net_dev, align 4
  %conv = zext i16 %vid to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %12, ptr noundef nonnull @.str.10, i32 noundef %conv) #17
  br label %cleanup

if.end31:                                         ; preds = %efx_mcdi_filter_find_vlan.exit.if.end31_crit_edge, %for.cond.i.if.end31_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 616) #16
  %tobool33.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool33.not, label %if.end31.cleanup_crit_edge, label %if.end35

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  %vid36 = getelementptr inbounds %struct.efx_mcdi_filter_vlan, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %vid36 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %vid, ptr %vid36, align 8
  %uglygep = getelementptr i8, ptr %call7.i.i, i32 10
  %vlan_list = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 17
  %prev.i = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 17, i32 1
  %15 = call ptr @memset(ptr %uglygep, i32 255, i32 606)
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %17, ptr noundef %vlan_list) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end35.list_add_tail.exit_crit_edge

if.end35.list_add_tail.exit_crit_edge:            ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %vlan_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev3.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %call7.i.i, ptr %17, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end35.list_add_tail.exit_crit_edge
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %22 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net_dev.i, align 4
  %reg_state.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 121
  %24 = ptrtoint ptr %reg_state.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i = load i8, ptr %reg_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i)
  %cmp.i.not = icmp eq i8 %bf.load.i, 1
  br i1 %cmp.i.not, label %if.then56, label %list_add_tail.exit.cleanup_crit_edge

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then56:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @efx_mcdi_filter_vlan_sync_rx_mode(ptr noundef %efx, ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then56, %list_add_tail.exit.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.then27, %do.end.cleanup_crit_edge, %efx_rwsem_assert_write_locked.exit
  %retval.0 = phi i32 [ -22, %efx_rwsem_assert_write_locked.exit ], [ -114, %if.then27 ], [ -114, %do.end.cleanup_crit_edge ], [ -12, %if.end31.cleanup_crit_edge ], [ 0, %if.then56 ], [ 0, %list_add_tail.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @efx_mcdi_filter_find_vlan(ptr noundef %efx, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 8
  %filter_sem = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 108
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %filter_sem, i32 noundef 4) #13
  %2 = ptrtoint ptr %filter_sem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %filter_sem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.not, label %do.end, label %entry.if.end_crit_edge, !prof !100

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1655, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %vlan_list = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 17
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %vlan.0.in = phi ptr [ %vlan_list, %if.end ], [ %vlan.0, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %vlan.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %vlan.0 = load ptr, ptr %vlan.0.in, align 4
  %cmp.not = icmp eq ptr %vlan.0, %vlan_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %vid25 = getelementptr inbounds %struct.efx_mcdi_filter_vlan, ptr %vlan.0, i32 0, i32 1
  %5 = ptrtoint ptr %vid25 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vid25, align 4
  %cmp27 = icmp eq i16 %6, %vid
  br i1 %cmp27, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %vlan.0, %for.body.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_mcdi_filter_vlan_sync_rx_mode(ptr noundef %efx, ptr noundef %vlan) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 8
  %vid = getelementptr inbounds %struct.efx_mcdi_filter_vlan, ptr %vlan, i32 0, i32 1
  %2 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %cmp = icmp eq i16 %3, -1
  %vlan_filter = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %vlan_filter to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vlan_filter, align 1, !range !101
  %6 = zext i1 %cmp to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %6)
  %cmp3 = icmp eq i8 %5, %6
  br i1 %cmp3, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %uc_promisc = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %uc_promisc to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %uc_promisc, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not = icmp eq i8 %8, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call fastcc i32 @efx_mcdi_filter_insert_def(ptr noundef %efx, ptr noundef %vlan, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false)
  %call7 = tail call fastcc i32 @efx_mcdi_filter_insert_addr_list(ptr noundef %efx, ptr noundef %vlan, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %if.end13

if.else:                                          ; preds = %if.end
  %call8 = tail call fastcc i32 @efx_mcdi_filter_insert_addr_list(ptr noundef %efx, ptr noundef %vlan, i1 noundef zeroext false, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.else.if.end13_crit_edge, label %if.then10

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %call11 = tail call fastcc i32 @efx_mcdi_filter_insert_def(ptr noundef %efx, ptr noundef %vlan, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.else.if.end13_crit_edge, %if.then6
  %call14 = tail call fastcc i32 @efx_mcdi_filter_insert_def(ptr noundef %efx, ptr noundef %vlan, i32 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false)
  %call15 = tail call fastcc i32 @efx_mcdi_filter_insert_def(ptr noundef %efx, ptr noundef %vlan, i32 noundef 9, i1 noundef zeroext false, i1 noundef zeroext false)
  %call16 = tail call fastcc i32 @efx_mcdi_filter_insert_def(ptr noundef %efx, ptr noundef %vlan, i32 noundef 2, i1 noundef zeroext false, i1 noundef zeroext false)
  %call17 = tail call fastcc i32 @efx_mcdi_filter_insert_def(ptr noundef %efx, ptr noundef %vlan, i32 noundef 10, i1 noundef zeroext false, i1 noundef zeroext false)
  %call18 = tail call fastcc i32 @efx_mcdi_filter_insert_def(ptr noundef %efx, ptr noundef %vlan, i32 noundef 3, i1 noundef zeroext false, i1 noundef zeroext false)
  %call19 = tail call fastcc i32 @efx_mcdi_filter_insert_def(ptr noundef %efx, ptr noundef %vlan, i32 noundef 11, i1 noundef zeroext false, i1 noundef zeroext false)
  %mc_chaining = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 15
  %9 = ptrtoint ptr %mc_chaining to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mc_chaining, align 2, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool20.not = icmp eq i8 %10, 0
  br i1 %tobool20.not, label %if.end13.if.end29_crit_edge, label %land.lhs.true

if.end13.if.end29_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end13
  %mc_promisc_last = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %mc_promisc_last to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mc_promisc_last, align 2, !range !101
  %mc_promisc = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %mc_promisc to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mc_promisc, align 1, !range !101
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %14)
  %cmp26.not = icmp eq i8 %12, %14
  br i1 %cmp26.not, label %land.lhs.true.if.end29_crit_edge, label %if.then28

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @efx_mcdi_filter_remove_old(ptr noundef %efx)
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %land.lhs.true.if.end29_crit_edge, %if.end13.if.end29_crit_edge
  %mc_promisc30 = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %mc_promisc30 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %mc_promisc30, align 1, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool31.not = icmp eq i8 %16, 0
  br i1 %tobool31.not, label %if.else48, label %if.then32

if.then32:                                        ; preds = %if.end29
  %17 = ptrtoint ptr %mc_chaining to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mc_chaining, align 2, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool34.not = icmp eq i8 %18, 0
  br i1 %tobool34.not, label %if.else41, label %if.then35

if.then35:                                        ; preds = %if.then32
  %call36 = tail call fastcc i32 @efx_mcdi_filter_insert_def(ptr noundef %efx, ptr noundef %vlan, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then35.if.end62_crit_edge, label %if.then38

if.then35.if.end62_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

if.then38:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @efx_mcdi_filter_remove_old(ptr noundef %efx)
  br label %if.end62.sink.split

if.else41:                                        ; preds = %if.then32
  %call42 = tail call fastcc i32 @efx_mcdi_filter_insert_def(ptr noundef %efx, ptr noundef %vlan, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false)
  %mc_overflow = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 12
  %19 = ptrtoint ptr %mc_overflow to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %mc_overflow, align 1, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool43.not = icmp eq i8 %20, 0
  br i1 %tobool43.not, label %if.else41.if.end62.sink.split_crit_edge, label %if.else41.if.end62_crit_edge

if.else41.if.end62_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

if.else41.if.end62.sink.split_crit_edge:          ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62.sink.split

if.else48:                                        ; preds = %if.end29
  %call49 = tail call fastcc i32 @efx_mcdi_filter_insert_addr_list(ptr noundef %efx, ptr noundef %vlan, i1 noundef zeroext true, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.else48.if.end62_crit_edge, label %if.then51

if.else48.if.end62_crit_edge:                     ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

if.then51:                                        ; preds = %if.else48
  %21 = ptrtoint ptr %mc_chaining to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %mc_chaining, align 2, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool53.not = icmp eq i8 %22, 0
  br i1 %tobool53.not, label %if.then51.if.end55_crit_edge, label %if.then54

if.then51.if.end55_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

if.then54:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @efx_mcdi_filter_remove_old(ptr noundef %efx)
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.then51.if.end55_crit_edge
  %call56 = tail call fastcc i32 @efx_mcdi_filter_insert_def(ptr noundef %efx, ptr noundef %vlan, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end55.if.end62_crit_edge, label %if.end55.if.end62.sink.split_crit_edge

if.end55.if.end62.sink.split_crit_edge:           ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62.sink.split

if.end55.if.end62_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

if.end62.sink.split:                              ; preds = %if.end55.if.end62.sink.split_crit_edge, %if.else41.if.end62.sink.split_crit_edge, %if.then38
  %call59 = tail call fastcc i32 @efx_mcdi_filter_insert_addr_list(ptr noundef %efx, ptr noundef %vlan, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %if.end62

if.end62:                                         ; preds = %if.end62.sink.split, %if.end55.if.end62_crit_edge, %if.else48.if.end62_crit_edge, %if.else41.if.end62_crit_edge, %if.then35.if.end62_crit_edge
  %call63 = tail call fastcc i32 @efx_mcdi_filter_insert_def(ptr noundef %efx, ptr noundef %vlan, i32 noundef 1, i1 noundef zeroext true, i1 noundef zeroext false)
  %call64 = tail call fastcc i32 @efx_mcdi_filter_insert_def(ptr noundef %efx, ptr noundef %vlan, i32 noundef 9, i1 noundef zeroext true, i1 noundef zeroext false)
  %call65 = tail call fastcc i32 @efx_mcdi_filter_insert_def(ptr noundef %efx, ptr noundef %vlan, i32 noundef 2, i1 noundef zeroext true, i1 noundef zeroext false)
  %call66 = tail call fastcc i32 @efx_mcdi_filter_insert_def(ptr noundef %efx, ptr noundef %vlan, i32 noundef 10, i1 noundef zeroext true, i1 noundef zeroext false)
  %call67 = tail call fastcc i32 @efx_mcdi_filter_insert_def(ptr noundef %efx, ptr noundef %vlan, i32 noundef 3, i1 noundef zeroext true, i1 noundef zeroext false)
  %call68 = tail call fastcc i32 @efx_mcdi_filter_insert_def(ptr noundef %efx, ptr noundef %vlan, i32 noundef 11, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_mcdi_filter_del_vlan(ptr noundef %efx, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_sem = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 108
  %call.i = tail call i32 @down_read_trylock(ptr noundef %filter_sem) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %efx_rwsem_assert_write_locked.exit, !prof !102

efx_rwsem_assert_write_locked.exit:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 227, i32 noundef 9, ptr noundef null) #13
  tail call void @up_read(ptr noundef %filter_sem) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %filter_state.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %0 = ptrtoint ptr %filter_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state.i, align 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %filter_sem, i32 noundef 4) #13
  %2 = ptrtoint ptr %filter_sem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %filter_sem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not.i = icmp eq i32 %3, 0
  br i1 %cmp.i.not.i, label %do.end.i13, label %if.end.if.end.i_crit_edge, !prof !100

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i13:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1655, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i13, %if.end.if.end.i_crit_edge
  %vlan_list.i = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 17
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %vlan.0.in.i = phi ptr [ %vlan_list.i, %if.end.i ], [ %vlan.0.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %vlan.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %vlan.0.i = load ptr, ptr %vlan.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %vlan.0.i, %vlan_list.i
  br i1 %cmp.not.i, label %for.cond.i.do.body_crit_edge, label %for.body.i

for.cond.i.do.body_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

for.body.i:                                       ; preds = %for.cond.i
  %vid25.i = getelementptr inbounds %struct.efx_mcdi_filter_vlan, ptr %vlan.0.i, i32 0, i32 1
  %5 = ptrtoint ptr %vid25.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vid25.i, align 4
  %cmp27.i = icmp eq i16 %6, %vid
  br i1 %cmp27.i, label %efx_mcdi_filter_find_vlan.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

efx_mcdi_filter_find_vlan.exit:                   ; preds = %for.body.i
  %tobool.not = icmp eq ptr %vlan.0.i, null
  br i1 %tobool.not, label %efx_mcdi_filter_find_vlan.exit.do.body_crit_edge, label %if.end6

efx_mcdi_filter_find_vlan.exit.do.body_crit_edge: ; preds = %efx_mcdi_filter_find_vlan.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.body:                                          ; preds = %efx_mcdi_filter_find_vlan.exit.do.body_crit_edge, %for.cond.i.do.body_crit_edge
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %7 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_enable, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body.cleanup_crit_edge, label %if.then4

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %9 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net_dev, align 4
  %conv = zext i16 %vid to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str.11, i32 noundef %conv) #17
  br label %cleanup

if.end6:                                          ; preds = %efx_mcdi_filter_find_vlan.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @efx_mcdi_filter_del_vlan_internal(ptr noundef %efx, ptr noundef nonnull %vlan.0.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %do.body.cleanup_crit_edge, %efx_rwsem_assert_write_locked.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_mcdi_filter_del_vlan_internal(ptr noundef %efx, ptr noundef %vlan) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_sem = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 108
  %call.i = tail call i32 @down_read_trylock(ptr noundef %filter_sem) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %efx_rwsem_assert_write_locked.exit, !prof !102

efx_rwsem_assert_write_locked.exit:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 227, i32 noundef 9, ptr noundef null) #13
  tail call void @up_read(ptr noundef %filter_sem) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vlan) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %vlan, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %vlan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vlan, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %6 = ptrtoint ptr %vlan to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %vlan, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %vlan, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %filter_state.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  br label %for.body

for.body:                                         ; preds = %efx_mcdi_filter_remove_unsafe.exit.for.body_crit_edge, %list_del.exit
  %i.056 = phi i32 [ 0, %list_del.exit ], [ %inc, %efx_mcdi_filter_remove_unsafe.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.efx_mcdi_filter_vlan, ptr %vlan, i32 0, i32 2, i32 %i.056
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %9)
  %cmp.i = icmp eq i16 %9, -1
  br i1 %cmp.i, label %for.body.efx_mcdi_filter_remove_unsafe.exit_crit_edge, label %if.end.i

for.body.efx_mcdi_filter_remove_unsafe.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_filter_remove_unsafe.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %conv = zext i16 %9 to i32
  %10 = ptrtoint ptr %filter_state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %filter_state.i, align 8
  %lock.i = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %11, i32 0, i32 3
  tail call void @down_write(ptr noundef %lock.i) #13
  %call.i43 = tail call fastcc i32 @efx_mcdi_filter_remove_internal(ptr noundef %efx, i32 noundef 2, i32 noundef %conv, i1 noundef zeroext true) #13
  tail call void @up_write(ptr noundef %lock.i) #13
  br label %efx_mcdi_filter_remove_unsafe.exit

efx_mcdi_filter_remove_unsafe.exit:               ; preds = %if.end.i, %for.body.efx_mcdi_filter_remove_unsafe.exit_crit_edge
  %inc = add nuw nsw i32 %i.056, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %efx_mcdi_filter_remove_unsafe.exit.for.body4_crit_edge, label %efx_mcdi_filter_remove_unsafe.exit.for.body_crit_edge

efx_mcdi_filter_remove_unsafe.exit.for.body_crit_edge: ; preds = %efx_mcdi_filter_remove_unsafe.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

efx_mcdi_filter_remove_unsafe.exit.for.body4_crit_edge: ; preds = %efx_mcdi_filter_remove_unsafe.exit
  br label %for.body4

for.body4:                                        ; preds = %efx_mcdi_filter_remove_unsafe.exit49.for.body4_crit_edge, %efx_mcdi_filter_remove_unsafe.exit.for.body4_crit_edge
  %i.157 = phi i32 [ %inc8, %efx_mcdi_filter_remove_unsafe.exit49.for.body4_crit_edge ], [ 0, %efx_mcdi_filter_remove_unsafe.exit.for.body4_crit_edge ]
  %arrayidx5 = getelementptr %struct.efx_mcdi_filter_vlan, ptr %vlan, i32 0, i32 3, i32 %i.157
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %13)
  %cmp.i44 = icmp eq i16 %13, -1
  br i1 %cmp.i44, label %for.body4.efx_mcdi_filter_remove_unsafe.exit49_crit_edge, label %if.end.i48

for.body4.efx_mcdi_filter_remove_unsafe.exit49_crit_edge: ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_filter_remove_unsafe.exit49

if.end.i48:                                       ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #15
  %conv6 = zext i16 %13 to i32
  %14 = ptrtoint ptr %filter_state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %filter_state.i, align 8
  %lock.i46 = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %15, i32 0, i32 3
  tail call void @down_write(ptr noundef %lock.i46) #13
  %call.i47 = tail call fastcc i32 @efx_mcdi_filter_remove_internal(ptr noundef %efx, i32 noundef 2, i32 noundef %conv6, i1 noundef zeroext true) #13
  tail call void @up_write(ptr noundef %lock.i46) #13
  br label %efx_mcdi_filter_remove_unsafe.exit49

efx_mcdi_filter_remove_unsafe.exit49:             ; preds = %if.end.i48, %for.body4.efx_mcdi_filter_remove_unsafe.exit49_crit_edge
  %inc8 = add nuw nsw i32 %i.157, 1
  %exitcond59.not = icmp eq i32 %inc8, 256
  br i1 %exitcond59.not, label %efx_mcdi_filter_remove_unsafe.exit49.for.body13_crit_edge, label %efx_mcdi_filter_remove_unsafe.exit49.for.body4_crit_edge

efx_mcdi_filter_remove_unsafe.exit49.for.body4_crit_edge: ; preds = %efx_mcdi_filter_remove_unsafe.exit49
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body4

efx_mcdi_filter_remove_unsafe.exit49.for.body13_crit_edge: ; preds = %efx_mcdi_filter_remove_unsafe.exit49
  br label %for.body13

for.body13:                                       ; preds = %for.inc23.for.body13_crit_edge, %efx_mcdi_filter_remove_unsafe.exit49.for.body13_crit_edge
  %i.258 = phi i32 [ %inc24, %for.inc23.for.body13_crit_edge ], [ 0, %efx_mcdi_filter_remove_unsafe.exit49.for.body13_crit_edge ]
  %arrayidx14 = getelementptr %struct.efx_mcdi_filter_vlan, ptr %vlan, i32 0, i32 4, i32 %i.258
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx14, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %17)
  %cmp16.not = icmp eq i16 %17, -1
  br i1 %cmp16.not, label %for.body13.for.inc23_crit_edge, label %if.then18

for.body13.for.inc23_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc23

if.then18:                                        ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #15
  %conv15 = zext i16 %17 to i32
  %18 = ptrtoint ptr %filter_state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %filter_state.i, align 8
  %lock.i52 = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %19, i32 0, i32 3
  tail call void @down_write(ptr noundef %lock.i52) #13
  %call.i53 = tail call fastcc i32 @efx_mcdi_filter_remove_internal(ptr noundef %efx, i32 noundef 2, i32 noundef %conv15, i1 noundef zeroext true) #13
  tail call void @up_write(ptr noundef %lock.i52) #13
  br label %for.inc23

for.inc23:                                        ; preds = %if.then18, %for.body13.for.inc23_crit_edge
  %inc24 = add nuw nsw i32 %i.258, 1
  %exitcond60.not = icmp eq i32 %inc24, 15
  br i1 %exitcond60.not, label %for.end25, label %for.inc23.for.body13_crit_edge

for.inc23.for.body13_crit_edge:                   ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body13

for.end25:                                        ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef %vlan) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end25, %efx_rwsem_assert_write_locked.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_mcdi_filter_sync_rx_mode(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 8
  %net_dev1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %2 = ptrtoint ptr %net_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev1, align 4
  %reg_state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 121
  %4 = ptrtoint ptr %reg_state.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %reg_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i)
  %cmp.i = icmp ne i8 %bf.load.i, 1
  %tobool2.not = icmp eq ptr %1, null
  %or.cond = select i1 %cmp.i, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %entry
  %lock.i = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 3
  tail call void @down_write(ptr noundef %lock.i) #13
  %vlan_list.i = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 17
  %5 = ptrtoint ptr %vlan_list.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %vlan.014.i = load ptr, ptr %vlan_list.i, align 4
  %cmp.not15.i = icmp eq ptr %vlan.014.i, %vlan_list.i
  br i1 %cmp.not15.i, label %if.end4.efx_mcdi_filter_mark_old.exit_crit_edge, label %if.end4.for.body.i_crit_edge

if.end4.for.body.i_crit_edge:                     ; preds = %if.end4
  br label %for.body.i

if.end4.efx_mcdi_filter_mark_old.exit_crit_edge:  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_filter_mark_old.exit

for.body.i:                                       ; preds = %_efx_mcdi_filter_vlan_mark_old.exit.i.for.body.i_crit_edge, %if.end4.for.body.i_crit_edge
  %vlan.016.i = phi ptr [ %vlan.0.i, %_efx_mcdi_filter_vlan_mark_old.exit.i.for.body.i_crit_edge ], [ %vlan.014.i, %if.end4.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %filter_state, align 8
  %dev_uc_count.i.i = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %dev_uc_count.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev_uc_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp29.not.i.i = icmp eq i32 %9, 0
  br i1 %cmp29.not.i.i, label %for.body.i.for.cond1.preheader.i.i_crit_edge, label %for.body.i.for.body.i.i_crit_edge

for.body.i.for.body.i.i_crit_edge:                ; preds = %for.body.i
  br label %for.body.i.i

for.body.i.for.cond1.preheader.i.i_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond1.preheader.i.i

for.cond1.preheader.i.i:                          ; preds = %for.body.i.i.for.cond1.preheader.i.i_crit_edge, %for.body.i.for.cond1.preheader.i.i_crit_edge
  %dev_mc_count.i.i = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %7, i32 0, i32 8
  %10 = ptrtoint ptr %dev_mc_count.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dev_mc_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp231.not.i.i = icmp eq i32 %11, 0
  br i1 %cmp231.not.i.i, label %for.cond1.preheader.i.i._efx_mcdi_filter_vlan_mark_old.exit.i_crit_edge, label %for.cond1.preheader.i.i.for.body3.i.i_crit_edge

for.cond1.preheader.i.i.for.body3.i.i_crit_edge:  ; preds = %for.cond1.preheader.i.i
  br label %for.body3.i.i

for.cond1.preheader.i.i._efx_mcdi_filter_vlan_mark_old.exit.i_crit_edge: ; preds = %for.cond1.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %_efx_mcdi_filter_vlan_mark_old.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i.for.body.i.i_crit_edge
  %i.030.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.efx_mcdi_filter_vlan, ptr %vlan.016.i, i32 0, i32 2, i32 %i.030.i.i
  tail call fastcc void @efx_mcdi_filter_mark_one_old(ptr noundef %efx, ptr noundef %arrayidx.i.i) #13
  %inc.i.i = add nuw i32 %i.030.i.i, 1
  %12 = ptrtoint ptr %dev_uc_count.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dev_uc_count.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %13
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.for.cond1.preheader.i.i_crit_edge

for.body.i.i.for.cond1.preheader.i.i_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond1.preheader.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.body3.i.i:                                    ; preds = %for.body3.i.i.for.body3.i.i_crit_edge, %for.cond1.preheader.i.i.for.body3.i.i_crit_edge
  %i.132.i.i = phi i32 [ %inc6.i.i, %for.body3.i.i.for.body3.i.i_crit_edge ], [ 0, %for.cond1.preheader.i.i.for.body3.i.i_crit_edge ]
  %arrayidx4.i.i = getelementptr %struct.efx_mcdi_filter_vlan, ptr %vlan.016.i, i32 0, i32 3, i32 %i.132.i.i
  tail call fastcc void @efx_mcdi_filter_mark_one_old(ptr noundef %efx, ptr noundef %arrayidx4.i.i) #13
  %inc6.i.i = add nuw i32 %i.132.i.i, 1
  %14 = ptrtoint ptr %dev_mc_count.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dev_mc_count.i.i, align 4
  %cmp2.i.i = icmp ult i32 %inc6.i.i, %15
  br i1 %cmp2.i.i, label %for.body3.i.i.for.body3.i.i_crit_edge, label %for.body3.i.i._efx_mcdi_filter_vlan_mark_old.exit.i_crit_edge

for.body3.i.i._efx_mcdi_filter_vlan_mark_old.exit.i_crit_edge: ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %_efx_mcdi_filter_vlan_mark_old.exit.i

for.body3.i.i.for.body3.i.i_crit_edge:            ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body3.i.i

_efx_mcdi_filter_vlan_mark_old.exit.i:            ; preds = %for.body3.i.i._efx_mcdi_filter_vlan_mark_old.exit.i_crit_edge, %for.cond1.preheader.i.i._efx_mcdi_filter_vlan_mark_old.exit.i_crit_edge
  %arrayidx11.i.i = getelementptr %struct.efx_mcdi_filter_vlan, ptr %vlan.016.i, i32 0, i32 4, i32 0
  tail call fastcc void @efx_mcdi_filter_mark_one_old(ptr noundef %efx, ptr noundef %arrayidx11.i.i) #13
  %arrayidx11.1.i.i = getelementptr %struct.efx_mcdi_filter_vlan, ptr %vlan.016.i, i32 0, i32 4, i32 1
  tail call fastcc void @efx_mcdi_filter_mark_one_old(ptr noundef %efx, ptr noundef %arrayidx11.1.i.i) #13
  %arrayidx11.2.i.i = getelementptr %struct.efx_mcdi_filter_vlan, ptr %vlan.016.i, i32 0, i32 4, i32 2
  tail call fastcc void @efx_mcdi_filter_mark_one_old(ptr noundef %efx, ptr noundef %arrayidx11.2.i.i) #13
  %arrayidx11.3.i.i = getelementptr %struct.efx_mcdi_filter_vlan, ptr %vlan.016.i, i32 0, i32 4, i32 3
  tail call fastcc void @efx_mcdi_filter_mark_one_old(ptr noundef %efx, ptr noundef %arrayidx11.3.i.i) #13
  %arrayidx11.4.i.i = getelementptr %struct.efx_mcdi_filter_vlan, ptr %vlan.016.i, i32 0, i32 4, i32 4
  tail call fastcc void @efx_mcdi_filter_mark_one_old(ptr noundef %efx, ptr noundef %arrayidx11.4.i.i) #13
  %arrayidx11.5.i.i = getelementptr %struct.efx_mcdi_filter_vlan, ptr %vlan.016.i, i32 0, i32 4, i32 5
  tail call fastcc void @efx_mcdi_filter_mark_one_old(ptr noundef %efx, ptr noundef %arrayidx11.5.i.i) #13
  %arrayidx11.6.i.i = getelementptr %struct.efx_mcdi_filter_vlan, ptr %vlan.016.i, i32 0, i32 4, i32 6
  tail call fastcc void @efx_mcdi_filter_mark_one_old(ptr noundef %efx, ptr noundef %arrayidx11.6.i.i) #13
  %arrayidx11.7.i.i = getelementptr %struct.efx_mcdi_filter_vlan, ptr %vlan.016.i, i32 0, i32 4, i32 7
  tail call fastcc void @efx_mcdi_filter_mark_one_old(ptr noundef %efx, ptr noundef %arrayidx11.7.i.i) #13
  %arrayidx11.8.i.i = getelementptr %struct.efx_mcdi_filter_vlan, ptr %vlan.016.i, i32 0, i32 4, i32 8
  tail call fastcc void @efx_mcdi_filter_mark_one_old(ptr noundef %efx, ptr noundef %arrayidx11.8.i.i) #13
  %arrayidx11.9.i.i = getelementptr %struct.efx_mcdi_filter_vlan, ptr %vlan.016.i, i32 0, i32 4, i32 9
  tail call fastcc void @efx_mcdi_filter_mark_one_old(ptr noundef %efx, ptr noundef %arrayidx11.9.i.i) #13
  %arrayidx11.10.i.i = getelementptr %struct.efx_mcdi_filter_vlan, ptr %vlan.016.i, i32 0, i32 4, i32 10
  tail call fastcc void @efx_mcdi_filter_mark_one_old(ptr noundef %efx, ptr noundef %arrayidx11.10.i.i) #13
  %arrayidx11.11.i.i = getelementptr %struct.efx_mcdi_filter_vlan, ptr %vlan.016.i, i32 0, i32 4, i32 11
  tail call fastcc void @efx_mcdi_filter_mark_one_old(ptr noundef %efx, ptr noundef %arrayidx11.11.i.i) #13
  %arrayidx11.12.i.i = getelementptr %struct.efx_mcdi_filter_vlan, ptr %vlan.016.i, i32 0, i32 4, i32 12
  tail call fastcc void @efx_mcdi_filter_mark_one_old(ptr noundef %efx, ptr noundef %arrayidx11.12.i.i) #13
  %arrayidx11.13.i.i = getelementptr %struct.efx_mcdi_filter_vlan, ptr %vlan.016.i, i32 0, i32 4, i32 13
  tail call fastcc void @efx_mcdi_filter_mark_one_old(ptr noundef %efx, ptr noundef %arrayidx11.13.i.i) #13
  %arrayidx11.14.i.i = getelementptr %struct.efx_mcdi_filter_vlan, ptr %vlan.016.i, i32 0, i32 4, i32 14
  tail call fastcc void @efx_mcdi_filter_mark_one_old(ptr noundef %efx, ptr noundef %arrayidx11.14.i.i) #13
  %16 = ptrtoint ptr %vlan.016.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %vlan.0.i = load ptr, ptr %vlan.016.i, align 4
  %cmp.not.i = icmp eq ptr %vlan.0.i, %vlan_list.i
  br i1 %cmp.not.i, label %_efx_mcdi_filter_vlan_mark_old.exit.i.efx_mcdi_filter_mark_old.exit_crit_edge, label %_efx_mcdi_filter_vlan_mark_old.exit.i.for.body.i_crit_edge

_efx_mcdi_filter_vlan_mark_old.exit.i.for.body.i_crit_edge: ; preds = %_efx_mcdi_filter_vlan_mark_old.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

_efx_mcdi_filter_vlan_mark_old.exit.i.efx_mcdi_filter_mark_old.exit_crit_edge: ; preds = %_efx_mcdi_filter_vlan_mark_old.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_filter_mark_old.exit

efx_mcdi_filter_mark_old.exit:                    ; preds = %_efx_mcdi_filter_vlan_mark_old.exit.i.efx_mcdi_filter_mark_old.exit_crit_edge, %if.end4.efx_mcdi_filter_mark_old.exit_crit_edge
  tail call void @up_write(ptr noundef %lock.i) #13
  %nested_level.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 73
  %17 = ptrtoint ptr %nested_level.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %nested_level.i, align 1
  tail call fastcc void @local_bh_disable() #13
  %addr_list_lock.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 63
  %conv.i51 = zext i8 %18 to i32
  tail call void @_raw_spin_lock_nested(ptr noundef %addr_list_lock.i, i32 noundef %conv.i51) #13
  %19 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %filter_state, align 8
  %21 = ptrtoint ptr %net_dev1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net_dev1, align 4
  %flags.i = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 14
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i, align 8
  %uc_promisc.i = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %20, i32 0, i32 9
  %and.i = lshr i32 %24, 8
  %25 = trunc i32 %and.i to i8
  %26 = and i8 %25, 1
  %27 = ptrtoint ptr %uc_promisc.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %uc_promisc.i, align 4
  %dev_uc_list.i = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %20, i32 0, i32 5
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 86
  %28 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_addr.i, align 64
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %32 = ptrtoint ptr %dev_uc_list.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %dev_uc_list.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 4
  %33 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.efx_mcdi_filter_table, ptr %20, i32 0, i32 5, i32 0, i32 0, i32 4
  %35 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %add.ptr1.i.i, align 2
  %uc3.i = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 65
  %36 = ptrtoint ptr %uc3.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %uc.038.i = load ptr, ptr %uc3.i, align 4
  %cmp.not39.i = icmp eq ptr %uc.038.i, %uc3.i
  br i1 %cmp.not39.i, label %efx_mcdi_filter_mark_old.exit.efx_mcdi_filter_uc_addr_list.exit_crit_edge, label %efx_mcdi_filter_mark_old.exit.for.body.i53_crit_edge

efx_mcdi_filter_mark_old.exit.for.body.i53_crit_edge: ; preds = %efx_mcdi_filter_mark_old.exit
  br label %for.body.i53

efx_mcdi_filter_mark_old.exit.efx_mcdi_filter_uc_addr_list.exit_crit_edge: ; preds = %efx_mcdi_filter_mark_old.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_filter_uc_addr_list.exit

for.body.i53:                                     ; preds = %if.end.i.for.body.i53_crit_edge, %efx_mcdi_filter_mark_old.exit.for.body.i53_crit_edge
  %uc.041.i = phi ptr [ %uc.0.i, %if.end.i.for.body.i53_crit_edge ], [ %uc.038.i, %efx_mcdi_filter_mark_old.exit.for.body.i53_crit_edge ]
  %i.040.i = phi i32 [ %inc.i, %if.end.i.for.body.i53_crit_edge ], [ 1, %efx_mcdi_filter_mark_old.exit.for.body.i53_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %i.040.i)
  %exitcond.i = icmp eq i32 %i.040.i, 32
  br i1 %exitcond.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i53
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %uc_promisc.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %uc_promisc.i, align 4
  br label %efx_mcdi_filter_uc_addr_list.exit

if.end.i:                                         ; preds = %for.body.i53
  %arrayidx11.i = getelementptr %struct.efx_mcdi_filter_table, ptr %20, i32 0, i32 5, i32 %i.040.i
  %addr14.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %uc.041.i, i32 0, i32 2
  %38 = ptrtoint ptr %addr14.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %addr14.i, align 4
  %40 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx11.i, align 4
  %add.ptr.i34.i = getelementptr %struct.netdev_hw_addr, ptr %uc.041.i, i32 0, i32 2, i32 4
  %41 = ptrtoint ptr %add.ptr.i34.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %add.ptr.i34.i, align 2
  %add.ptr1.i35.i = getelementptr i8, ptr %arrayidx11.i, i32 4
  %43 = ptrtoint ptr %add.ptr1.i35.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %add.ptr1.i35.i, align 2
  %inc.i = add nuw nsw i32 %i.040.i, 1
  %44 = ptrtoint ptr %uc.041.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %uc.0.i = load ptr, ptr %uc.041.i, align 4
  %cmp.not.i54 = icmp eq ptr %uc.0.i, %uc3.i
  br i1 %cmp.not.i54, label %if.end.i.efx_mcdi_filter_uc_addr_list.exit_crit_edge, label %if.end.i.for.body.i53_crit_edge

if.end.i.for.body.i53_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i53

if.end.i.efx_mcdi_filter_uc_addr_list.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_filter_uc_addr_list.exit

efx_mcdi_filter_uc_addr_list.exit:                ; preds = %if.end.i.efx_mcdi_filter_uc_addr_list.exit_crit_edge, %if.then.i, %efx_mcdi_filter_mark_old.exit.efx_mcdi_filter_uc_addr_list.exit_crit_edge
  %i.037.i = phi i32 [ 32, %if.then.i ], [ 1, %efx_mcdi_filter_mark_old.exit.efx_mcdi_filter_uc_addr_list.exit_crit_edge ], [ %inc.i, %if.end.i.efx_mcdi_filter_uc_addr_list.exit_crit_edge ]
  %dev_uc_count.i = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %20, i32 0, i32 7
  %45 = ptrtoint ptr %dev_uc_count.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %i.037.i, ptr %dev_uc_count.i, align 4
  %46 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %filter_state, align 8
  %48 = ptrtoint ptr %net_dev1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %net_dev1, align 4
  %mc_overflow.i = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %47, i32 0, i32 12
  %50 = ptrtoint ptr %mc_overflow.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %mc_overflow.i, align 1
  %flags.i57 = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 14
  %51 = ptrtoint ptr %flags.i57 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags.i57, align 8
  %and.i58 = and i32 %52, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i58)
  %tobool.i = icmp ne i32 %and.i58, 0
  %mc_promisc.i = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %47, i32 0, i32 10
  %frombool.i = zext i1 %tobool.i to i8
  %53 = ptrtoint ptr %mc_promisc.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %frombool.i, ptr %mc_promisc.i, align 1
  %mc3.i = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 66
  %54 = ptrtoint ptr %mc3.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %mc.033.i = load ptr, ptr %mc3.i, align 4
  %cmp.not34.i = icmp eq ptr %mc.033.i, %mc3.i
  br i1 %cmp.not34.i, label %efx_mcdi_filter_uc_addr_list.exit.efx_mcdi_filter_mc_addr_list.exit_crit_edge, label %efx_mcdi_filter_uc_addr_list.exit.for.body.i60_crit_edge

efx_mcdi_filter_uc_addr_list.exit.for.body.i60_crit_edge: ; preds = %efx_mcdi_filter_uc_addr_list.exit
  br label %for.body.i60

efx_mcdi_filter_uc_addr_list.exit.efx_mcdi_filter_mc_addr_list.exit_crit_edge: ; preds = %efx_mcdi_filter_uc_addr_list.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_filter_mc_addr_list.exit

for.body.i60:                                     ; preds = %if.end.i66.for.body.i60_crit_edge, %efx_mcdi_filter_uc_addr_list.exit.for.body.i60_crit_edge
  %mc.036.i = phi ptr [ %mc.0.i, %if.end.i66.for.body.i60_crit_edge ], [ %mc.033.i, %efx_mcdi_filter_uc_addr_list.exit.for.body.i60_crit_edge ]
  %i.035.i = phi i32 [ %inc.i64, %if.end.i66.for.body.i60_crit_edge ], [ 0, %efx_mcdi_filter_uc_addr_list.exit.for.body.i60_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %i.035.i)
  %exitcond.i59 = icmp eq i32 %i.035.i, 256
  br i1 %exitcond.i59, label %if.then.i61, label %if.end.i66

if.then.i61:                                      ; preds = %for.body.i60
  call void @__sanitizer_cov_trace_pc() #15
  %55 = ptrtoint ptr %mc_promisc.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %mc_promisc.i, align 1
  %56 = ptrtoint ptr %mc_overflow.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %mc_overflow.i, align 1
  br label %efx_mcdi_filter_mc_addr_list.exit

if.end.i66:                                       ; preds = %for.body.i60
  %arrayidx.i = getelementptr %struct.efx_mcdi_filter_table, ptr %47, i32 0, i32 6, i32 %i.035.i
  %addr11.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %mc.036.i, i32 0, i32 2
  %57 = ptrtoint ptr %addr11.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %addr11.i, align 4
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %arrayidx.i, align 4
  %add.ptr.i.i62 = getelementptr %struct.netdev_hw_addr, ptr %mc.036.i, i32 0, i32 2, i32 4
  %60 = ptrtoint ptr %add.ptr.i.i62 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %add.ptr.i.i62, align 2
  %add.ptr1.i.i63 = getelementptr i8, ptr %arrayidx.i, i32 4
  %62 = ptrtoint ptr %add.ptr1.i.i63 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %add.ptr1.i.i63, align 2
  %inc.i64 = add nuw nsw i32 %i.035.i, 1
  %63 = ptrtoint ptr %mc.036.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %mc.0.i = load ptr, ptr %mc.036.i, align 4
  %cmp.not.i65 = icmp eq ptr %mc.0.i, %mc3.i
  br i1 %cmp.not.i65, label %if.end.i66.efx_mcdi_filter_mc_addr_list.exit_crit_edge, label %if.end.i66.for.body.i60_crit_edge

if.end.i66.for.body.i60_crit_edge:                ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i60

if.end.i66.efx_mcdi_filter_mc_addr_list.exit_crit_edge: ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_filter_mc_addr_list.exit

efx_mcdi_filter_mc_addr_list.exit:                ; preds = %if.end.i66.efx_mcdi_filter_mc_addr_list.exit_crit_edge, %if.then.i61, %efx_mcdi_filter_uc_addr_list.exit.efx_mcdi_filter_mc_addr_list.exit_crit_edge
  %i.032.i = phi i32 [ 256, %if.then.i61 ], [ 0, %efx_mcdi_filter_uc_addr_list.exit.efx_mcdi_filter_mc_addr_list.exit_crit_edge ], [ %inc.i64, %if.end.i66.efx_mcdi_filter_mc_addr_list.exit_crit_edge ]
  %dev_mc_count.i = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %47, i32 0, i32 8
  %64 = ptrtoint ptr %dev_mc_count.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %i.032.i, ptr %dev_mc_count.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %addr_list_lock.i) #13
  %features = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 23
  %65 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %features, align 16
  %vlan_filter7 = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 16
  %67 = ptrtoint ptr %vlan_filter7 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %vlan_filter7, align 1, !range !101
  %69 = zext i8 %68 to i32
  %and = lshr i64 %66, 9
  %and.lobit50 = and i64 %and, 1
  %70 = trunc i64 %and.lobit50 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %70)
  %cmp.not = icmp eq i32 %69, %70
  br i1 %cmp.not, label %efx_mcdi_filter_mc_addr_list.exit.if.end16_crit_edge, label %if.then12

efx_mcdi_filter_mc_addr_list.exit.if.end16_crit_edge: ; preds = %efx_mcdi_filter_mc_addr_list.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then12:                                        ; preds = %efx_mcdi_filter_mc_addr_list.exit
  call void @__sanitizer_cov_trace_pc() #15
  %71 = trunc i64 %and.lobit50 to i8
  %72 = ptrtoint ptr %vlan_filter7 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %vlan_filter7, align 1
  tail call fastcc void @efx_mcdi_filter_remove_old(ptr noundef %efx)
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %efx_mcdi_filter_mc_addr_list.exit.if.end16_crit_edge
  %73 = ptrtoint ptr %vlan_list.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %vlan.068 = load ptr, ptr %vlan_list.i, align 4
  %cmp18.not69 = icmp eq ptr %vlan.068, %vlan_list.i
  br i1 %cmp18.not69, label %if.end16.for.end_crit_edge, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  br label %for.body

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end16.for.body_crit_edge
  %vlan.070 = phi ptr [ %vlan.0, %for.body.for.body_crit_edge ], [ %vlan.068, %if.end16.for.body_crit_edge ]
  tail call fastcc void @efx_mcdi_filter_vlan_sync_rx_mode(ptr noundef %efx, ptr noundef %vlan.070)
  %74 = ptrtoint ptr %vlan.070 to i32
  call void @__asan_load4_noabort(i32 %74)
  %vlan.0 = load ptr, ptr %vlan.070, align 4
  %cmp18.not = icmp eq ptr %vlan.0, %vlan_list.i
  br i1 %cmp18.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end16.for.end_crit_edge
  tail call fastcc void @efx_mcdi_filter_remove_old(ptr noundef %efx)
  %mc_promisc = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 10
  %75 = ptrtoint ptr %mc_promisc to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %mc_promisc, align 1, !range !101
  %mc_promisc_last = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 11
  %77 = ptrtoint ptr %mc_promisc_last to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %mc_promisc_last, align 2
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_mcdi_filter_remove_old(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 8
  %lock = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 3
  tail call void @down_write(ptr noundef %lock) #13
  %entry1 = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 4
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %entry
  %i.050 = phi i32 [ 0, %entry ], [ %inc9, %for.inc.do.end_crit_edge ]
  %remove_noent.049 = phi i32 [ 0, %entry ], [ %remove_noent.1, %for.inc.do.end_crit_edge ]
  %remove_failed.048 = phi i32 [ 0, %entry ], [ %remove_failed.1, %for.inc.do.end_crit_edge ]
  %2 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entry1, align 4
  %arrayidx = getelementptr %struct.anon.153, ptr %3, i32 %i.050
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx, align 8
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.for.inc_crit_edge, label %if.then

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %do.end
  %call = tail call fastcc i32 @efx_mcdi_filter_remove_internal(ptr noundef %efx, i32 noundef 2, i32 noundef %i.050, i1 noundef zeroext true)
  %6 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %call, label %if.then5 [
    i32 -2, label %if.then3
    i32 0, label %if.then.for.inc_crit_edge
  ]

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %inc = add i32 %remove_noent.049, 1
  br label %for.inc

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %inc6 = add i32 %remove_failed.048, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %if.then3, %if.then.for.inc_crit_edge, %do.end.for.inc_crit_edge
  %remove_failed.1 = phi i32 [ %remove_failed.048, %if.then3 ], [ %inc6, %if.then5 ], [ %remove_failed.048, %do.end.for.inc_crit_edge ], [ %remove_failed.048, %if.then.for.inc_crit_edge ]
  %remove_noent.1 = phi i32 [ %inc, %if.then3 ], [ %remove_noent.049, %if.then5 ], [ %remove_noent.049, %do.end.for.inc_crit_edge ], [ %remove_noent.049, %if.then.for.inc_crit_edge ]
  %inc9 = add nuw nsw i32 %i.050, 1
  %exitcond.not = icmp eq i32 %inc9, 8192
  br i1 %exitcond.not, label %for.end, label %for.inc.do.end_crit_edge

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

for.end:                                          ; preds = %for.inc
  tail call void @up_write(ptr noundef %lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remove_failed.1)
  %tobool11.not = icmp eq i32 %remove_failed.1, 0
  br i1 %tobool11.not, label %for.end.if.end20_crit_edge, label %do.body13

for.end.if.end20_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

do.body13:                                        ; preds = %for.end
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %7 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_enable, align 4
  %and14 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %do.body13.if.end20_crit_edge, label %if.then16

do.body13.if.end20_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then16:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %9 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %10, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.efx_mcdi_filter_remove_old, i32 noundef %remove_failed.1) #17
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %do.body13.if.end20_crit_edge, %for.end.if.end20_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remove_noent.1)
  %tobool21.not = icmp eq i32 %remove_noent.1, 0
  br i1 %tobool21.not, label %if.end20.if.end32_crit_edge, label %do.body23

if.end20.if.end32_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

do.body23:                                        ; preds = %if.end20
  %msg_enable24 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %11 = ptrtoint ptr %msg_enable24 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable24, align 4
  %and25 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body23.if.end32_crit_edge, label %if.then27

do.body23.if.end32_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.then27:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev28 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %13 = ptrtoint ptr %net_dev28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net_dev28, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %14, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.efx_mcdi_filter_remove_old, i32 noundef %remove_noent.1) #17
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %do.body23.if.end32_crit_edge, %if.end20.if.end32_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @efx_mcdi_filter_rfs_expire_one(ptr noundef %efx, i32 noundef %flow_id, i32 noundef %filter_idx) local_unnamed_addr #0 align 64 {
entry:
  %saved_spec = alloca %struct.efx_filter_spec, align 4
  %force = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %saved_spec) #13
  %0 = call ptr @memset(ptr %saved_spec, i32 255, i32 68)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %force) #13
  %1 = ptrtoint ptr %force to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %force, align 1
  %filter_sem = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 108
  tail call void @down_read(ptr noundef %filter_sem) #13
  %filter_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %2 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %filter_state, align 8
  %lock = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %3, i32 0, i32 3
  tail call void @down_write(ptr noundef %lock) #13
  %entry1.i = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %entry1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %entry1.i, align 4
  %arrayidx.i = getelementptr %struct.anon.153, ptr %5, i32 %filter_idx
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 8
  %and.i = and i32 %7, -4
  %8 = inttoptr i32 %and.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.out_unlock_crit_edge, label %lor.lhs.false

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

lor.lhs.false:                                    ; preds = %entry
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load = load i32, ptr %8, align 4
  %10 = and i32 %bf.load, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not = icmp eq i32 %10, 0
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.out_unlock_crit_edge

lor.lhs.false.out_unlock_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.end:                                           ; preds = %lor.lhs.false
  %rps_hash_lock = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 113
  tail call void @_raw_spin_lock_bh(ptr noundef %rps_hash_lock) #13
  %rps_hash_table = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 114
  %11 = ptrtoint ptr %rps_hash_table to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rps_hash_table, align 8
  %tobool1.not = icmp eq ptr %12, null
  br i1 %tobool1.not, label %if.end.if.end16_crit_edge, label %if.else

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.else:                                          ; preds = %if.end
  %call3 = tail call ptr @efx_rps_hash_find(ptr noundef %efx, ptr noundef nonnull %8) #13
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.else.expire_crit_edge, label %if.end6

if.else.expire_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %expire

if.end6:                                          ; preds = %if.else
  %arfs_id7 = getelementptr inbounds %struct.efx_arfs_rule, ptr %call3, i32 0, i32 3
  %13 = ptrtoint ptr %arfs_id7 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arfs_id7, align 2
  %call8 = call zeroext i1 @efx_rps_check_rule(ptr noundef nonnull %call3, i32 noundef %filter_idx, ptr noundef nonnull %force) #13
  %frombool = zext i1 %call8 to i8
  %15 = ptrtoint ptr %force to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %force, align 1, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool9.not = icmp eq i8 %16, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.expire_crit_edge

if.end6.expire_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %expire

if.end11:                                         ; preds = %if.end6
  br i1 %call8, label %if.end11.if.end16_crit_edge, label %if.end11.out_unlock.sink.split_crit_edge

if.end11.out_unlock.sink.split_crit_edge:         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock.sink.split

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.end16:                                         ; preds = %if.end11.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %rule.0 = phi ptr [ %call3, %if.end11.if.end16_crit_edge ], [ null, %if.end.if.end16_crit_edge ]
  %arfs_id.0 = phi i16 [ %14, %if.end11.if.end16_crit_edge ], [ 0, %if.end.if.end16_crit_edge ]
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %17 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net_dev, align 4
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load17 = load i32, ptr %8, align 4
  %20 = trunc i32 %bf.load17 to i16
  %conv = and i16 %20, 4095
  %call19 = call zeroext i1 @rps_may_expire_flow(ptr noundef %18, i16 noundef zeroext %conv, i32 noundef %flow_id, i16 noundef zeroext %arfs_id.0) #13
  br i1 %call19, label %if.else21, label %if.end16.expire_crit_edge

if.end16.expire_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %expire

if.else21:                                        ; preds = %if.end16
  %tobool22.not = icmp eq ptr %rule.0, null
  br i1 %tobool22.not, label %if.else21.expire_crit_edge, label %if.then23

if.else21.expire_crit_edge:                       ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #15
  br label %expire

if.then23:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #15
  %filter_id = getelementptr inbounds %struct.efx_arfs_rule, ptr %rule.0, i32 0, i32 4
  %21 = ptrtoint ptr %filter_id to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -3, ptr %filter_id, align 4
  br label %expire

expire:                                           ; preds = %if.then23, %if.else21.expire_crit_edge, %if.end16.expire_crit_edge, %if.end6.expire_crit_edge, %if.else.expire_crit_edge
  %rule.1 = phi ptr [ %call3, %if.end6.expire_crit_edge ], [ %rule.0, %if.then23 ], [ null, %if.else21.expire_crit_edge ], [ null, %if.else.expire_crit_edge ], [ %rule.0, %if.end16.expire_crit_edge ]
  %ret.1 = phi i8 [ %frombool, %if.end6.expire_crit_edge ], [ 1, %if.then23 ], [ 1, %if.else21.expire_crit_edge ], [ 1, %if.else.expire_crit_edge ], [ 0, %if.end16.expire_crit_edge ]
  %22 = call ptr @memcpy(ptr %saved_spec, ptr %8, i32 68)
  call void @_raw_spin_unlock_bh(ptr noundef %rps_hash_lock) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ret.1)
  %tobool27.not = icmp eq i8 %ret.1, 0
  br i1 %tobool27.not, label %expire.out_unlock_crit_edge, label %if.end36

expire.out_unlock_crit_edge:                      ; preds = %expire
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.end36:                                         ; preds = %expire
  %23 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load29 = load i32, ptr %8, align 4
  %bf.lshr30 = lshr i32 %bf.load29, 18
  %bf.clear31 = and i32 %bf.lshr30, 3
  %shl = shl nuw nsw i32 1, %bf.clear31
  %call32 = call fastcc i32 @efx_mcdi_filter_remove_internal(ptr noundef %efx, i32 noundef %shl, i32 noundef %filter_idx, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %land.lhs.true, label %if.end36.out_unlock_crit_edge

if.end36.out_unlock_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

land.lhs.true:                                    ; preds = %if.end36
  %tobool39.not = icmp eq ptr %rule.1, null
  br i1 %tobool39.not, label %land.lhs.true.out_unlock_crit_edge, label %if.then40

land.lhs.true.out_unlock_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.then40:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  call void @_raw_spin_lock_bh(ptr noundef %rps_hash_lock) #13
  call void @efx_rps_hash_del(ptr noundef %efx, ptr noundef nonnull %saved_spec) #13
  br label %out_unlock.sink.split

out_unlock.sink.split:                            ; preds = %if.then40, %if.end11.out_unlock.sink.split_crit_edge
  %ret.3.off0.ph = phi i1 [ true, %if.then40 ], [ false, %if.end11.out_unlock.sink.split_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %rps_hash_lock) #13
  br label %out_unlock

out_unlock:                                       ; preds = %out_unlock.sink.split, %land.lhs.true.out_unlock_crit_edge, %if.end36.out_unlock_crit_edge, %expire.out_unlock_crit_edge, %lor.lhs.false.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %ret.3.off0 = phi i1 [ true, %lor.lhs.false.out_unlock_crit_edge ], [ true, %land.lhs.true.out_unlock_crit_edge ], [ %cmp33, %if.end36.out_unlock_crit_edge ], [ true, %entry.out_unlock_crit_edge ], [ false, %expire.out_unlock_crit_edge ], [ %ret.3.off0.ph, %out_unlock.sink.split ]
  call void @up_write(ptr noundef %lock) #13
  call void @up_read(ptr noundef %filter_sem) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %force) #13
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %saved_spec) #13
  ret i1 %ret.3.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @efx_rps_hash_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @efx_rps_check_rule(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rps_may_expire_flow(ptr noundef, i16 noundef zeroext, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_rps_hash_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_get_rss_context_flags(ptr noundef %efx, i32 noundef %context, ptr nocapture noundef writeonly %flags) local_unnamed_addr #0 align 64 {
entry:
  %inbuf = alloca [2 x %union.efx_dword], align 8
  %outbuf = alloca [2 x %union.efx_dword], align 8
  %outlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %inbuf) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %outbuf) #13
  %0 = ptrtoint ptr %outbuf to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %outbuf, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen) #13
  %1 = ptrtoint ptr %outlen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %outlen, align 4, !annotation !103
  %2 = tail call i32 @llvm.bswap.i32(i32 %context)
  %3 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %inbuf, align 8
  %add.ptr7 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 1
  %4 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 255849267, ptr %add.ptr7, align 4
  %call = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 226, ptr noundef nonnull %inbuf, i32 noundef 8, ptr noundef nonnull %outbuf, i32 noundef 8, ptr noundef nonnull %outlen) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %outlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %6)
  %cmp14 = icmp ult i32 %6, 8
  br i1 %cmp14, label %if.then.if.end20_crit_edge, label %if.else

if.then.if.end20_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr18 = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 1
  %7 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr18, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %flags, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then.if.end20_crit_edge, %entry.if.end20_crit_edge
  %rc.0 = phi i32 [ 0, %if.else ], [ %call, %entry.if.end20_crit_edge ], [ -5, %if.then.if.end20_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outbuf) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inbuf) #13
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_rpc(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_mcdi_set_rss_context_flags(ptr noundef %efx, ptr nocapture noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  %inbuf.i = alloca [2 x %union.efx_dword], align 8
  %outbuf.i = alloca [2 x %union.efx_dword], align 8
  %outlen.i = alloca i32, align 4
  %inbuf = alloca [2 x %union.efx_dword], align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %inbuf) #13
  %context_id = getelementptr inbounds %struct.efx_rss_context, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %context_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %context_id, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %inbuf.i) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %outbuf.i) #13
  %2 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %outbuf.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen.i) #13
  %3 = ptrtoint ptr %outlen.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %outlen.i, align 4, !annotation !103
  %4 = tail call i32 @llvm.bswap.i32(i32 %1) #13
  %5 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %inbuf.i, align 8
  %add.ptr7.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 1
  %6 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 255849267, ptr %add.ptr7.i, align 4
  %call.i = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 226, ptr noundef nonnull %inbuf.i, i32 noundef 8, ptr noundef nonnull %outbuf.i, i32 noundef 8, ptr noundef nonnull %outlen.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.efx_mcdi_get_rss_context_flags.exit.thread_crit_edge

entry.efx_mcdi_get_rss_context_flags.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_get_rss_context_flags.exit.thread

if.then.i:                                        ; preds = %entry
  %7 = ptrtoint ptr %outlen.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %outlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %8)
  %cmp14.i = icmp ult i32 %8, 8
  br i1 %cmp14.i, label %if.then.i.efx_mcdi_get_rss_context_flags.exit.thread_crit_edge, label %do.body1

if.then.i.efx_mcdi_get_rss_context_flags.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_get_rss_context_flags.exit.thread

efx_mcdi_get_rss_context_flags.exit.thread:       ; preds = %if.then.i.efx_mcdi_get_rss_context_flags.exit.thread_crit_edge, %entry.efx_mcdi_get_rss_context_flags.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outbuf.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inbuf.i) #13
  br label %cleanup

do.body1:                                         ; preds = %if.then.i
  %add.ptr18.i = getelementptr inbounds %union.efx_dword, ptr %outbuf.i, i32 1
  %9 = ptrtoint ptr %add.ptr18.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr18.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outbuf.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inbuf.i) #13
  %11 = ptrtoint ptr %context_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %context_id, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  %14 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %inbuf, align 8
  %15 = or i32 %10, 12582924
  %add.ptr14 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 1
  %16 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %add.ptr14, align 4
  %call19 = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 225, ptr noundef nonnull %inbuf, i32 noundef 8, ptr noundef null, i32 noundef 0, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %if.then20, label %do.body1.cleanup_crit_edge

do.body1.cleanup_crit_edge:                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then20:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  %rx_hash_udp_4tuple = getelementptr inbounds %struct.efx_rss_context, ptr %ctx, i32 0, i32 3
  %17 = ptrtoint ptr %rx_hash_udp_4tuple to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %rx_hash_udp_4tuple, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %do.body1.cleanup_crit_edge, %efx_mcdi_get_rss_context_flags.exit.thread
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inbuf) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_mcdi_rx_free_indir_table(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  %inbuf.i = alloca [1 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %context_id = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 64, i32 1
  %0 = ptrtoint ptr %context_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %context_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.not = icmp eq i32 %1, -1
  br i1 %cmp.not, label %entry.if.end23_crit_edge, label %if.then

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf.i) #13
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #13
  %3 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %inbuf.i, align 4
  %call.i = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 159, ptr noundef nonnull %inbuf.i, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.not = icmp eq i32 %call.i, 0
  br i1 %cmp3.not, label %if.then.if.end23_crit_edge, label %do.end, !prof !102

if.then.if.end23_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2033, i32 noundef 9, ptr noundef null) #13
  br label %if.end23

if.end23:                                         ; preds = %do.end, %if.then.if.end23_crit_edge, %entry.if.end23_crit_edge
  %4 = ptrtoint ptr %context_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %context_id, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_rx_push_rss_context_config(ptr noundef %efx, ptr nocapture noundef %ctx, ptr noundef readonly %rx_indir_table, ptr nocapture noundef readonly %key) local_unnamed_addr #0 align 64 {
entry:
  %tablebuf.i = alloca [33 x %union.efx_dword], align 4
  %keybuf.i = alloca [11 x %union.efx_dword], align 4
  %inbuf.i = alloca [1 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rss_lock = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 65
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %rss_lock) #13
  br i1 %call, label %entry.if.end_crit_edge, label %do.end, !prof !102

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2106, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %context_id = getelementptr inbounds %struct.efx_rss_context, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %context_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %context_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then20, label %if.end.if.end25_crit_edge

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.then20:                                        ; preds = %if.end
  %call21 = tail call fastcc i32 @efx_mcdi_filter_alloc_rss_context(ptr noundef %efx, i1 noundef zeroext true, ptr noundef %ctx, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then20.if.end25_crit_edge, label %if.then20.cleanup_crit_edge

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then20.if.end25_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.end25:                                         ; preds = %if.then20.if.end25_crit_edge, %if.end.if.end25_crit_edge
  %tobool26.not = icmp eq ptr %rx_indir_table, null
  %2 = ptrtoint ptr %context_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %context_id, align 4
  br i1 %tobool26.not, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf.i) #13
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #13
  %5 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %inbuf.i, align 4
  %call.i = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 159, ptr noundef nonnull %inbuf.i, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i) #13
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %tablebuf.i) #13
  %6 = getelementptr inbounds i8, ptr %tablebuf.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 128)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %keybuf.i) #13
  %8 = tail call i32 @llvm.bswap.i32(i32 %3) #13
  %9 = ptrtoint ptr %tablebuf.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tablebuf.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end30
  %i.053.i = phi i32 [ 0, %if.end30 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx6.i = getelementptr i32, ptr %rx_indir_table, i32 %i.053.i
  %10 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6.i, align 4
  %conv7.i = trunc i32 %11 to i8
  %arrayidx10.i = getelementptr i8, ptr %6, i32 %i.053.i
  %12 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv7.i, ptr %arrayidx10.i, align 1
  %inc.i = add nuw nsw i32 %i.053.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %call.i54 = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 162, ptr noundef nonnull %tablebuf.i, i32 noundef 132, ptr noundef null, i32 noundef 0, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %cmp12.not.i = icmp eq i32 %call.i54, 0
  br i1 %cmp12.not.i, label %efx_mcdi_filter_populate_rss_table.exit, label %efx_mcdi_filter_populate_rss_table.exit.thread

efx_mcdi_filter_populate_rss_table.exit.thread:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %keybuf.i) #13
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %tablebuf.i) #13
  br label %cleanup

efx_mcdi_filter_populate_rss_table.exit:          ; preds = %for.end.i
  %13 = ptrtoint ptr %keybuf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %8, ptr %keybuf.i, align 4
  %add.ptr33.i = getelementptr inbounds i8, ptr %keybuf.i, i32 4
  %14 = call ptr @memcpy(ptr %add.ptr33.i, ptr %key, i32 40)
  %call39.i = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 160, ptr noundef nonnull %keybuf.i, i32 noundef 44, ptr noundef null, i32 noundef 0, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %keybuf.i) #13
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %tablebuf.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool33.not = icmp eq i32 %call39.i, 0
  br i1 %tobool33.not, label %if.end35, label %efx_mcdi_filter_populate_rss_table.exit.cleanup_crit_edge

efx_mcdi_filter_populate_rss_table.exit.cleanup_crit_edge: ; preds = %efx_mcdi_filter_populate_rss_table.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end35:                                         ; preds = %efx_mcdi_filter_populate_rss_table.exit
  call void @__sanitizer_cov_trace_pc() #15
  %rx_indir_table36 = getelementptr inbounds %struct.efx_rss_context, ptr %ctx, i32 0, i32 5
  %15 = call ptr @memcpy(ptr %rx_indir_table36, ptr %rx_indir_table, i32 512)
  %rx_hash_key = getelementptr inbounds %struct.efx_rss_context, ptr %ctx, i32 0, i32 4
  %type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %type, align 4
  %rx_hash_key_size = getelementptr inbounds %struct.efx_nic_type, ptr %17, i32 0, i32 138
  %18 = ptrtoint ptr %rx_hash_key_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_hash_key_size, align 4
  %20 = call ptr @memcpy(ptr %rx_hash_key, ptr %key, i32 %19)
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %efx_mcdi_filter_populate_rss_table.exit.cleanup_crit_edge, %efx_mcdi_filter_populate_rss_table.exit.thread, %if.then27, %if.then20.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end35 ], [ %call.i, %if.then27 ], [ %call21, %if.then20.cleanup_crit_edge ], [ %call39.i, %efx_mcdi_filter_populate_rss_table.exit.cleanup_crit_edge ], [ %call.i54, %efx_mcdi_filter_populate_rss_table.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efx_mcdi_filter_alloc_rss_context(ptr noundef %efx, i1 noundef zeroext %exclusive, ptr nocapture noundef %ctx, ptr noundef writeonly %context_size) unnamed_addr #0 align 64 {
entry:
  %inbuf.i.i = alloca [2 x %union.efx_dword], align 8
  %outbuf.i.i = alloca [2 x %union.efx_dword], align 8
  %outlen.i.i = alloca i32, align 4
  %inbuf.i = alloca [2 x %union.efx_dword], align 8
  %inbuf = alloca [3 x %union.efx_dword], align 4
  %outbuf = alloca [1 x %union.efx_dword], align 4
  %outlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %inbuf) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outbuf) #13
  %0 = ptrtoint ptr %outbuf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %outbuf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen) #13
  %1 = ptrtoint ptr %outlen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %outlen, align 4, !annotation !103
  %rss_spread2 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 44
  %2 = ptrtoint ptr %rss_spread2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rss_spread2, align 16
  br i1 %exclusive, label %entry.if.end34_crit_edge, label %cond.end27

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

cond.end27:                                       ; preds = %entry
  %4 = tail call i32 @llvm.ctlz.i32(i32 %3, i1 true) #13, !range !105
  %sub.i.i.op.i = xor i32 %4, 31
  %cond20 = shl nuw i32 1, %sub.i.i.op.i
  %5 = tail call i32 @llvm.umin.i32(i32 %cond20, i32 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp30 = icmp eq i32 %5, 1
  br i1 %cmp30, label %if.then, label %cond.end27.if.end34_crit_edge

cond.end27.if.end34_crit_edge:                    ; preds = %cond.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then:                                          ; preds = %cond.end27
  %context_id = getelementptr inbounds %struct.efx_rss_context, ptr %ctx, i32 0, i32 1
  %6 = ptrtoint ptr %context_id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %context_id, align 4
  %tobool32.not = icmp eq ptr %context_size, null
  br i1 %tobool32.not, label %if.then.cleanup_crit_edge, label %if.then33

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then33:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %context_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %context_size, align 4
  br label %cleanup

if.end34:                                         ; preds = %cond.end27.if.end34_crit_edge, %entry.if.end34_crit_edge
  %cond28120 = phi i32 [ %5, %cond.end27.if.end34_crit_edge ], [ %3, %entry.if.end34_crit_edge ]
  %type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %type, align 4
  %check_caps = getelementptr inbounds %struct.efx_nic_type, ptr %9, i32 0, i32 35
  %10 = ptrtoint ptr %check_caps to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %check_caps, align 4
  %call35 = tail call i32 %11(ptr noundef %efx, i8 noundef zeroext 16, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %do.body, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %if.end34
  %vport_id = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 66
  %12 = ptrtoint ptr %vport_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vport_id, align 8
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %inbuf, align 4
  %16 = select i1 %exclusive, i32 0, i32 16777216
  %add.ptr47 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 1
  %17 = ptrtoint ptr %add.ptr47 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %add.ptr47, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %cond28120)
  %add.ptr57 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 2
  %19 = ptrtoint ptr %add.ptr57 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %add.ptr57, align 4
  %call63 = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 158, ptr noundef nonnull %inbuf, i32 noundef 12, ptr noundef nonnull %outbuf, i32 noundef 4, ptr noundef nonnull %outlen) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64.not = icmp eq i32 %call63, 0
  br i1 %cmp64.not, label %if.end67, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end67:                                         ; preds = %do.body
  %20 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %outlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %21)
  %cmp68 = icmp ult i32 %21, 4
  br i1 %cmp68, label %if.end67.cleanup_crit_edge, label %if.end71

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end71:                                         ; preds = %if.end67
  %22 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %outbuf, align 4
  %24 = call i32 @llvm.bswap.i32(i32 %23)
  %context_id76 = getelementptr inbounds %struct.efx_rss_context, ptr %ctx, i32 0, i32 1
  %25 = ptrtoint ptr %context_id76 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %context_id76, align 4
  %tobool77.not = icmp eq ptr %context_size, null
  br i1 %tobool77.not, label %if.end71.if.end79_crit_edge, label %if.then78

if.end71.if.end79_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

if.then78:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %context_size to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %cond28120, ptr %context_size, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %if.end71.if.end79_crit_edge
  %27 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %type, align 4
  %check_caps81 = getelementptr inbounds %struct.efx_nic_type, ptr %28, i32 0, i32 35
  %29 = ptrtoint ptr %check_caps81 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %check_caps81, align 4
  %call82 = call i32 %30(ptr noundef %efx, i8 noundef zeroext 13, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end79.cleanup_crit_edge, label %if.then84

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then84:                                        ; preds = %if.end79
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %inbuf.i) #13
  %31 = ptrtoint ptr %context_id76 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %context_id76, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %inbuf.i.i) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %outbuf.i.i) #13
  %33 = ptrtoint ptr %outbuf.i.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 0, ptr %outbuf.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen.i.i) #13
  %34 = ptrtoint ptr %outlen.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %outlen.i.i, align 4, !annotation !103
  %35 = call i32 @llvm.bswap.i32(i32 %32) #13
  %36 = ptrtoint ptr %inbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %inbuf.i.i, align 8
  %add.ptr7.i.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i.i, i32 1
  %37 = ptrtoint ptr %add.ptr7.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 255849267, ptr %add.ptr7.i.i, align 4
  %call.i.i = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 226, ptr noundef nonnull %inbuf.i.i, i32 noundef 8, ptr noundef nonnull %outbuf.i.i, i32 noundef 8, ptr noundef nonnull %outlen.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then84.efx_mcdi_get_rss_context_flags.exit.thread.i_crit_edge

if.then84.efx_mcdi_get_rss_context_flags.exit.thread.i_crit_edge: ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_get_rss_context_flags.exit.thread.i

if.then.i.i:                                      ; preds = %if.then84
  %38 = ptrtoint ptr %outlen.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %outlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %39)
  %cmp14.i.i = icmp ult i32 %39, 8
  br i1 %cmp14.i.i, label %if.then.i.i.efx_mcdi_get_rss_context_flags.exit.thread.i_crit_edge, label %do.body1.i

if.then.i.i.efx_mcdi_get_rss_context_flags.exit.thread.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_get_rss_context_flags.exit.thread.i

efx_mcdi_get_rss_context_flags.exit.thread.i:     ; preds = %if.then.i.i.efx_mcdi_get_rss_context_flags.exit.thread.i_crit_edge, %if.then84.efx_mcdi_get_rss_context_flags.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outbuf.i.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inbuf.i.i) #13
  br label %efx_mcdi_set_rss_context_flags.exit

do.body1.i:                                       ; preds = %if.then.i.i
  %add.ptr18.i.i = getelementptr inbounds %union.efx_dword, ptr %outbuf.i.i, i32 1
  %40 = ptrtoint ptr %add.ptr18.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr18.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outbuf.i.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inbuf.i.i) #13
  %42 = ptrtoint ptr %context_id76 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %context_id76, align 4
  %44 = call i32 @llvm.bswap.i32(i32 %43) #13
  %45 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %inbuf.i, align 8
  %46 = or i32 %41, 12582924
  %add.ptr14.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 1
  %47 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %add.ptr14.i, align 4
  %call19.i = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 225, ptr noundef nonnull %inbuf.i, i32 noundef 8, ptr noundef null, i32 noundef 0, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool.not.i, label %if.then20.i, label %do.body1.i.efx_mcdi_set_rss_context_flags.exit_crit_edge

do.body1.i.efx_mcdi_set_rss_context_flags.exit_crit_edge: ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_set_rss_context_flags.exit

if.then20.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  %rx_hash_udp_4tuple.i = getelementptr inbounds %struct.efx_rss_context, ptr %ctx, i32 0, i32 3
  %48 = ptrtoint ptr %rx_hash_udp_4tuple.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %rx_hash_udp_4tuple.i, align 4
  br label %efx_mcdi_set_rss_context_flags.exit

efx_mcdi_set_rss_context_flags.exit:              ; preds = %if.then20.i, %do.body1.i.efx_mcdi_set_rss_context_flags.exit_crit_edge, %efx_mcdi_get_rss_context_flags.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inbuf.i) #13
  br label %cleanup

cleanup:                                          ; preds = %efx_mcdi_set_rss_context_flags.exit, %if.end79.cleanup_crit_edge, %if.end67.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.then33, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then33 ], [ 0, %if.then.cleanup_crit_edge ], [ -95, %if.end34.cleanup_crit_edge ], [ %call63, %do.body.cleanup_crit_edge ], [ -5, %if.end67.cleanup_crit_edge ], [ 0, %efx_mcdi_set_rss_context_flags.exit ], [ 0, %if.end79.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outbuf) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %inbuf) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_rx_pull_rss_context_config(ptr noundef %efx, ptr nocapture noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  %inbuf = alloca [1 x %union.efx_dword], align 4
  %tablebuf = alloca [33 x %union.efx_dword], align 4
  %keybuf = alloca [11 x %union.efx_dword], align 4
  %outlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf) #13
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %tablebuf) #13
  %0 = call ptr @memset(ptr %tablebuf, i32 0, i32 132)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %keybuf) #13
  %1 = call ptr @memset(ptr %keybuf, i32 0, i32 44)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen) #13
  %2 = ptrtoint ptr %outlen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %outlen, align 4, !annotation !103
  %rss_lock = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 65
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %rss_lock) #13
  br i1 %call, label %entry.if.end_crit_edge, label %do.end, !prof !102

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2138, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %context_id = getelementptr inbounds %struct.efx_rss_context, ptr %ctx, i32 0, i32 1
  %3 = ptrtoint ptr %context_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %context_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp = icmp eq i32 %4, -1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %do.body25

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body25:                                        ; preds = %if.end
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %inbuf, align 4
  %call35 = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 163, ptr noundef nonnull %inbuf, i32 noundef 4, ptr noundef nonnull %tablebuf, i32 noundef 132, ptr noundef nonnull %outlen) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36.not = icmp eq i32 %call35, 0
  br i1 %cmp36.not, label %if.end39, label %do.body25.cleanup_crit_edge

do.body25.cleanup_crit_edge:                      ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end39:                                         ; preds = %do.body25
  %7 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %outlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 132, i32 %8)
  %cmp41.not = icmp eq i32 %8, 132
  br i1 %cmp41.not, label %for.cond.preheader, label %do.end58, !prof !102

for.cond.preheader:                               ; preds = %if.end39
  %add.ptr78 = getelementptr inbounds i8, ptr %tablebuf, i32 4
  br label %for.body

do.end58:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2155, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %i.0173 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx79 = getelementptr i8, ptr %add.ptr78, i32 %i.0173
  %9 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx79, align 1
  %conv80 = zext i8 %10 to i32
  %arrayidx81 = getelementptr %struct.efx_rss_context, ptr %ctx, i32 0, i32 5, i32 %i.0173
  %11 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv80, ptr %arrayidx81, align 4
  %inc = add nuw nsw i32 %i.0173, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %do.body82, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

do.body82:                                        ; preds = %for.body
  %12 = ptrtoint ptr %context_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %context_id, align 4
  %14 = call i32 @llvm.bswap.i32(i32 %13)
  %15 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %inbuf, align 4
  %call98 = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 161, ptr noundef nonnull %inbuf, i32 noundef 4, ptr noundef nonnull %keybuf, i32 noundef 44, ptr noundef nonnull %outlen) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %cmp99.not = icmp eq i32 %call98, 0
  br i1 %cmp99.not, label %if.end102, label %do.body82.cleanup_crit_edge

do.body82.cleanup_crit_edge:                      ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end102:                                        ; preds = %do.body82
  %16 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %outlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %17)
  %cmp104.not = icmp eq i32 %17, 44
  br i1 %cmp104.not, label %for.cond138.preheader, label %do.end121, !prof !102

for.cond138.preheader:                            ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr143 = getelementptr inbounds i8, ptr %keybuf, i32 4
  %uglygep = getelementptr i8, ptr %ctx, i32 17
  %18 = call ptr @memcpy(ptr %uglygep, ptr %add.ptr143, i32 40)
  br label %cleanup

do.end121:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2171, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end121, %for.cond138.preheader, %do.body82.cleanup_crit_edge, %do.end58, %do.body25.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end58 ], [ -5, %do.end121 ], [ -2, %if.end.cleanup_crit_edge ], [ %call35, %do.body25.cleanup_crit_edge ], [ %call98, %do.body82.cleanup_crit_edge ], [ 0, %for.cond138.preheader ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen) #13
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %keybuf) #13
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %tablebuf) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_rx_pull_rss_config(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rss_lock = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 65
  tail call void @mutex_lock_nested(ptr noundef %rss_lock, i32 noundef 0) #13
  %rss_context = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 64
  %call = tail call i32 @efx_mcdi_rx_pull_rss_context_config(ptr noundef %efx, ptr noundef %rss_context)
  tail call void @mutex_unlock(ptr noundef %rss_lock) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_mcdi_rx_restore_rss_contexts(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 8
  %rss_lock = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 65
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %rss_lock) #13
  br i1 %call, label %entry.if.end_crit_edge, label %do.end, !prof !102

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2197, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %must_restore_rss_contexts = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %must_restore_rss_contexts to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %must_restore_rss_contexts, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool20.not = icmp eq i8 %3, 0
  br i1 %tobool20.not, label %if.end.cleanup_crit_edge, label %if.end22

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %rss_context = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 64
  %4 = ptrtoint ptr %rss_context to i32
  call void @__asan_load4_noabort(i32 %4)
  %ctx.063 = load ptr, ptr %rss_context, align 4
  %cmp.not64 = icmp eq ptr %ctx.063, %rss_context
  br i1 %cmp.not64, label %if.end22.for.end_crit_edge, label %for.body.lr.ph

if.end22.for.end_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end22
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ctx.065 = phi ptr [ %ctx.063, %for.body.lr.ph ], [ %ctx.0, %for.inc.for.body_crit_edge ]
  %context_id = getelementptr inbounds %struct.efx_rss_context, ptr %ctx.065, i32 0, i32 1
  %5 = ptrtoint ptr %context_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %context_id, align 4
  %rx_indir_table = getelementptr inbounds %struct.efx_rss_context, ptr %ctx.065, i32 0, i32 5
  %rx_hash_key = getelementptr inbounds %struct.efx_rss_context, ptr %ctx.065, i32 0, i32 4
  %call30 = tail call i32 @efx_mcdi_rx_push_rss_context_config(ptr noundef %efx, ptr noundef %ctx.065, ptr noundef %rx_indir_table, ptr noundef %rx_hash_key)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %for.body.for.inc_crit_edge, label %do.body33

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

do.body33:                                        ; preds = %for.body
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %do.body33.for.inc_crit_edge, label %if.then35

do.body33.for.inc_crit_edge:                      ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then35:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev, align 4
  %user_id = getelementptr inbounds %struct.efx_rss_context, ptr %ctx.065, i32 0, i32 2
  %10 = ptrtoint ptr %user_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %user_id, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %9, ptr noundef nonnull @.str.12, i32 noundef %11, i32 noundef %call30) #17
  br label %for.inc

for.inc:                                          ; preds = %if.then35, %do.body33.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %12 = ptrtoint ptr %ctx.065 to i32
  call void @__asan_load4_noabort(i32 %12)
  %ctx.0 = load ptr, ptr %ctx.065, align 4
  %cmp.not = icmp eq ptr %ctx.0, %rss_context
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end22.for.end_crit_edge
  %13 = ptrtoint ptr %must_restore_rss_contexts to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %must_restore_rss_contexts, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_pf_rx_push_rss_config(ptr noundef %efx, i1 noundef zeroext %user, ptr noundef readonly %rx_indir_table, ptr noundef readonly %key) local_unnamed_addr #0 align 64 {
entry:
  %inbuf.i148.i = alloca [1 x %union.efx_dword], align 4
  %inbuf.i.i = alloca [1 x %union.efx_dword], align 4
  %tablebuf.i.i = alloca [33 x %union.efx_dword], align 4
  %keybuf.i.i = alloca [11 x %union.efx_dword], align 4
  %context_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rss_spread = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 44
  %0 = ptrtoint ptr %rss_spread to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rss_spread, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %key, null
  %rx_hash_key = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 64, i32 4
  %spec.select = select i1 %tobool.not, ptr %rx_hash_key, ptr %key
  %filter_state.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %2 = ptrtoint ptr %filter_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %filter_state.i, align 8
  %rss_context.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 64
  %context_id.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 64, i32 1
  %4 = ptrtoint ptr %context_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %context_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.i = icmp eq i32 %5, -1
  br i1 %cmp.i, label %if.end.if.then.i_crit_edge, label %lor.lhs.false.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end
  %rx_rss_context_exclusive.i = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %rx_rss_context_exclusive.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rx_rss_context_exclusive.i, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.if.end9.i_crit_edge

lor.lhs.false.i.if.end9.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %call.i = tail call fastcc i32 @efx_mcdi_filter_alloc_rss_context(ptr noundef %efx, i1 noundef zeroext true, ptr noundef %rss_context.i, ptr noundef null) #13
  %8 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %call.i, label %if.then.i.do.body103.i_crit_edge [
    i32 -95, label %if.then.i.cleanup_crit_edge
    i32 0, label %if.then.i.if.end9.i_crit_edge
  ]

if.then.i.if.end9.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i.do.body103.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body103.i

if.end9.i:                                        ; preds = %if.then.i.if.end9.i_crit_edge, %lor.lhs.false.i.if.end9.i_crit_edge
  %9 = ptrtoint ptr %context_id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %context_id.i, align 8
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %tablebuf.i.i) #13
  %11 = getelementptr inbounds i8, ptr %tablebuf.i.i, i32 4
  %12 = call ptr @memset(ptr %11, i32 0, i32 128)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %keybuf.i.i) #13
  %13 = tail call i32 @llvm.bswap.i32(i32 %10) #13
  %14 = ptrtoint ptr %tablebuf.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tablebuf.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end9.i
  %i.053.i.i = phi i32 [ 0, %if.end9.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx6.i.i = getelementptr i32, ptr %rx_indir_table, i32 %i.053.i.i
  %15 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx6.i.i, align 4
  %conv7.i.i = trunc i32 %16 to i8
  %arrayidx10.i.i = getelementptr i8, ptr %11, i32 %i.053.i.i
  %17 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv7.i.i, ptr %arrayidx10.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.053.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 128
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  %call.i.i = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 162, ptr noundef nonnull %tablebuf.i.i, i32 noundef 132, ptr noundef null, i32 noundef 0, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp12.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp12.not.i.i, label %efx_mcdi_filter_populate_rss_table.exit.i, label %efx_mcdi_filter_populate_rss_table.exit.thread.i

efx_mcdi_filter_populate_rss_table.exit.thread.i: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %keybuf.i.i) #13
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %tablebuf.i.i) #13
  br label %fail2.i

efx_mcdi_filter_populate_rss_table.exit.i:        ; preds = %for.end.i.i
  %18 = ptrtoint ptr %keybuf.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %13, ptr %keybuf.i.i, align 4
  %add.ptr33.i.i = getelementptr inbounds i8, ptr %keybuf.i.i, i32 4
  %19 = call ptr @memcpy(ptr %add.ptr33.i.i, ptr %spec.select, i32 40)
  %call39.i.i = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 160, ptr noundef nonnull %keybuf.i.i, i32 noundef 44, ptr noundef null, i32 noundef 0, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %keybuf.i.i) #13
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %tablebuf.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i.i)
  %cmp13.not.i = icmp eq i32 %call39.i.i, 0
  br i1 %cmp13.not.i, label %if.end15.i, label %efx_mcdi_filter_populate_rss_table.exit.i.fail2.i_crit_edge

efx_mcdi_filter_populate_rss_table.exit.i.fail2.i_crit_edge: ; preds = %efx_mcdi_filter_populate_rss_table.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail2.i

if.end15.i:                                       ; preds = %efx_mcdi_filter_populate_rss_table.exit.i
  %20 = ptrtoint ptr %context_id.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %context_id.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %5)
  %cmp18.not.i = icmp eq i32 %21, %5
  %or.cond.i = or i1 %cmp.i, %cmp18.not.i
  br i1 %or.cond.i, label %if.end15.i.if.end44.i_crit_edge, label %if.then20.i

if.end15.i.if.end44.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44.i

if.then20.i:                                      ; preds = %if.end15.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf.i.i) #13
  %22 = call i32 @llvm.bswap.i32(i32 %5) #13
  %23 = ptrtoint ptr %inbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %inbuf.i.i, align 4
  %call.i147.i = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 159, ptr noundef nonnull %inbuf.i.i, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147.i)
  %cmp22.not.i = icmp eq i32 %call.i147.i, 0
  br i1 %cmp22.not.i, label %if.then20.i.if.end44.i_crit_edge, label %do.end.i, !prof !102

if.then20.i.if.end44.i_crit_edge:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44.i

do.end.i:                                         ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2078, i32 noundef 9, ptr noundef null) #13
  br label %if.end44.i

if.end44.i:                                       ; preds = %do.end.i, %if.then20.i.if.end44.i_crit_edge, %if.end15.i.if.end44.i_crit_edge
  %rx_rss_context_exclusive45.i = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %3, i32 0, i32 2
  %24 = ptrtoint ptr %rx_rss_context_exclusive45.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %rx_rss_context_exclusive45.i, align 4
  %rx_indir_table47.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 64, i32 5
  %cmp48.not.i = icmp eq ptr %rx_indir_table47.i, %rx_indir_table
  br i1 %cmp48.not.i, label %if.end44.i.if.end53.i_crit_edge, label %if.then49.i

if.end44.i.if.end53.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53.i

if.then49.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #15
  %25 = call ptr @memcpy(ptr %rx_indir_table47.i, ptr %rx_indir_table, i32 512)
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then49.i, %if.end44.i.if.end53.i_crit_edge
  %cmp56.not.i = icmp eq ptr %rx_hash_key, %spec.select
  br i1 %cmp56.not.i, label %if.end53.i.cleanup_crit_edge, label %if.then57.i

if.end53.i.cleanup_crit_edge:                     ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then57.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %26 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %type.i, align 4
  %rx_hash_key_size.i = getelementptr inbounds %struct.efx_nic_type, ptr %27, i32 0, i32 138
  %28 = ptrtoint ptr %rx_hash_key_size.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_hash_key_size.i, align 4
  %30 = call ptr @memcpy(ptr %rx_hash_key, ptr %spec.select, i32 %29)
  br label %cleanup

fail2.i:                                          ; preds = %efx_mcdi_filter_populate_rss_table.exit.i.fail2.i_crit_edge, %efx_mcdi_filter_populate_rss_table.exit.thread.i
  %retval.0.i152.i = phi i32 [ %call.i.i, %efx_mcdi_filter_populate_rss_table.exit.thread.i ], [ %call39.i.i, %efx_mcdi_filter_populate_rss_table.exit.i.fail2.i_crit_edge ]
  %31 = ptrtoint ptr %context_id.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %context_id.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %32)
  %cmp64.not.i = icmp eq i32 %5, %32
  br i1 %cmp64.not.i, label %fail2.i.do.body103.i_crit_edge, label %if.then65.i

fail2.i.do.body103.i_crit_edge:                   ; preds = %fail2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body103.i

if.then65.i:                                      ; preds = %fail2.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf.i148.i) #13
  %33 = call i32 @llvm.bswap.i32(i32 %32) #13
  %34 = ptrtoint ptr %inbuf.i148.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %inbuf.i148.i, align 4
  %call.i149.i = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 159, ptr noundef nonnull %inbuf.i148.i, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i148.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i149.i)
  %cmp70.not.i = icmp eq i32 %call.i149.i, 0
  br i1 %cmp70.not.i, label %if.then65.i.if.end92.i_crit_edge, label %do.end86.i, !prof !102

if.then65.i.if.end92.i_crit_edge:                 ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end92.i

do.end86.i:                                       ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2091, i32 noundef 9, ptr noundef null) #13
  br label %if.end92.i

if.end92.i:                                       ; preds = %do.end86.i, %if.then65.i.if.end92.i_crit_edge
  %35 = ptrtoint ptr %context_id.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %5, ptr %context_id.i, align 8
  br label %do.body103.i

do.body103.i:                                     ; preds = %if.end92.i, %fail2.i.do.body103.i_crit_edge, %if.then.i.do.body103.i_crit_edge
  %rc.0.i = phi i32 [ %retval.0.i152.i, %if.end92.i ], [ %retval.0.i152.i, %fail2.i.do.body103.i_crit_edge ], [ %call.i, %if.then.i.do.body103.i_crit_edge ]
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %36 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %37, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool104.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool104.not.i, label %do.body103.i.efx_mcdi_filter_rx_push_exclusive_rss_config.exit_crit_edge, label %if.then105.i

do.body103.i.efx_mcdi_filter_rx_push_exclusive_rss_config.exit_crit_edge: ; preds = %do.body103.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_filter_rx_push_exclusive_rss_config.exit

if.then105.i:                                     ; preds = %do.body103.i
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %38 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %net_dev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %39, ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.efx_mcdi_filter_rx_push_exclusive_rss_config, i32 noundef %rc.0.i) #17
  br label %efx_mcdi_filter_rx_push_exclusive_rss_config.exit

efx_mcdi_filter_rx_push_exclusive_rss_config.exit: ; preds = %if.then105.i, %do.body103.i.efx_mcdi_filter_rx_push_exclusive_rss_config.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -105, i32 %rc.0.i)
  %cmp3 = icmp ne i32 %rc.0.i, -105
  %brmerge = or i1 %cmp3, %user
  br i1 %brmerge, label %efx_mcdi_filter_rx_push_exclusive_rss_config.exit.cleanup_crit_edge, label %if.then5

efx_mcdi_filter_rx_push_exclusive_rss_config.exit.cleanup_crit_edge: ; preds = %efx_mcdi_filter_rx_push_exclusive_rss_config.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then5:                                         ; preds = %efx_mcdi_filter_rx_push_exclusive_rss_config.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %context_size) #13
  %40 = ptrtoint ptr %context_size to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %context_size, align 4, !annotation !103
  %41 = ptrtoint ptr %rss_spread to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rss_spread, align 16
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then5
  %i.078 = phi i32 [ 0, %if.then5 ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %rx_indir_table, i32 %i.078
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx, align 4
  %rem.i = urem i32 %i.078, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %rem.i)
  %cmp10 = icmp ne i32 %44, %rem.i
  %inc = add nuw nsw i32 %i.078, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %i.078)
  %cmp6 = icmp ugt i32 %i.078, 126
  %brmerge68 = select i1 %cmp6, i1 true, i1 %cmp10
  br i1 %brmerge68, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body
  %45 = ptrtoint ptr %filter_state.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %filter_state.i, align 8
  %call.i71 = call fastcc i32 @efx_mcdi_filter_alloc_rss_context(ptr noundef %efx, i1 noundef zeroext false, ptr noundef %rss_context.i, ptr noundef nonnull %context_size) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %cmp.not.i = icmp eq i32 %call.i71, 0
  br i1 %cmp.not.i, label %if.then14, label %for.end.if.end45_crit_edge

for.end.if.end45_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

if.then14:                                        ; preds = %for.end
  %rx_rss_context_exclusive.i72 = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %rx_rss_context_exclusive.i72 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %rx_rss_context_exclusive.i72, align 4
  call void @efx_set_default_rx_indir_table(ptr noundef %efx, ptr noundef %rss_context.i) #13
  %48 = ptrtoint ptr %context_size to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %context_size, align 4
  %50 = ptrtoint ptr %rss_spread to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rss_spread, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp16.not = icmp eq i32 %49, %51
  %52 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %msg_enable.i, align 4
  %and26 = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %cmp16.not, label %if.else, label %do.body

do.body:                                          ; preds = %if.then14
  br i1 %tobool27.not, label %do.body.if.end45_crit_edge, label %if.then19

do.body.if.end45_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %54 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %net_dev, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %55, ptr noundef nonnull @.str.13, i32 noundef %51, i32 noundef %49) #17
  br label %if.end45

if.else:                                          ; preds = %if.then14
  br i1 %cmp10, label %do.body24, label %do.body34

do.body24:                                        ; preds = %if.else
  br i1 %tobool27.not, label %do.body24.if.end45_crit_edge, label %if.then28

do.body24.if.end45_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

if.then28:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev29 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %56 = ptrtoint ptr %net_dev29 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %net_dev29, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %57, ptr noundef nonnull @.str.14) #17
  br label %if.end45

do.body34:                                        ; preds = %if.else
  br i1 %tobool27.not, label %do.body34.if.end45_crit_edge, label %if.then38

do.body34.if.end45_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

if.then38:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev39 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %58 = ptrtoint ptr %net_dev39 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %net_dev39, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %59, ptr noundef nonnull @.str.15) #17
  br label %if.end45

if.end45:                                         ; preds = %if.then38, %do.body34.if.end45_crit_edge, %if.then28, %do.body24.if.end45_crit_edge, %if.then19, %do.body.if.end45_crit_edge, %for.end.if.end45_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %context_size) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %efx_mcdi_filter_rx_push_exclusive_rss_config.exit.cleanup_crit_edge, %if.then57.i, %if.end53.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i71, %if.end45 ], [ %rc.0.i, %efx_mcdi_filter_rx_push_exclusive_rss_config.exit.cleanup_crit_edge ], [ 0, %if.end53.i.cleanup_crit_edge ], [ 0, %if.then57.i ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_vf_rx_push_rss_config(ptr noundef %efx, i1 noundef zeroext %user, ptr nocapture noundef readnone %rx_indir_table, ptr nocapture noundef readnone %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %user, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %context_id = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 64, i32 1
  %0 = ptrtoint ptr %context_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %context_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.not = icmp eq i32 %1, -1
  br i1 %cmp.not, label %if.end2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end2:                                          ; preds = %if.end
  %filter_state.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %2 = ptrtoint ptr %filter_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %filter_state.i, align 8
  %rss_context.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 64
  %call.i = tail call fastcc i32 @efx_mcdi_filter_alloc_rss_context(ptr noundef %efx, i1 noundef zeroext false, ptr noundef %rss_context.i, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.end2.return_crit_edge

if.end2.return_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end.i:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  %rx_rss_context_exclusive.i = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %rx_rss_context_exclusive.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %rx_rss_context_exclusive.i, align 4
  tail call void @efx_set_default_rx_indir_table(ptr noundef %efx, ptr noundef %rss_context.i) #13
  br label %return

return:                                           ; preds = %if.end.i, %if.end2.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ %call.i, %if.end2.return_crit_edge ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_push_default_indir_table(ptr noundef %efx, i32 noundef %rss_spread) local_unnamed_addr #0 align 64 {
entry:
  %inbuf.i.i = alloca [1 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rss_spread1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 44
  %0 = ptrtoint ptr %rss_spread1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rss_spread1, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %rss_spread)
  %cmp = icmp eq i32 %1, %rss_spread
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %rss_spread1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %rss_spread, ptr %rss_spread1, align 16
  %filter_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %3 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %filter_state, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %context_id.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 64, i32 1
  %5 = ptrtoint ptr %context_id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %context_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.not.i = icmp eq i32 %6, -1
  br i1 %cmp.not.i, label %if.end4.efx_mcdi_rx_free_indir_table.exit_crit_edge, label %if.then.i

if.end4.efx_mcdi_rx_free_indir_table.exit_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_rx_free_indir_table.exit

if.then.i:                                        ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf.i.i) #13
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #13
  %8 = ptrtoint ptr %inbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %inbuf.i.i, align 4
  %call.i.i = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 159, ptr noundef nonnull %inbuf.i.i, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp3.not.i, label %if.then.i.efx_mcdi_rx_free_indir_table.exit_crit_edge, label %do.end.i, !prof !102

if.then.i.efx_mcdi_rx_free_indir_table.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_rx_free_indir_table.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2033, i32 noundef 9, ptr noundef null) #13
  br label %efx_mcdi_rx_free_indir_table.exit

efx_mcdi_rx_free_indir_table.exit:                ; preds = %do.end.i, %if.then.i.efx_mcdi_rx_free_indir_table.exit_crit_edge, %if.end4.efx_mcdi_rx_free_indir_table.exit_crit_edge
  %9 = ptrtoint ptr %context_id.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %context_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rss_spread)
  %cmp5 = icmp ugt i32 %rss_spread, 1
  br i1 %cmp5, label %if.then6, label %efx_mcdi_rx_free_indir_table.exit.cleanup_crit_edge

efx_mcdi_rx_free_indir_table.exit.cleanup_crit_edge: ; preds = %efx_mcdi_rx_free_indir_table.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then6:                                         ; preds = %efx_mcdi_rx_free_indir_table.exit
  call void @__sanitizer_cov_trace_pc() #15
  %rss_context = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 64
  call void @efx_set_default_rx_indir_table(ptr noundef %efx, ptr noundef %rss_context) #13
  %type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %type, align 4
  %rx_push_rss_config = getelementptr inbounds %struct.efx_nic_type, ptr %11, i32 0, i32 54
  %12 = ptrtoint ptr %rx_push_rss_config to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_push_rss_config, align 8
  %rx_indir_table = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 64, i32 5
  %call = call i32 %13(ptr noundef %efx, i1 noundef zeroext false, ptr noundef %rx_indir_table, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %efx_mcdi_rx_free_indir_table.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call, %if.then6 ], [ 0, %efx_mcdi_rx_free_indir_table.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_set_default_rx_indir_table(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_filter_spec_hash(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @efx_filter_is_mc_recipient(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @efx_filter_spec_equal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_display_error(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efx_mcdi_filter_insert_def(ptr noundef %efx, ptr nocapture noundef %vlan, i32 noundef %encap_type, i1 noundef zeroext %multicast, i1 noundef zeroext %rollback) unnamed_addr #0 align 64 {
entry:
  %spec = alloca %struct.efx_filter_spec, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 8
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %spec) #13
  %2 = ptrtoint ptr %spec to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %spec, align 4, !annotation !103
  %context_id.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 64, i32 1
  %3 = ptrtoint ptr %context_id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %context_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp.i.not = icmp eq i32 %4, -1
  %5 = getelementptr inbounds i8, ptr %spec, i32 8
  %bf.set5.i = select i1 %cmp.i.not, i32 294912, i32 299008
  %rss_context.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec, i32 0, i32 1
  %6 = call ptr @memset(ptr %rss_context.i, i32 0, i32 64)
  %bf.set.i = or i32 %bf.set5.i, 1073741824
  %7 = ptrtoint ptr %spec to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %bf.set.i, ptr %spec, align 4
  br i1 %multicast, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %loc_mac.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec, i32 0, i32 4
  %8 = ptrtoint ptr %loc_mac.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %loc_mac.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %encap_type)
  %tobool4.not = icmp eq i32 %encap_type, 0
  br i1 %tobool4.not, label %if.end.if.end11_crit_edge, label %if.then5

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then5:                                         ; preds = %if.end
  %type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %type, align 4
  %check_caps = getelementptr inbounds %struct.efx_nic_type, ptr %10, i32 0, i32 35
  %11 = ptrtoint ptr %check_caps to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %check_caps, align 4
  %call6 = tail call i32 %12(ptr noundef %efx, i8 noundef zeroext 31, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then5.cleanup_crit_edge, label %if.then8

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load.i270 = load i32, ptr %spec, align 4
  %bf.set.i271 = or i32 %bf.load.i270, -2147483648
  store i32 %bf.set.i271, ptr %spec, align 4
  %encap_type2.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec, i32 0, i32 12
  %14 = trunc i32 %encap_type to i8
  %15 = ptrtoint ptr %encap_type2.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load3.i = load i8, ptr %encap_type2.i, align 4
  %bf.shl5.i = shl i8 %14, 4
  %bf.clear6.i = and i8 %bf.load3.i, 15
  %bf.set7.i = or i8 %bf.clear6.i, %bf.shl5.i
  store i8 %bf.set7.i, ptr %encap_type2.i, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  %vid = getelementptr inbounds %struct.efx_mcdi_filter_vlan, ptr %vlan, i32 0, i32 1
  %16 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %17)
  %cmp.not = icmp eq i16 %17, -1
  br i1 %cmp.not, label %if.end11.if.end16_crit_edge, label %efx_filter_set_eth_local.exit

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

efx_filter_set_eth_local.exit:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load.i273 = load i32, ptr %spec, align 4
  %bf.set.i274 = or i32 %bf.load.i273, 268435456
  store i32 %bf.set.i274, ptr %spec, align 4
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %17, ptr %5, align 4
  br label %if.end16

if.end16:                                         ; preds = %efx_filter_set_eth_local.exit, %if.end11.if.end16_crit_edge
  %call17 = call fastcc i32 @efx_mcdi_filter_insert_locked(ptr noundef %efx, ptr noundef nonnull %spec, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then20, label %if.else81

if.then20:                                        ; preds = %if.end16
  %cond23 = select i1 %multicast, ptr @.str.21, ptr @.str.22
  %and = and i32 %encap_type, 7
  %switch.tableidx = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %20 = icmp ult i32 %switch.tableidx, 3
  br i1 %20, label %switch.lookup, label %if.then20.if.end39_crit_edge

if.then20.if.end39_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

switch.lookup:                                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.efx_mcdi_filter_insert_def, i32 0, i32 %switch.tableidx
  %21 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %if.end39

if.end39:                                         ; preds = %switch.lookup, %if.then20.if.end39_crit_edge
  %encap_name.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.23, %if.then20.if.end39_crit_edge ]
  %and40 = and i32 %encap_type, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  %spec.select = select i1 %tobool4.not, ptr @.str.23, ptr @.str.28
  %encap_ipv.0 = select i1 %tobool41.not, ptr %spec.select, ptr @.str.27
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call17)
  %cmp48 = icmp ne i32 %call17, -1
  %brmerge.demorgan = and i1 %tobool4.not, %multicast
  %or.cond = or i1 %brmerge.demorgan, %cmp48
  %msg_enable70 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %22 = ptrtoint ptr %msg_enable70 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg_enable70, align 4
  %and71 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %or.cond, label %do.body69, label %do.body53

do.body53:                                        ; preds = %if.end39
  br i1 %tobool72.not, label %do.body53.cleanup_crit_edge, label %do.body57

do.body53.cleanup_crit_edge:                      ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body57:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_mcdi_filter_insert_def.__UNIQUE_ID_ddebug539, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_mcdi_filter_insert_def, %if.then63)) #13
          to label %cleanup [label %if.then63], !srcloc !104

if.then63:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %24 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net_dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_mcdi_filter_insert_def.__UNIQUE_ID_ddebug539, ptr noundef %25, ptr noundef nonnull @.str.30, ptr noundef nonnull %encap_name.0, ptr noundef nonnull %encap_ipv.0, ptr noundef nonnull %cond23, i32 noundef -1) #13
  br label %cleanup

do.body69:                                        ; preds = %if.end39
  br i1 %tobool72.not, label %do.body69.cleanup_crit_edge, label %if.then73

do.body69.cleanup_crit_edge:                      ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then73:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev74 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %26 = ptrtoint ptr %net_dev74 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net_dev74, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %27, ptr noundef nonnull @.str.30, ptr noundef nonnull %encap_name.0, ptr noundef nonnull %encap_ipv.0, ptr noundef nonnull %cond23, i32 noundef %call17) #17
  br label %cleanup

if.else81:                                        ; preds = %if.end16
  %28 = and i32 %encap_type, 1073741823
  %29 = add nsw i32 %28, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %29)
  %cmp90 = icmp ult i32 %29, 5
  br i1 %multicast, label %lor.lhs.false89, label %lor.lhs.false166

lor.lhs.false89:                                  ; preds = %if.else81
  br i1 %cmp90, label %do.end104, label %if.end118

do.end104:                                        ; preds = %lor.lhs.false89
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 902, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end118:                                        ; preds = %lor.lhs.false89
  %arrayidx = getelementptr [12 x i32], ptr @efx_mcdi_filter_insert_def.map, i32 0, i32 %encap_type
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  %default_filters = getelementptr inbounds %struct.efx_mcdi_filter_vlan, ptr %vlan, i32 0, i32 4
  %arrayidx120 = getelementptr %struct.efx_mcdi_filter_vlan, ptr %vlan, i32 0, i32 4, i32 %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %call17)
  %cmp.i275 = icmp eq i32 %call17, 65535
  br i1 %cmp.i275, label %land.rhs.i, label %if.end118.efx_mcdi_filter_get_unsafe_id.exit_crit_edge

if.end118.efx_mcdi_filter_get_unsafe_id.exit_crit_edge: ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_filter_get_unsafe_id.exit

land.rhs.i:                                       ; preds = %if.end118
  %.b38.i = load i1, ptr @efx_mcdi_filter_get_unsafe_id.__already_done, align 1
  br i1 %.b38.i, label %land.rhs.i.efx_mcdi_filter_get_unsafe_id.exit_crit_edge, label %if.then.i, !prof !102

land.rhs.i.efx_mcdi_filter_get_unsafe_id.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_filter_get_unsafe_id.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @efx_mcdi_filter_get_unsafe_id.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 43, i32 noundef 9, ptr noundef null) #13
  br label %efx_mcdi_filter_get_unsafe_id.exit

efx_mcdi_filter_get_unsafe_id.exit:               ; preds = %if.then.i, %land.rhs.i.efx_mcdi_filter_get_unsafe_id.exit_crit_edge, %if.end118.efx_mcdi_filter_get_unsafe_id.exit_crit_edge
  %32 = trunc i32 %call17 to i16
  %conv125 = and i16 %32, 8191
  %33 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv125, ptr %arrayidx120, align 2
  %mc_chaining = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 15
  %34 = ptrtoint ptr %mc_chaining to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %mc_chaining, align 2, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool126.not = icmp eq i8 %35, 0
  %36 = and i1 %tobool4.not, %tobool126.not
  br i1 %36, label %if.then129, label %efx_mcdi_filter_get_unsafe_id.exit.cleanup_crit_edge

efx_mcdi_filter_get_unsafe_id.exit.cleanup_crit_edge: ; preds = %efx_mcdi_filter_get_unsafe_id.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then129:                                       ; preds = %efx_mcdi_filter_get_unsafe_id.exit
  %37 = call ptr @memset(ptr %rss_context.i, i32 0, i32 64)
  %38 = ptrtoint ptr %spec to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %bf.set5.i, ptr %spec, align 4
  %39 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %vid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %40)
  %cmp.i280 = icmp eq i16 %40, -1
  br i1 %cmp.i280, label %if.then129.efx_filter_set_eth_local.exit288_crit_edge, label %if.then7.i285

if.then129.efx_filter_set_eth_local.exit288_crit_edge: ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_filter_set_eth_local.exit288

if.then7.i285:                                    ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #15
  %bf.set.i283 = or i32 %bf.set5.i, 268435456
  %41 = ptrtoint ptr %spec to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %bf.set.i283, ptr %spec, align 4
  %42 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %40, ptr %5, align 4
  br label %efx_filter_set_eth_local.exit288

efx_filter_set_eth_local.exit288:                 ; preds = %if.then7.i285, %if.then129.efx_filter_set_eth_local.exit288_crit_edge
  %43 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %43)
  %bf.load13.i = load i32, ptr %spec, align 4
  %bf.set20.i = or i32 %bf.load13.i, 16777216
  store i32 %bf.set20.i, ptr %spec, align 4
  %loc_mac.i287 = getelementptr inbounds %struct.efx_filter_spec, ptr %spec, i32 0, i32 4
  %44 = ptrtoint ptr %loc_mac.i287 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %loc_mac.i287, align 4
  %add.ptr1.i.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec, i32 0, i32 4, i32 4
  %45 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 -1, ptr %add.ptr1.i.i, align 4
  %call133 = call fastcc i32 @efx_mcdi_filter_insert_locked(ptr noundef %efx, ptr noundef nonnull %spec, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %cmp134 = icmp slt i32 %call133, 0
  br i1 %cmp134, label %do.body137, label %do.end153

do.body137:                                       ; preds = %efx_filter_set_eth_local.exit288
  %msg_enable138 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %46 = ptrtoint ptr %msg_enable138 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %msg_enable138, align 4
  %and139 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  br i1 %tobool140.not, label %do.body137.do.end145_crit_edge, label %if.then141

do.body137.do.end145_crit_edge:                   ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end145

if.then141:                                       ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev142 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %48 = ptrtoint ptr %net_dev142 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %net_dev142, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %49, ptr noundef nonnull @.str.31, i32 noundef %call133) #17
  br label %do.end145

do.end145:                                        ; preds = %if.then141, %do.body137.do.end145_crit_edge
  br i1 %rollback, label %if.then147, label %do.end145.cleanup_crit_edge

do.end145.cleanup_crit_edge:                      ; preds = %do.end145
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then147:                                       ; preds = %do.end145
  call void @__sanitizer_cov_trace_pc() #15
  %50 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx120, align 2
  %conv148 = zext i16 %51 to i32
  call fastcc void @efx_mcdi_filter_remove_unsafe(ptr noundef %efx, i32 noundef %conv148)
  %52 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 -1, ptr %arrayidx120, align 2
  br label %cleanup

do.end153:                                        ; preds = %efx_filter_set_eth_local.exit288
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %call133)
  %cmp.i289 = icmp eq i32 %call133, 65535
  br i1 %cmp.i289, label %land.rhs.i291, label %do.end153.efx_mcdi_filter_get_unsafe_id.exit294_crit_edge

do.end153.efx_mcdi_filter_get_unsafe_id.exit294_crit_edge: ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_filter_get_unsafe_id.exit294

land.rhs.i291:                                    ; preds = %do.end153
  %.b38.i290 = load i1, ptr @efx_mcdi_filter_get_unsafe_id.__already_done, align 1
  br i1 %.b38.i290, label %land.rhs.i291.efx_mcdi_filter_get_unsafe_id.exit294_crit_edge, label %if.then.i292, !prof !102

land.rhs.i291.efx_mcdi_filter_get_unsafe_id.exit294_crit_edge: ; preds = %land.rhs.i291
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_filter_get_unsafe_id.exit294

if.then.i292:                                     ; preds = %land.rhs.i291
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @efx_mcdi_filter_get_unsafe_id.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 43, i32 noundef 9, ptr noundef null) #13
  br label %efx_mcdi_filter_get_unsafe_id.exit294

efx_mcdi_filter_get_unsafe_id.exit294:            ; preds = %if.then.i292, %land.rhs.i291.efx_mcdi_filter_get_unsafe_id.exit294_crit_edge, %do.end153.efx_mcdi_filter_get_unsafe_id.exit294_crit_edge
  %53 = trunc i32 %call133 to i16
  %conv155 = and i16 %53, 8191
  %54 = ptrtoint ptr %default_filters to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv155, ptr %default_filters, align 2
  br label %cleanup

lor.lhs.false166:                                 ; preds = %if.else81
  br i1 %cmp90, label %do.end183, label %if.end197

do.end183:                                        ; preds = %lor.lhs.false166
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 956, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end197:                                        ; preds = %lor.lhs.false166
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx167 = getelementptr [12 x i32], ptr @efx_mcdi_filter_insert_def.map.32, i32 0, i32 %encap_type
  %55 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx167, align 4
  %arrayidx200 = getelementptr %struct.efx_mcdi_filter_vlan, ptr %vlan, i32 0, i32 4, i32 %56
  %conv204 = trunc i32 %call17 to i16
  %57 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv204, ptr %arrayidx200, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end197, %do.end183, %efx_mcdi_filter_get_unsafe_id.exit294, %if.then147, %do.end145.cleanup_crit_edge, %efx_mcdi_filter_get_unsafe_id.exit.cleanup_crit_edge, %do.end104, %if.then73, %do.body69.cleanup_crit_edge, %if.then63, %do.body57, %do.body53.cleanup_crit_edge, %if.then5.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end104 ], [ %call133, %if.then147 ], [ -22, %do.end183 ], [ 0, %if.then5.cleanup_crit_edge ], [ 0, %if.end197 ], [ %call17, %do.body69.cleanup_crit_edge ], [ %call17, %if.then73 ], [ -1, %do.body53.cleanup_crit_edge ], [ -1, %if.then63 ], [ 0, %efx_mcdi_filter_get_unsafe_id.exit.cleanup_crit_edge ], [ 0, %efx_mcdi_filter_get_unsafe_id.exit294 ], [ 0, %do.end145.cleanup_crit_edge ], [ -1, %do.body57 ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %spec) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efx_mcdi_filter_insert_addr_list(ptr noundef %efx, ptr nocapture noundef %vlan, i1 noundef zeroext %multicast, i1 noundef zeroext %rollback) unnamed_addr #0 align 64 {
entry:
  %spec = alloca %struct.efx_filter_spec, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 8
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %spec) #13
  %2 = call ptr @memset(ptr %spec, i32 255, i32 68)
  %dev_mc_list = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 6
  %dev_mc_count = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 8
  %mc = getelementptr inbounds %struct.efx_mcdi_filter_vlan, ptr %vlan, i32 0, i32 3
  %dev_uc_list = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 5
  %dev_uc_count = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 7
  %uc = getelementptr inbounds %struct.efx_mcdi_filter_vlan, ptr %vlan, i32 0, i32 2
  %addr_list.0 = select i1 %multicast, ptr %dev_mc_list, ptr %dev_uc_list
  %addr_count.0.in = select i1 %multicast, ptr %dev_mc_count, ptr %dev_uc_count
  %ids.0 = select i1 %multicast, ptr %mc, ptr %uc
  %3 = ptrtoint ptr %addr_count.0.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %addr_count.0 = load i32, ptr %addr_count.0.in, align 4
  %context_id.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 64, i32 1
  %4 = ptrtoint ptr %context_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %context_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.i.not = icmp eq i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %addr_count.0)
  %cmp161.not = icmp eq i32 %addr_count.0, 0
  br i1 %cmp161.not, label %entry.for.end32_crit_edge, label %do.end.lr.ph

entry.for.end32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end32

do.end.lr.ph:                                     ; preds = %entry
  %6 = getelementptr inbounds i8, ptr %spec, i32 8
  %bf.set5.i = select i1 %cmp.i.not, i32 294912, i32 299008
  %rss_context.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec, i32 0, i32 1
  %vid = getelementptr inbounds %struct.efx_mcdi_filter_vlan, ptr %vlan, i32 0, i32 1
  %bf.set.i = or i32 %bf.set5.i, 268435456
  %loc_mac.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec, i32 0, i32 4
  %add.ptr1.i.i = getelementptr inbounds %struct.efx_filter_spec, ptr %spec, i32 0, i32 4, i32 4
  br label %do.end

do.end:                                           ; preds = %for.inc30.do.end_crit_edge, %do.end.lr.ph
  %i.0162 = phi i32 [ 0, %do.end.lr.ph ], [ %inc31, %for.inc30.do.end_crit_edge ]
  %7 = call ptr @memset(ptr %rss_context.i, i32 0, i32 64)
  %8 = ptrtoint ptr %spec to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %bf.set5.i, ptr %spec, align 4
  %9 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vid, align 4
  %arrayidx = getelementptr %struct.efx_mcdi_dev_addr, ptr %addr_list.0, i32 %i.0162
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %10)
  %cmp.i125 = icmp eq i16 %10, -1
  %cmp2.i = icmp eq ptr %arrayidx, null
  %or.cond.i = and i1 %cmp2.i, %cmp.i125
  br i1 %or.cond.i, label %do.end.efx_filter_set_eth_local.exit_crit_edge, label %if.end.i

do.end.efx_filter_set_eth_local.exit_crit_edge:   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_filter_set_eth_local.exit

if.end.i:                                         ; preds = %do.end
  br i1 %cmp.i125, label %if.end.i.if.end9.i_crit_edge, label %if.then7.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %spec to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %bf.set.i, ptr %spec, align 4
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %10, ptr %6, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.end.i.if.end9.i_crit_edge
  br i1 %cmp2.i, label %if.end9.i.efx_filter_set_eth_local.exit_crit_edge, label %if.then12.i

if.end9.i.efx_filter_set_eth_local.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_filter_set_eth_local.exit

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load13.i = load i32, ptr %spec, align 4
  %bf.set20.i = or i32 %bf.load13.i, 16777216
  store i32 %bf.set20.i, ptr %spec, align 4
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %16 = ptrtoint ptr %loc_mac.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %loc_mac.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %arrayidx, i32 4
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr.i.i, align 2
  %19 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %add.ptr1.i.i, align 4
  br label %efx_filter_set_eth_local.exit

efx_filter_set_eth_local.exit:                    ; preds = %if.then12.i, %if.end9.i.efx_filter_set_eth_local.exit_crit_edge, %do.end.efx_filter_set_eth_local.exit_crit_edge
  %call7 = call fastcc i32 @efx_mcdi_filter_insert_locked(ptr noundef %efx, ptr noundef nonnull %spec, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.else25

if.then9:                                         ; preds = %efx_filter_set_eth_local.exit
  br i1 %rollback, label %do.body12, label %if.then9.for.inc30_crit_edge

if.then9.for.inc30_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc30

do.body12:                                        ; preds = %if.then9
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %20 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg_enable, align 4
  %and = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %do.body12.do.end17_crit_edge, label %if.then14

do.body12.do.end17_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end17

if.then14:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %22 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net_dev, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %23, ptr noundef nonnull @.str.33, i32 noundef %call7) #17
  br label %do.end17

do.end17:                                         ; preds = %if.then14, %do.body12.do.end17_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0162)
  %cmp19166.not = icmp eq i32 %i.0162, 0
  br i1 %cmp19166.not, label %do.end17.cleanup_crit_edge, label %do.end17.for.body20_crit_edge

do.end17.for.body20_crit_edge:                    ; preds = %do.end17
  br label %for.body20

do.end17.cleanup_crit_edge:                       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body20:                                       ; preds = %efx_mcdi_filter_remove_unsafe.exit.for.body20_crit_edge, %do.end17.for.body20_crit_edge
  %j.0167 = phi i32 [ %inc, %efx_mcdi_filter_remove_unsafe.exit.for.body20_crit_edge ], [ 0, %do.end17.for.body20_crit_edge ]
  %arrayidx21 = getelementptr i16, ptr %ids.0, i32 %j.0167
  %24 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx21, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %25)
  %cmp.i126 = icmp eq i16 %25, -1
  br i1 %cmp.i126, label %for.body20.efx_mcdi_filter_remove_unsafe.exit_crit_edge, label %if.end.i127

for.body20.efx_mcdi_filter_remove_unsafe.exit_crit_edge: ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_filter_remove_unsafe.exit

if.end.i127:                                      ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #15
  %conv = zext i16 %25 to i32
  %26 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %filter_state, align 8
  %lock.i = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %27, i32 0, i32 3
  call void @down_write(ptr noundef %lock.i) #13
  %call.i = call fastcc i32 @efx_mcdi_filter_remove_internal(ptr noundef %efx, i32 noundef 2, i32 noundef %conv, i1 noundef zeroext true) #13
  call void @up_write(ptr noundef %lock.i) #13
  br label %efx_mcdi_filter_remove_unsafe.exit

efx_mcdi_filter_remove_unsafe.exit:               ; preds = %if.end.i127, %for.body20.efx_mcdi_filter_remove_unsafe.exit_crit_edge
  %28 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 -1, ptr %arrayidx21, align 2
  %inc = add nuw i32 %j.0167, 1
  %exitcond171.not = icmp eq i32 %inc, %i.0162
  br i1 %exitcond171.not, label %efx_mcdi_filter_remove_unsafe.exit.cleanup_crit_edge, label %efx_mcdi_filter_remove_unsafe.exit.for.body20_crit_edge

efx_mcdi_filter_remove_unsafe.exit.for.body20_crit_edge: ; preds = %efx_mcdi_filter_remove_unsafe.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body20

efx_mcdi_filter_remove_unsafe.exit.cleanup_crit_edge: ; preds = %efx_mcdi_filter_remove_unsafe.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else25:                                        ; preds = %efx_filter_set_eth_local.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %call7)
  %cmp.i128 = icmp eq i32 %call7, 65535
  br i1 %cmp.i128, label %land.rhs.i, label %if.else25.efx_mcdi_filter_get_unsafe_id.exit_crit_edge

if.else25.efx_mcdi_filter_get_unsafe_id.exit_crit_edge: ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_filter_get_unsafe_id.exit

land.rhs.i:                                       ; preds = %if.else25
  %.b38.i = load i1, ptr @efx_mcdi_filter_get_unsafe_id.__already_done, align 1
  br i1 %.b38.i, label %land.rhs.i.efx_mcdi_filter_get_unsafe_id.exit_crit_edge, label %if.then.i, !prof !102

land.rhs.i.efx_mcdi_filter_get_unsafe_id.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_filter_get_unsafe_id.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @efx_mcdi_filter_get_unsafe_id.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 43, i32 noundef 9, ptr noundef null) #13
  br label %efx_mcdi_filter_get_unsafe_id.exit

efx_mcdi_filter_get_unsafe_id.exit:               ; preds = %if.then.i, %land.rhs.i.efx_mcdi_filter_get_unsafe_id.exit_crit_edge, %if.else25.efx_mcdi_filter_get_unsafe_id.exit_crit_edge
  %29 = trunc i32 %call7 to i16
  %conv27 = and i16 %29, 8191
  %arrayidx28 = getelementptr i16, ptr %ids.0, i32 %i.0162
  %30 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv27, ptr %arrayidx28, align 2
  br label %for.inc30

for.inc30:                                        ; preds = %efx_mcdi_filter_get_unsafe_id.exit, %if.then9.for.inc30_crit_edge
  %inc31 = add nuw i32 %i.0162, 1
  %exitcond.not = icmp eq i32 %inc31, %addr_count.0
  br i1 %exitcond.not, label %for.inc30.for.end32_crit_edge, label %for.inc30.do.end_crit_edge

for.inc30.do.end_crit_edge:                       ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

for.inc30.for.end32_crit_edge:                    ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end32

for.end32:                                        ; preds = %for.inc30.for.end32_crit_edge, %entry.for.end32_crit_edge
  %brmerge.demorgan = and i1 %multicast, %rollback
  br i1 %brmerge.demorgan, label %do.end40, label %for.end32.cleanup_crit_edge

for.end32.cleanup_crit_edge:                      ; preds = %for.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end40:                                         ; preds = %for.end32
  %bf.set5.i131 = select i1 %cmp.i.not, i32 294912, i32 299008
  %rss_context.i132 = getelementptr inbounds %struct.efx_filter_spec, ptr %spec, i32 0, i32 1
  %31 = call ptr @memset(ptr %rss_context.i132, i32 0, i32 64)
  %32 = ptrtoint ptr %spec to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %bf.set5.i131, ptr %spec, align 4
  %vid42 = getelementptr inbounds %struct.efx_mcdi_filter_vlan, ptr %vlan, i32 0, i32 1
  %33 = ptrtoint ptr %vid42 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %vid42, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %34)
  %cmp.i133 = icmp eq i16 %34, -1
  br i1 %cmp.i133, label %do.end40.efx_filter_set_eth_local.exit146_crit_edge, label %if.then7.i138

do.end40.efx_filter_set_eth_local.exit146_crit_edge: ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_filter_set_eth_local.exit146

if.then7.i138:                                    ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #15
  %35 = getelementptr inbounds i8, ptr %spec, i32 8
  %bf.set.i136 = or i32 %bf.set5.i131, 268435456
  %36 = ptrtoint ptr %spec to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %bf.set.i136, ptr %spec, align 4
  %37 = ptrtoint ptr %35 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %34, ptr %35, align 4
  br label %efx_filter_set_eth_local.exit146

efx_filter_set_eth_local.exit146:                 ; preds = %if.then7.i138, %do.end40.efx_filter_set_eth_local.exit146_crit_edge
  %38 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %38)
  %bf.load13.i140 = load i32, ptr %spec, align 4
  %bf.set20.i141 = or i32 %bf.load13.i140, 16777216
  store i32 %bf.set20.i141, ptr %spec, align 4
  %loc_mac.i142 = getelementptr inbounds %struct.efx_filter_spec, ptr %spec, i32 0, i32 4
  %39 = ptrtoint ptr %loc_mac.i142 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %loc_mac.i142, align 4
  %add.ptr1.i.i144 = getelementptr inbounds %struct.efx_filter_spec, ptr %spec, i32 0, i32 4, i32 4
  %40 = ptrtoint ptr %add.ptr1.i.i144 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 -1, ptr %add.ptr1.i.i144, align 4
  %call45 = call fastcc i32 @efx_mcdi_filter_insert_locked(ptr noundef %efx, ptr noundef nonnull %spec, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %do.body49, label %if.else68

do.body49:                                        ; preds = %efx_filter_set_eth_local.exit146
  %msg_enable50 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %41 = ptrtoint ptr %msg_enable50 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %msg_enable50, align 4
  %and51 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %do.body49.do.end57_crit_edge, label %if.then53

do.body49.do.end57_crit_edge:                     ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end57

if.then53:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev54 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %43 = ptrtoint ptr %net_dev54 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %net_dev54, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %44, ptr noundef nonnull @.str.31, i32 noundef %call45) #17
  br label %do.end57

do.end57:                                         ; preds = %if.then53, %do.body49.do.end57_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %addr_count.0)
  %cmp59164.not = icmp eq i32 %addr_count.0, 0
  br i1 %cmp59164.not, label %do.end57.cleanup_crit_edge, label %do.end57.for.body61_crit_edge

do.end57.for.body61_crit_edge:                    ; preds = %do.end57
  br label %for.body61

do.end57.cleanup_crit_edge:                       ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body61:                                       ; preds = %efx_mcdi_filter_remove_unsafe.exit152.for.body61_crit_edge, %do.end57.for.body61_crit_edge
  %j.1165 = phi i32 [ %inc66, %efx_mcdi_filter_remove_unsafe.exit152.for.body61_crit_edge ], [ 0, %do.end57.for.body61_crit_edge ]
  %arrayidx62 = getelementptr i16, ptr %ids.0, i32 %j.1165
  %45 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx62, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %46)
  %cmp.i147 = icmp eq i16 %46, -1
  br i1 %cmp.i147, label %for.body61.efx_mcdi_filter_remove_unsafe.exit152_crit_edge, label %if.end.i151

for.body61.efx_mcdi_filter_remove_unsafe.exit152_crit_edge: ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_filter_remove_unsafe.exit152

if.end.i151:                                      ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #15
  %conv63 = zext i16 %46 to i32
  %47 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %filter_state, align 8
  %lock.i149 = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %48, i32 0, i32 3
  call void @down_write(ptr noundef %lock.i149) #13
  %call.i150 = call fastcc i32 @efx_mcdi_filter_remove_internal(ptr noundef %efx, i32 noundef 2, i32 noundef %conv63, i1 noundef zeroext true) #13
  call void @up_write(ptr noundef %lock.i149) #13
  br label %efx_mcdi_filter_remove_unsafe.exit152

efx_mcdi_filter_remove_unsafe.exit152:            ; preds = %if.end.i151, %for.body61.efx_mcdi_filter_remove_unsafe.exit152_crit_edge
  %49 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 -1, ptr %arrayidx62, align 2
  %inc66 = add nuw i32 %j.1165, 1
  %exitcond172.not = icmp eq i32 %inc66, %addr_count.0
  br i1 %exitcond172.not, label %efx_mcdi_filter_remove_unsafe.exit152.cleanup_crit_edge, label %efx_mcdi_filter_remove_unsafe.exit152.for.body61_crit_edge

efx_mcdi_filter_remove_unsafe.exit152.for.body61_crit_edge: ; preds = %efx_mcdi_filter_remove_unsafe.exit152
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body61

efx_mcdi_filter_remove_unsafe.exit152.cleanup_crit_edge: ; preds = %efx_mcdi_filter_remove_unsafe.exit152
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else68:                                        ; preds = %efx_filter_set_eth_local.exit146
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %call45)
  %cmp.i153 = icmp eq i32 %call45, 65535
  br i1 %cmp.i153, label %land.rhs.i155, label %if.else68.efx_mcdi_filter_get_unsafe_id.exit158_crit_edge

if.else68.efx_mcdi_filter_get_unsafe_id.exit158_crit_edge: ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_filter_get_unsafe_id.exit158

land.rhs.i155:                                    ; preds = %if.else68
  %.b38.i154 = load i1, ptr @efx_mcdi_filter_get_unsafe_id.__already_done, align 1
  br i1 %.b38.i154, label %land.rhs.i155.efx_mcdi_filter_get_unsafe_id.exit158_crit_edge, label %if.then.i156, !prof !102

land.rhs.i155.efx_mcdi_filter_get_unsafe_id.exit158_crit_edge: ; preds = %land.rhs.i155
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_mcdi_filter_get_unsafe_id.exit158

if.then.i156:                                     ; preds = %land.rhs.i155
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @efx_mcdi_filter_get_unsafe_id.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 43, i32 noundef 9, ptr noundef null) #13
  br label %efx_mcdi_filter_get_unsafe_id.exit158

efx_mcdi_filter_get_unsafe_id.exit158:            ; preds = %if.then.i156, %land.rhs.i155.efx_mcdi_filter_get_unsafe_id.exit158_crit_edge, %if.else68.efx_mcdi_filter_get_unsafe_id.exit158_crit_edge
  %50 = trunc i32 %call45 to i16
  %conv70 = and i16 %50, 8191
  %default_filters = getelementptr inbounds %struct.efx_mcdi_filter_vlan, ptr %vlan, i32 0, i32 4
  %51 = ptrtoint ptr %default_filters to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv70, ptr %default_filters, align 2
  br label %cleanup

cleanup:                                          ; preds = %efx_mcdi_filter_get_unsafe_id.exit158, %efx_mcdi_filter_remove_unsafe.exit152.cleanup_crit_edge, %do.end57.cleanup_crit_edge, %for.end32.cleanup_crit_edge, %efx_mcdi_filter_remove_unsafe.exit.cleanup_crit_edge, %do.end17.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end32.cleanup_crit_edge ], [ 0, %efx_mcdi_filter_get_unsafe_id.exit158 ], [ %call7, %do.end17.cleanup_crit_edge ], [ %call45, %do.end57.cleanup_crit_edge ], [ %call45, %efx_mcdi_filter_remove_unsafe.exit152.cleanup_crit_edge ], [ %call7, %efx_mcdi_filter_remove_unsafe.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %spec) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_mcdi_filter_remove_unsafe(ptr noundef %efx, i32 noundef %filter_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %filter_id)
  %cmp = icmp eq i32 %filter_id, 65535
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %filter_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 8
  %lock = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 3
  tail call void @down_write(ptr noundef %lock) #13
  %call = tail call fastcc i32 @efx_mcdi_filter_remove_internal(ptr noundef %efx, i32 noundef 2, i32 noundef %filter_id, i1 noundef zeroext true)
  tail call void @up_write(ptr noundef %lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_mcdi_filter_mark_one_old(ptr nocapture noundef readonly %efx, ptr nocapture noundef %id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 8
  %lock = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 3
  %call.i = tail call i32 @down_read_trylock(ptr noundef %lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.efx_rwsem_assert_write_locked.exit_crit_edge, label %do.end.i, !prof !102

entry.efx_rwsem_assert_write_locked.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_rwsem_assert_write_locked.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 227, i32 noundef 9, ptr noundef null) #13
  tail call void @up_read(ptr noundef %lock) #13
  br label %efx_rwsem_assert_write_locked.exit

efx_rwsem_assert_write_locked.exit:               ; preds = %do.end.i, %entry.efx_rwsem_assert_write_locked.exit_crit_edge
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %cmp.not = icmp eq i16 %3, -1
  br i1 %cmp.not, label %efx_rwsem_assert_write_locked.exit.if.end22_crit_edge, label %if.then

efx_rwsem_assert_write_locked.exit.if.end22_crit_edge: ; preds = %efx_rwsem_assert_write_locked.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then:                                          ; preds = %efx_rwsem_assert_write_locked.exit
  %4 = and i16 %3, 8191
  %and.i = zext i16 %4 to i32
  %entry4 = getelementptr inbounds %struct.efx_mcdi_filter_table, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %entry4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %entry4, align 4
  %arrayidx = getelementptr %struct.anon.153, ptr %6, i32 %and.i
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %do.body, label %if.then.if.end18_crit_edge

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

do.body:                                          ; preds = %if.then
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %9 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_enable, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %do.body.if.end18_crit_edge, label %do.body8

do.body.if.end18_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

do.body8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_mcdi_filter_mark_one_old.__UNIQUE_ID_ddebug547, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_mcdi_filter_mark_one_old, %if.then13)) #13
          to label %if.end18 [label %if.then13], !srcloc !104

if.then13:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %11 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net_dev, align 4
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %id, align 2
  %conv14 = zext i16 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_mcdi_filter_mark_one_old.__UNIQUE_ID_ddebug547, ptr noundef %12, ptr noundef nonnull @.str.35, i32 noundef %conv14, i32 noundef %and.i) #13
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %do.body8, %do.body.if.end18_crit_edge, %if.then.if.end18_crit_edge
  %15 = ptrtoint ptr %entry4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %entry4, align 4
  %arrayidx20 = getelementptr %struct.anon.153, ptr %16, i32 %and.i
  %17 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx20, align 8
  %or = or i32 %18, 2
  store i32 %or, ptr %arrayidx20, align 8
  %19 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -1, ptr %id, align 2
  br label %if.end22

if.end22:                                         ; preds = %if.end18, %efx_rwsem_assert_write_locked.exit.if.end22_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !14, !15, !16, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !40, !41, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !69, !70, !72, !74, !76, !78, !80, !81, !82, !84, !85, !87, !89}
!llvm.named.register.sp = !{!90}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sfc/mcdi_filters.c", i32 1327, i32 3}
!2 = !{ptr @efx_mcdi_filter_table_probe.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/sfc/mcdi_filters.c", i32 1345, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/sfc/mcdi_filters.c", i32 1381, i32 2}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/sfc/mcdi_filters.c", i32 1409, i32 5}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/sfc/mcdi_filters.c", i32 1416, i32 5}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/sfc/mcdi_filters.c", i32 1451, i32 3}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @efx_mcdi_filter_table_restore.__UNIQUE_ID_ddebug546, !12, !"__UNIQUE_ID_ddebug546", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/sfc/mcdi_filters.c", i32 1456, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/sfc/mcdi_filters.c", i32 1489, i32 4}
!20 = !{ptr @__func__.efx_mcdi_filter_table_down, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/sfc/mcdi_filters.c", i32 1580, i32 3}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/sfc/mcdi_filters.c", i32 1641, i32 3}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/sfc/mcdi_filters.c", i32 2210, i32 4}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/sfc/mcdi_filters.c", i32 2246, i32 5}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/sfc/mcdi_filters.c", i32 2253, i32 5}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/sfc/mcdi_filters.c", i32 2259, i32 5}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/sfc/mcdi_filters.c", i32 43, i32 2}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/sfc/efx.h", i32 227, i32 6}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/sfc/mcdi_filters.c", i32 1281, i32 4}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @efx_mcdi_filter_table_probe_matches.__UNIQUE_ID_ddebug544, !38, !"__UNIQUE_ID_ddebug544", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/sfc/mcdi_filters.c", i32 1285, i32 4}
!43 = !{ptr @efx_mcdi_filter_table_probe_matches.__UNIQUE_ID_ddebug545, !42, !"__UNIQUE_ID_ddebug545", i1 false, i1 false}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/sfc/mcdi_filters.c", i32 320, i32 2}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/sfc/mcdi_filters.c", i32 210, i32 7}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/sfc/mcdi_filters.c", i32 212, i32 12}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/sfc/mcdi_filters.c", i32 857, i32 32}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/sfc/mcdi_filters.c", i32 857, i32 46}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/sfc/mcdi_filters.c", i32 858, i32 28}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/sfc/mcdi_filters.c", i32 863, i32 17}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/sfc/mcdi_filters.c", i32 866, i32 17}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/sfc/mcdi_filters.c", i32 869, i32 17}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/sfc/mcdi_filters.c", i32 871, i32 16}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/sfc/mcdi_filters.c", i32 873, i32 16}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/sfc/mcdi_filters.c", i32 880, i32 3}
!68 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @efx_mcdi_filter_insert_def.__UNIQUE_ID_ddebug539, !67, !"__UNIQUE_ID_ddebug539", i1 false, i1 false}
!70 = !{ptr @efx_mcdi_filter_insert_def.map, !71, !"map", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/sfc/mcdi_filters.c", i32 886, i32 47}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/sfc/mcdi_filters.c", i32 918, i32 5}
!74 = !{ptr @efx_mcdi_filter_insert_def.map.32, !75, !"map", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/sfc/mcdi_filters.c", i32 940, i32 47}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/sfc/mcdi_filters.c", i32 773, i32 5}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/sfc/mcdi_filters.c", i32 1530, i32 4}
!80 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @efx_mcdi_filter_mark_one_old.__UNIQUE_ID_ddebug547, !79, !"__UNIQUE_ID_ddebug547", i1 false, i1 false}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/sfc/mcdi_filters.c", i32 671, i32 3}
!84 = !{ptr @__func__.efx_mcdi_filter_remove_old, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/sfc/mcdi_filters.c", i32 675, i32 3}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/sfc/mcdi_filters.c", i32 2095, i32 2}
!89 = !{ptr @__func__.efx_mcdi_filter_rx_push_exclusive_rss_config, !88, !"<string literal>", i1 false, i1 false}
!90 = !{!"sp"}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{!"branch_weights", i32 1, i32 2000}
!101 = !{i8 0, i8 2}
!102 = !{!"branch_weights", i32 2000, i32 1}
!103 = !{!"auto-init"}
!104 = !{i64 2149177794, i64 2149177799, i64 2149177812, i64 2149177856, i64 2149177890, i64 2149177911}
!105 = !{i32 0, i32 33}
